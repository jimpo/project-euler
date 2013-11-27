import Data.Array.IArray
import Data.Set (fromList)
import Data.Foldable (sum)
import Control.Applicative


main = print solve

limit = 28123

solve = limit * (limit + 1) `div` 2 - abundantSum
    where abundantSum = Data.Foldable.sum $ fromList $
                        filter (<= limit) $ (+) <$> abundants <*> abundants
          abundants = filter abundant [1..limit]

abundant :: Int -> Bool
abundant n = sumOfFactors n > n

sumOfFactors :: Int -> Int
sumOfFactors n = 1 + Prelude.sum [if i == j then i else i + j |
                                  i <- [2..floor (sqrt (fromIntegral n))],
                                  let (j, r) = n `divMod` i, r == 0]
