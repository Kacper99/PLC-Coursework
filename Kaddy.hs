import Tokens
import Grammar
import Evals
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do fileName <- getLine 
           sourceText <- readFile fileName
           putStrLn ("Parsing : " ++ sourceText)
           let sourceTokens = alexScanTokens sourceText
           -- putStrLn ("Tokens: " ++ (show sourceTokens))
           let parsedProg = parseCalc sourceTokens
           putStrLn ("Parsed as " ++ (show parsedProg) ++ "\n")
           let result = evalLoop (parsedProg)
           putStrLn ("Evaluates to " ++ (show result) ++ "\n")

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()


