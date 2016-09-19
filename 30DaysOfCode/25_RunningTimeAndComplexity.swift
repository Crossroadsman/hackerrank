import Darwin

let n = Int(String(readLine()!))!

var primesList = [2]

func isPrime(candidate: Int) -> Bool {

    if primesList.contains(candidate) { return true }
    //if sqrt(candidate) < primesList.last! { return false }
    
    guard candidate > 2 else { return false }
    if candidate % 2 == 0 { return false }
    
    for i in 3.stride(to: Int(sqrt(Double(candidate))), by: 2) {
        if candidate % i == 0 { return false }
    }
    
    primesList.append(candidate)
    return true

}

for _ in 0.stride(to: n, by: 1) {
    let t = Int(String(readLine()!))!
    if isPrime(t) { print ("Prime")}
    else { print("Not prime") }
}
