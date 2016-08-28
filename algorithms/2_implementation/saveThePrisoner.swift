let tests = Int(String(readLine()!))!
var lines = [[Int]]()
for i in 0 ..< tests {
    lines.append(readLine()!.characters.split(" ").map {Int(String($0))!})
}

/**
  uses zero-based index
*/
func finalPrisoner(prisoners prisoners: Int, candies: Int, startingIndex: Int) -> Int {
  return (candies + startingIndex - 1) % prisoners
}

for i in 0 ..< tests {
    let (prisoners, candies, startingPrisoner) = (lines[i][0], line2[i][1], line2[i][2])
    print(finalPrisoner(prisoners: prisoners, candies: candies, startingIndex: startingPrisoner - 1) + 1)
}
