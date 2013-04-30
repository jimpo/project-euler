import Data.List

main = print solve

nDigits = length . show

fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

solve = case findIndex (\n -> 1000 == nDigits n) fibs of
          Just n -> n + 1 -- 1 indexed terms
