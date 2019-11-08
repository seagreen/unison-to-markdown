module UnisonToMarkdown.ToMarkdown where

import Data.Map (Map)
import Data.Text (Text)
import Prelude
import Unison.Name

import qualified Data.Map as Map
import qualified Data.Text as Text

toMarkdown :: (Map Name (), Map Name ()) -> Text
toMarkdown (types, terms) =
       "# Types\n\n" <> indexEntry (Map.toAscList types) <> "\n"
  <> "\n# Terms\n\n" <> indexEntry (Map.toAscList terms) <> "\n"

indexEntry :: [(Name, ())] -> Text
indexEntry =
  foldMap (f . fst)
  where
    f :: Name -> Text
    f n =
      "+ " <> Text.pack (show n) <> "\n"
