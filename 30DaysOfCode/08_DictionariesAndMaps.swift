// Enter your code here. Read input from STDIN. Print output to STDOUT
let testCases = Int(String(readLine()!))!
var phoneBook: [String : Int] = [:]
for i in 0.stride(to: testCases, by: 1) {
    let line = readLine()!.characters.split(" ").map { String($0) }
    phoneBook[line[0]] = Int(line[1])
}

for i in 0.stride(to: testCases, by: 1) {
    let line = String(readLine()!)
    guard phoneBook[line] != nil else { print("Not found"); continue}
    print ("\(line)=\(phoneBook[line]!)")
}
