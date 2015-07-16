import Data.Either

digits :: Int -> Int
digits = length . show

showResult :: (Either a b) -> Int
showResult a = if (isRight a) then 1 else 2

