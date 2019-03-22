import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do (a : b ) <- getArgs 
           contents <- getContents
           hPutStr stdout (show contents)
           putStrLn (show a)
           putStrLn (show b)
           putStrLn (show contents)

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()


