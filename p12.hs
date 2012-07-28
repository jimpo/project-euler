import Data.List (find)

main = print (extract solve)
       where extract (Just n) = n

factors :: Integral a => a -> [a]
factors n = concat $ [if i == j then [i] else [i, j] | i <- [1..upperBound],
                      n `mod` i == 0, let j = n `quot` i]
            where upperBound = floor $ sqrt (fromIntegral n)

triangular = [(i * (i + 1)) `quot` 2 | i <- [1..]]

solve = find (\n -> length (factors n) > 500) triangular
