import Network.HTTP
import Data.String.Utils (split)
import Data.List (sort)
import Data.Char (ord)


main = names >>= print . solve

solve :: [String] -> Integer
solve = sum . map score . zip [1..] . sort
    where score (rank, name) = rank * (alphabeticScore name)

alphabeticScore :: String -> Integer
alphabeticScore = fromIntegral . sum . map (\ch -> ord ch - ord 'A' + 1)

names :: IO [String]
names = do
  result <- simpleHTTP (getRequest "http://projecteuler.net/project/names.txt")
  body <- getResponseBody result
  return $ map (init . tail) $ split "," body
