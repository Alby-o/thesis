	.text
	.file	"variable.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4612538099476886402     # double 2.3784000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	1078530011              # float 3.14159274
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	xorl	%eax, %eax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-10, -20(%rbp)
	movb	$98, -21(%rbp)
	movsbl	-21(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movw	$1, -30(%rbp)
	movabsq	$4294967296, %rdx       # imm = 0x100000000
	movq	%rdx, -40(%rbp)
	movss	%xmm1, -44(%rbp)
	movss	-44(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-40(%rbp), %rax
	cqto
	movl	$32, %esi
	idivq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	addl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movswl	-30(%rbp), %ecx
	addl	%ecx, %eax
	cvttss2si	-44(%rbp), %ecx
	addl	%ecx, %eax
	cvttsd2si	-56(%rbp), %ecx
	addl	%ecx, %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
