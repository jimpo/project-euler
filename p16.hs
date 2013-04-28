import Data.Char (digitToInt)

main = print solve

solve = sum $ map digitToInt $ show (2^1000)
