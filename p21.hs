main = print solve

solve = sum $ filter amicable [2..9999]

amicable :: Int -> Bool
amicable n = d /= n && sumOfFactors d == n
    where d = sumOfFactors n

sumOfFactors :: Int -> Int
sumOfFactors n = 1 + sum [if i == j then i else i + j |
                          i <- [2..floor (sqrt (fromIntegral n))],
                          let (j, r) = n `divMod` i, r == 0]
