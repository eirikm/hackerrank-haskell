module HelloWorldNTimes where

main :: IO ()
main = interact (helloWorldNTimes . parse)

parse :: String -> Int
parse = read


helloWorldNTimes :: Int -> String 
helloWorldNTimes times = 
    unlines $ replicate times "Hello World"