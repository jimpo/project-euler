import Data.Numbers.Primes (primes)

main = print solve

solve = primes !! 10000
