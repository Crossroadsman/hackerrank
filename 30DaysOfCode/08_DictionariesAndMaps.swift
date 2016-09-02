// Enter your code here. Read input from STDIN. Print output to STDOUT
let bookSize = Int(String(readLine()!))!
var phoneBook: [String : Int] = [:]
for i in 0.stride(to: bookSize, by: 1) {
    let line = readLine()!.characters.split(" ").map { String($0) }
    phoneBook[line[0]] = Int(line[1])
}

while true {
    let line = readLine()
    guard line != nil else { break }
    guard phoneBook[line!] != nil else { print("Not found"); continue}
    print ("\(line!)=\(phoneBook[line!]!)")
}
