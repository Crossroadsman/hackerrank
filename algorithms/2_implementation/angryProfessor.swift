//Algorithms
//Implementation
//Angry Professor

// input
// t
// n k
// x x x x x
//
// where n is Int number of students in class
// k is Int, cancellation threshold (the minimum number who must be <= 0)
// x is Int, arrival times (negative is before class, positive after start)

// output
// YES / NO (yes = cancelled)
let tests = Int(String(readLine()!))!

var testsRemaining = tests

while testsRemaining > 0 {

  var arr = readLine()!.characters.split(" ").map {Int(String($0))!}
  let (classSize, threshold) = (arr[0], arr[1])
  arr = readLine()!.characters.split(" ").map {Int(String($0))!}
  let onTime = arr.filter { $0 <= 0}

  var output: String

  if onTime.count >= threshold { output = "NO" }
  else { output = "YES" }

  print(output)

  testsRemaining -= 1
}
