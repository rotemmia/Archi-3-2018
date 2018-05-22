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
	mov	DWORD[rbp - 4], 0
	mov	QWORD[rbp - 56], 0
	mov	DWORD[rbp - 8], 1
	mov	esi, 8
	mov	edi, 500
	call	calloc
	mov	QWORD[rbp - 16], rax
	mov	DWORD[rbp - 20], 500
	mov	DWORD[rbp - 24], 0
	jmp	.L2
.L3:
	add	DWORD[rbp - 24], 1
	mov	eax, DWORD[rbp - 24]
	cmp	eax, DWORD[rbp - 20]
	jl	.L2
	add	DWORD[rbp - 8], 1
	mov	eax, DWORD[rbp - 8]
	cdqe
	imul	rdx, rax, 4000
	mov	rax, QWORD[rbp - 16]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc
	mov	QWORD[rbp - 16], rax
	add	DWORD[rbp - 20], 500
.L2:
	mov	eax, DWORD[rbp - 24]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rsi, rax
	mov	edi, LC0
	mov	eax, 0
	call	scanf
	cmp	eax, -1
	jne	.L3
	mov	eax, DWORD[rbp - 24]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc
	mov	QWORD[rbp - 16], rax
	mov	eax, DWORD[rbp - 24]
	mov	DWORD[rbp - 20], eax
	mov	eax, DWORD[rbp - 4]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 32], rax
	mov	eax, DWORD[rbp - 4]
	cdqe
	add	rax, 1
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 40], rax
	mov	eax, DWORD[rbp - 4]
	cdqe
	add	rax, 2
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 48], rax
	jmp	.L4
.L7:
	mov	rax, QWORD[rbp - 32]
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rdx, QWORD[rbp - 32]
	lea	rcx, [ rdx * 8]
	mov	rdx, QWORD[rbp - 16]
	add	rdx, rcx
	mov	rcx, QWORD[rdx]
	mov	rdx, QWORD[rbp - 40]
	lea	rsi, [ rdx * 8]
	mov	rdx, QWORD[rbp - 16]
	add	rdx, rsi
	mov	rdx, QWORD[rdx]
	sub	rcx, rdx
	mov	rdx, rcx
	mov	QWORD[rax], rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 56], rax
	cmp	QWORD[rbp - 56], 0
	jns	.L5
	mov	rax, QWORD[rbp - 48]
	mov	DWORD[rbp - 4], eax
	jmp	.L6
.L5:
	add	DWORD[rbp - 4], 3
.L6:
	mov	eax, DWORD[rbp - 4]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 32], rax
	mov	eax, DWORD[rbp - 4]
	cdqe
	add	rax, 1
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 40], rax
	mov	eax, DWORD[rbp - 4]
	cdqe
	add	rax, 2
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	QWORD[rbp - 48], rax
.L4:
	cmp	QWORD[rbp - 32], 0
	jne	.L7
	cmp	QWORD[rbp - 40], 0
	jne	.L7
	cmp	QWORD[rbp - 48], 0
	jne	.L7
	mov	DWORD[rbp - 4], 0
	jmp	.L8
.L9:
	mov	eax, DWORD[rbp - 4]
	cdqe
	lea	rdx, [rax * 8]
	mov	rax, QWORD[rbp - 16]
	add	rax, rdx
	mov	rax, QWORD[rax]
	mov	rsi, rax
	mov	edi, LC1
	mov	eax, 0
	call	printf
	add	DWORD[rbp - 4], 1
.L8:
	mov	eax, DWORD[rbp - 4]
	cmp	eax, DWORD[rbp - 20]
	jl	.L9
	mov	rax, QWORD[rbp - 16]
	mov	rdi, rax
	call free
	mov	edi, newlinestring
	call printf
	mov	eax, 0
	leave
	ret
