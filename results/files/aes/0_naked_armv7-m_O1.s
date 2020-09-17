	.arch armv7-m
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"aes.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	key_expansion, %function
key_expansion:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, r0
	add	r4, r1, #16
.L2:
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r0]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	strb	r3, [r0, #1]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	strb	r3, [r0, #2]
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	strb	r3, [r0, #3]
	adds	r1, r1, #4
	adds	r0, r0, #4
	cmp	r1, r4
	bne	.L2
	movs	r6, #4
	ldr	r7, .L9
	b	.L4
.L3:
	ldrb	lr, [r3]	@ zero_extendqisi2
	eor	r1, r1, lr
	strb	r1, [r3, #16]
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	eors	r5, r5, r1
	strb	r5, [r3, #17]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	eors	r4, r4, r1
	strb	r4, [r3, #18]
	ldrb	r1, [r3, #3]	@ zero_extendqisi2
	eors	r0, r0, r1
	strb	r0, [r3, #19]
	adds	r6, r6, #1
	adds	r2, r2, #4
	cmp	r6, #44
	beq	.L8
.L4:
	mov	r3, r2
	ldrb	r1, [r2, #12]	@ zero_extendqisi2
	ldrb	r5, [r2, #13]	@ zero_extendqisi2
	ldrb	r4, [r2, #14]	@ zero_extendqisi2
	ldrb	r0, [r2, #15]	@ zero_extendqisi2
	tst	r6, #3
	bne	.L3
	ldrb	lr, [r7, r5]	@ zero_extendqisi2
	ldrb	r5, [r7, r4]	@ zero_extendqisi2
	ldrb	r4, [r7, r0]	@ zero_extendqisi2
	ldrb	r0, [r7, r1]	@ zero_extendqisi2
	add	r1, r7, r6, lsr #2
	ldrb	r1, [r1, #256]	@ zero_extendqisi2
	eor	r1, lr, r1
	b	.L3
.L8:
	pop	{r4, r5, r6, r7, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.size	key_expansion, .-key_expansion
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_round_key, %function
add_round_key:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	mov	r3, r1
	add	r2, r2, r0, lsl #4
	adds	r1, r1, #16
.L12:
	adds	r7, r3, #4
	mov	r5, r2
.L13:
	ldrb	r4, [r5], #1	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	eors	r4, r4, r6
	strb	r4, [r3], #1
	cmp	r3, r7
	bne	.L13
	adds	r2, r2, #4
	mov	r3, r7
	cmp	r1, r7
	bne	.L12
	pop	{r4, r5, r6, r7}
	bx	lr
	.size	add_round_key, .-add_round_key
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	cipher, %function
cipher:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	mov	r5, r0
	mov	r2, r1
	str	r1, [sp, #4]
	mov	r1, r0
	movs	r0, #0
	bl	add_round_key
	movs	r3, #1
	str	r3, [sp]
	adds	r3, r5, #4
	str	r3, [sp, #8]
	ldr	r6, .L32
	add	r3, r5, #16
	mov	r7, r3
	b	.L18
.L31:
	ldr	r2, [sp, #4]
	mov	r1, r5
	ldr	r8, [sp]
	mov	r0, r8
	bl	add_round_key
	mov	r3, r8
	adds	r3, r3, #1
	uxtb	r3, r3
	str	r3, [sp]
	cmp	r3, #10
	beq	.L22
.L18:
	str	r5, [sp, #12]
	mov	r4, r5
	ldr	r1, [sp, #8]
.L23:
	movs	r3, #0
.L19:
	ldrb	r2, [r4, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r2, [r6, r2]	@ zero_extendqisi2
	strb	r2, [r4, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #4
	bne	.L19
	adds	r4, r4, #1
	cmp	r4, r1
	bne	.L23
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	strb	r2, [r5, #1]
	ldrb	r2, [r5, #9]	@ zero_extendqisi2
	strb	r2, [r5, #5]
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	strb	r2, [r5, #9]
	strb	r3, [r5, #13]
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	ldrb	r2, [r5, #10]	@ zero_extendqisi2
	strb	r2, [r5, #2]
	strb	r3, [r5, #10]
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldrb	r2, [r5, #14]	@ zero_extendqisi2
	strb	r2, [r5, #6]
	strb	r3, [r5, #14]
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	ldrb	r2, [r5, #15]	@ zero_extendqisi2
	strb	r2, [r5, #3]
	ldrb	r2, [r5, #11]	@ zero_extendqisi2
	strb	r2, [r5, #15]
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	strb	r2, [r5, #11]
	strb	r3, [r5, #7]
	mov	fp, r5
.L21:
	ldrb	r3, [fp]	@ zero_extendqisi2
	ldrb	r2, [fp, #1]	@ zero_extendqisi2
	eor	r9, r3, r2
	ldrb	ip, [fp, #2]	@ zero_extendqisi2
	ldrb	r1, [fp, #3]	@ zero_extendqisi2
	eor	r8, ip, r1
	eor	r0, r9, r8
	lsr	lr, r9, #7
	lsl	r10, lr, #1
	add	lr, lr, r10
	add	lr, lr, lr, lsl #3
	eor	lr, lr, r9, lsl #1
	eor	r9, r3, r0
	eor	lr, lr, r9
	strb	lr, [fp]
	eor	r9, r2, ip
	lsr	lr, r9, #7
	lsl	r10, lr, #1
	add	lr, lr, r10
	add	lr, lr, lr, lsl #3
	eor	lr, lr, r9, lsl #1
	eors	r2, r2, r0
	eor	lr, lr, r2
	strb	lr, [fp, #1]
	lsr	r2, r8, #7
	lsl	lr, r2, #1
	add	r2, r2, lr
	add	r2, r2, r2, lsl #3
	eor	r2, r2, r8, lsl #1
	eor	ip, ip, r0
	eor	r2, r2, ip
	strb	r2, [fp, #2]
	eor	r2, r3, r1
	lsrs	r3, r2, #7
	lsl	lr, r3, #1
	add	r3, r3, lr
	add	r3, r3, r3, lsl #3
	eor	r3, r3, r2, lsl #1
	eors	r1, r1, r0
	eors	r3, r3, r1
	strb	r3, [fp, #3]
	add	fp, fp, #4
	cmp	fp, r7
	bne	.L21
	b	.L31
.L22:
	ldr	r7, [sp, #12]
	ldr	r1, .L32
.L29:
	movs	r3, #0
.L24:
	ldrb	r2, [r7, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r7, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #4
	bne	.L24
	adds	r7, r7, #1
	cmp	r7, r4
	bne	.L29
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	strb	r2, [r5, #1]
	ldrb	r2, [r5, #9]	@ zero_extendqisi2
	strb	r2, [r5, #5]
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	strb	r2, [r5, #9]
	strb	r3, [r5, #13]
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	ldrb	r2, [r5, #10]	@ zero_extendqisi2
	strb	r2, [r5, #2]
	strb	r3, [r5, #10]
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	ldrb	r2, [r5, #14]	@ zero_extendqisi2
	strb	r2, [r5, #6]
	strb	r3, [r5, #14]
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	ldrb	r2, [r5, #15]	@ zero_extendqisi2
	strb	r2, [r5, #3]
	ldrb	r2, [r5, #11]	@ zero_extendqisi2
	strb	r2, [r5, #15]
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	strb	r2, [r5, #11]
	strb	r3, [r5, #7]
	ldr	r2, [sp, #4]
	mov	r1, r5
	movs	r0, #10
	bl	add_round_key
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	cipher, .-cipher
	.align	1
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
.L35:
	b	.L35
	.size	report_error, .-report_error
	.align	1
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
	push	{lr}
	sub	sp, sp, #180
	mov	r4, r1
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
