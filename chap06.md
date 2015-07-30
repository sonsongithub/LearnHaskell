### モジュールの読み込み
    import Data.List (nub, sort)
    import Data.List hiding (nub)
    import qualified Data.Map
    -- Data.Map.filter
    
    import qualified Data.Map as M
    -- M.filter

	-- nubは重複を削除した配列を返す
	import Data.List
	numUniques :: (Eq a) => [a] -> Int
	numUniques = length . nub

### 実行例
	*Main> numUniques [10, 10]
	1
	*Main> numUniques [10, 11]
	2
	*Main> :t nub
	nub :: Eq a => [a] -> [a]
	*Main> nub [10, 11, 13]
	[10,11,13]
	*Main> nub [10, 11, 13, 10]
	[10,11,13]
	*Main> let t = "wa wa wee wa"
	*Main> words t
	["wa","wa","wee","wa"]
	*Main> sort $ words t
	["wa","wa","wa","wee"]
	*Main> group $ sort $ words t
	[["wa","wa","wa"],["wee"]]
	*Main> (group . sort . words) t
	[["wa","wa","wa"],["wee"]]
	*Main> (\xs->(head xs, length xs)) $ group $ sort $ words t
	(["wa","wa","wa"],2)
	*Main> map (\xs->(head xs, length xs)) $ group $ sort $ words t
	[("wa",3),("wee",1)]
	*Main> map (\xs->(head xs, length xs)) (group $ sort $ words t)
	[("wa",3),("wee",1)]
	*Main> 

### シーザー暗号
	-- シーザー暗号を実装してみる
	encode :: Int -> String -> String
	encode offset msg = map (\c -> chr $ ord c + offset) msg

	decode :: Int -> String -> String
	decode offset msg = encode (negate offset) msg

### 各桁の数字の総和を計算する 499 => 22
	-- Find nice number
	digitSum :: Int -> Int
	digitSum = sum . map digitToInt . show

	firstToN :: Int -> Maybe Int
	firstToN n = find (\x -> digitSum x == n) [1..]

### 実行例ー各桁の総和がNになる数を探す
	*Main> numUniques [10, 20, 11]
	3
	*Main> decode 2 $ encode 2 "sonson"
	"sonson"
	*Main> 
	*Main> digit
	digitSum    digitToInt
	*Main> digitSum 213
	6
	*Main> firstToN 40
	Just 49999
	*Main>

### 畳み込み再訪
	-- アキュムレータと引き渡すラムダ式の引数の順番大切
	Prelude> foldr (\x acc -> x / acc) 1 [10, 2, 3, 5]
	3.0
	Prelude> foldl (\acc x -> x / acc) 1 [10, 2, 3, 5]
	0.3333333333333333
	Prelude> 

### 連想配列


