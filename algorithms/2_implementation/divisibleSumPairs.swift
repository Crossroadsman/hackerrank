// Algorithms
// Implementation
// Divisible Sum Pairs

// input:
// n k
// x x x x x x 
//
// where n is an Int representing the array size
// k is an Int representing the divisor
// xxxxx is the array (of Ints)

// output:
// m
//
// where m is an Int representing the number of (i, j) pairs
// such that (a[i] + a[j]) % k == 0

var arr = readLine()!.characters.split(" ").map {Int(String($0))!}
let (arraySize, divisor) = (arr[0], arr[1])

arr = readLine()!.characters.split(" ").map {Int(String($0))!}

var divisiblePairs: Int = 0

while arr.count >= 2 {

  let lastElement = arr.removeLast() // this syntax might change in Swift3, removedLast()?

  for element in arr {

    if (lastElement + element) % divisor == 0 {
      divisiblePairs += 1
    }
  
  }

}

print(divisiblePairs)
