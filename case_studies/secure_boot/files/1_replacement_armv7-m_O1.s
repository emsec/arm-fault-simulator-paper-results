    .arch armv7-m
    .eabi_attribute 20, 1
    .eabi_attribute 21, 1
    .eabi_attribute 23, 3
    .eabi_attribute 24, 1
    .eabi_attribute 25, 1
    .eabi_attribute 26, 1
    .eabi_attribute 30, 1
    .eabi_attribute 34, 1
    .eabi_attribute 18, 4
    .file "bootloader.c"
    .text
    .align 1
    .global sha256
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type sha256, %function
sha256:
    @ args = 0, pretend = 0, frame = 336
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    sub r5, sp, #336 @ sub sp, sp, #336
    sub r5, sp, #336
    mov sp, r5
    mov sp, r5
    str r0, [sp, #8] @ str r0, [sp, #8]
    str r0, [sp, #8]
    mov r7, r1 @ mov r7, r1
    mov r7, r1
    str r1, [sp, #4] @ str r1, [sp, #4]
    str r1, [sp, #4]
    str r2, [sp, #12] @ str r2, [sp, #12]
    str r2, [sp, #12]
    add r4, sp, #304 @ add r4, sp, #304
    add r4, sp, #304
    ldr r6, .L20 @ ldr r6, .L20
    ldr r6, .L20
    ldmia r6, {r0, r1, r2, r3} @ ldmia r6!, {r0, r1, r2, r3}
    ldmia r6, {r0, r1, r2, r3}
    add r5, r6, #16
    add r5, r6, #16
    mov r6, r5
    mov r6, r5
    stmia r4, {r0, r1, r2, r3} @ stmia r4!, {r0, r1, r2, r3}
    stmia r4, {r0, r1, r2, r3}
    add r5, r4, #16
    add r5, r4, #16
    mov r4, r5
    mov r4, r5
    ldm r6, {r0, r1, r2, r3} @ ldm r6, {r0, r1, r2, r3}
    ldm r6, {r0, r1, r2, r3}
    stm r4, {r0, r1, r2, r3} @ stm r4, {r0, r1, r2, r3}
    stm r4, {r0, r1, r2, r3}
    cmp r7, #0 @ cmp r7, #0
    cmp r7, #0
    beq .L3 @ beq .L3
    beq .L3
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    str r3, [sp] @ str r3, [sp]
    str r3, [sp]
    add lr, sp, #108 @ add lr, sp, #108
    add lr, sp, #108
    add r7, sp, #240 @ add r7, sp, #240
    add r7, sp, #240
    ldr r3, .L20 @ ldr r3, .L20
    ldr r3, .L20
    add r6, r3, #284 @ add r6, r3, #284
    add r6, r3, #284
    add r1, sp, #16 @ add r1, sp, #16
    add r1, sp, #16
    add ip, sp, #332 @ add ip, sp, #332
    add ip, sp, #332
    b .L2 @ b .L2
    b .L2
.L19:
    add r5, r4, r2 @ add r4, r4, r2
    add r5, r4, r2
    mov r4, r5
    mov r4, r5
    str r4, [sp, #16] @ str r4, [sp, #16]
    str r4, [sp, #16]
    ldr r3, [sp, #32] @ ldr r3, [sp, #32]
    ldr r3, [sp, #32]
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    str r2, [sp, #32] @ str r2, [sp, #32]
    str r2, [sp, #32]
    cmp sl, r6 @ cmp sl, r6
    cmp sl, r6
    beq .L18 @ beq .L18
    beq .L18
.L7:
    ldr r4, [sp, #32] @ ldr r4, [sp, #32]
    ldr r4, [sp, #32]
    ldr r3, [sp, #40] @ ldr r3, [sp, #40]
    ldr r3, [sp, #40]
    bic r2, r3, r4 @ bic r2, r3, r4
    bic r2, r3, r4
    ldr r0, [sp, #36] @ ldr r0, [sp, #36]
    ldr r0, [sp, #36]
    ands r5, r0, r4 @ ands r0, r0, r4
    ands r5, r0, r4
    mov r0, r5
    mov r0, r5
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    ror r3, r4, #11 @ ror r3, r4, #11
    ror r3, r4, #11
    eor r5, r3, r4, ror #6 @ eor r3, r3, r4, ror #6
    eor r5, r3, r4, ror #6
    mov r3, r5
    mov r3, r5
    eor r5, r3, r4, ror #25 @ eor r3, r3, r4, ror #25
    eor r5, r3, r4, ror #25
    mov r3, r5
    mov r3, r5
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr r3, [sp, #44] @ ldr r3, [sp, #44]
    ldr r3, [sp, #44]
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr r3, [sl, #4] @ ldr r3, [sl, #4]!
    ldr r3, [sl, #4]
    add r5, sl, #4 @ add sl, sl, #4
    add r5, sl, #4
    mov sl, r5
    mov sl, r5
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr r3, [fp, #4] @ ldr r3, [fp, #4]!
    ldr r3, [fp, #4]
    add r5, fp, #4 @ add fp, fp, #4
    add r5, fp, #4
    mov fp, r5
    mov fp, r5
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr sb, [sp, #16] @ ldr sb, [sp, #16]
    ldr sb, [sp, #16]
    ldr r0, [sp, #20] @ ldr r0, [sp, #20]
    ldr r0, [sp, #20]
    ldr r8, [sp, #24] @ ldr r8, [sp, #24]
    ldr r8, [sp, #24]
    ror r3, sb, #13 @ ror r3, sb, #13
    ror r3, sb, #13
    eor r5, r3, sb, ror #2 @ eor r3, r3, sb, ror #2
    eor r5, r3, sb, ror #2
    mov r3, r5
    mov r3, r5
    eor r5, r3, sb, ror #22 @ eor r3, r3, sb, ror #22
    eor r5, r3, sb, ror #22
    mov r3, r5
    mov r3, r5
    eor r4, r8, r0 @ eor r4, r8, r0
    eor r4, r8, r0
    and r5, r4, sb @ and r4, r4, sb
    and r5, r4, sb
    mov r4, r5
    mov r4, r5
    and r5, r0, r8 @ and r0, r0, r8
    and r5, r0, r8
    mov r0, r5
    mov r0, r5
    eors r5, r4, r0 @ eors r4, r4, r0
    eors r5, r4, r0
    mov r4, r5
    mov r4, r5
    add r5, r4, r3 @ add r4, r4, r3
    add r5, r4, r3
    mov r4, r5
    mov r4, r5
    add r3, sp, #44 @ add r3, sp, #44
    add r3, sp, #44
.L6:
    ldr r0, [r3, #-4] @ ldr r0, [r3, #-4]
    ldr r0, [r3, #-4]
    str r0, [r3] @ str r0, [r3], #-4
    str r0, [r3]
    add r5, r3, #-4 @ add r3, r3, #-4
    add r5, r3, #-4
    mov r3, r5
    mov r3, r5
    cmp r3, r1 @ cmp r3, r1
    cmp r3, r1
    bne .L6 @ bne .L6
    bne .L6
    b .L19 @ b .L19
    b .L19
.L18:
    add r0, sp, #300 @ add r0, sp, #300
    add r0, sp, #300
    add r4, sp, #12 @ add r4, sp, #12
    add r4, sp, #12
.L8:
    ldr r3, [r0, #4] @ ldr r3, [r0, #4]
    ldr r3, [r0, #4]
    ldr r2, [r4, #4] @ ldr r2, [r4, #4]!
    ldr r2, [r4, #4]
    add r5, r4, #4 @ add r4, r4, #4
    add r5, r4, #4
    mov r4, r5
    mov r4, r5
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    str r3, [r0, #4] @ str r3, [r0, #4]!
    str r3, [r0, #4]
    add r5, r0, #4 @ add r0, r0, #4
    add r5, r0, #4
    mov r0, r5
    mov r0, r5
    cmp ip, r0 @ cmp ip, r0
    cmp ip, r0
    bne .L8 @ bne .L8
    bne .L8
    ldr r3, [sp] @ ldr r3, [sp]
    ldr r3, [sp]
    adds r5, r3, #64 @ adds r3, r3, #64
    adds r5, r3, #64
    mov r3, r5
    mov r3, r5
    str r3, [sp] @ str r3, [sp]
    str r3, [sp]
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    cmp r2, r3 @ cmp r2, r3
    cmp r2, r3
    bls .L3 @ bls .L3
    bls .L3
.L2:
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    ldr r2, [sp] @ ldr r2, [sp]
    ldr r2, [sp]
    adds r0, r3, r2 @ adds r0, r3, r2
    adds r0, r3, r2
    add fp, sp, #44 @ add fp, sp, #44
    add fp, sp, #44
    mov r4, fp @ mov r4, fp
    mov r4, fp
.L4:
    ldrb r2, [r0] @ ldrb r2, [r0]
    ldrb r2, [r0]
    ldrb r3, [r0, #1] @ ldrb r3, [r0, #1]
    ldrb r3, [r0, #1]
    lsls r5, r3, #16 @ lsls r3, r3, #16
    lsls r5, r3, #16
    mov r3, r5
    mov r3, r5
    orr r5, r3, r2, lsl #24 @ orr r3, r3, r2, lsl #24
    orr r5, r3, r2, lsl #24
    mov r3, r5
    mov r3, r5
    ldrb r2, [r0, #3] @ ldrb r2, [r0, #3]
    ldrb r2, [r0, #3]
    orrs r5, r3, r2 @ orrs r3, r3, r2
    orrs r5, r3, r2
    mov r3, r5
    mov r3, r5
    ldrb r2, [r0, #2] @ ldrb r2, [r0, #2]
    ldrb r2, [r0, #2]
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
    adds r5, r0, #4 @ adds r0, r0, #4
    adds r5, r0, #4
    mov r0, r5
    mov r0, r5
    cmp r4, lr @ cmp r4, lr
    cmp r4, lr
    bne .L4 @ bne .L4
    bne .L4
    add r0, sp, #48 @ add r0, sp, #48
    add r0, sp, #48
.L5:
    mov r8, r0 @ mov r8, r0
    mov r8, r0
    ldr r2, [r0, #56] @ ldr r2, [r0, #56]
    ldr r2, [r0, #56]
    ldr r4, [r0, #4] @ ldr r4, [r0, #4]!
    ldr r4, [r0, #4]
    add r5, r0, #4 @ add r0, r0, #4
    add r5, r0, #4
    mov r0, r5
    mov r0, r5
    ror r3, r2, #19 @ ror r3, r2, #19
    ror r3, r2, #19
    eor r5, r3, r2, ror #17 @ eor r3, r3, r2, ror #17
    eor r5, r3, r2, ror #17
    mov r3, r5
    mov r3, r5
    eor r5, r3, r2, lsr #10 @ eor r3, r3, r2, lsr #10
    eor r5, r3, r2, lsr #10
    mov r3, r5
    mov r3, r5
    ldr r2, [r8, #36] @ ldr r2, [r8, #36]
    ldr r2, [r8, #36]
    ldr r5, [r8] @ ldr r8, [r8]
    ldr r5, [r8]
    mov r8, r5
    mov r8, r5
    add r5, r2, r8 @ add r2, r2, r8
    add r5, r2, r8
    mov r2, r5
    mov r2, r5
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    ror r2, r4, #18 @ ror r2, r4, #18
    ror r2, r4, #18
    eor r5, r2, r4, ror #7 @ eor r2, r2, r4, ror #7
    eor r5, r2, r4, ror #7
    mov r2, r5
    mov r2, r5
    eor r5, r2, r4, lsr #3 @ eor r2, r2, r4, lsr #3
    eor r5, r2, r4, lsr #3
    mov r2, r5
    mov r2, r5
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    str r3, [r0, #60] @ str r3, [r0, #60]
    str r3, [r0, #60]
    cmp r0, r7 @ cmp r0, r7
    cmp r0, r7
    bne .L5 @ bne .L5
    bne .L5
    ldr r3, [sp, #304] @ ldr r3, [sp, #304]
    ldr r3, [sp, #304]
    str r3, [sp, #16] @ str r3, [sp, #16]
    str r3, [sp, #16]
    ldr r3, [sp, #308] @ ldr r3, [sp, #308]
    ldr r3, [sp, #308]
    str r3, [sp, #20] @ str r3, [sp, #20]
    str r3, [sp, #20]
    ldr r3, [sp, #312] @ ldr r3, [sp, #312]
    ldr r3, [sp, #312]
    str r3, [sp, #24] @ str r3, [sp, #24]
    str r3, [sp, #24]
    ldr r3, [sp, #316] @ ldr r3, [sp, #316]
    ldr r3, [sp, #316]
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    ldr r3, [sp, #320] @ ldr r3, [sp, #320]
    ldr r3, [sp, #320]
    str r3, [sp, #32] @ str r3, [sp, #32]
    str r3, [sp, #32]
    ldr r3, [sp, #324] @ ldr r3, [sp, #324]
    ldr r3, [sp, #324]
    str r3, [sp, #36] @ str r3, [sp, #36]
    str r3, [sp, #36]
    ldr r3, [sp, #328] @ ldr r3, [sp, #328]
    ldr r3, [sp, #328]
    str r3, [sp, #40] @ str r3, [sp, #40]
    str r3, [sp, #40]
    ldr r3, [sp, #332] @ ldr r3, [sp, #332]
    ldr r3, [sp, #332]
    str r3, [sp, #44] @ str r3, [sp, #44]
    str r3, [sp, #44]
    ldr r3, .L20 @ ldr r3, .L20
    ldr r3, .L20
    add sl, r3, #28 @ add sl, r3, #28
    add sl, r3, #28
    b .L7 @ b .L7
    b .L7
.L3:
    add r1, sp, #300 @ add r1, sp, #300
    add r1, sp, #300
    ldr r3, [sp, #12] @ ldr r3, [sp, #12]
    ldr r3, [sp, #12]
    add r0, sp, #332 @ add r0, sp, #332
    add r0, sp, #332
.L9:
    ldr r2, [r1, #4] @ ldr r2, [r1, #4]!
    ldr r2, [r1, #4]
    add r5, r1, #4 @ add r1, r1, #4
    add r5, r1, #4
    mov r1, r5
    mov r1, r5
    lsrs r4, r2, #24 @ lsrs r4, r2, #24
    lsrs r4, r2, #24
    strb r4, [r3] @ strb r4, [r3]
    strb r4, [r3]
    lsrs r4, r2, #16 @ lsrs r4, r2, #16
    lsrs r4, r2, #16
    strb r4, [r3, #1] @ strb r4, [r3, #1]
    strb r4, [r3, #1]
    lsrs r4, r2, #8 @ lsrs r4, r2, #8
    lsrs r4, r2, #8
    strb r4, [r3, #2] @ strb r4, [r3, #2]
    strb r4, [r3, #2]
    strb r2, [r3, #3] @ strb r2, [r3, #3]
    strb r2, [r3, #3]
    adds r5, r3, #4 @ adds r3, r3, #4
    adds r5, r3, #4
    mov r3, r5
    mov r3, r5
    cmp r1, r0 @ cmp r1, r0
    cmp r1, r0
    bne .L9 @ bne .L9
    bne .L9
    add r5, sp, #336 @ add sp, sp, #336
    add r5, sp, #336
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
    .align 2
.L20:
    .word .LANCHOR0
    .size sha256, .-sha256
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
.L23:
    b .L23 @ b .L23
    b .L23
    .size report_error, .-report_error
    .align 1
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
    sub r5, sp, #32 @ sub sp, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov r4, r2 @ mov r4, r2
    mov r4, r2
    mov r2, sp @ mov r2, sp
    mov r2, sp
    adr lr, .L1001 @ bl sha256
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b sha256
    b sha256
.L1001:
    ldrb r2, [sp] @ ldrb r2, [sp]
    ldrb r2, [sp]
    ldrb r3, [r4] @ ldrb r3, [r4]
    ldrb r3, [r4]
    cmp r2, r3 @ cmp r2, r3
    cmp r2, r3
    bne .L27 @ bne .L27
    bne .L27
    mov r3, sp @ mov r3, sp
    mov r3, sp
    mov r2, r4 @ mov r2, r4
    mov r2, r4
    add r4, sp, #31 @ add r4, sp, #31
    add r4, sp, #31
.L29:
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
    bne .L27 @ bne .L27
    bne .L27
    cmp r3, r4 @ cmp r3, r4
    cmp r3, r4
    bne .L29 @ bne .L29
    bne .L29
    adr lr, .L1002 @ bl execute_firmware
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b execute_firmware
    b execute_firmware
.L1002:
.L27:
    adr lr, .L1003 @ bl report_error
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b report_error
    b report_error
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
