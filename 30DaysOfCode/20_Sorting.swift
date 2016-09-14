/*
func bubbleSort(inArr: [Int]) -> [Int] {
    
    var arr = inArr
    
    func swap(a: Int, _ b: Int) {
        let t = arr[a]
        arr[a] = arr[b]
        arr[b] = t
    }
    
    var swapsInThisArrayTraversal = 0
    
    for _ in 0.stride(to: arr.count, by: 1) {
    
        for j in 0.stride(to: arr.count - 1, by: 1) {
        
            if arr[j] > arr[j + 1] {
                swap(j, j + 1)
                swapsInThisArrayTraversal += 1
            }
        
        }
        
        if 0 == swapsInThisArrayTraversal {
            break
        }
        
        swapsInThisArrayTraversal = 0
    
    
    }
    
    return arr
    
}
*/

func bubbleSortWithNumberOfSwaps(inArr: [Int]) -> (arr: [Int], swaps: Int) {
    
    var arr = inArr
    
    func swap(a: Int, _ b: Int) {
        let t = arr[a]
        arr[a] = arr[b]
        arr[b] = t
    }
    
    var totalSwaps = 0
    var swapsInThisArrayTraversal = 0
    
    for _ in 0.stride(to: arr.count, by: 1) {
    
        for j in 0.stride(to: arr.count - 1, by: 1) {
        
            if arr[j] > arr[j + 1] {
                swap(j, j + 1)
                swapsInThisArrayTraversal += 1
            }
        
        }
        
        if 0 == swapsInThisArrayTraversal {
            break
        }
        
        totalSwaps += swapsInThisArrayTraversal
        swapsInThisArrayTraversal = 0
    
    
    }
    
    return (arr, totalSwaps)
    
}

func reportOnSort(arr: [Int]) -> String {

    let (sorted, swaps) = bubbleSortWithNumberOfSwaps(arr)
    let first = sorted[0]
    let last = sorted.last!
    return "Array is sorted in \(swaps) swaps.\nFirst Element: \(first)\nLast Element: \(last)"

}

// in
let n = Int(String(readLine()!))!
let dataset = readLine()!.characters.split(" ").map { Int(String($0))! }

// out
print(reportOnSort(dataset))
