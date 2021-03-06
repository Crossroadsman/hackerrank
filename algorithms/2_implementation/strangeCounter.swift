import Foundation
/*
// let each countdown be a sequence
// the first sequence starts at 1 and has length 3
var sequence = 1
var time = 1
*/

// the beginning time of each sequence follows the formula
// 3(2^(s-1)) -2
// see: https://oeis.org/A033484
func beginningTimeFrom(sequence sequence: Int) -> Int {
    let s = Double(sequence)
    let t = 3 * pow(2.0, s - 1.0) - 2
    return Int(t)
}

/*
sequence = 1
beginningTimeFrom(sequence: sequence)  // should be 1

sequence = 2
beginningTimeFrom(sequence: sequence)  // should be 4

sequence = 3
beginningTimeFrom(sequence: sequence)  // should be 10
*/

// the sequence to which a particular time begins can
// therefore be determined by reversing the beginningTimeFrom(sequence:)
// func (and flooring it)
func sequenceFrom(time time: Int) -> Int {
    let t = Double(time)
    let s = floor(log2((t + 2)/3) + 1)
    return Int(s)
}

/*
time = 1
sequenceFrom(time: time)

time = 15
sequenceFrom(time: time)

time = 30
sequenceFrom(time: time)
*/


// the length of a given sequence is simply
// 1.5 * 2^sequence
func lengthOf(sequence sequence: Int) -> Int {
    
    let s = Double(sequence)
    let l = pow(2.0, s) * 1.5
    return Int(l)
    
}

/*
sequence = 1
lengthOf(sequence: sequence)

sequence = 2
lengthOf(sequence: sequence)

sequence = 3
lengthOf(sequence: sequence)
*/

// If we are given t
// what is the value (i.e., the remaining length of the appropriate sequence)
// 1. get t [readLine()]
let time = Int(String(readLine()!))!

// 2. determine which sequence (s) t belongs in
let sequence = sequenceFrom(time: time)

// 3. determine the length of s
let length = lengthOf(sequence: sequence)

// 4. determine how far into into s, t is (d)
let beginningOfSequence = beginningTimeFrom(sequence: sequence)
let depth = time - beginningOfSequence

// 5. return length minus d
print(length - depth)
