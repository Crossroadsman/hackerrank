import Darwin

func listAnds(to n: Int) -> [Int] {
    
    var ands = [Int]()
    
    for i in 0.stride(to: n - 1, by: 1) {
        for j in 1.stride(to: n, by: 1) {
            let a = i & j
            if ands.contains(a) { continue }
            ands.append(a)
        }
    }
    
    return ands
}

let t = Int(String(readLine()!))!

for _ in 0.stride(to: t, by: 1) {
    let line = readLine()!.characters.split(" ").map { Int(String($0))! }
    let (n, k) = (line[0], line[1])
    
    print(listAnds(to: n).filter({$0 < k}).maxElement()!) // just .max() in Swift 3
    
}
