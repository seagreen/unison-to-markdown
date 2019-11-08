module UnisonToMarkdown.ToMarkdown where

import Data.Map (Map)
import Data.Text (Text)
import Prelude
import Unison.Name

import qualified Data.Hashable as Hashable
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
      "+ [" <> Text.pack (show n) <> "](#" <> generateAnchorLink n <> ")\n"

mainEntries :: Map Name () -> Text
mainEntries =
  foldMap (f . fst) . Map.toAscList
  where
    f :: Name -> Text
    f n =
         "<a name='" <> generateAnchorLink n <> "'/>)\n\n"
      <> "### " <> Text.pack (show n) <> "\n\n"
      <> "```\n" <> "lorem ipsum\n" <> "```\n\n"

-- | Create out own anchor links using Hashable.
--
-- This is because:
--
-- (1)
--
-- GitHub creates anchor links by dropping punctuation.
--
-- For instance the header `# builtin.Boolean`
-- creates the link `#builtinboolean`
--
-- It also appends a hypen and a number to distinguish duplicate link.
--
-- For instance these headers:
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
--
-- (2)
--
-- We can't simply URL encode the anchor links, becuase anchor links with a
-- % sign don't work on GitHub. Instead hash them to a number.
generateAnchorLink :: Name -> Text
generateAnchorLink =
  Text.pack . show . abs . Hashable.hash . show
