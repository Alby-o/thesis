	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_fun                    ## -- Begin function fun
	.p2align	4, 0x90
_fun:                                   ## @fun
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edx killed $edx def $rdx
                                        ## kill: def $esi killed $esi def $rsi
                                        ## kill: def $edi killed $edi def $rdi
	## InlineAsm Start
	## CRITICAL COMMENT
	## InlineAsm End
	leal	(%rsi,%rdi), %eax
	addl	%edx, %eax
	js	LBB0_9
## %bb.1:
	movl	_fun.count(%rip), %eax
	cmpl	%esi, %edi
	jge	LBB0_9
## %bb.2:
	cmpl	%edx, %esi
	jge	LBB0_9
## %bb.3:
	leal	1(%rdi), %ecx
	cmpl	%esi, %ecx
	jne	LBB0_5
## %bb.4:
	subl	%esi, %eax
	leal	1(%rax,%rdx), %eax
	jmp	LBB0_8
LBB0_5:
	decl	%esi
	.p2align	4, 0x90
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	decl	%esi
	cmpl	%esi, %edi
	jne	LBB0_6
## %bb.7:
	addl	%edx, %eax
	subl	%esi, %eax
LBB0_8:
	movl	%eax, _fun.count(%rip)
LBB0_9:
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_goose@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	## InlineAsm Start
	## L(%ecx) = Medium
	## InlineAsm End
	## InlineAsm Start
	## EXCEPTIONAL
	## InlineAsm End
	movq	_rooster@GOTPCREL(%rip), %rcx
	movl	$1, (%rcx)
	movq	_drake@GOTPCREL(%rip), %rcx
	movl	$5, (%rcx)
	movl	$10, (%rax)
	## InlineAsm Start
	## CRITICAL COMMENT
	## InlineAsm End
	addl	$9, _fun.count(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_fun.count,4,2   ## @fun.count
	.comm	_goose,4,2              ## @goose
	.comm	_rooster,4,2            ## @rooster
	.comm	_drake,4,2              ## @drake
.subsections_via_symbols
