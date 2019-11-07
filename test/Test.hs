module Main where

import Prelude
import Test.Hspec

import qualified Data.Text.IO as TIO
import qualified UnisonToMarkdown

main :: IO ()
main =
  hspec $
    describe "unison-to-markdown" $
      it "run" $ do
        md <- UnisonToMarkdown.run (UnisonToMarkdown.Config "./test")
        TIO.writeFile "./test/index.md" md
