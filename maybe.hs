-- module Main (main) where
import Data.Maybe

percentage k n | n == 0 = Nothing  :: Maybe Double
  | otherwise = Just (100.0 * k / n)

main = do
  print (percentage 10 50)
  print (fromJust (percentage 10 50))
  print (percentage 10 0)

