factorial n = if n == 0 then 1 else n * factorial(n-1)

factorial' 0 = 1
factorial' n = if n < 0 then error "arg must be >= 0" else n * factorial' (n - 1)

factorial'' 0 = 1
factorial'' n | n < 0 = error "arg must be >= 0"
              | n > 0 = n * factorial'' (n - 1)

factorial2 :: Integer -> Integer
factorial2 n | n == 0 = 1
             | n > 0 = n * factorial2 (n-1)
             | otherwise = error "arg must be >= 0"

doubleFactorial n = if n - 2 <= 0 then n else n * doubleFactorial(n - 2)
