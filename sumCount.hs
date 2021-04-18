-- Реализуйте функцию, находящую сумму и количество цифр десятичной записи заданного целого числа.
-- GHCi> sum'n'count (-39)
--(12,2)
sumCount :: Integer -> (Integer, Integer)
sumCount 0 = (0,1)
sumCount x = (sum, count)
    where
        positiveX = abs x
        sum = sumd positiveX
        count = counter 0 positiveX

        sumd 0 = 0
        sumd x = (x `mod` 10) + sumd (x `div` 10)

        counter acc 0 = acc
        counter acc n = counter (acc + 1) (n `div` 10)
