import System.Environment
import Control.Exception
import System.IO
import Data.List.Split

main :: IO ()
main = catch main' noParse

main' = do contents <- getContents
           let cLines = lines contents
           hPutStr stdout (head cLines)

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()
