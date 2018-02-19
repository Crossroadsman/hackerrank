'''
Insertion Sort
==============
These challenges will cover Insertion Sort, a simple and intuitive sorting 
algorithm. We will first start with an already sorted list.

Insert element into sorted list 
-------------------------------
Given a sorted list with an unsorted number `e` in the rightmost cell, can you 
write some simple code to insert into the array so that it remains sorted?

Print the array every time a value is shifted in the array until the array is 
fully sorted. The goal of this challenge is to follow the correct order of 
insertion sort.

*Guideline*: You can copy the value of `e` to a variable and consider its cell 
"empty". Since this leaves an extra cell empty on the right, you can shift 
everything over until `e` can be inserted. This will create a duplicate of each 
value, but when you reach the right spot, you can replace it with `e`.

Input Format
------------
There will be two lines of input:
 - `size` the size of the array
 - `arr` the array containing `size - 1` sorted integers and 1 unsorted integer 
 `e` in the rightmost cell

Output Format 
-------------
On each line, output the entire array every time an item is shifted in it.

Constraints
-----------
1 <= `size` <= 1000
-10,000 <= `e` <= 10000, `e` ∈ `arr`

Sample Input
------------

5
2 4 6 8 3

Sample Output
-------------

2 4 6 8 8 
2 4 6 6 8 
2 4 4 6 8 
2 3 4 6 8 

Explanation
-----------

3 is removed from the end of the array.
In the 1st line 8 > 3, so  8 is shifted one cell to the right. 
In the 2nd line 6 > 3, so  6 is shifted one cell to the right. 
In the 3rd line 4 > 3, so  4 is shifted one cell to the right. 
In the 4th line 2 < 3, so  3 is placed at position .

Task
----

Complete the method insertionSort which takes in one parameter:

- `arr` an array with the value `e` in the right-most cell.
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

# HELPER FUNCTIONS: Value Formatting
# ----------------------------------
def pretty_arr(arr):
    arr = [str(x) for x in arr]
    return ' '.join(arr)

# ALGORITHM
# ---------
def insertionSort(arr):
    '''takes an array of ints, arr
       where the rightmost value is unsorted
       prints each successive iteration of arranging the array until the
       array is fully sorted
    '''
    e = arr[-1]
    i = len(arr) - 2
    while i >= 0:    
        if arr[i] > e:
            arr[i+1] = arr[i]
            print( pretty_arr(arr) )
            i -= 1
        else:
            arr[i+1] = e
            print( pretty_arr(arr) )
            return
    arr[0] = e
    print( pretty_arr(arr) )


# MAIN
# ----
if __name__ == '__main__':
    (n, arr) = read_input()
    insertionSort(arr)