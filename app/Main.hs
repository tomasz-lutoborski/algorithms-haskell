{-# LANGUAGE UndecidableInstances #-}

module Main where

import Prelude hiding (break, dropWhile, pred, sequenceA, span)
-- import qualified NinetyNine.OneToTen as OneToTen
import qualified NinetyNine.ToTwenty as ToTwenty

main :: IO ()
main = do
  -- print (OneToTen.myLast [1, 2, 3, 4, 5])
  -- print (OneToTen.myButLast [1, 2, 3, 4, 5])
  -- print (OneToTen.myButLast' [1, 2, 3, 4, 5])
  -- print (OneToTen.elementAt [1, 2, 3, 4, 5] 3)
  -- print (OneToTen.elementAt' [1, 2, 3, 4, 5] 3)
  -- print (OneToTen.myLength [1, 2, 3, 4, 5])
  -- print (OneToTen.myLength' [1, 2, 3, 4, 5])
  -- print (OneToTen.myLength'' [1, 2, 3, 4, 5])
  -- print (OneToTen.myLength''' [1, 2, 3, 4, 5])
  -- print (OneToTen.myReverse [1, 2, 3, 4, 5])
  -- print (OneToTen.myReverse' [1, 2, 3, 4, 5])
  -- print (OneToTen.isPalindrome1 [1, 2, 3, 4, 5])
  -- print (OneToTen.isPalindrome1 [1, 2, 3, 2, 1])
  -- print (OneToTen.isPalindrome2 [1, 2, 3, 4, 5])
  -- print (OneToTen.isPalindrome2 [1, 2, 3, 2, 1])
  -- print (OneToTen.isPalindrome3 [1, 2, 3, 4, 5])
  -- print (OneToTen.isPalindrome3 [1, 2, 3, 2, 1])
  -- print (OneToTen.isPalindrome4 [1, 2, 3, 4, 5])
  -- print (OneToTen.isPalindrome4 [1, 2, 3, 2, 1])
  -- print (OneToTen.isPalindrome5 [1, 2, 3, 4, 5])
  -- print (OneToTen.isPalindrome5 [1, 2, 3, 2, 1])
  -- print (OneToTen.flatten1 (OneToTen.List [OneToTen.Elem 1, OneToTen.List [OneToTen.Elem 2, OneToTen.List [OneToTen.Elem 3, OneToTen.Elem 4], OneToTen.Elem 5]]))
  -- print (OneToTen.flatten2 (OneToTen.List [OneToTen.Elem 1, OneToTen.List [OneToTen.Elem 2, OneToTen.List [OneToTen.Elem 3, OneToTen.Elem 4], OneToTen.Elem 5]]))
  -- print (OneToTen.flatten3 (OneToTen.List [OneToTen.Elem 1, OneToTen.List [OneToTen.Elem 2, OneToTen.List [OneToTen.Elem 3, OneToTen.Elem 4], OneToTen.Elem 5]]))
  -- print (OneToTen.compress1 [1, 1, 2, 3, 3, 4, 5, 5, 5])
  -- print (OneToTen.compress2 [1, 1, 2, 3, 3, 4, 5, 5, 5])
  -- print (OneToTen.compress3 [1, 1, 2, 3, 3, 4, 5, 5, 5])
  -- print (OneToTen.compress4 [1, 1, 2, 3, 3, 4, 5, 5, 5])
  print (ToTwenty.encode1 "aaaabccaadeeee")
  
  
