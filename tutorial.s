.global _start
.intel_syntax noprefix

_start:
	// sys_write (print)
	mov rax, 1
	mov rdi, 1
	lea rsi, [msg]
	mov rdx, 41
	syscall 

	// sys_exit (exit)
	mov rax, 60
	mov rdi, 69
	syscall
	
msg:
	.asciz "anything starting with \"java\" sucks.\n"

