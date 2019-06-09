import Data.Char
import Data.List

reverseLine :: IO ()
reverseLine = do
    line <- getLine
    let line' = reverse line
    putStrLn $ "You said " ++ line' ++ " backwards!"
    putStrLn $ "Yes, you really said " ++ line' ++ " backwards!"

fmapreverseLine :: IO ()
fmapreverseLine = do
    line <- fmap reverse getLine
    putStrLn $ "You said " ++ line ++ " backwards!"
    putStrLn $ "Yes, you really said " ++ line ++ " backwards!"

fmapIO :: IO ()
fmapIO = do
    line <- fmap (intersperse '-' . reverse . map toUpper) getLine
    putStrLn line

data CMaybe a = CNothing | CJust Int a deriving (Show)

instance Functor CMaybe where
    fmap _ CNothing = CNothing
    fmap f (CJust counter x) = CJust (counter + 1) (f x)

