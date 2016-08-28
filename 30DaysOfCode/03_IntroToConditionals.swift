
let n = Int(String(readLine()!))!

func isWeird(n: Int) -> Bool {
    // if n is odd, it is weird
    if n % 2 != 0 { return true }
    
    // if n even and 6 ... 20, weird
    if n >= 6 && n <= 20 { return true }
    
    return false

}

if isWeird(n) { print("Weird") } else { print ("Not Weird")}
