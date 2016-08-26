// kangaroo

// 2 kangaroos on the x-axis (at x1 and x2 respectively)
// each jumps along the x-axis at a distance of v1 and v2 respectively

// will they occupy the same point at the same time on the x-axis?

// input:
// x1 v1 x2 v2

// output: (print)
// YES
// NO


let inputs = readLine()!.characters.split(" ").map({Int(String($0))!})
let (x1, v1, x2, v2) = (inputs[0], inputs[1], inputs[2], inputs[3])

func checkKangaroos() -> String {

  // check the trivial cases first
  // if at the outset x1 == x2 return YES
  if x1 == x2 { return "YES" }
  
  // if at the outset v1 == v2 return NO (parallel)
  if v1 == v2 { return "NO" }

  // if at the outset x1 > x2 AND v1 > v2 (or x2 > x1 AND v2 > v1) return NO
  if (x1 > x2 && v1 > v2) || (x2 > x1 && v2 > v1) { return "NO" }

  // Math time:
  // imagine a graph where the jump number is the x-axis and the cumulative distance travelled is the y-axis
  // plot the two kangaroo formulas
  // if the value where the lines intersect is a natural number solution for both equations then YES else NO
  
  // determine x-intercept by setting same y values
  let xIntercept = (Double(x2) - Double(x1))/(Double(v1) - Double(v2)) // divide by zero if v1 == v2 (tested above)
  if xIntercept % 1 != 0 { return "NO" } // not a whole number therefore the x-intercept is between jumps
  
  let k1Pos = (v1 * Int(xIntercept)) + x1
  let k2Pos = (v2 * Int(xIntercept)) + x2
  
  if k1Pos == k2Pos { return "YES" }
  
  
  return "NO"
}

print(checkKangaroos())
