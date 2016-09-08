// Write your code here
    init(a: [Int]) {
        elements = a
    }
    
    func computeDifference() {
        let sortedElements = elements.sort()
        maximumDifference = abs(sortedElements[0] - sortedElements.last!)
    }
