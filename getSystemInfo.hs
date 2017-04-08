import System.Info
import System.Environment
import System.Directory
import System.IO

main = do
    argumentTracer 
    getDiretory
    getSystemInfo
    showFileContent
    fileHandleMonad
  
    

getSystemInfo = do
                 putStrLn  $ "------System info ended--------" 
                 putStrLn  $ "Your operating system is : " ++ os
                 putStrLn  $ "Your compiler name is :" ++ compilerName
                 putStrLn  $ "Your processor architecture is : " ++ arch
                 putStrLn  $ "------System info ended--------"

argumentTracer = do 
                 putStrLn "------Argument info ended--------"
                 getArgs >>= print
                 putStrLn "------Argument info ended--------"
                 
                 
getDiretory  = do 
                 putStrLn "------directory info starts--------"
                 getCurrentDirectory >>= print 
                 getHomeDirectory >>= print      
                 getUserDocumentsDirectory>>=print
                 putStrLn "------directory info ended--------"

-- :t readFile means readFile :: FilePath -> IO String
-- :t putStrLn :: String -> IO 
--              
showFileContent = do 
                 putStrLn "-------contents starts here-------"
                 readFile "aa.txt" >>= putStr
                 
---list length evaluator 

lengthEvaluator :: [a]->Int
lengthEvaluator str= length str 

---find the first duplicate element in list

firstDuplicateFinder :: Eq a=>[a]->[a]
firstDuplicateFinder (x:xs) =
     if x== head(xs) 
         then x:[] 
      else 
           firstDuplicateFinder xs 
                 putStrLn "-------contents ends here-------"
                 
fileHandleMonad = do 
                   content<- (openFile "aa.txt" ReadMode >>= hGetContents)
                   putStr content
                 
