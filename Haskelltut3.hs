import Data.List as L 

type Topic = String
type Curriculum = String

data Course = Course Topic Curriculum
              deriving (Eq,Ord,Show)

topics::[Topic]
topics = ["maths","science","arts"]

courses ::[Course] 
courses=[(Course "maths" ""),(Course "science" ""),(Course "arts" "")]

getTopic :: Course -> Topic
getTopic (Course topic _ ) = topic

isTopicMaths :: Topic -> Bool
isTopicMaths topic
       | topic=="maths" = True
       | topic=="science"= True
       | topic=="arts"   = False
       | otherwise = False


main = do 
       print (isTopicMaths "arts")
       print (isTopicMaths(getTopic (Course "topic" "")))
       print (map isTopicMaths topics )
       print ( map isTopicMaths (map getTopic courses) )
