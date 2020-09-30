struct user_t;
struct user_t {
  struct user_t *next;
  signed char name[256];
  signed char password[256];
  unsigned long long balance;
};

static signed char const __stringlit_7[15];

static signed char const __stringlit_6[12];

static signed char const __stringlit_4[21];

static signed char const __stringlit_14[11];

static signed char const __stringlit_18[20];

static signed char const __stringlit_13[29];

static signed char const __stringlit_8[12];

static signed char const __stringlit_1[6];

static signed char const __stringlit_2[12];

static signed char const __stringlit_3[6];

static signed char const __stringlit_11[11];

static signed char const __stringlit_5[6];

static signed char const __stringlit_17[14];

static signed char const __stringlit_12[6];

static signed char const __stringlit_9[2];

static signed char const __stringlit_15[27];

static signed char const __stringlit_10[31];

static signed char const __stringlit_16[22];

extern struct user_t *setup_users(void);

extern void print_users(struct user_t *);

extern struct user_t *getUser(struct user_t *, signed char *);

extern int main(void);

signed char const __stringlit_7[15] = "--- USERS ---\012";

signed char const __stringlit_6[12] = "passw0rd123";

signed char const __stringlit_4[21] = "!alice12!_veuje@@hak";

signed char const __stringlit_14[11] = "Password: ";

signed char const __stringlit_18[20] = "Your balance: $%ld\012";

signed char const __stringlit_13[29] = "User < %s > does not exist.\012";

signed char const __stringlit_8[12] = " %02ld. %s\012";

signed char const __stringlit_1[6] = "admin";

signed char const __stringlit_2[12] = "4dm1n__4eva";

signed char const __stringlit_3[6] = "alice";

signed char const __stringlit_11[11] = "Username: ";

signed char const __stringlit_5[6] = "abdul";

signed char const __stringlit_17[14] = "Welcome, %s!\012";

signed char const __stringlit_12[6] = "%255s";

signed char const __stringlit_9[2] = "\012";

signed char const __stringlit_15[27] = "ERROR: incorrect password\012";

signed char const __stringlit_10[31] = "Welcome to BigBank Australia!\012";

signed char const __stringlit_16[22] = "Logged in as < %s >!\012";

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

extern int printf(signed char *, ...);

extern int __isoc99_scanf(signed char *, ...);

extern void *malloc(unsigned long long);

extern signed char *strcpy(signed char *, signed char *);

extern int strcmp(signed char *, signed char *);

struct user_t *setup_users(void)
{
  struct user_t *user_admin;
  struct user_t *user_alice;
  struct user_t *user_abdul;
  user_admin = malloc(sizeof(struct user_t));
  strcpy(((*user_admin)).name, __stringlit_1);
  strcpy(((*user_admin)).password, __stringlit_2);
  __builtin_annot("# file:password.c line:20 function:setup_users\n%here L(%e1) = high",
                  ((*user_admin)).password);
  ((*user_admin)).balance = 1000000;
  user_alice = malloc(sizeof(struct user_t));
  strcpy(((*user_alice)).name, __stringlit_3);
  strcpy(((*user_alice)).password, __stringlit_4);
  ((*user_alice)).balance = 783;
  user_abdul = malloc(sizeof(struct user_t));
  strcpy(((*user_abdul)).name, __stringlit_5);
  strcpy(((*user_abdul)).password, __stringlit_6);
  ((*user_abdul)).balance = 2;
  ((*user_admin)).next = user_alice;
  ((*user_alice)).next = user_abdul;
  ((*user_abdul)).next = (void *) 0;
  return user_admin;
}

void print_users(struct user_t *users)
{
  unsigned long long count;
  printf(__stringlit_7);
  count = 0;
  while (users != (void *) 0) {
    printf(__stringlit_8, count += 1, ((*users)).name);
    users = ((*users)).next;
  }
  printf(__stringlit_9);
}

struct user_t *getUser(struct user_t *user_list, signed char *name)
{
  while (user_list != (void *) 0) {
    if (strcmp(((*user_list)).name, name) == 0) {
      return user_list;
    }
    user_list = ((*user_list)).next;
  }
  return (void *) 0;
}

int main(void)
{
  struct user_t *users;
  signed char username[256];
  struct user_t *user;
  signed char password[256];
  users = setup_users();
  printf(__stringlit_10);
  printf(__stringlit_11);
  __isoc99_scanf(__stringlit_12, username);
  user = getUser(users, username);
  if (user == (void *) 0) {
    printf(__stringlit_13, username);
    return 0;
  }
  printf(__stringlit_14);
  __isoc99_scanf(__stringlit_12, password);
  if (strcmp(((*user)).password, password) != 0) {
    printf(__stringlit_15);
    return 0;
  }
  printf(__stringlit_16, ((*user)).name);
  printf(__stringlit_9);
  printf(__stringlit_17, ((*user)).name);
  printf(__stringlit_18, ((*user)).balance);
  return 0;
}


