extern int rooster;

extern int drake;

extern int goose;

static int count;

extern int fun(int, int, int);

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

int rooster;

int drake;

int goose;

int count = 0;

int fun(int a, int b, int c)
{
  int sum;
  sum = a + b + c;
  if (sum < 0) {
    return sum;
  }
  if (a < b && b < c) {
    while (a != b) {
      a++;
      count++;
      while (b != c) {
        c--;
        count++;
      }
    }
  }
  return count;
}

int main(void)
{
  int result;
  rooster = 1;
  drake = 5;
  goose = 10;
  result = fun(rooster, drake, goose);
  return 0;
  return 0;
}


