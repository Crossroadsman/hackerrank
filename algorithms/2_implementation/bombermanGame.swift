// get line1
let line1 = readLine()!.characters.split(" ").map {Int(String($0))!}
let (rows, columns, numberOfSeconds) = (line1[0], line1[1], line1[2])

// get other lines and put into format of 2D array [row][column]
var bombMap = [[String]]()
for i in 0.stride(to: rows, by: 1) {
    let line = Array(readLine()!.characters).map { String($0)}
    bombMap.append(line)
}

// set a time value
// convert all Os to the t value (actually t % 3) 
// increment t
// add all new bombs
// convert all neighbours of final t value to .
// repeat

// n = (n + 1) % 3      <--- cycle n through 0, 1, 2, 0, 1, 2, etc

func drawMap(bombMap bombMap: [[String]]) {
    for row in bombMap {
        print(row.joinWithSeparator(""))
    }
    
}

drawMap(bombMap: bombMap)
