// number of elements
var n = Int(readLine()!)!

// read array
var arr = readLine()!.characters.split(" ").map(String.init)

// iterate over the array in reverse order and print the elements separated by space
// Enter your code here. Read input from STDIN. Print output to STDOUT
let rArr = Array(arr.reverse())
print (rArr.joinWithSeparator(" "))
