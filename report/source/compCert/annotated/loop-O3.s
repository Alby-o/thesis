# File generated by CompCert 3.7
# Command line: loop.c -S -O3 -o annotated/loop-O3.s
	.comm	z, 4, 4
	.comm	x, 4, 4
	.text
	.align	16
	.globl main
main:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
	leaq	16(%rsp), %rax
	movq	%rax, 0(%rsp)
.L100:
.L101:
	xorl	%edx, %edx
	xorl	%edi, %edi
.L102:
.L103:
.L104:
	nop
.L105:
.L106:
.L107:
	nop
.L108:
.L109:
.L110:
	movl	z(%rip), %edx
	movq	%rdx, %rax
	testl	%eax, %eax
	leal	1(%eax), %ecx
	cmovl	%rcx, %rax
	sarl	$1, %eax
	leal	0(,%eax,2), %edi
	movq	%rdx, %rcx
	subl	%edi, %ecx
	testl	%ecx, %ecx
	jne	.L108
	movl	x(%rip), %edi
	movq	%rdx, %rsi
	jmp	.L105
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
	.section	"__compcert_ais_annotations","",@note
	.ascii "# file:loop.c line:7 function:main\n"
	.byte 7,8
	.quad .L100
	.ascii " L(mem("
	.byte 7,8
	.quad z
	.ascii ", 4)) = true\n"
	.ascii "# file:loop.c line:8 function:main\n"
	.byte 7,8
	.quad .L101
	.ascii " L(mem("
	.byte 7,8
	.quad x
	.ascii ", 4))= mem("
	.byte 7,8
	.quad z
	.ascii ", 4) % 2 == 0\n"
	.ascii "# file:loop.c line:11 function:main\n"
	.byte 7,8
	.quad .L102
	.ascii " L(0)= false\n"
	.ascii "# file:loop.c line:14 function:main\n"
	.byte 7,8
	.quad .L103
	.ascii " _P_0: 0 % 2 == 0\n"
	.ascii "# file:loop.c line:15 function:main\n"
	.byte 7,8
	.quad .L104
	.ascii " _Gamma_0: 0 -> LOW, 0 -> LOW\n"
	.ascii "# file:loop.c line:19 function:main\n"
	.byte 7,8
	.quad .L106
	.ascii " _invariant: reg(\"rdx\") % 2 == 0 & reg(\"rdx\") <= mem("
	.byte 7,8
	.quad z
	.ascii ", 4)\n"
	.ascii "# file:loop.c line:20 function:main\n"
	.byte 7,8
	.quad .L107
	.ascii " _Gamma: reg(\"rdx\") -> LOW, reg(\"rdi\") -> (reg(\"rdx\") == mem("
	.byte 7,8
	.quad z
	.ascii ", 4)), mem("
	.byte 7,8
	.quad z
	.ascii ", 4) -> LOW\n"
	.ascii "# file:loop.c line:22 function:main\n"
	.byte 7,8
	.quad .L109
	.ascii " _invariant: reg(\"rdx\") <= mem("
	.byte 7,8
	.quad z
	.ascii ", 4)\n"
	.ascii "# file:loop.c line:23 function:main\n"
	.byte 7,8
	.quad .L110
	.ascii " _Gamma: reg(\"rdx\") -> LOW\n"
