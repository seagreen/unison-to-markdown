-- | Create our own anchor links using <a> tags.
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
-- It also appends a hyphen and a number to distinguish duplicate link.
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
-- own anchor links with an <a> tag.
module UnisonToMarkdown.ToMarkdown.Link where

import Data.Text (Text)
import Prelude
import Unison.Name (Name)

import qualified Codec.Binary.Base32 as Base32
import qualified Crypto.Hash.MD5 as MD5
import qualified Data.Text as Text
import qualified Data.Text.Encoding as TextEncoding
import qualified Unison.Name as Name

-- | We MD5 names and then base32 them to create anchor links.
--
-- Previous strategies:
--
-- (1) URL encode them
--
-- Doesn't work because anchor links with a % sign don't work on GitHub.
--
-- (2) Use Data.Hashable.hash to create them
--
-- I was afraid this might change between versions, breaking incoming links.
--
-- (3) base32 them
--
-- This leads to a bunch of links that look confusingly the same, like:
--
-- #mj2ws3dunfxc4qtpn5wgkylo
-- #mj2ws3dunfxc4rljorugk4q
--
-- it also doesn't have a maximum size.
--
-- (4) MD5 then base32 them
--
-- The current strategy.
generateAnchorLink :: Name -> Text
generateAnchorLink =
  base32 . Name.toText

base32 :: Text -> Text
base32 =
    Text.toLower
  . Text.dropWhileEnd (== '=')
  . TextEncoding.decodeUtf8 -- partial
  . Base32.encode
  . MD5.hash
  . TextEncoding.encodeUtf8
