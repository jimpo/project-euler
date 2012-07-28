import Data.Numbers.Primes (primes)

main = print solve

solve = sum $ takeWhile (<2000000) primes
