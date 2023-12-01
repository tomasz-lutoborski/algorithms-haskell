module NinetyNine.ToTwenty where
import Data.List

data ListItem a = Single a | Multiple Int a deriving (Show)

encode1 :: Eq a => [a] -> [ListItem a]
encode1 xs = map (\x -> if length x == 1 then Single (head x) else Multiple (length x) (head x)) $ group xs
