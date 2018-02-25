# Helper Functions
'''A big pile of helper functions used repeatedly in completing hackerrank
   challenges
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
    lines = []
    for i in range(line1):
        lines.append( process_to_int(input()) )
    return (line1, lines)

# HELPER FUNCTIONS: Value Formatting
# ----------------------------------
def pretty_arr(arr):
    '''Used for taking an array and converting to a space-separated string
       e.g., [1, 2, 3] becomes '1 2 3'
    '''
    arr = [str(x) for x in arr]
    return ' '.join(arr)

# HELPER FUNCTIONS: Conveniently working with None
# ----------------------------------------------
def append_or_create(arr, value):
    if arr == []:
        return [value]
    else:
        arr.append(value)
        return arr

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

# HELPER FUNCTIONS: Math
# ----------------------
def is_factor(a, b) -> bool:
    '''returns true if a is a factor of b otherwise false

    e.g.1, is_factor(2, 4) # True
    e.g.2, is_factor(3, 5) # False
    '''
    return b % a == 0

def factors(val: int, arr: [int]) -> [int]:
    '''`val` is an integer, `arr` a list of integers
       the output is a list of all the integers in `arr` that
       are factors of `val`

       e.g.1, factors(val=12, arr=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) # [1,2,3,4,6]
       e.g.2, factors(val=16, arr=[1,4,9,16]) # [1,4,16] 
    '''
    return [x for x in arr if is_factor(x, val)]

def is_factor_of_all(val: int, arr: [int]) -> bool:
    '''returns true if val is a factor of every element in arr, otherwise false

    e.g.1, val=2,arr=[2,4,6,8] --> True
    e.g.2, val=3,arr=[3,4,5,6] --> False
    '''
    for x in arr:
        if not is_factor(val, x):
            return False
    return True