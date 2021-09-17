module FilterPositionsInAList where

-- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem

main :: IO ()
main = interact (format . filterPositionsInAList . parse)
    where 
        parse = fmap read . words
        format = unlines . fmap show

filterPositionsInAList :: [Int] -> [Int]
filterPositionsInAList ints = 
    odd ints
    where
        odd [] = []
        odd (h : t) = even t

        even [] = []
        even (h : t) = h : odd t

