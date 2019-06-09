-- A knight's question

import Control.Monad

-- First number is colomn, second one is row of the knight
type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (c, r) = do
    (c', r') <- [(c+2,r-1), (c+2, r+1), (c-2,r-1), (c-2,r+1)
                , (c+1,r-2), (c+1,r+2), (c-1,r-2), (c-1,r+2)]
    guard (c' `elem` [1..8] && r' `elem` [1..8])
    return (c', r')

-- Function that takes a position and returns all the positions
-- that you can reach from it in three moves. 
in3 :: KnightPos -> [KnightPos]
in3 start = do
    first <- moveKnight start
    second <- moveKnight first
    moveKnight second

-- so in a way we can express in3 as bind functions:
-- in3 start = return start >>= moveKnight >>= moveKnight >>= moveKnight

canReachIn3 :: KnightPos -> KnightPos -> Bool
canReachIn3 start end = end `elem` in3 start
