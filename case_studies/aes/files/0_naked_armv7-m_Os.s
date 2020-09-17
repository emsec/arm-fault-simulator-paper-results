	.arch armv7-m
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
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
	mov	r3, r0
	push	{r4, r5, r6, r7, lr}
	add	r2, r1, #16
.L2:
	ldrb	r4, [r1]	@ zero_extendqisi2
	adds	r1, r1, #4
	strb	r4, [r3]
	ldrb	r4, [r1, #-3]	@ zero_extendqisi2
	adds	r3, r3, #4
	strb	r4, [r3, #-3]
	ldrb	r4, [r1, #-2]	@ zero_extendqisi2
	strb	r4, [r3, #-2]
	ldrb	r4, [r1, #-1]	@ zero_extendqisi2
	cmp	r1, r2
	strb	r4, [r3, #-1]
	bne	.L2
	movs	r2, #4
	ldr	r6, .L7
.L4:
	lsls	r7, r2, #30
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	ldrb	r5, [r0, #13]	@ zero_extendqisi2
	ldrb	r4, [r0, #14]	@ zero_extendqisi2
	ldrb	r1, [r0, #15]	@ zero_extendqisi2
	bne	.L3
	ldrb	r7, [r6, r5]	@ zero_extendqisi2
	ldrb	r5, [r6, r4]	@ zero_extendqisi2
	ldrb	r4, [r6, r1]	@ zero_extendqisi2
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	add	r3, r6, r2, lsr #2
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	eors	r3, r3, r7
.L3:
	ldrb	r7, [r0]	@ zero_extendqisi2
	adds	r2, r2, #1
	eors	r3, r3, r7
	strb	r3, [r0, #16]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r2, #44
	eor	r5, r5, r3
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	strb	r5, [r0, #17]
	eor	r4, r4, r3
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	strb	r4, [r0, #18]
	eor	r1, r1, r3
	strb	r1, [r0, #19]
	add	r0, r0, #4
	bne	.L4
	pop	{r4, r5, r6, r7, pc}
.L8:
	.align	2
.L7:
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
	push	{r4, r5, r6, lr}
	add	r2, r2, r0, lsl #4
	adds	r4, r1, #4
	adds	r1, r1, #20
.L10:
	mov	r5, r2
	subs	r3, r4, #4
.L11:
	ldrb	r0, [r5], #1	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	eors	r0, r0, r6
	strb	r0, [r3], #1
	cmp	r3, r4
	bne	.L11
	adds	r4, r3, #4
	cmp	r4, r1
	add	r2, r2, #4
	bne	.L10
	pop	{r4, r5, r6, pc}
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
	mov	r4, r0
	movs	r6, #1
	sub	sp, sp, #20
	mov	r2, r1
	mov	r8, r1
	mov	r1, r0
	movs	r0, #0
	bl	add_round_key
	adds	r3, r4, #4
	str	r3, [sp, #8]
	add	r3, r4, #16
	str	r3, [sp, #12]
.L15:
	mov	r7, r4
	mov	r5, r4
	b	.L20
.L16:
	ldrb	r2, [r5, r3, lsl #2]	@ zero_extendqisi2
	ldr	r1, .L29
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r5, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #4
	bne	.L16
	ldr	r3, [sp, #8]
	adds	r5, r5, #1
	cmp	r3, r5
	beq	.L17
.L20:
	movs	r3, #0
	b	.L16
.L17:
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	strb	r2, [r4, #1]
	ldrb	r2, [r4, #9]	@ zero_extendqisi2
	strb	r2, [r4, #5]
	ldrb	r2, [r4, #13]	@ zero_extendqisi2
	strb	r3, [r4, #13]
	strb	r2, [r4, #9]
	ldrb	r2, [r4, #10]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	strb	r2, [r4, #2]
	ldrb	r2, [r4, #14]	@ zero_extendqisi2
	strb	r3, [r4, #10]
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	strb	r2, [r4, #6]
	ldrb	r2, [r4, #15]	@ zero_extendqisi2
	strb	r3, [r4, #14]
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	strb	r2, [r4, #3]
	ldrb	r2, [r4, #11]	@ zero_extendqisi2
	strb	r2, [r4, #15]
	ldrb	r2, [r4, #7]	@ zero_extendqisi2
	strb	r3, [r4, #7]
	mov	r3, r4
	strb	r2, [r4, #11]
.L18:
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	eor	r10, r1, lr
	eor	r9, r0, r2
	str	r2, [sp, #4]
	lsr	r2, r10, #7
	lsl	fp, r2, #1
	add	r2, r2, fp
	eor	ip, r10, r9
	add	r2, r2, r2, lsl #3
	eor	r10, r2, r10, lsl #1
	eor	r2, r1, ip
	eor	r10, r10, r2
	strb	r10, [r3]
	eor	r10, lr, r0
	lsr	r2, r10, #7
	lsl	fp, r2, #1
	add	r2, r2, fp
	add	r2, r2, r2, lsl #3
	eor	lr, lr, ip
	eor	r2, r2, r10, lsl #1
	eor	r2, r2, lr
	strb	r2, [r3, #1]
	lsr	r2, r9, #7
	lsl	lr, r2, #1
	add	r2, r2, lr
	add	r2, r2, r2, lsl #3
	eor	r0, r0, ip
	eor	r2, r2, r9, lsl #1
	eors	r2, r2, r0
	strb	r2, [r3, #2]
	ldr	r2, [sp, #4]
	adds	r3, r3, #4
	eors	r1, r1, r2
	lsrs	r2, r1, #7
	lsls	r0, r2, #1
	add	r2, r2, r0
	add	r2, r2, r2, lsl #3
	eor	r2, r2, r1, lsl #1
	ldr	r1, [sp, #4]
	eor	ip, r1, ip
	eor	ip, r2, ip
	ldr	r2, [sp, #12]
	strb	ip, [r3, #-1]
	cmp	r2, r3
	bne	.L18
	mov	r0, r6
	adds	r6, r6, #1
	mov	r2, r8
	mov	r1, r4
	uxtb	r6, r6
	bl	add_round_key
	cmp	r6, #10
	bne	.L15
	ldr	r2, .L29
.L22:
	movs	r3, #0
.L21:
	ldrb	r1, [r7, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	strb	r1, [r7, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r3, #4
	bne	.L21
	adds	r7, r7, #1
	cmp	r5, r7
	bne	.L22
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	strb	r2, [r4, #1]
	ldrb	r2, [r4, #9]	@ zero_extendqisi2
	mov	r1, r4
	strb	r2, [r4, #5]
	ldrb	r2, [r4, #13]	@ zero_extendqisi2
	strb	r3, [r4, #13]
	strb	r2, [r4, #9]
	ldrb	r2, [r4, #10]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	strb	r2, [r4, #2]
	ldrb	r2, [r4, #14]	@ zero_extendqisi2
	strb	r3, [r4, #10]
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	strb	r2, [r4, #6]
	ldrb	r2, [r4, #15]	@ zero_extendqisi2
	strb	r3, [r4, #14]
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	strb	r2, [r4, #3]
	ldrb	r2, [r4, #11]	@ zero_extendqisi2
	movs	r0, #10
	strb	r2, [r4, #15]
	ldrb	r2, [r4, #7]	@ zero_extendqisi2
	strb	r3, [r4, #7]
	strb	r2, [r4, #11]
	mov	r2, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	add_round_key
.L30:
	.align	2
.L29:
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
.L32:
	b	.L32
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
