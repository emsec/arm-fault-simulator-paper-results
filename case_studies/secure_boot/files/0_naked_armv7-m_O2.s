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
	ldr	r4, .L25
	add	r5, sp, #24
	str	r1, [sp, #12]
	str	r0, [sp, #16]
	str	r2, [sp, #20]
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1, r2, r3}
	stm	r5, {r0, r1, r2, r3}
	cmp	r6, #0
	beq	.L21
	movs	r3, #0
	str	r3, [sp, #8]
	add	r3, r4, #16
	str	r3, [sp, #4]
	add	r10, sp, #52
	add	r9, sp, #56
.L12:
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #8]
	add	r4, sp, #84
	adds	r0, r3, r2
.L4:
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
	bne	.L4
	add	r5, sp, #88
.L5:
	mov	r4, r5
	ldr	r2, [r5, #56]
	ldr	r1, [r5, #4]!
	ror	r3, r2, #19
	ldr	r0, [r4, #36]
	eor	r3, r3, r2, ror #17
	ldr	r4, [r4]
	eor	r3, r3, r2, lsr #10
	ror	r2, r1, #18
	add	r0, r0, r4
	eor	r2, r2, r1, ror #7
	add	r3, r3, r0
	eor	r2, r2, r1, lsr #3
	add	r3, r3, r2
	str	r3, [r5, #60]
	add	r3, sp, #280
	cmp	r3, r5
	bne	.L5
	ldr	r1, [sp, #44]
	ldr	fp, [sp, #24]
	ldr	r4, .L25+4
	ldr	r8, [sp, #28]
	str	r1, [r9, #20]
	mov	lr, r1
	mov	r2, r4
	movs	r7, #0
	mov	r1, fp
	mov	r4, r8
	ldr	ip, [sp, #32]
	ldr	r3, [sp, #36]
	ldr	r6, [sp, #40]
	ldr	r5, [sp, #48]
	ldr	r0, [sp, #52]
	str	fp, [r9]
	str	r8, [r9, #4]
	str	ip, [r9, #8]
	str	r3, [r9, #12]
	str	r6, [r9, #16]
	str	r5, [r9, #24]
	str	r0, [r9, #28]
.L10:
	add	r8, r0, r2
	add	r2, sp, #88
	ldr	r0, [r2, r7, lsl #2]
	ror	r2, r6, #11
	eor	r2, r2, r6, ror #6
	and	lr, r6, lr
	add	r8, r8, r0
	eor	r2, r2, r6, ror #25
	bic	r0, r5, r6
	eor	r0, r0, lr
	add	r6, r2, r8
	eor	lr, ip, r4
	ror	r2, r1, #13
	eor	r2, r2, r1, ror #2
	and	lr, lr, r1
	and	r4, r4, ip
	eor	r2, r2, r1, ror #22
	eor	r1, lr, r4
	add	r3, sp, #76
	add	r6, r6, r0
	add	r2, r2, r1
	b	.L7
.L22:
	ldr	r5, [r3], #-4
.L7:
	cmp	r10, r3
	str	r5, [r3, #8]
	bne	.L22
	ldr	r3, [r9, #16]
	adds	r7, r7, #1
	adds	r1, r6, r2
	cmp	r7, #64
	add	r6, r6, r3
	str	r1, [r9]
	str	r6, [r9, #16]
	beq	.L23
	ldr	r3, [sp, #4]
	ldr	r0, [r9, #28]
	ldr	lr, [r9, #20]
	ldr	r5, [r9, #24]
	ldr	r2, [r3, r7, lsl #2]
	ldr	r4, [r9, #4]
	ldr	ip, [r9, #8]
	b	.L10
.L23:
	mov	r2, r1
	add	r3, sp, #24
	add	r1, sp, #60
	mov	r0, fp
	b	.L9
.L24:
	ldr	r0, [r3]
	ldr	r2, [r1], #4
.L9:
	add	r2, r2, r0
	str	r2, [r3], #4
	cmp	r9, r3
	bne	.L24
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	adds	r3, r3, #64
	cmp	r2, r3
	str	r3, [sp, #8]
	bhi	.L12
.L13:
	ldr	r3, [sp, #20]
	add	r1, sp, #20
.L3:
	ldr	r2, [r1, #4]!
	adds	r3, r3, #4
	lsrs	r5, r2, #24
	lsrs	r4, r2, #16
	lsrs	r0, r2, #8
	cmp	r10, r1
	strb	r2, [r3, #-1]
	strb	r5, [r3, #-4]
	strb	r4, [r3, #-3]
	strb	r0, [r3, #-2]
	bne	.L3
	add	sp, sp, #348
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L21:
	add	r10, sp, #52
	b	.L13
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.word	1116352408
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
.L28:
	b	.L28
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
	b	.L33
.L32:
	cmp	r3, r4
	beq	.L36
.L33:
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	cmp	r0, r1
	beq	.L32
	bl	report_error
.L36:
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
