let num = Int(String(readLine()!))!

let str = String(num, radix: 2)

var currentOnes = 0
var maxOnes = 0
for char in str.characters {
    
    if "1" == char {
        currentOnes += 1
        if currentOnes > maxOnes {
            maxOnes = currentOnes
        }
    } else { // 0 == char
        currentOnes = 0
    }
}

print(maxOnes)
