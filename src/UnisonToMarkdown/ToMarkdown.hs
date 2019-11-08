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
      "+ [" <> t <> "](#" <> toLink t <> ")\n"

    -- GitHub drops punctuation from links.
    -- So `builtin.Boolean` creates the link `#builtinboolean`
    --
    -- TODO: handle conflicting links.
    --
    -- Probably via named custom headers: https://stackoverflow.com/a/48453745
    --
    -- For instance these three entries:
    --
    -- builtin.List.++
    -- builtin.List.+:
    -- builtin.List.:+
    --
    -- result in these three links:
    --
    -- #builtinlist-1
    -- #builtinlist-2
    -- #builtinlist-3
    toLink :: Text -> Text
    toLink =
      Text.filter (/= '.')

mainEntries :: Map Name () -> Text
mainEntries =
  foldMap (f . fst) . Map.toAscList
  where
    f :: Name -> Text
    f n =
         "### " <> Text.pack (show n) <> "\n\n"
      <> "```\n" <> "lorem ipsum\n" <> "```\n\n"
