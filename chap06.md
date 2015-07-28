### Module
    import Data.List (nub, sort)
    import Data.List hiding (nub)
    import qualified Data.Map
    -- Data.Map.filter
    
    import qualified Data.Map as M
    -- M.filter

	import Data.List
	numUniques :: (Eq a) => [a] -> Int
	numUniques = length . nub


### Example
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

### Caesar cipher
	-- Caesar cipher
	encode :: Int -> String -> String
	encode offset msg = map (\c -> chr $ ord c + offset) msg

	decode :: Int -> String -> String
	decode offset msg = encode (negate offset) msg

### Example
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

