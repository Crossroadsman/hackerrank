let testCases = Int(String(readLine()!))!

var testArray = [[Character]]()
for i in 0.stride(to: testCases, by: 1) {
    testArray.append([Character](readLine()!.characters))
}


for i in 0.stride(to: testArray.count, by: 1) {
    var evens = [Character]()
    var odds = [Character]()

    for j in 0.stride(to: testArray[i].count, by: 1) {
        if j % 2 == 0 { 
            evens.append(testArray[i][j])
        } else {
            odds.append(testArray[i][j])
        }
    }
    print("\(String(evens)) \(String(odds))")
}
