# File generated by CompCert 3.7
# Command line: pread.c -S -O0 -o compCert/out/pread-O0.s
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
	movl	z(%rip), %edx
	movq	%rdx, %rsi
	movq	%rsi, %rax
	testl	%eax, %eax
	leal	1(%eax), %ecx
	cmovl	%rcx, %rax
	sarl	$1, %eax
	leal	0(,%eax,2), %edi
	subl	%edi, %esi
	testl	%esi, %esi
	jne	.L100
	movl	x(%rip), %esi
	movl	z(%rip), %esi
	jmp	.L100
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
