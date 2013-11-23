main = print solve

solve = sum $ map (length . letters) [1..1000]

letters :: Int -> String
letters n
    | n == 0 = ""
    | n < 20 = ones !! n
    | n < 100 = (tens !! (n `div` 10)) ++ letters (n `mod` 10)
    | n < 1000 && (n `mod` 100 == 0) =
        (ones !! (n `div` 100)) ++ "hundred"
    | n < 1000 =
        (ones !! (n `div` 100)) ++ "hundred" ++ "and" ++ letters (n `mod` 100)
    | n < 1000000 =
        letters (n `div` 1000) ++ "thousand" ++ letters (n `mod` 1000)
    where ones = ["zero", "one", "two", "three", "four", "five", "six", "seven",
                  "eight", "nine", "ten", "eleven", "twelve", "thirteen",
                  "fourteen", "fifteen", "sixteen", "seventeen", "eighteen",
                  "nineteen"]
          tens = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty",
                  "seventy", "eighty", "ninety"]
