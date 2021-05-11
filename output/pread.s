	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
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
	movq	_z@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	## InlineAsm Start
	## WPIF: L(%ecx) = true
	## InlineAsm End
	movq	_x@GOTPCREL(%rip), %r8
	movl	(%r8), %edx
	movl	(%rax), %esi
	## InlineAsm Start
	## WPIF: L(%edx) = %esi % 2 == 0
	## InlineAsm End
	## InlineAsm Start
	## WPIF: _P_0: $0 % 2 == 0
	## InlineAsm End
	## InlineAsm Start
	## WPIF: _Gamma_0: $0 -> LOW, $0 -> LOW
	## InlineAsm End
	## InlineAsm Start
	## WPIF: L($0) = false
	## InlineAsm End
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	## InlineAsm Start
	## WPIF: _invariant: %edx % 2 == 0 /\ %edx <= z
	## InlineAsm End
	movl	(%rax), %edi
	movl	(%rax), %ecx
	## InlineAsm Start
	## WPIF: _Gamma: %edx -> LOW, %esi -> (%edx == %edi), %ecx -> LOW
	## InlineAsm End
	.p2align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rax), %ecx
	## InlineAsm Start
	## WPIF: _invariant: %edx <= %ecx
	## InlineAsm End
	## InlineAsm Start
	## WPIF: _Gamma: %edx -> LOW
	## InlineAsm End
	movl	(%rax), %edx
	testb	$1, %dl
	jne	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	(%r8), %esi
	movl	(%rax), %ecx
	jmp	LBB0_1
	.cfi_endproc
                                        ## -- End function
	.comm	_z,4,2                  ## @z
	.comm	_x,4,2                  ## @x
.subsections_via_symbols
