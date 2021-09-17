module FilterArray where

-- https://www.hackerrank.com/challenges/fp-filter-array/problem

main :: IO ()
main = interact (format . filterArray . parse)
    where
        format :: [Int] -> String 
        format ints = unlines $ show <$> ints

        parse :: String -> (Int, [Int])
        parse s = do
            let ints = read <$> words s
            (head ints, tail ints)

filterArray :: (Int, [Int]) -> [Int]
filterArray (x, bs) = filter (< x) bs