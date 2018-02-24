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
    line4 = process_to_int_list( input() )
    line5 = process_to_int_list( input() )
    lines = [line1, line2, line3, line4, line5]
    return lines

# HELPER FUNCTIONS: Value Formatting
# ----------------------------------
def pretty_arr(arr):
    '''Used for taking an array and converting to a space-separated string
       e.g., [1, 2, 3] becomes '1 2 3'
    '''
    arr = [str(x) for x in arr]
    return ' '.join(arr)

# solve function
# --------------
def position_from_distance(base: int, distance: int) -> int:
    return distance + base

def did_hit(position, target_start, target_end) -> bool:
    if position in range(target_start, target_end + 1):
        return True
    else:
        return False

def count_hits(positions, target_start, target_end) -> int:
    counter = 0
    for position in positions:
        if did_hit(position, target_start, target_end):
            counter += 1
    return counter

if __name__ == '__main__':
    lines = read_input()
    s = lines[0][0] # left side of sam's house
    t = lines[0][1] # right side of sam's house

    a = lines[1][0] # larry's position in the trees
    b = lines[1][1] # rob's position in the trees

    m = lines[2][0] # number of apples thrown
    n = lines[2][1] # number of oranges thrown

    m_distances = lines[3] # positions of apples relative to larry
    n_distances = lines[4] # positions of oranges relative to rob

    m_positions = [position_from_distance(base=a, distance=x) for x in m_distances]
    n_positions = [position_from_distance(base=b, distance=x) for x in n_distances]

    m_hits = count_hits(m_positions, s, t)
    n_hits = count_hits(n_positions, s, t)

    # this is the output as defined in the problem statement
    '''
    output = pretty_arr( [m_hits, n_hits] )
    print(output)
    '''

    # this is the output as the compiler appears to want
    for value in [m_hits, n_hits]:
        print(value)
    '''
    print('Sam\'s house covers positions {} to {}'.format(s, t))
    
    print('larry is at position {}'.format(a))
    print('he threw {} apples which landed at relative positions:'.format(m))
    print(m_distances)
    print('and absolute positions:')
    print(m_positions)
    print('which produced {} hits'.format(m_hits))

    print('rob is at position {}'.format(b))
    print('he threw {} oranges which landed at relative positions:'.format(n))
    print(n_distances)
    print('and absolute positions:')
    print(n_positions)
    print('which produced {} hits'.format(n_hits))
    '''