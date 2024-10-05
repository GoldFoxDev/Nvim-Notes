module Commands where

import Control.Monad (forM_)
import Data.Time.Format (defaultTimeLocale, formatTime)
import Data.Time.LocalTime (getZonedTime)
import System.Process

import Types

--- Definitions

commands :: [Command]
commands = [journal, help, template]

journal :: Command
journal =
  Command
    { cmdName = "Journal"
    , cmdAliases = ["journal", "j"]
    , cmdDescription = "Creates journal entry"
    , cmdAction = createJournalEntry
    }

help :: Command
help =
  Command
    { cmdName = "Help"
    , cmdAliases = ["help", "h"]
    , cmdDescription = "Lists available commands"
    , cmdAction = showHelp
    }

template :: Command
template =
  Command
    { cmdName = "Template"
    , cmdAliases = ["template", "t"]
    , cmdDescription = "Creates template entry"
    , cmdAction = createTemplateEntry
    }

--- METHODS

createNote :: IO ()
createNote = do
  currentTime <- getZonedTime
  let time = formatTime defaultTimeLocale "%Y-%m-%d_%H:%M:%S" currentTime
  let fileName = time ++ ".md"
  writeFile fileName ""
  callCommand ("nvim " ++ fileName)

createJournalEntry :: IO ()
createJournalEntry = do
  currentTime <- getZonedTime
  let time = formatTime defaultTimeLocale "%Y-%m-%d_%H:%M:%S" currentTime
  let fileName = time ++ ".md"
  -- getEnv
  -- get from config file
  callCommand ("cp ~/.config/nvim_notes/templates/template.journal.md " ++ "~/nn/inbox/" ++ fileName)
  callCommand ("nvim " ++ "~/nn/inbox/" ++ fileName)

createTemplateEntry :: IO ()
createTemplateEntry = do
  putStrLn "Create template entry"

showHelp :: IO ()
showHelp = do
  putStrLn "Command options:"
  forM_ commands $ \command -> do
    putStrLn $ cmdName command ++ " " ++ concat (cmdAliases command)

defaultCmd :: IO ()
defaultCmd = do
  createNote

findCmd :: String -> Int -> [Command] -> IO ()
findCmd cmdToFind i commands
  | i < length commands =
      let cmd = commands !! i
       in if cmdToFind `elem` cmdAliases cmd
            then cmdAction cmd
            else findCmd cmdToFind (i + 1) commands
  | otherwise = showHelp
