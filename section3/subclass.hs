data Human = Human String deriving Show

class Greeting a where
  name :: a -> String
  hello :: a -> String
  hello _ = "..."
  bye :: a -> String
  bye _ = "..."

class Greeting a => Laughing a where
  laugh :: a -> String

instance Greeting Human where
  name (Human n) = n
  hello h = "Hi, I'm" ++ name h ++ " ."
  bye _ = "See you."

instance Laughing Human where
  laugh _ = "HAHAHA"

main = do
  putStrLn (bye (Human "John"))
  putStrLn (laugh (Human "John"))