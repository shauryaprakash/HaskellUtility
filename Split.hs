import Data.List
import System.IO

main = do 
     putStrLn $ show(split ':' "aa:aa" )
     
split :: Eq a=> a-> [a]->[[a]]
split _ []= [[]]
split symbol str = 
     let  (segment1,segment2) = span (/= symbol) str 
         in 
         segment1: case segment2 of
                         [] -> [] 
                         c-> split symbol (tail c )                  