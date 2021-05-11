	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_setup_users            ## -- Begin function setup_users
	.p2align	4, 0x90
_setup_users:                           ## @setup_users
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$528, %edi              ## imm = 0x210
	callq	_malloc
	movq	%rax, %r14
	movl	$1768776801, 8(%rax)    ## imm = 0x696D6461
	movw	$110, 12(%rax)
	addq	$264, %rax              ## imm = 0x108
	movabsq	$3773839939640058932, %rcx ## imm = 0x345F5F6E316D6434
	movq	%rcx, 264(%r14)
	movl	$6387301, 272(%r14)     ## imm = 0x617665
	## InlineAsm Start
	## L(%rax) = High
	## InlineAsm End
	movq	$1000000, 520(%r14)     ## imm = 0xF4240
	movl	$528, %edi              ## imm = 0x210
	callq	_malloc
	movq	%rax, %rbx
	movl	$1667853409, 8(%rax)    ## imm = 0x63696C61
	movw	$101, 12(%rax)
	addq	$264, %rax              ## imm = 0x108
	movabsq	$3616783453400097057, %rcx ## imm = 0x32316563696C6121
	movq	%rcx, 264(%rbx)
	movabsq	$4640232043521138465, %rcx ## imm = 0x40656A7565765F21
	movq	%rcx, 272(%rbx)
	movabsq	$30224922890495338, %rcx ## imm = 0x6B61684040656A
	movq	%rcx, 277(%rbx)
	## InlineAsm Start
	## L(%rax) = High
	## InlineAsm End
	movq	$783, 520(%rbx)         ## imm = 0x30F
	movl	$528, %edi              ## imm = 0x210
	callq	_malloc
	movl	$1969513057, 8(%rax)    ## imm = 0x75646261
	movw	$108, 12(%rax)
	leaq	264(%rax), %rcx
	movabsq	$7237900840733991280, %rdx ## imm = 0x6472307773736170
	movq	%rdx, 264(%rax)
	movl	$3355185, 272(%rax)     ## imm = 0x333231
	## InlineAsm Start
	## L(%rcx) = High
	## InlineAsm End
	movq	$2, 520(%rax)
	movq	%rbx, (%r14)
	movq	%rax, (%rbx)
	movq	$0, (%rax)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_users            ## -- Begin function print_users
	.p2align	4, 0x90
_print_users:                           ## @print_users
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	leaq	L_str(%rip), %rdi
	callq	_puts
	testq	%r14, %r14
	je	LBB1_3
## %bb.1:
	movl	$1, %ebx
	leaq	L_.str.7(%rip), %r15
	.p2align	4, 0x90
LBB1_2:                                 ## =>This Inner Loop Header: Depth=1
	leaq	8(%r14), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	(%r14), %r14
	incq	%rbx
	testq	%r14, %r14
	jne	LBB1_2
LBB1_3:
	movl	$10, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	_getUser                ## -- Begin function getUser
	.p2align	4, 0x90
_getUser:                               ## @getUser
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testq	%rdi, %rdi
	je	LBB2_4
## %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.p2align	4, 0x90
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	leaq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB2_5
## %bb.3:                               ##   in Loop: Header=BB2_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB2_2
LBB2_4:
	xorl	%ebx, %ebx
LBB2_5:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$520, %rsp              ## imm = 0x208
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$528, %edi              ## imm = 0x210
	callq	_malloc
	movq	%rax, %rbx
	movl	$1768776801, 8(%rax)    ## imm = 0x696D6461
	movw	$110, 12(%rax)
	addq	$264, %rax              ## imm = 0x108
	movabsq	$3773839939640058932, %rcx ## imm = 0x345F5F6E316D6434
	movq	%rcx, 264(%rbx)
	movl	$6387301, 272(%rbx)     ## imm = 0x617665
	## InlineAsm Start
	## L(%rax) = High
	## InlineAsm End
	movq	$1000000, 520(%rbx)     ## imm = 0xF4240
	movl	$528, %edi              ## imm = 0x210
	callq	_malloc
	movq	%rax, %r14
	movl	$1667853409, 8(%rax)    ## imm = 0x63696C61
	movw	$101, 12(%rax)
	addq	$264, %rax              ## imm = 0x108
	movabsq	$3616783453400097057, %rcx ## imm = 0x32316563696C6121
	movq	%rcx, 264(%r14)
	movabsq	$4640232043521138465, %rcx ## imm = 0x40656A7565765F21
	movq	%rcx, 272(%r14)
	movabsq	$30224922890495338, %rcx ## imm = 0x6B61684040656A
	movq	%rcx, 277(%r14)
	## InlineAsm Start
	## L(%rax) = High
	## InlineAsm End
	movq	$783, 520(%r14)         ## imm = 0x30F
	movl	$528, %edi              ## imm = 0x210
	callq	_malloc
	movl	$1969513057, 8(%rax)    ## imm = 0x75646261
	movw	$108, 12(%rax)
	leaq	264(%rax), %rcx
	movabsq	$7237900840733991280, %rdx ## imm = 0x6472307773736170
	movq	%rdx, 264(%rax)
	movl	$3355185, 272(%rax)     ## imm = 0x333231
	## InlineAsm Start
	## L(%rcx) = High
	## InlineAsm End
	movq	$2, 520(%rax)
	movq	%r14, (%rbx)
	movq	%rax, (%r14)
	movq	$0, (%rax)
	leaq	L_str.18(%rip), %rdi
	callq	_puts
	leaq	L_.str.10(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	-288(%rbp), %rsi
	xorl	%eax, %eax
	callq	_scanf
	testq	%rbx, %rbx
	je	LBB3_4
## %bb.1:
	leaq	-288(%rbp), %r15
	.p2align	4, 0x90
LBB3_2:                                 ## =>This Inner Loop Header: Depth=1
	leaq	8(%rbx), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB3_5
## %bb.3:                               ##   in Loop: Header=BB3_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	LBB3_2
LBB3_4:
	leaq	L_.str.12(%rip), %rdi
	leaq	-288(%rbp), %rsi
LBB3_8:
	xorl	%eax, %eax
	callq	_printf
LBB3_9:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB3_11
## %bb.10:
	xorl	%eax, %eax
	addq	$520, %rsp              ## imm = 0x208
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_5:
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	-544(%rbp), %r15
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_scanf
	leaq	264(%rbx), %rdi
	movq	%r15, %rsi
	callq	_strcmp
	testl	%eax, %eax
	je	LBB3_7
## %bb.6:
	leaq	L_str.19(%rip), %rdi
	callq	_puts
	jmp	LBB3_9
LBB3_7:
	leaq	L_.str.15(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	leaq	L_.str.16(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	_printf
	movq	520(%rbx), %rsi
	leaq	L_.str.17(%rip), %rdi
	jmp	LBB3_8
LBB3_11:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"admin"

L_.str.1:                               ## @.str.1
	.asciz	"4dm1n__4eva"

L_.str.2:                               ## @.str.2
	.asciz	"alice"

L_.str.3:                               ## @.str.3
	.asciz	"!alice12!_veuje@@hak"

L_.str.4:                               ## @.str.4
	.asciz	"abdul"

L_.str.5:                               ## @.str.5
	.asciz	"passw0rd123"

L_.str.7:                               ## @.str.7
	.asciz	" %02ld. %s\n"

L_.str.10:                              ## @.str.10
	.asciz	"Username: "

L_.str.11:                              ## @.str.11
	.asciz	"%255s"

L_.str.12:                              ## @.str.12
	.asciz	"User < %s > does not exist.\n"

L_.str.13:                              ## @.str.13
	.asciz	"Password: "

L_.str.15:                              ## @.str.15
	.asciz	"Logged in as < %s >!\n"

L_.str.16:                              ## @.str.16
	.asciz	"Welcome, %s!\n"

L_.str.17:                              ## @.str.17
	.asciz	"Your balance: $%ld\n"

L_str:                                  ## @str
	.asciz	"--- USERS ---"

L_str.18:                               ## @str.18
	.asciz	"Welcome to BigBank Australia!"

L_str.19:                               ## @str.19
	.asciz	"ERROR: incorrect password"

.subsections_via_symbols
