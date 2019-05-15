-- Applicative IO

{- This is an IO actio that will prompt the user fot two lines
   and yield as its result those two lines concatenated. -}
myAction :: IO String
myAction = do
    a <- getLine
    b <- getLine
    return $ a ++ b

-- Writing the same function with applicative style
myAction' :: IO String
myAction' = (++) <$> getLine <*> getLine

promptApp :: IO ()
promptApp = do
    a <- (++) <$> getLine <*> getLine
    putStrLn $ "The two lines concatenated turn out to be: " ++ a

