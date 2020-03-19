safeDiv :: Integer -> Integer -> Maybe Integer
safeDiv k n | n == 0 = Nothing
            | otherwise = Just (k `div` n)

safeDiv :: Integer -> Integer -> Either String Integer
safeDiv k n | n == 0 = Left $ "Illegal division by zero. k:" ++ show k
            | otherwise = Right (k `div` n)
