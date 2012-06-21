main = print solve

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
solve = sum $ filter even $ takeWhile (<4000000) fibs
