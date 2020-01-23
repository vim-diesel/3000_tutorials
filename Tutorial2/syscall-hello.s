	.file	"syscall-hello.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	buf(%rip), %rdx
	movl	$13, %ecx
	movl	$1, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	syscall@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.globl	buf
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello world!\n"
	.section	.data.rel.local,"aw",@progbits
	.align 8
	.type	buf, @object
	.size	buf, 8
buf:
	.quad	.LC0
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
