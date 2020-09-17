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
    .file "aes.c"
    .text
    .align 1
    .p2align 2,,3
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type key_expansion, %function
key_expansion:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    stmdb sp, {r4, r6, r7, r8, sb, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, lr}
    stmdb sp, {r4, r6, r7, r8, sb, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    add r4, r1, #16 @ add r4, r1, #16
    add r4, r1, #16
.L2:
    ldrb r2, [r1] @ ldrb r2, [r1]
    ldrb r2, [r1]
    adds r5, r1, #4 @ adds r1, r1, #4
    adds r5, r1, #4
    mov r1, r5
    mov r1, r5
    strb r2, [r3] @ strb r2, [r3]
    strb r2, [r3]
    ldrb r2, [r1, #-3] @ ldrb r2, [r1, #-3]
    ldrb r2, [r1, #-3]
    adds r5, r3, #4 @ adds r3, r3, #4
    adds r5, r3, #4
    mov r3, r5
    mov r3, r5
    strb r2, [r3, #-3] @ strb r2, [r3, #-3]
    strb r2, [r3, #-3]
    ldrb r2, [r1, #-2] @ ldrb r2, [r1, #-2]
    ldrb r2, [r1, #-2]
    strb r2, [r3, #-2] @ strb r2, [r3, #-2]
    strb r2, [r3, #-2]
    ldrb r2, [r1, #-1] @ ldrb r2, [r1, #-1]
    ldrb r2, [r1, #-1]
    cmp r1, r4 @ cmp r1, r4
    cmp r1, r4
    strb r2, [r3, #-1] @ strb r2, [r3, #-1]
    strb r2, [r3, #-1]
    bne .L2 @ bne .L2
    bne .L2
    movs r6, #4 @ movs r6, #4
    movs r6, #4
    ldr r7, .L9 @ ldr r7, .L9
    ldr r7, .L9
.L4:
    tst r6, #3 @ tst r6, #3
    tst r6, #3
    ldrb r4, [r0, #12] @ ldrb r4, [r0, #12]
    ldrb r4, [r0, #12]
    ldrb r1, [r0, #13] @ ldrb r1, [r0, #13]
    ldrb r1, [r0, #13]
    ldrb r2, [r0, #14] @ ldrb r2, [r0, #14]
    ldrb r2, [r0, #14]
    ldrb r3, [r0, #15] @ ldrb r3, [r0, #15]
    ldrb r3, [r0, #15]
    bne .L3 @ bne .L3
    bne .L3
    add lr, r7, r6, lsr #2 @ add lr, r7, r6, lsr #2
    add lr, r7, r6, lsr #2
    ldrb ip, [r7, r1] @ ldrb ip, [r7, r1]
    ldrb ip, [r7, r1]
    ldrb r5, [lr, #256] @ ldrb lr, [lr, #256]
    ldrb r5, [lr, #256]
    mov lr, r5
    mov lr, r5
    ldrb r1, [r7, r2] @ ldrb r1, [r7, r2]
    ldrb r1, [r7, r2]
    ldrb r2, [r7, r3] @ ldrb r2, [r7, r3]
    ldrb r2, [r7, r3]
    ldrb r3, [r7, r4] @ ldrb r3, [r7, r4]
    ldrb r3, [r7, r4]
    eor r4, ip, lr @ eor r4, ip, lr
    eor r4, ip, lr
.L3:
    ldrb sb, [r0] @ ldrb sb, [r0]
    ldrb sb, [r0]
    ldrb r8, [r0, #1] @ ldrb r8, [r0, #1]
    ldrb r8, [r0, #1]
    ldrb ip, [r0, #2] @ ldrb ip, [r0, #2]
    ldrb ip, [r0, #2]
    ldrb lr, [r0, #3] @ ldrb lr, [r0, #3]
    ldrb lr, [r0, #3]
    adds r5, r6, #1 @ adds r6, r6, #1
    adds r5, r6, #1
    mov r6, r5
    mov r6, r5
    eor r5, r4, sb @ eor r4, r4, sb
    eor r5, r4, sb
    mov r4, r5
    mov r4, r5
    eor r5, r1, r8 @ eor r1, r1, r8
    eor r5, r1, r8
    mov r1, r5
    mov r1, r5
    eor r5, r2, ip @ eor r2, r2, ip
    eor r5, r2, ip
    mov r2, r5
    mov r2, r5
    eor r5, r3, lr @ eor r3, r3, lr
    eor r5, r3, lr
    mov r3, r5
    mov r3, r5
    cmp r6, #44 @ cmp r6, #44
    cmp r6, #44
    strb r4, [r0, #16] @ strb r4, [r0, #16]
    strb r4, [r0, #16]
    strb r1, [r0, #17] @ strb r1, [r0, #17]
    strb r1, [r0, #17]
    strb r2, [r0, #18] @ strb r2, [r0, #18]
    strb r2, [r0, #18]
    strb r3, [r0, #19] @ strb r3, [r0, #19]
    strb r3, [r0, #19]
    add r5, r0, #4 @ add r0, r0, #4
    add r5, r0, #4
    mov r0, r5
    mov r0, r5
    bne .L4 @ bne .L4
    bne .L4
    add r5, sp, #24 @ ldmia sp!, {r4, r6, r7, r8, sb, pc}
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #24
    sub r5, sp, #24
    ldmia r5, {r4, r6, r7, r8, sb, pc}
    ldmia r5, {r4, r6, r7, r8, sb, pc}
.L10:
    .align 2
.L9:
    .word .LANCHOR0
    .size key_expansion, .-key_expansion
    .align 1
    .p2align 2,,3
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type cipher, %function
cipher:
    @ args = 0, pretend = 0, frame = 24
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    sub r5, sp, #24 @ sub sp, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    str r0, [sp, #20] @ str r0, [sp, #20]
    str r0, [sp, #20]
    add lr, r0, #16 @ add lr, r0, #16
    add lr, r0, #16
.L12:
    mov r2, r3 @ mov r2, r3
    mov r2, r3
    mov r4, r7 @ mov r4, r7
    mov r4, r7
    add ip, r3, #4 @ add ip, r3, #4
    add ip, r3, #4
.L13:
    ldrb r3, [r4] @ ldrb r3, [r4], #1
    ldrb r3, [r4]
    add r5, r4, #1 @ add r4, r4, #1
    add r5, r4, #1
    mov r4, r5
    mov r4, r5
    ldrb r6, [r2] @ ldrb r6, [r2]
    ldrb r6, [r2]
    eors r5, r3, r6 @ eors r3, r3, r6
    eors r5, r3, r6
    mov r3, r5
    mov r3, r5
    strb r3, [r2] @ strb r3, [r2], #1
    strb r3, [r2]
    add r5, r2, #1 @ add r2, r2, #1
    add r5, r2, #1
    mov r2, r5
    mov r2, r5
    cmp ip, r2 @ cmp ip, r2
    cmp ip, r2
    bne .L13 @ bne .L13
    bne .L13
    cmp r2, lr @ cmp r2, lr
    cmp r2, lr
    add r5, r7, #4 @ add r7, r7, #4
    add r5, r7, #4
    mov r7, r5
    mov r7, r5
    mov r3, r2 @ mov r3, r2
    mov r3, r2
    bne .L12 @ bne .L12
    bne .L12
    add r3, r1, #16 @ add r3, r1, #16
    add r3, r1, #16
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
    add r3, r1, #160 @ add r3, r1, #160
    add r3, r1, #160
    str r3, [sp, #12] @ str r3, [sp, #12]
    str r3, [sp, #12]
    adds r3, r0, #4 @ adds r3, r0, #4
    adds r3, r0, #4
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
    str r3, [sp, #16] @ str r3, [sp, #16]
    str r3, [sp, #16]
.L21:
    mov fp, r0 @ mov fp, r0
    mov fp, r0
    ldr r1, [sp, #16] @ ldr r1, [sp, #16]
    ldr r1, [sp, #16]
.L23:
    movs r3, #0 @ movs r3, #0
    movs r3, #0
.L15:
    ldrb r2, [fp, r3, lsl #2] @ ldrb r2, [fp, r3, lsl #2]
    ldrb r2, [fp, r3, lsl #2]
    ldr r4, .L38 @ ldr r4, .L38
    ldr r4, .L38
    ldrb r5, [r4, r2] @ ldrb r2, [r4, r2]
    ldrb r5, [r4, r2]
    mov r2, r5
    mov r2, r5
    strb r2, [fp, r3, lsl #2] @ strb r2, [fp, r3, lsl #2]
    strb r2, [fp, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    bne .L15 @ bne .L15
    bne .L15
    add r5, fp, #1 @ add fp, fp, #1
    add r5, fp, #1
    mov fp, r5
    mov fp, r5
    cmp r1, fp @ cmp r1, fp
    cmp r1, fp
    bne .L23 @ bne .L23
    bne .L23
    mov sl, r0 @ mov sl, r0
    mov sl, r0
    ldrb r2, [r0, #1] @ ldrb r2, [r0, #1]
    ldrb r2, [r0, #1]
    ldrb r3, [r0, #9] @ ldrb r3, [r0, #9]
    ldrb r3, [r0, #9]
    ldrb r1, [r0, #13] @ ldrb r1, [r0, #13]
    ldrb r1, [r0, #13]
    ldrb r4, [r0, #5] @ ldrb r4, [r0, #5]
    ldrb r4, [r0, #5]
    strb r2, [r0, #13] @ strb r2, [r0, #13]
    strb r2, [r0, #13]
    strb r3, [r0, #5] @ strb r3, [r0, #5]
    strb r3, [r0, #5]
    ldrb r2, [r0, #2] @ ldrb r2, [r0, #2]
    ldrb r2, [r0, #2]
    ldrb r3, [r0, #6] @ ldrb r3, [r0, #6]
    ldrb r3, [r0, #6]
    strb r1, [r0, #9] @ strb r1, [r0, #9]
    strb r1, [r0, #9]
    ldrb r1, [r0, #10] @ ldrb r1, [r0, #10]
    ldrb r1, [r0, #10]
    strb r2, [r0, #10] @ strb r2, [r0, #10]
    strb r2, [r0, #10]
    ldrb r2, [r0, #14] @ ldrb r2, [r0, #14]
    ldrb r2, [r0, #14]
    strb r3, [r0, #14] @ strb r3, [r0, #14]
    strb r3, [r0, #14]
    ldrb r3, [r0, #3] @ ldrb r3, [r0, #3]
    ldrb r3, [r0, #3]
    ldrb r6, [r0, #15] @ ldrb r6, [r0, #15]
    ldrb r6, [r0, #15]
    strb r2, [r0, #6] @ strb r2, [r0, #6]
    strb r2, [r0, #6]
    ldrb r2, [r0, #7] @ ldrb r2, [r0, #7]
    ldrb r2, [r0, #7]
    strb r3, [r0, #7] @ strb r3, [r0, #7]
    strb r3, [r0, #7]
    ldrb r3, [r0, #11] @ ldrb r3, [r0, #11]
    ldrb r3, [r0, #11]
    strb r4, [r0, #1] @ strb r4, [r0, #1]
    strb r4, [r0, #1]
    strb r1, [r0, #2] @ strb r1, [r0, #2]
    strb r1, [r0, #2]
    strb r2, [r0, #11] @ strb r2, [r0, #11]
    strb r2, [r0, #11]
    strb r3, [r0, #15] @ strb r3, [r0, #15]
    strb r3, [r0, #15]
    strb r6, [r0, #3] @ strb r6, [r0, #3]
    strb r6, [r0, #3]
.L18:
    ldrb r3, [sl] @ ldrb r3, [sl]
    ldrb r3, [sl]
    eors r5, r6, r1 @ eors r6, r6, r1
    eors r5, r6, r1
    mov r6, r5
    mov r6, r5
    eor ip, r3, r4 @ eor ip, r3, r4
    eor ip, r3, r4
    lsr r4, ip, #7 @ lsr r4, ip, #7
    lsr r4, ip, #7
    lsls r1, r4, #1 @ lsls r1, r4, #1
    lsls r1, r4, #1
    ldrb lr, [sl, #3] @ ldrb lr, [sl, #3]
    ldrb lr, [sl, #3]
    add r5, r4, r1 @ add r4, r4, r1
    add r5, r4, r1
    mov r4, r5
    mov r4, r5
    eor r5, ip, r6 @ eor r6, ip, r6
    eor r5, ip, r6
    mov r6, r5
    mov r6, r5
    add r5, r4, r4, lsl #3 @ add r4, r4, r4, lsl #3
    add r5, r4, r4, lsl #3
    mov r4, r5
    mov r4, r5
    eor sb, r3, lr @ eor sb, r3, lr
    eor sb, r3, lr
    eor r5, r4, ip, lsl #1 @ eor r4, r4, ip, lsl #1
    eor r5, r4, ip, lsl #1
    mov r4, r5
    mov r4, r5
    eors r5, r3, r6 @ eors r3, r3, r6
    eors r5, r3, r6
    mov r3, r5
    mov r3, r5
    ldrb r7, [sl, #2] @ ldrb r7, [sl, #2]
    ldrb r7, [sl, #2]
    lsr r1, sb, #7 @ lsr r1, sb, #7
    lsr r1, sb, #7
    eors r5, r4, r3 @ eors r4, r4, r3
    eors r5, r4, r3
    mov r4, r5
    mov r4, r5
    ldrb r2, [sl, #1] @ ldrb r2, [sl, #1]
    ldrb r2, [sl, #1]
    strb r4, [sl] @ strb r4, [sl]
    strb r4, [sl]
    lsls r4, r1, #1 @ lsls r4, r1, #1
    lsls r4, r1, #1
    eor r8, r7, lr @ eor r8, r7, lr
    eor r8, r7, lr
    add r5, r1, r4 @ add r1, r1, r4
    add r5, r1, r4
    mov r1, r5
    mov r1, r5
    eor ip, r2, r7 @ eor ip, r2, r7
    eor ip, r2, r7
    eor r5, r6, lr @ eor lr, r6, lr
    eor r5, r6, lr
    mov lr, r5
    mov lr, r5
    eors r5, r7, r6 @ eors r7, r7, r6
    eors r5, r7, r6
    mov r7, r5
    mov r7, r5
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eors r5, r6, r2 @ eors r6, r6, r2
    eors r5, r6, r2
    mov r6, r5
    mov r6, r5
    lsr r2, r8, #7 @ lsr r2, r8, #7
    lsr r2, r8, #7
    lsr r3, ip, #7 @ lsr r3, ip, #7
    lsr r3, ip, #7
    eor r5, r1, sb, lsl #1 @ eor sb, r1, sb, lsl #1
    eor r5, r1, sb, lsl #1
    mov sb, r5
    mov sb, r5
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    lsls r1, r3, #1 @ lsls r1, r3, #1
    lsls r1, r3, #1
    add r5, r3, r1 @ add r3, r3, r1
    add r5, r3, r1
    mov r3, r5
    mov r3, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r3, ip, lsl #1 @ eor ip, r3, ip, lsl #1
    eor r5, r3, ip, lsl #1
    mov ip, r5
    mov ip, r5
    eor r5, r2, r8, lsl #1 @ eor r2, r2, r8, lsl #1
    eor r5, r2, r8, lsl #1
    mov r2, r5
    mov r2, r5
    eor r5, sb, lr @ eor lr, sb, lr
    eor r5, sb, lr
    mov lr, r5
    mov lr, r5
    eors r5, r7, r2 @ eors r7, r7, r2
    eors r5, r7, r2
    mov r7, r5
    mov r7, r5
    eor r5, ip, r6 @ eor r6, ip, r6
    eor r5, ip, r6
    mov r6, r5
    mov r6, r5
    ldr r3, [sp, #4] @ ldr r3, [sp, #4]
    ldr r3, [sp, #4]
    strb lr, [sl, #3] @ strb lr, [sl, #3]
    strb lr, [sl, #3]
    strb r7, [sl, #2] @ strb r7, [sl, #2]
    strb r7, [sl, #2]
    strb r6, [sl, #1] @ strb r6, [sl, #1]
    strb r6, [sl, #1]
    add r5, sl, #4 @ add sl, sl, #4
    add r5, sl, #4
    mov sl, r5
    mov sl, r5
    cmp sl, r3 @ cmp sl, r3
    cmp sl, r3
    beq .L29 @ beq .L29
    beq .L29
    ldrb r4, [sl, #1] @ ldrb r4, [sl, #1]
    ldrb r4, [sl, #1]
    ldrb r1, [sl, #2] @ ldrb r1, [sl, #2]
    ldrb r1, [sl, #2]
    ldrb r6, [sl, #3] @ ldrb r6, [sl, #3]
    ldrb r6, [sl, #3]
    b .L18 @ b .L18
    b .L18
.L29:
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    ldr r7, [sp, #8] @ ldr r7, [sp, #8]
    ldr r7, [sp, #8]
    ldr lr, [sp, #4] @ ldr lr, [sp, #4]
    ldr lr, [sp, #4]
.L17:
    mov r4, r7 @ mov r4, r7
    mov r4, r7
    adds r6, r1, #4 @ adds r6, r1, #4
    adds r6, r1, #4
.L19:
    ldrb r3, [r4] @ ldrb r3, [r4], #1
    ldrb r3, [r4]
    add r5, r4, #1 @ add r4, r4, #1
    add r5, r4, #1
    mov r4, r5
    mov r4, r5
    ldrb r2, [r1] @ ldrb r2, [r1]
    ldrb r2, [r1]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r1] @ strb r3, [r1], #1
    strb r3, [r1]
    add r5, r1, #1 @ add r1, r1, #1
    add r5, r1, #1
    mov r1, r5
    mov r1, r5
    cmp r6, r1 @ cmp r6, r1
    cmp r6, r1
    bne .L19 @ bne .L19
    bne .L19
    cmp r6, lr @ cmp r6, lr
    cmp r6, lr
    add r5, r7, #4 @ add r7, r7, #4
    add r5, r7, #4
    mov r7, r5
    mov r7, r5
    bne .L17 @ bne .L17
    bne .L17
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    ldr r2, [sp, #12] @ ldr r2, [sp, #12]
    ldr r2, [sp, #12]
    adds r5, r3, #16 @ adds r3, r3, #16
    adds r5, r3, #16
    mov r3, r5
    mov r3, r5
    cmp r3, r2 @ cmp r3, r2
    cmp r3, r2
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
    bne .L21 @ bne .L21
    bne .L21
    mov r2, r0 @ mov r2, r0
    mov r2, r0
.L22:
    movs r3, #0 @ movs r3, #0
    movs r3, #0
.L24:
    ldrb r1, [r2, r3, lsl #2] @ ldrb r1, [r2, r3, lsl #2]
    ldrb r1, [r2, r3, lsl #2]
    ldr r4, .L38 @ ldr r4, .L38
    ldr r4, .L38
    ldrb r5, [r4, r1] @ ldrb r1, [r4, r1]
    ldrb r5, [r4, r1]
    mov r1, r5
    mov r1, r5
    strb r1, [r2, r3, lsl #2] @ strb r1, [r2, r3, lsl #2]
    strb r1, [r2, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    bne .L24 @ bne .L24
    bne .L24
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    cmp fp, r2 @ cmp fp, r2
    cmp fp, r2
    bne .L22 @ bne .L22
    bne .L22
    ldrb r1, [r0, #1] @ ldrb r1, [r0, #1]
    ldrb r1, [r0, #1]
    ldrb r3, [r0, #9] @ ldrb r3, [r0, #9]
    ldrb r3, [r0, #9]
    ldrb r2, [r0, #13] @ ldrb r2, [r0, #13]
    ldrb r2, [r0, #13]
    strb r1, [r0, #13] @ strb r1, [r0, #13]
    strb r1, [r0, #13]
    ldrb r1, [r0, #5] @ ldrb r1, [r0, #5]
    ldrb r1, [r0, #5]
    strb r3, [r0, #5] @ strb r3, [r0, #5]
    strb r3, [r0, #5]
    ldrb r3, [r0, #10] @ ldrb r3, [r0, #10]
    ldrb r3, [r0, #10]
    strb r2, [r0, #9] @ strb r2, [r0, #9]
    strb r2, [r0, #9]
    ldrb r2, [r0, #2] @ ldrb r2, [r0, #2]
    ldrb r2, [r0, #2]
    strb r1, [r0, #1] @ strb r1, [r0, #1]
    strb r1, [r0, #1]
    strb r3, [r0, #2] @ strb r3, [r0, #2]
    strb r3, [r0, #2]
    ldrb r1, [r0, #6] @ ldrb r1, [r0, #6]
    ldrb r1, [r0, #6]
    ldrb r3, [r0, #3] @ ldrb r3, [r0, #3]
    ldrb r3, [r0, #3]
    strb r2, [r0, #10] @ strb r2, [r0, #10]
    strb r2, [r0, #10]
    ldrb r2, [r0, #14] @ ldrb r2, [r0, #14]
    ldrb r2, [r0, #14]
    strb r1, [r0, #14] @ strb r1, [r0, #14]
    strb r1, [r0, #14]
    ldrb r1, [r0, #7] @ ldrb r1, [r0, #7]
    ldrb r1, [r0, #7]
    strb r3, [r0, #7] @ strb r3, [r0, #7]
    strb r3, [r0, #7]
    ldrb r3, [r0, #15] @ ldrb r3, [r0, #15]
    ldrb r3, [r0, #15]
    strb r2, [r0, #6] @ strb r2, [r0, #6]
    strb r2, [r0, #6]
    ldrb r2, [r0, #11] @ ldrb r2, [r0, #11]
    ldrb r2, [r0, #11]
    strb r3, [r0, #3] @ strb r3, [r0, #3]
    strb r3, [r0, #3]
    ldr r6, [sp, #8] @ ldr r6, [sp, #8]
    ldr r6, [sp, #8]
    ldr r3, [sp, #20] @ ldr r3, [sp, #20]
    ldr r3, [sp, #20]
    ldr r7, [sp, #4] @ ldr r7, [sp, #4]
    ldr r7, [sp, #4]
    strb r1, [r0, #11] @ strb r1, [r0, #11]
    strb r1, [r0, #11]
    strb r2, [r0, #15] @ strb r2, [r0, #15]
    strb r2, [r0, #15]
.L26:
    mov r1, r6 @ mov r1, r6
    mov r1, r6
    adds r4, r3, #4 @ adds r4, r3, #4
    adds r4, r3, #4
.L27:
    ldrb r2, [r1] @ ldrb r2, [r1], #1
    ldrb r2, [r1]
    add r5, r1, #1 @ add r1, r1, #1
    add r5, r1, #1
    mov r1, r5
    mov r1, r5
    ldrb r0, [r3] @ ldrb r0, [r3]
    ldrb r0, [r3]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    strb r2, [r3] @ strb r2, [r3], #1
    strb r2, [r3]
    add r5, r3, #1 @ add r3, r3, #1
    add r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r4, r3 @ cmp r4, r3
    cmp r4, r3
    bne .L27 @ bne .L27
    bne .L27
    cmp r4, r7 @ cmp r4, r7
    cmp r4, r7
    add r5, r6, #4 @ add r6, r6, #4
    add r5, r6, #4
    mov r6, r5
    mov r6, r5
    mov r3, r4 @ mov r3, r4
    mov r3, r4
    bne .L26 @ bne .L26
    bne .L26
    add r5, sp, #24 @ add sp, sp, #24
    add r5, sp, #24
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
.L39:
    .align 2
.L38:
    .word .LANCHOR0
    .size cipher, .-cipher
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
.L41:
    b .L41 @ b .L41
    b .L41
    .size report_error, .-report_error
    .align 1
    .p2align 2,,3
    .global report_done
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type report_done, %function
report_done:
    @ Volatile: function does not return.
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r3, lr} @ stmdb sp!, {r3, lr}
    stmdb sp, {r3, lr}
    sub r5, sp, #8
    sub r5, sp, #8
    mov sp, r5
    mov sp, r5
    adr lr, .L1000 @ bl report_done
    adr lr, .L1000
    orr lr, #1
    orr lr, #1
    b report_done
    b report_done
.L1000:
    .size report_done, .-report_done
    .align 1
    .p2align 2,,3
    .global AES_ECB_encrypt
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type AES_ECB_encrypt, %function
AES_ECB_encrypt:
    @ Volatile: function does not return.
    @ args = 0, pretend = 0, frame = 176
    @ frame_needed = 0, uses_anonymous_args = 0
    mov r4, r1 @ mov r4, r1
    mov r4, r1
    stmdb sp, {lr} @ stmdb sp!, {lr}
    stmdb sp, {lr}
    sub r5, sp, #4
    sub r5, sp, #4
    mov sp, r5
    mov sp, r5
    sub r5, sp, #180 @ sub sp, sp, #180
    sub r5, sp, #180
    mov sp, r5
    mov sp, r5
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    mov r0, sp @ mov r0, sp
    mov r0, sp
    adr lr, .L1001 @ bl key_expansion
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b key_expansion
    b key_expansion
.L1001:
    mov r1, sp @ mov r1, sp
    mov r1, sp
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    adr lr, .L1002 @ bl cipher
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b cipher
    b cipher
.L1002:
    adr lr, .L1003 @ bl report_done
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b report_done
    b report_done
.L1003:
    .size AES_ECB_encrypt, .-AES_ECB_encrypt
    .section .rodata
    .align 2
    .set .LANCHOR0,. + 0
    .type sbox, %object
    .size sbox, 256
sbox:
    .byte 99
    .byte 124
    .byte 119
    .byte 123
    .byte -14
    .byte 107
    .byte 111
    .byte -59
    .byte 48
    .byte 1
    .byte 103
    .byte 43
    .byte -2
    .byte -41
    .byte -85
    .byte 118
    .byte -54
    .byte -126
    .byte -55
    .byte 125
    .byte -6
    .byte 89
    .byte 71
    .byte -16
    .byte -83
    .byte -44
    .byte -94
    .byte -81
    .byte -100
    .byte -92
    .byte 114
    .byte -64
    .byte -73
    .byte -3
    .byte -109
    .byte 38
    .byte 54
    .byte 63
    .byte -9
    .byte -52
    .byte 52
    .byte -91
    .byte -27
    .byte -15
    .byte 113
    .byte -40
    .byte 49
    .byte 21
    .byte 4
    .byte -57
    .byte 35
    .byte -61
    .byte 24
    .byte -106
    .byte 5
    .byte -102
    .byte 7
    .byte 18
    .byte -128
    .byte -30
    .byte -21
    .byte 39
    .byte -78
    .byte 117
    .byte 9
    .byte -125
    .byte 44
    .byte 26
    .byte 27
    .byte 110
    .byte 90
    .byte -96
    .byte 82
    .byte 59
    .byte -42
    .byte -77
    .byte 41
    .byte -29
    .byte 47
    .byte -124
    .byte 83
    .byte -47
    .byte 0
    .byte -19
    .byte 32
    .byte -4
    .byte -79
    .byte 91
    .byte 106
    .byte -53
    .byte -66
    .byte 57
    .byte 74
    .byte 76
    .byte 88
    .byte -49
    .byte -48
    .byte -17
    .byte -86
    .byte -5
    .byte 67
    .byte 77
    .byte 51
    .byte -123
    .byte 69
    .byte -7
    .byte 2
    .byte 127
    .byte 80
    .byte 60
    .byte -97
    .byte -88
    .byte 81
    .byte -93
    .byte 64
    .byte -113
    .byte -110
    .byte -99
    .byte 56
    .byte -11
    .byte -68
    .byte -74
    .byte -38
    .byte 33
    .byte 16
    .byte -1
    .byte -13
    .byte -46
    .byte -51
    .byte 12
    .byte 19
    .byte -20
    .byte 95
    .byte -105
    .byte 68
    .byte 23
    .byte -60
    .byte -89
    .byte 126
    .byte 61
    .byte 100
    .byte 93
    .byte 25
    .byte 115
    .byte 96
    .byte -127
    .byte 79
    .byte -36
    .byte 34
    .byte 42
    .byte -112
    .byte -120
    .byte 70
    .byte -18
    .byte -72
    .byte 20
    .byte -34
    .byte 94
    .byte 11
    .byte -37
    .byte -32
    .byte 50
    .byte 58
    .byte 10
    .byte 73
    .byte 6
    .byte 36
    .byte 92
    .byte -62
    .byte -45
    .byte -84
    .byte 98
    .byte -111
    .byte -107
    .byte -28
    .byte 121
    .byte -25
    .byte -56
    .byte 55
    .byte 109
    .byte -115
    .byte -43
    .byte 78
    .byte -87
    .byte 108
    .byte 86
    .byte -12
    .byte -22
    .byte 101
    .byte 122
    .byte -82
    .byte 8
    .byte -70
    .byte 120
    .byte 37
    .byte 46
    .byte 28
    .byte -90
    .byte -76
    .byte -58
    .byte -24
    .byte -35
    .byte 116
    .byte 31
    .byte 75
    .byte -67
    .byte -117
    .byte -118
    .byte 112
    .byte 62
    .byte -75
    .byte 102
    .byte 72
    .byte 3
    .byte -10
    .byte 14
    .byte 97
    .byte 53
    .byte 87
    .byte -71
    .byte -122
    .byte -63
    .byte 29
    .byte -98
    .byte -31
    .byte -8
    .byte -104
    .byte 17
    .byte 105
    .byte -39
    .byte -114
    .byte -108
    .byte -101
    .byte 30
    .byte -121
    .byte -23
    .byte -50
    .byte 85
    .byte 40
    .byte -33
    .byte -116
    .byte -95
    .byte -119
    .byte 13
    .byte -65
    .byte -26
    .byte 66
    .byte 104
    .byte 65
    .byte -103
    .byte 45
    .byte 15
    .byte -80
    .byte 84
    .byte -69
    .byte 22
    .type rcon, %object
    .size rcon, 11
rcon:
    .byte -115
    .byte 1
    .byte 2
    .byte 4
    .byte 8
    .byte 16
    .byte 32
    .byte 64
    .byte -128
    .byte 27
    .byte 54
    .ident "GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
