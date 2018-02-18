#!/bin/python3

import sys

def birthdayCakeCandles(n, ar):
    # Complete this function
    
    def increment_or_create(dictionary, value):
        '''if the key doesn't exist in the dictionary, initialises to 1
           otherwise increments it
        '''
        try:
            dictionary[value] += 1
        except:
            dictionary[value] = 1
        return dictionary
    
    candles = {}
    for candle in ar:
        increment_or_create(candles, candle)
    
    max_value_so_far = 0
    #max_key_so_far = None
    for key, value in candles.items():
        if value > max_value_so_far:
            max_value_so_far = value
            #max_key_so_far = key
    return max_value_so_far

n = int(input().strip())
ar = list(map(int, input().strip().split(' ')))
result = birthdayCakeCandles(n, ar)
print(result)

