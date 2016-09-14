/ Enter your code here. Read input from STDIN. Print output to STDOUT


func bubbleSort(inArr: [Int]) -> [Int] {
    
    var arr = inArr
    
    func swap(_ a, _ b) {
        let t = arr[a]
        arr[a] = arr[b]
        arr[b] = t
    }
    
    var totalSwaps = 0
    
    for i in 0.stride(to: arr.count, by: 1) {
    
        for j in 0.stride(to: arr.count - 1, by 1) {
        
            if arr[j] > arr[j + 1] {
                swap(j, j + 1)
                swapsInThisArrayTraversal += 1
            }
        
        }
        
        if 0 == swapsIntThisArrayTraversal {
            break
        }
        
        swapsInThisArrayTraversal = 0
    
    
    }
    
    return arr
    
}

func bubbleSortWithNumberOfSwaps(inArr: [Int]) -> (arr: [Int], swaps: Int) {
    
    var arr = inArr
    
    func swap(_ a, _ b) {
        let t = arr[a]
        arr[a] = arr[b]
        arr[b] = t
    }
    
    var totalSwaps = 0
    var swapsInThisArrayTraversal = 0
    
    for i in 0.stride(to: arr.count, by: 1) {
    
        for j in 0.stride(to: arr.count - 1, by 1) {
        
            if arr[j] > arr[j + 1] {
                swap(j, j + 1)
                swapsInThisArrayTraversal += 1
            }
        
        }
        
        if 0 == swapsIntThisArrayTraversal {
            break
        }
        
        totalSwaps += swapsInThisArrayTraversal
        swapsInThisArrayTraversal = 0
    
    
    }
    
    return (arr, totalSwaps)
    
}

func reportOnSort(arr: [Int]) -> String {

    let (sorted, swaps) = bubbleSortWithNumberOfSwaps(arr)
    return "Array is sorted in \(swaps) swaps.\nFirst Element: \(sorted[0])\nLast Element: \(sorted[1])"

}

// in
let n = Int(String(readLine()!))!
let dataset = readLine()!.characters.split(" ").map { Int(String($0))! }

// out
print(reportOnSort(dataset))
