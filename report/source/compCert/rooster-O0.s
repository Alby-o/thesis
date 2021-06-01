# File generated by CompCert 3.7
# Command line: rooster.c -O0 -S
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
.L100:
	leal	0(%edi,%esi,1), %r8d
	leal	0(%r8d,%edx,1), %eax
	testl	%eax, %eax
	jl	.L101
	cmpl	%esi, %edi
	jl	.L102
	xorl	%r8d, %r8d
	jmp	.L103
.L102:
	cmpl	%edx, %esi
	setl	%r8b
	movzbl	%r8b, %r8d
.L103:
	cmpl	$0, %r8d
	je	.L104
.L105:
	cmpl	%esi, %edi
	je	.L104
	leal	1(%edi), %edi
	movl	count(%rip), %eax
	leal	1(%eax), %ecx
	movl	%ecx, count(%rip)
.L106:
	cmpl	%edx, %esi
	je	.L105
	leal	-1(%edx), %edx
	movl	count(%rip), %r9d
	leal	1(%r9d), %r8d
	movl	%r8d, count(%rip)
	jmp	.L106
.L104:
	movl	count(%rip), %eax
.L101:
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
.L107:
.L108:
	movl	$1, %eax
	movl	%eax, rooster(%rip)
	movl	$5, %eax
	movl	%eax, drake(%rip)
	movl	$10, %eax
	movl	%eax, goose(%rip)
	movl	rooster(%rip), %edi
	movl	drake(%rip), %esi
	movl	goose(%rip), %edx
	call	fun
	xorl	%eax, %eax
	addq	$8, %rsp
	ret
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
	.section	"__compcert_ais_annotations","",@note
	.ascii "# file:rooster.c line:6 function:fun\n"
	.byte 7,8
	.quad .L100
	.ascii " CRITICAL COMMENT\n"
	.ascii "# file:rooster.c line:26 function:main\n"
	.byte 7,8
	.quad .L107
	.ascii " L(mem("
	.byte 7,8
	.quad goose
	.ascii ", 4)) = medium\n"
	.ascii "# file:rooster.c line:27 function:main\n"
	.byte 7,8
	.quad .L108
	.ascii " EXCEPTIONAL\n"