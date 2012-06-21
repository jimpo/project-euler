main = print solve

palindrome s = s == reverse s

solve = maximum $ [p | x <- [100 .. 999], y <- [100 .. 999],
                   let p = x * y, palindrome (show p)]