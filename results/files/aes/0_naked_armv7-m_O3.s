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
	adds	r3, r1, #4
	cmp	r0, r3
	push	{r4, r5, r6, r7, r8, lr}
	bcs	.L7
	adds	r3, r0, #4
	cmp	r1, r3
	bcc	.L2
.L7:
	ldr	r3, [r1]	@ unaligned
	str	r3, [r0]
	ldr	r3, [r1, #4]	@ unaligned
	str	r3, [r0, #4]
	ldr	r3, [r1, #8]	@ unaligned
	str	r3, [r0, #8]
	ldr	r3, [r1, #12]	@ unaligned
	str	r3, [r0, #12]
.L4:
	movs	r2, #4
	mov	r3, r0
	ldrb	r6, [r0, #15]	@ zero_extendqisi2
	ldrb	r5, [r0, #14]	@ zero_extendqisi2
	ldrb	r4, [r0, #13]	@ zero_extendqisi2
	ldrb	r1, [r0, #12]	@ zero_extendqisi2
	ldr	r0, .L11
.L6:
	lsls	r7, r2, #30
	bne	.L5
	add	r7, r0, r2, lsr #2
	ldrb	lr, [r0, r4]	@ zero_extendqisi2
	ldrb	r7, [r7, #256]	@ zero_extendqisi2
	ldrb	r4, [r0, r5]	@ zero_extendqisi2
	ldrb	r5, [r0, r6]	@ zero_extendqisi2
	ldrb	r6, [r0, r1]	@ zero_extendqisi2
	eor	r1, lr, r7
.L5:
	ldrb	r8, [r3]	@ zero_extendqisi2
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	ldrb	r7, [r3, #3]	@ zero_extendqisi2
	adds	r2, r2, #1
	eor	r1, r1, r8
	eor	r4, r4, ip
	eor	r5, r5, lr
	eors	r6, r6, r7
	cmp	r2, #44
	strb	r1, [r3, #16]
	strb	r4, [r3, #17]
	strb	r5, [r3, #18]
	strb	r6, [r3, #19]
	add	r3, r3, #4
	bne	.L6
	pop	{r4, r5, r6, r7, r8, pc}
.L2:
	ldrb	r3, [r1]	@ zero_extendqisi2
	strb	r3, [r0]
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	strb	r3, [r0, #1]
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	strb	r3, [r0, #2]
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	strb	r3, [r0, #3]
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	strb	r3, [r0, #4]
	ldrb	r3, [r1, #5]	@ zero_extendqisi2
	strb	r3, [r0, #5]
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	strb	r3, [r0, #6]
	ldrb	r3, [r1, #7]	@ zero_extendqisi2
	strb	r3, [r0, #7]
	ldrb	r3, [r1, #8]	@ zero_extendqisi2
	strb	r3, [r0, #8]
	ldrb	r3, [r1, #9]	@ zero_extendqisi2
	strb	r3, [r0, #9]
	ldrb	r3, [r1, #10]	@ zero_extendqisi2
	strb	r3, [r0, #10]
	ldrb	r3, [r1, #11]	@ zero_extendqisi2
	strb	r3, [r0, #11]
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	strb	r3, [r0, #12]
	ldrb	r3, [r1, #13]	@ zero_extendqisi2
	strb	r3, [r0, #13]
	ldrb	r3, [r1, #14]	@ zero_extendqisi2
	strb	r3, [r0, #14]
	ldrb	r3, [r1, #15]	@ zero_extendqisi2
	strb	r3, [r0, #15]
	b	.L4
.L12:
	.align	2
.L11:
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
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r1
	mov	ip, r0
	add	r2, r0, #8
	adds	r3, r3, #8
	cmp	r1, r2
	it	cc
	cmpcc	ip, r3
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #100
	str	r1, [sp, #88]
	str	r2, [sp, #92]
	mov	r4, r1
	bcc	.L14
	orr	r3, r1, ip
	lsls	r2, r3, #29
	bne	.L14
	ldr	r0, [r1]
	ldr	r3, [r1, #4]
	ldr	r2, [ip]
	ldr	r1, [ip, #4]
	eors	r2, r2, r0
	eors	r3, r3, r1
	stm	ip, {r2, r3}
	ldr	r0, [ip, #8]
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #12]
	ldr	r1, [ip, #12]
	eors	r2, r2, r0
	eors	r3, r3, r1
	ldr	r7, [sp, #88]
	str	r2, [ip, #8]
	str	r3, [ip, #12]
.L15:
	ldrb	r4, [ip, #3]	@ zero_extendqisi2
	ldrb	r3, [ip, #4]	@ zero_extendqisi2
	str	r4, [sp, #32]
	ldrb	r4, [ip, #7]	@ zero_extendqisi2
	mov	r5, r3
	str	r4, [sp, #36]
	ldrb	r4, [ip, #15]	@ zero_extendqisi2
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	str	r4, [sp, #12]
	mov	r4, r7
	str	r3, [sp, #24]
	ldrb	r3, [ip, #6]	@ zero_extendqisi2
	adds	r4, r4, #144
	str	r3, [sp, #28]
	ldrb	r3, [ip, #14]	@ zero_extendqisi2
	str	r4, [sp, #84]
	ldrb	fp, [ip]	@ zero_extendqisi2
	ldrb	r1, [ip, #8]	@ zero_extendqisi2
	ldrb	r2, [ip, #12]	@ zero_extendqisi2
	ldrb	r9, [ip, #1]	@ zero_extendqisi2
	ldrb	lr, [ip, #5]	@ zero_extendqisi2
	ldrb	r6, [ip, #9]	@ zero_extendqisi2
	ldrb	r0, [ip, #13]	@ zero_extendqisi2
	ldrb	r8, [ip, #10]	@ zero_extendqisi2
	ldrb	r10, [ip, #11]	@ zero_extendqisi2
	ldr	r4, [sp, #12]
	str	r7, [sp, #4]
	str	r3, [sp, #8]
.L16:
	ldr	r7, .L33
	ldr	r3, [sp, #8]
	ldrb	r5, [r7, r5]	@ zero_extendqisi2
	ldrb	fp, [r7, fp]	@ zero_extendqisi2
	mov	r7, r5
	ldr	r5, .L33
	ldrb	r1, [r5, r1]	@ zero_extendqisi2
	ldrb	r2, [r5, r2]	@ zero_extendqisi2
	str	r1, [sp, #12]
	ldrb	r5, [r5, r9]	@ zero_extendqisi2
	ldr	r1, [sp, #24]
	str	r2, [sp, #56]
	ldr	r2, .L33
	str	r5, [sp, #16]
	ldrb	lr, [r2, lr]	@ zero_extendqisi2
	ldrb	r6, [r2, r6]	@ zero_extendqisi2
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	ldr	r5, [sp, #28]
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	ldr	r1, .L33
	str	r6, [sp, #20]
	ldrb	r1, [r1, r5]	@ zero_extendqisi2
	ldr	r5, .L33
	str	r2, [sp, #24]
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	ldrb	r8, [r5, r8]	@ zero_extendqisi2
	mov	r6, r3
	mov	r3, r5
	ldr	r2, [sp, #36]
	ldr	r5, [sp, #32]
	str	r0, [sp, #60]
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r1, [sp, #28]
	str	r3, [sp, #32]
	ldr	r3, .L33
	eor	r2, fp, lr
	ldrb	r3, [r3, r10]	@ zero_extendqisi2
	lsrs	r1, r2, #7
	str	r3, [sp, #36]
	ldr	r3, .L33
	eor	r9, lr, r8
	ldrb	r4, [r3, r4]	@ zero_extendqisi2
	mov	r3, r7
	eor	r0, r8, r4
	str	r0, [sp, #8]
	ldr	r0, [sp, #20]
	str	r6, [sp, #64]
	eors	r6, r6, r5
	str	r6, [sp, #40]
	eor	r6, r7, r5
	str	r6, [sp, #48]
	str	r7, [sp, #68]
	ldr	r6, [sp, #64]
	ldr	r7, [sp, #20]
	eors	r3, r3, r0
	eors	r6, r6, r7
	lsls	r0, r1, #1
	add	r0, r0, r1
	str	r6, [sp, #44]
	ldr	r6, [sp, #8]
	ldr	r7, [sp, #12]
	add	r0, r0, r0, lsl #3
	eor	r0, r0, r2, lsl #1
	eors	r2, r2, r6
	eor	r10, fp, r4
	eor	lr, r2, lr
	eor	fp, r2, fp
	eors	r4, r4, r2
	eor	r2, r2, r8
	mov	r8, r7
	lsr	r1, r10, #7
	eor	fp, r0, fp
	lsls	r0, r1, #1
	add	r1, r1, r0
	add	r1, r1, r1, lsl #3
	eor	r10, r1, r10, lsl #1
	lsr	r1, r9, #7
	lsls	r0, r1, #1
	add	r1, r1, r0
	ldr	r0, [sp, #8]
	add	r1, r1, r1, lsl #3
	ldr	r6, [sp, #32]
	eor	r9, r1, r9, lsl #1
	lsrs	r1, r0, #7
	ldr	r0, [sp, #12]
	ldr	r7, [sp, #60]
	eor	r4, r10, r4
	str	r4, [sp, #80]
	eor	r4, r0, r6
	lsls	r0, r1, #1
	eor	r8, r8, r7
	str	r4, [sp, #52]
	ldr	r7, [sp, #24]
	ldr	r4, [sp, #60]
	add	r1, r1, r0
	ldr	r0, [sp, #8]
	eor	lr, r9, lr
	add	r1, r1, r1, lsl #3
	str	fp, [sp, #72]
	str	lr, [sp, #76]
	eor	fp, r7, r6
	eor	lr, r4, r7
	eor	r6, r1, r0, lsl #1
	lsrs	r1, r3, #7
	str	lr, [sp, #8]
	eor	lr, r6, r2
	lsls	r2, r1, #1
	ldr	r6, [sp, #40]
	add	r1, r1, r2
	ldr	r7, [sp, #68]
	add	r1, r1, r1, lsl #3
	eor	r1, r1, r3, lsl #1
	eors	r3, r3, r6
	eor	r0, r3, r7
	ldr	r6, [sp, #64]
	ldr	r7, [sp, #20]
	eors	r5, r5, r3
	eors	r6, r6, r3
	eors	r3, r3, r7
	ldr	r7, [sp, #56]
	eor	r9, r1, r0
	str	lr, [sp, #60]
	ldr	r0, [sp, #28]
	mov	lr, r7
	str	r9, [sp, #20]
	mov	r9, r0
	ldr	r2, [sp, #48]
	ldr	r7, [sp, #16]
	lsrs	r2, r2, #7
	lsls	r1, r2, #1
	add	r1, r1, r2
	ldr	r2, [sp, #48]
	add	r1, r1, r1, lsl #3
	eor	r1, r1, r2, lsl #1
	ldr	r2, [sp, #40]
	eor	r10, r1, r5
	lsrs	r2, r2, #7
	lsls	r1, r2, #1
	ldr	r0, [sp, #36]
	add	r1, r1, r2
	ldr	r5, [sp, #40]
	add	r1, r1, r1, lsl #3
	eor	r1, r1, r5, lsl #1
	ldr	r5, [sp, #44]
	eors	r6, r6, r1
	lsrs	r2, r5, #7
	lsls	r1, r2, #1
	str	r6, [sp, #48]
	add	r2, r2, r1
	ldr	r6, [sp, #44]
	add	r2, r2, r2, lsl #3
	eor	r2, r2, r6, lsl #1
	lsr	r1, r8, #7
	eors	r3, r3, r2
	eor	lr, lr, r7
	str	r3, [sp, #40]
	ldr	r7, [sp, #56]
	lsls	r3, r1, #1
	add	r1, r1, r3
	eor	r9, r9, r0
	ldr	r5, [sp, #28]
	ldr	r2, [sp, #32]
	str	r10, [sp, #64]
	ldr	r6, [sp, #16]
	eor	r10, r7, r0
	add	r1, r1, r1, lsl #3
	ldr	r0, [sp, #12]
	eor	r1, r1, r8, lsl #1
	ldr	r3, [sp, #52]
	eor	r8, r8, fp
	eors	r6, r6, r5
	eor	r5, r8, r0
	eor	r0, r8, r2
	ldr	r2, [sp, #24]
	lsrs	r3, r3, #7
	eor	r2, r8, r2
	eor	r8, r8, r4
	eor	r4, r1, r5
	lsls	r1, r3, #1
	add	r3, r3, r1
	ldr	r1, [sp, #52]
	add	r3, r3, r3, lsl #3
	str	r4, [sp, #12]
	eor	r4, r3, r1, lsl #1
	eors	r0, r0, r4
	lsr	r3, fp, #7
	str	r0, [sp, #32]
	lsls	r0, r3, #1
	add	r3, r3, r0
	ldr	r5, [sp, #8]
	add	r3, r3, r3, lsl #3
	eor	fp, r3, fp, lsl #1
	lsrs	r1, r5, #7
	eor	r2, fp, r2
	str	r2, [sp, #24]
	lsls	r2, r1, #1
	add	r2, r2, r1
	add	r2, r2, r2, lsl #3
	lsr	r3, lr, #7
	eor	r2, r2, r5, lsl #1
	eor	r8, r2, r8
	lsls	r2, r3, #1
	add	r2, r2, r3
	ldr	r1, [sp, #28]
	add	r2, r2, r2, lsl #3
	lsr	r0, r10, #7
	eor	r2, r2, lr, lsl #1
	eor	lr, lr, r9
	lsr	r4, r9, #7
	str	r8, [sp, #8]
	eor	r8, lr, r1
	lsls	r1, r0, #1
	lsr	fp, r6, #7
	add	r0, r0, r1
	lsls	r1, r4, #1
	add	r4, r4, r1
	lsl	r1, fp, #1
	eor	r5, lr, r7
	ldr	r3, [sp, #36]
	ldr	r7, [sp, #16]
	add	fp, fp, r1
	add	r0, r0, r0, lsl #3
	add	fp, fp, fp, lsl #3
	add	r4, r4, r4, lsl #3
	eor	r10, r0, r10, lsl #1
	eor	r4, r4, r9, lsl #1
	eor	r1, fp, r6, lsl #1
	eor	r3, lr, r3
	eor	lr, lr, r7
	eor	r0, r4, r8
	eor	r3, r10, r3
	eor	r1, r1, lr
	ldrb	fp, [sp, #72]	@ zero_extendqisi2
	ldrb	r10, [sp, #80]	@ zero_extendqisi2
	ldrb	r9, [sp, #76]	@ zero_extendqisi2
	ldrb	r6, [sp, #64]	@ zero_extendqisi2
	eors	r2, r2, r5
	str	r3, [sp, #16]
	ldrb	r5, [sp, #20]	@ zero_extendqisi2
	str	r0, [sp, #36]
	str	r1, [sp, #28]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	ldrb	r8, [sp, #48]	@ zero_extendqisi2
	ldrb	r4, [sp, #8]	@ zero_extendqisi2
	ldrb	r3, [sp, #32]	@ zero_extendqisi2
	str	r4, [sp, #8]
	uxtb	r2, r2
	str	r3, [sp, #44]
	strb	r3, [ip, #11]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	ldrb	r7, [sp, #12]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	strb	r3, [ip, #9]
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	str	r2, [sp, #16]
	ldrb	lr, [sp, #40]	@ zero_extendqisi2
	ldrb	r1, [sp, #24]	@ zero_extendqisi2
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	ldrb	r4, [sp, #36]	@ zero_extendqisi2
	strb	r3, [ip, #12]
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	strb	fp, [ip]
	strb	r10, [ip, #3]
	strb	r9, [ip, #1]
	strb	r0, [ip, #2]
	strb	r5, [ip, #4]
	strb	r6, [ip, #7]
	strb	r8, [ip, #6]
	strb	lr, [ip, #5]
	str	r7, [sp, #20]
	strb	r7, [ip, #8]
	str	r1, [sp, #40]
	strb	r1, [ip, #10]
	strb	r3, [ip, #15]
	strb	r4, [ip, #14]
	strb	r2, [ip, #13]
	str	r2, [sp, #48]
	ldr	r2, [sp, #4]
	ldr	r7, [sp, #20]
	mov	r1, r2
	ldrb	r3, [r2, #16]	@ zero_extendqisi2
	eor	fp, fp, r3
	b	.L34
.L35:
	.align	2
.L33:
	.word	.LANCHOR0
.L34:
	strb	fp, [ip]
	ldrb	r3, [r2, #17]	@ zero_extendqisi2
	eor	r9, r9, r3
	strb	r9, [ip, #1]
	ldrb	r3, [r2, #18]	@ zero_extendqisi2
	eor	r2, r0, r3
	strb	r2, [ip, #2]
	str	r2, [sp, #24]
	mov	r2, r1
	ldrb	r3, [r1, #19]	@ zero_extendqisi2
	ldr	r0, [sp, #8]
	eor	r10, r10, r3
	strb	r10, [ip, #3]
	ldrb	r3, [r1, #20]	@ zero_extendqisi2
	str	r10, [sp, #32]
	eors	r5, r5, r3
	strb	r5, [ip, #4]
	ldrb	r3, [r1, #21]	@ zero_extendqisi2
	eor	lr, lr, r3
	strb	lr, [ip, #5]
	ldrb	r3, [r1, #22]	@ zero_extendqisi2
	eor	r8, r8, r3
	strb	r8, [ip, #6]
	ldrb	r3, [r1, #23]	@ zero_extendqisi2
	str	r8, [sp, #28]
	eors	r6, r6, r3
	strb	r6, [ip, #7]
	ldrb	r1, [r1, #24]	@ zero_extendqisi2
	str	r6, [sp, #36]
	eors	r1, r1, r7
	mov	r7, r2
	strb	r1, [ip, #8]
	ldrb	r6, [r2, #25]	@ zero_extendqisi2
	eors	r6, r6, r0
	strb	r6, [ip, #9]
	ldrb	r8, [r2, #26]	@ zero_extendqisi2
	ldr	r0, [sp, #40]
	eor	r8, r0, r8
	strb	r8, [ip, #10]
	ldrb	r10, [r2, #27]	@ zero_extendqisi2
	ldr	r3, [sp, #44]
	eor	r10, r3, r10
	strb	r10, [ip, #11]
	ldrb	r3, [r2, #28]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	eors	r2, r2, r3
	strb	r2, [ip, #12]
	ldrb	r0, [r7, #29]	@ zero_extendqisi2
	ldr	r3, [sp, #48]
	eors	r0, r0, r3
	strb	r0, [ip, #13]
	ldrb	r3, [r7, #30]	@ zero_extendqisi2
	eors	r3, r3, r4
	str	r3, [sp, #8]
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	strb	r3, [ip, #14]
	mov	r3, r7
	ldrb	r4, [r7, #31]	@ zero_extendqisi2
	ldr	r7, [sp, #16]
	adds	r3, r3, #16
	eors	r4, r4, r7
	ldr	r7, [sp, #84]
	str	r3, [sp, #4]
	cmp	r7, r3
	strb	r4, [ip, #15]
	bne	.L16
	ldr	r7, [sp, #88]
	str	r4, [sp, #12]
	mov	r4, r7
	adds	r4, r4, #160
	str	r5, [sp, #4]
	mov	r5, r4
	ldr	r4, [sp, #92]
	str	r5, [sp, #20]
	cmp	r4, r5
	ite	hi
	movhi	r5, #0
	movls	r5, #1
	ldr	r4, .L36
	adds	r7, r7, #168
	ldrb	r4, [r4, fp]	@ zero_extendqisi2
	cmp	ip, r7
	it	cs
	orrcs	r5, r5, #1
	str	r4, [sp, #40]
	ldr	r7, [sp, #4]
	ldr	r4, .L36
	ldr	r3, [sp, #8]
	ldrb	r4, [r4, r7]	@ zero_extendqisi2
	str	r4, [sp, #44]
	ldr	r4, .L36
	ldrb	r0, [r4, r0]	@ zero_extendqisi2
	ldrb	fp, [r4, r6]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldr	r0, [sp, #24]
	ldrb	r7, [r4, r1]	@ zero_extendqisi2
	ldrb	r6, [r4, r0]	@ zero_extendqisi2
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	str	r6, [sp, #8]
	ldr	r6, [sp, #28]
	ldrb	r9, [r4, r9]	@ zero_extendqisi2
	ldrb	r1, [r4, r6]	@ zero_extendqisi2
	mov	r6, r4
	ldrb	r0, [r4, r8]	@ zero_extendqisi2
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	str	r2, [sp, #52]
	ldrb	r2, [r4, lr]	@ zero_extendqisi2
	ldr	r4, [sp, #32]
	str	r7, [sp, #48]
	ldrb	r6, [r6, r4]	@ zero_extendqisi2
	ldr	r7, [sp, #36]
	ldr	r4, .L36
	str	r1, [sp, #4]
	ldrb	r7, [r4, r7]	@ zero_extendqisi2
	ldrb	lr, [r4, r10]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	strb	r9, [ip, #13]
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
	ldrb	r1, [sp, #40]	@ zero_extendqisi2
	strb	r2, [ip, #1]
	strb	r1, [ip]
	ldrb	r1, [sp, #44]	@ zero_extendqisi2
	strb	fp, [ip, #5]
	strb	r1, [ip, #4]
	ldrb	r1, [sp, #48]	@ zero_extendqisi2
	strb	r0, [ip, #2]
	strb	r1, [ip, #8]
	ldrb	r1, [sp, #52]	@ zero_extendqisi2
	strb	r3, [ip, #6]
	strb	r1, [ip, #12]
	ldrb	r1, [sp, #16]	@ zero_extendqisi2
	strb	r6, [ip, #7]
	strb	r1, [ip, #9]
	ldrb	r1, [sp, #8]	@ zero_extendqisi2
	strb	r7, [ip, #11]
	strb	r1, [ip, #10]
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
	strb	lr, [ip, #15]
	strb	r1, [ip, #14]
	strb	r4, [ip, #3]
	cmp	r5, #0
	beq	.L17
	ldr	r5, [sp, #20]
	orr	r3, r5, ip
	lsls	r3, r3, #29
	bne	.L17
	ldr	r7, [sp, #88]
	ldr	r0, [ip]
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #164]
	ldr	r1, [ip, #4]
	eors	r2, r2, r0
	eors	r3, r3, r1
	stm	ip, {r2, r3}
	ldr	r0, [ip, #8]
	ldr	r2, [r7, #168]
	ldr	r3, [r7, #172]
	ldr	r1, [ip, #12]
	eors	r2, r2, r0
	eors	r3, r3, r1
	str	r2, [ip, #8]
	str	r3, [ip, #12]
.L13:
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	ldr	r0, [sp, #88]
	ldrb	r2, [ip]	@ zero_extendqisi2
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r1, [ip, #1]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [ip, #2]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #1]
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	ldrb	r1, [ip, #3]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #2]
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	ldrb	r2, [ip, #4]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #3]
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	ldrb	r1, [ip, #5]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #4]
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	ldrb	r2, [ip, #6]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #5]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	ldrb	r1, [ip, #7]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #6]
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
	ldrb	r2, [ip, #8]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #7]
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	ldrb	r1, [ip, #9]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #8]
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	ldrb	r2, [ip, #10]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #9]
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #10]
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
	ldrb	r2, [ip, #11]	@ zero_extendqisi2
	mov	r7, r0
	eors	r3, r3, r2
	strb	r3, [ip, #11]
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	ldrb	r2, [ip, #13]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #12]
	ldrb	r3, [r0, #13]	@ zero_extendqisi2
	ldrb	r1, [ip, #14]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #13]
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	ldrb	r2, [ip, #15]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #14]
	ldrb	r3, [r0, #15]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #15]
	b	.L15
.L17:
	ldr	r5, [sp, #88]
	ldrb	r3, [ip]	@ zero_extendqisi2
	ldrb	r1, [r5, #160]	@ zero_extendqisi2
	ldrb	r6, [ip, #4]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip]
	ldrb	r3, [r5, #161]	@ zero_extendqisi2
	ldrb	r1, [ip, #5]	@ zero_extendqisi2
	eors	r2, r2, r3
	strb	r2, [ip, #1]
	ldrb	r2, [r5, #162]	@ zero_extendqisi2
	ldrb	r3, [ip, #6]	@ zero_extendqisi2
	eors	r0, r0, r2
	strb	r0, [ip, #2]
	mov	r0, r5
	ldrb	r2, [r5, #163]	@ zero_extendqisi2
	ldrb	r5, [ip, #7]	@ zero_extendqisi2
	eors	r4, r4, r2
	strb	r4, [ip, #3]
	ldrb	r2, [r0, #164]	@ zero_extendqisi2
	ldrb	r4, [ip, #8]	@ zero_extendqisi2
	eors	r2, r2, r6
	mov	r6, r0
	strb	r2, [ip, #4]
	ldrb	r2, [r0, #165]	@ zero_extendqisi2
	ldrb	r0, [ip, #9]	@ zero_extendqisi2
	eors	r2, r2, r1
	strb	r2, [ip, #5]
	ldrb	r2, [r6, #166]	@ zero_extendqisi2
	ldrb	r1, [ip, #10]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #6]
	ldrb	r3, [r6, #167]	@ zero_extendqisi2
	ldrb	r2, [ip, #11]	@ zero_extendqisi2
	eors	r3, r3, r5
	strb	r3, [ip, #7]
	ldrb	r3, [r6, #168]	@ zero_extendqisi2
	eors	r3, r3, r4
	strb	r3, [ip, #8]
	ldrb	r3, [r6, #169]	@ zero_extendqisi2
	eors	r3, r3, r0
	strb	r3, [ip, #9]
	ldrb	r3, [r6, #170]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #10]
	ldrb	r3, [r6, #171]	@ zero_extendqisi2
	ldrb	r1, [ip, #12]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #11]
	ldrb	r3, [r6, #172]	@ zero_extendqisi2
	ldrb	r2, [ip, #13]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #12]
	ldrb	r3, [r6, #173]	@ zero_extendqisi2
	ldrb	r1, [ip, #14]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #13]
	ldrb	r3, [r6, #174]	@ zero_extendqisi2
	ldrb	r2, [ip, #15]	@ zero_extendqisi2
	eors	r3, r3, r1
	strb	r3, [ip, #14]
	ldrb	r3, [r6, #175]	@ zero_extendqisi2
	eors	r3, r3, r2
	strb	r3, [ip, #15]
	b	.L13
.L37:
	.align	2
.L36:
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
.L39:
	b	.L39
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
