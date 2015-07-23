## List
	testlist xs = [x*3 | x <- xs]
	testlist2 xs = [x*3 | x <- xs, x < 2]
	testlist3 xs ys = [x + y | x <- xs, x < 20, y <- ys, y > 5]
	boomBangs xs = [if x < 10 then "B" else "C" | x <- xs]

### Example
	*Main> testlist [10, 1, -1, 3]
	[30,3,-3,9]
	*Main> testlist2 [10, 1, -1, 3]
	[3,-3]
	*Main> testlist3 [10, 1, -1, 3] [10, 2, 1, 2]
	[20,11,9,13]
	*Main> boomBangs [1, 10, 1, -1, 3]
	["B","C","B","B","B"]
	*Main> 


## multiple inheritance 
	testtest :: (Ord a, Num a) => a -> Bool
	testtest a = (a > 10)
	
### Example
	*Main> testtest 2
	False	

## filtering and counting
	filterCount :: [a] -> (a -> Bool) -> Int
	filterCount a f = sum [1 | x <- a, f(x)]
	
### Example
	*Main> filterCount [10, 2, 20] (\x -> (x > 4))
	2

## Pythagorean triple
	r = [(a, b, c)| c <- [1..100], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

### Example
	*Main> r
	[(3,4,5),(6,8,10),(5,12,13),(9,12,15),(8,15,17),(12,16,20),(15,20,25),(7,24,25),(10,24,26),(20,21,29),(18,24,30),(16,30,34),(21,28,35),(12,35,37),(15,36,39),(24,32,40),(9,40,41),(27,36,45),(30,40,50),(14,48,50),(24,45,51),(20,48,52),(28,45,53),(33,44,55),(40,42,58),(36,48,60),(11,60,61),(39,52,65),(33,56,65),(25,60,65),(16,63,65),(32,60,68),(42,56,70),(48,55,73),(24,70,74),(45,60,75),(21,72,75),(30,72,78),(48,64,80),(18,80,82),(51,68,85),(40,75,85),(36,77,85),(13,84,85),(60,63,87),(39,80,89),(54,72,90),(35,84,91),(57,76,95),(65,72,97),(60,80,100),(28,96,100)]
	
## pattern matching
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

### Example

## "as" pattern
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
		
### Example

## case
caseTest :: [a] -> String
caseTest xs = case xs of [] -> "error"
                         ls -> "more elements"
                         
### Example