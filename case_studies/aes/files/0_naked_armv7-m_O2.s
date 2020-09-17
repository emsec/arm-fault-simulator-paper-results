	.arch armv7-m
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"aes.c"
	.text
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	key_expansion, %function
key_expansion:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, r5, r6, r7, r8, lr}
	add	r4, r1, #16
.L2:
	ldrb	r2, [r1]	@ zero_extendqisi2
	adds	r1, r1, #4
	strb	r2, [r3]
	ldrb	r2, [r1, #-3]	@ zero_extendqisi2
	adds	r3, r3, #4
	strb	r2, [r3, #-3]
	ldrb	r2, [r1, #-2]	@ zero_extendqisi2
	strb	r2, [r3, #-2]
	ldrb	r2, [r1, #-1]	@ zero_extendqisi2
	cmp	r1, r4
	strb	r2, [r3, #-1]
	bne	.L2
	movs	r5, #4
	ldr	r6, .L9
.L4:
	lsls	r7, r5, #30
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	ldrb	r1, [r0, #13]	@ zero_extendqisi2
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	ldrb	r3, [r0, #15]	@ zero_extendqisi2
	bne	.L3
	add	r7, r6, r5, lsr #2
	ldrb	lr, [r6, r1]	@ zero_extendqisi2
	ldrb	r7, [r7, #256]	@ zero_extendqisi2
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	ldrb	r2, [r6, r3]	@ zero_extendqisi2
	ldrb	r3, [r6, r4]	@ zero_extendqisi2
	eor	r4, lr, r7
.L3:
	ldrb	r8, [r0]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	ldrb	lr, [r0, #2]	@ zero_extendqisi2
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	adds	r5, r5, #1
	eor	r4, r4, r8
	eor	r1, r1, ip
	eor	r2, r2, lr
	eors	r3, r3, r7
	cmp	r5, #44
	strb	r4, [r0, #16]
	strb	r1, [r0, #17]
	strb	r2, [r0, #18]
	strb	r3, [r0, #19]
	add	r0, r0, #4
	bne	.L4
	pop	{r4, r5, r6, r7, r8, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.size	key_expansion, .-key_expansion
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	cipher, %function
cipher:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	mov	r6, r1
	sub	sp, sp, #28
	str	r0, [sp, #20]
	add	r7, r0, #16
.L12:
	mov	lr, r3
	mov	r2, r6
	adds	r5, r3, #4
.L13:
	ldrb	r3, [r2], #1	@ zero_extendqisi2
	ldrb	r4, [lr]	@ zero_extendqisi2
	eors	r3, r3, r4
	strb	r3, [lr], #1
	cmp	r5, lr
	bne	.L13
	cmp	lr, r7
	add	r6, r6, #4
	mov	r3, lr
	bne	.L12
	add	r3, r1, #16
	str	r3, [sp, #8]
	add	r3, r1, #160
	str	r3, [sp, #12]
	ldr	fp, .L38
	adds	r3, r0, #4
	str	r3, [sp, #16]
	str	lr, [sp, #4]
.L21:
	mov	r10, r0
	ldr	r1, [sp, #16]
.L23:
	movs	r3, #0
.L15:
	ldrb	r2, [r10, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r2, [fp, r2]	@ zero_extendqisi2
	strb	r2, [r10, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #4
	bne	.L15
	add	r10, r10, #1
	cmp	r1, r10
	bne	.L23
	mov	r9, r0
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [r0, #13]	@ zero_extendqisi2
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	ldrb	r5, [r0, #2]	@ zero_extendqisi2
	ldrb	r4, [r0, #5]	@ zero_extendqisi2
	strb	r1, [r0, #13]
	strb	r2, [r0, #9]
	ldrb	r1, [r0, #10]	@ zero_extendqisi2
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	strb	r3, [r0, #5]
	strb	r5, [r0, #10]
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	strb	r2, [r0, #14]
	strb	r3, [r0, #6]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
	strb	r5, [r0, #7]
	ldrb	r5, [r0, #15]	@ zero_extendqisi2
	strb	r4, [r0, #1]
	strb	r1, [r0, #2]
	strb	r2, [r0, #11]
	strb	r3, [r0, #15]
	strb	r5, [r0, #3]
.L18:
	ldrb	r3, [r9]	@ zero_extendqisi2
	eors	r5, r5, r1
	eor	lr, r3, r4
	lsr	r4, lr, #7
	lsls	r1, r4, #1
	ldrb	r7, [r9, #3]	@ zero_extendqisi2
	add	r4, r4, r1
	eor	r5, lr, r5
	add	r4, r4, r4, lsl #3
	eor	r8, r3, r7
	eor	r4, r4, lr, lsl #1
	eors	r3, r3, r5
	ldrb	r6, [r9, #2]	@ zero_extendqisi2
	lsr	r1, r8, #7
	eors	r4, r4, r3
	ldrb	r2, [r9, #1]	@ zero_extendqisi2
	strb	r4, [r9]
	lsls	r4, r1, #1
	eor	ip, r6, r7
	add	r1, r1, r4
	eor	lr, r2, r6
	eors	r7, r7, r5
	eors	r6, r6, r5
	add	r1, r1, r1, lsl #3
	eors	r5, r5, r2
	lsr	r2, ip, #7
	lsr	r3, lr, #7
	eor	r8, r1, r8, lsl #1
	lsls	r1, r2, #1
	add	r2, r2, r1
	lsls	r1, r3, #1
	add	r3, r3, r1
	add	r3, r3, r3, lsl #3
	add	r2, r2, r2, lsl #3
	eor	lr, r3, lr, lsl #1
	eor	r2, r2, ip, lsl #1
	eor	r7, r8, r7
	eors	r6, r6, r2
	eor	r5, lr, r5
	ldr	r3, [sp, #4]
	strb	r7, [r9, #3]
	strb	r6, [r9, #2]
	strb	r5, [r9, #1]
	add	r9, r9, #4
	cmp	r9, r3
	beq	.L29
	ldrb	r4, [r9, #1]	@ zero_extendqisi2
	ldrb	r1, [r9, #2]	@ zero_extendqisi2
	ldrb	r5, [r9, #3]	@ zero_extendqisi2
	b	.L18
.L29:
	mov	r1, r0
	ldr	r6, [sp, #8]
	ldr	r7, [sp, #4]
.L17:
	mov	r2, r6
	adds	r5, r1, #4
.L19:
	ldrb	r3, [r2], #1	@ zero_extendqisi2
	ldrb	r4, [r1]	@ zero_extendqisi2
	eors	r3, r3, r4
	strb	r3, [r1], #1
	cmp	r5, r1
	bne	.L19
	cmp	r5, r7
	add	r6, r6, #4
	bne	.L17
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	adds	r3, r3, #16
	cmp	r3, r2
	str	r3, [sp, #8]
	bne	.L21
	mov	r2, r0
	ldr	lr, [sp, #4]
.L22:
	movs	r3, #0
.L24:
	ldrb	r1, [r2, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r1, [fp, r1]	@ zero_extendqisi2
	strb	r1, [r2, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #4
	bne	.L24
	adds	r2, r2, #1
	cmp	r10, r2
	bne	.L22
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ldrb	r1, [r0, #13]	@ zero_extendqisi2
	ldrb	r2, [r0, #9]	@ zero_extendqisi2
	strb	r3, [r0, #1]
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	strb	r4, [r0, #13]
	strb	r1, [r0, #9]
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	ldrb	r1, [r0, #10]	@ zero_extendqisi2
	strb	r2, [r0, #5]
	ldrb	r2, [r0, #6]	@ zero_extendqisi2
	strb	r3, [r0, #6]
	ldrb	r3, [r0, #15]	@ zero_extendqisi2
	strb	r4, [r0, #10]
	strb	r1, [r0, #2]
	ldrb	r4, [r0, #3]	@ zero_extendqisi2
	ldrb	r1, [r0, #7]	@ zero_extendqisi2
	strb	r2, [r0, #14]
	ldrb	r2, [r0, #11]	@ zero_extendqisi2
	strb	r3, [r0, #3]
	ldr	r5, [sp, #8]
	ldr	r3, [sp, #20]
	strb	r4, [r0, #7]
	strb	r1, [r0, #11]
	strb	r2, [r0, #15]
.L26:
	mov	r1, r5
	adds	r4, r3, #4
.L27:
	ldrb	r2, [r1], #1	@ zero_extendqisi2
	ldrb	r0, [r3]	@ zero_extendqisi2
	eors	r2, r2, r0
	strb	r2, [r3], #1
	cmp	r4, r3
	bne	.L27
	cmp	r4, lr
	add	r5, r5, #4
	mov	r3, r4
	bne	.L26
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.size	cipher, .-cipher
	.align	1
	.p2align 2,,3
	.global	report_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	report_error, %function
report_error:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L41:
	b	.L41
	.size	report_error, .-report_error
	.align	1
	.p2align 2,,3
	.global	report_done
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	report_done, %function
report_done:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	report_done
	.size	report_done, .-report_done
	.align	1
	.p2align 2,,3
	.global	AES_ECB_encrypt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	AES_ECB_encrypt, %function
AES_ECB_encrypt:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r4, r1
	push	{lr}
	sub	sp, sp, #180
	mov	r1, r0
	mov	r0, sp
	bl	key_expansion
	mov	r1, sp
	mov	r0, r4
	bl	cipher
	bl	report_done
	.size	AES_ECB_encrypt, .-AES_ECB_encrypt
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sbox, %object
	.size	sbox, 256
sbox:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.byte	-54
	.byte	-126
	.byte	-55
	.byte	125
	.byte	-6
	.byte	89
	.byte	71
	.byte	-16
	.byte	-83
	.byte	-44
	.byte	-94
	.byte	-81
	.byte	-100
	.byte	-92
	.byte	114
	.byte	-64
	.byte	-73
	.byte	-3
	.byte	-109
	.byte	38
	.byte	54
	.byte	63
	.byte	-9
	.byte	-52
	.byte	52
	.byte	-91
	.byte	-27
	.byte	-15
	.byte	113
	.byte	-40
	.byte	49
	.byte	21
	.byte	4
	.byte	-57
	.byte	35
	.byte	-61
	.byte	24
	.byte	-106
	.byte	5
	.byte	-102
	.byte	7
	.byte	18
	.byte	-128
	.byte	-30
	.byte	-21
	.byte	39
	.byte	-78
	.byte	117
	.byte	9
	.byte	-125
	.byte	44
	.byte	26
	.byte	27
	.byte	110
	.byte	90
	.byte	-96
	.byte	82
	.byte	59
	.byte	-42
	.byte	-77
	.byte	41
	.byte	-29
	.byte	47
	.byte	-124
	.byte	83
	.byte	-47
	.byte	0
	.byte	-19
	.byte	32
	.byte	-4
	.byte	-79
	.byte	91
	.byte	106
	.byte	-53
	.byte	-66
	.byte	57
	.byte	74
	.byte	76
	.byte	88
	.byte	-49
	.byte	-48
	.byte	-17
	.byte	-86
	.byte	-5
	.byte	67
	.byte	77
	.byte	51
	.byte	-123
	.byte	69
	.byte	-7
	.byte	2
	.byte	127
	.byte	80
	.byte	60
	.byte	-97
	.byte	-88
	.byte	81
	.byte	-93
	.byte	64
	.byte	-113
	.byte	-110
	.byte	-99
	.byte	56
	.byte	-11
	.byte	-68
	.byte	-74
	.byte	-38
	.byte	33
	.byte	16
	.byte	-1
	.byte	-13
	.byte	-46
	.byte	-51
	.byte	12
	.byte	19
	.byte	-20
	.byte	95
	.byte	-105
	.byte	68
	.byte	23
	.byte	-60
	.byte	-89
	.byte	126
	.byte	61
	.byte	100
	.byte	93
	.byte	25
	.byte	115
	.byte	96
	.byte	-127
	.byte	79
	.byte	-36
	.byte	34
	.byte	42
	.byte	-112
	.byte	-120
	.byte	70
	.byte	-18
	.byte	-72
	.byte	20
	.byte	-34
	.byte	94
	.byte	11
	.byte	-37
	.byte	-32
	.byte	50
	.byte	58
	.byte	10
	.byte	73
	.byte	6
	.byte	36
	.byte	92
	.byte	-62
	.byte	-45
	.byte	-84
	.byte	98
	.byte	-111
	.byte	-107
	.byte	-28
	.byte	121
	.byte	-25
	.byte	-56
	.byte	55
	.byte	109
	.byte	-115
	.byte	-43
	.byte	78
	.byte	-87
	.byte	108
	.byte	86
	.byte	-12
	.byte	-22
	.byte	101
	.byte	122
	.byte	-82
	.byte	8
	.byte	-70
	.byte	120
	.byte	37
	.byte	46
	.byte	28
	.byte	-90
	.byte	-76
	.byte	-58
	.byte	-24
	.byte	-35
	.byte	116
	.byte	31
	.byte	75
	.byte	-67
	.byte	-117
	.byte	-118
	.byte	112
	.byte	62
	.byte	-75
	.byte	102
	.byte	72
	.byte	3
	.byte	-10
	.byte	14
	.byte	97
	.byte	53
	.byte	87
	.byte	-71
	.byte	-122
	.byte	-63
	.byte	29
	.byte	-98
	.byte	-31
	.byte	-8
	.byte	-104
	.byte	17
	.byte	105
	.byte	-39
	.byte	-114
	.byte	-108
	.byte	-101
	.byte	30
	.byte	-121
	.byte	-23
	.byte	-50
	.byte	85
	.byte	40
	.byte	-33
	.byte	-116
	.byte	-95
	.byte	-119
	.byte	13
	.byte	-65
	.byte	-26
	.byte	66
	.byte	104
	.byte	65
	.byte	-103
	.byte	45
	.byte	15
	.byte	-80
	.byte	84
	.byte	-69
	.byte	22
	.type	rcon, %object
	.size	rcon, 11
rcon:
	.byte	-115
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	27
	.byte	54
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
