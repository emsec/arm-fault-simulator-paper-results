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
    .file "bootloader.c"
    .text
    .align 1
    .p2align 2,,3
    .global sha256
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type sha256, %function
sha256:
    @ args = 0, pretend = 0, frame = 352
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    sub r5, sp, #352 @ sub sp, sp, #352
    sub r5, sp, #352
    mov sp, r5
    mov sp, r5
    ldr r4, .L18 @ ldr r4, .L18
    ldr r4, .L18
    add r6, sp, #64 @ add r6, sp, #64
    add r6, sp, #64
    str r1, [sp, #56] @ str r1, [sp, #56]
    str r1, [sp, #56]
    str r0, [sp, #60] @ str r0, [sp, #60]
    str r0, [sp, #60]
    str r2, [sp, #52] @ str r2, [sp, #52]
    str r2, [sp, #52]
    ldmia r4, {r0, r1, r2, r3} @ ldmia r4!, {r0, r1, r2, r3}
    ldmia r4, {r0, r1, r2, r3}
    add r5, r4, #16
    add r5, r4, #16
    mov r4, r5
    mov r4, r5
    stmia r6, {r0, r1, r2, r3} @ stmia r6!, {r0, r1, r2, r3}
    stmia r6, {r0, r1, r2, r3}
    add r5, r6, #16
    add r5, r6, #16
    mov r6, r5
    mov r6, r5
    ldm r4, {r0, r1, r2, r3} @ ldm r4, {r0, r1, r2, r3}
    ldm r4, {r0, r1, r2, r3}
    stm r6, {r0, r1, r2, r3} @ stm r6, {r0, r1, r2, r3}
    stm r6, {r0, r1, r2, r3}
    cmp r7, #0 @ cmp r7, #0
    cmp r7, #0
    beq .L2 @ beq .L2
    beq .L2
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    str r3, [sp, #48] @ str r3, [sp, #48]
    str r3, [sp, #48]
    ldr r3, [sp, #64] @ ldr r3, [sp, #64]
    ldr r3, [sp, #64]
    add sl, sp, #96 @ add sl, sp, #96
    add sl, sp, #96
    str r3, [sp, #24] @ str r3, [sp, #24]
    str r3, [sp, #24]
    ldr r3, [sp, #68] @ ldr r3, [sp, #68]
    ldr r3, [sp, #68]
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    ldr r3, [sp, #72] @ ldr r3, [sp, #72]
    ldr r3, [sp, #72]
    str r3, [sp, #32] @ str r3, [sp, #32]
    str r3, [sp, #32]
    ldr r3, [sp, #76] @ ldr r3, [sp, #76]
    ldr r3, [sp, #76]
    str r3, [sp, #36] @ str r3, [sp, #36]
    str r3, [sp, #36]
    ldr r3, [sp, #80] @ ldr r3, [sp, #80]
    ldr r3, [sp, #80]
    str r3, [sp, #40] @ str r3, [sp, #40]
    str r3, [sp, #40]
    ldr r3, [sp, #84] @ ldr r3, [sp, #84]
    ldr r3, [sp, #84]
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
    ldr r3, [sp, #88] @ ldr r3, [sp, #88]
    ldr r3, [sp, #88]
    str r3, [sp, #16] @ str r3, [sp, #16]
    str r3, [sp, #16]
    ldr r3, [sp, #92] @ ldr r3, [sp, #92]
    ldr r3, [sp, #92]
    str r3, [sp, #20] @ str r3, [sp, #20]
    str r3, [sp, #20]
    add r3, r4, #16 @ add r3, r4, #16
    add r3, r4, #16
    str r3, [sp, #12] @ str r3, [sp, #12]
    str r3, [sp, #12]
.L7:
    ldr r3, [sp, #60] @ ldr r3, [sp, #60]
    ldr r3, [sp, #60]
    ldr r2, [sp, #48] @ ldr r2, [sp, #48]
    ldr r2, [sp, #48]
    add r4, sp, #92 @ add r4, sp, #92
    add r4, sp, #92
    adds r0, r3, r2 @ adds r0, r3, r2
    adds r0, r3, r2
.L3:
    ldrb r3, [r0, #1] @ ldrb r3, [r0, #1]
    ldrb r3, [r0, #1]
    ldrb r2, [r0] @ ldrb r2, [r0]
    ldrb r2, [r0]
    ldrb r1, [r0, #3] @ ldrb r1, [r0, #3]
    ldrb r1, [r0, #3]
    lsls r5, r3, #16 @ lsls r3, r3, #16
    lsls r5, r3, #16
    mov r3, r5
    mov r3, r5
    orr r5, r3, r2, lsl #24 @ orr r3, r3, r2, lsl #24
    orr r5, r3, r2, lsl #24
    mov r3, r5
    mov r3, r5
    ldrb r2, [r0, #2] @ ldrb r2, [r0, #2]
    ldrb r2, [r0, #2]
    orrs r5, r3, r1 @ orrs r3, r3, r1
    orrs r5, r3, r1
    mov r3, r5
    mov r3, r5
    orr r5, r3, r2, lsl #8 @ orr r3, r3, r2, lsl #8
    orr r5, r3, r2, lsl #8
    mov r3, r5
    mov r3, r5
    str r3, [r4, #4] @ str r3, [r4, #4]!
    str r3, [r4, #4]
    add r5, r4, #4 @ add r4, r4, #4
    add r5, r4, #4
    mov r4, r5
    mov r4, r5
    add r3, sp, #156 @ add r3, sp, #156
    add r3, sp, #156
    cmp r3, r4 @ cmp r3, r4
    cmp r3, r4
    add r5, r0, #4 @ add r0, r0, #4
    add r5, r0, #4
    mov r0, r5
    mov r0, r5
    bne .L3 @ bne .L3
    bne .L3
    mov r6, sl @ mov r6, sl
    mov r6, sl
    mov lr, #16 @ mov lr, #16
    mov lr, #16
    ldr r4, [sl, #56] @ ldr r4, [sl, #56]
    ldr r4, [sl, #56]
    ldr r2, [sl, #60] @ ldr r2, [sl, #60]
    ldr r2, [sl, #60]
    ldr r7, [sl] @ ldr r7, [sl]
    ldr r7, [sl]
.L4:
    ror r0, r4, #19 @ ror r0, r4, #19
    ror r0, r4, #19
    eor r5, r0, r4, ror #17 @ eor r0, r0, r4, ror #17
    eor r5, r0, r4, ror #17
    mov r0, r5
    mov r0, r5
    eor r5, r0, r4, lsr #10 @ eor r0, r0, r4, lsr #10
    eor r5, r0, r4, lsr #10
    mov r0, r5
    mov r0, r5
    ror r3, r2, #17 @ ror r3, r2, #17
    ror r3, r2, #17
    ldr r4, [r6, #4] @ ldr r4, [r6, #4]
    ldr r4, [r6, #4]
    ldr r1, [r6, #36] @ ldr r1, [r6, #36]
    ldr r1, [r6, #36]
    add r5, r0, r7 @ add r0, r0, r7
    add r5, r0, r7
    mov r0, r5
    mov r0, r5
    eor r5, r3, r2, ror #19 @ eor r3, r3, r2, ror #19
    eor r5, r3, r2, ror #19
    mov r3, r5
    mov r3, r5
    ldr r7, [r6, #8] @ ldr r7, [r6, #8]
    ldr r7, [r6, #8]
    eor r5, r3, r2, lsr #10 @ eor r2, r3, r2, lsr #10
    eor r5, r3, r2, lsr #10
    mov r2, r5
    mov r2, r5
    ldr r3, [r6, #40] @ ldr r3, [r6, #40]
    ldr r3, [r6, #40]
    add r5, r0, r1 @ add r0, r0, r1
    add r5, r0, r1
    mov r0, r5
    mov r0, r5
    ror ip, r4, #18 @ ror ip, r4, #18
    ror ip, r4, #18
    ror r1, r7, #7 @ ror r1, r7, #7
    ror r1, r7, #7
    eor r5, ip, r4, ror #7 @ eor ip, ip, r4, ror #7
    eor r5, ip, r4, ror #7
    mov ip, r5
    mov ip, r5
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    eor r5, r1, r7, ror #18 @ eor r1, r1, r7, ror #18
    eor r5, r1, r7, ror #18
    mov r1, r5
    mov r1, r5
    adds r3, r2, r4 @ adds r3, r2, r4
    adds r3, r2, r4
    eor r5, ip, r4, lsr #3 @ eor ip, ip, r4, lsr #3
    eor r5, ip, r4, lsr #3
    mov ip, r5
    mov ip, r5
    eor r2, r1, r7, lsr #3 @ eor r2, r1, r7, lsr #3
    eor r2, r1, r7, lsr #3
    add r5, lr, #2 @ add lr, lr, #2
    add r5, lr, #2
    mov lr, r5
    mov lr, r5
    add r4, r0, ip @ add r4, r0, ip
    add r4, r0, ip
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    cmp lr, #62 @ cmp lr, #62
    cmp lr, #62
    str r4, [r6, #64] @ str r4, [r6, #64]
    str r4, [r6, #64]
    str r2, [r6, #68] @ str r2, [r6, #68]
    str r2, [r6, #68]
    add r5, r6, #8 @ add r6, r6, #8
    add r5, r6, #8
    mov r6, r5
    mov r6, r5
    bne .L4 @ bne .L4
    bne .L4
    add r7, sp, #340 @ add r7, sp, #340
    add r7, sp, #340
    add r6, sp, #280 @ add r6, sp, #280
    add r6, sp, #280
.L5:
    mov r4, r6 @ mov r4, r6
    mov r4, r6
    ldr r2, [r6, #56] @ ldr r2, [r6, #56]
    ldr r2, [r6, #56]
    ldr r1, [r6, #4] @ ldr r1, [r6, #4]!
    ldr r1, [r6, #4]
    add r5, r6, #4 @ add r6, r6, #4
    add r5, r6, #4
    mov r6, r5
    mov r6, r5
    ror r3, r2, #17 @ ror r3, r2, #17
    ror r3, r2, #17
    ldr r0, [r4] @ ldr r0, [r4]
    ldr r0, [r4]
    eor r5, r3, r2, ror #19 @ eor r3, r3, r2, ror #19
    eor r5, r3, r2, ror #19
    mov r3, r5
    mov r3, r5
    ldr r5, [r4, #36] @ ldr r4, [r4, #36]
    ldr r5, [r4, #36]
    mov r4, r5
    mov r4, r5
    eor r5, r3, r2, lsr #10 @ eor r3, r3, r2, lsr #10
    eor r5, r3, r2, lsr #10
    mov r3, r5
    mov r3, r5
    ror r2, r1, #7 @ ror r2, r1, #7
    ror r2, r1, #7
    add r5, r0, r4 @ add r0, r0, r4
    add r5, r0, r4
    mov r0, r5
    mov r0, r5
    eor r5, r2, r1, ror #18 @ eor r2, r2, r1, ror #18
    eor r5, r2, r1, ror #18
    mov r2, r5
    mov r2, r5
    add r5, r3, r0 @ add r3, r3, r0
    add r5, r3, r0
    mov r3, r5
    mov r3, r5
    eor r5, r2, r1, lsr #3 @ eor r2, r2, r1, lsr #3
    eor r5, r2, r1, lsr #3
    mov r2, r5
    mov r2, r5
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    str r3, [r7, #4] @ str r3, [r7, #4]!
    str r3, [r7, #4]
    add r5, r7, #4 @ add r7, r7, #4
    add r5, r7, #4
    mov r7, r5
    mov r7, r5
    add r3, sp, #348 @ add r3, sp, #348
    add r3, sp, #348
    cmp r7, r3 @ cmp r7, r3
    cmp r7, r3
    bne .L5 @ bne .L5
    bne .L5
    ldr r3, [sp, #20] @ ldr r3, [sp, #20]
    ldr r3, [sp, #20]
    add r2, sp, #36 @ add r2, sp, #36
    add r2, sp, #36
    add r6, sp, #24 @ add r6, sp, #24
    add r6, sp, #24
    mov r5, r2 @ ldm r2, {r2, r4, sb}
    mov r5, r2
    ldm r5, {r2, r4, sb}
    ldm r5, {r2, r4, sb}
    ldr r8, [sp, #16] @ ldr r8, [sp, #16]
    ldr r8, [sp, #16]
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
    mov r5, r6 @ ldm r6, {r6, ip, lr}
    mov r5, r6
    ldm r5, {r6, ip, lr}
    ldm r5, {r6, ip, lr}
    movs r7, #0 @ movs r7, #0
    movs r7, #0
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
    b .L6 @ b .L6
    b .L6
.L8:
    mov r8, sb @ mov r8, sb
    mov r8, sb
    mov lr, ip @ mov lr, ip
    mov lr, ip
    mov sb, r4 @ mov sb, r4
    mov sb, r4
    mov ip, r6 @ mov ip, r6
    mov ip, r6
    mov r4, r0 @ mov r4, r0
    mov r4, r0
    mov r6, r1 @ mov r6, r1
    mov r6, r1
.L6:
    ror r1, r4, #11 @ ror r1, r4, #11
    ror r1, r4, #11
    bic r0, r8, r4 @ bic r0, r8, r4
    bic r0, r8, r4
    ldr r3, [sp, #12] @ ldr r3, [sp, #12]
    ldr r3, [sp, #12]
    eor r5, r1, r4, ror #6 @ eor r1, r1, r4, ror #6
    eor r5, r1, r4, ror #6
    mov r1, r5
    mov r1, r5
    and r2, sb, r4 @ and r2, sb, r4
    and r2, sb, r4
    eor r5, r1, r4, ror #25 @ eor r1, r1, r4, ror #25
    eor r5, r1, r4, ror #25
    mov r1, r5
    mov r1, r5
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    ldr r1, [r3, r7, lsl #2] @ ldr r1, [r3, r7, lsl #2]
    ldr r1, [r3, r7, lsl #2]
    ldr r0, [sl, r7, lsl #2] @ ldr r0, [sl, r7, lsl #2]
    ldr r0, [sl, r7, lsl #2]
    mov r3, r1 @ mov r3, r1
    mov r3, r1
    add r5, r2, r0 @ add r2, r2, r0
    add r5, r2, r0
    mov r2, r5
    mov r2, r5
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    ror r1, r6, #13 @ ror r1, r6, #13
    ror r1, r6, #13
    eor r0, ip, lr @ eor r0, ip, lr
    eor r0, ip, lr
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ands r5, r0, r6 @ ands r0, r0, r6
    ands r5, r0, r6
    mov r0, r5
    mov r0, r5
    ldr r3, [sp, #4] @ ldr r3, [sp, #4]
    ldr r3, [sp, #4]
    eor r5, r1, r6, ror #2 @ eor r1, r1, r6, ror #2
    eor r5, r1, r6, ror #2
    mov r1, r5
    mov r1, r5
    and fp, ip, lr @ and fp, ip, lr
    and fp, ip, lr
    eor r5, r0, fp @ eor fp, r0, fp
    eor r5, r0, fp
    mov fp, r5
    mov fp, r5
    eor r5, r1, r6, ror #22 @ eor r1, r1, r6, ror #22
    eor r5, r1, r6, ror #22
    mov r1, r5
    mov r1, r5
    adds r5, r7, #1 @ adds r7, r7, #1
    adds r5, r7, #1
    mov r7, r5
    mov r7, r5
    add r5, r1, fp @ add r1, r1, fp
    add r5, r1, fp
    mov r1, r5
    mov r1, r5
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    cmp r7, #64 @ cmp r7, #64
    cmp r7, #64
    mov r0, r3 @ mov r0, r3
    mov r0, r3
    add r5, r1, r2 @ add r1, r1, r2
    add r5, r1, r2
    mov r1, r5
    mov r1, r5
    str lr, [sp, #4] @ str lr, [sp, #4]
    str lr, [sp, #4]
    str r8, [sp, #8] @ str r8, [sp, #8]
    str r8, [sp, #8]
    bne .L8 @ bne .L8
    bne .L8
    mov r2, r1 @ mov r2, r1
    mov r2, r1
    mov r1, r3 @ mov r1, r3
    mov r1, r3
    ldr r3, [sp, #24] @ ldr r3, [sp, #24]
    ldr r3, [sp, #24]
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    mov r2, r3 @ mov r2, r3
    mov r2, r3
    str r3, [sp, #24] @ str r3, [sp, #24]
    str r3, [sp, #24]
    ldr r3, [sp, #28] @ ldr r3, [sp, #28]
    ldr r3, [sp, #28]
    str r2, [sp, #64] @ str r2, [sp, #64]
    str r2, [sp, #64]
    add r5, r3, r6 @ add r3, r3, r6
    add r5, r3, r6
    mov r3, r5
    mov r3, r5
    mov r0, r3 @ mov r0, r3
    mov r0, r3
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    ldr r3, [sp, #32] @ ldr r3, [sp, #32]
    ldr r3, [sp, #32]
    str r0, [sp, #68] @ str r0, [sp, #68]
    str r0, [sp, #68]
    add r5, r3, ip @ add r3, r3, ip
    add r5, r3, ip
    mov r3, r5
    mov r3, r5
    mov r6, r3 @ mov r6, r3
    mov r6, r3
    str r3, [sp, #32] @ str r3, [sp, #32]
    str r3, [sp, #32]
    ldr r3, [sp, #36] @ ldr r3, [sp, #36]
    ldr r3, [sp, #36]
    str r6, [sp, #72] @ str r6, [sp, #72]
    str r6, [sp, #72]
    add r5, r3, lr @ add r3, r3, lr
    add r5, r3, lr
    mov r3, r5
    mov r3, r5
    mov r7, r3 @ mov r7, r3
    mov r7, r3
    str r3, [sp, #36] @ str r3, [sp, #36]
    str r3, [sp, #36]
    ldr r3, [sp, #40] @ ldr r3, [sp, #40]
    ldr r3, [sp, #40]
    str r7, [sp, #76] @ str r7, [sp, #76]
    str r7, [sp, #76]
    add r5, r3, r1 @ add r3, r3, r1
    add r5, r3, r1
    mov r3, r5
    mov r3, r5
    mov r1, r3 @ mov r1, r3
    mov r1, r3
    str r3, [sp, #40] @ str r3, [sp, #40]
    str r3, [sp, #40]
    ldr r3, [sp, #44] @ ldr r3, [sp, #44]
    ldr r3, [sp, #44]
    str r1, [sp, #80] @ str r1, [sp, #80]
    str r1, [sp, #80]
    add r5, r3, r4 @ add r3, r3, r4
    add r5, r3, r4
    mov r3, r5
    mov r3, r5
    mov r4, r3 @ mov r4, r3
    mov r4, r3
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
    ldr r3, [sp, #16] @ ldr r3, [sp, #16]
    ldr r3, [sp, #16]
    str r4, [sp, #84] @ str r4, [sp, #84]
    str r4, [sp, #84]
    add r5, r3, sb @ add r3, r3, sb
    add r5, r3, sb
    mov r3, r5
    mov r3, r5
    str r3, [sp, #16] @ str r3, [sp, #16]
    str r3, [sp, #16]
    ldr r3, [sp, #20] @ ldr r3, [sp, #20]
    ldr r3, [sp, #20]
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    add r5, r3, r8 @ add r3, r3, r8
    add r5, r3, r8
    mov r3, r5
    mov r3, r5
    str r3, [sp, #20] @ str r3, [sp, #20]
    str r3, [sp, #20]
    str r2, [sp, #88] @ str r2, [sp, #88]
    str r2, [sp, #88]
    ldr r2, [sp, #20] @ ldr r2, [sp, #20]
    ldr r2, [sp, #20]
    ldr r3, [sp, #48] @ ldr r3, [sp, #48]
    ldr r3, [sp, #48]
    str r2, [sp, #92] @ str r2, [sp, #92]
    str r2, [sp, #92]
    ldr r2, [sp, #56] @ ldr r2, [sp, #56]
    ldr r2, [sp, #56]
    adds r5, r3, #64 @ adds r3, r3, #64
    adds r5, r3, #64
    mov r3, r5
    mov r3, r5
    cmp r2, r3 @ cmp r2, r3
    cmp r2, r3
    str r3, [sp, #48] @ str r3, [sp, #48]
    str r3, [sp, #48]
    bhi .L7 @ bhi .L7
    bhi .L7
.L2:
    mov lr, #0 @ mov lr, #0
    mov lr, #0
    mov r7, lr @ mov r7, lr
    mov r7, lr
    mov r6, lr @ mov r6, lr
    mov r6, lr
    mov r4, r7 @ mov r4, r7
    mov r4, r7
    mov r0, r7 @ mov r0, r7
    mov r0, r7
    mov r1, r7 @ mov r1, r7
    mov r1, r7
    mov r2, r7 @ mov r2, r7
    mov r2, r7
    mov sl, r7 @ mov sl, r7
    mov sl, r7
    ldr ip, [sp, #64] @ ldr ip, [sp, #64]
    ldr ip, [sp, #64]
    ldr r3, [sp, #52] @ ldr r3, [sp, #52]
    ldr r3, [sp, #52]
    lsr r8, ip, #24 @ lsr r8, ip, #24
    lsr r8, ip, #24
    bfi lr, r8, #0, #8 @ bfi lr, r8, #0, #8
    bfi lr, r8, #0, #8
    lsr r8, ip, #16 @ lsr r8, ip, #16
    lsr r8, ip, #16
    bfi lr, r8, #8, #8 @ bfi lr, r8, #8, #8
    bfi lr, r8, #8, #8
    lsr r8, ip, #8 @ lsr r8, ip, #8
    lsr r8, ip, #8
    bfi lr, r8, #16, #8 @ bfi lr, r8, #16, #8
    bfi lr, r8, #16, #8
    ldr r8, [sp, #68] @ ldr r8, [sp, #68]
    ldr r8, [sp, #68]
    bfi lr, ip, #24, #8 @ bfi lr, ip, #24, #8
    bfi lr, ip, #24, #8
    str lr, [r3] @ str lr, [r3]
    str lr, [r3]
    lsr lr, r8, #24 @ lsr lr, r8, #24
    lsr lr, r8, #24
    bfi r7, lr, #0, #8 @ bfi r7, lr, #0, #8
    bfi r7, lr, #0, #8
    lsr lr, r8, #16 @ lsr lr, r8, #16
    lsr lr, r8, #16
    bfi r7, lr, #8, #8 @ bfi r7, lr, #8, #8
    bfi r7, lr, #8, #8
    lsr lr, r8, #8 @ lsr lr, r8, #8
    lsr lr, r8, #8
    ldr ip, [sp, #72] @ ldr ip, [sp, #72]
    ldr ip, [sp, #72]
    bfi r7, lr, #16, #8 @ bfi r7, lr, #16, #8
    bfi r7, lr, #16, #8
    bfi r7, r8, #24, #8 @ bfi r7, r8, #24, #8
    bfi r7, r8, #24, #8
    str r7, [r3, #4] @ str r7, [r3, #4]
    str r7, [r3, #4]
    lsr r7, ip, #24 @ lsr r7, ip, #24
    lsr r7, ip, #24
    bfi r6, r7, #0, #8 @ bfi r6, r7, #0, #8
    bfi r6, r7, #0, #8
    lsr r7, ip, #16 @ lsr r7, ip, #16
    lsr r7, ip, #16
    bfi r6, r7, #8, #8 @ bfi r6, r7, #8, #8
    bfi r6, r7, #8, #8
    lsr r7, ip, #8 @ lsr r7, ip, #8
    lsr r7, ip, #8
    ldr sb, [sp, #76] @ ldr sb, [sp, #76]
    ldr sb, [sp, #76]
    bfi r6, r7, #16, #8 @ bfi r6, r7, #16, #8
    bfi r6, r7, #16, #8
    bfi r6, ip, #24, #8 @ bfi r6, ip, #24, #8
    bfi r6, ip, #24, #8
    str r6, [r3, #8] @ str r6, [r3, #8]
    str r6, [r3, #8]
    lsr r6, sb, #24 @ lsr r6, sb, #24
    lsr r6, sb, #24
    bfi r4, r6, #0, #8 @ bfi r4, r6, #0, #8
    bfi r4, r6, #0, #8
    lsr r6, sb, #16 @ lsr r6, sb, #16
    lsr r6, sb, #16
    bfi r4, r6, #8, #8 @ bfi r4, r6, #8, #8
    bfi r4, r6, #8, #8
    lsr r6, sb, #8 @ lsr r6, sb, #8
    lsr r6, sb, #8
    ldr r8, [sp, #80] @ ldr r8, [sp, #80]
    ldr r8, [sp, #80]
    bfi r4, r6, #16, #8 @ bfi r4, r6, #16, #8
    bfi r4, r6, #16, #8
    bfi r4, sb, #24, #8 @ bfi r4, sb, #24, #8
    bfi r4, sb, #24, #8
    str r4, [r3, #12] @ str r4, [r3, #12]
    str r4, [r3, #12]
    lsr r4, r8, #24 @ lsr r4, r8, #24
    lsr r4, r8, #24
    ldr ip, [sp, #84] @ ldr ip, [sp, #84]
    ldr ip, [sp, #84]
    bfi r0, r4, #0, #8 @ bfi r0, r4, #0, #8
    bfi r0, r4, #0, #8
    lsr r4, r8, #16 @ lsr r4, r8, #16
    lsr r4, r8, #16
    ldr lr, [sp, #88] @ ldr lr, [sp, #88]
    ldr lr, [sp, #88]
    bfi r0, r4, #8, #8 @ bfi r0, r4, #8, #8
    bfi r0, r4, #8, #8
    lsr r4, r8, #8 @ lsr r4, r8, #8
    lsr r4, r8, #8
    ldr r7, [sp, #92] @ ldr r7, [sp, #92]
    ldr r7, [sp, #92]
    bfi r0, r4, #16, #8 @ bfi r0, r4, #16, #8
    bfi r0, r4, #16, #8
    lsr r4, ip, #24 @ lsr r4, ip, #24
    lsr r4, ip, #24
    bfi r1, r4, #0, #8 @ bfi r1, r4, #0, #8
    bfi r1, r4, #0, #8
    lsr r4, lr, #24 @ lsr r4, lr, #24
    lsr r4, lr, #24
    bfi r2, r4, #0, #8 @ bfi r2, r4, #0, #8
    bfi r2, r4, #0, #8
    lsrs r4, r7, #24 @ lsrs r4, r7, #24
    lsrs r4, r7, #24
    bfi r0, r8, #24, #8 @ bfi r0, r8, #24, #8
    bfi r0, r8, #24, #8
    bfi sl, r4, #0, #8 @ bfi sl, r4, #0, #8
    bfi sl, r4, #0, #8
    lsr r4, ip, #16 @ lsr r4, ip, #16
    lsr r4, ip, #16
    bfi r1, r4, #8, #8 @ bfi r1, r4, #8, #8
    bfi r1, r4, #8, #8
    str r0, [r3, #16] @ str r0, [r3, #16]
    str r0, [r3, #16]
    lsr r4, lr, #16 @ lsr r4, lr, #16
    lsr r4, lr, #16
    lsr r0, ip, #8 @ lsr r0, ip, #8
    lsr r0, ip, #8
    bfi r2, r4, #8, #8 @ bfi r2, r4, #8, #8
    bfi r2, r4, #8, #8
    bfi r1, r0, #16, #8 @ bfi r1, r0, #16, #8
    bfi r1, r0, #16, #8
    lsrs r4, r7, #16 @ lsrs r4, r7, #16
    lsrs r4, r7, #16
    lsr r0, lr, #8 @ lsr r0, lr, #8
    lsr r0, lr, #8
    bfi sl, r4, #8, #8 @ bfi sl, r4, #8, #8
    bfi sl, r4, #8, #8
    bfi r2, r0, #16, #8 @ bfi r2, r0, #16, #8
    bfi r2, r0, #16, #8
    lsrs r0, r7, #8 @ lsrs r0, r7, #8
    lsrs r0, r7, #8
    bfi sl, r0, #16, #8 @ bfi sl, r0, #16, #8
    bfi sl, r0, #16, #8
    bfi r1, ip, #24, #8 @ bfi r1, ip, #24, #8
    bfi r1, ip, #24, #8
    bfi r2, lr, #24, #8 @ bfi r2, lr, #24, #8
    bfi r2, lr, #24, #8
    bfi sl, r7, #24, #8 @ bfi sl, r7, #24, #8
    bfi sl, r7, #24, #8
    str r1, [r3, #20] @ str r1, [r3, #20]
    str r1, [r3, #20]
    str r2, [r3, #24] @ str r2, [r3, #24]
    str r2, [r3, #24]
    str sl, [r3, #28] @ str sl, [r3, #28]
    str sl, [r3, #28]
    add r5, sp, #352 @ add sp, sp, #352
    add r5, sp, #352
    mov sp, r5
    mov sp, r5
    @ sp needed
    add r5, sp, #32 @ ldmia sp!, {r4, r6, r7, r8, sb, sl, fp, pc}
    add r5, sp, #32
    mov sp, r5
    mov sp, r5
    sub r5, sp, #32
    sub r5, sp, #32
    ldmia r5, {r4, r6, r7, r8, sb, sl, fp, pc}
    ldmia r5, {r4, r6, r7, r8, sb, sl, fp, pc}
.L19:
    .align 2
.L18:
    .word .LANCHOR0
    .size sha256, .-sha256
    .align 1
    .p2align 2,,3
    .global report_error
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type report_error, %function
report_error:
    @ Volatile: function does not return.
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    @ link register save eliminated.
.L21:
    b .L21 @ b .L21
    b .L21
    .size report_error, .-report_error
    .align 1
    .p2align 2,,3
    .global execute_firmware
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type execute_firmware, %function
execute_firmware:
    @ Volatile: function does not return.
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r3, lr} @ stmdb sp!, {r3, lr}
    stmdb sp, {r3, lr}
    sub r5, sp, #8
    sub r5, sp, #8
    mov sp, r5
    mov sp, r5
    adr lr, .L1000 @ bl execute_firmware
    adr lr, .L1000
    orr lr, #1
    orr lr, #1
    b execute_firmware
    b execute_firmware
.L1000:
    .size execute_firmware, .-execute_firmware
    .align 1
    .p2align 2,,3
    .global verify_and_run_firmware
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type verify_and_run_firmware, %function
verify_and_run_firmware:
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, lr} @ stmdb sp!, {r4, lr}
    stmdb sp, {r4, lr}
    sub r5, sp, #8
    sub r5, sp, #8
    mov sp, r5
    mov sp, r5
    mov r4, r2 @ mov r4, r2
    mov r4, r2
    sub r5, sp, #32 @ sub sp, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov r2, sp @ mov r2, sp
    mov r2, sp
    adr lr, .L1001 @ bl sha256
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b sha256
    b sha256
.L1001:
    subs r2, r4, #1 @ subs r2, r4, #1
    subs r2, r4, #1
    add r3, sp, #-1 @ add r3, sp, #-1
    add r3, sp, #-1
    add r4, sp, #31 @ add r4, sp, #31
    add r4, sp, #31
    b .L26 @ b .L26
    b .L26
.L25:
    cmp r3, r4 @ cmp r3, r4
    cmp r3, r4
    beq .L29 @ beq .L29
    beq .L29
.L26:
    ldrb r0, [r3, #1] @ ldrb r0, [r3, #1]!
    ldrb r0, [r3, #1]
    add r5, r3, #1 @ add r3, r3, #1
    add r5, r3, #1
    mov r3, r5
    mov r3, r5
    ldrb r1, [r2, #1] @ ldrb r1, [r2, #1]!
    ldrb r1, [r2, #1]
    add r5, r2, #1 @ add r2, r2, #1
    add r5, r2, #1
    mov r2, r5
    mov r2, r5
    cmp r0, r1 @ cmp r0, r1
    cmp r0, r1
    beq .L25 @ beq .L25
    beq .L25
    adr lr, .L1002 @ bl report_error
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b report_error
    b report_error
.L1002:
.L29:
    adr lr, .L1003 @ bl execute_firmware
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b execute_firmware
    b execute_firmware
.L1003:
    .size verify_and_run_firmware, .-verify_and_run_firmware
    .section .rodata
    .align 2
    .set .LANCHOR0,. + 0
.LC0:
    .word 1779033703
    .word -1150833019
    .word 1013904242
    .word -1521486534
    .word 1359893119
    .word -1694144372
    .word 528734635
    .word 1541459225
    .type constants, %object
    .size constants, 256
constants:
    .word 1116352408
    .word 1899447441
    .word -1245643825
    .word -373957723
    .word 961987163
    .word 1508970993
    .word -1841331548
    .word -1424204075
    .word -670586216
    .word 310598401
    .word 607225278
    .word 1426881987
    .word 1925078388
    .word -2132889090
    .word -1680079193
    .word -1046744716
    .word -459576895
    .word -272742522
    .word 264347078
    .word 604807628
    .word 770255983
    .word 1249150122
    .word 1555081692
    .word 1996064986
    .word -1740746414
    .word -1473132947
    .word -1341970488
    .word -1084653625
    .word -958395405
    .word -710438585
    .word 113926993
    .word 338241895
    .word 666307205
    .word 773529912
    .word 1294757372
    .word 1396182291
    .word 1695183700
    .word 1986661051
    .word -2117940946
    .word -1838011259
    .word -1564481375
    .word -1474664885
    .word -1035236496
    .word -949202525
    .word -778901479
    .word -694614492
    .word -200395387
    .word 275423344
    .word 430227734
    .word 506948616
    .word 659060556
    .word 883997877
    .word 958139571
    .word 1322822218
    .word 1537002063
    .word 1747873779
    .word 1955562222
    .word 2024104815
    .word -2067236844
    .word -1933114872
    .word -1866530822
    .word -1538233109
    .word -1090935817
    .word -965641998
    .ident "GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
