volatile int z;
volatile int x;

int main() {
    // security policies:
    // annotation: L(var(z)) = true
    // annotation: L(var(x)) = var(z) % 2 == 0
    // annotation: var(x) < var(x)'
    int r1 = 0;
    int r2 = 0;
    // annotation: _P_0: var(r1) % 2 == 0
    // annotation: _Gamma_0: var(r1) -> LOW, var(r2) -> LOW
    // annotation: L(var(r2)) = false

    while(1) {
        do {
            // annotation: _invariant: var(r1) % 2 == 0 /\ var(r1) <= z
            // annotation: _Gamma: var(r1) -> LOW, var(r2) -> (var(r1) == var(z)), var(z) -> LOW
            do {
                // annotation: _invariant: var(r1) <= var(z)
                // annotation: _Gamma: var(r1) -> LOW
                r1 = z;
            } while (r1 %2 != 0);
            r2 = x;
        } while (z != r1);
    }
    return r2;
}