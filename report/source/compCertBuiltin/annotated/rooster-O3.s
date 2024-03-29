# File generated by CompCert 3.7
# Command line: rooster.c -S -O3 -o annotated/rooster-O3.s
	.comm	rooster, 4, 4
	.comm	drake, 4, 4
	.comm	goose, 4, 4
	.data
	.align	4
count:
	.long	0
	.type	count, @object
	.size	count, . - count
	.text
	.align	16
	.globl fun
fun:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
	leaq	16(%rsp), %rax
	movq	%rax, 0(%rsp)
# annotation: "CRITICAL COMMENT"
	leal	0(%edi,%esi,1), %r9d
	leal	0(%r9d,%edx,1), %eax
	testl	%eax, %eax
	jl	.L100
	cmpl	%edx, %esi
	setl	%al
	movzbl	%al, %eax
	xorl	%r8d, %r8d
	cmpl	%esi, %edi
	cmovge	%r8, %rax
	cmpl	$0, %eax
	je	.L101
.L102:
	cmpl	%esi, %edi
	je	.L101
	leal	1(%edi), %edi
	movl	count(%rip), %ecx
	leal	1(%ecx), %r8d
	movl	%r8d, count(%rip)
.L103:
	cmpl	%edx, %esi
	je	.L102
	leal	-1(%edx), %edx
	movl	count(%rip), %r10d
	leal	1(%r10d), %r8d
	movl	%r8d, count(%rip)
	jmp	.L103
.L101:
	movl	count(%rip), %eax
.L100:
	addq	$8, %rsp
	ret
	.cfi_endproc
	.type	fun, @function
	.size	fun, . - fun
	.text
	.align	16
	.globl main
main:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
	leaq	16(%rsp), %rax
	movq	%rax, 0(%rsp)
# annotation: "L(mem(\"goose\" + 0, 4)) = medium"
# annotation: "EXCEPTIONAL"
	movl	$1, %eax
	movl	%eax, rooster(%rip)
	movl	$5, %eax
	movl	%eax, drake(%rip)
	movl	$10, %eax
	movl	%eax, goose(%rip)
	movl	$1, %edi
	movl	$5, %esi
	movl	$10, %edx
	call	fun
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
