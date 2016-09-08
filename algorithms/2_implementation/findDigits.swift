let numberOfTests = Int(String(readLine()!))!
var tests = [Int]()
for i in 0.stride(to: numberOfTests, by: 1) {
    tests.append(Int(String(readLine()!))!)
}

for test in tests {
    var numberOfDivisions = 0
    let arr = Array(String(test).characters).map {Int(String($0))!}
    for num in arr {
        guard num != 0 else { continue }
        if test % num == 0 { numberOfDivisions += 1 }
    }
    print(numberOfDivisions)
}
