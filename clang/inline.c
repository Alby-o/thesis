#include <stdio.h>

int main()
{
    int i = 0;
    asm("# L(%0) = high" : : "r"(i));
    return i + 1;
}