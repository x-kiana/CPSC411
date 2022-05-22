global start

section .text

start:
	mov r8, 5

fact:
	mov r9, 1

fact_acc:
	cmp r8, 0
	je fact_done
	imul r9, r8
	dec r8
	jmp fact_acc

fact_done:
	mov r8, msg
	mov [r8], r9
print_msg:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, len
	syscall
exit:
	mov rax, 60
	mov rdi, 0
	syscall

section .data

len: equ 1
msg: times len dw 0
