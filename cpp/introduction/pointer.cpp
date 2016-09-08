/*

In order to access the memory address of a variable, e.g., val, we need to prepend it with &.
&val returns the memory address of val.

int *p = &val assigns the memory address of val to pointer p.

Accordingly, accessing p (the pointer) will return the memory address &val
accessing *p (the memory location pointed to) will return the contents of the memory address (val)

*/

#include <stdio.h>
#include <cmath> // for abs
void update(int *a,int *b) {
    // Complete this function 
    *a = *a + *b;
    *b = std::abs ((*a - *b) - *b);
}

int main() {
    int a, b;
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", &a, &b);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}
