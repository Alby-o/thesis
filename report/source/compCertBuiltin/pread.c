volatile int z;
volatile int x;

int main() {
    // Security Policies
    __builtin_annot("L(%1) = true", z);
    __builtin_annot("L(%1)= %2 %% 2 == 0", x, z);

    int r1 = 0;
    int r2 = 0;          //            {L(r2)=False} 
    __builtin_annot("L(%1)= false", r2);

    // Predicates on initial state
    __builtin_annot("_P_0: %1 %% 2 == 0", r1);
    __builtin_annot("_Gamma_0: %1 -> LOW, %2 -> LOW", r1, r2);
    

    while(1) {
        do {
            __builtin_annot("_invariant: %1 %% 2 == 0 & %1 <= %2", r1, z);
            __builtin_annot("_Gamma: %1 -> LOW, %2 -> (%1 == %3), %3 -> LOW", r1, r2, z);
            do {
                __builtin_annot("_invariant: %1 <= %2", r1, z);
                __builtin_annot("_Gamma: %1 -> LOW", r1);
                r1 = z;
            } while (r1 %2 != 0);
                r2 = x;
        } while (z != r1);
    }
    return r2;
}


