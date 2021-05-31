int z;
int x;

// security policies
// {L(z)=true}
// {L(x)=z % 2 == 0}

// predicates on initial state
// {_P_0: r1 % 2 == 0}
// {_Gamma_0: r1 -> LOW, r2 -> LOW}

int main() {
    int r1 = 0;
    // {L(r2)=False} 
    int r2 = 0;          

    while(1) {
    do {
        // {_invariant: r1 % 2 == 0 /\ r1 <= z}
        // {_Gamma: r1 -> LOW, r2 -> (r1 == z), z -> LOW}
        do {
            // {_invariant: r1 <= z}
            // {_Gamma: r1 -> LOW}
            r1 = z;
        } while (r1 %2 != 0);
            r2 = x;
        } while (z != r1);
    }
    return r2;
}