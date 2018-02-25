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
    line1 = process_to_int_list( input() )
    line2 = process_to_int_list( input() )
    line3 = process_to_int_list( input() )
    lines = [line1, line2, line3]
    return lines


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


if __name__ == '__main__':
    lines = read_input()
    n = lines[0][0] # the number of elements in a
    m = lines[0][1] # the number of elements in b

    a = lines[1]
    b = lines[2]

    # Find all integers (x) that satisfy the following conditions:
    # 1. All elements in a are factors of x AND
    # 2. x is a factor of all elements in b

    # the smallest number that can possibly satisfy the conditions is the
    # largest number in array a
    # the largest number that can possibly satisfy the conditions is the 
    # smallest number in array b
    # thus:
    satisfiers = []
    for i in range(max(a), min(b) + 1):
        if factors(val=i, arr=a) != a:
            continue
        if not is_factor_of_all(val=i, arr=b):
            continue
        satisfiers.append(i)
    print(len(satisfiers))