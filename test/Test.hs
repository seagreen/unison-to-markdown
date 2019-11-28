module Main where

import Prelude
import Test.Hspec

import qualified Data.Text.IO as TIO
import qualified UnisonToMarkdown

main :: IO ()
main =
  hspec $
    describe "unison-to-markdown" $ do
      it "All" $ do
        md <- UnisonToMarkdown.run
                (UnisonToMarkdown.Config "./test" Nothing)
        TIO.writeFile "./test/index.md" md

      it "NamespaceAndDeps" $ do
        md <- UnisonToMarkdown.run
                (UnisonToMarkdown.Config "./test" (Just "builtin.io"))
        TIO.writeFile "./test/namespace.md" md
