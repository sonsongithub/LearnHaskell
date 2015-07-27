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

### $
	Prelude> sum (filter (> 10) (map (*2) [2..10]))
	80
	Prelude> sum $ filter (> 10) (map (*2) [2..10])
	80
	Prelude> sum $ filter (> 10) $ map (*2) [2..10]
	80
	Prelude> map ($ 3) [(2+), (10*)]
	[5,30]
	Prelude> map ($ 3) [(\x->x+3), (10*)]
	[6,30]
	Prelude> map ($ 3) [(\x->x+3), (10*), (3+)]
	[6,30,6]
	Prelude> map ($ 3) [(\x->x+3), (10*), (+3)]
	[6,30,6]
	
### composition
	Prelude> map (\xs -> negate (sum (tail xs))) [[1..5], [3..6], [1..7]]
	[-14,-15,-27]
	Prelude> map (negate . sum . tail) [[1..5], [3..6], [1..7]]
	[-14,-15,-27]
	Prelude> sum (replicate 5 (max 6.7 8.9))
	44.5
	Prelude> sum . replicate 5 $ max 6.7 8.9
	44.5
	Prelude> let f = sum .replicate 5
	Prelude> :t f
	f :: Num c => c -> c
	Prelude> f 10
	50
	Prelude> replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))
	[180,180]
	Prelude> replicate 2 (product (map (*3) $ zipWith max [1,2] [4,5]))
	[180,180]
	Prelude> replicate 2 (product . map (*3) $ zipWith max [1,2] [4,5])
	[180,180]
	Prelude> replicate 2 $ product . map (*3) $ zipWith max [1,2] [4,5]
	[180,180]
	Prelude> replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]
	[180,180]
	Prelude> 
