#!/bin/python3

import sys
import functools

def miniMaxSum(arr):
    def gt(a, b):
        '''behaves like > except any value compared to None returns true'''
        if b == None:
            return True
        else:
            return a > b
    
    def lt(a, b):
        '''behaves like < except any value compared to None returns true'''
        if b == None:
            return True
        else:
            return a < b
    
    # Complete this function
    value_so_far = 0
    min_so_far = None
    max_so_far = None
    for value in arr:
        if gt(value, max_so_far):
            max_so_far = value
        if lt(value, min_so_far):
            min_so_far = value
        value_so_far += value
    
    print("{} {}".format(value_so_far - max_so_far, value_so_far - min_so_far))
    

if __name__ == "__main__":
    arr = list(map(int, input().strip().split(' ')))
    miniMaxSum(arr)
