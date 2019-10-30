	.file	"call_incr.c"
	.text
	.globl	incr
	.type	incr, @function
incr:
	movq	(%rdi), %rax
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	ret
	.size	incr, .-incr
	.globl	call_incr
	.type	call_incr, @function
call_incr:
	subq	$16, %rsp
	movq	$15213, 8(%rsp)
	leaq	8(%rsp), %rdi
	movl	$3000, %esi
	call	incr
	addq	8(%rsp), %rax
	addq	$16, %rsp
	ret
	.size	call_incr, .-call_incr
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
