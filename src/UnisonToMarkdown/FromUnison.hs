module UnisonToMarkdown.FromUnison where

import Prelude
import System.FilePath ((</>))
import Unison.Codebase.Branch (Branch, Branch0, Star)
import Unison.Codebase.Metadata hiding (Star)
import Unison.Name
import Unison.Reference
import Unison.Referent
import Unison.Util.Star3

import qualified Unison.Codebase.Branch as Branch
import qualified Unison.Codebase.FileCodebase as FileCodebase
import qualified Unison.Util.Relation as Relation
import qualified Unison.Util.Star3 as Star3

-- fromUnison :: FilePath -> IO Text
fromUnison path = do

  -- Not used, just a note that either this or getRootBranch
  -- should be changed upstream to take the same string.
  --
  -- _ <- FileCodebase.getCodebaseOrExit (Just ".")

  branch :: Branch IO
    <- FileCodebase.getRootBranch (path </> ".unison/v1")

  let
    branch0 :: Branch0 IO
    branch0 =
      Branch.head branch

    --Reference: reference to a type
    types :: Star Reference Name
    types =
      Branch.deepTypes branch0

    typeList :: [(Reference, Name)]
    typeList =
      Relation.toList (Star3.d1 types)

    -- Referent: reference to a term
    terms :: Star3 Referent Name Type (Type, Value)
    terms =
      Branch.deepTerms branch0

    termList :: [(Referent, Name)]
    termList =
      Relation.toList (Star3.d1 terms)

  pure (snd <$> typeList, snd <$> termList)
