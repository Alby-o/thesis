int main(int argc, char* argv[]) {
    int a = -10;
    __builtin_annot("%1 = int", a);
    char b = 'b';
    __builtin_annot("%1 = char", b);
    unsigned int c = -b;
    __builtin_annot("%1 = unsigned int", c);
    short d = 0x1;
    __builtin_annot("%1 = short", d);
    long e = 4294967296;
    __builtin_annot("%1 = long", e);
    float x = 3.141592653589793;
    __builtin_annot("%1 = float", x);
    double y = x / 2.3784;
    __builtin_annot("%1 = double", y);
    return (int)(e / 32) + (int)a + (int)c + (int)d + (int) x + (int) y + argc;
}