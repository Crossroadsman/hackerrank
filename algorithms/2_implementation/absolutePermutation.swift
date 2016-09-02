let testCases = Int(String(readLine()!))!

/*

In a given sequence from 1 to n
What are all the ways to arrange the numbers in the sequence such that abs(i - pos_i) = k?

A natural number can potentially be combined with another natural number in two ways to make the absolute difference equal a third particular natural number.
e.g., abs(6 - x) = 5 can be achieved as abs(6 - 1) or abs(6 - 11)

Note, only numbers > k can be achieved in two ways, numbers <= k can only be achieved one way
e.g., abs(1 - x) = 5 can only be achieved as abs(1 - 6).

Note, if k is in the range (and it always will be for this test), it is impossible unless N >= 2k
(since the one way to get abs(k - pos_k) = k is for pos_k to be 2k.
*/

func absolutePermutation(n n: Int, k: Int) -> [Int] {
  
  guard k != 0 else { return Array(1 ... n) }
  guard n >= 2 * k else { return [-1] }
  guard n % 2 == 0 else { return [-1] }
  guard (n / k) % 2 == 0 else { return [-1] }
  
  // do the work here
  var output = [Int]()
  let cycles = n / (2 * k)
  for i in 1.stride(through: cycles, by: 1) {
    // any slot can only be i - k or i + k
    // for 1 ... (k - 1), this can only be i + k (i < k so need to go back through zero to get to -ve)
    // for (n - k) ... n, this can only i - k (i > k so there is no i value large enough to go back through zero)
    
    for j in 1.stride(through: k, by: 1) {
      let v = (2 * k * i) - (2 * k) + j
      output.append(v + k)
    }
    for j in 1.stride(through: k, by: 1) {
      let v = (2 * k * i) - k + j
      output.append(v - k)
    }
    
  }
  return output
}

func renderOutput(input: [Int]) -> String {
  
  guard input != [-1] else { return "-1" }
  
  return input.map({String($0)}).joinWithSeparator(" ")
}

for i in 0.stride(to: testCases, by: 1) {
    let line = readLine()!.characters.split(" ").map { Int(String($0))! }
    let (n, k) = (line[0], line[1])
    
    /*print(line)
    print(n)
    print(k)*/
    
    print(renderOutput(absolutePermutation(n: n, k: k)))
}
