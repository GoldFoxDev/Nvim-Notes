module Types where

data Command = Command
  { cmdName :: String -- Command name
  , cmdAliases :: [String] -- List of aliases
  , cmdDescription :: String -- Command description
  , cmdAction :: IO () -- Command action (IO operation)
  }
