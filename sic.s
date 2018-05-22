section .text
	extern calloc, realloc, free, scanf, printf
	global main
LC0:
	dq "%ld", 0
LC1:
	dq "%ld ", 0
newlinestring:
	dq "", 10, 0

main:
	push rbp
	mov	rbp, rsp
	sub	rsp, 64
	mov	dword[rbp - 4], 0
	mov	qword[rbp - 56], 0
	mov	dword[rbp - 8], 1
	mov	esi, 8
	mov	edi, 500
	call	calloc
	mov	qword[rbp - 16], rax
	mov	dword[rbp - 20], 500
	mov	dword[rbp - 24], 0
	jmp	.L2
.L3:
	add	dword[rbp - 24], 1
	mov	eax, dword[rbp - 24]
	cmp	eax, dword[rbp - 20]
	jl	.L2
	add	dword[rbp - 8], 1
	mov	eax, dword[rbp - 8]
	cdqe
	imul	rdx, rax, 4000
	mov	rax, qword[rbp - 16]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc
	mov	qword[rbp - 16], rax
	add	dword[rbp - 20], 500
.L2:
	mov	eax, dword[rbp - 24]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rsi, rax
	mov	edi, LC0
	mov	eax, 0
	call	scanf
	cmp	eax, -1
	jne	.L3
	mov	eax, dword[rbp - 24]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc
	mov	qword[rbp - 16], rax
	mov	eax, dword[rbp - 24]
	mov	dword[rbp - 20], eax
	mov	eax, dword[rbp - 4]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 32], rax
	mov	eax, dword[rbp - 4]
	cdqe
	add	rax, 1
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 40], rax
	mov	eax, dword[rbp - 4]
	cdqe
	add	rax, 2
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 48], rax
	jmp	compare_values_to_zero
run_vm_while_loop:
	mov	rax, qword[rbp - 32]
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rdx, qword[rbp - 32]
	lea	rcx, [ rdx * 8]
	mov	rdx, qword[rbp - 16]
	add	rdx, rcx
	mov	rcx, qword[rdx]
	mov	rdx, qword[rbp - 40]
	lea	rsi, [ rdx * 8]
	mov	rdx, qword[rbp - 16]
	add	rdx, rsi
	mov	rdx, qword[rdx]
	sub	rcx, rdx
	mov	rdx, rcx
	mov	qword[rax], rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 56], rax
	; check if result is negetive
	cmp	qword[rbp - 56], 0
	jns	result_is_negetive
	; update index to C
	mov	rax, qword[rbp - 48]
	mov	dword[rbp - 4], eax
	jmp	update_values

result_is_negetive:
	add	dword[rbp - 4], 3

update_values:
	mov	eax, dword[rbp - 4]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 32], rax
	mov	eax, dword[rbp - 4]
	cdqe
	add	rax, 1
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 40], rax
	mov	eax, dword[rbp - 4]
	cdqe
	add	rax, 2
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	qword[rbp - 48], rax
compare_values_to_zero:
	;if A or B or C is zero
	cmp	qword [rbp - 32], 0
	jne	run_vm_while_loop
	cmp	qword [rbp - 40], 0
	jne	run_vm_while_loop
	cmp	qword [rbp - 48], 0
	jne	run_vm_while_loop
	; init index to zero
	mov	dword [rbp - 4], 0
	jmp	printf_loop_condition
.L9:
	mov	eax, dword[rbp - 4]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, qword[rbp - 16]
	add	rax, rdx
	mov	rax, qword[rax]
	mov	rsi, rax
	mov	edi, LC1
	mov	eax, 0
	call	printf
	add	dword[rbp - 4], 1
printf_loop_condition:
	mov	eax, dword[rbp - 4]
	cmp	eax, dword[rbp - 20]
	jl	.L9
	mov	rax, qword[rbp - 16]
	mov	rdi, rax
	call free
	mov	edi, newlinestring
	call printf
	mov	eax, 0
	leave
	ret
