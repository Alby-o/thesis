	.text
	.file	"rooster.c"
	.globl	fun                     # -- Begin function fun
	.p2align	4, 0x90
	.type	fun,@function
fun:                                    # @fun
	.cfi_startproc
# %bb.0:
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
                                        # kill: def $edi killed $edi def $rdi
	leal	(%rsi,%rdi), %eax
	addl	%edx, %eax
	js	.LBB0_9
# %bb.1:
	movl	fun.count(%rip), %eax
	cmpl	%esi, %edi
	jge	.LBB0_9
# %bb.2:
	cmpl	%edx, %esi
	jge	.LBB0_9
# %bb.3:
	leal	1(%rdi), %ecx
	cmpl	%esi, %ecx
	jne	.LBB0_5
# %bb.4:
	subl	%esi, %eax
	addl	%edx, %eax
	addl	$1, %eax
	jmp	.LBB0_8
.LBB0_5:
	addl	$-1, %esi
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	addl	$-1, %esi
	cmpl	%esi, %edi
	jne	.LBB0_6
# %bb.7:
	addl	%edx, %eax
	subl	%esi, %eax
.LBB0_8:
	movl	%eax, fun.count(%rip)
.LBB0_9:
                                        # kill: def $eax killed $eax killed $rax
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
	movl	$1, rooster(%rip)
	movl	$5, drake(%rip)
	movl	$10, goose(%rip)
	addl	$9, fun.count(%rip)
	xorl	%eax, %eax
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
