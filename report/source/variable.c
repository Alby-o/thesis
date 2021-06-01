int main(int argc, char* argv[]) {
    // a = int
    // b = char
    // c = unsigned int
    // d = short
    // e = long
    // x = float
    // y = double
    int a = -10;
    char b = 'b';
    unsigned int c = -b;
    short d = 0x1;
    long e = 4294967296;
    float x = 3.141592653589793;
    double y = x / 2.3784;
    return (int)(e / 32) + (int)a + (int)c + (int)d + (int) x + (int) y + argc;
}