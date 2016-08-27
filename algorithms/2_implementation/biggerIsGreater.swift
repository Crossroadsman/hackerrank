//get input
let numberOfTestCases = Int(String(readLine()!))!
var testArray: [String] = []
for i in 1 ... numberOfTestCases {
  testArray.append(readLine()!)
}

func lexicographicalPermutation(input: String) -> String {
    // Next lexicographical permutation algorithm:
    // (see: https://www.nayuki.io/page/next-lexicographical-permutation-algorithm)
    
    // 0: start with the initial sequence
    // if 1 character then trivially already at max
    if input.characters.count == 1 { return "no answer"}
    
 /**
 checks an array of Characters to determine the pivot point (i.e., the first position in the array from the right that decreases its neighbour).
 e.g., in ["a", "b", "d", "c"] it would be "b" as it is the first character, looking from the right, that is less than the character checked before it.
 
 - parameter arr: array of type [Character] to check for pivot point
 - returns: Int? pivot found or nil if none found
 */
    func findPivot(arr arr: [Character]) -> Int? {
        var i = arr.count - 1
        while i >= 1 {
            if arr[i] > arr[i - 1] { return (i - 1) }
            i -= 1
        }
 
        return nil
    }
    
    /**
     takes an array of Characters and a pivot(p) and returns the rightmost index in the array after the pivot that is lexicographically higher than p
     */
    func rightmostSuccessor(arr arr: [Character], p: Int) -> Int {
        var i = p + 1
        while i < arr.count {
            if arr[i] <= arr[p] {return i-1}
            i += 1
        }
        return i - 1
    }
 
    var inputArray = Array(input.characters)
        // 1: find the longest "non-increasing suffix"
        // (i.e., the longest sequence of characters from the right where the next character is >= the current character)
        // (e.g., for 0125330, the longest such sequence is 5330)
        // note: if this is the entire sequence, then the entire sequence is already at max
    
    
    
        // 2: identify the pivot
        // (this is the next left character to the longest non-increasing suffix)
        // (e.g., for 0125330, it is 2)
    guard let pivot = findPivot(arr: inputArray) else {
        return "no answer"
    }
    
        // 3: find the rightmost successor to pivot
        // (e.g., for 0125330, it is the rightmost 3)
    let rs = rightmostSuccessor(arr: inputArray, p: pivot)
    
        // 4: switch pivot and successor
        // (e.g., for 0125330, it becomes 0135320)
    let pValue = inputArray[pivot]
    let rsValue = inputArray[rs]
    inputArray[pivot] = rsValue
    inputArray[rs] = pValue
    
    let head = inputArray.prefix(pivot + 1)
    var tail = Array(inputArray.suffixFrom(pivot + 1)) // this is the longest non-increasing suffix
    
        // 5: reverse the suffix
        // (e.g., for 0125330, which becamse 0135320, the reversal becomes 0130235)
    
    tail = tail.reverse()
        // Done!
    //Debug info:
    /*
    print("input: \(input)")  
    print("pivot: \(pivot)")
    print("rightmost successor: \(rs)")
    print("inputArray: \(inputArray)")
    print("head: \(head)")
    print("tail: \(tail)")
    */
    return String(head + tail)
}

for element in testArray {
  print (lexicographicalPermutation(element))
}
