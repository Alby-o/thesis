volatile int z;
volatile int x;

int main() {
    // security policies:
asm("# annotation: L(%0) = true" : : "X"(z));
asm("# annotation: L(%0) = %1 %% 2 == 0" : : "X"(x), "X"(z));
asm("# annotation: %0 < %1'" : : "X"(x), "X"(x));
    int r1 = 0;
    int r2 = 0;
asm("# annotation: _P_0: %0 %% 2 == 0" : : "X"(r1));
asm("# annotation: _Gamma_0: %0 -> LOW, %1 -> LOW" : : "X"(r1), "X"(r2));
asm("# annotation: L(%0) = false" : : "X"(r2));

    while(1) {
        do {
asm("# annotation: _invariant: %0 %% 2 == 0 /\\ %1 <= z" : : "X"(r1), "X"(r1));
asm("# annotation: _Gamma: %0 -> LOW, %1 -> (%2 == %3), %4 -> LOW" : : "X"(r1), "X"(r2), "X"(r1), "X"(z), "X"(z));
            do {
asm("# annotation: _invariant: %0 <= %1" : : "X"(r1), "X"(z));
asm("# annotation: _Gamma: %0 -> LOW" : : "X"(r1));
                r1 = z;
            } while (r1 %2 != 0);
            r2 = x;
        } while (z != r1);
    }
    return r2;
}