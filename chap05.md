### Currying, curried
	sumThreeNum :: (Num a) => a -> a -> a -> a
	sumThreeNum x y z = x + y + z

#### Example
	*Main> let f = sumThreeNum 1 2
	*Main> f 10
	13

### Recursive
	quicksort :: (Ord a) => [a] -> [a]
	quicksort [] = []
	quicksort (x:xs) = 
		let leftList = filter (<= x) xs; rightList = filter (> x) xs
		in 	quicksort leftList ++ [x] ++ quicksort rightList

#### Example
	*Main> quicksort [10, 1, -1, 2, 5, 20]
	[-1,1,2,5,10,20]
	*Main> takeWhile (/=10) [20, -1 ,100, 10, 1]
	[20,-1,100]
	*Main>  let p x = x `mod` 3 == 0 in filter p [20,10,2,4,6]
	[6]
	*Main> filter (\x -> x `mod` 3 == 0) [20,10,2,4,6]
	[6]