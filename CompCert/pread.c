volatile int z;         //             security policies
                               //            {L(z)=true} 
volatile int x;         //            {L(x)=z % 2 == 0}

//                                            predicates on initial state
//                                           {_P_0: r1 % 2 == 0}
//                                           {_Gamma_0: r1 -> LOW, r2 -> LOW}

int main() {
    int r1 = 0;
    int r2 = 0;          //            {L(r2)=False} 

  while(1) {
   do {
                               //             {_invariant: r1 % 2 == 0 /\ r1 <= z}
                               //             {_Gamma: r1 -> LOW, r2 -> (r1 == z), z -> LOW}
        do {
                               //             {_invariant: r1 <= z}
                               //             {_Gamma: r1 -> LOW}
           r1 = z;
        } while (r1 %2 != 0);
        r2 = x;
    } while (z != r1);
  }
    return r2;
}


