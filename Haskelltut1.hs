main = do 
 print (movieReport ("The Matrix",4))
 print (getRatings[ ("The Matrix1",4),("Lor1",5),("The Matrix2",4),("Lor2",5),("The Matrix3",4),("Lor3",5)])


isGood ::Char->Bool
isGood x = x <= 'M'


movieReport :: (String,Int) ->String 
movieReport (movie , x) 
                     | x >= 4 && x <= 5 =  movie ++ " is SuperHit"
                     | x >= 3 && x <= 4 =  movie ++ " is Hit"
                     | x >= 2 && x <= 3 =  movie ++ " is Average"
                     | x >= 1 && x <= 2 =  movie ++ " is Flop"

getRatings :: [(String,Int)] ->[String]
getRatings (x:xs)= [movieReport(x)] ++ getRatings xs
getRatings [] = []