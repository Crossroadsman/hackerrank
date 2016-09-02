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
  
  guard n >= 2 * k else { return [-1] }
  
  // do the work here

}

func renderOutput(input: [Int)) -> String {
  
  guard input != [-1] else { return "-1" }
  
  return input.joinWithSeparator(" ")
}

print(renderOutput(absolutePermutation(n: n, k: k)))
