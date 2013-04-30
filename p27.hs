import Data.Numbers.Primes
import Data.List

main = print solve

solve = snd $ foldl1' max $ [(numberOfPrimes a b, a * b) | a <- [-999..999],
                                                           b <- [-999..999]]

numberOfPrimes :: Int -> Int -> Int
numberOfPrimes a b =
    case idx of Just n -> n
    where idx = findIndex (not . isPrime) [x * x + a * x + b | x <- [0..]]
