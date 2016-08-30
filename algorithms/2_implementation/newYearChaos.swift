let testCases = Int(String(readLine()!))!

for testCase in 0.stride(to: testCases, by: 1) {

    let lineLength = Int(String(readLine()!))!
    let line = readLine()!.characters.split(" ").map { Int(String($0))! }
    
    var testArray = [Int]()
    var isImpossible: Bool = false
    
    for i in 1.stride(through: lineLength, by: 1) {
        let diff = line[i - 1] - i
        
        /* debug
        print("i: \(i), line[i - 1]: \(line[i - 1])")
        print("therefore diff = \(diff)")
        */
        
        if diff > 2 {
            isImpossible = true
            break
        }
        testArray.append(line[i - 1] - i)
    }
    
    guard !isImpossible else {
        print("Too chaotic")
        continue
    }
    
    print(testArray.filter({$0 > 0}).reduce(0, combine: {$0 + $1}))
       
}
