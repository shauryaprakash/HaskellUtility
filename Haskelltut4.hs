import qualified Data.List as L

type Vehicle = [String]
type License = Int 

data Person = Person Vehicle License 
  deriving(Eq,Ord,Show)

--create a owner 
person1 :: Person
person1 = Person ["mercedes","mustang","farrari"] 198

--copying one data set to other
person2 :: Person
person2 = person1

data SSN = SSN{
               person :: Person ,
               address:: [String],
               account:: Int 
              }  
 deriving(Eq,Ord,Show)

ssn1::SSN
ssn1 = SSN {
    person=Person ["mercedes","mustang","farrari"] 198 ,
    address=["paratha","wali","gali"] ,
    account=111
}


--udating record syntax
ssn2::SSN
ssn2 = ssn1 {
    person=Person ["mercedes","mustang","farrari"] 199 ,
    address=["paratha","wali","gali"] ,
    account=112
}

--define the list of ssn
listOfSSN :: [SSN]
listOfSSN = [ SSN {
    person=Person ["mercedes","mustang","farrari"] 198 ,
    address=["paratha","wali","gali"] ,
    account=111
    },SSN {
    person=Person ["mercedes","mustang","farrari"] 199 ,
    address=["paratha","wali","gali"] ,
    account=112
} ]

--find a person in the list
findSSN ::Maybe SSN 
findSSN  = L.find (\ (SSN _ _ n)->n==111) listOfSSN
   



main = do 
       print(person2)
       print(person1)
       print(findSSN)