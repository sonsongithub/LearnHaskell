-- currying, curried
sumThreeNum :: (Num a) => a -> a -> a -> a
sumThreeNum x y z = x + y + z
-- *Main> let f = sumThreeNum 1 2
-- *Main> f 10
-- 13
-- *Main> 

-- Quick sort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
	let leftList = filter (<= x) xs; rightList = filter (> x) xs
	in 	quicksort leftList ++ [x] ++ quicksort rightList

-- higher-order function
-- takeWhile (/=10) [20, -1 ,100, 10, 1]

-- let p x = x `mod` 3 == 0 in filter p [20,10,2,4,6]
-- filter (\x -> x `mod` 3 == 0) [20,10,2,4,6]

