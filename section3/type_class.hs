data Dog = Dog deriving Show
data Cat = Cat deriving Show
data Human = Human String deriving Show


class Greeting a where
  name :: a -> String
  hello :: a -> String
  hello _ = "..."
  bye :: a -> String
  bye _ = "..."

instance Greeting Dog where
  name _ = "a dog"
  hello _ = "Bark!"

instance Greeting Cat where
  name _ = "a cat"
  bye _ = "Meow..."

instance Greeting Human where
  name (Human n) = n
  hello h = "Hi, I'm" ++ name h ++ " ."
  bye _ = "See you."