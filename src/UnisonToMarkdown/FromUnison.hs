module UnisonToMarkdown.FromUnison where

import Control.Monad
import Data.Map (Map)
import Data.Set (Set)
import Prelude
import System.FilePath ((</>))
import Unison.Codebase.Branch (Branch, Branch0, Star)
import Unison.Codebase.Metadata hiding (Star)
import Unison.Name
import Unison.Reference
import Unison.Referent
import Unison.Util.Relation
import Unison.Util.Star3

import qualified Data.Map.Strict as Map
import qualified Data.Set as Set
import qualified Unison.Codebase.Branch as Branch
import qualified Unison.Codebase.FileCodebase as FileCodebase
import qualified Unison.Util.Relation as Relation
import qualified Unison.Util.Star3 as Star3

fromUnison path = do

  -- TODO: either this or getRootBranch
  -- should be changed upstream to take the same string.
  --
  -- _ <- FileCodebase.getCodebaseOrExit (Just ".")

  branch :: Branch IO
    <- FileCodebase.getRootBranch (path </> ".unison/v1")

  let
    branch0 :: Branch0 IO
    branch0 =
      Branch.head branch

  pure (getTypes branch0, getTerms branch0)

getTypes :: Branch0 IO -> Map Name ()
getTypes branch0 =
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
    const () <$> typeMap

getTerms :: Branch0 IO -> Map Name ()
getTerms branch0 =
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
        -- TODO: This filters out good stuff like `builtin.io.IO.getLine_` too
        filterOutConstructors :: Referent -> Maybe Reference
        filterOutConstructors = \case
          Ref ref ->
            Just ref

          Con{} ->
            Nothing
  in
    const () <$> termMap

setToMaybe :: Set a -> Maybe a
setToMaybe =
  headMaybe . Set.toList

headMaybe :: [a] -> Maybe a
headMaybe = \case
  [] ->
    Nothing

  a:_ ->
    Just a
