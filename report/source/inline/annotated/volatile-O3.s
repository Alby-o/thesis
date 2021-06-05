	.text
	.file	"volatile.c"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	movl	x(%rip), %eax
	#APP
	# annotation: %eax = High
	#NO_APP
	movl	x(%rip), %eax
	addl	$1, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	x,@object               # @x
	.comm	x,4,4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym x
