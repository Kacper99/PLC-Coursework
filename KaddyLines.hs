import Tokens
import Grammar
import Evals
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do (progFile : _) <- getArgs -- Read in the program
           programText <- readFile progFile
           let sourceTokens = alexScankTokens programText
           let parsedProg = parseCalc sourceTokens -- Parsed program
           inputStream <- getContents -- Read in the input stream
           let cLines = lines inputStream -- Split the stream into lines
           evalInput cLines parsedProg 
           hPutStr stdout "End"
        

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()

evalInput :: [String] -> [Expr] -> Enviroment -> IO ()
evalInput ((l:[]), prog, env) = hPutStr stdout result
                              where result = evLoop

