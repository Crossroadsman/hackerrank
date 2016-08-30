let testCases = Int(String(readLine()!))!

for testCase in 0.stride(to: testCases, by: 1) {

    let lineLength = Int(String(readLine()!))!
    let line = readLine()!.characters.split(" ").map { Int(String($0))! }
    
    var isImpossible: Bool = false
    var highestRemainingValue = lineLength
    var bribes = 0
    
    for i in lineLength.stride(through: 1, by: -1) {
        let diff = line[i - 1] - i
        
        /* debug
        print("i: \(i), line[i - 1]: \(line[i - 1])")
        print("therefore diff = \(diff)")
        */
        
        if diff > 2 {
            isImpossible = true
            break
        }
        
        if line[i - 1] >= highestRemainingValue {
            highestRemainingValue -= 1
            continue
        }
        
        for j in (i - 1).stride(through: 1, by: -1) {
            if line[j - 1] > line[i - 1] {
                bribes += 1
            }
        }
        
        
        highestRemainingValue -= 1
    }
    
    guard !isImpossible else {
        print("Too chaotic")
        continue
    }
    
    print(bribes)
       
}
