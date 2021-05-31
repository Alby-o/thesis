volatile int z;
volatile int x;

int main() {
    // Security Policies
    __builtin_ais_annot("%here L(%e1) = true", z);
    __builtin_ais_annot("%here L(%e1)= %e2 %% 2 == 0", x, z);

    int r1 = 0;
    int r2 = 0;          //            {L(r2)=False} 
    __builtin_ais_annot("%here L(%e1)= false", r2);

    // Predicates on initial state
    __builtin_ais_annot("%here _P_0: %e1 %% 2 == 0", r1);
    __builtin_ais_annot("%here _Gamma_0: %e1 -> LOW, %e2 -> LOW", r1, r2);
    

    while(1) {
        do {
            __builtin_ais_annot("%here _invariant: %e1 %% 2 == 0 & %e1 <= %e2", r1, z);
            __builtin_ais_annot("%here _Gamma: %e1 -> LOW, %e2 -> (%e1 == %e3), %e3 -> LOW", r1, r2, z);
            do {
                __builtin_ais_annot("%here _invariant: %e1 <= %e2", r1, z);
                __builtin_ais_annot("%here _Gamma: %e1 -> LOW", r1);
                r1 = z;
            } while (r1 %2 != 0);
                r2 = x;
        } while (z != r1);
    }
    return r2;
}


