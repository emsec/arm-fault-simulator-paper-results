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
    @ args = 0, pretend = 0, frame = 344
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    sub r5, sp, #344 @ sub sp, sp, #344
    sub r5, sp, #344
    mov sp, r5
    mov sp, r5
    ldr r4, .L25 @ ldr r4, .L25
    ldr r4, .L25
    add r6, sp, #24 @ add r6, sp, #24
    add r6, sp, #24
    str r1, [sp, #12] @ str r1, [sp, #12]
    str r1, [sp, #12]
    str r0, [sp, #16] @ str r0, [sp, #16]
    str r0, [sp, #16]
    str r2, [sp, #20] @ str r2, [sp, #20]
    str r2, [sp, #20]
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
    beq .L21 @ beq .L21
    beq .L21
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    str r3, [sp, #4] @ str r3, [sp, #4]
    str r3, [sp, #4]
    add r3, r4, #16 @ add r3, r4, #16
    add r3, r4, #16
    str r3, [sp] @ str r3, [sp]
    str r3, [sp]
    add ip, sp, #52 @ add ip, sp, #52
    add ip, sp, #52
    add sl, sp, #56 @ add sl, sp, #56
    add sl, sp, #56
.L12:
    ldr r3, [sp, #16] @ ldr r3, [sp, #16]
    ldr r3, [sp, #16]
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    add r4, sp, #84 @ add r4, sp, #84
    add r4, sp, #84
    adds r0, r3, r2 @ adds r0, r3, r2
    adds r0, r3, r2
.L4:
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
    add r3, sp, #148 @ add r3, sp, #148
    add r3, sp, #148
    cmp r3, r4 @ cmp r3, r4
    cmp r3, r4
    add r5, r0, #4 @ add r0, r0, #4
    add r5, r0, #4
    mov r0, r5
    mov r0, r5
    bne .L4 @ bne .L4
    bne .L4
    add r6, sp, #88 @ add r6, sp, #88
    add r6, sp, #88
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
    ror r3, r2, #19 @ ror r3, r2, #19
    ror r3, r2, #19
    ldr r0, [r4, #36] @ ldr r0, [r4, #36]
    ldr r0, [r4, #36]
    eor r5, r3, r2, ror #17 @ eor r3, r3, r2, ror #17
    eor r5, r3, r2, ror #17
    mov r3, r5
    mov r3, r5
    ldr r5, [r4] @ ldr r4, [r4]
    ldr r5, [r4]
    mov r4, r5
    mov r4, r5
    eor r5, r3, r2, lsr #10 @ eor r3, r3, r2, lsr #10
    eor r5, r3, r2, lsr #10
    mov r3, r5
    mov r3, r5
    ror r2, r1, #18 @ ror r2, r1, #18
    ror r2, r1, #18
    add r5, r0, r4 @ add r0, r0, r4
    add r5, r0, r4
    mov r0, r5
    mov r0, r5
    eor r5, r2, r1, ror #7 @ eor r2, r2, r1, ror #7
    eor r5, r2, r1, ror #7
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
    str r3, [r6, #60] @ str r3, [r6, #60]
    str r3, [r6, #60]
    add r3, sp, #280 @ add r3, sp, #280
    add r3, sp, #280
    cmp r3, r6 @ cmp r3, r6
    cmp r3, r6
    bne .L5 @ bne .L5
    bne .L5
    ldr r3, [sp, #24] @ ldr r3, [sp, #24]
    ldr r3, [sp, #24]
    ldr r1, [sp, #44] @ ldr r1, [sp, #44]
    ldr r1, [sp, #44]
    mov r2, r3 @ mov r2, r3
    mov r2, r3
    ldr r4, .L25+4 @ ldr r4, .L25+4
    ldr r4, .L25+4
    ldr fp, [sp, #28] @ ldr fp, [sp, #28]
    ldr fp, [sp, #28]
    str r1, [sl, #20] @ str r1, [sl, #20]
    str r1, [sl, #20]
    mov r8, r1 @ mov r8, r1
    mov r8, r1
    mov lr, #0 @ mov lr, #0
    mov lr, #0
    mov r1, r2 @ mov r1, r2
    mov r1, r2
    mov r2, r4 @ mov r2, r4
    mov r2, r4
    mov r4, fp @ mov r4, fp
    mov r4, fp
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
    ldr sb, [sp, #32] @ ldr sb, [sp, #32]
    ldr sb, [sp, #32]
    ldr r7, [sp, #40] @ ldr r7, [sp, #40]
    ldr r7, [sp, #40]
    ldr r6, [sp, #48] @ ldr r6, [sp, #48]
    ldr r6, [sp, #48]
    ldr r0, [sp, #52] @ ldr r0, [sp, #52]
    ldr r0, [sp, #52]
    stm sl, {r3, fp} @ stm sl, {r3, fp}
    stm sl, {r3, fp}
    ldr r3, [sp, #36] @ ldr r3, [sp, #36]
    ldr r3, [sp, #36]
    str sb, [sl, #8] @ str sb, [sl, #8]
    str sb, [sl, #8]
    str r3, [sl, #12] @ str r3, [sl, #12]
    str r3, [sl, #12]
    str r7, [sl, #16] @ str r7, [sl, #16]
    str r7, [sl, #16]
    str r6, [sl, #24] @ str r6, [sl, #24]
    str r6, [sl, #24]
    str r0, [sl, #28] @ str r0, [sl, #28]
    str r0, [sl, #28]
.L10:
    add fp, r0, r2 @ add fp, r0, r2
    add fp, r0, r2
    add r2, sp, #88 @ add r2, sp, #88
    add r2, sp, #88
    ldr r0, [r2, lr, lsl #2] @ ldr r0, [r2, lr, lsl #2]
    ldr r0, [r2, lr, lsl #2]
    ror r2, r7, #11 @ ror r2, r7, #11
    ror r2, r7, #11
    eor r5, r2, r7, ror #6 @ eor r2, r2, r7, ror #6
    eor r5, r2, r7, ror #6
    mov r2, r5
    mov r2, r5
    and r5, r7, r8 @ and r8, r7, r8
    and r5, r7, r8
    mov r8, r5
    mov r8, r5
    add r5, fp, r0 @ add fp, fp, r0
    add r5, fp, r0
    mov fp, r5
    mov fp, r5
    eor r5, r2, r7, ror #25 @ eor r2, r2, r7, ror #25
    eor r5, r2, r7, ror #25
    mov r2, r5
    mov r2, r5
    bic r0, r6, r7 @ bic r0, r6, r7
    bic r0, r6, r7
    eor r5, r0, r8 @ eor r0, r0, r8
    eor r5, r0, r8
    mov r0, r5
    mov r0, r5
    add r7, r2, fp @ add r7, r2, fp
    add r7, r2, fp
    eor r8, sb, r4 @ eor r8, sb, r4
    eor r8, sb, r4
    ror r2, r1, #13 @ ror r2, r1, #13
    ror r2, r1, #13
    eor r5, r2, r1, ror #2 @ eor r2, r2, r1, ror #2
    eor r5, r2, r1, ror #2
    mov r2, r5
    mov r2, r5
    and r5, r8, r1 @ and r8, r8, r1
    and r5, r8, r1
    mov r8, r5
    mov r8, r5
    and r5, r4, sb @ and r4, r4, sb
    and r5, r4, sb
    mov r4, r5
    mov r4, r5
    eor r5, r2, r1, ror #22 @ eor r2, r2, r1, ror #22
    eor r5, r2, r1, ror #22
    mov r2, r5
    mov r2, r5
    eor r1, r8, r4 @ eor r1, r8, r4
    eor r1, r8, r4
    add r3, sp, #76 @ add r3, sp, #76
    add r3, sp, #76
    add r5, r7, r0 @ add r7, r7, r0
    add r5, r7, r0
    mov r7, r5
    mov r7, r5
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    b .L7 @ b .L7
    b .L7
.L22:
    ldr r6, [r3] @ ldr r6, [r3], #-4
    ldr r6, [r3]
    add r5, r3, #-4 @ add r3, r3, #-4
    add r5, r3, #-4
    mov r3, r5
    mov r3, r5
.L7:
    cmp ip, r3 @ cmp ip, r3
    cmp ip, r3
    str r6, [r3, #8] @ str r6, [r3, #8]
    str r6, [r3, #8]
    bne .L22 @ bne .L22
    bne .L22
    ldr r3, [sl, #16] @ ldr r3, [sl, #16]
    ldr r3, [sl, #16]
    add r5, lr, #1 @ add lr, lr, #1
    add r5, lr, #1
    mov lr, r5
    mov lr, r5
    adds r1, r7, r2 @ adds r1, r7, r2
    adds r1, r7, r2
    cmp lr, #64 @ cmp lr, #64
    cmp lr, #64
    add r5, r7, r3 @ add r7, r7, r3
    add r5, r7, r3
    mov r7, r5
    mov r7, r5
    str r1, [sl] @ str r1, [sl]
    str r1, [sl]
    str r7, [sl, #16] @ str r7, [sl, #16]
    str r7, [sl, #16]
    beq .L23 @ beq .L23
    beq .L23
    ldr r3, [sp] @ ldr r3, [sp]
    ldr r3, [sp]
    ldr r0, [sl, #28] @ ldr r0, [sl, #28]
    ldr r0, [sl, #28]
    ldr r8, [sl, #20] @ ldr r8, [sl, #20]
    ldr r8, [sl, #20]
    ldr r6, [sl, #24] @ ldr r6, [sl, #24]
    ldr r6, [sl, #24]
    ldr r2, [r3, lr, lsl #2] @ ldr r2, [r3, lr, lsl #2]
    ldr r2, [r3, lr, lsl #2]
    ldr r4, [sl, #4] @ ldr r4, [sl, #4]
    ldr r4, [sl, #4]
    ldr sb, [sl, #8] @ ldr sb, [sl, #8]
    ldr sb, [sl, #8]
    b .L10 @ b .L10
    b .L10
.L23:
    mov r2, r1 @ mov r2, r1
    mov r2, r1
    add r3, sp, #24 @ add r3, sp, #24
    add r3, sp, #24
    add r1, sp, #60 @ add r1, sp, #60
    add r1, sp, #60
    ldr r0, [sp, #8] @ ldr r0, [sp, #8]
    ldr r0, [sp, #8]
    b .L9 @ b .L9
    b .L9
.L24:
    ldr r0, [r3] @ ldr r0, [r3]
    ldr r0, [r3]
    ldr r2, [r1] @ ldr r2, [r1], #4
    ldr r2, [r1]
    add r5, r1, #4 @ add r1, r1, #4
    add r5, r1, #4
    mov r1, r5
    mov r1, r5
.L9:
    add r5, r2, r0 @ add r2, r2, r0
    add r5, r2, r0
    mov r2, r5
    mov r2, r5
    str r2, [r3] @ str r2, [r3], #4
    str r2, [r3]
    add r5, r3, #4 @ add r3, r3, #4
    add r5, r3, #4
    mov r3, r5
    mov r3, r5
    cmp sl, r3 @ cmp sl, r3
    cmp sl, r3
    bne .L24 @ bne .L24
    bne .L24
    ldr r3, [sp, #4] @ ldr r3, [sp, #4]
    ldr r3, [sp, #4]
    ldr r2, [sp, #12] @ ldr r2, [sp, #12]
    ldr r2, [sp, #12]
    adds r5, r3, #64 @ adds r3, r3, #64
    adds r5, r3, #64
    mov r3, r5
    mov r3, r5
    cmp r2, r3 @ cmp r2, r3
    cmp r2, r3
    str r3, [sp, #4] @ str r3, [sp, #4]
    str r3, [sp, #4]
    bhi .L12 @ bhi .L12
    bhi .L12
.L13:
    ldr r3, [sp, #20] @ ldr r3, [sp, #20]
    ldr r3, [sp, #20]
    add r1, sp, #20 @ add r1, sp, #20
    add r1, sp, #20
.L3:
    ldr r2, [r1, #4] @ ldr r2, [r1, #4]!
    ldr r2, [r1, #4]
    add r5, r1, #4 @ add r1, r1, #4
    add r5, r1, #4
    mov r1, r5
    mov r1, r5
    adds r5, r3, #4 @ adds r3, r3, #4
    adds r5, r3, #4
    mov r3, r5
    mov r3, r5
    lsrs r6, r2, #24 @ lsrs r6, r2, #24
    lsrs r6, r2, #24
    lsrs r4, r2, #16 @ lsrs r4, r2, #16
    lsrs r4, r2, #16
    lsrs r0, r2, #8 @ lsrs r0, r2, #8
    lsrs r0, r2, #8
    cmp ip, r1 @ cmp ip, r1
    cmp ip, r1
    strb r2, [r3, #-1] @ strb r2, [r3, #-1]
    strb r2, [r3, #-1]
    strb r6, [r3, #-4] @ strb r6, [r3, #-4]
    strb r6, [r3, #-4]
    strb r4, [r3, #-3] @ strb r4, [r3, #-3]
    strb r4, [r3, #-3]
    strb r0, [r3, #-2] @ strb r0, [r3, #-2]
    strb r0, [r3, #-2]
    bne .L3 @ bne .L3
    bne .L3
    add r5, sp, #344 @ add sp, sp, #344
    add r5, sp, #344
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
.L21:
    add ip, sp, #52 @ add ip, sp, #52
    add ip, sp, #52
    b .L13 @ b .L13
    b .L13
.L26:
    .align 2
.L25:
    .word .LANCHOR0
    .word 1116352408
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
.L28:
    b .L28 @ b .L28
    b .L28
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
    b .L33 @ b .L33
    b .L33
.L32:
    cmp r3, r4 @ cmp r3, r4
    cmp r3, r4
    beq .L36 @ beq .L36
    beq .L36
.L33:
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
    beq .L32 @ beq .L32
    beq .L32
    adr lr, .L1002 @ bl report_error
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b report_error
    b report_error
.L1002:
.L36:
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
