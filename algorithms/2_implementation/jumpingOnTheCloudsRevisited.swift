// Enter your code here
let line1 = readLine()!.characters.split(" ").map {Int(String($0))!}
let (numberOfClouds, jumpDistance) = (line1[0], line1[1])

let cloudArray = readLine()!.characters.split(" ").map {Int(String($0))!}

// we know that n % k == 0 therefore we know the total number of jumps will be n / k
// each jump that lands on a cloud will cost 3, every other jump costs 1
let numberOfJumps = numberOfClouds / jumpDistance
//print("number of jumps: \(numberOfJumps)")

// jumper will land on every kth element in the array
var thunderCost = 0
for i in 0.stride(to: cloudArray.count, by: jumpDistance) {
    
    if cloudArray[i] % jumpDistance != 0 {thunderCost += 2}
    //print("i: \(i)")
    //print("thunderCost: \(thunderCost)")

}

print(100 - (thunderCost + numberOfJumps))
