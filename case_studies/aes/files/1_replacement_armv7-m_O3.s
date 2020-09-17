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
    adds r3, r1, #4 @ adds r3, r1, #4
    adds r3, r1, #4
    cmp r0, r3 @ cmp r0, r3
    cmp r0, r3
    stmdb sp, {r4, r6, r7, r8, sb, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, lr}
    stmdb sp, {r4, r6, r7, r8, sb, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    bcs .L7 @ bcs .L7
    bcs .L7
    adds r3, r0, #4 @ adds r3, r0, #4
    adds r3, r0, #4
    cmp r1, r3 @ cmp r1, r3
    cmp r1, r3
    bcc .L2 @ bcc .L2
    bcc .L2
.L7:
    ldr r3, [r1] @ ldr r3, [r1]
    ldr r3, [r1]
    str r3, [r0] @ str r3, [r0]
    str r3, [r0]
    ldr r3, [r1, #4] @ ldr r3, [r1, #4]
    ldr r3, [r1, #4]
    str r3, [r0, #4] @ str r3, [r0, #4]
    str r3, [r0, #4]
    ldr r3, [r1, #8] @ ldr r3, [r1, #8]
    ldr r3, [r1, #8]
    str r3, [r0, #8] @ str r3, [r0, #8]
    str r3, [r0, #8]
    ldr r3, [r1, #12] @ ldr r3, [r1, #12]
    ldr r3, [r1, #12]
    str r3, [r0, #12] @ str r3, [r0, #12]
    str r3, [r0, #12]
.L4:
    movs r2, #4 @ movs r2, #4
    movs r2, #4
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    ldrb r7, [r0, #15] @ ldrb r7, [r0, #15]
    ldrb r7, [r0, #15]
    ldrb r6, [r0, #14] @ ldrb r6, [r0, #14]
    ldrb r6, [r0, #14]
    ldrb r4, [r0, #13] @ ldrb r4, [r0, #13]
    ldrb r4, [r0, #13]
    ldrb r1, [r0, #12] @ ldrb r1, [r0, #12]
    ldrb r1, [r0, #12]
    ldr r0, .L11 @ ldr r0, .L11
    ldr r0, .L11
.L6:
    tst r2, #3 @ tst r2, #3
    tst r2, #3
    bne .L5 @ bne .L5
    bne .L5
    add lr, r0, r2, lsr #2 @ add lr, r0, r2, lsr #2
    add lr, r0, r2, lsr #2
    ldrb ip, [r0, r4] @ ldrb ip, [r0, r4]
    ldrb ip, [r0, r4]
    ldrb r5, [lr, #256] @ ldrb lr, [lr, #256]
    ldrb r5, [lr, #256]
    mov lr, r5
    mov lr, r5
    ldrb r4, [r0, r6] @ ldrb r4, [r0, r6]
    ldrb r4, [r0, r6]
    ldrb r6, [r0, r7] @ ldrb r6, [r0, r7]
    ldrb r6, [r0, r7]
    ldrb r7, [r0, r1] @ ldrb r7, [r0, r1]
    ldrb r7, [r0, r1]
    eor r1, ip, lr @ eor r1, ip, lr
    eor r1, ip, lr
.L5:
    ldrb sb, [r3] @ ldrb sb, [r3]
    ldrb sb, [r3]
    ldrb r8, [r3, #1] @ ldrb r8, [r3, #1]
    ldrb r8, [r3, #1]
    ldrb ip, [r3, #2] @ ldrb ip, [r3, #2]
    ldrb ip, [r3, #2]
    ldrb lr, [r3, #3] @ ldrb lr, [r3, #3]
    ldrb lr, [r3, #3]
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    eor r5, r1, sb @ eor r1, r1, sb
    eor r5, r1, sb
    mov r1, r5
    mov r1, r5
    eor r5, r4, r8 @ eor r4, r4, r8
    eor r5, r4, r8
    mov r4, r5
    mov r4, r5
    eor r5, r6, ip @ eor r6, r6, ip
    eor r5, r6, ip
    mov r6, r5
    mov r6, r5
    eor r5, r7, lr @ eor r7, r7, lr
    eor r5, r7, lr
    mov r7, r5
    mov r7, r5
    cmp r2, #44 @ cmp r2, #44
    cmp r2, #44
    strb r1, [r3, #16] @ strb r1, [r3, #16]
    strb r1, [r3, #16]
    strb r4, [r3, #17] @ strb r4, [r3, #17]
    strb r4, [r3, #17]
    strb r6, [r3, #18] @ strb r6, [r3, #18]
    strb r6, [r3, #18]
    strb r7, [r3, #19] @ strb r7, [r3, #19]
    strb r7, [r3, #19]
    add r5, r3, #4 @ add r3, r3, #4
    add r5, r3, #4
    mov r3, r5
    mov r3, r5
    bne .L6 @ bne .L6
    bne .L6
    add r5, sp, #24 @ ldmia sp!, {r4, r6, r7, r8, sb, pc}
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #24
    sub r5, sp, #24
    ldmia r5, {r4, r6, r7, r8, sb, pc}
    ldmia r5, {r4, r6, r7, r8, sb, pc}
.L2:
    ldrb r3, [r1] @ ldrb r3, [r1]
    ldrb r3, [r1]
    strb r3, [r0] @ strb r3, [r0]
    strb r3, [r0]
    ldrb r3, [r1, #1] @ ldrb r3, [r1, #1]
    ldrb r3, [r1, #1]
    strb r3, [r0, #1] @ strb r3, [r0, #1]
    strb r3, [r0, #1]
    ldrb r3, [r1, #2] @ ldrb r3, [r1, #2]
    ldrb r3, [r1, #2]
    strb r3, [r0, #2] @ strb r3, [r0, #2]
    strb r3, [r0, #2]
    ldrb r3, [r1, #3] @ ldrb r3, [r1, #3]
    ldrb r3, [r1, #3]
    strb r3, [r0, #3] @ strb r3, [r0, #3]
    strb r3, [r0, #3]
    ldrb r3, [r1, #4] @ ldrb r3, [r1, #4]
    ldrb r3, [r1, #4]
    strb r3, [r0, #4] @ strb r3, [r0, #4]
    strb r3, [r0, #4]
    ldrb r3, [r1, #5] @ ldrb r3, [r1, #5]
    ldrb r3, [r1, #5]
    strb r3, [r0, #5] @ strb r3, [r0, #5]
    strb r3, [r0, #5]
    ldrb r3, [r1, #6] @ ldrb r3, [r1, #6]
    ldrb r3, [r1, #6]
    strb r3, [r0, #6] @ strb r3, [r0, #6]
    strb r3, [r0, #6]
    ldrb r3, [r1, #7] @ ldrb r3, [r1, #7]
    ldrb r3, [r1, #7]
    strb r3, [r0, #7] @ strb r3, [r0, #7]
    strb r3, [r0, #7]
    ldrb r3, [r1, #8] @ ldrb r3, [r1, #8]
    ldrb r3, [r1, #8]
    strb r3, [r0, #8] @ strb r3, [r0, #8]
    strb r3, [r0, #8]
    ldrb r3, [r1, #9] @ ldrb r3, [r1, #9]
    ldrb r3, [r1, #9]
    strb r3, [r0, #9] @ strb r3, [r0, #9]
    strb r3, [r0, #9]
    ldrb r3, [r1, #10] @ ldrb r3, [r1, #10]
    ldrb r3, [r1, #10]
    strb r3, [r0, #10] @ strb r3, [r0, #10]
    strb r3, [r0, #10]
    ldrb r3, [r1, #11] @ ldrb r3, [r1, #11]
    ldrb r3, [r1, #11]
    strb r3, [r0, #11] @ strb r3, [r0, #11]
    strb r3, [r0, #11]
    ldrb r3, [r1, #12] @ ldrb r3, [r1, #12]
    ldrb r3, [r1, #12]
    strb r3, [r0, #12] @ strb r3, [r0, #12]
    strb r3, [r0, #12]
    ldrb r3, [r1, #13] @ ldrb r3, [r1, #13]
    ldrb r3, [r1, #13]
    strb r3, [r0, #13] @ strb r3, [r0, #13]
    strb r3, [r0, #13]
    ldrb r3, [r1, #14] @ ldrb r3, [r1, #14]
    ldrb r3, [r1, #14]
    strb r3, [r0, #14] @ strb r3, [r0, #14]
    strb r3, [r0, #14]
    ldrb r3, [r1, #15] @ ldrb r3, [r1, #15]
    ldrb r3, [r1, #15]
    strb r3, [r0, #15] @ strb r3, [r0, #15]
    strb r3, [r0, #15]
    b .L4 @ b .L4
    b .L4
.L12:
    .align 2
.L11:
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
    @ args = 0, pretend = 0, frame = 96
    @ frame_needed = 0, uses_anonymous_args = 0
    mov r3, r1 @ mov r3, r1
    mov r3, r1
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov r8, r0 @ mov r8, r0
    mov r8, r0
    add r2, r0, #8 @ add r2, r0, #8
    add r2, r0, #8
    adds r5, r3, #8 @ adds r3, r3, #8
    adds r5, r3, #8
    mov r3, r5
    mov r3, r5
    cmp r1, r2 @ cmp r1, r2
    cmp r1, r2
    bcs .L1000 @ it cc
    cmp r8, r3 @ cmp r8, r3
    cmp r8, r3
.L1000:
    sub r5, sp, #96 @ sub sp, sp, #96
    sub r5, sp, #96
    mov sp, r5
    mov sp, r5
    str r1, [sp, #88] @ str r1, [sp, #88]
    str r1, [sp, #88]
    str r2, [sp, #92] @ str r2, [sp, #92]
    str r2, [sp, #92]
    mov r4, r1 @ mov r4, r1
    mov r4, r1
    bcc .L14 @ bcc .L14
    bcc .L14
    orr r3, r1, r8 @ orr r3, r1, r8
    orr r3, r1, r8
    lsls r2, r3, #29 @ lsls r2, r3, #29
    lsls r2, r3, #29
    bne .L14 @ bne .L14
    bne .L14
    ldr r0, [r1] @ ldr r0, [r1]
    ldr r0, [r1]
    ldr r3, [r1, #4] @ ldr r3, [r1, #4]
    ldr r3, [r1, #4]
    ldr r2, [r8] @ ldr r2, [r8]
    ldr r2, [r8]
    ldr r1, [r8, #4] @ ldr r1, [r8, #4]
    ldr r1, [r8, #4]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    stm r8, {r2, r3} @ stm r8, {r2, r3}
    stm r8, {r2, r3}
    ldr r0, [r8, #8] @ ldr r0, [r8, #8]
    ldr r0, [r8, #8]
    ldr r2, [r4, #8] @ ldr r2, [r4, #8]
    ldr r2, [r4, #8]
    ldr r3, [r4, #12] @ ldr r3, [r4, #12]
    ldr r3, [r4, #12]
    ldr r1, [r8, #12] @ ldr r1, [r8, #12]
    ldr r1, [r8, #12]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    str r2, [r8, #8] @ str r2, [r8, #8]
    str r2, [r8, #8]
    ldr r2, [sp, #88] @ ldr r2, [sp, #88]
    ldr r2, [sp, #88]
    str r3, [r8, #12] @ str r3, [r8, #12]
    str r3, [r8, #12]
.L15:
    ldrb r1, [r8, #3] @ ldrb r1, [r8, #3]
    ldrb r1, [r8, #3]
    ldrb r3, [r8, #1] @ ldrb r3, [r8, #1]
    ldrb r3, [r8, #1]
    str r1, [sp, #32] @ str r1, [sp, #32]
    str r1, [sp, #32]
    ldrb r1, [r8, #7] @ ldrb r1, [r8, #7]
    ldrb r1, [r8, #7]
    str r3, [sp, #24] @ str r3, [sp, #24]
    str r3, [sp, #24]
    str r1, [sp, #40] @ str r1, [sp, #40]
    str r1, [sp, #40]
    ldrb r1, [r8, #15] @ ldrb r1, [r8, #15]
    ldrb r1, [r8, #15]
    ldrb r3, [r8, #13] @ ldrb r3, [r8, #13]
    ldrb r3, [r8, #13]
    str r1, [sp, #8] @ str r1, [sp, #8]
    str r1, [sp, #8]
    mov r1, r2 @ mov r1, r2
    mov r1, r2
    str r3, [sp, #4] @ str r3, [sp, #4]
    str r3, [sp, #4]
    ldrb r3, [r8, #2] @ ldrb r3, [r8, #2]
    ldrb r3, [r8, #2]
    adds r5, r1, #144 @ adds r1, r1, #144
    adds r5, r1, #144
    mov r1, r5
    mov r1, r5
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    ldrb r3, [r8, #6] @ ldrb r3, [r8, #6]
    ldrb r3, [r8, #6]
    str r1, [sp, #84] @ str r1, [sp, #84]
    str r1, [sp, #84]
    str r3, [sp, #36] @ str r3, [sp, #36]
    str r3, [sp, #36]
    ldrb r3, [r8, #14] @ ldrb r3, [r8, #14]
    ldrb r3, [r8, #14]
    str r2, [sp] @ str r2, [sp]
    str r2, [sp]
    ldrb fp, [r8] @ ldrb fp, [r8]
    ldrb fp, [r8]
    ldrb ip, [r8, #4] @ ldrb ip, [r8, #4]
    ldrb ip, [r8, #4]
    ldrb lr, [r8, #8] @ ldrb lr, [r8, #8]
    ldrb lr, [r8, #8]
    ldrb r0, [r8, #12] @ ldrb r0, [r8, #12]
    ldrb r0, [r8, #12]
    ldrb sb, [r8, #5] @ ldrb sb, [r8, #5]
    ldrb sb, [r8, #5]
    ldrb r6, [r8, #9] @ ldrb r6, [r8, #9]
    ldrb r6, [r8, #9]
    ldrb r4, [r8, #10] @ ldrb r4, [r8, #10]
    ldrb r4, [r8, #10]
    ldrb sl, [r8, #11] @ ldrb sl, [r8, #11]
    ldrb sl, [r8, #11]
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    ldr r1, [sp, #8] @ ldr r1, [sp, #8]
    ldr r1, [sp, #8]
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
.L16:
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    ldrb r7, [r3, ip] @ ldrb r7, [r3, ip]
    ldrb r7, [r3, ip]
    ldrb r5, [r3, fp] @ ldrb fp, [r3, fp]
    ldrb r5, [r3, fp]
    mov fp, r5
    mov fp, r5
    ldrb r5, [r3, lr] @ ldrb r3, [r3, lr]
    ldrb r5, [r3, lr]
    mov r3, r5
    mov r3, r5
    str r3, [sp, #4] @ str r3, [sp, #4]
    str r3, [sp, #4]
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    ldrb r5, [r3, r0] @ ldrb r0, [r3, r0]
    ldrb r5, [r3, r0]
    mov r0, r5
    mov r0, r5
    str r0, [sp, #8] @ str r0, [sp, #8]
    str r0, [sp, #8]
    ldr r0, [sp, #24] @ ldr r0, [sp, #24]
    ldr r0, [sp, #24]
    ldrb r5, [r3, r0] @ ldrb r3, [r3, r0]
    ldrb r5, [r3, r0]
    mov r3, r5
    mov r3, r5
    ldr r0, .L33 @ ldr r0, .L33
    ldr r0, .L33
    str r3, [sp, #12] @ str r3, [sp, #12]
    str r3, [sp, #12]
    ldrb r5, [r0, r6] @ ldrb r6, [r0, r6]
    ldrb r5, [r0, r6]
    mov r6, r5
    mov r6, r5
    ldrb lr, [r0, sb] @ ldrb lr, [r0, sb]
    ldrb lr, [r0, sb]
    mov r0, r6 @ mov r0, r6
    mov r0, r6
    ldr r6, .L33 @ ldr r6, .L33
    ldr r6, .L33
    ldr r3, [sp, #44] @ ldr r3, [sp, #44]
    ldr r3, [sp, #44]
    ldrb r5, [r6, r2] @ ldrb r2, [r6, r2]
    ldrb r5, [r6, r2]
    mov r2, r5
    mov r2, r5
    str r2, [sp, #16] @ str r2, [sp, #16]
    str r2, [sp, #16]
    ldr r2, [sp, #28] @ ldr r2, [sp, #28]
    ldr r2, [sp, #28]
    ldrb r5, [r6, r2] @ ldrb r6, [r6, r2]
    ldrb r5, [r6, r2]
    mov r6, r5
    mov r6, r5
    ldr r2, .L33 @ ldr r2, .L33
    ldr r2, .L33
    str r6, [sp, #20] @ str r6, [sp, #20]
    str r6, [sp, #20]
    ldr r6, [sp, #36] @ ldr r6, [sp, #36]
    ldr r6, [sp, #36]
    ldrb r5, [r2, r6] @ ldrb r2, [r2, r6]
    ldrb r5, [r2, r6]
    mov r2, r5
    mov r2, r5
    ldr r6, .L33 @ ldr r6, .L33
    ldr r6, .L33
    str r2, [sp, #24] @ str r2, [sp, #24]
    str r2, [sp, #24]
    ldrb ip, [r6, r4] @ ldrb ip, [r6, r4]
    ldrb ip, [r6, r4]
    ldrb r4, [r6, r3] @ ldrb r4, [r6, r3]
    ldrb r4, [r6, r3]
    ldr r3, [sp, #40] @ ldr r3, [sp, #40]
    ldr r3, [sp, #40]
    str r4, [sp, #28] @ str r4, [sp, #28]
    str r4, [sp, #28]
    mov r4, r6 @ mov r4, r6
    mov r4, r6
    ldr r6, [sp, #32] @ ldr r6, [sp, #32]
    ldr r6, [sp, #32]
    ldr r2, .L33 @ ldr r2, .L33
    ldr r2, .L33
    ldrb r5, [r4, r6] @ ldrb r4, [r4, r6]
    ldrb r5, [r4, r6]
    mov r4, r5
    mov r4, r5
    ldr r6, .L33 @ ldr r6, .L33
    ldr r6, .L33
    str r4, [sp, #32] @ str r4, [sp, #32]
    str r4, [sp, #32]
    ldrb r5, [r6, r3] @ ldrb r6, [r6, r3]
    ldrb r5, [r6, r3]
    mov r6, r5
    mov r6, r5
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    ldrb r4, [r2, r1] @ ldrb r4, [r2, r1]
    ldrb r4, [r2, r1]
    ldrb sb, [r3, sl] @ ldrb sb, [r3, sl]
    ldrb sb, [r3, sl]
    eor r3, lr, ip @ eor r3, lr, ip
    eor r3, lr, ip
    str r6, [sp, #36] @ str r6, [sp, #36]
    str r6, [sp, #36]
    str sb, [sp, #40] @ str sb, [sp, #40]
    str sb, [sp, #40]
    str r3, [sp, #48] @ str r3, [sp, #48]
    str r3, [sp, #48]
    mov r3, r7 @ mov r3, r7
    mov r3, r7
    eor r2, fp, lr @ eor r2, fp, lr
    eor r2, fp, lr
    lsrs r1, r2, #7 @ lsrs r1, r2, #7
    lsrs r1, r2, #7
    eor sl, fp, r4 @ eor sl, fp, r4
    eor sl, fp, r4
    str r0, [sp, #60] @ str r0, [sp, #60]
    str r0, [sp, #60]
    eors r5, r3, r0 @ eors r3, r3, r0
    eors r5, r3, r0
    mov r3, r5
    mov r3, r5
    lsls r0, r1, #1 @ lsls r0, r1, #1
    lsls r0, r1, #1
    add r5, r0, r1 @ add r0, r0, r1
    add r5, r0, r1
    mov r0, r5
    mov r0, r5
    lsr r1, sl, #7 @ lsr r1, sl, #7
    lsr r1, sl, #7
    str r1, [sp, #72] @ str r1, [sp, #72]
    str r1, [sp, #72]
    ldr r1, [sp, #28] @ ldr r1, [sp, #28]
    ldr r1, [sp, #28]
    str r7, [sp, #64] @ str r7, [sp, #64]
    str r7, [sp, #64]
    mov sb, r1 @ mov sb, r1
    mov sb, r1
    ldr r1, [sp, #32] @ ldr r1, [sp, #32]
    ldr r1, [sp, #32]
    eor r6, ip, r4 @ eor r6, ip, r4
    eor r6, ip, r4
    eor r5, sb, r1 @ eor r1, sb, r1
    eor r5, sb, r1
    mov r1, r5
    mov r1, r5
    str r1, [sp, #44] @ str r1, [sp, #44]
    str r1, [sp, #44]
    ldr r1, [sp, #32] @ ldr r1, [sp, #32]
    ldr r1, [sp, #32]
    add r5, r0, r0, lsl #3 @ add r0, r0, r0, lsl #3
    add r5, r0, r0, lsl #3
    mov r0, r5
    mov r0, r5
    eor sb, r7, r1 @ eor sb, r7, r1
    eor sb, r7, r1
    ldr r7, [sp, #60] @ ldr r7, [sp, #60]
    ldr r7, [sp, #60]
    ldr r1, [sp, #28] @ ldr r1, [sp, #28]
    ldr r1, [sp, #28]
    str sb, [sp, #56] @ str sb, [sp, #56]
    str sb, [sp, #56]
    eor sb, r7, r1 @ eor sb, r7, r1
    eor sb, r7, r1
    ldr r7, [sp, #4] @ ldr r7, [sp, #4]
    ldr r7, [sp, #4]
    eor r5, r0, r2, lsl #1 @ eor r0, r0, r2, lsl #1
    eor r5, r0, r2, lsl #1
    mov r0, r5
    mov r0, r5
    eors r5, r2, r6 @ eors r2, r2, r6
    eors r5, r2, r6
    mov r2, r5
    mov r2, r5
    eor r5, r2, fp @ eor fp, r2, fp
    eor r5, r2, fp
    mov fp, r5
    mov fp, r5
    eors r5, r4, r2 @ eors r4, r4, r2
    eors r5, r4, r2
    mov r4, r5
    mov r4, r5
    eor r5, r2, lr @ eor lr, r2, lr
    eor r5, r2, lr
    mov lr, r5
    mov lr, r5
    eor r5, r2, ip @ eor r2, r2, ip
    eor r5, r2, ip
    mov r2, r5
    mov r2, r5
    mov ip, r7 @ mov ip, r7
    mov ip, r7
    ldr r1, [sp, #72] @ ldr r1, [sp, #72]
    ldr r1, [sp, #72]
    str sb, [sp, #52] @ str sb, [sp, #52]
    str sb, [sp, #52]
    eor sb, r0, fp @ eor sb, r0, fp
    eor sb, r0, fp
    lsls r0, r1, #1 @ lsls r0, r1, #1
    lsls r0, r1, #1
    ldr r7, [sp, #16] @ ldr r7, [sp, #16]
    ldr r7, [sp, #16]
    add r5, r1, r0 @ add r1, r1, r0
    add r5, r1, r0
    mov r1, r5
    mov r1, r5
    ldr r0, [sp, #48] @ ldr r0, [sp, #48]
    ldr r0, [sp, #48]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, ip, r7 @ eor ip, ip, r7
    eor r5, ip, r7
    mov ip, r5
    mov ip, r5
    eor r5, r1, sl, lsl #1 @ eor sl, r1, sl, lsl #1
    eor r5, r1, sl, lsl #1
    mov sl, r5
    mov sl, r5
    ldr r7, [sp, #20] @ ldr r7, [sp, #20]
    ldr r7, [sp, #20]
    lsrs r1, r0, #7 @ lsrs r1, r0, #7
    lsrs r1, r0, #7
    ldr r0, [sp, #36] @ ldr r0, [sp, #36]
    ldr r0, [sp, #36]
    eor r5, sl, r4 @ eor r4, sl, r4
    eor r5, sl, r4
    mov r4, r5
    mov r4, r5
    eor fp, r7, r0 @ eor fp, r7, r0
    eor fp, r7, r0
    lsls r0, r1, #1 @ lsls r0, r1, #1
    lsls r0, r1, #1
    add r5, r1, r0 @ add r1, r1, r0
    add r5, r1, r0
    mov r1, r5
    mov r1, r5
    ldr r0, [sp, #48] @ ldr r0, [sp, #48]
    ldr r0, [sp, #48]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    str sb, [sp, #68] @ str sb, [sp, #68]
    str sb, [sp, #68]
    str r4, [sp, #80] @ str r4, [sp, #80]
    str r4, [sp, #80]
    eor sb, r1, r0, lsl #1 @ eor sb, r1, r0, lsl #1
    eor sb, r1, r0, lsl #1
    ldr r4, [sp, #36] @ ldr r4, [sp, #36]
    ldr r4, [sp, #36]
    ldr r0, [sp, #4] @ ldr r0, [sp, #4]
    ldr r0, [sp, #4]
    eor r5, sb, lr @ eor lr, sb, lr
    eor r5, sb, lr
    mov lr, r5
    mov lr, r5
    eor sl, r0, r4 @ eor sl, r0, r4
    eor sl, r0, r4
    ldr r4, [sp, #16] @ ldr r4, [sp, #16]
    ldr r4, [sp, #16]
    str lr, [sp, #72] @ str lr, [sp, #72]
    str lr, [sp, #72]
    mov lr, r4 @ mov lr, r4
    mov lr, r4
    lsrs r1, r6, #7 @ lsrs r1, r6, #7
    lsrs r1, r6, #7
    lsls r0, r1, #1 @ lsls r0, r1, #1
    lsls r0, r1, #1
    add r5, r1, r0 @ add r1, r1, r0
    add r5, r1, r0
    mov r1, r5
    mov r1, r5
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, r1, r6, lsl #1 @ eor r6, r1, r6, lsl #1
    eor r5, r1, r6, lsl #1
    mov r6, r5
    mov r6, r5
    eor r5, lr, r7 @ eor lr, lr, r7
    eor r5, lr, r7
    mov lr, r5
    mov lr, r5
    lsrs r1, r3, #7 @ lsrs r1, r3, #7
    lsrs r1, r3, #7
    str lr, [sp, #48] @ str lr, [sp, #48]
    str lr, [sp, #48]
    eor lr, r6, r2 @ eor lr, r6, r2
    eor lr, r6, r2
    lsls r2, r1, #1 @ lsls r2, r1, #1
    lsls r2, r1, #1
    ldr r6, [sp, #44] @ ldr r6, [sp, #44]
    ldr r6, [sp, #44]
    add r5, r1, r2 @ add r1, r1, r2
    add r5, r1, r2
    mov r1, r5
    mov r1, r5
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, r1, r3, lsl #1 @ eor r1, r1, r3, lsl #1
    eor r5, r1, r3, lsl #1
    mov r1, r5
    mov r1, r5
    ldr r7, [sp, #64] @ ldr r7, [sp, #64]
    ldr r7, [sp, #64]
    eors r5, r3, r6 @ eors r3, r3, r6
    eors r5, r3, r6
    mov r3, r5
    mov r3, r5
    ldr r2, [sp, #56] @ ldr r2, [sp, #56]
    ldr r2, [sp, #56]
    ldr r6, [sp, #32] @ ldr r6, [sp, #32]
    ldr r6, [sp, #32]
    eor r0, r3, r7 @ eor r0, r3, r7
    eor r0, r3, r7
    eor r4, r3, r6 @ eor r4, r3, r6
    eor r4, r3, r6
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    ldr r6, [sp, #28] @ ldr r6, [sp, #28]
    ldr r6, [sp, #28]
    ldr r7, [sp, #60] @ ldr r7, [sp, #60]
    ldr r7, [sp, #60]
    eor sb, r1, r0 @ eor sb, r1, r0
    eor sb, r1, r0
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    str lr, [sp, #76] @ str lr, [sp, #76]
    str lr, [sp, #76]
    eors r5, r6, r3 @ eors r6, r6, r3
    eors r5, r6, r3
    mov r6, r5
    mov r6, r5
    add r5, r1, r2 @ add r1, r1, r2
    add r5, r1, r2
    mov r1, r5
    mov r1, r5
    eors r5, r3, r7 @ eors r3, r3, r7
    eors r5, r3, r7
    mov r3, r5
    mov r3, r5
    ldr r7, [sp, #8] @ ldr r7, [sp, #8]
    ldr r7, [sp, #8]
    ldr r2, [sp, #56] @ ldr r2, [sp, #56]
    ldr r2, [sp, #56]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, r1, r2, lsl #1 @ eor r1, r1, r2, lsl #1
    eor r5, r1, r2, lsl #1
    mov r1, r5
    mov r1, r5
    str sb, [sp, #32] @ str sb, [sp, #32]
    str sb, [sp, #32]
    eor sb, r1, r4 @ eor sb, r1, r4
    eor sb, r1, r4
    ldr r4, [sp, #8] @ ldr r4, [sp, #8]
    ldr r4, [sp, #8]
    str sb, [sp, #60] @ str sb, [sp, #60]
    str sb, [sp, #60]
    mov sb, r4 @ mov sb, r4
    mov sb, r4
    ldr r2, [sp, #44] @ ldr r2, [sp, #44]
    ldr r2, [sp, #44]
    ldr r4, [sp, #40] @ ldr r4, [sp, #40]
    ldr r4, [sp, #40]
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r1, r2 @ add r1, r1, r2
    add r5, r1, r2
    mov r1, r5
    mov r1, r5
    ldr r2, [sp, #44] @ ldr r2, [sp, #44]
    ldr r2, [sp, #44]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, r1, r2, lsl #1 @ eor r1, r1, r2, lsl #1
    eor r5, r1, r2, lsl #1
    mov r1, r5
    mov r1, r5
    ldr r2, [sp, #52] @ ldr r2, [sp, #52]
    ldr r2, [sp, #52]
    eors r5, r6, r1 @ eors r6, r6, r1
    eors r5, r6, r1
    mov r6, r5
    mov r6, r5
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    str r6, [sp, #56] @ str r6, [sp, #56]
    str r6, [sp, #56]
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    ldr r6, [sp, #52] @ ldr r6, [sp, #52]
    ldr r6, [sp, #52]
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r2, r6, lsl #1 @ eor r2, r2, r6, lsl #1
    eor r5, r2, r6, lsl #1
    mov r2, r5
    mov r2, r5
    mov lr, r7 @ mov lr, r7
    mov lr, r7
    ldr r6, [sp, #12] @ ldr r6, [sp, #12]
    ldr r6, [sp, #12]
    eor r5, sb, r4 @ eor sb, sb, r4
    eor r5, sb, r4
    mov sb, r5
    mov sb, r5
    mov r4, r6 @ mov r4, r6
    mov r4, r6
    ldr r7, [sp, #12] @ ldr r7, [sp, #12]
    ldr r7, [sp, #12]
    lsr r1, ip, #7 @ lsr r1, ip, #7
    lsr r1, ip, #7
    eor r5, lr, r7 @ eor lr, lr, r7
    eor r5, lr, r7
    mov lr, r5
    mov lr, r5
    ldr r0, [sp, #40] @ ldr r0, [sp, #40]
    ldr r0, [sp, #40]
    ldr r7, [sp, #24] @ ldr r7, [sp, #24]
    ldr r7, [sp, #24]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    lsls r2, r1, #1 @ lsls r2, r1, #1
    lsls r2, r1, #1
    eors r5, r0, r7 @ eors r0, r0, r7
    eors r5, r0, r7
    mov r0, r5
    mov r0, r5
    eor r6, r4, r7 @ eor r6, r4, r7
    eor r6, r4, r7
    add r5, r1, r2 @ add r1, r1, r2
    add r5, r1, r2
    mov r1, r5
    mov r1, r5
    ldr r7, [sp, #4] @ ldr r7, [sp, #4]
    ldr r7, [sp, #4]
    str r6, [sp, #28] @ str r6, [sp, #28]
    str r6, [sp, #28]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r6, ip, fp @ eor r6, ip, fp
    eor r6, ip, fp
    eor r2, r1, ip, lsl #1 @ eor r2, r1, ip, lsl #1
    eor r2, r1, ip, lsl #1
    eor ip, r6, r7 @ eor ip, r6, r7
    eor ip, r6, r7
    eor r5, r2, ip @ eor r2, r2, ip
    eor r5, r2, ip
    mov r2, r5
    mov r2, r5
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
    lsr r3, sl, #7 @ lsr r3, sl, #7
    lsr r3, sl, #7
    ldr r7, [sp, #16] @ ldr r7, [sp, #16]
    ldr r7, [sp, #16]
    ldr r1, [sp, #36] @ ldr r1, [sp, #36]
    ldr r1, [sp, #36]
    ldr r4, [sp, #20] @ ldr r4, [sp, #20]
    ldr r4, [sp, #20]
    str r2, [sp, #16] @ str r2, [sp, #16]
    str r2, [sp, #16]
    lsls r2, r3, #1 @ lsls r2, r3, #1
    lsls r2, r3, #1
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    eors r5, r1, r6 @ eors r1, r1, r6
    eors r5, r1, r6
    mov r1, r5
    mov r1, r5
    eors r5, r4, r6 @ eors r4, r4, r6
    eors r5, r4, r6
    mov r4, r5
    mov r4, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eors r5, r6, r7 @ eors r6, r6, r7
    eors r5, r6, r7
    mov r6, r5
    mov r6, r5
    ldr r7, [sp, #48] @ ldr r7, [sp, #48]
    ldr r7, [sp, #48]
    eor r5, r3, sl, lsl #1 @ eor sl, r3, sl, lsl #1
    eor r5, r3, sl, lsl #1
    mov sl, r5
    mov sl, r5
    lsr r3, fp, #7 @ lsr r3, fp, #7
    lsr r3, fp, #7
    eor ip, sl, r1 @ eor ip, sl, r1
    eor ip, sl, r1
    lsrs r2, r7, #7 @ lsrs r2, r7, #7
    lsrs r2, r7, #7
    lsls r1, r3, #1 @ lsls r1, r3, #1
    lsls r1, r3, #1
    add r5, r3, r1 @ add r3, r3, r1
    add r5, r3, r1
    mov r3, r5
    mov r3, r5
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r3, fp, lsl #1 @ eor fp, r3, fp, lsl #1
    eor r5, r3, fp, lsl #1
    mov fp, r5
    mov fp, r5
    eor r5, r2, r7, lsl #1 @ eor r2, r2, r7, lsl #1
    eor r5, r2, r7, lsl #1
    mov r2, r5
    mov r2, r5
    lsr r3, lr, #7 @ lsr r3, lr, #7
    lsr r3, lr, #7
    eor sl, fp, r4 @ eor sl, fp, r4
    eor sl, fp, r4
    ldr r1, [sp, #28] @ ldr r1, [sp, #28]
    ldr r1, [sp, #28]
    eor r4, r2, r6 @ eor r4, r2, r6
    eor r4, r2, r6
    lsls r2, r3, #1 @ lsls r2, r3, #1
    lsls r2, r3, #1
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr r7, [sp, #8] @ ldr r7, [sp, #8]
    ldr r7, [sp, #8]
    str sl, [sp, #20] @ str sl, [sp, #20]
    str sl, [sp, #20]
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    lsr sl, r1, #7 @ lsr sl, r1, #7
    lsr sl, r1, #7
    ldr r1, [sp, #24] @ ldr r1, [sp, #24]
    ldr r1, [sp, #24]
    str ip, [sp, #36] @ str ip, [sp, #36]
    str ip, [sp, #36]
    eor r5, r2, lr, lsl #1 @ eor r2, r2, lr, lsl #1
    eor r5, r2, lr, lsl #1
    mov r2, r5
    mov r2, r5
    lsr ip, sb, #7 @ lsr ip, sb, #7
    lsr ip, sb, #7
    eor r5, lr, r0 @ eor lr, lr, r0
    eor r5, lr, r0
    mov lr, r5
    mov lr, r5
    eor r6, lr, r7 @ eor r6, lr, r7
    eor r6, lr, r7
    lsr fp, r0, #7 @ lsr fp, r0, #7
    lsr fp, r0, #7
    eor r7, lr, r1 @ eor r7, lr, r1
    eor r7, lr, r1
    lsl r1, ip, #1 @ lsl r1, ip, #1
    lsl r1, ip, #1
    add r5, ip, r1 @ add ip, ip, r1
    add r5, ip, r1
    mov ip, r5
    mov ip, r5
    lsl r1, fp, #1 @ lsl r1, fp, #1
    lsl r1, fp, #1
    ldr r3, [sp, #40] @ ldr r3, [sp, #40]
    ldr r3, [sp, #40]
    add r5, fp, r1 @ add fp, fp, r1
    add r5, fp, r1
    mov fp, r5
    mov fp, r5
    lsl r1, sl, #1 @ lsl r1, sl, #1
    lsl r1, sl, #1
    str r7, [sp, #4] @ str r7, [sp, #4]
    str r7, [sp, #4]
    add r5, ip, ip, lsl #3 @ add ip, ip, ip, lsl #3
    add r5, ip, ip, lsl #3
    mov ip, r5
    mov ip, r5
    ldr r7, [sp, #12] @ ldr r7, [sp, #12]
    ldr r7, [sp, #12]
    add r5, sl, r1 @ add sl, sl, r1
    add r5, sl, r1
    mov sl, r5
    mov sl, r5
    ldr r1, [sp, #28] @ ldr r1, [sp, #28]
    ldr r1, [sp, #28]
    eor r5, ip, sb, lsl #1 @ eor sb, ip, sb, lsl #1
    eor r5, ip, sb, lsl #1
    mov sb, r5
    mov sb, r5
    eor r5, lr, r3 @ eor r3, lr, r3
    eor r5, lr, r3
    mov r3, r5
    mov r3, r5
    add r5, sl, sl, lsl #3 @ add sl, sl, sl, lsl #3
    add r5, sl, sl, lsl #3
    mov sl, r5
    mov sl, r5
    eor r5, lr, r7 @ eor lr, lr, r7
    eor r5, lr, r7
    mov lr, r5
    mov lr, r5
    eor r5, sb, r3 @ eor r3, sb, r3
    eor r5, sb, r3
    mov r3, r5
    mov r3, r5
    eor r5, sl, r1, lsl #1 @ eor r1, sl, r1, lsl #1
    eor r5, sl, r1, lsl #1
    mov r1, r5
    mov r1, r5
    eors r5, r2, r6 @ eors r2, r2, r6
    eors r5, r2, r6
    mov r2, r5
    mov r2, r5
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    eor r5, r1, lr @ eor r1, r1, lr
    eor r5, r1, lr
    mov r1, r5
    mov r1, r5
    ldrb r6, [sp, #60] @ ldrb r6, [sp, #60]
    ldrb r6, [sp, #60]
    uxtb r5, r2 @ uxtb r2, r2
    uxtb r5, r2
    mov r2, r5
    mov r2, r5
    ldrb r3, [sp, #16] @ ldrb r3, [sp, #16]
    ldrb r3, [sp, #16]
    str r1, [sp, #24] @ str r1, [sp, #24]
    str r1, [sp, #24]
    str r2, [sp, #16] @ str r2, [sp, #16]
    str r2, [sp, #16]
    ldrb r1, [sp, #36] @ ldrb r1, [sp, #36]
    ldrb r1, [sp, #36]
    ldrb r2, [sp, #28] @ ldrb r2, [sp, #28]
    ldrb r2, [sp, #28]
    ldr r7, [sp, #4] @ ldr r7, [sp, #4]
    ldr r7, [sp, #4]
    str r6, [sp, #4] @ str r6, [sp, #4]
    str r6, [sp, #4]
    str r1, [sp, #12] @ str r1, [sp, #12]
    str r1, [sp, #12]
    add r5, fp, fp, lsl #3 @ add fp, fp, fp, lsl #3
    add r5, fp, fp, lsl #3
    mov fp, r5
    mov fp, r5
    ldrb r1, [sp, #20] @ ldrb r1, [sp, #20]
    ldrb r1, [sp, #20]
    str r2, [sp, #20] @ str r2, [sp, #20]
    str r2, [sp, #20]
    ldrb r2, [sp, #4] @ ldrb r2, [sp, #4]
    ldrb r2, [sp, #4]
    eor r5, fp, r0, lsl #1 @ eor r0, fp, r0, lsl #1
    eor r5, fp, r0, lsl #1
    mov r0, r5
    mov r0, r5
    ldrb sl, [sp, #80] @ ldrb sl, [sp, #80]
    ldrb sl, [sp, #80]
    ldrb lr, [sp, #76] @ ldrb lr, [sp, #76]
    ldrb lr, [sp, #76]
    ldrb r6, [sp, #56] @ ldrb r6, [sp, #56]
    ldrb r6, [sp, #56]
    ldrb sb, [sp, #44] @ ldrb sb, [sp, #44]
    ldrb sb, [sp, #44]
    ldrb fp, [sp, #68] @ ldrb fp, [sp, #68]
    ldrb fp, [sp, #68]
    ldrb ip, [sp, #32] @ ldrb ip, [sp, #32]
    ldrb ip, [sp, #32]
    eors r5, r7, r0 @ eors r7, r7, r0
    eors r5, r7, r0
    mov r7, r5
    mov r7, r5
    strb r2, [r8, #7] @ strb r2, [r8, #7]
    strb r2, [r8, #7]
    ldrb r0, [sp, #72] @ ldrb r0, [sp, #72]
    ldrb r0, [sp, #72]
    ldrb r2, [sp, #12] @ ldrb r2, [sp, #12]
    ldrb r2, [sp, #12]
    str r1, [sp, #8] @ str r1, [sp, #8]
    str r1, [sp, #8]
    strb fp, [r8] @ strb fp, [r8]
    strb fp, [r8]
    ldrb r1, [sp, #24] @ ldrb r1, [sp, #24]
    ldrb r1, [sp, #24]
    strb sl, [r8, #3] @ strb sl, [r8, #3]
    strb sl, [r8, #3]
    strb r0, [r8, #1] @ strb r0, [r8, #1]
    strb r0, [r8, #1]
    strb lr, [r8, #2] @ strb lr, [r8, #2]
    strb lr, [r8, #2]
    strb ip, [r8, #4] @ strb ip, [r8, #4]
    strb ip, [r8, #4]
    strb r6, [r8, #6] @ strb r6, [r8, #6]
    strb r6, [r8, #6]
    strb sb, [r8, #5] @ strb sb, [r8, #5]
    strb sb, [r8, #5]
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
    strb r3, [r8, #8] @ strb r3, [r8, #8]
    strb r3, [r8, #8]
    strb r2, [r8, #11] @ strb r2, [r8, #11]
    strb r2, [r8, #11]
    ldrb r2, [sp, #8] @ ldrb r2, [sp, #8]
    ldrb r2, [sp, #8]
    ldrb r3, [sp, #16] @ ldrb r3, [sp, #16]
    ldrb r3, [sp, #16]
    b .L34 @ b .L34
    b .L34
.L35:
    .align 2
.L33:
    .word .LANCHOR0
.L34:
    strb r2, [r8, #10] @ strb r2, [r8, #10]
    strb r2, [r8, #10]
    ldrb r2, [sp, #20] @ ldrb r2, [sp, #20]
    ldrb r2, [sp, #20]
    uxtb r5, r4 @ uxtb r4, r4
    uxtb r5, r4
    mov r4, r5
    mov r4, r5
    strb r2, [r8, #15] @ strb r2, [r8, #15]
    strb r2, [r8, #15]
    uxtb r5, r7 @ uxtb r7, r7
    uxtb r5, r7
    mov r7, r5
    mov r7, r5
    ldr r2, [sp] @ ldr r2, [sp]
    ldr r2, [sp]
    strb r4, [r8, #9] @ strb r4, [r8, #9]
    strb r4, [r8, #9]
    strb r7, [r8, #14] @ strb r7, [r8, #14]
    strb r7, [r8, #14]
    strb r1, [r8, #13] @ strb r1, [r8, #13]
    strb r1, [r8, #13]
    strb r3, [r8, #12] @ strb r3, [r8, #12]
    strb r3, [r8, #12]
    ldrb r3, [r2, #16] @ ldrb r3, [r2, #16]
    ldrb r3, [r2, #16]
    eor r5, fp, r3 @ eor fp, fp, r3
    eor r5, fp, r3
    mov fp, r5
    mov fp, r5
    strb fp, [r8] @ strb fp, [r8]
    strb fp, [r8]
    ldrb r3, [r2, #17] @ ldrb r3, [r2, #17]
    ldrb r3, [r2, #17]
    eor r2, r0, r3 @ eor r2, r0, r3
    eor r2, r0, r3
    ldr r0, [sp] @ ldr r0, [sp]
    ldr r0, [sp]
    strb r2, [r8, #1] @ strb r2, [r8, #1]
    strb r2, [r8, #1]
    ldrb r3, [r0, #18] @ ldrb r3, [r0, #18]
    ldrb r3, [r0, #18]
    str r2, [sp, #24] @ str r2, [sp, #24]
    str r2, [sp, #24]
    eor r2, lr, r3 @ eor r2, lr, r3
    eor r2, lr, r3
    strb r2, [r8, #2] @ strb r2, [r8, #2]
    strb r2, [r8, #2]
    ldrb r3, [r0, #19] @ ldrb r3, [r0, #19]
    ldrb r3, [r0, #19]
    str r2, [sp, #28] @ str r2, [sp, #28]
    str r2, [sp, #28]
    eor r2, sl, r3 @ eor r2, sl, r3
    eor r2, sl, r3
    strb r2, [r8, #3] @ strb r2, [r8, #3]
    strb r2, [r8, #3]
    ldrb r3, [r0, #20] @ ldrb r3, [r0, #20]
    ldrb r3, [r0, #20]
    str r2, [sp, #32] @ str r2, [sp, #32]
    str r2, [sp, #32]
    eor r5, ip, r3 @ eor ip, ip, r3
    eor r5, ip, r3
    mov ip, r5
    mov ip, r5
    strb ip, [r8, #4] @ strb ip, [r8, #4]
    strb ip, [r8, #4]
    ldrb r3, [r0, #21] @ ldrb r3, [r0, #21]
    ldrb r3, [r0, #21]
    eor r5, sb, r3 @ eor sb, sb, r3
    eor r5, sb, r3
    mov sb, r5
    mov sb, r5
    strb sb, [r8, #5] @ strb sb, [r8, #5]
    strb sb, [r8, #5]
    ldrb r3, [r0, #22] @ ldrb r3, [r0, #22]
    ldrb r3, [r0, #22]
    eor r2, r6, r3 @ eor r2, r6, r3
    eor r2, r6, r3
    strb r2, [r8, #6] @ strb r2, [r8, #6]
    strb r2, [r8, #6]
    ldrb r3, [r0, #23] @ ldrb r3, [r0, #23]
    ldrb r3, [r0, #23]
    ldr r6, [sp, #4] @ ldr r6, [sp, #4]
    ldr r6, [sp, #4]
    str r2, [sp, #36] @ str r2, [sp, #36]
    str r2, [sp, #36]
    eor r2, r6, r3 @ eor r2, r6, r3
    eor r2, r6, r3
    str r2, [sp, #40] @ str r2, [sp, #40]
    str r2, [sp, #40]
    strb r2, [r8, #7] @ strb r2, [r8, #7]
    strb r2, [r8, #7]
    ldrb lr, [r0, #24] @ ldrb lr, [r0, #24]
    ldrb lr, [r0, #24]
    ldr r3, [sp, #44] @ ldr r3, [sp, #44]
    ldr r3, [sp, #44]
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    eor r5, r3, lr @ eor lr, r3, lr
    eor r5, r3, lr
    mov lr, r5
    mov lr, r5
    strb lr, [r8, #8] @ strb lr, [r8, #8]
    strb lr, [r8, #8]
    ldrb r6, [r0, #25] @ ldrb r6, [r0, #25]
    ldrb r6, [r0, #25]
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    eors r5, r6, r4 @ eors r6, r6, r4
    eors r5, r6, r4
    mov r6, r5
    mov r6, r5
    strb r6, [r8, #9] @ strb r6, [r8, #9]
    strb r6, [r8, #9]
    ldrb r4, [r0, #26] @ ldrb r4, [r0, #26]
    ldrb r4, [r0, #26]
    eors r5, r4, r3 @ eors r4, r4, r3
    eors r5, r4, r3
    mov r4, r5
    mov r4, r5
    strb r4, [r8, #10] @ strb r4, [r8, #10]
    strb r4, [r8, #10]
    ldrb sl, [r0, #27] @ ldrb sl, [r0, #27]
    ldrb sl, [r0, #27]
    ldr r3, [sp, #12] @ ldr r3, [sp, #12]
    ldr r3, [sp, #12]
    eor r5, r3, sl @ eor sl, r3, sl
    eor r5, r3, sl
    mov sl, r5
    mov sl, r5
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    strb sl, [r8, #11] @ strb sl, [r8, #11]
    strb sl, [r8, #11]
    ldrb r5, [r0, #28] @ ldrb r0, [r0, #28]
    ldrb r5, [r0, #28]
    mov r0, r5
    mov r0, r5
    eors r5, r0, r2 @ eors r0, r0, r2
    eors r5, r0, r2
    mov r0, r5
    mov r0, r5
    strb r0, [r8, #12] @ strb r0, [r8, #12]
    strb r0, [r8, #12]
    ldrb r2, [r3, #29] @ ldrb r2, [r3, #29]
    ldrb r2, [r3, #29]
    eors r5, r2, r1 @ eors r2, r2, r1
    eors r5, r2, r1
    mov r2, r5
    mov r2, r5
    mov r1, r3 @ mov r1, r3
    mov r1, r3
    strb r2, [r8, #13] @ strb r2, [r8, #13]
    strb r2, [r8, #13]
    ldrb r5, [r3, #30] @ ldrb r3, [r3, #30]
    ldrb r5, [r3, #30]
    mov r3, r5
    mov r3, r5
    eors r5, r3, r7 @ eors r3, r3, r7
    eors r5, r3, r7
    mov r3, r5
    mov r3, r5
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    strb r3, [r8, #14] @ strb r3, [r8, #14]
    strb r3, [r8, #14]
    ldrb r5, [r1, #31] @ ldrb r1, [r1, #31]
    ldrb r5, [r1, #31]
    mov r1, r5
    mov r1, r5
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
    ldr r3, [sp, #20] @ ldr r3, [sp, #20]
    ldr r3, [sp, #20]
    adds r5, r7, #16 @ adds r7, r7, #16
    adds r5, r7, #16
    mov r7, r5
    mov r7, r5
    eors r5, r1, r3 @ eors r1, r1, r3
    eors r5, r1, r3
    mov r1, r5
    mov r1, r5
    ldr r3, [sp, #84] @ ldr r3, [sp, #84]
    ldr r3, [sp, #84]
    str r7, [sp] @ str r7, [sp]
    str r7, [sp]
    cmp r3, r7 @ cmp r3, r7
    cmp r3, r7
    strb r1, [r8, #15] @ strb r1, [r8, #15]
    strb r1, [r8, #15]
    bne .L16 @ bne .L16
    bne .L16
    str r1, [sp, #8] @ str r1, [sp, #8]
    str r1, [sp, #8]
    ldr r1, [sp, #88] @ ldr r1, [sp, #88]
    ldr r1, [sp, #88]
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    ldr r2, [sp, #92] @ ldr r2, [sp, #92]
    ldr r2, [sp, #92]
    adds r5, r7, #160 @ adds r7, r7, #160
    adds r5, r7, #160
    mov r7, r5
    mov r7, r5
    cmp r2, r7 @ cmp r2, r7
    cmp r2, r7
    str r7, [sp, #16] @ str r7, [sp, #16]
    str r7, [sp, #16]
    bls .L1002 @ ite hi
    mov r7, #0 @ mov r7, #0
    mov r7, #0
    b .L1003 @ b .L1003
    b .L1003
.L1002:
    mov r7, #1 @ mov r7, #1
    mov r7, #1
.L1003:
    add r2, r1, #168 @ add r2, r1, #168
    add r2, r1, #168
    cmp r8, r2 @ cmp r8, r2
    cmp r8, r2
    bcc .L1004 @ it cs
    orr r5, r7, #1 @ orr r7, r7, #1
    orr r5, r7, #1
    mov r7, r5
    mov r7, r5
.L1004:
    ldr r2, .L36 @ ldr r2, .L36
    ldr r2, .L36
    ldr r1, [sp, #24] @ ldr r1, [sp, #24]
    ldr r1, [sp, #24]
    ldrb r5, [r2, fp] @ ldrb r2, [r2, fp]
    ldrb r5, [r2, fp]
    mov r2, r5
    mov r2, r5
    str r7, [sp, #52] @ str r7, [sp, #52]
    str r7, [sp, #52]
    str r2, [sp, #20] @ str r2, [sp, #20]
    str r2, [sp, #20]
    ldr r2, .L36 @ ldr r2, .L36
    ldr r2, .L36
    ldr r3, [sp, #44] @ ldr r3, [sp, #44]
    ldr r3, [sp, #44]
    ldrb r5, [r2, lr] @ ldrb lr, [r2, lr]
    ldrb r5, [r2, lr]
    mov lr, r5
    mov lr, r5
    ldrb r5, [r2, ip] @ ldrb ip, [r2, ip]
    ldrb r5, [r2, ip]
    mov ip, r5
    mov ip, r5
    ldr r2, .L36 @ ldr r2, .L36
    ldr r2, .L36
    str lr, [sp, #44] @ str lr, [sp, #44]
    str lr, [sp, #44]
    ldrb fp, [r2, r6] @ ldrb fp, [r2, r6]
    ldrb fp, [r2, r6]
    mov r6, r2 @ mov r6, r2
    mov r6, r2
    ldrb r7, [r2, r0] @ ldrb r7, [r2, r0]
    ldrb r7, [r2, r0]
    ldrb lr, [r2, sb] @ ldrb lr, [r2, sb]
    ldrb lr, [r2, sb]
    str r7, [sp, #48] @ str r7, [sp, #48]
    str r7, [sp, #48]
    ldrb r7, [r2, r1] @ ldrb r7, [r2, r1]
    ldrb r7, [r2, r1]
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    ldr r1, [sp, #40] @ ldr r1, [sp, #40]
    ldr r1, [sp, #40]
    ldrb r5, [r6, r2] @ ldrb r6, [r6, r2]
    ldrb r5, [r6, r2]
    mov r6, r5
    mov r6, r5
    ldr r2, [sp, #28] @ ldr r2, [sp, #28]
    ldr r2, [sp, #28]
    str r6, [sp, #12] @ str r6, [sp, #12]
    str r6, [sp, #12]
    ldr r6, .L36 @ ldr r6, .L36
    ldr r6, .L36
    ldrb r0, [r6, r2] @ ldrb r0, [r6, r2]
    ldrb r0, [r6, r2]
    ldr r2, [sp, #36] @ ldr r2, [sp, #36]
    ldr r2, [sp, #36]
    ldr r6, .L36 @ ldr r6, .L36
    ldr r6, .L36
    str r0, [sp, #4] @ str r0, [sp, #4]
    str r0, [sp, #4]
    ldrb r0, [r6, r2] @ ldrb r0, [r6, r2]
    ldrb r0, [r6, r2]
    ldr r2, .L36 @ ldr r2, .L36
    ldr r2, .L36
    ldr r6, [sp, #32] @ ldr r6, [sp, #32]
    ldr r6, [sp, #32]
    ldrb r5, [r2, r4] @ ldrb r2, [r2, r4]
    ldrb r5, [r2, r4]
    mov r2, r5
    mov r2, r5
    ldr r4, .L36 @ ldr r4, .L36
    ldr r4, .L36
    str r0, [sp] @ str r0, [sp]
    str r0, [sp]
    ldrb r5, [r4, r3] @ ldrb r3, [r4, r3]
    ldrb r5, [r4, r3]
    mov r3, r5
    mov r3, r5
    ldrb r5, [r4, r6] @ ldrb r4, [r4, r6]
    ldrb r5, [r4, r6]
    mov r4, r5
    mov r4, r5
    ldr r6, .L36 @ ldr r6, .L36
    ldr r6, .L36
    ldrb r5, [r6, r1] @ ldrb r6, [r6, r1]
    ldrb r5, [r6, r1]
    mov r6, r5
    mov r6, r5
    ldr r1, .L36 @ ldr r1, .L36
    ldr r1, .L36
    ldr r0, [sp, #8] @ ldr r0, [sp, #8]
    ldr r0, [sp, #8]
    ldrb sb, [r1, sl] @ ldrb sb, [r1, sl]
    ldrb sb, [r1, sl]
    ldrb r5, [r1, r0] @ ldrb r1, [r1, r0]
    ldrb r5, [r1, r0]
    mov r1, r5
    mov r1, r5
    ldrb r0, [sp, #20] @ ldrb r0, [sp, #20]
    ldrb r0, [sp, #20]
    strb r3, [r8, #6] @ strb r3, [r8, #6]
    strb r3, [r8, #6]
    strb r0, [r8] @ strb r0, [r8]
    strb r0, [r8]
    ldrb r0, [sp, #44] @ ldrb r0, [sp, #44]
    ldrb r0, [sp, #44]
    ldr r3, [sp, #52] @ ldr r3, [sp, #52]
    ldr r3, [sp, #52]
    strb r0, [r8, #8] @ strb r0, [r8, #8]
    strb r0, [r8, #8]
    ldrb r0, [sp, #48] @ ldrb r0, [sp, #48]
    ldrb r0, [sp, #48]
    strb ip, [r8, #4] @ strb ip, [r8, #4]
    strb ip, [r8, #4]
    strb r0, [r8, #12] @ strb r0, [r8, #12]
    strb r0, [r8, #12]
    ldrb r0, [sp, #12] @ ldrb r0, [sp, #12]
    ldrb r0, [sp, #12]
    strb r7, [r8, #13] @ strb r7, [r8, #13]
    strb r7, [r8, #13]
    strb r0, [r8, #9] @ strb r0, [r8, #9]
    strb r0, [r8, #9]
    ldrb r0, [sp, #4] @ ldrb r0, [sp, #4]
    ldrb r0, [sp, #4]
    strb lr, [r8, #1] @ strb lr, [r8, #1]
    strb lr, [r8, #1]
    strb r0, [r8, #10] @ strb r0, [r8, #10]
    strb r0, [r8, #10]
    ldrb r0, [sp] @ ldrb r0, [sp]
    ldrb r0, [sp]
    strb fp, [r8, #5] @ strb fp, [r8, #5]
    strb fp, [r8, #5]
    strb r0, [r8, #14] @ strb r0, [r8, #14]
    strb r0, [r8, #14]
    strb r2, [r8, #2] @ strb r2, [r8, #2]
    strb r2, [r8, #2]
    strb r4, [r8, #7] @ strb r4, [r8, #7]
    strb r4, [r8, #7]
    strb r6, [r8, #11] @ strb r6, [r8, #11]
    strb r6, [r8, #11]
    strb sb, [r8, #15] @ strb sb, [r8, #15]
    strb sb, [r8, #15]
    strb r1, [r8, #3] @ strb r1, [r8, #3]
    strb r1, [r8, #3]
    cmp r3, #0 @ cmp r3, #0
    cmp r3, #0
    beq .L17 @ beq .L17
    beq .L17
    ldr r7, [sp, #16] @ ldr r7, [sp, #16]
    ldr r7, [sp, #16]
    orr r3, r7, r8 @ orr r3, r7, r8
    orr r3, r7, r8
    lsls r5, r3, #29 @ lsls r3, r3, #29
    lsls r5, r3, #29
    mov r3, r5
    mov r3, r5
    bne .L17 @ bne .L17
    bne .L17
    ldr r4, [sp, #88] @ ldr r4, [sp, #88]
    ldr r4, [sp, #88]
    ldr r0, [r8] @ ldr r0, [r8]
    ldr r0, [r8]
    ldr r2, [r4, #160] @ ldr r2, [r4, #160]
    ldr r2, [r4, #160]
    ldr r3, [r4, #164] @ ldr r3, [r4, #164]
    ldr r3, [r4, #164]
    ldr r1, [r8, #4] @ ldr r1, [r8, #4]
    ldr r1, [r8, #4]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    stm r8, {r2, r3} @ stm r8, {r2, r3}
    stm r8, {r2, r3}
    ldr r0, [r8, #8] @ ldr r0, [r8, #8]
    ldr r0, [r8, #8]
    ldr r2, [r4, #168] @ ldr r2, [r4, #168]
    ldr r2, [r4, #168]
    ldr r3, [r4, #172] @ ldr r3, [r4, #172]
    ldr r3, [r4, #172]
    ldr r1, [r8, #12] @ ldr r1, [r8, #12]
    ldr r1, [r8, #12]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    str r2, [r8, #8] @ str r2, [r8, #8]
    str r2, [r8, #8]
    str r3, [r8, #12] @ str r3, [r8, #12]
    str r3, [r8, #12]
.L13:
    add r5, sp, #96 @ add sp, sp, #96
    add r5, sp, #96
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
.L14:
    ldr r0, [sp, #88] @ ldr r0, [sp, #88]
    ldr r0, [sp, #88]
    ldrb r2, [r8] @ ldrb r2, [r8]
    ldrb r2, [r8]
    ldrb r3, [r0] @ ldrb r3, [r0]
    ldrb r3, [r0]
    ldrb r1, [r8, #1] @ ldrb r1, [r8, #1]
    ldrb r1, [r8, #1]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8] @ strb r3, [r8]
    strb r3, [r8]
    ldrb r3, [r0, #1] @ ldrb r3, [r0, #1]
    ldrb r3, [r0, #1]
    ldrb r2, [r8, #2] @ ldrb r2, [r8, #2]
    ldrb r2, [r8, #2]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #1] @ strb r3, [r8, #1]
    strb r3, [r8, #1]
    ldrb r3, [r0, #2] @ ldrb r3, [r0, #2]
    ldrb r3, [r0, #2]
    ldrb r1, [r8, #3] @ ldrb r1, [r8, #3]
    ldrb r1, [r8, #3]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #2] @ strb r3, [r8, #2]
    strb r3, [r8, #2]
    ldrb r3, [r0, #3] @ ldrb r3, [r0, #3]
    ldrb r3, [r0, #3]
    ldrb r2, [r8, #4] @ ldrb r2, [r8, #4]
    ldrb r2, [r8, #4]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #3] @ strb r3, [r8, #3]
    strb r3, [r8, #3]
    ldrb r3, [r0, #4] @ ldrb r3, [r0, #4]
    ldrb r3, [r0, #4]
    ldrb r1, [r8, #5] @ ldrb r1, [r8, #5]
    ldrb r1, [r8, #5]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #4] @ strb r3, [r8, #4]
    strb r3, [r8, #4]
    ldrb r3, [r0, #5] @ ldrb r3, [r0, #5]
    ldrb r3, [r0, #5]
    ldrb r2, [r8, #6] @ ldrb r2, [r8, #6]
    ldrb r2, [r8, #6]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #5] @ strb r3, [r8, #5]
    strb r3, [r8, #5]
    ldrb r3, [r0, #6] @ ldrb r3, [r0, #6]
    ldrb r3, [r0, #6]
    ldrb r1, [r8, #7] @ ldrb r1, [r8, #7]
    ldrb r1, [r8, #7]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #6] @ strb r3, [r8, #6]
    strb r3, [r8, #6]
    ldrb r3, [r0, #7] @ ldrb r3, [r0, #7]
    ldrb r3, [r0, #7]
    ldrb r2, [r8, #8] @ ldrb r2, [r8, #8]
    ldrb r2, [r8, #8]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #7] @ strb r3, [r8, #7]
    strb r3, [r8, #7]
    ldrb r3, [r0, #8] @ ldrb r3, [r0, #8]
    ldrb r3, [r0, #8]
    ldrb r1, [r8, #9] @ ldrb r1, [r8, #9]
    ldrb r1, [r8, #9]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #8] @ strb r3, [r8, #8]
    strb r3, [r8, #8]
    ldrb r3, [r0, #9] @ ldrb r3, [r0, #9]
    ldrb r3, [r0, #9]
    ldrb r2, [r8, #10] @ ldrb r2, [r8, #10]
    ldrb r2, [r8, #10]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #9] @ strb r3, [r8, #9]
    strb r3, [r8, #9]
    ldrb r3, [r0, #10] @ ldrb r3, [r0, #10]
    ldrb r3, [r0, #10]
    ldrb r1, [r8, #12] @ ldrb r1, [r8, #12]
    ldrb r1, [r8, #12]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #10] @ strb r3, [r8, #10]
    strb r3, [r8, #10]
    ldrb r3, [r0, #11] @ ldrb r3, [r0, #11]
    ldrb r3, [r0, #11]
    ldrb r2, [r8, #11] @ ldrb r2, [r8, #11]
    ldrb r2, [r8, #11]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #11] @ strb r3, [r8, #11]
    strb r3, [r8, #11]
    ldrb r3, [r0, #12] @ ldrb r3, [r0, #12]
    ldrb r3, [r0, #12]
    ldrb r2, [r8, #13] @ ldrb r2, [r8, #13]
    ldrb r2, [r8, #13]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #12] @ strb r3, [r8, #12]
    strb r3, [r8, #12]
    ldrb r3, [r0, #13] @ ldrb r3, [r0, #13]
    ldrb r3, [r0, #13]
    ldrb r1, [r8, #14] @ ldrb r1, [r8, #14]
    ldrb r1, [r8, #14]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #13] @ strb r3, [r8, #13]
    strb r3, [r8, #13]
    ldrb r3, [r0, #14] @ ldrb r3, [r0, #14]
    ldrb r3, [r0, #14]
    ldrb r2, [r8, #15] @ ldrb r2, [r8, #15]
    ldrb r2, [r8, #15]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #14] @ strb r3, [r8, #14]
    strb r3, [r8, #14]
    ldrb r3, [r0, #15] @ ldrb r3, [r0, #15]
    ldrb r3, [r0, #15]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #15] @ strb r3, [r8, #15]
    strb r3, [r8, #15]
    mov r2, r0 @ mov r2, r0
    mov r2, r0
    b .L15 @ b .L15
    b .L15
.L17:
    ldr r6, [sp, #88] @ ldr r6, [sp, #88]
    ldr r6, [sp, #88]
    ldrb r3, [r8] @ ldrb r3, [r8]
    ldrb r3, [r8]
    ldrb r4, [r6, #160] @ ldrb r4, [r6, #160]
    ldrb r4, [r6, #160]
    ldrb r0, [r8, #4] @ ldrb r0, [r8, #4]
    ldrb r0, [r8, #4]
    eors r5, r3, r4 @ eors r3, r3, r4
    eors r5, r3, r4
    mov r3, r5
    mov r3, r5
    strb r3, [r8] @ strb r3, [r8]
    strb r3, [r8]
    ldrb r3, [r6, #161] @ ldrb r3, [r6, #161]
    ldrb r3, [r6, #161]
    ldrb r7, [r8, #5] @ ldrb r7, [r8, #5]
    ldrb r7, [r8, #5]
    eor r5, lr, r3 @ eor r3, lr, r3
    eor r5, lr, r3
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #1] @ strb r3, [r8, #1]
    strb r3, [r8, #1]
    ldrb r4, [r6, #162] @ ldrb r4, [r6, #162]
    ldrb r4, [r6, #162]
    ldrb r3, [r8, #6] @ ldrb r3, [r8, #6]
    ldrb r3, [r8, #6]
    eors r5, r2, r4 @ eors r2, r2, r4
    eors r5, r2, r4
    mov r2, r5
    mov r2, r5
    mov r4, r6 @ mov r4, r6
    mov r4, r6
    strb r2, [r8, #2] @ strb r2, [r8, #2]
    strb r2, [r8, #2]
    ldrb r2, [r6, #163] @ ldrb r2, [r6, #163]
    ldrb r2, [r6, #163]
    ldrb r6, [r8, #7] @ ldrb r6, [r8, #7]
    ldrb r6, [r8, #7]
    eors r5, r1, r2 @ eors r1, r1, r2
    eors r5, r1, r2
    mov r1, r5
    mov r1, r5
    strb r1, [r8, #3] @ strb r1, [r8, #3]
    strb r1, [r8, #3]
    mov r1, r4 @ mov r1, r4
    mov r1, r4
    ldrb r2, [r4, #164] @ ldrb r2, [r4, #164]
    ldrb r2, [r4, #164]
    ldrb r4, [r8, #8] @ ldrb r4, [r8, #8]
    ldrb r4, [r8, #8]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    strb r2, [r8, #4] @ strb r2, [r8, #4]
    strb r2, [r8, #4]
    ldrb r2, [r1, #165] @ ldrb r2, [r1, #165]
    ldrb r2, [r1, #165]
    ldrb r0, [r8, #9] @ ldrb r0, [r8, #9]
    ldrb r0, [r8, #9]
    eors r5, r2, r7 @ eors r2, r2, r7
    eors r5, r2, r7
    mov r2, r5
    mov r2, r5
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    strb r2, [r8, #5] @ strb r2, [r8, #5]
    strb r2, [r8, #5]
    ldrb r2, [r1, #166] @ ldrb r2, [r1, #166]
    ldrb r2, [r1, #166]
    ldrb r1, [r8, #10] @ ldrb r1, [r8, #10]
    ldrb r1, [r8, #10]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #6] @ strb r3, [r8, #6]
    strb r3, [r8, #6]
    ldrb r3, [r7, #167] @ ldrb r3, [r7, #167]
    ldrb r3, [r7, #167]
    ldrb r2, [r8, #11] @ ldrb r2, [r8, #11]
    ldrb r2, [r8, #11]
    eors r5, r3, r6 @ eors r3, r3, r6
    eors r5, r3, r6
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #7] @ strb r3, [r8, #7]
    strb r3, [r8, #7]
    ldrb r3, [r7, #168] @ ldrb r3, [r7, #168]
    ldrb r3, [r7, #168]
    eors r5, r3, r4 @ eors r3, r3, r4
    eors r5, r3, r4
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #8] @ strb r3, [r8, #8]
    strb r3, [r8, #8]
    ldrb r3, [r7, #169] @ ldrb r3, [r7, #169]
    ldrb r3, [r7, #169]
    eors r5, r3, r0 @ eors r3, r3, r0
    eors r5, r3, r0
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #9] @ strb r3, [r8, #9]
    strb r3, [r8, #9]
    ldrb r3, [r7, #170] @ ldrb r3, [r7, #170]
    ldrb r3, [r7, #170]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #10] @ strb r3, [r8, #10]
    strb r3, [r8, #10]
    ldrb r3, [r7, #171] @ ldrb r3, [r7, #171]
    ldrb r3, [r7, #171]
    ldrb r1, [r8, #12] @ ldrb r1, [r8, #12]
    ldrb r1, [r8, #12]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #11] @ strb r3, [r8, #11]
    strb r3, [r8, #11]
    ldrb r3, [r7, #172] @ ldrb r3, [r7, #172]
    ldrb r3, [r7, #172]
    ldrb r2, [r8, #13] @ ldrb r2, [r8, #13]
    ldrb r2, [r8, #13]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #12] @ strb r3, [r8, #12]
    strb r3, [r8, #12]
    ldrb r3, [r7, #173] @ ldrb r3, [r7, #173]
    ldrb r3, [r7, #173]
    ldrb r1, [r8, #14] @ ldrb r1, [r8, #14]
    ldrb r1, [r8, #14]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #13] @ strb r3, [r8, #13]
    strb r3, [r8, #13]
    ldrb r3, [r7, #174] @ ldrb r3, [r7, #174]
    ldrb r3, [r7, #174]
    ldrb r2, [r8, #15] @ ldrb r2, [r8, #15]
    ldrb r2, [r8, #15]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #14] @ strb r3, [r8, #14]
    strb r3, [r8, #14]
    ldrb r3, [r7, #175] @ ldrb r3, [r7, #175]
    ldrb r3, [r7, #175]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [r8, #15] @ strb r3, [r8, #15]
    strb r3, [r8, #15]
    b .L13 @ b .L13
    b .L13
.L37:
    .align 2
.L36:
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
.L39:
    b .L39 @ b .L39
    b .L39
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
    adr lr, .L1006 @ bl report_done
    adr lr, .L1006
    orr lr, #1
    orr lr, #1
    b report_done
    b report_done
.L1006:
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
    adr lr, .L1007 @ bl key_expansion
    adr lr, .L1007
    orr lr, #1
    orr lr, #1
    b key_expansion
    b key_expansion
.L1007:
    mov r1, sp @ mov r1, sp
    mov r1, sp
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    adr lr, .L1008 @ bl cipher
    adr lr, .L1008
    orr lr, #1
    orr lr, #1
    b cipher
    b cipher
.L1008:
    adr lr, .L1009 @ bl report_done
    adr lr, .L1009
    orr lr, #1
    orr lr, #1
    b report_done
    b report_done
.L1009:
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
