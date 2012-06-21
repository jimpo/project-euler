main = print solve

minFactor :: (Integral a) => a -> a
minFactor n = head ([i | i <- [2 .. root], n `mod` i == 0] ++ [n])
              where root = floor $ sqrt $ fromIntegral n

primeFactors :: (Integral a) => a -> [a]
primeFactors 1 = []
primeFactors n = minFactor n : primeFactors (n `div` minFactor n)

solve = maximum $ primeFactors 600851475143