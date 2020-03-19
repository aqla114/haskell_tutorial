module Main (main) where
import System.Environment

main :: IO ()
main = do
  let title = "Home Directory : "
  user <- getEnv "HOME"
  putStrLn title
  putStrLn user