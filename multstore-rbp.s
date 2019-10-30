	.file	"call_incr.c"
	.text
	.globl	incr
	.type	incr, @function
incr:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	popq	%rbp
	ret
	.size	incr, .-incr
	.globl	call_incr
	.type	call_incr, @function
call_incr:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$15213, -8(%rbp)
	leaq	-8(%rbp), %rdi
	movl	$3000, %esi
	call	incr
	addq	-8(%rbp), %rax
	leave
	ret
	.size	call_incr, .-call_incr
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
