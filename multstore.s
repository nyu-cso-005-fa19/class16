	.file	"multstore.c"
	.text
	.globl	mult2
	.type	mult2, @function
mult2:
	movq	%rdi, %rax
	imulq	%rsi, %rax
	ret
	.size	mult2, .-mult2
	.globl	multstore
	.type	multstore, @function
multstore:
	pushq	%rbx
	movq	%rdx, %rbx
	call	mult2
	movq	%rax, (%rbx)
	popq	%rbx
	ret
	.size	multstore, .-multstore
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
