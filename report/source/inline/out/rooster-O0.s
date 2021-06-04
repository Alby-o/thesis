	.text
	.file	"rooster.c"
	.globl	fun                     # -- Begin function fun
	.p2align	4, 0x90
	.type	fun,@function
fun:                                    # @fun
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-8(%rbp), %eax
	addl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_2:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_11
# %bb.3:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_11
# %bb.4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	je	.LBB0_10
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	movl	fun.count, %eax
	addl	$1, %eax
	movl	%eax, fun.count
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	movl	fun.count, %eax
	addl	$1, %eax
	movl	%eax, fun.count
	jmp	.LBB0_7
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	fun.count, %eax
	movl	%eax, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	fun, .Lfunc_end0-fun
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$1, rooster
	movl	$5, drake
	movl	$10, goose
	movl	rooster, %edi
	movl	drake, %esi
	movl	goose, %edx
	callq	fun
	xorl	%ecx, %ecx
	movl	%eax, -8(%rbp)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	fun.count,@object       # @fun.count
	.local	fun.count
	.comm	fun.count,4,4
	.type	rooster,@object         # @rooster
	.comm	rooster,4,4
	.type	drake,@object           # @drake
	.comm	drake,4,4
	.type	goose,@object           # @goose
	.comm	goose,4,4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fun
	.addrsig_sym fun.count
	.addrsig_sym rooster
	.addrsig_sym drake
	.addrsig_sym goose
