#include <iostream>
#include <cstdio>
using namespace std;

/*
Add `int max_of_four(int a, int b, int c, int d)` here.
*/
int max_of_two(int a, int b) {
    if (a > b) {
        return a;
    } else {
        return b;
    }
}

int max_of_four(int a, int b, int c, int d) {
    int aOrB = max_of_two(a, b);
    int cOrD = max_of_two(c, d);
    return max_of_two(aOrB, cOrD);
}

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);
    
    return 0;
}
