main :: IO()
main =
  getLine >>= \x ->
  getLine >>= \y ->
  putStrLn "1:" ++ x >>
  putStrLn "2:" ++ y

main = do
  x <- getLine
  y <- getLine
  putStrLn $ "1:" ++ x
  putStrLn $ "2:" ++ y

main = do
  x <- getLine
  putStrLn $ "1:" ++ x
  getLine >>= return . ("2:" ++) >>= putStrLn