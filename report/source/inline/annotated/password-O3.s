	.text
	.file	"password.c"
	.globl	setup_users             # -- Begin function setup_users
	.p2align	4, 0x90
	.type	setup_users,@function
setup_users:                            # @setup_users
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movq	%rax, %r14
	movl	$1768776801, 8(%rax)    # imm = 0x696D6461
	movw	$110, 12(%rax)
	movabsq	$3773839939640058932, %rax # imm = 0x345F5F6E316D6434
	movq	%rax, 264(%r14)
	movl	$6387301, 272(%r14)     # imm = 0x617665
	movq	$1000000, 520(%r14)     # imm = 0xF4240
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movq	%rax, %rbx
	movl	$1667853409, 8(%rax)    # imm = 0x63696C61
	movw	$101, 12(%rax)
	movabsq	$30224922890495338, %rax # imm = 0x6B61684040656A
	movq	%rax, 277(%rbx)
	movups	.L.str.3(%rip), %xmm0
	movups	%xmm0, 264(%rbx)
	movq	$783, 520(%rbx)         # imm = 0x30F
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movl	$1969513057, 8(%rax)    # imm = 0x75646261
	movw	$108, 12(%rax)
	movabsq	$7237900840733991280, %rcx # imm = 0x6472307773736170
	movq	%rcx, 264(%rax)
	movl	$3355185, 272(%rax)     # imm = 0x333231
	movq	$2, 520(%rax)
	movq	%rbx, (%r14)
	movq	%rax, (%rbx)
	movq	$0, (%rax)
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	setup_users, .Lfunc_end0-setup_users
	.cfi_endproc
                                        # -- End function
	.globl	print_users             # -- Begin function print_users
	.p2align	4, 0x90
	.type	print_users,@function
print_users:                            # @print_users
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$.Lstr, %edi
	callq	puts
	testq	%r14, %r14
	je	.LBB1_3
# %bb.1:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	leaq	8(%r14), %rdx
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf
	movq	(%r14), %r14
	addq	$1, %rbx
	testq	%r14, %r14
	jne	.LBB1_2
.LBB1_3:
	movl	$10, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	putchar                 # TAILCALL
.Lfunc_end1:
	.size	print_users, .Lfunc_end1-print_users
	.cfi_endproc
                                        # -- End function
	.globl	getUser                 # -- Begin function getUser
	.p2align	4, 0x90
	.type	getUser,@function
getUser:                                # @getUser
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testq	%rdi, %rdi
	je	.LBB2_4
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	leaq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB2_2
.LBB2_4:
	xorl	%ebx, %ebx
.LBB2_5:
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	getUser, .Lfunc_end2-getUser
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$512, %rsp              # imm = 0x200
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movq	%rax, %rbx
	movl	$1768776801, 8(%rax)    # imm = 0x696D6461
	movw	$110, 12(%rax)
	movabsq	$3773839939640058932, %rax # imm = 0x345F5F6E316D6434
	movq	%rax, 264(%rbx)
	movl	$6387301, 272(%rbx)     # imm = 0x617665
	movq	$1000000, 520(%rbx)     # imm = 0xF4240
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movq	%rax, %r14
	movl	$1667853409, 8(%rax)    # imm = 0x63696C61
	movw	$101, 12(%rax)
	movabsq	$30224922890495338, %rax # imm = 0x6B61684040656A
	movq	%rax, 277(%r14)
	movups	.L.str.3(%rip), %xmm0
	movups	%xmm0, 264(%r14)
	movq	$783, 520(%r14)         # imm = 0x30F
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movl	$1969513057, 8(%rax)    # imm = 0x75646261
	movw	$108, 12(%rax)
	movabsq	$7237900840733991280, %rcx # imm = 0x6472307773736170
	movq	%rcx, 264(%rax)
	movl	$3355185, 272(%rax)     # imm = 0x333231
	movq	$2, 520(%rax)
	movq	%r14, (%rbx)
	movq	%rax, (%r14)
	movq	$0, (%rax)
	movl	$.Lstr.18, %edi
	callq	puts
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%rsp, %rsi
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	testq	%rbx, %rbx
	je	.LBB3_4
# %bb.1:
	movq	%rsp, %r15
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	leaq	8(%rbx), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB3_2
.LBB3_4:
	movq	%rsp, %rsi
	movl	$.L.str.12, %edi
.LBB3_8:
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB3_9
.LBB3_5:
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	256(%rsp), %r15
	movl	$.L.str.11, %edi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	leaq	264(%rbx), %rdi
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_7
# %bb.6:
	movl	$.Lstr.19, %edi
	callq	puts
.LBB3_9:
	xorl	%eax, %eax
	addq	$512, %rsp              # imm = 0x200
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB3_7:
	.cfi_def_cfa_offset 544
	movl	$.L.str.15, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$10, %edi
	callq	putchar
	movl	$.L.str.16, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf
	movq	520(%rbx), %rsi
	movl	$.L.str.17, %edi
	jmp	.LBB3_8
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"admin"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"4dm1n__4eva"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"alice"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"!alice12!_veuje@@hak"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"abdul"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"passw0rd123"
	.size	.L.str.5, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" %02ld. %s\n"
	.size	.L.str.7, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Username: "
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%255s"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"User < %s > does not exist.\n"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Password: "
	.size	.L.str.13, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Logged in as < %s >!\n"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Welcome, %s!\n"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Your balance: $%ld\n"
	.size	.L.str.17, 20

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"--- USERS ---"
	.size	.Lstr, 14

	.type	.Lstr.18,@object        # @str.18
.Lstr.18:
	.asciz	"Welcome to BigBank Australia!"
	.size	.Lstr.18, 30

	.type	.Lstr.19,@object        # @str.19
.Lstr.19:
	.asciz	"ERROR: incorrect password"
	.size	.Lstr.19, 26

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
