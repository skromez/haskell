const fibonacci = (n) => {
    if (n === 0) return 0
    if (n === 1) return 1
    let acc = 1
    let prev = 0
    let temp
    while (n > 1) {
        temp = acc;
        acc = prev + acc;
        prev = temp;
        n--;
    }
    return acc
}

const fibonacciSlow = (n) => {
    if (n === 0) return 0
    if (n === 1) return 1
    return fibonacciSlow(n-1) + fibonacciSlow(n-2)
}

const result = fibonacci(41)
const resultSlow = fibonacciSlow(41)
console.log(result)
console.log(resultSlow)
