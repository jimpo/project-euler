main = print solve

triplets :: (Integral a) => a -> [[a]]
triplets p = [[a, b, c] | a <- [1..p], b <- [1..a], let c = p - a - b,
              c > 0, a^2 + b^2 == c^2]

solve = product $ head $ triplets 1000
