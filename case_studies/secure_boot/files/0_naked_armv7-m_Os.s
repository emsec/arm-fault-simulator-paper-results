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
	.file	"bootloader.c"
	.text
	.align	1
	.global	sha256
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sha256, %function
sha256:
	@ args = 0, pretend = 0, frame = 328
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L16
	sub	sp, sp, #332
	add	r5, sp, #8
	mov	r6, r0
	mov	lr, r1
	mov	r4, r2
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	r7, {r0, r1, r2, r3}
	stm	r5, {r0, r1, r2, r3}
	movs	r0, #0
	add	r2, r7, #16
	add	r5, sp, #72
	add	r8, sp, #264
	add	r3, sp, #40
	str	r2, [sp, #4]
.L2:
	cmp	lr, r0
	bls	.L8
	mov	ip, #0
	adds	r7, r6, r0
.L3:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	ldrb	r9, [r7]	@ zero_extendqisi2
	lsls	r2, r2, #16
	orr	r2, r2, r9, lsl #24
	ldrb	r9, [r7, #3]	@ zero_extendqisi2
	adds	r7, r7, #4
	orr	r2, r2, r9
	ldrb	r9, [r7, #-2]	@ zero_extendqisi2
	orr	r2, r2, r9, lsl #8
	str	r2, [r5, ip, lsl #2]
	add	ip, ip, #1
	cmp	ip, #16
	bne	.L3
	mov	r7, r5
.L4:
	mov	r10, r7
	ldr	ip, [r7, #56]
	ldr	r9, [r7, #4]!
	ror	r2, ip, #19
	eor	r2, r2, ip, ror #17
	eor	r2, r2, ip, lsr #10
	ldr	ip, [r10, #36]
	ldr	r10, [r10]
	cmp	r8, r7
	add	ip, ip, r10
	add	r2, r2, ip
	ror	ip, r9, #18
	eor	ip, ip, r9, ror #7
	eor	ip, ip, r9, lsr #3
	add	r2, r2, ip
	str	r2, [r7, #60]
	bne	.L4
	mov	ip, #0
	ldr	r2, [sp, #8]
	str	r2, [r3]
	ldr	r2, [sp, #12]
	str	r2, [r3, #4]
	ldr	r2, [sp, #16]
	str	r2, [r3, #8]
	ldr	r2, [sp, #20]
	str	r2, [r3, #12]
	ldr	r2, [sp, #24]
	str	r2, [r3, #16]
	ldr	r2, [sp, #28]
	str	r2, [r3, #20]
	ldr	r2, [sp, #32]
	str	r2, [r3, #24]
	ldr	r2, [sp, #36]
	str	r2, [r3, #28]
.L6:
	ldr	r9, [r3, #16]
	ldr	r2, [r3, #24]
	ldr	r7, [r3, #20]
	bic	r2, r2, r9
	and	r7, r9, r7
	eors	r7, r7, r2
	ror	r2, r9, #11
	eor	r2, r2, r9, ror #6
	eor	r2, r2, r9, ror #25
	add	r7, r7, r2
	ldr	r2, [r3, #28]
	ldr	fp, [r3]
	add	r7, r7, r2
	ldr	r2, [r5, ip, lsl #2]
	ldr	r10, [r3, #4]
	add	r7, r7, r2
	ldr	r2, [sp, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r2, ip, lsl #2]
	eor	r9, r1, r10
	add	r7, r7, r2
	ror	r2, fp, #13
	and	r10, r10, r1
	eor	r2, r2, fp, ror #2
	and	r9, r9, fp
	eor	r9, r9, r10
	eor	r2, r2, fp, ror #22
	add	r2, r2, r9
	mov	r9, #7
	add	r10, sp, #68
.L5:
	ldr	fp, [r10, #-4]!
	subs	r9, r9, #1
	str	fp, [r10, #4]
	bne	.L5
	add	r2, r2, r7
	str	r2, [r3]
	ldr	r2, [r3, #16]
	add	ip, ip, #1
	add	r2, r2, r7
	cmp	ip, #64
	str	r2, [r3, #16]
	bne	.L6
.L7:
	add	r2, sp, #8
	ldr	r2, [r2, r9, lsl #2]
	ldr	r7, [r3, r9, lsl #2]
	add	r1, sp, #8
	add	r2, r2, r7
	str	r2, [r1, r9, lsl #2]
	add	r9, r9, #1
	cmp	r9, #8
	bne	.L7
	adds	r0, r0, #64
	b	.L2
.L8:
	movs	r3, #0
.L9:
	add	r2, sp, #8
	ldr	r2, [r2, r3, lsl #2]
	adds	r3, r3, #1
	lsrs	r1, r2, #24
	strb	r1, [r4]
	lsrs	r1, r2, #16
	strb	r1, [r4, #1]
	cmp	r3, #8
	lsr	r1, r2, #8
	strb	r1, [r4, #2]
	strb	r2, [r4, #3]
	add	r4, r4, #4
	bne	.L9
	add	sp, sp, #332
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	sha256, .-sha256
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
.L19:
	b	.L19
	.size	report_error, .-report_error
	.align	1
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
	sub	sp, sp, #32
	mov	r4, r2
	mov	r2, sp
	bl	sha256
	movs	r3, #0
.L23:
	ldrb	r1, [sp, r3]	@ zero_extendqisi2
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	cmp	r1, r2
	beq	.L22
	bl	report_error
.L22:
	adds	r3, r3, #1
	cmp	r3, #32
	bne	.L23
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
