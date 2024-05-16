module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"


xs = [1,2,3,4]

-- Problem 1
myLast :: [a] -> a
myLast [] = error "No end for empty list"
myLast [x] = x
myLast (_:tail) =  myLast tail

-- Problem 2
penultimate :: [a] -> a
penultimate [] = error "No penultimate for empty list"
penultimate [x] = error "No penultimate for 1 lenght list"
penultimate [x,y] = x
penultimate (_:tail) = penultimate tail

-- Problem 3
at :: [a] -> Int -> Maybe a
at [] _ = Nothing
at (x:xs) n
  | n < 0     = Nothing
  | n == 0    = Just x
  | otherwise = at xs (n - 1)

-- Problem 4
myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (_:xs) = 1 +  myLength xs

-- Problem 5
-- myReverse :: [a] -> [] -> [a]















