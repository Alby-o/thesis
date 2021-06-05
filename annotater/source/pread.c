volatile int z;         //             security policies
                               //            {L(z)=true} 
volatile int x;         //            {L(x)=z % 2 == 0}

//                                            predicates on initial state
//                                           {_P_0: r1 % 2 == 0}
//                                           {_Gamma_0: r1 -> LOW, r2 -> LOW}

int main() {
    // annotation: L(var(z)) = true
    // annotation: L(var(x)) = var(z) % 2 == 0
    // annotation: var(x) < var(x)'
    int r1 = 0;
    int r2 = 0;          //            {L(r2)=False} 
    // annotation: _P_0: var(r1) % 2 == 0
    // annotation: _Gamma_0: var(r1) -> LOW, var(r2) -> LOW
    // annotation: L(var(r2)) = false

    while(1) {
        do {
            //             {_invariant: r1 % 2 == 0 /\ r1 <= z}
            //             {_Gamma: r1 -> LOW, r2 -> (r1 == z), z -> LOW}
            // annotation: _invariant: var(r1) % 2 == 0 /\ var(r1) <= z
            // annotation: _Gamma: var(r1) -> LOW, var(r2) -> (var(r1) == var(z)), var(z) -> LOW
            do {
                //             {_invariant: r1 <= z}
                //             {_Gamma: r1 -> LOW}
                // annotation: _invariant: var(r1) <= var(z)
                // annotation: _Gamma: var(r1) -> LOW
                r1 = z;
            } while (r1 %2 != 0);
            r2 = x;
        } while (z != r1);
    }
    return r2;
}


