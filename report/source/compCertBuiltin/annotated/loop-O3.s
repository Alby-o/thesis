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
# annotation: "L(mem(\"z\" + 0, 4)) = true"
# annotation: "L(mem(\"x\" + 0, 4))= mem(\"z\" + 0, 4) % 2 == 0"
	xorl	%edx, %edx
	xorl	%edi, %edi
# annotation: "L(0)= false"
# annotation: "_P_0: 0 % 2 == 0"
# annotation: "_Gamma_0: 0 -> LOW, 0 -> LOW"
.L100:
# annotation: "_invariant: %rdx % 2 == 0 & %rdx <= mem(\"z\" + 0, 4)"
# annotation: "_Gamma: %rdx -> LOW, %rdi -> (%rdx == mem(\"z\" + 0, 4)), mem(\"z\" + 0, 4) -> LOW"
.L101:
# annotation: "_invariant: %rdx <= mem(\"z\" + 0, 4)"
# annotation: "_Gamma: %rdx -> LOW"
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
	jne	.L101
	movl	x(%rip), %edi
	movq	%rdx, %rsi
	jmp	.L100
	.cfi_endproc
	.type	main, @function
	.size	main, . - main