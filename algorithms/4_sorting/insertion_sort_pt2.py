'''
Insertion Sort Part 2
=====================

In Insertion Sort Part 1, you sorted one element into an array. Using the same 
approach repeatedly, can you sort an entire unsorted array?

Guideline: You already can place an element into a sorted array. How can you 
use that code to build up a sorted array, one element at a time? Note that in 
the first step, when you consider an array with just the first element - that 
is already "sorted" since there's nothing to its left that is smaller.

In this challenge, don't print every time you move an element. Instead, print 
the array after each iteration of the insertion-sort, i.e., whenever the next 
element is placed at its correct position.

Since the array composed of just the first element is already "sorted", begin 
printing from the second element and on.

Input Format
------------
There will be two lines of input:
 - `s` the size of the array
 - `arr` a list of numbers that makes up the array

Output Format 
-------------
On each line, output the entire array at every iteration.

Constraints 
-----------
1 <= `s` <= 1000
-10000 <= `x` <= 10000, `x` ∈ `arr`

Sample Input
------------
6
1 4 3 5 6 2

Sample Output
-------------
1 4 3 5 6 2 
1 3 4 5 6 2 
1 3 4 5 6 2 
1 3 4 5 6 2 
1 2 3 4 5 6 

Explanation
-----------
Insertion Sort checks `4` first and doesn't need to move it, so it just prints 
out the array. Next, `3` is inserted next to `1`, and the array is printed out. 
This continues one element at a time until the entire array is sorted.

Task
----
The method insertionSort takes in one parameter: `ar`, an unsorted array. Use 
an Insertion Sort Algorithm to sort the entire array.
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
    line2 = process_to_int_list( input() )
    return (line1, line2)

# HELPER FUNCTIONS: Conviently working with None
# ----------------------------------------------
def append_or_create(arr, value):
    if arr == []:
        return [value]
    else:
        arr.append(value)
        return arr

# HELPER FUNCTIONS: Value Formatting
# ----------------------------------
def pretty_arr(arr):
    arr = [str(x) for x in arr]
    return ' '.join(arr)

# ALGORITHM
# ---------
def insertionSort(arr):
    '''takes an array of ints, arr,
    breaks each successive element of the array off and appends to a working
    array which then runs sortRow on it. Once this has been performed for all
    elements in the original array, returns the new array'''
    working_arr = []

    def remove_and_append(in_arr, out_arr):
        '''performs the break and append portion of the algorithm
        '''
        out_arr = append_or_create(out_arr, in_arr.pop())
        return (in_arr, out_arr)

    def sortRow(arr):
        '''takes an array of ints, arr
            where the rightmost value is assumed to be unsorted
            but all values left of that are sorted
            prints each successive iteration of arranging the array until the
            array is fully sorted
        '''
        e = arr[-1]
        i = len(arr) - 2
        while i >= 0:    
            if arr[i] > e:
                arr[i+1] = arr[i]
                i -= 1
            else:
                arr[i+1] = e
                return arr
        arr[0] = e
        return arr
        
    while len(arr) > 0:
        (arr, working_arr) = remove_and_append(arr, working_arr)
        working_arr = sortRow(working_arr)
        print( pretty_arr(arr + working_arr) )



# MAIN
# ----
if __name__ == '__main__':
    (n, arr) = read_input()
    insertionSort(arr)