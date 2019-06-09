-- rewriting our previous example with using readFile
import System.IO

main :: IO ()
main = do
    contents <- readFile "words.rtf"
    putStr contents