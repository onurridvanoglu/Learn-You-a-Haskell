-- An example of writeFile
-- turning words.rtf into capslocked version with writeFile
import System.IO
import Data.Char

main :: IO ()
main = do
    contents <- readFile "words.rtf"
    appendFile "words.rtf" (map toUpper contents)