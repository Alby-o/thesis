	.text
	.file	"deadStoreElimination.c"
	.globl	deadStore               # -- Begin function deadStore
	.p2align	4, 0x90
	.type	deadStore,@function
deadStore:                              # @deadStore
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
                                        # kill: def $edi killed $edi def $rdi
	cmpl	%edi, %esi
	cmovlel	%esi, %edi
	leal	(%rdi,%rsi), %eax
	retq
.Lfunc_end0:
	.size	deadStore, .Lfunc_end0-deadStore
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
