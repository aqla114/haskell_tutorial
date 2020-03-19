data CmdOption = CmdOptionInt Integer
              | CmdOptionBool Bool
		 			    | CmdOptionStr String
              deriving (Show)

opt1 = CmdOptionInt 10
opt2 = CmdOptionBool False
opt3 = CmdOptionStr "200"

cmdOptionToInt :: CmdOption -> Int
cmdOptionToInt (CmdOptionInt n) = fromIntegral n
cmdOptionToInt (CmdOptionStr x) = read x
cmdOptionToInt (CmdOptionBool True) = 1
cmdOptionToInt (CmdOptionBool False) = 0


main :: IO()
main = do
  print opt1
  print opt2
  print opt3

  print (cmdOptionToInt opt1)
  print (cmdOptionToInt opt2)
  print (cmdOptionToInt opt3)
