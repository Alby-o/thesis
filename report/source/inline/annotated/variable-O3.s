	.text
	.file	"variable.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI0_0:
	.long	1078530011              # float 3.14159274
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4608627556095693531     # double 1.3208849398808329
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	#APP
	# annotation: $-10 = int
	#NO_APP
	#APP
	# annotation: $98 = char
	#NO_APP
	#APP
	# annotation: $-98 = unsigned int
	#NO_APP
	#APP
	# annotation: $1 = short
	#NO_APP
	#APP
	# annotation: $4294967296 = long
	#NO_APP
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	#APP
	# annotation: %xmm0 = float
	#NO_APP
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	#APP
	# annotation: %xmm0 = double
	#NO_APP
	leal	134217625(%rdi), %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
