module UnisonToMarkdown.FromUnison where

import Unison.DataDeclaration
import Control.Monad
import Data.Map (Map)
import Data.Set (Set)
import Data.Text (Text)
import Prelude hiding (id)
import System.FilePath ((</>))
import Unison.Codebase
import Unison.Codebase.Branch (Branch, Branch0, Star)
import Unison.Codebase.Metadata hiding (Star)
import Unison.HashQualified
import Unison.Name
import Unison.Names3
import Unison.Reference
import Unison.Referent
import Unison.Symbol
import Unison.DeclPrinter
import Unison.TermPrinter
import Unison.Util.Pretty hiding (toPlain)
import Unison.Util.Relation
import Unison.Util.Star3
import Unison.Util.SyntaxText

import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Data.Text as Text
import qualified Unison.Codebase.Branch as Branch
import qualified Unison.Codebase.FileCodebase as FileCodebase
import qualified Unison.PrettyPrintEnv as PPE
import qualified Unison.Util.Relation as Relation
import qualified Unison.Util.Star3 as Star3

-- | The @Text@ in @Map Name Text@ is pretty printed source.
fromUnison :: FilePath -> IO (Map Name Text, Map Name Text)
fromUnison path = do

  -- TODO: either this or getRootBranch
  -- should be changed upstream to take the same string.
  codebase <- FileCodebase.getCodebaseOrExit (Just (path </> "."))

  branch :: Branch IO
    <- FileCodebase.getRootBranch (path </> ".unison/v1")

  let
    branch0 :: Branch0 IO
    branch0 =
      Branch.head branch

  (,) <$> getTypes codebase branch0 <*> getTerms codebase branch0

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
          -- TODO: what to do here?
          error ("type not found " <> show (name, id))

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
          -- TODO: what to do here?
          error ("term not found " <> show (name, id))

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
