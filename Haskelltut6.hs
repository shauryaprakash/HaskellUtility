import Data.List
import Data.Char
--There are four major functions in haskell  module Data.String
--words / unwords / lines / unlines 
--correctly chaining them together is important

--1.
--transitive dependency says a-> b and b->c then a->c .\, similar concept is applied here
--words :: String -> [String] and unlines ::[String] -> String which means unlines.words ::String->String  

--2.words :: String -> [String] and unwords :: [String]->String
--unwords.words :: String->String

main = do  
           --1.
           print(words "hello world")
           print(unlines ["hello","world"])
           print((unlines.words) "hello world")
           --error = print(unlines.words "hello world") put chained functions in braces

           --2.
           print(unwords ["hello","world"] )
           print((unwords.words) "hello world" )
           --error = print(unwords.words "hello world" )  put chained functions in braces
          

