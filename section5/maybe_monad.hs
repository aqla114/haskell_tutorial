type Category = String
type Name = String
type Price = Integer
type Menu = [(Category, [(Name, Price)])]
type Item = (Category, Name, Price)

menu :: Menu
menu =
  [ ("Foods",
    [ ("Hamburger", 120)
     ,("FrenchFries", 100)
    ])
  , ("Drinks",
    [ ("Cola", 80)
     ,("Tea", 100)
    ])
  ]

getItem :: Menu -> Category -> Name -> Maybe Item

getItemWithoutMonad :: Menu -> Category -> Name -> Maybe Item
getItemWithoutMonad menu category Name
  = case lookup category menu of
    Just subMenu -> case lookup name subMenu of
      Just price -> Just (category, name, price)
      Nothing -> Nothing
    Nothing -> Nothing

getItem menu category name = do
  subMenu <- lookup category menu
  price <- lookup name subMenu
  return (category, name, price)