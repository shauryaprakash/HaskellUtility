import Data.List
import Control.Monad

import Data.Char
data JValue = JString String
            | JInt    Int
            | JBool   Bool
            | JArray [JValue]
            | Null
            | JDouble Double
            | JObject [(String,JValue)]
             deriving(Eq,Ord,Show)


getString:: JValue-> Maybe String
getString ( JString s) = Just s
getString _            = Nothing


getInteger :: JValue -> Maybe Int
getInteger (JInt s)    = Just s
getInteger _           = Nothing 


getBool:: JValue-> Maybe Bool
getBool ( JBool s)   = Just s
getBool _            = Nothing

getDouble :: JValue -> Maybe Double
getDouble (JDouble s) = Just s
getDouble _           = Nothing 

renderValue :: JValue -> String 
renderValue (JString s) = show s 
renderValue (JDouble d) = show d 
renderValue (JInt s )    = show s 
renderValue (JBool b)   = show b 
renderValue (JObject a) = "{"++ display a ++"}"
   where display [] =  "" 
         display os  = intercalate "," (map showTuple os)
         showTuple (k,v) = show k ++ ":" ++ renderValue v 

renderArray :: [JValue] -> String 
renderArray a = "["++ displayArrayUnit a ++"]"
    where 
         displayArrayUnit [] = ""
         displayArrayUnit xs = intercalate "," (map renderValue xs)

--intercalate xs xss is equivalent to (concat (intersperse xs xss)). It inserts the list xs in between the lists in xss and concatenates the result.
--intersperse ',' "jackal" == "j,a,c,k,a,l"
-- concat ["j,a,c,k,a,l", "j,a,c,k,a,l"] ==  "j,a,c,k,a,lj,a,c,k,a,l"

 


main = do 
         print( [(JString "TheGreatExpections")] >>= renderValue)
         print(Just( JString ([(JString "TheGreatExpections")] >>= renderValue)) >>= getString)
         --print( getBool (JString "TheGreatExpections"))
         --print( renderValue (JObject [ ("hey",(JString "TheGreatExpections"))]))
         --print( getDouble (JString "TheGreatExpections"))
         --print(renderArray([JObject [ ("hey",(JString "TheGreatExpections"))]]))
