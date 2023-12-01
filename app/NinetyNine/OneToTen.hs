module NinetyNine.OneToTen where
import Data.List

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_ : xs) = myLast xs

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [_] = error "list too short"
myButLast [x, _] = x
myButLast (_ : xs) = myButLast xs

myButLast' :: [a] -> Maybe a
myButLast' = fst . foldl (\(x, y) z -> (y, Just z)) (Nothing, Nothing)

elementAt :: [a] -> Int -> a
elementAt [] _ = error "empty list"
elementAt (x : _) 1 = x
elementAt (_ : xs) n
  | n < 1 = error "index out of bounds"
  | otherwise = elementAt xs (n - 1)

elementAt' :: [a] -> Int -> a
elementAt' xs n
  | length xs < n = error "index out of bounds"
  | otherwise = fst . last $ zip xs [1 .. n]

myLength :: [a] -> Int
myLength list = myLengthAcc list 0
  where
    myLengthAcc [] n = n
    myLengthAcc (_ : xs) n = myLengthAcc xs (n + 1)

myLength' :: [a] -> Int
myLength' = foldl (const . (+ 1)) 0

myLength'' :: [a] -> Int
myLength'' = fst . last . zip [1 ..]

myLength''' :: [a] -> Int
myLength''' = sum . map (const 1)

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myReverse' :: [a] -> [a]
myReverse' list = myReverseAcc list []
  where
    myReverseAcc [] reversed = reversed
    myReverseAcc (x : xs') rev = myReverseAcc xs' (x : rev)

isPalindrome1 :: Eq a => [a] -> Bool
isPalindrome1 xs = xs == reverse xs

isPalindrome2 :: Eq a => [a] -> Bool
isPalindrome2 [] = True
isPalindrome2 [_] = True
isPalindrome2 xs = head xs == last xs && isPalindrome2 (init $ tail xs)

isPalindrome3 :: Eq a => [a] -> Bool
isPalindrome3 = reverse >>= (==)

isPalindrome4 :: Eq a => [a] -> Bool
isPalindrome4 list = p [] list list where
  p rev (x:xs) (_:_:ys) = p (x:rev) xs ys
  p rev (x:xs) [_] = rev == xs
  p rev xs [] = rev == xs

isPalindrome5 :: Eq a => [a] -> Bool
isPalindrome5 xs = and $ zipWith (==) xs (reverse xs)

data NestedList a = Elem a | List [NestedList a]

flatten1 :: NestedList a -> [a]
flatten1 (Elem x) = [x]
flatten1 (List xs) = concatMap flatten1 xs

flatten2 :: NestedList a -> [a]
flatten2 (Elem x) = [x]
flatten2 (List (x:xs)) = flatten2 x ++ flatten2 (List xs)
flatten2 (List []) = []

flatten3 :: NestedList a -> [a]
flatten3 = reverse . rec []
  where
    rec acc (List []) = acc
    rec acc (Elem x) = x:acc
    rec acc (List (x:xs)) = rec (rec acc x) (List xs)

compress1 :: Eq a => [a] -> [a]
compress1 = map head . group

compress2 :: Eq a => [a] -> [a]
compress2 (x:xs@(y:_))
  | x == y = compress2 xs
  | otherwise = x : compress2 xs
compress2 xs = xs

compress3 :: Eq a => [a] -> [a]
compress3 [] = []
compress3 (x:xs) = x : compress3 (dropWhile (== x) xs)

compress4 :: Eq a => [a] -> [a]
compress4 xs = foldr (\curr acc -> if head acc == curr then acc else curr:acc) [last xs] xs

pack1 :: Eq a => [a] -> [[a]]
pack1 [] = []
pack1 (x:xs) = let (first, rest) = span (==x) xs in
                (x : first) : pack1 rest

pack2 :: Eq a => [a] -> [[a]]
pack2 [] = []
pack2 (x:xs) = (x : reps) : pack2 rest where
  (reps, rest) = maybe (xs, []) (`splitAt` xs) (findIndex (/= x) xs)

pack3 :: Eq a => [a] -> [[a]]
pack3 [] = []
pack3 (x:xs) = (x : takeWhile (==x) xs) : pack3 (dropWhile (==x) xs)

encode1 :: Eq a => [a] -> [(Int, a)]
encode1 xs = map (\x -> (length x, head x)) $ group xs

