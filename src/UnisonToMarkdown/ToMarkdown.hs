module UnisonToMarkdown.ToMarkdown where

import Data.Text (Text)
import Prelude
import Unison.Name

import qualified Data.Text as Text

toMarkdown :: ([Name], [Name]) -> Text
toMarkdown (types, terms) =
       "# Types \n\n" <> typesToMarkdown types <> "\n"
  <> "\n# Terms \n\n" <> typesToMarkdown terms <> "\n"

typesToMarkdown :: [Name] -> Text
typesToMarkdown =
  Text.intercalate "\n" . fmap (Text.pack . show)
