import System.IO

main :: IO ()
main = do
    handle <- openFile "words.rft" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle
    
