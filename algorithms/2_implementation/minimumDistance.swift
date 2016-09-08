// get input
let n = Int(String(readLine()!))!
let arr = readLine()!.characters.split(" ").map { Int(String($0))! }
let maxVal = 100_001
var duplicateList = [Int]()

var shadowArray = [Int](count: maxVal, repeatedValue: 0)

for i in 0.stride(to: n, by: 1) {
    shadowArray[arr[i]] += 1
}

for i in 0.stride(to: maxVal, by: 1) {
    guard shadowArray[i] > 1 else { continue }
    
    duplicateList.append(i)
    
}

var finalMinDistance = -1
var minDistanceSoFar = Int.max

for element in duplicateList { // will run for each value that has matches
    
    var currentDistance = 0
    
    var foundMatch = false
    
    for i in 0.stride(to: n, by: 1) {
        
        // only increment distance if we have already found element
        if foundMatch == true {
            currentDistance += 1
        }
        
        if arr[i] == element {
            // if this is the first time finding element, set to true to start the distance count
            if foundMatch == false {
                foundMatch = true
            } else {
                if currentDistance < minDistanceSoFar {
                    minDistanceSoFar = currentDistance
                }
                currentDistance = 0
            }
        }
    }
    
    if minDistanceSoFar < Int.max { 
        finalMinDistance = minDistanceSoFar
    } else { finalMinDistance = -1}
        
    
}

print(finalMinDistance)
