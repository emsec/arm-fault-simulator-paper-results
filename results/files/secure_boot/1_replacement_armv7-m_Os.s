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
    @ args = 0, pretend = 0, frame = 328
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r6, r7, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r6, r7, r8, sb, sl, fp, lr}
    sub r5, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    ldr r7, .L16 @ ldr r7, .L16
    ldr r7, .L16
    sub r5, sp, #328 @ sub sp, sp, #328
    sub r5, sp, #328
    mov sp, r5
    mov sp, r5
    add r4, sp, #8 @ add r4, sp, #8
    add r4, sp, #8
    mov r6, r0 @ mov r6, r0
    mov r6, r0
    mov lr, r1 @ mov lr, r1
    mov lr, r1
    mov r8, r2 @ mov r8, r2
    mov r8, r2
    ldmia r7, {r0, r1, r2, r3} @ ldmia r7!, {r0, r1, r2, r3}
    ldmia r7, {r0, r1, r2, r3}
    add r5, r7, #16
    add r5, r7, #16
    mov r7, r5
    mov r7, r5
    stmia r4, {r0, r1, r2, r3} @ stmia r4!, {r0, r1, r2, r3}
    stmia r4, {r0, r1, r2, r3}
    add r5, r4, #16
    add r5, r4, #16
    mov r4, r5
    mov r4, r5
    ldm r7, {r0, r1, r2, r3} @ ldm r7, {r0, r1, r2, r3}
    ldm r7, {r0, r1, r2, r3}
    stm r4, {r0, r1, r2, r3} @ stm r4, {r0, r1, r2, r3}
    stm r4, {r0, r1, r2, r3}
    movs r0, #0 @ movs r0, #0
    movs r0, #0
    add r2, r7, #16 @ add r2, r7, #16
    add r2, r7, #16
    add r4, sp, #72 @ add r4, sp, #72
    add r4, sp, #72
    add r3, sp, #40 @ add r3, sp, #40
    add r3, sp, #40
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
.L2:
    cmp lr, r0 @ cmp lr, r0
    cmp lr, r0
    bls .L8 @ bls .L8
    bls .L8
    mov ip, #0 @ mov ip, #0
    mov ip, #0
    adds r7, r6, r0 @ adds r7, r6, r0
    adds r7, r6, r0
.L3:
    ldrb r2, [r7, #1] @ ldrb r2, [r7, #1]
    ldrb r2, [r7, #1]
    ldrb sb, [r7] @ ldrb sb, [r7]
    ldrb sb, [r7]
    lsls r5, r2, #16 @ lsls r2, r2, #16
    lsls r5, r2, #16
    mov r2, r5
    mov r2, r5
    orr r5, r2, sb, lsl #24 @ orr r2, r2, sb, lsl #24
    orr r5, r2, sb, lsl #24
    mov r2, r5
    mov r2, r5
    ldrb sb, [r7, #3] @ ldrb sb, [r7, #3]
    ldrb sb, [r7, #3]
    adds r5, r7, #4 @ adds r7, r7, #4
    adds r5, r7, #4
    mov r7, r5
    mov r7, r5
    orr r5, r2, sb @ orr r2, r2, sb
    orr r5, r2, sb
    mov r2, r5
    mov r2, r5
    ldrb sb, [r7, #-2] @ ldrb sb, [r7, #-2]
    ldrb sb, [r7, #-2]
    orr r5, r2, sb, lsl #8 @ orr r2, r2, sb, lsl #8
    orr r5, r2, sb, lsl #8
    mov r2, r5
    mov r2, r5
    str r2, [r4, ip, lsl #2] @ str r2, [r4, ip, lsl #2]
    str r2, [r4, ip, lsl #2]
    add r5, ip, #1 @ add ip, ip, #1
    add r5, ip, #1
    mov ip, r5
    mov ip, r5
    cmp ip, #16 @ cmp ip, #16
    cmp ip, #16
    bne .L3 @ bne .L3
    bne .L3
    mov r7, r4 @ mov r7, r4
    mov r7, r4
.L4:
    mov sl, r7 @ mov sl, r7
    mov sl, r7
    ldr ip, [r7, #56] @ ldr ip, [r7, #56]
    ldr ip, [r7, #56]
    ldr sb, [r7, #4] @ ldr sb, [r7, #4]!
    ldr sb, [r7, #4]
    add r5, r7, #4 @ add r7, r7, #4
    add r5, r7, #4
    mov r7, r5
    mov r7, r5
    ror r2, ip, #19 @ ror r2, ip, #19
    ror r2, ip, #19
    eor r5, r2, ip, ror #17 @ eor r2, r2, ip, ror #17
    eor r5, r2, ip, ror #17
    mov r2, r5
    mov r2, r5
    eor r5, r2, ip, lsr #10 @ eor r2, r2, ip, lsr #10
    eor r5, r2, ip, lsr #10
    mov r2, r5
    mov r2, r5
    ldr ip, [sl, #36] @ ldr ip, [sl, #36]
    ldr ip, [sl, #36]
    ldr r5, [sl] @ ldr sl, [sl]
    ldr r5, [sl]
    mov sl, r5
    mov sl, r5
    add r5, ip, sl @ add ip, ip, sl
    add r5, ip, sl
    mov ip, r5
    mov ip, r5
    add r5, r2, ip @ add r2, r2, ip
    add r5, r2, ip
    mov r2, r5
    mov r2, r5
    ror ip, sb, #18 @ ror ip, sb, #18
    ror ip, sb, #18
    eor r5, ip, sb, ror #7 @ eor ip, ip, sb, ror #7
    eor r5, ip, sb, ror #7
    mov ip, r5
    mov ip, r5
    eor r5, ip, sb, lsr #3 @ eor ip, ip, sb, lsr #3
    eor r5, ip, sb, lsr #3
    mov ip, r5
    mov ip, r5
    add r5, r2, ip @ add r2, r2, ip
    add r5, r2, ip
    mov r2, r5
    mov r2, r5
    str r2, [r7, #60] @ str r2, [r7, #60]
    str r2, [r7, #60]
    add r2, sp, #264 @ add r2, sp, #264
    add r2, sp, #264
    cmp r2, r7 @ cmp r2, r7
    cmp r2, r7
    bne .L4 @ bne .L4
    bne .L4
    mov ip, #0 @ mov ip, #0
    mov ip, #0
    ldr r2, [sp, #8] @ ldr r2, [sp, #8]
    ldr r2, [sp, #8]
    str r2, [r3] @ str r2, [r3]
    str r2, [r3]
    ldr r2, [sp, #12] @ ldr r2, [sp, #12]
    ldr r2, [sp, #12]
    str r2, [r3, #4] @ str r2, [r3, #4]
    str r2, [r3, #4]
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    str r2, [r3, #8] @ str r2, [r3, #8]
    str r2, [r3, #8]
    ldr r2, [sp, #20] @ ldr r2, [sp, #20]
    ldr r2, [sp, #20]
    str r2, [r3, #12] @ str r2, [r3, #12]
    str r2, [r3, #12]
    ldr r2, [sp, #24] @ ldr r2, [sp, #24]
    ldr r2, [sp, #24]
    str r2, [r3, #16] @ str r2, [r3, #16]
    str r2, [r3, #16]
    ldr r2, [sp, #28] @ ldr r2, [sp, #28]
    ldr r2, [sp, #28]
    str r2, [r3, #20] @ str r2, [r3, #20]
    str r2, [r3, #20]
    ldr r2, [sp, #32] @ ldr r2, [sp, #32]
    ldr r2, [sp, #32]
    str r2, [r3, #24] @ str r2, [r3, #24]
    str r2, [r3, #24]
    ldr r2, [sp, #36] @ ldr r2, [sp, #36]
    ldr r2, [sp, #36]
    str r2, [r3, #28] @ str r2, [r3, #28]
    str r2, [r3, #28]
.L6:
    ldr sb, [r3, #16] @ ldr sb, [r3, #16]
    ldr sb, [r3, #16]
    ldr r2, [r3, #24] @ ldr r2, [r3, #24]
    ldr r2, [r3, #24]
    ldr r7, [r3, #20] @ ldr r7, [r3, #20]
    ldr r7, [r3, #20]
    bic r5, r2, sb @ bic r2, r2, sb
    bic r5, r2, sb
    mov r2, r5
    mov r2, r5
    and r5, sb, r7 @ and r7, sb, r7
    and r5, sb, r7
    mov r7, r5
    mov r7, r5
    eors r5, r7, r2 @ eors r7, r7, r2
    eors r5, r7, r2
    mov r7, r5
    mov r7, r5
    ror r2, sb, #11 @ ror r2, sb, #11
    ror r2, sb, #11
    eor r5, r2, sb, ror #6 @ eor r2, r2, sb, ror #6
    eor r5, r2, sb, ror #6
    mov r2, r5
    mov r2, r5
    eor r5, r2, sb, ror #25 @ eor r2, r2, sb, ror #25
    eor r5, r2, sb, ror #25
    mov r2, r5
    mov r2, r5
    add r5, r7, r2 @ add r7, r7, r2
    add r5, r7, r2
    mov r7, r5
    mov r7, r5
    ldr r2, [r3, #28] @ ldr r2, [r3, #28]
    ldr r2, [r3, #28]
    ldr r1, [r3, #8] @ ldr r1, [r3, #8]
    ldr r1, [r3, #8]
    add r5, r7, r2 @ add r7, r7, r2
    add r5, r7, r2
    mov r7, r5
    mov r7, r5
    ldr r2, [r4, ip, lsl #2] @ ldr r2, [r4, ip, lsl #2]
    ldr r2, [r4, ip, lsl #2]
    ldm r3, {sl, fp} @ ldm r3, {sl, fp}
    ldm r3, {sl, fp}
    add r5, r7, r2 @ add r7, r7, r2
    add r5, r7, r2
    mov r7, r5
    mov r7, r5
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    eor sb, r1, fp @ eor sb, r1, fp
    eor sb, r1, fp
    ldr r5, [r2, ip, lsl #2] @ ldr r2, [r2, ip, lsl #2]
    ldr r5, [r2, ip, lsl #2]
    mov r2, r5
    mov r2, r5
    and r5, sb, sl @ and sb, sb, sl
    and r5, sb, sl
    mov sb, r5
    mov sb, r5
    add r5, r7, r2 @ add r7, r7, r2
    add r5, r7, r2
    mov r7, r5
    mov r7, r5
    ror r2, sl, #13 @ ror r2, sl, #13
    ror r2, sl, #13
    eor r5, r2, sl, ror #2 @ eor r2, r2, sl, ror #2
    eor r5, r2, sl, ror #2
    mov r2, r5
    mov r2, r5
    and r5, fp, r1 @ and fp, fp, r1
    and r5, fp, r1
    mov fp, r5
    mov fp, r5
    eor r5, r2, sl, ror #22 @ eor r2, r2, sl, ror #22
    eor r5, r2, sl, ror #22
    mov r2, r5
    mov r2, r5
    eor r5, sb, fp @ eor sb, sb, fp
    eor r5, sb, fp
    mov sb, r5
    mov sb, r5
    add r5, r2, sb @ add r2, r2, sb
    add r5, r2, sb
    mov r2, r5
    mov r2, r5
    mov sb, #7 @ mov sb, #7
    mov sb, #7
    add sl, sp, #68 @ add sl, sp, #68
    add sl, sp, #68
.L5:
    ldr fp, [sl, #-4] @ ldr fp, [sl, #-4]!
    ldr fp, [sl, #-4]
    add r5, sl, #-4 @ add sl, sl, #-4
    add r5, sl, #-4
    mov sl, r5
    mov sl, r5
    subs r5, sb, #1 @ subs sb, sb, #1
    subs r5, sb, #1
    mov sb, r5
    mov sb, r5
    str fp, [sl, #4] @ str fp, [sl, #4]
    str fp, [sl, #4]
    bne .L5 @ bne .L5
    bne .L5
    add r5, r2, r7 @ add r2, r2, r7
    add r5, r2, r7
    mov r2, r5
    mov r2, r5
    str r2, [r3] @ str r2, [r3]
    str r2, [r3]
    ldr r2, [r3, #16] @ ldr r2, [r3, #16]
    ldr r2, [r3, #16]
    add r5, ip, #1 @ add ip, ip, #1
    add r5, ip, #1
    mov ip, r5
    mov ip, r5
    add r5, r2, r7 @ add r2, r2, r7
    add r5, r2, r7
    mov r2, r5
    mov r2, r5
    cmp ip, #64 @ cmp ip, #64
    cmp ip, #64
    str r2, [r3, #16] @ str r2, [r3, #16]
    str r2, [r3, #16]
    bne .L6 @ bne .L6
    bne .L6
.L7:
    add r2, sp, #8 @ add r2, sp, #8
    add r2, sp, #8
    ldr r5, [r2, sb, lsl #2] @ ldr r2, [r2, sb, lsl #2]
    ldr r5, [r2, sb, lsl #2]
    mov r2, r5
    mov r2, r5
    ldr r7, [r3, sb, lsl #2] @ ldr r7, [r3, sb, lsl #2]
    ldr r7, [r3, sb, lsl #2]
    add r1, sp, #8 @ add r1, sp, #8
    add r1, sp, #8
    add r5, r2, r7 @ add r2, r2, r7
    add r5, r2, r7
    mov r2, r5
    mov r2, r5
    str r2, [r1, sb, lsl #2] @ str r2, [r1, sb, lsl #2]
    str r2, [r1, sb, lsl #2]
    add r5, sb, #1 @ add sb, sb, #1
    add r5, sb, #1
    mov sb, r5
    mov sb, r5
    cmp sb, #8 @ cmp sb, #8
    cmp sb, #8
    bne .L7 @ bne .L7
    bne .L7
    adds r5, r0, #64 @ adds r0, r0, #64
    adds r5, r0, #64
    mov r0, r5
    mov r0, r5
    b .L2 @ b .L2
    b .L2
.L8:
    movs r3, #0 @ movs r3, #0
    movs r3, #0
.L9:
    add r2, sp, #8 @ add r2, sp, #8
    add r2, sp, #8
    ldr r5, [r2, r3, lsl #2] @ ldr r2, [r2, r3, lsl #2]
    ldr r5, [r2, r3, lsl #2]
    mov r2, r5
    mov r2, r5
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    lsrs r1, r2, #24 @ lsrs r1, r2, #24
    lsrs r1, r2, #24
    strb r1, [r8] @ strb r1, [r8]
    strb r1, [r8]
    lsrs r1, r2, #16 @ lsrs r1, r2, #16
    lsrs r1, r2, #16
    strb r1, [r8, #1] @ strb r1, [r8, #1]
    strb r1, [r8, #1]
    cmp r3, #8 @ cmp r3, #8
    cmp r3, #8
    lsr r1, r2, #8 @ lsr r1, r2, #8
    lsr r1, r2, #8
    strb r1, [r8, #2] @ strb r1, [r8, #2]
    strb r1, [r8, #2]
    strb r2, [r8, #3] @ strb r2, [r8, #3]
    strb r2, [r8, #3]
    add r5, r8, #4 @ add r8, r8, #4
    add r5, r8, #4
    mov r8, r5
    mov r8, r5
    bne .L9 @ bne .L9
    bne .L9
    add r5, sp, #328 @ add sp, sp, #328
    add r5, sp, #328
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
.L17:
    .align 2
.L16:
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
.L19:
    b .L19 @ b .L19
    b .L19
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
    movs r3, #0 @ movs r3, #0
    movs r3, #0
.L23:
    ldrb r1, [sp, r3] @ ldrb r1, [sp, r3]
    ldrb r1, [sp, r3]
    ldrb r2, [r4, r3] @ ldrb r2, [r4, r3]
    ldrb r2, [r4, r3]
    cmp r1, r2 @ cmp r1, r2
    cmp r1, r2
    beq .L22 @ beq .L22
    beq .L22
    adr lr, .L1002 @ bl report_error
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b report_error
    b report_error
.L1002:
.L22:
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #32 @ cmp r3, #32
    cmp r3, #32
    bne .L23 @ bne .L23
    bne .L23
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
