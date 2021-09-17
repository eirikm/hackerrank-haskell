module SolveMeFirst where

solveMeFirst :: IO () 
solveMeFirst = interact (show . solveMeFirst')


solveMeFirst' :: String -> Int
solveMeFirst' input = do
    let parsedInts = fmap (read @Int) (words input)
    sum parsedInts
