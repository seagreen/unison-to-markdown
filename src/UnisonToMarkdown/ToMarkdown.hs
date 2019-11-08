module UnisonToMarkdown.ToMarkdown where

import Data.Map (Map)
import Data.Text (Text)
import Prelude
import Unison.Name

import qualified Data.Map as Map
import qualified Data.Text as Text

toMarkdown :: (Map Name (), Map Name ()) -> Text
toMarkdown (types, terms) =
     "# Table of Contents" <> "\n\n"
  <> "## Types\n\n"
  <> indexEntries types <> "\n"
  <> "## Terms\n\n"
  <> indexEntries terms <> "\n"
  <> "# Types" <> "\n\n"
  <> mainEntries types <> "\n"
  <> "# Terms" <> "\n\n"
  <> mainEntries terms

indexEntries :: Map Name () -> Text
indexEntries =
  foldMap (f . fst) . Map.toAscList
  where
    f :: Name -> Text
    f n =
      let
        t :: Text
        t =
          Text.pack (show n)
      in
      "+ [" <> t <> "](#" <> t <> ")\n"

mainEntries :: Map Name () -> Text
mainEntries =
  foldMap (f . fst) . Map.toAscList
  where
    f :: Name -> Text
    f n =
         "### " <> Text.pack (show n) <> "\n\n"
      <> "```\n" <> "lorem ipsum\n" <> "```\n\n"
