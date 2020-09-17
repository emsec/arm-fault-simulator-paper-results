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
    .file "aes.c"
    .text
    .align 1
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
    stmdb sp, {r4, r6, r7, lr} @ stmdb sp!, {r4, r6, r7, lr}
    stmdb sp, {r4, r6, r7, lr}
    sub r5, sp, #16
    sub r5, sp, #16
    mov sp, r5
    mov sp, r5
    add r2, r1, #16 @ add r2, r1, #16
    add r2, r1, #16
.L2:
    ldrb r4, [r1] @ ldrb r4, [r1]
    ldrb r4, [r1]
    adds r5, r1, #4 @ adds r1, r1, #4
    adds r5, r1, #4
    mov r1, r5
    mov r1, r5
    strb r4, [r3] @ strb r4, [r3]
    strb r4, [r3]
    ldrb r4, [r1, #-3] @ ldrb r4, [r1, #-3]
    ldrb r4, [r1, #-3]
    adds r5, r3, #4 @ adds r3, r3, #4
    adds r5, r3, #4
    mov r3, r5
    mov r3, r5
    strb r4, [r3, #-3] @ strb r4, [r3, #-3]
    strb r4, [r3, #-3]
    ldrb r4, [r1, #-2] @ ldrb r4, [r1, #-2]
    ldrb r4, [r1, #-2]
    strb r4, [r3, #-2] @ strb r4, [r3, #-2]
    strb r4, [r3, #-2]
    ldrb r4, [r1, #-1] @ ldrb r4, [r1, #-1]
    ldrb r4, [r1, #-1]
    cmp r1, r2 @ cmp r1, r2
    cmp r1, r2
    strb r4, [r3, #-1] @ strb r4, [r3, #-1]
    strb r4, [r3, #-1]
    bne .L2 @ bne .L2
    bne .L2
    movs r2, #4 @ movs r2, #4
    movs r2, #4
    ldr r7, .L7 @ ldr r7, .L7
    ldr r7, .L7
.L4:
    tst r2, #3 @ tst r2, #3
    tst r2, #3
    ldrb r3, [r0, #12] @ ldrb r3, [r0, #12]
    ldrb r3, [r0, #12]
    ldrb r6, [r0, #13] @ ldrb r6, [r0, #13]
    ldrb r6, [r0, #13]
    ldrb r4, [r0, #14] @ ldrb r4, [r0, #14]
    ldrb r4, [r0, #14]
    ldrb r1, [r0, #15] @ ldrb r1, [r0, #15]
    ldrb r1, [r0, #15]
    bne .L3 @ bne .L3
    bne .L3
    ldrb lr, [r7, r6] @ ldrb lr, [r7, r6]
    ldrb lr, [r7, r6]
    ldrb r6, [r7, r4] @ ldrb r6, [r7, r4]
    ldrb r6, [r7, r4]
    ldrb r4, [r7, r1] @ ldrb r4, [r7, r1]
    ldrb r4, [r7, r1]
    ldrb r1, [r7, r3] @ ldrb r1, [r7, r3]
    ldrb r1, [r7, r3]
    add r3, r7, r2, lsr #2 @ add r3, r7, r2, lsr #2
    add r3, r7, r2, lsr #2
    ldrb r5, [r3, #256] @ ldrb r3, [r3, #256]
    ldrb r5, [r3, #256]
    mov r3, r5
    mov r3, r5
    eor r5, lr, r3 @ eor r3, lr, r3
    eor r5, lr, r3
    mov r3, r5
    mov r3, r5
.L3:
    ldrb lr, [r0] @ ldrb lr, [r0]
    ldrb lr, [r0]
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    eor r5, r3, lr @ eor r3, r3, lr
    eor r5, r3, lr
    mov r3, r5
    mov r3, r5
    strb r3, [r0, #16] @ strb r3, [r0, #16]
    strb r3, [r0, #16]
    ldrb r3, [r0, #1] @ ldrb r3, [r0, #1]
    ldrb r3, [r0, #1]
    cmp r2, #44 @ cmp r2, #44
    cmp r2, #44
    eor r5, r6, r3 @ eor r6, r6, r3
    eor r5, r6, r3
    mov r6, r5
    mov r6, r5
    ldrb r3, [r0, #2] @ ldrb r3, [r0, #2]
    ldrb r3, [r0, #2]
    strb r6, [r0, #17] @ strb r6, [r0, #17]
    strb r6, [r0, #17]
    eor r5, r4, r3 @ eor r4, r4, r3
    eor r5, r4, r3
    mov r4, r5
    mov r4, r5
    ldrb r3, [r0, #3] @ ldrb r3, [r0, #3]
    ldrb r3, [r0, #3]
    strb r4, [r0, #18] @ strb r4, [r0, #18]
    strb r4, [r0, #18]
    eor r5, r1, r3 @ eor r1, r1, r3
    eor r5, r1, r3
    mov r1, r5
    mov r1, r5
    strb r1, [r0, #19] @ strb r1, [r0, #19]
    strb r1, [r0, #19]
    add r5, r0, #4 @ add r0, r0, #4
    add r5, r0, #4
    mov r0, r5
    mov r0, r5
    bne .L4 @ bne .L4
    bne .L4
    add r5, sp, #16 @ ldmia sp!, {r4, r6, r7, pc}
    add r5, sp, #16
    mov sp, r5
    mov sp, r5
    sub r5, sp, #16
    sub r5, sp, #16
    ldmia r5, {r4, r6, r7, pc}
    ldmia r5, {r4, r6, r7, pc}
.L8:
    .align 2
.L7:
    .word .LANCHOR0
    .size key_expansion, .-key_expansion
    .align 1
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type add_round_key, %function
add_round_key:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r6, r7, lr} @ stmdb sp!, {r4, r6, r7, lr}
    stmdb sp, {r4, r6, r7, lr}
    sub r5, sp, #16
    sub r5, sp, #16
    mov sp, r5
    mov sp, r5
    add r5, r2, r0, lsl #4 @ add r2, r2, r0, lsl #4
    add r5, r2, r0, lsl #4
    mov r2, r5
    mov r2, r5
    adds r4, r1, #4 @ adds r4, r1, #4
    adds r4, r1, #4
    adds r5, r1, #20 @ adds r1, r1, #20
    adds r5, r1, #20
    mov r1, r5
    mov r1, r5
.L10:
    mov r6, r2 @ mov r6, r2
    mov r6, r2
    subs r3, r4, #4 @ subs r3, r4, #4
    subs r3, r4, #4
.L11:
    ldrb r0, [r6] @ ldrb r0, [r6], #1
    ldrb r0, [r6]
    add r5, r6, #1 @ add r6, r6, #1
    add r5, r6, #1
    mov r6, r5
    mov r6, r5
    ldrb r7, [r3] @ ldrb r7, [r3]
    ldrb r7, [r3]
    eors r5, r0, r7 @ eors r0, r0, r7
    eors r5, r0, r7
    mov r0, r5
    mov r0, r5
    strb r0, [r3] @ strb r0, [r3], #1
    strb r0, [r3]
    add r5, r3, #1 @ add r3, r3, #1
    add r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, r4 @ cmp r3, r4
    cmp r3, r4
    bne .L11 @ bne .L11
    bne .L11
    adds r4, r3, #4 @ adds r4, r3, #4
    adds r4, r3, #4
    cmp r4, r1 @ cmp r4, r1
    cmp r4, r1
    add r5, r2, #4 @ add r2, r2, #4
    add r5, r2, #4
    mov r2, r5
    mov r2, r5
    bne .L10 @ bne .L10
    bne .L10
    add r5, sp, #16 @ ldmia sp!, {r4, r6, r7, pc}
    add r5, sp, #16
    mov sp, r5
    mov sp, r5
    sub r5, sp, #16
    sub r5, sp, #16
    ldmia r5, {r4, r6, r7, pc}
    ldmia r5, {r4, r6, r7, pc}
    .size add_round_key, .-add_round_key
    .align 1
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type cipher, %function
cipher:
    @ args = 0, pretend = 0, frame = 16
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r0, r1, r2, r3, r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r0, r1, r2, r3, r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r0, r1, r2, r3, r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #48
    sub r5, sp, #48
    mov sp, r5
    mov sp, r5
    mov r4, r0 @ mov r4, r0
    mov r4, r0
    movs r7, #1 @ movs r7, #1
    movs r7, #1
    mov r2, r1 @ mov r2, r1
    mov r2, r1
    mov sb, r1 @ mov sb, r1
    mov sb, r1
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    movs r0, #0 @ movs r0, #0
    movs r0, #0
    adr lr, .L1000 @ bl add_round_key
    adr lr, .L1000
    orr lr, #1
    orr lr, #1
    b add_round_key
    b add_round_key
.L1000:
    adds r3, r4, #4 @ adds r3, r4, #4
    adds r3, r4, #4
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
.L15:
    mov r8, r4 @ mov r8, r4
    mov r8, r4
    mov r6, r4 @ mov r6, r4
    mov r6, r4
    b .L20 @ b .L20
    b .L20
.L16:
    ldrb r2, [r6, r3, lsl #2] @ ldrb r2, [r6, r3, lsl #2]
    ldrb r2, [r6, r3, lsl #2]
    ldr r1, .L29 @ ldr r1, .L29
    ldr r1, .L29
    ldrb r5, [r1, r2] @ ldrb r2, [r1, r2]
    ldrb r5, [r1, r2]
    mov r2, r5
    mov r2, r5
    strb r2, [r6, r3, lsl #2] @ strb r2, [r6, r3, lsl #2]
    strb r2, [r6, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    bne .L16 @ bne .L16
    bne .L16
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    adds r5, r6, #1 @ adds r6, r6, #1
    adds r5, r6, #1
    mov r6, r5
    mov r6, r5
    cmp r3, r6 @ cmp r3, r6
    cmp r3, r6
    beq .L17 @ beq .L17
    beq .L17
.L20:
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    b .L16 @ b .L16
    b .L16
.L17:
    ldrb r2, [r4, #5] @ ldrb r2, [r4, #5]
    ldrb r2, [r4, #5]
    ldrb r3, [r4, #1] @ ldrb r3, [r4, #1]
    ldrb r3, [r4, #1]
    strb r2, [r4, #1] @ strb r2, [r4, #1]
    strb r2, [r4, #1]
    ldrb r2, [r4, #9] @ ldrb r2, [r4, #9]
    ldrb r2, [r4, #9]
    strb r2, [r4, #5] @ strb r2, [r4, #5]
    strb r2, [r4, #5]
    ldrb r2, [r4, #13] @ ldrb r2, [r4, #13]
    ldrb r2, [r4, #13]
    strb r3, [r4, #13] @ strb r3, [r4, #13]
    strb r3, [r4, #13]
    strb r2, [r4, #9] @ strb r2, [r4, #9]
    strb r2, [r4, #9]
    ldrb r2, [r4, #10] @ ldrb r2, [r4, #10]
    ldrb r2, [r4, #10]
    ldrb r3, [r4, #2] @ ldrb r3, [r4, #2]
    ldrb r3, [r4, #2]
    strb r2, [r4, #2] @ strb r2, [r4, #2]
    strb r2, [r4, #2]
    ldrb r2, [r4, #14] @ ldrb r2, [r4, #14]
    ldrb r2, [r4, #14]
    strb r3, [r4, #10] @ strb r3, [r4, #10]
    strb r3, [r4, #10]
    ldrb r3, [r4, #6] @ ldrb r3, [r4, #6]
    ldrb r3, [r4, #6]
    strb r2, [r4, #6] @ strb r2, [r4, #6]
    strb r2, [r4, #6]
    ldrb r2, [r4, #15] @ ldrb r2, [r4, #15]
    ldrb r2, [r4, #15]
    strb r3, [r4, #14] @ strb r3, [r4, #14]
    strb r3, [r4, #14]
    ldrb r3, [r4, #3] @ ldrb r3, [r4, #3]
    ldrb r3, [r4, #3]
    strb r2, [r4, #3] @ strb r2, [r4, #3]
    strb r2, [r4, #3]
    ldrb r2, [r4, #11] @ ldrb r2, [r4, #11]
    ldrb r2, [r4, #11]
    strb r2, [r4, #15] @ strb r2, [r4, #15]
    strb r2, [r4, #15]
    ldrb r2, [r4, #7] @ ldrb r2, [r4, #7]
    ldrb r2, [r4, #7]
    strb r3, [r4, #7] @ strb r3, [r4, #7]
    strb r3, [r4, #7]
    add r3, r4, #16 @ add r3, r4, #16
    add r3, r4, #16
    str r3, [sp, #12] @ str r3, [sp, #12]
    str r3, [sp, #12]
    mov r3, r4 @ mov r3, r4
    mov r3, r4
    strb r2, [r4, #11] @ strb r2, [r4, #11]
    strb r2, [r4, #11]
.L18:
    ldrb r2, [r3] @ ldrb r2, [r3]
    ldrb r2, [r3]
    ldrb r0, [r3, #1] @ ldrb r0, [r3, #1]
    ldrb r0, [r3, #1]
    ldrb r1, [r3, #2] @ ldrb r1, [r3, #2]
    ldrb r1, [r3, #2]
    eor sl, r2, r0 @ eor sl, r2, r0
    eor sl, r2, r0
    str r2, [sp] @ str r2, [sp]
    str r2, [sp]
    ldrb r2, [r3, #3] @ ldrb r2, [r3, #3]
    ldrb r2, [r3, #3]
    adds r5, r3, #4 @ adds r3, r3, #4
    adds r5, r3, #4
    mov r3, r5
    mov r3, r5
    eor ip, r1, r2 @ eor ip, r1, r2
    eor ip, r1, r2
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
    lsr r2, sl, #7 @ lsr r2, sl, #7
    lsr r2, sl, #7
    lsl fp, r2, #1 @ lsl fp, r2, #1
    lsl fp, r2, #1
    add r5, r2, fp @ add r2, r2, fp
    add r5, r2, fp
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor lr, sl, ip @ eor lr, sl, ip
    eor lr, sl, ip
    eor r5, r2, sl, lsl #1 @ eor sl, r2, sl, lsl #1
    eor r5, r2, sl, lsl #1
    mov sl, r5
    mov sl, r5
    ldr r2, [sp] @ ldr r2, [sp]
    ldr r2, [sp]
    eor r5, r2, lr @ eor r2, r2, lr
    eor r5, r2, lr
    mov r2, r5
    mov r2, r5
    eor r5, sl, r2 @ eor sl, sl, r2
    eor r5, sl, r2
    mov sl, r5
    mov sl, r5
    strb sl, [r3, #-4] @ strb sl, [r3, #-4]
    strb sl, [r3, #-4]
    eor sl, r0, r1 @ eor sl, r0, r1
    eor sl, r0, r1
    lsr r2, sl, #7 @ lsr r2, sl, #7
    lsr r2, sl, #7
    lsl fp, r2, #1 @ lsl fp, r2, #1
    lsl fp, r2, #1
    add r5, r2, fp @ add r2, r2, fp
    add r5, r2, fp
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r0, lr @ eor r0, r0, lr
    eor r5, r0, lr
    mov r0, r5
    mov r0, r5
    eor r5, r2, sl, lsl #1 @ eor r2, r2, sl, lsl #1
    eor r5, r2, sl, lsl #1
    mov r2, r5
    mov r2, r5
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    strb r2, [r3, #-3] @ strb r2, [r3, #-3]
    strb r2, [r3, #-3]
    lsr r2, ip, #7 @ lsr r2, ip, #7
    lsr r2, ip, #7
    lsls r0, r2, #1 @ lsls r0, r2, #1
    lsls r0, r2, #1
    add r5, r2, r0 @ add r2, r2, r0
    add r5, r2, r0
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r1, lr @ eor r1, r1, lr
    eor r5, r1, lr
    mov r1, r5
    mov r1, r5
    eor r5, r2, ip, lsl #1 @ eor r2, r2, ip, lsl #1
    eor r5, r2, ip, lsl #1
    mov r2, r5
    mov r2, r5
    eors r5, r2, r1 @ eors r2, r2, r1
    eors r5, r2, r1
    mov r2, r5
    mov r2, r5
    strb r2, [r3, #-2] @ strb r2, [r3, #-2]
    strb r2, [r3, #-2]
    ldm sp, {r1, r2} @ ldm sp, {r1, r2}
    ldm sp, {r1, r2}
    eors r5, r1, r2 @ eors r1, r1, r2
    eors r5, r1, r2
    mov r1, r5
    mov r1, r5
    lsrs r2, r1, #7 @ lsrs r2, r1, #7
    lsrs r2, r1, #7
    lsls r0, r2, #1 @ lsls r0, r2, #1
    lsls r0, r2, #1
    add r5, r2, r0 @ add r2, r2, r0
    add r5, r2, r0
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r2, r1, lsl #1 @ eor r1, r2, r1, lsl #1
    eor r5, r2, r1, lsl #1
    mov r1, r5
    mov r1, r5
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    eor r5, r2, lr @ eor lr, r2, lr
    eor r5, r2, lr
    mov lr, r5
    mov lr, r5
    eor r5, r1, lr @ eor lr, r1, lr
    eor r5, r1, lr
    mov lr, r5
    mov lr, r5
    ldr r2, [sp, #12] @ ldr r2, [sp, #12]
    ldr r2, [sp, #12]
    strb lr, [r3, #-1] @ strb lr, [r3, #-1]
    strb lr, [r3, #-1]
    cmp r2, r3 @ cmp r2, r3
    cmp r2, r3
    bne .L18 @ bne .L18
    bne .L18
    mov r0, r7 @ mov r0, r7
    mov r0, r7
    adds r5, r7, #1 @ adds r7, r7, #1
    adds r5, r7, #1
    mov r7, r5
    mov r7, r5
    mov r2, sb @ mov r2, sb
    mov r2, sb
    mov r1, r4 @ mov r1, r4
    mov r1, r4
    uxtb r5, r7 @ uxtb r7, r7
    uxtb r5, r7
    mov r7, r5
    mov r7, r5
    adr lr, .L1001 @ bl add_round_key
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b add_round_key
    b add_round_key
.L1001:
    cmp r7, #10 @ cmp r7, #10
    cmp r7, #10
    bne .L15 @ bne .L15
    bne .L15
    ldr r2, .L29 @ ldr r2, .L29
    ldr r2, .L29
.L22:
    movs r3, #0 @ movs r3, #0
    movs r3, #0
.L21:
    ldrb r1, [r8, r3, lsl #2] @ ldrb r1, [r8, r3, lsl #2]
    ldrb r1, [r8, r3, lsl #2]
    ldrb r5, [r2, r1] @ ldrb r1, [r2, r1]
    ldrb r5, [r2, r1]
    mov r1, r5
    mov r1, r5
    strb r1, [r8, r3, lsl #2] @ strb r1, [r8, r3, lsl #2]
    strb r1, [r8, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    bne .L21 @ bne .L21
    bne .L21
    add r5, r8, #1 @ add r8, r8, #1
    add r5, r8, #1
    mov r8, r5
    mov r8, r5
    cmp r6, r8 @ cmp r6, r8
    cmp r6, r8
    bne .L22 @ bne .L22
    bne .L22
    ldrb r2, [r4, #5] @ ldrb r2, [r4, #5]
    ldrb r2, [r4, #5]
    ldrb r3, [r4, #1] @ ldrb r3, [r4, #1]
    ldrb r3, [r4, #1]
    strb r2, [r4, #1] @ strb r2, [r4, #1]
    strb r2, [r4, #1]
    ldrb r2, [r4, #9] @ ldrb r2, [r4, #9]
    ldrb r2, [r4, #9]
    mov r1, r4 @ mov r1, r4
    mov r1, r4
    strb r2, [r4, #5] @ strb r2, [r4, #5]
    strb r2, [r4, #5]
    ldrb r2, [r4, #13] @ ldrb r2, [r4, #13]
    ldrb r2, [r4, #13]
    strb r3, [r4, #13] @ strb r3, [r4, #13]
    strb r3, [r4, #13]
    strb r2, [r4, #9] @ strb r2, [r4, #9]
    strb r2, [r4, #9]
    ldrb r2, [r4, #10] @ ldrb r2, [r4, #10]
    ldrb r2, [r4, #10]
    ldrb r3, [r4, #2] @ ldrb r3, [r4, #2]
    ldrb r3, [r4, #2]
    strb r2, [r4, #2] @ strb r2, [r4, #2]
    strb r2, [r4, #2]
    ldrb r2, [r4, #14] @ ldrb r2, [r4, #14]
    ldrb r2, [r4, #14]
    strb r3, [r4, #10] @ strb r3, [r4, #10]
    strb r3, [r4, #10]
    ldrb r3, [r4, #6] @ ldrb r3, [r4, #6]
    ldrb r3, [r4, #6]
    strb r2, [r4, #6] @ strb r2, [r4, #6]
    strb r2, [r4, #6]
    ldrb r2, [r4, #15] @ ldrb r2, [r4, #15]
    ldrb r2, [r4, #15]
    strb r3, [r4, #14] @ strb r3, [r4, #14]
    strb r3, [r4, #14]
    ldrb r3, [r4, #3] @ ldrb r3, [r4, #3]
    ldrb r3, [r4, #3]
    strb r2, [r4, #3] @ strb r2, [r4, #3]
    strb r2, [r4, #3]
    ldrb r2, [r4, #11] @ ldrb r2, [r4, #11]
    ldrb r2, [r4, #11]
    movs r0, #10 @ movs r0, #10
    movs r0, #10
    strb r2, [r4, #15] @ strb r2, [r4, #15]
    strb r2, [r4, #15]
    ldrb r2, [r4, #7] @ ldrb r2, [r4, #7]
    ldrb r2, [r4, #7]
    strb r3, [r4, #7] @ strb r3, [r4, #7]
    strb r3, [r4, #7]
    strb r2, [r4, #11] @ strb r2, [r4, #11]
    strb r2, [r4, #11]
    mov r2, sb @ mov r2, sb
    mov r2, sb
    add r5, sp, #16 @ add sp, sp, #16
    add r5, sp, #16
    mov sp, r5
    mov sp, r5
    @ sp needed
    ldmia sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ ldmia sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    ldmia sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    add r5, sp, #32
    add r5, sp, #32
    mov sp, r5
    mov sp, r5
    b add_round_key @ b add_round_key
    b add_round_key
.L30:
    .align 2
.L29:
    .word .LANCHOR0
    .size cipher, .-cipher
    .align 1
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
.L32:
    b .L32 @ b .L32
    b .L32
    .size report_error, .-report_error
    .align 1
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
    adr lr, .L1002 @ bl report_done
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b report_done
    b report_done
.L1002:
    .size report_done, .-report_done
    .align 1
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
    adr lr, .L1003 @ bl key_expansion
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b key_expansion
    b key_expansion
.L1003:
    mov r1, sp @ mov r1, sp
    mov r1, sp
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    adr lr, .L1004 @ bl cipher
    adr lr, .L1004
    orr lr, #1
    orr lr, #1
    b cipher
    b cipher
.L1004:
    adr lr, .L1005 @ bl report_done
    adr lr, .L1005
    orr lr, #1
    orr lr, #1
    b report_done
    b report_done
.L1005:
    .size AES_ECB_encrypt, .-AES_ECB_encrypt
    .section .rodata
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
