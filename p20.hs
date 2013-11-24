import Data.Char (digitToInt)

main = print solve

solve = sum $ map digitToInt $ show $ product [1..100]
