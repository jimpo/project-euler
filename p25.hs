import Data.List (findIndex)

main = print solve

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

solve = x
    where Just x = findIndex (\x -> 1000 <= length (show x)) fibs
