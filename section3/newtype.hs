newtype NTIndexed a = NewNTIndexed (Integer, a) deriving (Show)
x = NewNTIndexed (10, "ten") -- :: NTIndexed [Char]
