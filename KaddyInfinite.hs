import Tokens
import Grammar
import Evals
import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do (filename : _) <- getArgs
           sourceText <- readFile filename
           let sourceTokens = alexScanTokens sourceText
           let parsedProg = parseCalc sourceTokens
           contents <- getContents
           let cLines = lines contents
           parseProgram cLines parsedProg []

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()

printLines :: [String] -> IO ()
printLines (s:[]) = do let n = (read s :: Int) * 3
                       hPutStr stdout (show n)
printLines (s:ss) = do let n = (read s :: Int) * 3
                       hPutStr stdout (show n)
                       printLines ss

parseProgram :: [String] -> [Expr] -> Environment -> IO ()
parseProgram [] _ _ = do return ()
parseProgram (l:ls) prog env = do let (e, newEnv) = evalLoop prog env l
                                  hPutStr stdout ((show e) ++ "\n") -- TODO: Add a toString function here
                                  parseProgram ls prog newEnv
                             