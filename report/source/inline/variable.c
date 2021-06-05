int main(int argc, char* argv[]) {
    // a = int
    // b = char
    // c = unsigned int
    // d = short
    // e = long
    // x = float
    // y = double
    int a = -10;
    asm("# annotation: %0 = int" : : "X"(a));
    char b = 'b';
    asm("# annotation: %0 = char" : : "X"(b));
    unsigned int c = -b;
    asm("# annotation: %0 = unsigned int" : : "X"(c));
    short d = 0x1;
    asm("# annotation: %0 = short" : : "X"(d));
    long e = 4294967296;
    asm("# annotation: %0 = long" : : "X"(e));
    float x = 3.141592653589793;
    asm("# annotation: %0 = float" : : "X"(x));
    double y = x / 2.3784;
    asm("# annotation: %0 = double" : : "X"(y));
    return (int)(e / 32) + (int)a + (int)c + (int)d + (int) x + (int) y + argc;
}