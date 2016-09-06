
// Class Student
class Student: Person {
    var testScores: [Int]
    
    // Write the Student class initializer
    init(firstName: String, lastName: String, identification: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, identification: identification)
    }
    
    
    // Write the calculate method
    func calculate() -> String {
        let average = Double(testScores.reduce(0, combine: {$0 + $1})) / Double(testScores.count)
        switch average {
            case _ where average >= 90:
                return "O"
            case _ where average >= 80:
                return "E"
            case _ where average >= 70:
                return "A"
            case _ where average >= 55:
                return "P"
            case _ where average >= 40:
                return "D"
            default:
                return "T"
        }
    }
    
    
} // End of class Student

