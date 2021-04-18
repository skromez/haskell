fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n | n > 0 = fibonacci(n - 1) + fibonacci(n - 2)
            | n < 0 = fibonacci(n + 2) - fibonacci(n + 1)


fibonacciWithHelper :: Integer -> Integer
fibonacciWithHelper 0 = 0
fibonacciWithHelper 1 = 1
fibonacciWithHelper n | n <= 0 = helperMinus 1 0 n
                      | n > 1 = helper 1 0 n

helper acc prev 0 = prev
helper acc prev next = helper prev (acc + prev) (next - 1)

helperMinus acc prev 0 = prev
helperMinus acc prev next = helperMinus prev (acc - prev) (next + 1)
