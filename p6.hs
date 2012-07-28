main = print solve

solve = squareOfSum - sumOfSquare
        where squareOfSum = (sum [1 .. 100]) ^ 2
              sumOfSquare = sum [x ^ 2 | x <- [1 .. 100]]
