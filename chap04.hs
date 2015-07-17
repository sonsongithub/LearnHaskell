-- Recursive
replicate' :: Int -> a -> [a]
replicate' n x
	| n <= 0 = []
	| otherwise = x : replicate' (n-1) x

-- Quick sort
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
	let leftList = [a | a <- xs, a <= x]; rightList = [a | a <- xs, a > x]
	in 	quicksort leftList ++ [x] ++ quicksort rightList