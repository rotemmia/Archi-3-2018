	.file	"base.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.section	.rodata
.LC0:
	.string	"%ld"
.LC1:
	.string	"%ld "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.file 1 "base.c"
	.loc 1 6 0
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	.loc 1 8 0
	mov	DWORD PTR [rbp-4], 0
	.loc 1 9 0
	mov	DWORD PTR [rbp-8], 0
	.loc 1 10 0
	mov	QWORD PTR [rbp-56], 0
	.loc 1 12 0
	mov	esi, 8
	mov	edi, 500
	call	calloc
	mov	QWORD PTR [rbp-16], rax
	.loc 1 13 0
	mov	DWORD PTR [rbp-20], 500
	.loc 1 14 0
	mov	DWORD PTR [rbp-24], 0
	.loc 1 16 0
	jmp	.L2
.L3:
	.loc 1 17 0
	add	DWORD PTR [rbp-24], 1
	.loc 1 18 0
	mov	eax, DWORD PTR [rbp-24]
	cmp	eax, DWORD PTR [rbp-20]
	jl	.L2
	.loc 1 20 0
	mov	ecx, DWORD PTR [rbp-24]
	mov	edx, 274877907
	mov	eax, ecx
	imul	edx
	sar	edx, 5
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	add	eax, 1
	cdqe
	imul	rdx, rax, 4000
	mov	rax, QWORD PTR [rbp-16]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc
	mov	QWORD PTR [rbp-16], rax
	.loc 1 21 0
	add	DWORD PTR [rbp-20], 500
.L2:
	.loc 1 16 0
	mov	eax, DWORD PTR [rbp-24]
	cdqe
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	__isoc99_scanf
	cmp	eax, -1
	jne	.L3
	.loc 1 26 0
	mov	eax, DWORD PTR [rbp-24]
	cdqe
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	mov	rsi, rdx
	mov	rdi, rax
	call	realloc
	mov	QWORD PTR [rbp-16], rax
	.loc 1 27 0
	mov	eax, DWORD PTR [rbp-24]
	mov	DWORD PTR [rbp-20], eax
	.loc 1 29 0
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-32], rax
	.loc 1 30 0
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	add	rax, 1
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-40], rax
	.loc 1 31 0
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	add	rax, 2
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-48], rax
	.loc 1 33 0
	jmp	.L4
.L7:
	.loc 1 35 0
	mov	rax, QWORD PTR [rbp-32]
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rdx, QWORD PTR [rbp-32]
	lea	rcx, [0+rdx*8]
	mov	rdx, QWORD PTR [rbp-16]
	add	rdx, rcx
	mov	rcx, QWORD PTR [rdx]
	mov	rdx, QWORD PTR [rbp-40]
	lea	rsi, [0+rdx*8]
	mov	rdx, QWORD PTR [rbp-16]
	add	rdx, rsi
	mov	rdx, QWORD PTR [rdx]
	sub	rcx, rdx
	mov	rdx, rcx
	mov	QWORD PTR [rax], rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-56], rax
	.loc 1 36 0
	cmp	QWORD PTR [rbp-56], 0
	jns	.L5
	.loc 1 38 0
	mov	rax, QWORD PTR [rbp-48]
	mov	DWORD PTR [rbp-4], eax
	jmp	.L6
.L5:
	.loc 1 41 0
	add	DWORD PTR [rbp-4], 3
.L6:
	.loc 1 44 0
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-32], rax
	.loc 1 45 0
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	add	rax, 1
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-40], rax
	.loc 1 46 0
	mov	eax, DWORD PTR [rbp-4]
	cdqe
	add	rax, 2
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR [rbp-48], rax
.L4:
	.loc 1 33 0
	cmp	QWORD PTR [rbp-32], 0
	jne	.L7
	.loc 1 33 0 is_stmt 0 discriminator 1
	cmp	QWORD PTR [rbp-40], 0
	jne	.L7
	.loc 1 33 0 discriminator 2
	cmp	QWORD PTR [rbp-48], 0
	jne	.L7
	.loc 1 50 0 is_stmt 1
	mov	DWORD PTR [rbp-8], 0
	jmp	.L8
.L9:
	.loc 1 51 0 discriminator 3
	mov	eax, DWORD PTR [rbp-8]
	cdqe
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-16]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 0
	call	printf
	.loc 1 50 0 discriminator 3
	add	DWORD PTR [rbp-8], 1
.L8:
	.loc 1 50 0 is_stmt 0 discriminator 1
	mov	eax, DWORD PTR [rbp-8]
	cmp	eax, DWORD PTR [rbp-20]
	jl	.L9
	.loc 1 54 0 is_stmt 1
	mov	edi, 10
	call	putchar
	.loc 1 55 0
	mov	eax, 0
	.loc 1 56 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF17
	.byte	0xc
	.long	.LASF18
	.long	.LASF19
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF20
	.byte	0x1
	.byte	0x6
	.long	0x57
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c
	.uleb128 0x5
	.long	.LASF11
	.byte	0x1
	.byte	0x8
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF12
	.byte	0x1
	.byte	0x9
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.byte	0xa
	.long	0x5e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF14
	.byte	0x1
	.byte	0xc
	.long	0x11c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.byte	0xd
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0xe
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"A"
	.byte	0x1
	.byte	0x1d
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"B"
	.byte	0x1
	.byte	0x1e
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"C"
	.byte	0x1
	.byte	0x1f
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x5e
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"long long int"
.LASF16:
	.string	"readIndex"
.LASF3:
	.string	"unsigned int"
.LASF17:
	.string	"GNU C11 5.4.0 20160609 -masm=intel -mtune=generic -march=x86-64 -g -fno-omit-frame-pointer -fno-stack-protector"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF19:
	.string	"/users/studs/bsc/2016/rotemmia/Archi/Assignment 3"
.LASF13:
	.string	"sbn_result"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"printIndex"
.LASF11:
	.string	"index"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF15:
	.string	"memory_size"
.LASF18:
	.string	"base.c"
.LASF20:
	.string	"main"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"MACHINE_MEMORY"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
