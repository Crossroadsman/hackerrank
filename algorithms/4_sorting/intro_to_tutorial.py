'''
Sample Challenge 
================
This is a simple challenge to get things started. Given a sorted array (`ar`) 
and a number (`V`), can you print the index location of `V` in the array?

The next section describes the input format. You can often skip it, if you are 
using included methods.

Input Format 
------------
There will be three lines of input:
 - `V` the value that has to be searched.
 - `n` the size of the array.
 - `ar` numbers that make up the array.

Output Format 
-------------
Output the index of `V` in the array.

The next section describes the constraints and ranges of the input. You should 
check this section to know the range of the input.

Constraints
-----------
- 1 <= `n` <= 1000
- -1000 <= `V` <= 1000, `V` ∈ `ar`
- It is guaranteed that `V` will occur in `ar` exactly once.

This "sample" shows the first input test case. It is often useful to go through 
the sample to understand a challenge.

Sample Input
------------
4
6
1 4 5 7 9 12

Sample Output
-------------
1

Explanation
-----------
- `V` = 4
The value 4 is the 2nd element in the array, but its index is 1 since array 
indices start from 0, so the answer is 1.
'''


# HELPER FUNCTIONS: Input Processing
# ----------------------------------
def process_to_int(s):
    '''takes a string that represents a single integer and returns that number'''
    return int( s.strip() )

def process_to_int_list(s):
    '''takes a string that represents a space-separated sequence of integers
       and returns those integers as a list of ints'''
    return [int(x) for x in s.strip().split()]

def read_input():
    '''reads each of the lines from the specification and processes them
       according to the known format of the data'''
    line1 = process_to_int( input() )
    line2 = process_to_int( input() )
    line3 = process_to_int_list( input() )
    return (line1, line2, line3)

# ALGORITHM
# ---------
def introTutorial(v, ar):
    '''takes an int, v and array of ints, ar
       returns the index of v in ar
       (v is guaranteed to appear in ar exactly once)
    '''
    for i in range( len(ar) ):
        if v == ar[i]:
            return i
    raise ValueError("v was guaranteed to be in ar but wasn't found")

# MAIN
# ----
if __name__ == '__main__':
    (v, n, ar) = read_input()
    result = introTutorial(v, ar)
    print(result)