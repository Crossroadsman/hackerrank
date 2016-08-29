// The reflection of P across Q is the point P' such that Q is in the midpoint of P->P'

let numberOfTests = Int(String(readLine()!))!

var testArray = [[Int]]()
for i in 0.stride(to: numberOfTests, by: 1) {

    testArray.append(readLine()!.characters.split(" ").map {Int(String($0))!})

}

for test in testArray {

    let (px, py) = (test[0], test[1])
    let (qx, qy) = (test[2], test[3])
    let p2x = px + (2 * (qx-px))
    let p2y = py + (2 * (qy-py))
    print("\(p2x) \(p2y)")
}
