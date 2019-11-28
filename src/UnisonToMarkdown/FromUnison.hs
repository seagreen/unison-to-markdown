module UnisonToMarkdown.FromUnison where

import Control.Monad
import Data.Map (Map)
import Data.Set (Set)
import Data.Text (Text)
import Prelude hiding (id)
import System.Exit (exitFailure)
import System.FilePath ((</>))
import System.IO (stderr)
import Unison.Codebase
import Unison.Codebase.Branch (Branch, Branch0, Star)
import Unison.Codebase.Metadata hiding (Star)
import Unison.DataDeclaration
import Unison.DeclPrinter
import Unison.HashQualified
import Unison.Name
import Unison.Names3
import Unison.Reference
import Unison.Referent
import Unison.Symbol
import Unison.TermPrinter
import Unison.Util.Pretty hiding (toPlain)
import Unison.Util.Relation
import Unison.Util.Star3
import Unison.Util.SyntaxText

import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Data.Text.IO as TIO
import qualified Unison.Codebase.Branch as Branch
import qualified Unison.Codebase.FileCodebase as FileCodebase
import qualified Unison.PrettyPrintEnv as PPE
import qualified Unison.Util.Relation as Relation
import qualified Unison.Util.Star3 as Star3

data All = All
  { allTypes :: Map Name Text
    -- ^ The @Text@ is pretty printed source.
  , allTerms :: Map Name Text
  } deriving (Eq, Show)

data NamespaceAndDeps = NamespaceAndDeps
  { namespaceTypes :: Map Name Text
    -- ^ The @Text@ is pretty printed source.
  , namespaceTerms :: Map Name Text
  , depTypes :: Map Name Text
  , depTerms :: Map Name Text
  } deriving (Eq, Show)

fromUnisonNamespace :: FilePath -> Text -> IO NamespaceAndDeps
fromUnisonNamespace path namespace = do
  codebase <- FileCodebase.getCodebaseOrExit (Just (path </> "."))

  branch :: Branch IO
    <- FileCodebase.getRootBranch (path </> ".unison/v1")

  let
    branch0 :: Branch0 IO
    branch0 =
      Branch.head branch

    isInNamespace :: Name -> v -> Bool
    isInNamespace (Name name) _ =
      Text.isPrefixOf namespace name && namespace /= name

  types <- getTypes codebase branch0
  terms <- getTerms codebase branch0

  pure NamespaceAndDeps
    { namespaceTypes = Map.filterWithKey isInNamespace types
    , namespaceTerms = Map.filterWithKey isInNamespace terms
    , depTypes = mempty
    , depTerms = mempty
    }

-- | NOTE: there's some duplication between this and 'fromUnisonNamespace'.
fromUnisonAll :: FilePath -> IO All
fromUnisonAll path = do

  -- TODO: either this or getRootBranch
  -- should be changed upstream to take the same string.
  codebase <- FileCodebase.getCodebaseOrExit (Just (path </> "."))

  branch :: Branch IO
    <- FileCodebase.getRootBranch (path </> ".unison/v1")

  let
    branch0 :: Branch0 IO
    branch0 =
      Branch.head branch

  All <$> getTypes codebase branch0 <*> getTerms codebase branch0

getTypes :: Codebase IO Symbol ann ->  Branch0 IO -> IO (Map Name Text)
getTypes codebase branch0 =
  let
    --Reference: reference to a type
    types :: Star Reference Name
    types =
      Branch.deepTypes branch0

    d1Types :: Relation Reference Name
    d1Types =
      Star3.d1 types

    typeMap :: Map Name Reference
    typeMap =
      -- TODO: Why can there be multiple References for a name?
      -- Is picking one at random like I do here right?
      Map.mapMaybe setToMaybe (Relation.range d1Types)
  in
    Map.traverseWithKey (printType codebase branch0) typeMap

getTerms :: Codebase IO Symbol ann -> Branch0 IO -> IO (Map Name Text)
getTerms codebase branch0 =
  let
    -- Referent: reference to a term
    terms :: Star3 Referent Name Type (Type, Value)
    terms =
      Branch.deepTerms branch0

    d1Terms :: Relation Referent Name
    d1Terms =
      Star3.d1 terms

    termMap :: Map Name Reference
    termMap =
      Map.mapMaybe (filterOutConstructors <=< setToMaybe) (Relation.range d1Terms)
      where
        -- NOTE: This filters out functions like `builtin.io.IO.getLine_`
        filterOutConstructors :: Referent -> Maybe Reference
        filterOutConstructors = \case
          Ref ref ->
            Just ref

          Con{} ->
            Nothing
  in
    Map.traverseWithKey (printTerm codebase branch0) termMap

printType
  :: Codebase IO Symbol ann
  -> Branch0 IO
  -> Name
  -> Reference
  -> IO Text
printType codebase branch0 name ref =
  case ref of
    Builtin _ ->
      pure "<builtin>"

    DerivedId id -> do
      mDecl <- getTypeDeclaration codebase id
      case mDecl of
        Nothing ->
          exitNotFound name id

        Just (decl :: Decl Symbol ann) ->
          case decl of
            Left effectDecl ->
              let
                pret :: Pretty SyntaxText
                pret =
                  prettyEffectDecl (printEnv branch0) ref (NameOnly name) effectDecl
              in
                pure . Text.pack . toPlain $ render 80 pret

            Right dataDecl ->
              let
                pret :: Pretty SyntaxText
                pret =
                  prettyDataDecl (printEnv branch0) ref (NameOnly name) dataDecl
              in
                pure . Text.pack . toPlain $ render 80 pret

printTerm
  :: Codebase IO Symbol ann
  -> Branch0 IO
  -> Name
  -> Reference
  -> IO Text
printTerm codebase branch0 name ref =
  case ref of
    Builtin _ ->
      pure "<builtin>"

    DerivedId id -> do
      mTerm <- getTerm codebase id
      case mTerm of
        Nothing ->
          exitNotFound name id

        Just term ->
          let
            pret :: Pretty SyntaxText
            pret =
              prettyBinding (printEnv branch0) (NameOnly name) term
          in
            pure . Text.pack . toPlain $ render 80 pret

printEnv :: Branch0 m -> PPE.PrettyPrintEnv
printEnv branch =
  PPE.fromNames 10 $ Names (Branch.toNames0 branch) mempty

setToMaybe :: Set a -> Maybe a
setToMaybe =
  headMaybe . Set.toList

headMaybe :: [a] -> Maybe a
headMaybe = \case
  [] ->
    Nothing

  a:_ ->
    Just a

exitNotFound :: Name -> Id -> IO a
exitNotFound (Name name) id =
  exitWithError
    (  "Failed id lookup. Has your .unison codebase become corrupted?\n"
    <> "for id: "<> Text.pack (show id) <> "\n"
    <> "which is associated with name: " <> name <> "\n"
    )

exitWithError :: Text -> IO a
exitWithError e = do
  TIO.hPutStrLn stderr e
  exitFailure
