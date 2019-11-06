module Lib where

import Prelude

data Config = Config Bool String deriving Show

run :: Config -> IO ()
run =
  print

one :: Int
one =
  1
