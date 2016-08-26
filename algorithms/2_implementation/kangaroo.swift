// kangaroo

// 2 kangaroos on the x-axis (at x1 and x2 respectively)
// each jumps along the x-axis at a distance of v1 and v2 respectively

// will they occupy the same point at the same time on the x-axis?

// input:
// x1 v1 x2 v2

// output: (print)
// YES
// NO


// check the trivial cases first
// if at the outset x1 == x2 return YES
// if at the outset x1 > x2 AND v1 > v2 (or x2 > x1 AND v2 > v1) return NO

// then do math
x1 + a * v1 == x2 + b * v2 where a and b are positive integers?


// imagine a graph where the jump number is the x-axis and the cumulative distance travelled is the y-axis
// plot the two kangaroo formulas
// if the value where the lines intersect is a natural number solution for both equations then YES else NO
