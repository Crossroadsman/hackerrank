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

