extern int z;

extern int x;

extern int main(void);

extern unsigned int __compcert_va_int32(void *);

extern unsigned long long __compcert_va_int64(void *);

extern double __compcert_va_float64(void *);

extern void *__compcert_va_composite(void *, unsigned long long);

extern long long __compcert_i64_dtos(double);

extern unsigned long long __compcert_i64_dtou(double);

extern double __compcert_i64_stod(long long);

extern double __compcert_i64_utod(unsigned long long);

extern float __compcert_i64_stof(long long);

extern float __compcert_i64_utof(unsigned long long);

extern long long __compcert_i64_sdiv(long long, long long);

extern unsigned long long __compcert_i64_udiv(unsigned long long, unsigned long long);

extern long long __compcert_i64_smod(long long, long long);

extern unsigned long long __compcert_i64_umod(unsigned long long, unsigned long long);

extern long long __compcert_i64_shl(long long, int);

extern unsigned long long __compcert_i64_shr(unsigned long long, int);

extern long long __compcert_i64_sar(long long, int);

extern long long __compcert_i64_smulh(long long, long long);

extern unsigned long long __compcert_i64_umulh(unsigned long long, unsigned long long);

extern void __builtin_debug(int, ...);

int z;

int x;

int main(void)
{
  int r1;
  int r2;
  __builtin_annot("# file:pread-annotation.c line:12 function:main\n%here L(%e1) = true",
                  z);
  __builtin_annot("# file:pread-annotation.c line:15 function:main\n%here L(%e1)= %e2 %% 2 == 0",
                  x, z);
  r1 = 0;
  r2 = 0;
  __builtin_annot("# file:pread-annotation.c line:20 function:main\n%here L(%e1)= false",
                  r2);
  __builtin_annot("# file:pread-annotation.c line:23 function:main\n%here _P_0: %e1 %% 2 == 0",
                  r1);
  __builtin_annot("# file:pread-annotation.c line:24 function:main\n%here _Gamma_0: %e1 -> LOW, %e2 -> LOW",
                  r1, r2);
  while (1) {
    do {
      __builtin_annot("# file:pread-annotation.c line:29 function:main\n%here _invariant: %e1 %% 2 == 0 & %e1 <= %e2",
                      r1, z);
      __builtin_annot("# file:pread-annotation.c line:30 function:main\n%here _Gamma: %e1 -> LOW, %e2 -> (%e1 == %e3), %e3 -> LOW",
                      r1, r2, z);
      do {
        __builtin_annot("# file:pread-annotation.c line:36 function:main\n%here _invariant: %e1 <= %e2",
                        r1, z);
        __builtin_annot("# file:pread-annotation.c line:37 function:main\n%here _Gamma: %e1 -> LOW",
                        r1);
        r1 = z;
      } while(r1 % 2 != 0);
      r2 = x;
    } while(z != r1);
  }
  return r2;
  return 0;
}


