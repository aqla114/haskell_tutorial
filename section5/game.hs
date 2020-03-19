import Control.Monad.Trans.State
import Data.List

type Card = Int
type Score = Int
type Hand = [Card]
type Stock = [Card]
type Player = String

drawCards :: Int -> State Stock Hand -- 状態は山札、帰り値は手札
drawCards n = do
  deck <- get
  put $ drop n deck
  return $ take n deck

gameWithState :: State Stock [(Score, Hand, Player)] -- 状態は山札、返り値は (得点, 手札, プレイヤー名) のリスト
gameWithState = do
  player1Hand <- drawCards 5
  player2Hand <- drawCards 5
  player3Hand <- drawCards 5
  player4Hand <- drawCards 5

  return . reverse . sort $
    [(sum player1Hand, player1Hand, "Player1")
    ,(sum player2Hand, player2Hand, "Player2")
    ,(sum player3Hand, player3Hand, "Player3")
    ,(sum player4Hand, player4Hand, "Player4")]

main = do
  -- runState :: State s a -> s -> s -> (a, s)
  print $ runState gameWithState [1..50]
  -- evalState :: State s a -> s -> a　（return の結果だけ取り出す）
  print $ evalState gameWithState [1..50]
  -- execState :: State s a -> s -> s　（最後の状態だけ取り出す）
  print $ execState gameWithState [1..50]
