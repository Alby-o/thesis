# File generated by CompCert 3.7
# Command line: -dc -S password.c
	.section	.rodata
	.align	1
__stringlit_7:
	.ascii	"--- USERS ---\012\000"
	.type	__stringlit_7, @object
	.size	__stringlit_7, . - __stringlit_7
	.section	.rodata
	.align	1
__stringlit_6:
	.ascii	"passw0rd123\000"
	.type	__stringlit_6, @object
	.size	__stringlit_6, . - __stringlit_6
	.section	.rodata
	.align	1
__stringlit_4:
	.ascii	"!alice12!_veuje@@hak\000"
	.type	__stringlit_4, @object
	.size	__stringlit_4, . - __stringlit_4
	.section	.rodata
	.align	1
__stringlit_14:
	.ascii	"Password: \000"
	.type	__stringlit_14, @object
	.size	__stringlit_14, . - __stringlit_14
	.section	.rodata
	.align	1
__stringlit_18:
	.ascii	"Your balance: $%ld\012\000"
	.type	__stringlit_18, @object
	.size	__stringlit_18, . - __stringlit_18
	.section	.rodata
	.align	1
__stringlit_13:
	.ascii	"User < %s > does not exist.\012\000"
	.type	__stringlit_13, @object
	.size	__stringlit_13, . - __stringlit_13
	.section	.rodata
	.align	1
__stringlit_8:
	.ascii	" %02ld. %s\012\000"
	.type	__stringlit_8, @object
	.size	__stringlit_8, . - __stringlit_8
	.section	.rodata
	.align	1
__stringlit_1:
	.ascii	"admin\000"
	.type	__stringlit_1, @object
	.size	__stringlit_1, . - __stringlit_1
	.section	.rodata
	.align	1
__stringlit_2:
	.ascii	"4dm1n__4eva\000"
	.type	__stringlit_2, @object
	.size	__stringlit_2, . - __stringlit_2
	.section	.rodata
	.align	1
__stringlit_3:
	.ascii	"alice\000"
	.type	__stringlit_3, @object
	.size	__stringlit_3, . - __stringlit_3
	.section	.rodata
	.align	1
__stringlit_11:
	.ascii	"Username: \000"
	.type	__stringlit_11, @object
	.size	__stringlit_11, . - __stringlit_11
	.section	.rodata
	.align	1
__stringlit_5:
	.ascii	"abdul\000"
	.type	__stringlit_5, @object
	.size	__stringlit_5, . - __stringlit_5
	.section	.rodata
	.align	1
__stringlit_17:
	.ascii	"Welcome, %s!\012\000"
	.type	__stringlit_17, @object
	.size	__stringlit_17, . - __stringlit_17
	.section	.rodata
	.align	1
__stringlit_12:
	.ascii	"%255s\000"
	.type	__stringlit_12, @object
	.size	__stringlit_12, . - __stringlit_12
	.section	.rodata
	.align	1
__stringlit_9:
	.ascii	"\012\000"
	.type	__stringlit_9, @object
	.size	__stringlit_9, . - __stringlit_9
	.section	.rodata
	.align	1
__stringlit_15:
	.ascii	"ERROR: incorrect password\012\000"
	.type	__stringlit_15, @object
	.size	__stringlit_15, . - __stringlit_15
	.section	.rodata
	.align	1
__stringlit_10:
	.ascii	"Welcome to BigBank Australia!\012\000"
	.type	__stringlit_10, @object
	.size	__stringlit_10, . - __stringlit_10
	.section	.rodata
	.align	1
__stringlit_16:
	.ascii	"Logged in as < %s >!\012\000"
	.type	__stringlit_16, @object
	.size	__stringlit_16, . - __stringlit_16
	.text
	.align	16
	.globl setup_users
setup_users:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_adjust_cfa_offset	40
	leaq	48(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	$528, %rdi
	call	malloc
	movq	%rax, %rbp
	leaq	8(%rbp), %rdi
	leaq	__stringlit_1(%rip), %rsi
	call	strcpy
	leaq	264(%rbp), %rdi
	leaq	__stringlit_2(%rip), %rsi
	call	strcpy
	movq	$1000000, %rax
	movq	%rax, 520(%rbp)
	movq	$528, %rdi
	call	malloc
	movq	%rax, %r12
	leaq	8(%r12), %rdi
	leaq	__stringlit_3(%rip), %rsi
	call	strcpy
	leaq	264(%r12), %rdi
	leaq	__stringlit_4(%rip), %rsi
	call	strcpy
	movq	$783, %rsi
	movq	%rsi, 520(%r12)
	movq	$528, %rdi
	call	malloc
	movq	%rax, %rbx
	leaq	8(%rbx), %rdi
	leaq	__stringlit_5(%rip), %rsi
	call	strcpy
	leaq	264(%rbx), %rdi
	leaq	__stringlit_6(%rip), %rsi
	call	strcpy
	movq	$2, %r10
	movq	%r10, 520(%rbx)
	movq	%r12, 0(%rbp)
	movq	%rbx, 0(%r12)
	xorq	%r8, %r8
	movq	%r8, 0(%rbx)
	movq	%rbp, %rax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	addq	$40, %rsp
	ret
	.cfi_endproc
	.type	setup_users, @function
	.size	setup_users, . - setup_users
	.text
	.align	16
	.globl print_users
print_users:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
	leaq	32(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rdi, %rbp
	leaq	__stringlit_7(%rip), %rdi
	movl	$0, %eax
	call	printf
	xorq	%rbx, %rbx
.L100:
	cmpq	$0, %rbp
	je	.L101
	leaq	1(%rbx), %rbx
	leaq	__stringlit_8(%rip), %rdi
	leaq	8(%rbp), %rdx
	movq	%rbx, %rsi
	movl	$0, %eax
	call	printf
	movq	0(%rbp), %rbp
	jmp	.L100
.L101:
	leaq	__stringlit_9(%rip), %rdi
	movl	$0, %eax
	call	printf
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.cfi_endproc
	.type	print_users, @function
	.size	print_users, . - print_users
	.text
	.align	16
	.globl getUser
getUser:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
	leaq	32(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%rsi, %rbp
	movq	%rdi, %rbx
.L102:
	cmpq	$0, %rbx
	je	.L103
	leaq	8(%rbx), %rdi
	movq	%rbp, %rsi
	call	strcmp
	testl	%eax, %eax
	je	.L104
	movq	0(%rbx), %rbx
	jmp	.L102
.L103:
	xorq	%rbx, %rbx
.L104:
	movq	%rbx, %rax
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	addq	$24, %rsp
	ret
	.cfi_endproc
	.type	getUser, @function
	.size	getUser, . - getUser
	.text
	.align	16
	.globl main
main:
	.cfi_startproc
	subq	$536, %rsp
	.cfi_adjust_cfa_offset	536
	leaq	544(%rsp), %rax
	movq	%rax, 0(%rsp)
	movq	%rbx, 8(%rsp)
	call	setup_users
	movq	%rax, %rbx
	leaq	__stringlit_10(%rip), %rdi
	movl	$0, %eax
	call	printf
	leaq	__stringlit_11(%rip), %rdi
	movl	$0, %eax
	call	printf
	leaq	__stringlit_12(%rip), %rdi
	leaq	16(%rsp), %rsi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	call	getUser
	movq	%rax, %rbx
	cmpq	$0, %rbx
	jne	.L105
	leaq	__stringlit_13(%rip), %rdi
	leaq	16(%rsp), %rsi
	movl	$0, %eax
	call	printf
	xorl	%eax, %eax
	jmp	.L106
.L105:
	leaq	__stringlit_14(%rip), %rdi
	movl	$0, %eax
	call	printf
	leaq	__stringlit_12(%rip), %rdi
	leaq	272(%rsp), %rsi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	264(%rbx), %rdi
	leaq	272(%rsp), %rsi
	call	strcmp
	testl	%eax, %eax
	je	.L107
	leaq	__stringlit_15(%rip), %rdi
	movl	$0, %eax
	call	printf
	xorl	%eax, %eax
	jmp	.L106
.L107:
	leaq	__stringlit_16(%rip), %rdi
	leaq	8(%rbx), %rsi
	movl	$0, %eax
	call	printf
	leaq	__stringlit_9(%rip), %rdi
	movl	$0, %eax
	call	printf
	leaq	__stringlit_17(%rip), %rdi
	leaq	8(%rbx), %rsi
	movl	$0, %eax
	call	printf
	leaq	__stringlit_18(%rip), %rdi
	movq	520(%rbx), %rsi
	movl	$0, %eax
	call	printf
	xorl	%eax, %eax
.L106:
	movq	8(%rsp), %rbx
	addq	$536, %rsp
	ret
	.cfi_endproc
	.type	main, @function
	.size	main, . - main
