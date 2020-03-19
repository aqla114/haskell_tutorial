main :: IO()

x = True
y = case x of {
  True -> "x is True";
  False -> "x is False"
}

grade z = case z of {
  1 -> "1st";
  2 -> "2nd";
  3 -> "3rd";
  x' -> show x' ++ "th"
}

oddeven z = case z of n | n `mod` 2 == 0 -> "even"
                        | otherwise -> "odd"

main = do
  print y
  print (grade 5)
  print (oddeven 5)
  print (oddeven 2)

