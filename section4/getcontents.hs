import Data.Char

main :: IO ()
main = do
  xs <- getContents
  putStr $ map toUpper xs