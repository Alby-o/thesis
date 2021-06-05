volatile int x;

int main() {
    asm("# annotation: %0 = High" : : "X"(x));
    return x + 1;
}