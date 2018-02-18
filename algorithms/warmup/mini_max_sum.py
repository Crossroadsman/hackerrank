#!/bin/python3

import sys
import functools

def miniMaxSum(arr):
    # Complete this function
    sorted_arr = sorted(arr)
    min_value = sorted_arr[0]
    max_value = sorted_arr[4]
    rest_arr = arr[1:4]
    
    def add(a,b):
        return a + b
    
    sum_rest_arr = functools.reduce(add, rest_arr)
    min_sum = sum_rest_arr + min_value
    max_sum = sum_rest_arr + max_value
    print("{} {}".format(min_sum, max_sum))
    

if __name__ == "__main__":
    arr = list(map(int, input().strip().split(' ')))
    miniMaxSum(arr)

