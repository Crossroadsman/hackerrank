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

let n = Int(String(readLine()!))!
var r = n
let numbers = readLine()!.characters.split(" ").map { Int(String($0))! }
var matches = [Int](count: n, repeatedValue: 0)
var shortestDistance: Int?

for i in 0.stride(to: r, by: 1) {
    
    if matches[i] == 1 { continue }
    
    for j in (r - 1).stride(through: 1, by: -1) {
        
        if matches[j] == 1 { continue }
        
        if numbers[i] == numbers[j] {
            if j == r - 1 {
                r -= 1
            }
            
            matches[i] = 1
            matches[j] = 1
        
        }
        
        
    }
    
}
