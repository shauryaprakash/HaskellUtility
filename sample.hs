main = do 
    print (myLastButOne "github")
    

--last element
myLast :: [a] -> a 
myLast = head.reverse

--last but one element in list
myLastButOne :: [a] -> a
myLastButOne = head.tail.reverse

--kth element in the list
myKthElement :: [a] -> Int -> a
myKthElement list num= 
                if num == 1 then 
                    head list
                else myKthElement  (tail list) (num-1)

--length of list
numberOfElement :: [a] -> Int 
numberOfElement = length

--length of list
numberOfElement1:: [a] -> Int 
numberOfElement1  (x:xs) = 1+ numberOfElement1 xs
numberOfElement1 _ = 0