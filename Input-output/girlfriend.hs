import System.IO

main :: IO ()
main = do
    handle <- openFile "words.rtf" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle

