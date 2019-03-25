import System.Environment
import Control.Exception
import System.IO

main :: IO ()
main = catch main' noParse

main' = do contents <- getContents
           let cLines = lines contents
           printLines cLines

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