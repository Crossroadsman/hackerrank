// because we are dealing with a sequence of natural numbers 1,2,3,4...n
// the bitwise sequence will grow in the following form (for any & of two in sequence):

// q is -ve (e.g., 101, 100)
// -------------------------
// q & (q - 1) : 100 which must be the highest & that is < q (since it is the only possible & that has a 1 at the left. It must be less than q because q, being odd, has 1 at the right and the & of it and its neighbour must have a 0 at the right)

// q is +ve: (eg: 100, 011)
// ------------------------
// it may be possible to get a & result that is equal to (q - 1). Specifically, there may be a value > q that when & combined with (q - 1) produces (q - 1). This value is the | of q and (q - 1):

// q                     == 100
// q - 1                 == 011
// q | q - 1             == 111
// (q - 1) & (q | q - 1) == 011

// if (q | q - 1) <= n then it falls within our available pool of candidate numbers to &
// if it doesn't we have to fall back on the next highest sequence (q - 1) & (q - 2)
// such that the highest possible solution is the next highest odd solution


let t = Int(String(readLine()!))!

for _ in 0.stride(to: t, by: 1) {
    let line = readLine()!.characters.split(" ").map { Int(String($0))! }
    let (n, k) = (line[0], line[1])
    
    let a: Int
    if k % 2 == 0 { // k is even
        let orNum = k | (k - 1)
        if orNum <= n {
            a = orNum & (k - 1)
        } else {
            a = (k - 2) & (k - 1) // (we don't have to worry about k == 0 as the specification restricts k to a min of 2)
        }
        
        
    } else { // k is odd
        a = k & (k - 1)
    }
    
    print(a)
    
}
