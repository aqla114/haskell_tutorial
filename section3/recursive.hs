data TreeDict k v = TDEmpty
                  | TDNode k v (TreeDict k v) (TreeDict k v)
                  deriving (Show)

-- insert 関数
insert :: Ord k => k -> v -> TreeDict k v -> TreeDict k v

insert k v TDEmpty = TDNode k v TDEmpty TDEmpty
insert k v (TDNode k' v' lNode rNode)
  | k < k' = TDNode k' v' (insert k v lNode) rNode
  | k > k' = TDNode k' v' lNode (insert k vNode rNode)
  | otherwise = TDNode k' v lNode rNode

-- lookup 関数
lookup' :: Ord k => k -> TreeDict k v -> Maybe v

lookup' _ TDEmpty = Nothing
lookup' k (TDNode k' v' lNode rNode)
  | k < k' = lookup' k lNode
  | k > k' = lookup' k rNode
  | otherwise = Just v'

