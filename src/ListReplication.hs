module ListReplication where

main :: IO ()
main = interact (format . listReplication . parse)
    where 
        parse :: String -> [Int]
        parse s = read <$> words s

        format :: [Int] -> String
        format ints = unlines $ show <$> ints

listReplication :: [Int] -> [Int]
listReplication [] = []
listReplication (n : l) = concat $ replicate n <$> l

