import Tokens
import Grammar
import Evals
import System.Environment
import Control.Exception
import System.IO
import Data.List

main :: IO ()
main = catch main' printError

main' = do (filename : _) <- getArgs
           sourceText <- readFile filename
           let sourceTokens = alexScanTokens sourceText
           let parsedProg = parseCalc sourceTokens
           contents <- getContents
           let cLines = lines contents
           parseProgram cLines parsedProg []

printError :: ErrorCall -> IO ()
printError e = do let err =  show e
                  hPutStr stderr err
                  return ()

parseProgram :: [String] -> [Expr] -> Environment -> IO ()
parseProgram [] _ _ = do return ()
parseProgram (l:ls) prog env = do let (e, newEnv) = beginLoop prog env l
                                  hPutStr stdout (printOut e) -- TODO: Add a toString function here
                                  parseProgram ls prog newEnv
                             
printOut :: Expr -> String
printOut (TmInt n) = (show n) ++ "\n"
printOut (TmList l) = "[" ++ intercalate ", " (map (\(TmInt n) -> (show n)) l) ++ "]\n" 
printOut (TmOut ls) = intercalate " " (map printOut' ls) ++ "\n"
printOut (TmOutList (TmList ls)) = intercalate "\n" (map (\(TmInt n) -> (show n)) ls) ++ "\n"
printOut l = show l

printOut' :: Expr -> String
printOut' (TmInt n) = (show n)
printOut' (TmList l) = "[" ++ intercalate ", " (map (\(TmInt n) -> (show n)) l) ++ "]"
printOut' (TmOut ls) = intercalate " " (map printOut' ls) ++ "\n"
printOut' l = show l