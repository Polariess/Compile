	.text
	.file	"2.c"
	.globl	main                            # -- Begin function main
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$0, a
	movl	$1, b
	movl	$1, i
	movabsq	$.L.str, %rdi
	movabsq	$n, %rsi
	movb	$0, %al
	callq	__isoc99_scanf@PLT
	movl	a, %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	b, %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	i, %eax
	cmpl	n, %eax
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	b, %eax
	movl	%eax, t
	movl	a, %eax
	addl	b, %eax
	movl	%eax, b
	movl	b, %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	t, %eax
	movl	%eax, a
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
	jmp	.LBB0_1
.LBB0_3:
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2, 0x0
a:
	.long	0                               # 0x0
	.size	a, 4

	.type	b,@object                       # @b
	.globl	b
	.p2align	2, 0x0
b:
	.long	0                               # 0x0
	.size	b, 4

	.type	i,@object                       # @i
	.globl	i
	.p2align	2, 0x0
i:
	.long	0                               # 0x0
	.size	i, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	n,@object                       # @n
	.bss
	.globl	n
	.p2align	2, 0x0
n:
	.long	0                               # 0x0
	.size	n, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%d\n"
	.size	.L.str.1, 4

	.type	t,@object                       # @t
	.bss
	.globl	t
	.p2align	2, 0x0
t:
	.long	0                               # 0x0
	.size	t, 4

	.ident	"Ubuntu clang version 16.0.6 (15)"
	.section	".note.GNU-stack","",@progbits
