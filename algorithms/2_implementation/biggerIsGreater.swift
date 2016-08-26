// Next lexicographical permutation algorithm:
// (see: https://www.nayuki.io/page/next-lexicographical-permutation-algorithm)

// 0: start with the initial sequence
// if 1 character then trivially already at max

// 1: find the longest "non-increasing suffix"
// (i.e., the longest sequence of characters from the right where the next character is >= the current character)
// (e.g., for 0125330, the longest such sequence is 5330)
// note: if this is the entire sequence, then the entire sequence is already at max

// 2: identify the pivot
// (this is the next left character to the longest non-increasing suffix)
// (e.g., for 0125330, it is 2)

// 3: find the rightmost successor to pivot
// (e.g., for 0125330, it is the rightmost 3)

// 4: switch pivot and successor
// (e.g., for 0125330, it becomes 0135320)

// 5: reverse the suffix
// (e.g., for 0125330, which becamse 0135320, the reversal becomes 0130235)
// Done!

