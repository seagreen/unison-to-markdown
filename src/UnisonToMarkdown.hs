module UnisonToMarkdown where

import Data.Text (Text)
import Prelude
import System.FilePath ((</>))
import Unison.Codebase.Branch (Branch, Branch0, Star)
import Unison.Codebase.Metadata hiding (Star)
import Unison.Name
import Unison.Reference
import Unison.Referent
import Unison.Util.Star3

import qualified Data.Text as Text
import qualified Unison.Codebase.Branch as Branch
import qualified Unison.Codebase.FileCodebase as FileCodebase

data Config = Config FilePath deriving Show

run :: Config -> IO Text
run (Config path) = do

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

    terms :: Star3 Referent Name Type (Type, Value)
    terms =
      Branch.deepTerms branch0

    types :: Star Reference Name
    types =
      Branch.deepTypes branch0

  pure (Text.pack (show terms <> "\n\n===\n\n" <> show types))
