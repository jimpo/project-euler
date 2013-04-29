import Data.List

main = print solve

solve :: Int
solve = snd $ foldl1' max $ map collatz [1..1000000]
    where collatz n = (chainLength 1 n, n)

chainLength :: Int -> Int -> Int
chainLength x n
    | n == 1 = x
    | even n = chainLength (x + 1) (n `div` 2)
    | otherwise = chainLength (x + 1) (3 * n + 1)
