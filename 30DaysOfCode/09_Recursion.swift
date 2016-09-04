func factorial(n n: Int) -> Int {

    if 1 == n {
        return n
    } else {
        return n * factorial(n: n - 1)
    }

}

let n = Int(String(readLine()!))!
print(factorial(n: n))
