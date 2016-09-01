// This algorithm works by taking the original input, which was expressed as an m-length sequence of cities with space stations
// and turning into an n-length sequence of whether a city has a space station (essentially makes the space stations hashable)
// by city. Cost O(N)

// Then it loops through the city list and remembers the longest distance since a space station was seen.
// It uses the concept of outsideDistance (from the edge of space to the first spacestation) and insideDistance
// (distance between space stations) (because the true max distance from the edge is just the distance, but from inside it is
// half the distance (rounded up)). Cost O(N)

// 1. Get input
// ------------
let line1 = readLine()!.characters.split(" ").map { Int(String($0))! }
let (n, m) = (line1[0], line1[1])

let line2 = readLine()!.characters.split(" ").map { Int(String($0))! }
var stations = [Int](count: n, repeatedValue: 0)

for i in 0.stride(to: m, by: 1) {
    let stationCity = line2[i]
    stations[stationCity] = 1
}

// print(stations)

var maxDistance = 0
var currentDistance = 0
var insideDistance = false

for i in 0.stride(to: n, by: 1) {
    if stations[i] == 1 {
        
        if insideDistance == false {
            if currentDistance > maxDistance { maxDistance = currentDistance }
            currentDistance = 0
            insideDistance = true
        } else {
            let tempDistance: Int
            if currentDistance % 2 == 0 { tempDistance = currentDistance / 2}
            else { tempDistance = currentDistance / 2 + 1}
            if tempDistance > maxDistance { maxDistance = tempDistance }
            currentDistance = 0
        }
    } else {
         currentDistance += 1
    }
}

if currentDistance > maxDistance { maxDistance = currentDistance }

print(maxDistance)
