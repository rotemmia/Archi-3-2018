; Start of SIC Assembly VM.
; Made by Rotem Mia & Amir Arbel
section .text
	extern calloc, realloc, free, scanf, printf
	global main

; Input string for scanf.
input_string:
	dq "%ld", 0
LC1:
	dq "%ld ", 0
new_line_string:
	dq "", 10, 0

main:
	push rbp
	mov	rbp, rsp
	; Save some room on the broom.
	sub	rsp, 64
	; rbp - 4: "index" - general use index.
	mov	dword [rbp - 4], 0
	; rbp - 56: "sbn_result" - result of  the actual command.
	mov	qword [rbp - 56], 0
	; rbp - 8: Number of blocks dynamically allocated.
	mov	dword [rbp - 8], 1
	; Allocate sizeof(long) * (default_block_size = 500) with calloc.
	mov	esi, 8
	mov	edi, 500
	call	calloc

	; rbp - 16: MEMORY
	mov	qword [rbp - 16], rax
	; rbp - 20: How much we've allocated.
	mov	dword [rbp - 20], 500
	; rbp - 24: number of numbers read. "read_index".
	mov	dword [rbp - 24], 0
	jmp	read_while_condition

read_while_body:
	; read index++
	add	dword [rbp - 24], 1
	; Are we out of memory?
	mov	eax, dword [rbp - 24]
	cmp	eax, dword [rbp - 20]
	; if we still have memory.
	jl read_while_condition

	; Allocate more memory.
	; Number of blocks++
	add	dword [rbp - 8], 1
	; Keep track of memory size.
	add	dword[rbp - 20], 500
	; realloc MEMORY to
	; number_of_blocks * sizeof(long) * default_block_size.
	mov	eax, dword [rbp - 8]
	imul rsi, rax, 4000
	mov	rdi, qword [rbp - 16]
	call	realloc
	; Re-point the MEMORY pointer.
	mov	qword[rbp - 16], rax
read_while_condition:
	; Read another number.
	; Find the correct address:
	; read_index * sizeof(long).
	mov	eax, dword [rbp - 24]
	lea	rdx, [rax * 8]
	mov	rsi, qword [rbp - 16]
	; New location index + MEMORY address.
	add	rsi, rdx
	mov	edi, input_string
	mov	eax, 0
	call	scanf
	; if scanf(...) != EOF
	cmp	eax, -1
	jne	read_while_body

	; Realloc MEMORY to needed size.
	mov	eax, dword [rbp - 24]
	lea	rsi, [rax * 8]
	mov	rdi, qword [rbp - 16]
	call	realloc
	mov	qword [rbp - 16], rax
	; memory_size = read_index.
	mov	eax, dword [rbp - 24]
	mov	dword [rbp - 20], eax
	; Assign A, B, C.
	; Address of MEMORY => rcx.
	mov	rcx, qword[rbp - 16]
	; rbp - 4: index.
	mov	eax, dword [rbp - 4]
	lea	rdx, [rax * 8]
	; rcx now the location of MEMORY[index].
	add	rcx, rdx

  ; A = MEMORY[index].
	mov	rax, qword [rcx]
	mov	qword [rbp - 32], rax

	; rbp - 40: B = MEMORY[index + 1].
	add	rcx, 8
	mov	rax, qword [rcx]
	mov	qword [rbp - 40], rax

	add	rcx, 8
	mov	rax, qword [rcx]
	mov	qword[rbp - 48], rax
	jmp	.L4
.L7:
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
	cmp	qword[rbp - 56], 0
	jns	.L5
	mov	rax, qword[rbp - 48]
	mov	dword[rbp - 4], eax
	jmp	.L6
.L5:
	add	dword[rbp - 4], 3
.L6:
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
.L4:
	cmp	qword[rbp - 32], 0
	jne	.L7
	cmp	qword[rbp - 40], 0
	jne	.L7
	cmp	qword[rbp - 48], 0
	jne	.L7
	mov	dword[rbp - 4], 0
	jmp	.L8
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
.L8:
	mov	eax, dword[rbp - 4]
	cmp	eax, dword[rbp - 20]
	jl	.L9
	mov	rax, qword[rbp - 16]
	mov	rdi, rax
	call free
	mov	edi, new_line_string
	call printf
	mov	eax, 0
	leave
	ret
