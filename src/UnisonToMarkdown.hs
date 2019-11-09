module UnisonToMarkdown
  ( module UnisonToMarkdown
  , module UnisonToMarkdown.FromUnison
  , module UnisonToMarkdown.ToMarkdown
  ) where

import Data.Text (Text)
import Prelude
import UnisonToMarkdown.FromUnison
import UnisonToMarkdown.ToMarkdown

-- | @FilePath@ is a directory containing a @.unison@ codebase.
data Config = Config FilePath deriving Show

run :: Config -> IO Text
run (Config path) = do
  res <- fromUnison path
  pure (toMarkdown res)
