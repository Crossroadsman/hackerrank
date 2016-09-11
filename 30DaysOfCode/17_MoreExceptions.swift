// MARK: uses swift 3 syntax
// for swift 2 uppercase the first character in notInRange
// remove underscore from power method declaration

import Foundation

enum RangeError : Error {
    case notInRange(String)
}

class Calculator {
    func power(_ n: Int, p: Int) throws -> Int {
        
        switch (n, p) {
        case (_, _) where (n < 0) || (p < 0):
            throw RangeError.notInRange("n and p should be non-negative")
        case (0, _):
            return 0
        case (1, _):
            return 1
        case (_, 0):
            return 1
        default:
            return n * (try! power(n, p: p - 1))
        }
        
    }
}

let myCalculator = Calculator()

let np = [3, 5]

do {
    let ans = try myCalculator.power(np[0], p: np[1])
    print(ans)
} catch RangeError.notInRange(let errorMsg) {
    print(errorMsg)
}
