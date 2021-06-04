	.text
	.file	"password.c"
	.globl	setup_users             # -- Begin function setup_users
	.p2align	4, 0x90
	.type	setup_users,@function
setup_users:                            # @setup_users
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$528, %edi              # imm = 0x210
	callq	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$.L.str, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-8(%rbp), %rcx
	addq	$264, %rcx              # imm = 0x108
	movl	$.L.str.1, %esi
	movq	%rcx, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-8(%rbp), %rcx
	movq	$1000000, 520(%rcx)     # imm = 0xF4240
	movl	$528, %edi              # imm = 0x210
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movl	$.L.str.2, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-16(%rbp), %rcx
	addq	$264, %rcx              # imm = 0x108
	movl	$.L.str.3, %esi
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-16(%rbp), %rcx
	movq	$783, 520(%rcx)         # imm = 0x30F
	movl	$528, %edi              # imm = 0x210
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movl	$.L.str.4, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-24(%rbp), %rcx
	addq	$264, %rcx              # imm = 0x108
	movl	$.L.str.5, %esi
	movq	%rcx, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	strcpy
	movq	-24(%rbp), %rcx
	movq	$2, 520(%rcx)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-24(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-8(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	movq	$0, -16(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB1_1
.LBB1_3:
	movabsq	$.L.str.8, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_5:
	movq	$0, -8(%rbp)
.LBB2_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$576, %rsp              # imm = 0x240
	movl	$0, -4(%rbp)
	callq	setup_users
	movq	%rax, -16(%rbp)
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	movl	%eax, -548(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	leaq	-272(%rbp), %rsi
	movabsq	$.L.str.11, %rdi
	movl	%eax, -552(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	leaq	-272(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -556(%rbp)        # 4-byte Spill
	callq	getUser
	movq	%rax, -280(%rbp)
	cmpq	$0, -280(%rbp)
	jne	.LBB3_2
# %bb.1:
	leaq	-272(%rbp), %rsi
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
	jmp	.LBB3_5
.LBB3_2:
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	printf
	leaq	-544(%rbp), %rsi
	movabsq	$.L.str.11, %rdi
	movl	%eax, -560(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	leaq	-544(%rbp), %rsi
	movq	-280(%rbp), %rcx
	addq	$264, %rcx              # imm = 0x108
	movq	%rcx, %rdi
	movl	%eax, -564(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_4
# %bb.3:
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
	jmp	.LBB3_5
.LBB3_4:
	movq	-280(%rbp), %rax
	addq	$8, %rax
	movabsq	$.L.str.15, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-280(%rbp), %rcx
	addq	$8, %rcx
	movabsq	$.L.str.16, %rdi
	movq	%rcx, %rsi
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-280(%rbp), %rcx
	movq	520(%rcx), %rsi
	movabsq	$.L.str.17, %rdi
	movl	%eax, -576(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
.LBB3_5:
	movl	-4(%rbp), %eax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
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

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"--- USERS ---\n"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" %02ld. %s\n"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\n"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Welcome to BigBank Australia!\n"
	.size	.L.str.9, 31

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

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ERROR: incorrect password\n"
	.size	.L.str.14, 27

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

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setup_users
	.addrsig_sym malloc
	.addrsig_sym strcpy
	.addrsig_sym printf
	.addrsig_sym getUser
	.addrsig_sym strcmp
	.addrsig_sym __isoc99_scanf
