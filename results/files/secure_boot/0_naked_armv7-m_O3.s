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
	.file	"bootloader.c"
	.text
	.align	1
	.p2align 2,,3
	.global	sha256
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sha256, %function
sha256:
	@ args = 0, pretend = 0, frame = 344
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	sub	sp, sp, #348
	ldr	r4, .L18
	add	r5, sp, #56
	str	r1, [sp, #48]
	str	r0, [sp, #52]
	str	r2, [sp, #44]
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	stm	r5, {r0, r1, r2, r3}
	cmp	r6, #0
	beq	.L2
	movs	r3, #0
	str	r3, [sp, #40]
	ldr	r3, [sp, #56]
	add	r10, sp, #88
	str	r3, [sp, #12]
	ldr	r3, [sp, #60]
	str	r3, [sp, #16]
	ldr	r3, [sp, #64]
	str	r3, [sp, #20]
	ldr	r3, [sp, #68]
	str	r3, [sp, #24]
	ldr	r3, [sp, #72]
	str	r3, [sp, #28]
	ldr	r3, [sp, #76]
	str	r3, [sp, #32]
	ldr	r3, [sp, #80]
	str	r3, [sp, #36]
	ldr	r3, [sp, #84]
	str	r3, [sp, #8]
	add	r3, r4, #16
	str	r3, [sp, #4]
.L7:
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #40]
	add	r4, sp, #84
	adds	r0, r3, r2
.L3:
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r2, [r0]	@ zero_extendqisi2
	ldrb	r1, [r0, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r2, lsl #24
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	orrs	r3, r3, r1
	orr	r3, r3, r2, lsl #8
	str	r3, [r4, #4]!
	add	r3, sp, #148
	cmp	r3, r4
	add	r0, r0, #4
	bne	.L3
	mov	r5, r10
	movs	r7, #16
	ldr	r4, [r10, #56]
	ldr	r2, [r10, #60]
	ldr	r6, [r10]
.L4:
	ror	r1, r4, #19
	eor	r1, r1, r4, ror #17
	ror	r3, r2, #17
	eor	r1, r1, r4, lsr #10
	eor	r3, r3, r2, ror #19
	ldr	r0, [r5, #4]
	ldr	r4, [r5, #36]
	add	r1, r1, r6
	eor	r3, r3, r2, lsr #10
	ldr	r6, [r5, #8]
	ldr	r2, [r5, #40]
	add	r1, r1, r4
	add	r3, r3, r2
	ror	r4, r0, #18
	ror	r2, r6, #7
	eor	r4, r4, r0, ror #7
	eor	r2, r2, r6, ror #18
	eor	r4, r4, r0, lsr #3
	add	r3, r3, r0
	eor	r2, r2, r6, lsr #3
	adds	r7, r7, #2
	add	r4, r4, r1
	add	r2, r2, r3
	cmp	r7, #62
	str	r4, [r5, #64]
	str	r2, [r5, #68]
	add	r5, r5, #8
	bne	.L4
	add	r6, sp, #332
	add	r5, sp, #272
.L5:
	mov	r4, r5
	ldr	r2, [r5, #56]
	ldr	r1, [r5, #4]!
	ror	r3, r2, #17
	ldr	r0, [r4]
	eor	r3, r3, r2, ror #19
	ldr	r4, [r4, #36]
	eor	r3, r3, r2, lsr #10
	ror	r2, r1, #7
	add	r0, r0, r4
	eor	r2, r2, r1, ror #18
	add	r3, r3, r0
	eor	r2, r2, r1, lsr #3
	add	r3, r3, r2
	str	r3, [r6, #4]!
	add	r3, sp, #340
	cmp	r6, r3
	bne	.L5
	add	r4, sp, #28
	ldr	r3, [sp, #8]
	ldm	r4, {r4, r8, ip}
	ldr	r9, [sp, #24]
	ldr	r7, [sp, #20]
	ldr	lr, [sp, #16]
	ldr	r5, [sp, #12]
	movs	r6, #0
	b	.L6
.L8:
	mov	ip, r8
	mov	r7, lr
	mov	r8, r4
	mov	lr, r5
	mov	r4, r1
	mov	r5, fp
.L6:
	bic	r2, ip, r4
	and	fp, r8, r4
	mov	r0, r2
	mov	r2, fp
	ror	r1, r4, #11
	eor	r1, r1, r4, ror #6
	eor	r1, r1, r4, ror #25
	eors	r2, r2, r0
	add	r2, r2, r1
	ldr	r1, [sp, #4]
	eor	fp, lr, r7
	ldr	r0, [r1, r6, lsl #2]
	ror	r1, r5, #13
	str	r0, [sp]
	ldr	r0, [r10, r6, lsl #2]
	eor	r1, r1, r5, ror #2
	add	r2, r2, r0
	ldr	r0, [sp]
	and	fp, fp, r5
	add	r2, r2, r0
	and	r0, lr, r7
	eor	r1, r1, r5, ror #22
	eor	fp, fp, r0
	adds	r6, r6, #1
	add	r2, r2, r3
	add	fp, fp, r1
	cmp	r6, #64
	add	r1, r9, r2
	add	fp, fp, r2
	mov	r9, r7
	mov	r3, ip
	bne	.L8
	ldr	r3, [sp, #12]
	add	r3, r3, fp
	mov	r2, r3
	str	r3, [sp, #12]
	ldr	r3, [sp, #16]
	str	r2, [sp, #56]
	add	r3, r3, r5
	mov	r0, r3
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	str	r0, [sp, #60]
	add	r3, r3, lr
	mov	r5, r3
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	str	r5, [sp, #64]
	add	r3, r3, r7
	mov	r6, r3
	str	r3, [sp, #24]
	ldr	r3, [sp, #28]
	str	r6, [sp, #68]
	add	r3, r3, r1
	mov	r1, r3
	str	r3, [sp, #28]
	ldr	r3, [sp, #32]
	str	r1, [sp, #72]
	add	r3, r3, r4
	mov	r4, r3
	str	r3, [sp, #32]
	ldr	r3, [sp, #36]
	str	r4, [sp, #76]
	add	r3, r3, r8
	mov	r7, r3
	str	r3, [sp, #36]
	ldr	r3, [sp, #8]
	str	r7, [sp, #80]
	add	r3, r3, ip
	str	r3, [sp, #8]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #40]
	str	r2, [sp, #84]
	ldr	r2, [sp, #48]
	adds	r3, r3, #64
	cmp	r2, r3
	str	r3, [sp, #40]
	bhi	.L7
.L2:
	movs	r7, #0
	mov	r6, r7
	mov	r5, r7
	mov	r4, r7
	mov	r0, r7
	mov	r1, r7
	mov	r2, r7
	mov	r10, r7
	ldr	ip, [sp, #56]
	ldr	r3, [sp, #44]
	lsr	lr, ip, #24
	bfi	r7, lr, #0, #8
	lsr	lr, ip, #16
	bfi	r7, lr, #8, #8
	lsr	lr, ip, #8
	bfi	r7, lr, #16, #8
	ldr	lr, [sp, #60]
	bfi	r7, ip, #24, #8
	str	r7, [r3]	@ unaligned
	lsr	r7, lr, #24
	bfi	r6, r7, #0, #8
	lsr	r7, lr, #16
	bfi	r6, r7, #8, #8
	lsr	r7, lr, #8
	ldr	r9, [sp, #64]
	bfi	r6, r7, #16, #8
	bfi	r6, lr, #24, #8
	str	r6, [r3, #4]	@ unaligned
	lsr	r6, r9, #24
	bfi	r5, r6, #0, #8
	lsr	r6, r9, #16
	bfi	r5, r6, #8, #8
	lsr	r6, r9, #8
	ldr	r8, [sp, #68]
	bfi	r5, r6, #16, #8
	bfi	r5, r9, #24, #8
	str	r5, [r3, #8]	@ unaligned
	lsr	r5, r8, #24
	bfi	r4, r5, #0, #8
	lsr	r5, r8, #16
	ldr	ip, [sp, #72]
	bfi	r4, r5, #8, #8
	lsr	r5, r8, #8
	bfi	r4, r5, #16, #8
	ldr	lr, [sp, #76]
	bfi	r4, r8, #24, #8
	lsr	r5, ip, #24
	ldr	r7, [sp, #80]
	bfi	r0, r5, #0, #8
	str	r4, [r3, #12]	@ unaligned
	lsr	r4, ip, #16
	ldr	r6, [sp, #84]
	lsr	r5, lr, #24
	bfi	r0, r4, #8, #8
	lsr	r4, ip, #8
	bfi	r1, r5, #0, #8
	bfi	r0, r4, #16, #8
	lsrs	r5, r7, #24
	lsr	r4, lr, #16
	bfi	r2, r5, #0, #8
	bfi	r1, r4, #8, #8
	lsrs	r5, r6, #24
	lsrs	r4, r7, #16
	bfi	r10, r5, #0, #8
	bfi	r2, r4, #8, #8
	lsrs	r4, r6, #16
	bfi	r10, r4, #8, #8
	lsr	r4, lr, #8
	bfi	r1, r4, #16, #8
	lsrs	r4, r7, #8
	bfi	r2, r4, #16, #8
	lsrs	r4, r6, #8
	bfi	r10, r4, #16, #8
	bfi	r0, ip, #24, #8
	bfi	r1, lr, #24, #8
	bfi	r2, r7, #24, #8
	bfi	r10, r6, #24, #8
	str	r0, [r3, #16]	@ unaligned
	str	r1, [r3, #20]	@ unaligned
	str	r2, [r3, #24]	@ unaligned
	str	r10, [r3, #28]	@ unaligned
	add	sp, sp, #348
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.size	sha256, .-sha256
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
.L21:
	b	.L21
	.size	report_error, .-report_error
	.align	1
	.p2align 2,,3
	.global	execute_firmware
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	execute_firmware, %function
execute_firmware:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	execute_firmware
	.size	execute_firmware, .-execute_firmware
	.align	1
	.p2align 2,,3
	.global	verify_and_run_firmware
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	verify_and_run_firmware, %function
verify_and_run_firmware:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r2
	sub	sp, sp, #32
	mov	r2, sp
	bl	sha256
	subs	r2, r4, #1
	add	r3, sp, #-1
	add	r4, sp, #31
	b	.L26
.L25:
	cmp	r3, r4
	beq	.L29
.L26:
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	cmp	r0, r1
	beq	.L25
	bl	report_error
.L29:
	bl	execute_firmware
	.size	verify_and_run_firmware, .-verify_and_run_firmware
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1779033703
	.word	-1150833019
	.word	1013904242
	.word	-1521486534
	.word	1359893119
	.word	-1694144372
	.word	528734635
	.word	1541459225
	.type	constants, %object
	.size	constants, 256
constants:
	.word	1116352408
	.word	1899447441
	.word	-1245643825
	.word	-373957723
	.word	961987163
	.word	1508970993
	.word	-1841331548
	.word	-1424204075
	.word	-670586216
	.word	310598401
	.word	607225278
	.word	1426881987
	.word	1925078388
	.word	-2132889090
	.word	-1680079193
	.word	-1046744716
	.word	-459576895
	.word	-272742522
	.word	264347078
	.word	604807628
	.word	770255983
	.word	1249150122
	.word	1555081692
	.word	1996064986
	.word	-1740746414
	.word	-1473132947
	.word	-1341970488
	.word	-1084653625
	.word	-958395405
	.word	-710438585
	.word	113926993
	.word	338241895
	.word	666307205
	.word	773529912
	.word	1294757372
	.word	1396182291
	.word	1695183700
	.word	1986661051
	.word	-2117940946
	.word	-1838011259
	.word	-1564481375
	.word	-1474664885
	.word	-1035236496
	.word	-949202525
	.word	-778901479
	.word	-694614492
	.word	-200395387
	.word	275423344
	.word	430227734
	.word	506948616
	.word	659060556
	.word	883997877
	.word	958139571
	.word	1322822218
	.word	1537002063
	.word	1747873779
	.word	1955562222
	.word	2024104815
	.word	-2067236844
	.word	-1933114872
	.word	-1866530822
	.word	-1538233109
	.word	-1090935817
	.word	-965641998
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
