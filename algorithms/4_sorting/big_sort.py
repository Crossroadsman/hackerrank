#!/bin/python3

import sys

def bigSorting(arr):
    # Complete this function
    '''turns out that converting str->int (and then implicitly back to str) is very costly, at least in python.
       the solution is to use the key=<type> argument for sorted which enables python's built-in sorting algorithm
       to treat the elements as ints without doing a type conversion.
       
       There is some nice discussion at:
       https://developers.google.com/edu/python/sorting
    '''
    sorted_nums = sorted(arr, key=int)
    return sorted_nums

if __name__ == "__main__":
    n = int(input().strip())
    arr = []
    arr_i = 0
    for arr_i in range(n):
       arr_t = str(input().strip())
       arr.append(arr_t)
    result = bigSorting(arr)
    print ("\n".join(map(str, result)))
