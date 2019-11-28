module UnisonToMarkdown.ToMarkdown where

import Data.Map (Map)
import Data.Text (Text)
import Prelude
import Unison.Name
import UnisonToMarkdown.FromUnison(All(..), NamespaceAndDeps(..))

import qualified Data.Hashable as Hashable
import qualified Data.Map as Map
import qualified Data.Text as Text

toMarkdownNamespace :: Text -> NamespaceAndDeps -> Text
toMarkdownNamespace
  namespace
  NamespaceAndDeps{namespaceTypes, namespaceTerms, depTypes, depTerms} =

     "# " <> namespace <> " table of contents" <> "\n\n"
  <> "## Types\n\n"
  <> indexEntries namespaceTypes <> "\n"
  <> "## Terms\n\n"
  <> indexEntries namespaceTerms <> "\n"
  <> "# Types" <> "\n\n"
  <> mainEntries namespaceTypes <> "\n"
  <> "# Terms" <> "\n\n"
  <> mainEntries namespaceTerms
  <> "# Dependency types" <> "\n\n"
  <> mainEntries depTypes <> "\n"
  <> "# Dependency terms" <> "\n\n"
  <> mainEntries depTerms

toMarkdownAll :: All -> Text
toMarkdownAll (All types terms) =
     "# Table of Contents" <> "\n\n"
  <> "## Types\n\n"
  <> indexEntries types <> "\n"
  <> "## Terms\n\n"
  <> indexEntries terms <> "\n"
  <> "# Types" <> "\n\n"
  <> mainEntries types <> "\n"
  <> "# Terms" <> "\n\n"
  <> mainEntries terms

-- | The @Text@ in @Map Name Text@ is pretty printed source.
indexEntries :: Map Name Text -> Text
indexEntries =
  foldMap (f . fst) . Map.toAscList
  where
    f :: Name -> Text
    f n =
      "+ [" <> Text.pack (show n) <> "](#" <> generateAnchorLink n <> ")\n"

mainEntries :: Map Name Text -> Text
mainEntries =
  foldMap f . Map.toAscList
  where
    f :: (Name, Text) -> Text
    f (name, src) =
         "<a name='" <> generateAnchorLink name <> "'/>\n\n"
      <> "### " <> Text.pack (show name) <> "\n\n"
      <> "```unison\n" <> src <> "\n" <> "```\n\n"

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
