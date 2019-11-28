{-# LANGUAGE TemplateHaskell #-}

module Main where

import Data.Version (showVersion)
import Development.GitRev (gitHash)
import Options.Applicative
import Paths_unison_to_markdown (version)
import Prelude
import UnisonToMarkdown (Config(Config))

import qualified Data.Text.IO as TIO
import qualified UnisonToMarkdown

main :: IO ()
main =
  TIO.putStrLn =<< UnisonToMarkdown.run =<< runParser
  where
    runParser :: IO Config
    runParser =
      customExecParser (prefs showHelpOnError) parserInfo

    parserInfo :: ParserInfo Config
    parserInfo =
      info
        (helper <*> versionOption <*> parser)
        (  fullDesc
        <> header "unison-to-markdown"
        <> progDesc "Produce a Markdown index from a Unison codebase."
        )

    versionOption :: Parser (a -> a)
    versionOption =
      infoOption
        (showVersion version <> " " <> $(gitHash))
        (  long "version"
        <> help "Show version"
        )

    -- Make sure you include the `help` section or that flag won't show up
    -- under "Available options". Instead you'll get:
    --
    --     Usage: game-server [--version] [-p|--port PORT]
    --       Example program description.
    --     Available options:
    --       -h,--help                Show this help text
    --       --version                Show version
    --
    parser :: Parser Config
    parser =
      Config
        <$>
          strOption
            (  long "codebase"
            <> metavar "CODEBASE_PATH"
            <> help "Path to directory containing .unison codebase"
            <> value "."
            <> showDefault
            )
        <*>
          optional
            (strOption
              (  long "namespace"
              <> metavar "NAMESPACE_PATH"
              <> help
                   (  "Output a specific namespace " -- and its dependencies"
                   <> " instead of the whole codebase"
                   )
              )
            )
