var arr = [[Int]]()
for i in 0 ..< 6 {
    let row = readLine()!.characters.split(" ").map {Int(String($0))!}
    arr.append(row)
}

/**
 Takes an i (outer array) and j (inner array) value
 and sums the contents of the 'hourglass' of elements
 with the top-left corner specified by i and j
 e.g., [
        [1, 1, 1, 0],
        [0, 1, 0, 0],
        [1, 1, 1, 0],
        [0, 0, 0, 0]
       ]
 shows an hourglass of 1s at (0, 0)
 */
func hourglassSum(arr arr: [[Int]], i: Int, j: Int) -> Int {
    // had to split up because xcode complained expression was too complex otherwise
    
    let row1 = arr[i][j] + arr[i][j + 1] + arr[i][j + 2]
    let row2 = arr[i + 1][j + 1]
    let row3a = arr[i + 2][j] + arr[i + 2][j + 1]
    let row3b = arr[i + 2][j + 2]
    
    return row1 + row2 + row3a + row3b
}

/* test array:
let arr = [
            [1, 1, 1, 0, 0, 0],
            [0, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 0],
            [0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0]
        ]
*/

var maxSum : Int?
//var runningTotal = 0
//print(arr.count)
for i in 0 ... arr.count - 3 {
    
    for j in 0 ... arr[i].count - 3 {
        //print("i: \(i), j: \(j)")

        let currentSum = hourglassSum(arr: arr, i: i, j: j)
        //print("currentSum: \(currentSum)")
        //print("previous maxSum: \(maxSum)")
        //runningTotal += currentSum
        if maxSum == nil { maxSum = currentSum }
        if currentSum > maxSum! { maxSum = currentSum }
        //print("new maxSum: \(maxSum!)")
    }
    
    
}

print (String(maxSum!))
