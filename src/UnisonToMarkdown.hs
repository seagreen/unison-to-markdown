module UnisonToMarkdown where

import Data.Text (Text)
import Prelude
import UnisonToMarkdown.FromUnison
import UnisonToMarkdown.ToMarkdown

-- | @FilePath@ is a directory containing a @.unison@ codebase.
data Config = Config
  { unisonCodebase :: FilePath
  , namespace :: Maybe Text
  } deriving Show

run :: Config -> IO Text
run (Config path mNamespace) =
  case mNamespace of
    Nothing -> do
      res <- fromUnisonAll path
      pure (toMarkdownAll res)

    Just namespace -> do
      res <- fromUnisonNamespace path namespace
      pure (toMarkdownNamespace namespace res)
