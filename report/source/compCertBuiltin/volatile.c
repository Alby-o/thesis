volatile int x;

int main() {
    __builtin_annot("L(%1)= false", x);
    return x + 1;
}