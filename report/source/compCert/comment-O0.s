# File generated by CompCert 3.7
# Command line: comment.c -O0 -S
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
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
	.section	"__compcert_ais_annotations","",@note
	.ascii "# file:comment.c line:2 function:main\n"
	.byte 7,8
	.quad .L100
	.ascii " Critical Comment\n"