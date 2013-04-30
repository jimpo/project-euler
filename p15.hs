import Data.Array.IArray

main = print solve

solve :: Int
solve =
    a!(20,20)
    where a = listArray ((0,0), (20,20)) (1:dp) :: Array (Int, Int) Int
          dp = do
            (i, j) <- drop 1 $ range ((0,0), (20,20))
            return ((if i > 0 then a!(i - 1, j) else 0) +
                    (if j > 0 then a!(i, j - 1) else 0))
