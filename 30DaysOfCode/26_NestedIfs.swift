let line1 = readLine()!.characters.split(" ").map { Int(String($0))! } // actual return date (d/m/y)
let line2 = readLine()!.characters.split(" ").map { Int(String($0))! } // due return date (d/m/y)

let (returnDay, returnMonth, returnYear) = (line1[0], line1[1], line1[2])
let (dueDay, dueMonth, dueYear) = (line2[0], line2[1], line2[2])

// fine rules:
// if returned after calendar year: 10000
// if returned in year but after calendar month: 500 * months
// if returned in month but after calendar day: 15 * days
// else 0
func determineFine(due due: (d: Int, m: Int, y: Int), actual: (d: Int, m: Int, y: Int)) -> Int {
    let yearFine = 10000
    let monthFine = 500
    let dayFine = 15
    
    if actual.y > due.y { return yearFine }
    if actual.m > due.m { return monthFine * (actual.m - due.m) }
    if actual.d > due.d { return dayFine * (actual.d - due.d) }
    return 0
}

print(determineFine(due: (d: dueDay, m: dueMonth, y: dueYear), actual: (d: returnDay, m: returnMonth, y: returnYear) ))
