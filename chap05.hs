-- currying, curried
sumThreeNum :: (Num a) => a -> a -> a -> a
sumThreeNum x y z = x + y + z

-- Recursive, Quick sort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
	let leftList = filter (<= x) xs; rightList = filter (> x) xs
	in 	quicksort leftList ++ [x] ++ quicksort rightList

