# File generated by CompCert 3.7
# Command line: deadStoreElimination.c -S -O3 -o compCert/out/deadStoreElimination-O3.s
	.text
	.align	16
	.globl deadStore
deadStore:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
	leaq	16(%rsp), %rax
	movq	%rax, 0(%rsp)
.L100:
	cmpl	%esi, %edi
	jle	.L101
	leal	-1(%edi), %edi
	jmp	.L100
.L101:
	leal	0(%edi,%esi,1), %eax
	addq	$8, %rsp
	ret
	.cfi_endproc
	.type	deadStore, @function
	.size	deadStore, . - deadStore
	.text
	.align	16
	.globl main
main:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
	leaq	16(%rsp), %rax
	movq	%rax, 0(%rsp)
	movl	$2, %esi
	call	deadStore
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
