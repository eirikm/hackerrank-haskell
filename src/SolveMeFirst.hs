{-# LANGUAGE ScopedTypeVariables #-}

-- https://www.hackerrank.com/challenges/fp-solve-me-first/problem

module SolveMeFirst where

main :: IO () 
main = interact (show . solveMeFirst)

solveMeFirst :: String -> Int
solveMeFirst input = do
        let parsedInts :: [Int] = read <$> (words input)
        sum parsedInts
