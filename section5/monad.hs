f :: Maybe Int
f = do  -- 途中で値が Nothing になるので、Nothing が返る
  x <- Just 10
  Nothing
  return $ x * 2

-- (>>=) :: Maybe a -> (a -> Maybe b) -> Maybe b
-- f = Just 10 >>= \x -> Nothing >>= \_ -> return (x * 2)

main = print f