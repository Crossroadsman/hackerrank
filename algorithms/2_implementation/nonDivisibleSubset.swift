//Algorithms
//Implementation
//Non-Divisble Subset

// input
// n k
// x x x x x
//
// where n is Int, number of items in Set
// k is Int, divisor
// x is Int, value in Set

// output
// m
// an Int being the size of the largest possible subset


// Note for any k, the sum of a + b is divisible by k if a%k + b%k == k || 0


//1. get input
var arr = readLine()!.characters.split(" ").map {Int(String($0))!}
let (numberOfItemsInSet, divisor) = (arr[0], arr[1])

arr = readLine()!.characters.split(" ").map {Int(String($0))!} // could use a Set, but unnecessary as we know the input is only distinct values and split creates an array anyway.


//2. Compute the number of items in the set with each remainder
var remainders = [Int](count: divisor, repeatedValue: 0)
for element in arr {

  let remainder = element % divisor
  remainders[remainder] += 1
  
}

//3. For each remainder value choose the higher count of it or its pair
// e.g., if divisor is 5 and we have 3 items with remainder 1 and 7
// items with remainder 4, we would pick the count of remainder 4 (7)

// handle special case of remainder = 0 
// (partners are itself, therefore the count is 1 (if there are any) or 0 (if none))
var maxSetSize = min(1, remainders[0])

for i in 1 ... max((divisor/2),1) {

    if divisor == 1 { break }

  // need to handle special case of remainder divisor/2
  // where if there are any, they can only contribute 1 to the count
  if (divisor % 2 == 0) && (i == divisor / 2) { 
    maxSetSize += min(1, remainders[divisor/2])
    continue
  }
  
  maxSetSize += max(remainders[i], remainders[divisor - i])

}

print(maxSetSize)
