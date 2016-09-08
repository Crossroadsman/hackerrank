// option 1
// n(n + 1) / 2

// var end of test range = r (decrement r anytime i matches r)

// option 2
// create array of 0s ~n?
// n + (number of matches)
// if(match) 1 else (n - i)

// option 3
// 10 times n
// when first find n, if count is off, turn on
// increment count through array
// if find n again, remember that count
// if find n again, compare if lower
// worked example:
// arr = 7 1 3 4 1 7
// start with n = 0
// is arr[0] == 0, no, continue
// is arr[1] == 0, no continue
// ...
// is arr[5] == 0, no continue
// n++
// is arr[0] == 1, no continue
// is arr[1] == 1, yes, start count at 0
// increment count, is arr[2] == 1, no, continue
// increment count, is arr[3] == 1, no, continue
// ...
// is arr[5] == 1, yes, save count
// n++
// is arr[0] == 2

// note any time you get a distance of 1, you can just return 1 since nothing can do better than 1

// get input
let n = Int(String(readLine()!))!
let arr = readLine()!.characters.split(" ").map { Int(String($0))! }

var distance = -1
var foundCurrent: Bool = false
var smallestDistanceFound: Int = 1_000_000 // larger than the largest sample set

func findDistance() -> Int {

    for i in 1.stride(through: 9, by: 1) {
        //print("current i: \(i)")

        foundCurrent = false
        distance = 0
        for j in 0.stride(to: n, by: 1) {
            if foundCurrent == true { distance += 1 }
            if arr[j] != i {
                continue
            } else {
                if foundCurrent == false {
                    foundCurrent = true
                } else {
                    if foundCurrent == true {
                        if distance == 1 { return 1 }
                        if distance < smallestDistanceFound { smallestDistanceFound = distance }
                        distance = 0
                        continue
                    }
                }
            }
        
        
        }
        
    }
    if smallestDistanceFound < 1_000_000 { return smallestDistanceFound}
    return -1


}

print(findDistance())
