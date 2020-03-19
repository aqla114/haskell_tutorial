data Employee = NewEmployee { employeeAge :: Integer
                            , employeeIsManager :: Bool
                            , employeeName :: String
                            } deriving (Show)

employee :: Employee

employee = NewEmployee { employeeName = "John, Do"
                       , employeeAge = 24
                       , employeeIsManager = True
                       }

employee' = employee { employeeAge = 50 }

main = do
  print employee
  print (employeeAge employee)

