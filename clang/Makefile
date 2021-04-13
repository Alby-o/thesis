CC=clang
O=0
CFLAGS=

clang: CC=clang
clang: all

gcc: CC=gcc
gcc: all

all: global

global: global-$(CC)-O$(O).s
	$(CC) global-$(CC)-O$(O).s -o global-$(CC)-O$(O).out

global-$(CC)-O$(O).s: global.c
	$(CC) $(CFLAGS) global.c -S -O$(O) -o global-$(CC)-O$(O).s

clean:
	rm *.out *.s