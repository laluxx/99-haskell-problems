module Main where

main :: IO ()
main = putStrLn "Hello, Haskell!"


xs = [1,2,3,4]
cs = "ciao!"

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
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


word = "wow"

-- Problem 6
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == myReverse xs

cword = "aabccdd"

-- Problem 8
compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs) = x : compress (dropWhile (== x) xs)

-- Problem 9
pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = let (first, rest) = span (== x) xs
              in (x:first) : pack rest

-- Problem 10
encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\ys -> (length ys, head ys)) (pack xs)












