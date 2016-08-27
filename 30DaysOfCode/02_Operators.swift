import Foundation
// Enter your code here. Read input from STDIN. Print output to STDOUT

let mealCost = Double(readLine()!)!
let tipPercent = Double(String(readLine()!))!
let taxPercent = Double(String(readLine()!))!

let tipAmount = mealCost * (tipPercent/100)
let taxAmount = mealCost * (taxPercent/100)

let totalCost = mealCost + tipAmount + taxAmount
let totalCostAsInt = Int(round(totalCost))

print ("The total meal cost is \(totalCostAsInt) dollars.")
