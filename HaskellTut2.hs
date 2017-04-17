data CatBreed = Indian|African|Egyptian
                 deriving(Eq,Ord,Show)

type CatAge = Int
type CatHome = String

data Cat = Cat CatBreed CatAge CatHome

type Address= String 
type Age = Int

data Human = Human Cat Age Address

showCatAge :: Cat -> Int
showCatAge (Cat _  age  _) 
                    | age == 2 = 2
                    | age == 3 = 3
                    | otherwise = 100

showHuman :: Human -> String 
showHuman (Human _ age address)
             |  age < 10 && age>0 = "kid"
             |  age >= 10 = "young scientist" 
             |  age >25 = "scientist"
             |  otherwise = "Einstein"

getCatFromHuman :: Human -> Cat 
getCatFromHuman (Human c _ _ ) = c

getCatAge :: Cat -> Age
getCatAge (Cat _ age _) = age

getHumanCatAge :: Human -> Int 
getHumanCatAge = showCatAge.getCatFromHuman


catShoW :: [Human]
catShoW =[Human (Cat Indian 12 "")   10 "" ,
          Human (Cat African 12 "")  20 "" ,
          Human (Cat Egyptian 12 "") 30 ""  ]

showParticipant :: [Human] -> [String]
showParticipant = map showHuman 

showCatBreeds :: Human -> CatBreed
showCatBreeds ( Human (Cat catbreed _ _) _  _ ) = catbreed

showCatBrredName :: CatBreed -> String
showCatBrredName c
            |c== Indian = "Indian"
            |c== Egyptian ="Egyptian"
            |c== African ="African"
            |otherwise ="Unknow"

showParticipantCats:: Human -> String
showParticipantCats = showCatBrredName.showCatBreeds


main = print( map showParticipantCats catShoW )
     
        