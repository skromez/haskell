addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
addVectors (a1, b1) (a2, b2) = (a1 + a2, b1 + b2)

first :: (a, b, c) -> a
first (a, _, _) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

head' :: [a] -> a
head' (x:_) = x

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + (length' xs)

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

max' :: (Ord a) => a -> a -> a
max' a b
     | a > b = a
     | otherwise = b

compare' :: (Ord a) => a -> a -> Ordering
compare' a b
     | a > b = GT
     | a == b = EQ
     | otherwise = LT

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
     where (f:_) = firstname
           (l:_) = lastname

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where bmi weight height = weight / height ^ 2
