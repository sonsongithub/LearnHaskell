
import Data.List
import Data.Char

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

-- Caesar cipher
encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg

decode :: Int -> String -> String
decode offset msg = encode (negate offset) msg

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

firstToN :: Int -> Maybe Int
firstToN n = find (\x -> digitSum x == n) [1..]
