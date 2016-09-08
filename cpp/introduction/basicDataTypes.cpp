#include <iostream>
#include <cstdio>
using namespace std;

int main() {
    // format scanf("format_specifier", &val)
    // note that for large volumes of data, scanf/printf are faster than cin/cout
    int i;
    long l;
    long long ll;
    char c;
    float f;
    double d;

    scanf("%d %ld %lld %c %f %lf", &i, &l, &ll, &c, &f, &d); // ampersand as we are putting the data into the memory location pointed to by i

    printf("%d\n", i);
    printf("%ld\n", l);
    printf("%lld\n", ll);
    printf("%c\n", c);
    printf("%f\n", f);
    printf("%lf\n", d);
    
    return 0;
}
