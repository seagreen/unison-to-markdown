module UnisonToMarkdown.ToMarkdown where

import Data.Text (Text)
import Prelude
import Unison.Name

import qualified Data.List as List
import qualified Data.Text as Text

toMarkdown :: ([Name], [Name]) -> Text
toMarkdown (types, terms) =
       "# Types\n\n" <> typesToMarkdown (List.sort types) <> "\n"
  <> "\n# Terms\n\n" <> typesToMarkdown (List.sort terms) <> "\n"

typesToMarkdown :: [Name] -> Text
typesToMarkdown =
  foldMap f
  where
    f :: Name -> Text
    f n =
      "+ " <> Text.pack (show n) <> "\n"

