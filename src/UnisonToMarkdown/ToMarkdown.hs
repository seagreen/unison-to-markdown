module UnisonToMarkdown.ToMarkdown where

import Data.Map (Map)
import Data.Text (Text)
import Prelude
import Unison.Name

import qualified Network.URI.Encode as URI
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
      "+ [" <> t <> "](#" <> URI.encodeText t <> ")\n"

mainEntries :: Map Name () -> Text
mainEntries =
  foldMap (f . fst) . Map.toAscList
  where
    f :: Name -> Text
    f n =
         -- GitHub creates anchor links by dropping punctuation.
         --
         -- For instance the header `# builtin.Boolean`
         -- creates the link `#builtinboolean`
         --
         -- It also appends a hypen and a number to distinguish duplicate link.
         --
         -- For intstance these header:
         --
         -- # builtin.List.++
         -- # builtin.List.+:
         -- # builtin.List.:+
         --
         -- result in these links:
         --
         -- #builtinlist-1
         -- #builtinlist-2
         -- #builtinlist-3
         --
         -- To avoid having to try to match that behavior we create our
         -- own anchor links with an <a> tag:
         "<a name='" <> URI.encodeText (Text.pack (show n)) <> "'/>\n\n"

      <> "### " <> Text.pack (show n) <> "\n\n"
      <> "```\n" <> "lorem ipsum\n" <> "```\n\n"
