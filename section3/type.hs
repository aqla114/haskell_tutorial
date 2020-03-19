intToArray :: Int -> Int -> [Int]

intToArray i l = take l (repeat i)

main :: IO()
main = do
  print (intToArray 3 4)