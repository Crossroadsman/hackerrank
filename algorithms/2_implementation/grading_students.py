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


# HELPER FUNCTIONS: Math
# ----------------------

def round_grade(grade: int):
    last_digit = grade % 10
    if last_digit in [0, 5]:
        return grade
    if last_digit in [3, 4, 8, 9]:
        grossed_up = grade * 2
        rounded = round(grossed_up,-1)
        reduced = rounded // 2
        return reduced
    else:
        return grade


# solve function
# -------------
def solve(grades):
    for i in range(len(grades)):
        if grades[i] < 38:
            pass
        else:
            grades[i] = round_grade(grades[i])
    return grades

# Execution code
# --------------
if __name__ == "__main__":
    (n, lines) = read_input()
    
    rounded_grades = solve(lines)
    for grade in rounded_grades:
        print( str(grade) )
