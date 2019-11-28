module UnisonToMarkdown.ToMarkdown where

import Data.Map (Map)
import Data.Text (Text)
import Prelude
import Unison.Name
import UnisonToMarkdown.FromUnison (All(..), NamespaceAndDeps(..))
import UnisonToMarkdown.ToMarkdown.Link (generateAnchorLink)

import qualified Data.Map as Map
import qualified Data.Text as Text

toMarkdownNamespace :: Text -> NamespaceAndDeps -> Text
toMarkdownNamespace namespace NamespaceAndDeps{namespaceTypes, namespaceTerms} =

     "# " <> namespace <> " table of contents" <> "\n\n"
  <> "## Types\n\n"
  <> indexEntries namespaceTypes <> "\n"
  <> "## Terms\n\n"
  <> indexEntries namespaceTerms <> "\n"
  <> "# Types" <> "\n\n"
  <> mainEntries namespaceTypes <> "\n"
  <> "# Terms" <> "\n\n"
  <> mainEntries namespaceTerms
  -- <> "# Dependency types" <> "\n\n"
  -- <> mainEntries depTypes <> "\n"
  -- <> "# Dependency terms" <> "\n\n"
  -- <> mainEntries depTerms

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
