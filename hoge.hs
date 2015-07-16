-- create list
testlist xs = [x*3 | x <- xs]
testlist2 xs = [x*3 | x <- xs, x < 2]
testlist3 xs ys = [x + y | x <- xs, x < 20, y <- ys, y > 5]
boomBangs xs = [if x < 10 then "B" else "C" | x <- xs]

-- multiple inheritance 
testtest :: (Ord a, Num a) => a -> Bool
testtest a = (a > 10)

-- filtering and counting
filterCount :: [a] -> (a -> Bool) -> Int
filterCount a f = sum [1 | x <- a, f(x)]

-- Pythagorean triple
r = [(a, b, c)| c <- [1..100], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

-- pattern matching
testMatching :: Int -> String
testMatching 0 = "this is 0"
testMatching 1 = "this is 1"

first :: (a, a, a) -> a
first (a, _, _) = a

second :: (a, a, a) -> a
second (_, a, _) = a

third :: (a, a, a) -> a
third (_, _, a) = a

tellList :: (Show a) => [a] -> String
tellList [] = "is empty"
tellList (x:[]) = "head is " ++ show x
tellList (_:y:[]) = "second is last, as " ++ show y
tellList (x:y:_) = "second is " ++ show y

-- "as" pattern
tellList2 :: (Show a) => [a] -> String
tellList2 xs@([]) = show xs ++ "is empty"
tellList2 xs@(x:[]) = show xs ++ "'s head is " ++ show x
tellList2 xs@(_:y:[]) = "second is last, as " ++ show y
tellList2 xs@(x:y:_) = "second is " ++ show y

tellList3 :: (Ord a, Show a) => a -> a -> String
tellList3 x y
	|x < y = show y ++ " is larget than " ++ show x 
	|x > y = show x ++ " is larget than " ++ show y 
	|otherwise = show x ++ " equals to " ++ show y


tellList4 :: (Ord a, Show a, Num a) => a -> a -> String
tellList4 x y
	|z < 0 = "x*y is smaller than 0" 
	|z > 0 = "x*y is larger than 0"
	|otherwise = "other case....?"
	where z = x * y
