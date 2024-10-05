import System.Environment

import Commands (commands, defaultCmd, findCmd)

--- MAIN

{- Commands/arguments are as follows:
 - `nn`: No argument, defaults to creating a note in the inbox
 - `nn journal`: `j` alias, creates a journal entry. Default location is inbox
 - `nn template <template-name> <?file-name>`: `t` alias, create a template entry.
 -    Template specified as filename without file extension.
 -    Filename specified as the desired name wit hout file extension. NN is markdown-biased.
 -}
main :: IO ()
main = do
 args <- getArgs
 if null args
  then
   defaultCmd
  else do
   let arg1 = head args
   findCmd arg1 0 commands
