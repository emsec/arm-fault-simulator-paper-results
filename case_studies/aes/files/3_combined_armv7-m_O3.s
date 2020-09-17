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
    .type key_expansion_check_flow, %function
key_expansion_check_flow:
    @ check gsr against sig of AES_ECB_encrypt
    ldr r6, =#0x144cadc3 @ ldr r6, =#0x144cadc3
    ldr r6, =#0x144cadc3
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x23a7711a @ ldr r5, =#0x23a7711a
    ldr r5, =#0x23a7711a
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
key_expansion:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    adds r3, r1, #4 @ adds r3, r1, #4
    adds r3, r1, #4
    cmp r0, r3 @ cmp r0, r3
    cmp r0, r3
    stmdb sp, {r4, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r8, sb, sl, fp, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    @ prepare gsr for branch target
    ldr r6, =#0x29fa5e2e @ ldr r6, =#0x29fa5e2e
    ldr r6, =#0x29fa5e2e
    bcs .L7 @ bcs .L7
    bcs .L7
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of key_expansion_check_flow
    ldr r6, =#0x29fa5e2e @ ldr r6, =#0x29fa5e2e
    ldr r6, =#0x29fa5e2e
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xa5d2f34 @ ldr r5, =#0xa5d2f34
    ldr r5, =#0xa5d2f34
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    adds r3, r0, #4 @ adds r3, r0, #4
    adds r3, r0, #4
    cmp r1, r3 @ cmp r1, r3
    cmp r1, r3
    @ only predecessor for .L2, no D reg usage
    bcc .L2 @ bcc .L2
    bcc .L2
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L7:
    @ check gsr against sig of .L2000
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xe2273927 @ ldr r6, =#0xe2273927
    ldr r6, =#0xe2273927
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xe87a1613 @ ldr r5, =#0xe87a1613
    ldr r5, =#0xe87a1613
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
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
    @ prepare D reg for going on
    ldr r6, =#0x1fbbab94 @ ldr r6, =#0x1fbbab94
    ldr r6, =#0x1fbbab94
.L4:
    @ check gsr against sig of .L2
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xac68a228 @ ldr r6, =#0xac68a228
    ldr r6, =#0xac68a228
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x5ba91faf @ ldr r5, =#0x5ba91faf
    ldr r5, =#0x5ba91faf
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    movs r2, #4 @ movs r2, #4
    movs r2, #4
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    ldrb ip, [r0, #15] @ ldrb ip, [r0, #15]
    ldrb ip, [r0, #15]
    ldrb lr, [r0, #14] @ ldrb lr, [r0, #14]
    ldrb lr, [r0, #14]
    ldrb r4, [r0, #13] @ ldrb r4, [r0, #13]
    ldrb r4, [r0, #13]
    ldrb r1, [r0, #12] @ ldrb r1, [r0, #12]
    ldrb r1, [r0, #12]
    ldr r0, .L11 @ ldr r0, .L11
    ldr r0, .L11
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L6:
    @ check gsr against sig of .L4
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xbfeac0d7 @ ldr r6, =#0xbfeac0d7
    ldr r6, =#0xbfeac0d7
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xe443df78 @ ldr r5, =#0xe443df78
    ldr r5, =#0xe443df78
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    tst r2, #3 @ tst r2, #3
    tst r2, #3
    @ prepare gsr for branch target
    ldr r6, =#0xa60b8142 @ ldr r6, =#0xa60b8142
    ldr r6, =#0xa60b8142
    bne .L5 @ bne .L5
    bne .L5
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L6
    ldr r6, =#0xa60b8142 @ ldr r6, =#0xa60b8142
    ldr r6, =#0xa60b8142
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x42485e3a @ ldr r5, =#0x42485e3a
    ldr r5, =#0x42485e3a
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    add r8, r0, r2, lsr #2 @ add r8, r0, r2, lsr #2
    add r8, r0, r2, lsr #2
    ldrb sb, [r0, r4] @ ldrb sb, [r0, r4]
    ldrb sb, [r0, r4]
    ldrb r5, [r8, #256] @ ldrb r8, [r8, #256]
    ldrb r5, [r8, #256]
    mov r8, r5
    mov r8, r5
    ldrb r4, [r0, lr] @ ldrb r4, [r0, lr]
    ldrb r4, [r0, lr]
    ldrb lr, [r0, ip] @ ldrb lr, [r0, ip]
    ldrb lr, [r0, ip]
    ldrb ip, [r0, r1] @ ldrb ip, [r0, r1]
    ldrb ip, [r0, r1]
    eor r1, sb, r8 @ eor r1, sb, r8
    eor r1, sb, r8
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L5:
    @ check gsr against sig of .L2001
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xd710d845 @ ldr r6, =#0xd710d845
    ldr r6, =#0xd710d845
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x9558867f @ ldr r5, =#0x9558867f
    ldr r5, =#0x9558867f
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldrb fp, [r3] @ ldrb fp, [r3]
    ldrb fp, [r3]
    ldrb sl, [r3, #1] @ ldrb sl, [r3, #1]
    ldrb sl, [r3, #1]
    ldrb sb, [r3, #2] @ ldrb sb, [r3, #2]
    ldrb sb, [r3, #2]
    ldrb r8, [r3, #3] @ ldrb r8, [r3, #3]
    ldrb r8, [r3, #3]
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    eor r5, r1, fp @ eor r1, r1, fp
    eor r5, r1, fp
    mov r1, r5
    mov r1, r5
    eor r5, r4, sl @ eor r4, r4, sl
    eor r5, r4, sl
    mov r4, r5
    mov r4, r5
    eor r5, lr, sb @ eor lr, lr, sb
    eor r5, lr, sb
    mov lr, r5
    mov lr, r5
    eor r5, ip, r8 @ eor ip, ip, r8
    eor r5, ip, r8
    mov ip, r5
    mov ip, r5
    cmp r2, #44 @ cmp r2, #44
    cmp r2, #44
    strb r1, [r3, #16] @ strb r1, [r3, #16]
    strb r1, [r3, #16]
    strb r4, [r3, #17] @ strb r4, [r3, #17]
    strb r4, [r3, #17]
    strb lr, [r3, #18] @ strb lr, [r3, #18]
    strb lr, [r3, #18]
    strb ip, [r3, #19] @ strb ip, [r3, #19]
    strb ip, [r3, #19]
    add r5, r3, #4 @ add r3, r3, #4
    add r5, r3, #4
    mov r3, r5
    mov r3, r5
    @ prepare gsr for branch target
    ldr r6, =#0xcef199d0 @ ldr r6, =#0xcef199d0
    ldr r6, =#0xcef199d0
    bne .L6 @ bne .L6
    bne .L6
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L5
    ldr r6, =#0x62703285 @ ldr r6, =#0x62703285
    ldr r6, =#0x62703285
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xf728b4fa @ ldr r5, =#0xf728b4fa
    ldr r5, =#0xf728b4fa
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    @ return target always has only one predecessor, no D reg usage
    add r5, sp, #24 @ ldmia sp!, {r4, r8, sb, sl, fp, pc}
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #24
    sub r5, sp, #24
    ldmia r5, {r4, r8, sb, sl, fp, pc}
    ldmia r5, {r4, r8, sb, sl, fp, pc}
.L2:
    @ check gsr against sig of .L2000
    ldr r6, =#0xfd9c92b3 @ ldr r6, =#0xfd9c92b3
    ldr r6, =#0xfd9c92b3
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xf7c1bd87 @ ldr r5, =#0xf7c1bd87
    ldr r5, =#0xf7c1bd87
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L4 @ b .L4
    b .L4
.L12:
    .align 2
.L11:
    .word .LANCHOR0
    .size key_expansion_check_flow, .-key_expansion_check_flow
    .ltorg
    .align 1
    .p2align 2,,3
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type cipher_check_flow, %function
cipher_check_flow:
    @ check gsr against sig of .L2008
    ldr r6, =#0x55421516 @ ldr r6, =#0x55421516
    ldr r6, =#0x55421516
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x81332876 @ ldr r5, =#0x81332876
    ldr r5, =#0x81332876
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
cipher:
    @ args = 0, pretend = 0, frame = 96
    @ frame_needed = 0, uses_anonymous_args = 0
    add r2, r0, #8 @ add r2, r0, #8
    add r2, r0, #8
    mov r3, r1 @ mov r3, r1
    mov r3, r1
    stmdb sp, {r4, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r8, sb, sl, fp, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    mov fp, r0 @ mov fp, r0
    mov fp, r0
    mov r0, r2 @ mov r0, r2
    mov r0, r2
    adds r5, r3, #8 @ adds r3, r3, #8
    adds r5, r3, #8
    mov r3, r5
    mov r3, r5
    cmp r1, r0 @ cmp r1, r0
    cmp r1, r0
    bcs .L1000 @ it cc
    cmp fp, r3 @ cmp fp, r3
    cmp fp, r3
.L1000:
    sub r5, sp, #96 @ sub sp, sp, #96
    sub r5, sp, #96
    mov sp, r5
    mov sp, r5
    str r1, [sp, #88] @ str r1, [sp, #88]
    str r1, [sp, #88]
    str r2, [sp, #92] @ str r2, [sp, #92]
    str r2, [sp, #92]
    @ prepare gsr for branch target
    ldr r6, =#0x3d1ce14 @ ldr r6, =#0x3d1ce14
    ldr r6, =#0x3d1ce14
    bcc .L14 @ bcc .L14
    bcc .L14
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of cipher_check_flow
    ldr r6, =#0x3d1ce14 @ ldr r6, =#0x3d1ce14
    ldr r6, =#0x3d1ce14
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x82e2e662 @ ldr r5, =#0x82e2e662
    ldr r5, =#0x82e2e662
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    orr r3, r1, fp @ orr r3, r1, fp
    orr r3, r1, fp
    mov r0, r1 @ mov r0, r1
    mov r0, r1
    lsls r1, r3, #29 @ lsls r1, r3, #29
    lsls r1, r3, #29
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L14 @ bne .L14
    bne .L14
    @ only predecessor for .L2004, no D reg usage
.L2004:
    @ check gsr against sig of .L2003
    ldr r6, =#0xfe872787 @ ldr r6, =#0xfe872787
    ldr r6, =#0xfe872787
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x7c65c1e5 @ ldr r5, =#0x7c65c1e5
    ldr r5, =#0x7c65c1e5
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r1, [r0] @ ldr r1, [r0]
    ldr r1, [r0]
    ldr r2, [fp] @ ldr r2, [fp]
    ldr r2, [fp]
    ldr r3, [r0, #4] @ ldr r3, [r0, #4]
    ldr r3, [r0, #4]
    eors r5, r2, r1 @ eors r2, r2, r1
    eors r5, r2, r1
    mov r2, r5
    mov r2, r5
    ldr r1, [fp, #4] @ ldr r1, [fp, #4]
    ldr r1, [fp, #4]
    str r2, [fp] @ str r2, [fp]
    str r2, [fp]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    str r3, [fp, #4] @ str r3, [fp, #4]
    str r3, [fp, #4]
    ldr r2, [r0, #8] @ ldr r2, [r0, #8]
    ldr r2, [r0, #8]
    ldr r1, [fp, #8] @ ldr r1, [fp, #8]
    ldr r1, [fp, #8]
    ldr r3, [r0, #12] @ ldr r3, [r0, #12]
    ldr r3, [r0, #12]
    eors r5, r2, r1 @ eors r2, r2, r1
    eors r5, r2, r1
    mov r2, r5
    mov r2, r5
    ldr r1, [fp, #12] @ ldr r1, [fp, #12]
    ldr r1, [fp, #12]
    ldr ip, [sp, #88] @ ldr ip, [sp, #88]
    ldr ip, [sp, #88]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    str r2, [fp, #8] @ str r2, [fp, #8]
    str r2, [fp, #8]
    str r3, [fp, #12] @ str r3, [fp, #12]
    str r3, [fp, #12]
    @ prepare D reg for going on
    ldr r6, =#0x1efaae5b @ ldr r6, =#0x1efaae5b
    ldr r6, =#0x1efaae5b
.L15:
    @ check gsr against sig of .L14
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xa0962312 @ ldr r6, =#0xa0962312
    ldr r6, =#0xa0962312
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xc2094cac @ ldr r5, =#0xc2094cac
    ldr r5, =#0xc2094cac
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldrb r4, [fp, #3] @ ldrb r4, [fp, #3]
    ldrb r4, [fp, #3]
    ldrb r3, [fp, #8] @ ldrb r3, [fp, #8]
    ldrb r3, [fp, #8]
    str r4, [sp, #36] @ str r4, [sp, #36]
    str r4, [sp, #36]
    ldrb r4, [fp, #7] @ ldrb r4, [fp, #7]
    ldrb r4, [fp, #7]
    str r3, [sp] @ str r3, [sp]
    str r3, [sp]
    str r4, [sp, #40] @ str r4, [sp, #40]
    str r4, [sp, #40]
    ldrb r4, [fp, #11] @ ldrb r4, [fp, #11]
    ldrb r4, [fp, #11]
    ldrb r3, [fp, #5] @ ldrb r3, [fp, #5]
    ldrb r3, [fp, #5]
    str r4, [sp, #4] @ str r4, [sp, #4]
    str r4, [sp, #4]
    ldrb r4, [fp, #15] @ ldrb r4, [fp, #15]
    ldrb r4, [fp, #15]
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    ldrb r3, [fp, #9] @ ldrb r3, [fp, #9]
    ldrb r3, [fp, #9]
    str r4, [sp, #8] @ str r4, [sp, #8]
    str r4, [sp, #8]
    mov r4, ip @ mov r4, ip
    mov r4, ip
    mov r0, r3 @ mov r0, r3
    mov r0, r3
    ldrb r2, [fp, #6] @ ldrb r2, [fp, #6]
    ldrb r2, [fp, #6]
    ldrb sl, [fp] @ ldrb sl, [fp]
    ldrb sl, [fp]
    ldrb sb, [fp, #1] @ ldrb sb, [fp, #1]
    ldrb sb, [fp, #1]
    ldrb r8, [fp, #2] @ ldrb r8, [fp, #2]
    ldrb r8, [fp, #2]
    ldrb r3, [fp, #13] @ ldrb r3, [fp, #13]
    ldrb r3, [fp, #13]
    str r2, [sp, #32] @ str r2, [sp, #32]
    str r2, [sp, #32]
    ldrb r2, [fp, #10] @ ldrb r2, [fp, #10]
    ldrb r2, [fp, #10]
    adds r5, r4, #144 @ adds r4, r4, #144
    adds r5, r4, #144
    mov r4, r5
    mov r4, r5
    str sl, [sp, #12] @ str sl, [sp, #12]
    str sl, [sp, #12]
    str r2, [sp, #44] @ str r2, [sp, #44]
    str r2, [sp, #44]
    str r4, [sp, #84] @ str r4, [sp, #84]
    str r4, [sp, #84]
    str sb, [sp, #48] @ str sb, [sp, #48]
    str sb, [sp, #48]
    str r8, [sp, #52] @ str r8, [sp, #52]
    str r8, [sp, #52]
    ldrb lr, [fp, #4] @ ldrb lr, [fp, #4]
    ldrb lr, [fp, #4]
    ldrb r1, [fp, #12] @ ldrb r1, [fp, #12]
    ldrb r1, [fp, #12]
    ldrb r2, [fp, #14] @ ldrb r2, [fp, #14]
    ldrb r2, [fp, #14]
    mov sl, ip @ mov sl, ip
    mov sl, ip
    ldr r4, [sp] @ ldr r4, [sp]
    ldr r4, [sp]
    mov r8, r0 @ mov r8, r0
    mov r8, r0
    ldr sb, [sp, #4] @ ldr sb, [sp, #4]
    ldr sb, [sp, #4]
    str r3, [sp, #56] @ str r3, [sp, #56]
    str r3, [sp, #56]
    ldr r0, [sp, #8] @ ldr r0, [sp, #8]
    ldr r0, [sp, #8]
    ldr ip, [sp, #12] @ ldr ip, [sp, #12]
    ldr ip, [sp, #12]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L16:
    @ check gsr against sig of .L15
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x21ee4a2e @ ldr r6, =#0x21ee4a2e
    ldr r6, =#0x21ee4a2e
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xe3e70682 @ ldr r5, =#0xe3e70682
    ldr r5, =#0xe3e70682
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    add r5, sl, #16 @ add sl, sl, #16
    add r5, sl, #16
    mov sl, r5
    mov sl, r5
    ldrb r5, [r3, ip] @ ldrb ip, [r3, ip]
    ldrb r5, [r3, ip]
    mov ip, r5
    mov ip, r5
    ldrb r5, [r3, lr] @ ldrb r3, [r3, lr]
    ldrb r5, [r3, lr]
    mov r3, r5
    mov r3, r5
    str r3, [sp] @ str r3, [sp]
    str r3, [sp]
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    ldrb r5, [r3, r1] @ ldrb r1, [r3, r1]
    ldrb r5, [r3, r1]
    mov r1, r5
    mov r1, r5
    ldrb r5, [r3, r4] @ ldrb r4, [r3, r4]
    ldrb r5, [r3, r4]
    mov r4, r5
    mov r4, r5
    str r1, [sp, #8] @ str r1, [sp, #8]
    str r1, [sp, #8]
    ldr r1, [sp, #48] @ ldr r1, [sp, #48]
    ldr r1, [sp, #48]
    str r4, [sp, #4] @ str r4, [sp, #4]
    str r4, [sp, #4]
    ldrb r5, [r3, r1] @ ldrb r3, [r3, r1]
    ldrb r5, [r3, r1]
    mov r3, r5
    mov r3, r5
    ldr r1, .L33 @ ldr r1, .L33
    ldr r1, .L33
    str r3, [sp, #12] @ str r3, [sp, #12]
    str r3, [sp, #12]
    ldr r3, [sp, #28] @ ldr r3, [sp, #28]
    ldr r3, [sp, #28]
    ldrb lr, [r1, r8] @ ldrb lr, [r1, r8]
    ldrb lr, [r1, r8]
    ldrb r4, [r1, r3] @ ldrb r4, [r1, r3]
    ldrb r4, [r1, r3]
    ldr r1, [sp, #56] @ ldr r1, [sp, #56]
    ldr r1, [sp, #56]
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    str lr, [sp, #16] @ str lr, [sp, #16]
    str lr, [sp, #16]
    ldrb lr, [r3, r1] @ ldrb lr, [r3, r1]
    ldrb lr, [r3, r1]
    ldr r1, [sp, #52] @ ldr r1, [sp, #52]
    ldr r1, [sp, #52]
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    str lr, [sp, #20] @ str lr, [sp, #20]
    str lr, [sp, #20]
    ldrb lr, [r3, r1] @ ldrb lr, [r3, r1]
    ldrb lr, [r3, r1]
    ldr r3, [sp, #32] @ ldr r3, [sp, #32]
    ldr r3, [sp, #32]
    ldr r1, .L33 @ ldr r1, .L33
    ldr r1, .L33
    str lr, [sp, #24] @ str lr, [sp, #24]
    str lr, [sp, #24]
    ldrb lr, [r1, r3] @ ldrb lr, [r1, r3]
    ldrb lr, [r1, r3]
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    str lr, [sp, #28] @ str lr, [sp, #28]
    str lr, [sp, #28]
    ldrb lr, [r3, r2] @ ldrb lr, [r3, r2]
    ldrb lr, [r3, r2]
    mov r2, r3 @ mov r2, r3
    mov r2, r3
    ldr r1, [sp, #44] @ ldr r1, [sp, #44]
    ldr r1, [sp, #44]
    str lr, [sp, #32] @ str lr, [sp, #32]
    str lr, [sp, #32]
    ldrb r8, [r3, r1] @ ldrb r8, [r3, r1]
    ldrb r8, [r3, r1]
    ldr r3, [sp, #36] @ ldr r3, [sp, #36]
    ldr r3, [sp, #36]
    ldr r1, [sp, #40] @ ldr r1, [sp, #40]
    ldr r1, [sp, #40]
    ldrb lr, [r2, r3] @ ldrb lr, [r2, r3]
    ldrb lr, [r2, r3]
    ldr r3, .L33 @ ldr r3, .L33
    ldr r3, .L33
    str lr, [sp, #36] @ str lr, [sp, #36]
    str lr, [sp, #36]
    ldr r2, .L33 @ ldr r2, .L33
    ldr r2, .L33
    ldrb lr, [r3, r1] @ ldrb lr, [r3, r1]
    ldrb lr, [r3, r1]
    ldr r1, .L33 @ ldr r1, .L33
    ldr r1, .L33
    str lr, [sp, #40] @ str lr, [sp, #40]
    str lr, [sp, #40]
    ldrb r5, [r2, r0] @ ldrb r0, [r2, r0]
    ldrb r5, [r2, r0]
    mov r0, r5
    mov r0, r5
    ldrb lr, [r1, sb] @ ldrb lr, [r1, sb]
    ldrb lr, [r1, sb]
    ldr r1, [sp] @ ldr r1, [sp]
    ldr r1, [sp]
    eor sb, ip, r0 @ eor sb, ip, r0
    eor sb, ip, r0
    str sb, [sp, #56] @ str sb, [sp, #56]
    str sb, [sp, #56]
    mov sb, r1 @ mov sb, r1
    mov sb, r1
    ldr r1, [sp, #16] @ ldr r1, [sp, #16]
    ldr r1, [sp, #16]
    eor r3, ip, r4 @ eor r3, ip, r4
    eor r3, ip, r4
    eor r2, r4, r8 @ eor r2, r4, r8
    eor r2, r4, r8
    str r2, [sp, #52] @ str r2, [sp, #52]
    str r2, [sp, #52]
    eor r5, sb, r1 @ eor r1, sb, r1
    eor r5, sb, r1
    mov r1, r5
    mov r1, r5
    lsrs r2, r3, #7 @ lsrs r2, r3, #7
    lsrs r2, r3, #7
    str r1, [sp, #68] @ str r1, [sp, #68]
    str r1, [sp, #68]
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r1, r2 @ add r1, r1, r2
    add r5, r1, r2
    mov r1, r5
    mov r1, r5
    ldr r2, [sp, #56] @ ldr r2, [sp, #56]
    ldr r2, [sp, #56]
    str lr, [sp, #44] @ str lr, [sp, #44]
    str lr, [sp, #44]
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    str r2, [sp, #76] @ str r2, [sp, #76]
    str r2, [sp, #76]
    ldr r2, [sp, #32] @ ldr r2, [sp, #32]
    ldr r2, [sp, #32]
    eor lr, r8, r0 @ eor lr, r8, r0
    eor lr, r8, r0
    mov sb, r2 @ mov sb, r2
    mov sb, r2
    ldr r2, [sp, #36] @ ldr r2, [sp, #36]
    ldr r2, [sp, #36]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, sb, r2 @ eor sb, sb, r2
    eor r5, sb, r2
    mov sb, r5
    mov sb, r5
    ldr r2, [sp] @ ldr r2, [sp]
    ldr r2, [sp]
    str sb, [sp, #48] @ str sb, [sp, #48]
    str sb, [sp, #48]
    mov sb, r2 @ mov sb, r2
    mov sb, r2
    ldr r2, [sp, #36] @ ldr r2, [sp, #36]
    ldr r2, [sp, #36]
    eor r5, r1, r3, lsl #1 @ eor r1, r1, r3, lsl #1
    eor r5, r1, r3, lsl #1
    mov r1, r5
    mov r1, r5
    eor r5, sb, r2 @ eor sb, sb, r2
    eor r5, sb, r2
    mov sb, r5
    mov sb, r5
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    str sb, [sp, #64] @ str sb, [sp, #64]
    str sb, [sp, #64]
    mov sb, r2 @ mov sb, r2
    mov sb, r2
    ldr r2, [sp, #32] @ ldr r2, [sp, #32]
    ldr r2, [sp, #32]
    eor r5, lr, r3 @ eor r3, lr, r3
    eor r5, lr, r3
    mov r3, r5
    mov r3, r5
    eor r5, sb, r2 @ eor sb, sb, r2
    eor r5, sb, r2
    mov sb, r5
    mov sb, r5
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    eors r5, r0, r3 @ eors r0, r0, r3
    eors r5, r0, r3
    mov r0, r5
    mov r0, r5
    eors r5, r4, r3 @ eors r4, r4, r3
    eors r5, r4, r3
    mov r4, r5
    mov r4, r5
    eor r5, r3, ip @ eor ip, r3, ip
    eor r5, r3, ip
    mov ip, r5
    mov ip, r5
    eor r5, r3, r8 @ eor r3, r3, r8
    eor r5, r3, r8
    mov r3, r5
    mov r3, r5
    mov r8, r2 @ mov r8, r2
    mov r8, r2
    ldr r2, [sp, #20] @ ldr r2, [sp, #20]
    ldr r2, [sp, #20]
    eor r5, r1, ip @ eor ip, r1, ip
    eor r5, r1, ip
    mov ip, r5
    mov ip, r5
    eor r5, r8, r2 @ eor r8, r8, r2
    eor r5, r8, r2
    mov r8, r5
    mov r8, r5
    ldr r2, [sp, #76] @ ldr r2, [sp, #76]
    ldr r2, [sp, #76]
    str r0, [sp, #80] @ str r0, [sp, #80]
    str r0, [sp, #80]
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    ldr r0, [sp, #56] @ ldr r0, [sp, #56]
    ldr r0, [sp, #56]
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r1, r2, r0, lsl #1 @ eor r1, r2, r0, lsl #1
    eor r1, r2, r0, lsl #1
    ldr r0, [sp, #24] @ ldr r0, [sp, #24]
    ldr r0, [sp, #24]
    str ip, [sp, #72] @ str ip, [sp, #72]
    str ip, [sp, #72]
    mov ip, r0 @ mov ip, r0
    mov ip, r0
    ldr r0, [sp, #40] @ ldr r0, [sp, #40]
    ldr r0, [sp, #40]
    ldr r2, [sp, #52] @ ldr r2, [sp, #52]
    ldr r2, [sp, #52]
    eor r5, ip, r0 @ eor ip, ip, r0
    eor r5, ip, r0
    mov ip, r5
    mov ip, r5
    ldr r0, [sp, #80] @ ldr r0, [sp, #80]
    ldr r0, [sp, #80]
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    str ip, [sp, #56] @ str ip, [sp, #56]
    str ip, [sp, #56]
    eor ip, r1, r0 @ eor ip, r1, r0
    eor ip, r1, r0
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    ldr r1, [sp, #52] @ ldr r1, [sp, #52]
    ldr r1, [sp, #52]
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    str sb, [sp, #60] @ str sb, [sp, #60]
    str sb, [sp, #60]
    str ip, [sp, #80] @ str ip, [sp, #80]
    str ip, [sp, #80]
    eor sb, r2, r1, lsl #1 @ eor sb, r2, r1, lsl #1
    eor sb, r2, r1, lsl #1
    ldr r0, [sp, #4] @ ldr r0, [sp, #4]
    ldr r0, [sp, #4]
    ldr r1, [sp, #40] @ ldr r1, [sp, #40]
    ldr r1, [sp, #40]
    lsr r2, lr, #7 @ lsr r2, lr, #7
    lsr r2, lr, #7
    eor ip, r0, r1 @ eor ip, r0, r1
    eor ip, r0, r1
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    ldr r1, [sp, #68] @ ldr r1, [sp, #68]
    ldr r1, [sp, #68]
    eor r5, r2, lr, lsl #1 @ eor lr, r2, lr, lsl #1
    eor r5, r2, lr, lsl #1
    mov lr, r5
    mov lr, r5
    ldr r0, [sp, #20] @ ldr r0, [sp, #20]
    ldr r0, [sp, #20]
    lsrs r2, r1, #7 @ lsrs r2, r1, #7
    lsrs r2, r1, #7
    eor r5, lr, r3 @ eor lr, lr, r3
    eor r5, lr, r3
    mov lr, r5
    mov lr, r5
    str ip, [sp, #52] @ str ip, [sp, #52]
    str ip, [sp, #52]
    eor ip, sb, r4 @ eor ip, sb, r4
    eor ip, sb, r4
    ldr r4, [sp, #24] @ ldr r4, [sp, #24]
    ldr r4, [sp, #24]
    str lr, [sp, #68] @ str lr, [sp, #68]
    str lr, [sp, #68]
    lsl lr, r2, #1 @ lsl lr, r2, #1
    lsl lr, r2, #1
    eor sb, r0, r4 @ eor sb, r0, r4
    eor sb, r0, r4
    add r5, r2, lr @ add r2, r2, lr
    add r5, r2, lr
    mov r2, r5
    mov r2, r5
    ldr r4, [sp, #48] @ ldr r4, [sp, #48]
    ldr r4, [sp, #48]
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor lr, r2, r1, lsl #1 @ eor lr, r2, r1, lsl #1
    eor lr, r2, r1, lsl #1
    eor r2, r1, r4 @ eor r2, r1, r4
    eor r2, r1, r4
    ldr r4, [sp, #32] @ ldr r4, [sp, #32]
    ldr r4, [sp, #32]
    ldr r1, [sp] @ ldr r1, [sp]
    ldr r1, [sp]
    eors r5, r4, r2 @ eors r4, r4, r2
    eors r5, r4, r2
    mov r4, r5
    mov r4, r5
    str r4, [sp] @ str r4, [sp]
    str r4, [sp]
    ldr r0, [sp, #36] @ ldr r0, [sp, #36]
    ldr r0, [sp, #36]
    ldr r4, [sp, #16] @ ldr r4, [sp, #16]
    ldr r4, [sp, #16]
    eors r5, r1, r2 @ eors r1, r1, r2
    eors r5, r1, r2
    mov r1, r5
    mov r1, r5
    eors r5, r0, r2 @ eors r0, r0, r2
    eors r5, r0, r2
    mov r0, r5
    mov r0, r5
    eors r5, r2, r4 @ eors r2, r2, r4
    eors r5, r2, r4
    mov r2, r5
    mov r2, r5
    ldr r4, [sp, #8] @ ldr r4, [sp, #8]
    ldr r4, [sp, #8]
    str ip, [sp, #76] @ str ip, [sp, #76]
    str ip, [sp, #76]
    mov ip, r4 @ mov ip, r4
    mov ip, r4
    ldr r4, [sp, #12] @ ldr r4, [sp, #12]
    ldr r4, [sp, #12]
    eor r5, lr, r1 @ eor lr, lr, r1
    eor r5, lr, r1
    mov lr, r5
    mov lr, r5
    eor r5, ip, r4 @ eor ip, ip, r4
    eor r5, ip, r4
    mov ip, r5
    mov ip, r5
    ldr r4, [sp, #28] @ ldr r4, [sp, #28]
    ldr r4, [sp, #28]
    str lr, [sp, #32] @ str lr, [sp, #32]
    str lr, [sp, #32]
    mov lr, r4 @ mov lr, r4
    mov lr, r4
    ldr r3, [sp, #64] @ ldr r3, [sp, #64]
    ldr r3, [sp, #64]
    ldr r4, [sp, #44] @ ldr r4, [sp, #44]
    ldr r4, [sp, #44]
    lsrs r5, r3, #7 @ lsrs r3, r3, #7
    lsrs r5, r3, #7
    mov r3, r5
    mov r3, r5
    lsls r1, r3, #1 @ lsls r1, r3, #1
    lsls r1, r3, #1
    add r5, r1, r3 @ add r1, r1, r3
    add r5, r1, r3
    mov r1, r5
    mov r1, r5
    ldr r3, [sp, #64] @ ldr r3, [sp, #64]
    ldr r3, [sp, #64]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r5, r1, r3, lsl #1 @ eor r1, r1, r3, lsl #1
    eor r5, r1, r3, lsl #1
    mov r1, r5
    mov r1, r5
    ldr r3, [sp, #48] @ ldr r3, [sp, #48]
    ldr r3, [sp, #48]
    eors r5, r1, r0 @ eors r1, r1, r0
    eors r5, r1, r0
    mov r1, r5
    mov r1, r5
    lsrs r5, r3, #7 @ lsrs r3, r3, #7
    lsrs r5, r3, #7
    mov r3, r5
    mov r3, r5
    str r1, [sp, #64] @ str r1, [sp, #64]
    str r1, [sp, #64]
    lsls r1, r3, #1 @ lsls r1, r3, #1
    lsls r1, r3, #1
    eor r5, lr, r4 @ eor lr, lr, r4
    eor r5, lr, r4
    mov lr, r5
    mov lr, r5
    ldr r0, [sp, #44] @ ldr r0, [sp, #44]
    ldr r0, [sp, #44]
    add r5, r1, r3 @ add r1, r1, r3
    add r5, r1, r3
    mov r1, r5
    mov r1, r5
    ldr r4, [sp, #8] @ ldr r4, [sp, #8]
    ldr r4, [sp, #8]
    ldr r3, [sp, #48] @ ldr r3, [sp, #48]
    ldr r3, [sp, #48]
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eors r5, r4, r0 @ eors r4, r4, r0
    eors r5, r4, r0
    mov r4, r5
    mov r4, r5
    eor r5, r1, r3, lsl #1 @ eor r1, r1, r3, lsl #1
    eor r5, r1, r3, lsl #1
    mov r1, r5
    mov r1, r5
    ldr r0, [sp] @ ldr r0, [sp]
    ldr r0, [sp]
    ldr r3, [sp, #60] @ ldr r3, [sp, #60]
    ldr r3, [sp, #60]
    eors r5, r1, r0 @ eors r1, r1, r0
    eors r5, r1, r0
    mov r1, r5
    mov r1, r5
    lsrs r5, r3, #7 @ lsrs r3, r3, #7
    lsrs r5, r3, #7
    mov r3, r5
    mov r3, r5
    str r1, [sp, #48] @ str r1, [sp, #48]
    str r1, [sp, #48]
    lsls r1, r3, #1 @ lsls r1, r3, #1
    lsls r1, r3, #1
    add r5, r3, r1 @ add r3, r3, r1
    add r5, r3, r1
    mov r3, r5
    mov r3, r5
    ldr r1, [sp, #60] @ ldr r1, [sp, #60]
    ldr r1, [sp, #60]
    ldr r0, [sp, #12] @ ldr r0, [sp, #12]
    ldr r0, [sp, #12]
    str r4, [sp, #16] @ str r4, [sp, #16]
    str r4, [sp, #16]
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    ldr r4, [sp, #28] @ ldr r4, [sp, #28]
    ldr r4, [sp, #28]
    eor r5, r3, r1, lsl #1 @ eor r3, r3, r1, lsl #1
    eor r5, r3, r1, lsl #1
    mov r3, r5
    mov r3, r5
    eors r5, r4, r0 @ eors r4, r4, r0
    eors r5, r4, r0
    mov r4, r5
    mov r4, r5
    lsr r1, r8, #7 @ lsr r1, r8, #7
    lsr r1, r8, #7
    eors r5, r2, r3 @ eors r2, r2, r3
    eors r5, r2, r3
    mov r2, r5
    mov r2, r5
    str r4, [sp] @ str r4, [sp]
    str r4, [sp]
    str r2, [sp, #36] @ str r2, [sp, #36]
    str r2, [sp, #36]
    lsls r4, r1, #1 @ lsls r4, r1, #1
    lsls r4, r1, #1
    ldr r2, [sp, #52] @ ldr r2, [sp, #52]
    ldr r2, [sp, #52]
    add r5, r1, r4 @ add r1, r1, r4
    add r5, r1, r4
    mov r1, r5
    mov r1, r5
    lsrs r3, r2, #7 @ lsrs r3, r2, #7
    lsrs r3, r2, #7
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    ldr r2, [sp, #56] @ ldr r2, [sp, #56]
    ldr r2, [sp, #56]
    ldr r0, [sp, #4] @ ldr r0, [sp, #4]
    ldr r0, [sp, #4]
    eor r4, r1, r8, lsl #1 @ eor r4, r1, r8, lsl #1
    eor r4, r1, r8, lsl #1
    ldr r1, [sp, #24] @ ldr r1, [sp, #24]
    ldr r1, [sp, #24]
    eor r5, r8, r2 @ eor r8, r8, r2
    eor r5, r8, r2
    mov r8, r5
    mov r8, r5
    eor r2, r8, r0 @ eor r2, r8, r0
    eor r2, r8, r0
    eor r5, r8, r1 @ eor r1, r8, r1
    eor r5, r8, r1
    mov r1, r5
    mov r1, r5
    str r1, [sp, #4] @ str r1, [sp, #4]
    str r1, [sp, #4]
    ldr r0, [sp, #40] @ ldr r0, [sp, #40]
    ldr r0, [sp, #40]
    ldr r1, [sp, #20] @ ldr r1, [sp, #20]
    ldr r1, [sp, #20]
    eors r5, r2, r4 @ eors r2, r2, r4
    eors r5, r2, r4
    mov r2, r5
    mov r2, r5
    str r2, [sp, #20] @ str r2, [sp, #20]
    str r2, [sp, #20]
    lsls r2, r3, #1 @ lsls r2, r3, #1
    lsls r2, r3, #1
    eor r5, r8, r0 @ eor r0, r8, r0
    eor r5, r8, r0
    mov r0, r5
    mov r0, r5
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    eor r5, r8, r1 @ eor r8, r8, r1
    eor r5, r8, r1
    mov r8, r5
    mov r8, r5
    ldr r1, [sp, #52] @ ldr r1, [sp, #52]
    ldr r1, [sp, #52]
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eor r4, r3, r1, lsl #1 @ eor r4, r3, r1, lsl #1
    eor r4, r3, r1, lsl #1
    ldr r1, [sp, #56] @ ldr r1, [sp, #56]
    ldr r1, [sp, #56]
    eors r5, r0, r4 @ eors r0, r0, r4
    eors r5, r0, r4
    mov r0, r5
    mov r0, r5
    lsrs r2, r1, #7 @ lsrs r2, r1, #7
    lsrs r2, r1, #7
    str r0, [sp, #52] @ str r0, [sp, #52]
    str r0, [sp, #52]
    lsls r0, r2, #1 @ lsls r0, r2, #1
    lsls r0, r2, #1
    add r5, r0, r2 @ add r0, r0, r2
    add r5, r0, r2
    mov r0, r5
    mov r0, r5
    add r5, r0, r0, lsl #3 @ add r0, r0, r0, lsl #3
    add r5, r0, r0, lsl #3
    mov r0, r5
    mov r0, r5
    eor r5, r0, r1, lsl #1 @ eor r0, r0, r1, lsl #1
    eor r5, r0, r1, lsl #1
    mov r0, r5
    mov r0, r5
    ldr r1, [sp, #4] @ ldr r1, [sp, #4]
    ldr r1, [sp, #4]
    lsr r3, sb, #7 @ lsr r3, sb, #7
    lsr r3, sb, #7
    eors r5, r1, r0 @ eors r1, r1, r0
    eors r5, r1, r0
    mov r1, r5
    mov r1, r5
    str r1, [sp, #40] @ str r1, [sp, #40]
    str r1, [sp, #40]
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
    lsr r4, ip, #7 @ lsr r4, ip, #7
    lsr r4, ip, #7
    eor r5, r3, sb, lsl #1 @ eor r3, r3, sb, lsl #1
    eor r5, r3, sb, lsl #1
    mov r3, r5
    mov r3, r5
    eor r5, r3, r8 @ eor r8, r3, r8
    eor r5, r3, r8
    mov r8, r5
    mov r8, r5
    lsls r3, r4, #1 @ lsls r3, r4, #1
    lsls r3, r4, #1
    ldr r1, [sp] @ ldr r1, [sp]
    ldr r1, [sp]
    add r5, r4, r3 @ add r4, r4, r3
    add r5, r4, r3
    mov r4, r5
    mov r4, r5
    add r5, r4, r4, lsl #3 @ add r4, r4, r4, lsl #3
    add r5, r4, r4, lsl #3
    mov r4, r5
    mov r4, r5
    lsrs r0, r1, #7 @ lsrs r0, r1, #7
    lsrs r0, r1, #7
    ldr r3, [sp, #44] @ ldr r3, [sp, #44]
    ldr r3, [sp, #44]
    eor r1, r4, ip, lsl #1 @ eor r1, r4, ip, lsl #1
    eor r1, r4, ip, lsl #1
    ldr r4, [sp, #8] @ ldr r4, [sp, #8]
    ldr r4, [sp, #8]
    eor r5, ip, lr @ eor ip, ip, lr
    eor r5, ip, lr
    mov ip, r5
    mov ip, r5
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    str r8, [sp, #24] @ str r8, [sp, #24]
    str r8, [sp, #24]
    eor r8, ip, r4 @ eor r8, ip, r4
    eor r8, ip, r4
    eor r4, ip, r3 @ eor r4, ip, r3
    eor r4, ip, r3
    str r4, [sp, #4] @ str r4, [sp, #4]
    str r4, [sp, #4]
    ldr r3, [sp, #12] @ ldr r3, [sp, #12]
    ldr r3, [sp, #12]
    ldr r4, [sp, #28] @ ldr r4, [sp, #28]
    ldr r4, [sp, #28]
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    eor r5, ip, r4 @ eor r4, ip, r4
    eor r5, ip, r4
    mov r4, r5
    mov r4, r5
    eor r5, ip, r3 @ eor ip, ip, r3
    eor r5, ip, r3
    mov ip, r5
    mov ip, r5
    lsls r3, r2, #1 @ lsls r3, r2, #1
    lsls r3, r2, #1
    add r5, r2, r3 @ add r2, r2, r3
    add r5, r2, r3
    mov r2, r5
    mov r2, r5
    ldr r3, [sp, #16] @ ldr r3, [sp, #16]
    ldr r3, [sp, #16]
    lsr sb, lr, #7 @ lsr sb, lr, #7
    lsr sb, lr, #7
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r2, r3, lsl #1 @ eor r2, r2, r3, lsl #1
    eor r5, r2, r3, lsl #1
    mov r2, r5
    mov r2, r5
    lsl r3, sb, #1 @ lsl r3, sb, #1
    lsl r3, sb, #1
    add r5, sb, r3 @ add sb, sb, r3
    add r5, sb, r3
    mov sb, r5
    mov sb, r5
    lsls r3, r0, #1 @ lsls r3, r0, #1
    lsls r3, r0, #1
    add r5, r3, r0 @ add r3, r3, r0
    add r5, r3, r0
    mov r3, r5
    mov r3, r5
    ldr r0, [sp] @ ldr r0, [sp]
    ldr r0, [sp]
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eor r5, r3, r0, lsl #1 @ eor r3, r3, r0, lsl #1
    eor r5, r3, r0, lsl #1
    mov r3, r5
    mov r3, r5
    add r5, sb, sb, lsl #3 @ add sb, sb, sb, lsl #3
    add r5, sb, sb, lsl #3
    mov sb, r5
    mov sb, r5
    ldr r0, [sp, #4] @ ldr r0, [sp, #4]
    ldr r0, [sp, #4]
    eor r5, sb, lr, lsl #1 @ eor sb, sb, lr, lsl #1
    eor r5, sb, lr, lsl #1
    mov sb, r5
    mov sb, r5
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eor r5, sb, r4 @ eor r4, sb, r4
    eor r5, sb, r4
    mov r4, r5
    mov r4, r5
    eor r5, r3, ip @ eor r3, r3, ip
    eor r5, r3, ip
    mov r3, r5
    mov r3, r5
    ldrb r0, [sp, #80] @ ldrb r0, [sp, #80]
    ldrb r0, [sp, #80]
    ldrb ip, [sp, #72] @ ldrb ip, [sp, #72]
    ldrb ip, [sp, #72]
    str r2, [sp, #56] @ str r2, [sp, #56]
    str r2, [sp, #56]
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    str r4, [sp, #44] @ str r4, [sp, #44]
    str r4, [sp, #44]
    ldrb r4, [sp, #76] @ ldrb r4, [sp, #76]
    ldrb r4, [sp, #76]
    ldrb sb, [sp, #48] @ ldrb sb, [sp, #48]
    ldrb sb, [sp, #48]
    ldrb r3, [sp, #64] @ ldrb r3, [sp, #64]
    ldrb r3, [sp, #64]
    str sb, [sp, #4] @ str sb, [sp, #4]
    str sb, [sp, #4]
    ldrb sb, [sp, #36] @ ldrb sb, [sp, #36]
    ldrb sb, [sp, #36]
    ldrb r2, [sp, #24] @ ldrb r2, [sp, #24]
    ldrb r2, [sp, #24]
    @ only predecessor for .L34, no D reg usage
    b .L34 @ b .L34
    b .L34
.L35:
    .align 2
.L33:
    .word .LANCHOR0
    .ltorg
.L34:
    @ check gsr against sig of .L16
    ldr r6, =#0x99e54486 @ ldr r6, =#0x99e54486
    ldr r6, =#0x99e54486
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x7a024204 @ ldr r5, =#0x7a024204
    ldr r5, =#0x7a024204
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    str sb, [sp] @ str sb, [sp]
    str sb, [sp]
    ldrb sb, [sp, #20] @ ldrb sb, [sp, #20]
    ldrb sb, [sp, #20]
    strb r3, [fp, #7] @ strb r3, [fp, #7]
    strb r3, [fp, #7]
    str sb, [sp, #8] @ str sb, [sp, #8]
    str sb, [sp, #8]
    ldrb sb, [sp, #52] @ ldrb sb, [sp, #52]
    ldrb sb, [sp, #52]
    str r2, [sp, #12] @ str r2, [sp, #12]
    str r2, [sp, #12]
    str sb, [sp, #16] @ str sb, [sp, #16]
    str sb, [sp, #16]
    ldrb sb, [sp, #40] @ ldrb sb, [sp, #40]
    ldrb sb, [sp, #40]
    str r3, [sp, #40] @ str r3, [sp, #40]
    str r3, [sp, #40]
    ldrb r3, [sp, #4] @ ldrb r3, [sp, #4]
    ldrb r3, [sp, #4]
    ldrb r2, [sp, #56] @ ldrb r2, [sp, #56]
    ldrb r2, [sp, #56]
    strb r3, [fp, #6] @ strb r3, [fp, #6]
    strb r3, [fp, #6]
    ldrb r3, [sp] @ ldrb r3, [sp]
    ldrb r3, [sp]
    ldrb lr, [sp, #32] @ ldrb lr, [sp, #32]
    ldrb lr, [sp, #32]
    eor r5, r1, r8 @ eor r1, r1, r8
    eor r5, r1, r8
    mov r1, r5
    mov r1, r5
    str r2, [sp, #24] @ str r2, [sp, #24]
    str r2, [sp, #24]
    ldrb r8, [sp, #68] @ ldrb r8, [sp, #68]
    ldrb r8, [sp, #68]
    ldrb r2, [sp, #44] @ ldrb r2, [sp, #44]
    ldrb r2, [sp, #44]
    strb r3, [fp, #5] @ strb r3, [fp, #5]
    strb r3, [fp, #5]
    ldrb r3, [sp, #8] @ ldrb r3, [sp, #8]
    ldrb r3, [sp, #8]
    str r2, [sp, #20] @ str r2, [sp, #20]
    str r2, [sp, #20]
    strb ip, [fp] @ strb ip, [fp]
    strb ip, [fp]
    ldrb r2, [sp, #28] @ ldrb r2, [sp, #28]
    ldrb r2, [sp, #28]
    strb r0, [fp, #3] @ strb r0, [fp, #3]
    strb r0, [fp, #3]
    strb r4, [fp, #1] @ strb r4, [fp, #1]
    strb r4, [fp, #1]
    strb r8, [fp, #2] @ strb r8, [fp, #2]
    strb r8, [fp, #2]
    strb lr, [fp, #4] @ strb lr, [fp, #4]
    strb lr, [fp, #4]
    strb r3, [fp, #8] @ strb r3, [fp, #8]
    strb r3, [fp, #8]
    ldrb r3, [sp, #16] @ ldrb r3, [sp, #16]
    ldrb r3, [sp, #16]
    uxtb r5, r1 @ uxtb r1, r1
    uxtb r5, r1
    mov r1, r5
    mov r1, r5
    strb r3, [fp, #11] @ strb r3, [fp, #11]
    strb r3, [fp, #11]
    ldrb r3, [sp, #12] @ ldrb r3, [sp, #12]
    ldrb r3, [sp, #12]
    strb sb, [fp, #10] @ strb sb, [fp, #10]
    strb sb, [fp, #10]
    strb r3, [fp, #9] @ strb r3, [fp, #9]
    strb r3, [fp, #9]
    ldrb r3, [sp, #24] @ ldrb r3, [sp, #24]
    ldrb r3, [sp, #24]
    strb r1, [fp, #12] @ strb r1, [fp, #12]
    strb r1, [fp, #12]
    strb r3, [fp, #15] @ strb r3, [fp, #15]
    strb r3, [fp, #15]
    ldrb r3, [sp, #20] @ ldrb r3, [sp, #20]
    ldrb r3, [sp, #20]
    strb r2, [fp, #13] @ strb r2, [fp, #13]
    strb r2, [fp, #13]
    strb r3, [fp, #14] @ strb r3, [fp, #14]
    strb r3, [fp, #14]
    ldrb r3, [sl] @ ldrb r3, [sl]
    ldrb r3, [sl]
    eor r5, ip, r3 @ eor ip, ip, r3
    eor r5, ip, r3
    mov ip, r5
    mov ip, r5
    strb ip, [fp] @ strb ip, [fp]
    strb ip, [fp]
    ldrb r3, [sl, #1] @ ldrb r3, [sl, #1]
    ldrb r3, [sl, #1]
    eors r5, r4, r3 @ eors r4, r4, r3
    eors r5, r4, r3
    mov r4, r5
    mov r4, r5
    strb r4, [fp, #1] @ strb r4, [fp, #1]
    strb r4, [fp, #1]
    ldrb r3, [sl, #2] @ ldrb r3, [sl, #2]
    ldrb r3, [sl, #2]
    str r4, [sp, #48] @ str r4, [sp, #48]
    str r4, [sp, #48]
    eor r4, r8, r3 @ eor r4, r8, r3
    eor r4, r8, r3
    strb r4, [fp, #2] @ strb r4, [fp, #2]
    strb r4, [fp, #2]
    ldrb r3, [sl, #3] @ ldrb r3, [sl, #3]
    ldrb r3, [sl, #3]
    str r4, [sp, #52] @ str r4, [sp, #52]
    str r4, [sp, #52]
    eor r4, r0, r3 @ eor r4, r0, r3
    eor r4, r0, r3
    ldr r0, [sp] @ ldr r0, [sp]
    ldr r0, [sp]
    strb r4, [fp, #3] @ strb r4, [fp, #3]
    strb r4, [fp, #3]
    str r4, [sp, #36] @ str r4, [sp, #36]
    str r4, [sp, #36]
    mov r4, r0 @ mov r4, r0
    mov r4, r0
    ldrb r3, [sl, #4] @ ldrb r3, [sl, #4]
    ldrb r3, [sl, #4]
    ldr r0, [sp, #4] @ ldr r0, [sp, #4]
    ldr r0, [sp, #4]
    eor r5, lr, r3 @ eor lr, lr, r3
    eor r5, lr, r3
    mov lr, r5
    mov lr, r5
    strb lr, [fp, #4] @ strb lr, [fp, #4]
    strb lr, [fp, #4]
    ldrb r3, [sl, #5] @ ldrb r3, [sl, #5]
    ldrb r3, [sl, #5]
    eors r5, r4, r3 @ eors r4, r4, r3
    eors r5, r4, r3
    mov r4, r5
    mov r4, r5
    strb r4, [fp, #5] @ strb r4, [fp, #5]
    strb r4, [fp, #5]
    ldrb r3, [sl, #6] @ ldrb r3, [sl, #6]
    ldrb r3, [sl, #6]
    str r4, [sp, #28] @ str r4, [sp, #28]
    str r4, [sp, #28]
    eor r4, r0, r3 @ eor r4, r0, r3
    eor r4, r0, r3
    strb r4, [fp, #6] @ strb r4, [fp, #6]
    strb r4, [fp, #6]
    str r4, [sp, #32] @ str r4, [sp, #32]
    str r4, [sp, #32]
    ldrb r3, [sl, #7] @ ldrb r3, [sl, #7]
    ldrb r3, [sl, #7]
    ldr r0, [sp, #40] @ ldr r0, [sp, #40]
    ldr r0, [sp, #40]
    eors r5, r0, r3 @ eors r0, r0, r3
    eors r5, r0, r3
    mov r0, r5
    mov r0, r5
    strb r0, [fp, #7] @ strb r0, [fp, #7]
    strb r0, [fp, #7]
    ldrb r4, [sl, #8] @ ldrb r4, [sl, #8]
    ldrb r4, [sl, #8]
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    str r0, [sp, #40] @ str r0, [sp, #40]
    str r0, [sp, #40]
    eors r5, r4, r3 @ eors r4, r4, r3
    eors r5, r4, r3
    mov r4, r5
    mov r4, r5
    strb r4, [fp, #8] @ strb r4, [fp, #8]
    strb r4, [fp, #8]
    ldrb r8, [sl, #9] @ ldrb r8, [sl, #9]
    ldrb r8, [sl, #9]
    ldr r3, [sp, #12] @ ldr r3, [sp, #12]
    ldr r3, [sp, #12]
    eor r5, r3, r8 @ eor r8, r3, r8
    eor r5, r3, r8
    mov r8, r5
    mov r8, r5
    strb r8, [fp, #9] @ strb r8, [fp, #9]
    strb r8, [fp, #9]
    ldrb r3, [sl, #10] @ ldrb r3, [sl, #10]
    ldrb r3, [sl, #10]
    eor r0, sb, r3 @ eor r0, sb, r3
    eor r0, sb, r3
    strb r0, [fp, #10] @ strb r0, [fp, #10]
    strb r0, [fp, #10]
    ldrb sb, [sl, #11] @ ldrb sb, [sl, #11]
    ldrb sb, [sl, #11]
    ldr r3, [sp, #16] @ ldr r3, [sp, #16]
    ldr r3, [sp, #16]
    str r0, [sp, #44] @ str r0, [sp, #44]
    str r0, [sp, #44]
    eor r5, r3, sb @ eor sb, r3, sb
    eor r5, r3, sb
    mov sb, r5
    mov sb, r5
    strb sb, [fp, #11] @ strb sb, [fp, #11]
    strb sb, [fp, #11]
    ldrb r3, [sl, #12] @ ldrb r3, [sl, #12]
    ldrb r3, [sl, #12]
    eors r5, r1, r3 @ eors r1, r1, r3
    eors r5, r1, r3
    mov r1, r5
    mov r1, r5
    strb r1, [fp, #12] @ strb r1, [fp, #12]
    strb r1, [fp, #12]
    ldrb r3, [sl, #13] @ ldrb r3, [sl, #13]
    ldrb r3, [sl, #13]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #13] @ strb r3, [fp, #13]
    strb r3, [fp, #13]
    ldrb r2, [sl, #14] @ ldrb r2, [sl, #14]
    ldrb r2, [sl, #14]
    str r3, [sp, #56] @ str r3, [sp, #56]
    str r3, [sp, #56]
    ldr r3, [sp, #20] @ ldr r3, [sp, #20]
    ldr r3, [sp, #20]
    eors r5, r2, r3 @ eors r2, r2, r3
    eors r5, r2, r3
    mov r2, r5
    mov r2, r5
    strb r2, [fp, #14] @ strb r2, [fp, #14]
    strb r2, [fp, #14]
    ldrb r0, [sl, #15] @ ldrb r0, [sl, #15]
    ldrb r0, [sl, #15]
    ldr r3, [sp, #24] @ ldr r3, [sp, #24]
    ldr r3, [sp, #24]
    eors r5, r0, r3 @ eors r0, r0, r3
    eors r5, r0, r3
    mov r0, r5
    mov r0, r5
    ldr r3, [sp, #84] @ ldr r3, [sp, #84]
    ldr r3, [sp, #84]
    strb r0, [fp, #15] @ strb r0, [fp, #15]
    strb r0, [fp, #15]
    cmp r3, sl @ cmp r3, sl
    cmp r3, sl
    @ prepare gsr for branch target
    ldr r6, =#0xb80b0ea8 @ ldr r6, =#0xb80b0ea8
    ldr r6, =#0xb80b0ea8
    bne .L16 @ bne .L16
    bne .L16
    @ only predecessor for .L2005, no D reg usage
.L2005:
    @ check gsr against sig of .L34
    ldr r6, =#0x1dab817c @ ldr r6, =#0x1dab817c
    ldr r6, =#0x1dab817c
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x67a9c378 @ ldr r5, =#0x67a9c378
    ldr r5, =#0x67a9c378
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    str r0, [sp, #8] @ str r0, [sp, #8]
    str r0, [sp, #8]
    ldr r0, [sp, #88] @ ldr r0, [sp, #88]
    ldr r0, [sp, #88]
    str r4, [sp] @ str r4, [sp]
    str r4, [sp]
    add r4, r0, #160 @ add r4, r0, #160
    add r4, r0, #160
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    ldr r4, [sp, #92] @ ldr r4, [sp, #92]
    ldr r4, [sp, #92]
    mov sl, ip @ mov sl, ip
    mov sl, ip
    cmp r4, r0 @ cmp r4, r0
    cmp r4, r0
    mov ip, r0 @ mov ip, r0
    mov ip, r0
    str sb, [sp, #4] @ str sb, [sp, #4]
    str sb, [sp, #4]
    ldr sb, [sp, #48] @ ldr sb, [sp, #48]
    ldr sb, [sp, #48]
    str r0, [sp, #48] @ str r0, [sp, #48]
    str r0, [sp, #48]
    ldr r0, [sp, #88] @ ldr r0, [sp, #88]
    ldr r0, [sp, #88]
    bls .L1002 @ it hi
    mov ip, #0 @ mov ip, #0
    mov ip, #0
.L1002:
    mov r4, r0 @ mov r4, r0
    mov r4, r0
    bhi .L1004 @ it ls
    mov ip, #1 @ mov ip, #1
    mov ip, #1
.L1004:
    adds r5, r4, #168 @ adds r4, r4, #168
    adds r5, r4, #168
    mov r4, r5
    mov r4, r5
    cmp fp, r4 @ cmp fp, r4
    cmp fp, r4
    bcc .L1006 @ it cs
    orr r5, ip, #1 @ orr ip, ip, #1
    orr r5, ip, #1
    mov ip, r5
    mov ip, r5
.L1006:
    ldr r0, .L36 @ ldr r0, .L36
    ldr r0, .L36
    ldr r4, .L36 @ ldr r4, .L36
    ldr r4, .L36
    ldrb r5, [r0, r1] @ ldrb r1, [r0, r1]
    ldrb r5, [r0, r1]
    mov r1, r5
    mov r1, r5
    str ip, [sp, #64] @ str ip, [sp, #64]
    str ip, [sp, #64]
    ldrb ip, [r4, sl] @ ldrb ip, [r4, sl]
    ldrb ip, [r4, sl]
    ldr r4, .L36 @ ldr r4, .L36
    ldr r4, .L36
    str r1, [sp, #60] @ str r1, [sp, #60]
    str r1, [sp, #60]
    ldrb r5, [r4, lr] @ ldrb lr, [r4, lr]
    ldrb r5, [r4, lr]
    mov lr, r5
    mov lr, r5
    ldr r1, [sp, #28] @ ldr r1, [sp, #28]
    ldr r1, [sp, #28]
    ldr r4, [sp] @ ldr r4, [sp]
    ldr r4, [sp]
    str r8, [sp, #12] @ str r8, [sp, #12]
    str r8, [sp, #12]
    ldr r3, [sp, #56] @ ldr r3, [sp, #56]
    ldr r3, [sp, #56]
    ldrb r5, [r0, r4] @ ldrb r4, [r0, r4]
    ldrb r5, [r0, r4]
    mov r4, r5
    mov r4, r5
    ldrb r5, [r0, sb] @ ldrb sb, [r0, sb]
    ldrb r5, [r0, sb]
    mov sb, r5
    mov sb, r5
    str lr, [sp, #56] @ str lr, [sp, #56]
    str lr, [sp, #56]
    ldrb lr, [r0, r1] @ ldrb lr, [r0, r1]
    ldrb lr, [r0, r1]
    ldr r0, [sp, #12] @ ldr r0, [sp, #12]
    ldr r0, [sp, #12]
    ldr r1, .L36 @ ldr r1, .L36
    ldr r1, .L36
    ldr r8, [sp, #52] @ ldr r8, [sp, #52]
    ldr r8, [sp, #52]
    str ip, [sp, #52] @ str ip, [sp, #52]
    str ip, [sp, #52]
    ldrb ip, [r1, r0] @ ldrb ip, [r1, r0]
    ldrb ip, [r1, r0]
    ldrb r5, [r1, r3] @ ldrb r1, [r1, r3]
    ldrb r5, [r1, r3]
    mov r1, r5
    mov r1, r5
    ldr r3, .L36 @ ldr r3, .L36
    ldr r3, .L36
    ldr r0, [sp, #32] @ ldr r0, [sp, #32]
    ldr r0, [sp, #32]
    ldrb r5, [r3, r8] @ ldrb r3, [r3, r8]
    ldrb r5, [r3, r8]
    mov r3, r5
    mov r3, r5
    str lr, [sp] @ str lr, [sp]
    str lr, [sp]
    str r3, [sp, #20] @ str r3, [sp, #20]
    str r3, [sp, #20]
    ldr r3, .L36 @ ldr r3, .L36
    ldr r3, .L36
    str r1, [sp, #24] @ str r1, [sp, #24]
    str r1, [sp, #24]
    ldrb lr, [r3, r0] @ ldrb lr, [r3, r0]
    ldrb lr, [r3, r0]
    ldr r3, .L36 @ ldr r3, .L36
    ldr r3, .L36
    str lr, [sp, #16] @ str lr, [sp, #16]
    str lr, [sp, #16]
    ldr r0, [sp, #44] @ ldr r0, [sp, #44]
    ldr r0, [sp, #44]
    ldr r1, [sp, #4] @ ldr r1, [sp, #4]
    ldr r1, [sp, #4]
    ldrb r5, [r3, r0] @ ldrb r3, [r3, r0]
    ldrb r5, [r3, r0]
    mov r3, r5
    mov r3, r5
    ldr r0, .L36 @ ldr r0, .L36
    ldr r0, .L36
    strb r4, [fp, #8] @ strb r4, [fp, #8]
    strb r4, [fp, #8]
    ldrb sl, [r0, r2] @ ldrb sl, [r0, r2]
    ldrb sl, [r0, r2]
    mov r2, r0 @ mov r2, r0
    mov r2, r0
    ldr r0, [sp, #36] @ ldr r0, [sp, #36]
    ldr r0, [sp, #36]
    strb sb, [fp, #13] @ strb sb, [fp, #13]
    strb sb, [fp, #13]
    ldrb r5, [r2, r0] @ ldrb r2, [r2, r0]
    ldrb r5, [r2, r0]
    mov r2, r5
    mov r2, r5
    ldr r0, [sp, #40] @ ldr r0, [sp, #40]
    ldr r0, [sp, #40]
    str r2, [sp, #12] @ str r2, [sp, #12]
    str r2, [sp, #12]
    ldr r2, .L36 @ ldr r2, .L36
    ldr r2, .L36
    strb ip, [fp, #5] @ strb ip, [fp, #5]
    strb ip, [fp, #5]
    ldrb r5, [r2, r0] @ ldrb r2, [r2, r0]
    ldrb r5, [r2, r0]
    mov r2, r5
    mov r2, r5
    ldr r0, .L36 @ ldr r0, .L36
    ldr r0, .L36
    strb r3, [fp, #2] @ strb r3, [fp, #2]
    strb r3, [fp, #2]
    ldrb lr, [r0, r1] @ ldrb lr, [r0, r1]
    ldrb lr, [r0, r1]
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    ldr r0, [sp, #8] @ ldr r0, [sp, #8]
    ldr r0, [sp, #8]
    strb sl, [fp, #6] @ strb sl, [fp, #6]
    strb sl, [fp, #6]
    ldrb r5, [r1, r0] @ ldrb r0, [r1, r0]
    ldrb r5, [r1, r0]
    mov r0, r5
    mov r0, r5
    ldrb r1, [sp, #52] @ ldrb r1, [sp, #52]
    ldrb r1, [sp, #52]
    strb r1, [fp] @ strb r1, [fp]
    strb r1, [fp]
    ldrb r1, [sp, #56] @ ldrb r1, [sp, #56]
    ldrb r1, [sp, #56]
    strb r1, [fp, #4] @ strb r1, [fp, #4]
    strb r1, [fp, #4]
    ldrb r1, [sp, #60] @ ldrb r1, [sp, #60]
    ldrb r1, [sp, #60]
    strb r1, [fp, #12] @ strb r1, [fp, #12]
    strb r1, [fp, #12]
    ldrb r1, [sp] @ ldrb r1, [sp]
    ldrb r1, [sp]
    strb r1, [fp, #1] @ strb r1, [fp, #1]
    strb r1, [fp, #1]
    ldrb r1, [sp, #24] @ ldrb r1, [sp, #24]
    ldrb r1, [sp, #24]
    strb r1, [fp, #9] @ strb r1, [fp, #9]
    strb r1, [fp, #9]
    ldrb r1, [sp, #20] @ ldrb r1, [sp, #20]
    ldrb r1, [sp, #20]
    strb r1, [fp, #10] @ strb r1, [fp, #10]
    strb r1, [fp, #10]
    ldrb r1, [sp, #16] @ ldrb r1, [sp, #16]
    ldrb r1, [sp, #16]
    strb r1, [fp, #14] @ strb r1, [fp, #14]
    strb r1, [fp, #14]
    ldrb r1, [sp, #12] @ ldrb r1, [sp, #12]
    ldrb r1, [sp, #12]
    strb r1, [fp, #7] @ strb r1, [fp, #7]
    strb r1, [fp, #7]
    ldr r4, [sp, #64] @ ldr r4, [sp, #64]
    ldr r4, [sp, #64]
    strb r2, [fp, #11] @ strb r2, [fp, #11]
    strb r2, [fp, #11]
    strb lr, [fp, #15] @ strb lr, [fp, #15]
    strb lr, [fp, #15]
    strb r0, [fp, #3] @ strb r0, [fp, #3]
    strb r0, [fp, #3]
    cmp r4, #0 @ cmp r4, #0
    cmp r4, #0
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    beq .L17 @ beq .L17
    beq .L17
    @ only predecessor for .L2006, no D reg usage
.L2006:
    @ check gsr against sig of .L2005
    ldr r6, =#0x8cb8a4cb @ ldr r6, =#0x8cb8a4cb
    ldr r6, =#0x8cb8a4cb
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xeb1167b3 @ ldr r5, =#0xeb1167b3
    ldr r5, =#0xeb1167b3
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r2, [sp, #48] @ ldr r2, [sp, #48]
    ldr r2, [sp, #48]
    orr r5, r2, fp @ orr r2, r2, fp
    orr r5, r2, fp
    mov r2, r5
    mov r2, r5
    lsls r5, r2, #29 @ lsls r2, r2, #29
    lsls r5, r2, #29
    mov r2, r5
    mov r2, r5
    @ prepare gsr for branch target
    ldr r6, =#0x8cb8a4cb @ ldr r6, =#0x8cb8a4cb
    ldr r6, =#0x8cb8a4cb
    bne .L17 @ bne .L17
    bne .L17
    @ only predecessor for .L2007, no D reg usage
.L2007:
    @ check gsr against sig of .L2006
    ldr r6, =#0x23b6618a @ ldr r6, =#0x23b6618a
    ldr r6, =#0x23b6618a
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xc8a70639 @ ldr r5, =#0xc8a70639
    ldr r5, =#0xc8a70639
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r4, [sp, #88] @ ldr r4, [sp, #88]
    ldr r4, [sp, #88]
    ldr r0, [fp] @ ldr r0, [fp]
    ldr r0, [fp]
    ldr r2, [r4, #160] @ ldr r2, [r4, #160]
    ldr r2, [r4, #160]
    ldr r3, [r4, #164] @ ldr r3, [r4, #164]
    ldr r3, [r4, #164]
    ldr r1, [fp, #4] @ ldr r1, [fp, #4]
    ldr r1, [fp, #4]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    stm fp, {r2, r3} @ stm fp, {r2, r3}
    stm fp, {r2, r3}
    ldr r0, [fp, #8] @ ldr r0, [fp, #8]
    ldr r0, [fp, #8]
    ldr r2, [r4, #168] @ ldr r2, [r4, #168]
    ldr r2, [r4, #168]
    ldr r3, [r4, #172] @ ldr r3, [r4, #172]
    ldr r3, [r4, #172]
    ldr r1, [fp, #12] @ ldr r1, [fp, #12]
    ldr r1, [fp, #12]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    str r2, [fp, #8] @ str r2, [fp, #8]
    str r2, [fp, #8]
    str r3, [fp, #12] @ str r3, [fp, #12]
    str r3, [fp, #12]
    @ prepare D reg for going on
    ldr r6, =#0xa30d926c @ ldr r6, =#0xa30d926c
    ldr r6, =#0xa30d926c
.L13:
    @ check gsr against sig of .L17
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xb3869398 @ ldr r6, =#0xb3869398
    ldr r6, =#0xb3869398
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xd82c07cd @ ldr r5, =#0xd82c07cd
    ldr r5, =#0xd82c07cd
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    add r5, sp, #96 @ add sp, sp, #96
    add r5, sp, #96
    mov sp, r5
    mov sp, r5
    @ sp needed
    @ return target always has only one predecessor, no D reg usage
    add r5, sp, #24 @ ldmia sp!, {r4, r8, sb, sl, fp, pc}
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #24
    sub r5, sp, #24
    ldmia r5, {r4, r8, sb, sl, fp, pc}
    ldmia r5, {r4, r8, sb, sl, fp, pc}
.L14:
    @ check gsr against sig of .L2003
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xe07d89dc @ ldr r6, =#0xe07d89dc
    ldr r6, =#0xe07d89dc
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x629f6fbe @ ldr r5, =#0x629f6fbe
    ldr r5, =#0x629f6fbe
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r0, [sp, #88] @ ldr r0, [sp, #88]
    ldr r0, [sp, #88]
    ldrb r2, [fp] @ ldrb r2, [fp]
    ldrb r2, [fp]
    ldrb r3, [r0] @ ldrb r3, [r0]
    ldrb r3, [r0]
    ldrb r1, [fp, #1] @ ldrb r1, [fp, #1]
    ldrb r1, [fp, #1]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp] @ strb r3, [fp]
    strb r3, [fp]
    ldrb r3, [r0, #1] @ ldrb r3, [r0, #1]
    ldrb r3, [r0, #1]
    ldrb r2, [fp, #2] @ ldrb r2, [fp, #2]
    ldrb r2, [fp, #2]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #1] @ strb r3, [fp, #1]
    strb r3, [fp, #1]
    ldrb r3, [r0, #2] @ ldrb r3, [r0, #2]
    ldrb r3, [r0, #2]
    ldrb r1, [fp, #3] @ ldrb r1, [fp, #3]
    ldrb r1, [fp, #3]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #2] @ strb r3, [fp, #2]
    strb r3, [fp, #2]
    ldrb r3, [r0, #3] @ ldrb r3, [r0, #3]
    ldrb r3, [r0, #3]
    ldrb r2, [fp, #4] @ ldrb r2, [fp, #4]
    ldrb r2, [fp, #4]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #3] @ strb r3, [fp, #3]
    strb r3, [fp, #3]
    ldrb r3, [r0, #4] @ ldrb r3, [r0, #4]
    ldrb r3, [r0, #4]
    ldrb r1, [fp, #5] @ ldrb r1, [fp, #5]
    ldrb r1, [fp, #5]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #4] @ strb r3, [fp, #4]
    strb r3, [fp, #4]
    ldrb r3, [r0, #5] @ ldrb r3, [r0, #5]
    ldrb r3, [r0, #5]
    ldrb r2, [fp, #6] @ ldrb r2, [fp, #6]
    ldrb r2, [fp, #6]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #5] @ strb r3, [fp, #5]
    strb r3, [fp, #5]
    ldrb r3, [r0, #6] @ ldrb r3, [r0, #6]
    ldrb r3, [r0, #6]
    ldrb r1, [fp, #7] @ ldrb r1, [fp, #7]
    ldrb r1, [fp, #7]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #6] @ strb r3, [fp, #6]
    strb r3, [fp, #6]
    ldrb r3, [r0, #7] @ ldrb r3, [r0, #7]
    ldrb r3, [r0, #7]
    ldrb r2, [fp, #8] @ ldrb r2, [fp, #8]
    ldrb r2, [fp, #8]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #7] @ strb r3, [fp, #7]
    strb r3, [fp, #7]
    ldrb r3, [r0, #8] @ ldrb r3, [r0, #8]
    ldrb r3, [r0, #8]
    ldrb r1, [fp, #9] @ ldrb r1, [fp, #9]
    ldrb r1, [fp, #9]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #8] @ strb r3, [fp, #8]
    strb r3, [fp, #8]
    ldrb r3, [r0, #9] @ ldrb r3, [r0, #9]
    ldrb r3, [r0, #9]
    ldrb r2, [fp, #10] @ ldrb r2, [fp, #10]
    ldrb r2, [fp, #10]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #9] @ strb r3, [fp, #9]
    strb r3, [fp, #9]
    ldrb r3, [r0, #10] @ ldrb r3, [r0, #10]
    ldrb r3, [r0, #10]
    ldrb r1, [fp, #12] @ ldrb r1, [fp, #12]
    ldrb r1, [fp, #12]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #10] @ strb r3, [fp, #10]
    strb r3, [fp, #10]
    ldrb r3, [r0, #11] @ ldrb r3, [r0, #11]
    ldrb r3, [r0, #11]
    ldrb r2, [fp, #11] @ ldrb r2, [fp, #11]
    ldrb r2, [fp, #11]
    mov ip, r0 @ mov ip, r0
    mov ip, r0
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #11] @ strb r3, [fp, #11]
    strb r3, [fp, #11]
    ldrb r3, [r0, #12] @ ldrb r3, [r0, #12]
    ldrb r3, [r0, #12]
    ldrb r2, [fp, #13] @ ldrb r2, [fp, #13]
    ldrb r2, [fp, #13]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #12] @ strb r3, [fp, #12]
    strb r3, [fp, #12]
    ldrb r3, [r0, #13] @ ldrb r3, [r0, #13]
    ldrb r3, [r0, #13]
    ldrb r1, [fp, #14] @ ldrb r1, [fp, #14]
    ldrb r1, [fp, #14]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #13] @ strb r3, [fp, #13]
    strb r3, [fp, #13]
    ldrb r3, [r0, #14] @ ldrb r3, [r0, #14]
    ldrb r3, [r0, #14]
    ldrb r2, [fp, #15] @ ldrb r2, [fp, #15]
    ldrb r2, [fp, #15]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #14] @ strb r3, [fp, #14]
    strb r3, [fp, #14]
    ldrb r3, [r0, #15] @ ldrb r3, [r0, #15]
    ldrb r3, [r0, #15]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #15] @ strb r3, [fp, #15]
    strb r3, [fp, #15]
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L15 @ b .L15
    b .L15
.L17:
    @ check gsr against sig of .L2005
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xc03572d @ ldr r6, =#0xc03572d
    ldr r6, =#0xc03572d
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x6baa9455 @ ldr r5, =#0x6baa9455
    ldr r5, =#0x6baa9455
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r1, [sp, #88] @ ldr r1, [sp, #88]
    ldr r1, [sp, #88]
    ldrb r2, [fp] @ ldrb r2, [fp]
    ldrb r2, [fp]
    ldrb r5, [r1, #160] @ ldrb r1, [r1, #160]
    ldrb r5, [r1, #160]
    mov r1, r5
    mov r1, r5
    ldrb r4, [fp, #4] @ ldrb r4, [fp, #4]
    ldrb r4, [fp, #4]
    eors r5, r2, r1 @ eors r2, r2, r1
    eors r5, r2, r1
    mov r2, r5
    mov r2, r5
    strb r2, [fp] @ strb r2, [fp]
    strb r2, [fp]
    ldr r2, [sp, #88] @ ldr r2, [sp, #88]
    ldr r2, [sp, #88]
    ldr r1, [sp] @ ldr r1, [sp]
    ldr r1, [sp]
    ldrb r5, [r2, #161] @ ldrb r2, [r2, #161]
    ldrb r5, [r2, #161]
    mov r2, r5
    mov r2, r5
    ldrb ip, [fp, #5] @ ldrb ip, [fp, #5]
    ldrb ip, [fp, #5]
    eors r5, r1, r2 @ eors r1, r1, r2
    eors r5, r1, r2
    mov r1, r5
    mov r1, r5
    strb r1, [fp, #1] @ strb r1, [fp, #1]
    strb r1, [fp, #1]
    ldr r1, [sp, #88] @ ldr r1, [sp, #88]
    ldr r1, [sp, #88]
    ldrb r2, [fp, #6] @ ldrb r2, [fp, #6]
    ldrb r2, [fp, #6]
    ldrb lr, [r1, #162] @ ldrb lr, [r1, #162]
    ldrb lr, [r1, #162]
    eor r5, r3, lr @ eor r3, r3, lr
    eor r5, r3, lr
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #2] @ strb r3, [fp, #2]
    strb r3, [fp, #2]
    ldrb lr, [r1, #163] @ ldrb lr, [r1, #163]
    ldrb lr, [r1, #163]
    ldrb r3, [fp, #7] @ ldrb r3, [fp, #7]
    ldrb r3, [fp, #7]
    eor r5, r0, lr @ eor r0, r0, lr
    eor r5, r0, lr
    mov r0, r5
    mov r0, r5
    strb r0, [fp, #3] @ strb r0, [fp, #3]
    strb r0, [fp, #3]
    ldrb r0, [r1, #164] @ ldrb r0, [r1, #164]
    ldrb r0, [r1, #164]
    ldrb lr, [fp, #8] @ ldrb lr, [fp, #8]
    ldrb lr, [fp, #8]
    eors r5, r4, r0 @ eors r4, r4, r0
    eors r5, r4, r0
    mov r4, r5
    mov r4, r5
    strb r4, [fp, #4] @ strb r4, [fp, #4]
    strb r4, [fp, #4]
    ldrb r4, [r1, #165] @ ldrb r4, [r1, #165]
    ldrb r4, [r1, #165]
    ldrb r0, [fp, #9] @ ldrb r0, [fp, #9]
    ldrb r0, [fp, #9]
    eor r1, ip, r4 @ eor r1, ip, r4
    eor r1, ip, r4
    strb r1, [fp, #5] @ strb r1, [fp, #5]
    strb r1, [fp, #5]
    ldr r1, [sp, #88] @ ldr r1, [sp, #88]
    ldr r1, [sp, #88]
    ldrb r4, [r1, #166] @ ldrb r4, [r1, #166]
    ldrb r4, [r1, #166]
    ldrb r1, [fp, #10] @ ldrb r1, [fp, #10]
    ldrb r1, [fp, #10]
    eors r5, r2, r4 @ eors r2, r2, r4
    eors r5, r2, r4
    mov r2, r5
    mov r2, r5
    ldr r4, [sp, #88] @ ldr r4, [sp, #88]
    ldr r4, [sp, #88]
    strb r2, [fp, #6] @ strb r2, [fp, #6]
    strb r2, [fp, #6]
    ldrb r5, [r4, #167] @ ldrb r4, [r4, #167]
    ldrb r5, [r4, #167]
    mov r4, r5
    mov r4, r5
    ldrb r2, [fp, #11] @ ldrb r2, [fp, #11]
    ldrb r2, [fp, #11]
    eors r5, r3, r4 @ eors r3, r3, r4
    eors r5, r3, r4
    mov r3, r5
    mov r3, r5
    ldr r4, [sp, #88] @ ldr r4, [sp, #88]
    ldr r4, [sp, #88]
    strb r3, [fp, #7] @ strb r3, [fp, #7]
    strb r3, [fp, #7]
    ldrb r3, [r4, #168] @ ldrb r3, [r4, #168]
    ldrb r3, [r4, #168]
    eor r5, r3, lr @ eor r3, r3, lr
    eor r5, r3, lr
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #8] @ strb r3, [fp, #8]
    strb r3, [fp, #8]
    ldrb r3, [r4, #169] @ ldrb r3, [r4, #169]
    ldrb r3, [r4, #169]
    eors r5, r3, r0 @ eors r3, r3, r0
    eors r5, r3, r0
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #9] @ strb r3, [fp, #9]
    strb r3, [fp, #9]
    ldrb r3, [r4, #170] @ ldrb r3, [r4, #170]
    ldrb r3, [r4, #170]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #10] @ strb r3, [fp, #10]
    strb r3, [fp, #10]
    ldrb r3, [r4, #171] @ ldrb r3, [r4, #171]
    ldrb r3, [r4, #171]
    ldrb r1, [fp, #12] @ ldrb r1, [fp, #12]
    ldrb r1, [fp, #12]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #11] @ strb r3, [fp, #11]
    strb r3, [fp, #11]
    ldrb r3, [r4, #172] @ ldrb r3, [r4, #172]
    ldrb r3, [r4, #172]
    ldrb r2, [fp, #13] @ ldrb r2, [fp, #13]
    ldrb r2, [fp, #13]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #12] @ strb r3, [fp, #12]
    strb r3, [fp, #12]
    ldrb r3, [r4, #173] @ ldrb r3, [r4, #173]
    ldrb r3, [r4, #173]
    ldrb r1, [fp, #14] @ ldrb r1, [fp, #14]
    ldrb r1, [fp, #14]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #13] @ strb r3, [fp, #13]
    strb r3, [fp, #13]
    ldrb r3, [r4, #174] @ ldrb r3, [r4, #174]
    ldrb r3, [r4, #174]
    ldrb r2, [fp, #15] @ ldrb r2, [fp, #15]
    ldrb r2, [fp, #15]
    eors r5, r3, r1 @ eors r3, r3, r1
    eors r5, r3, r1
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #14] @ strb r3, [fp, #14]
    strb r3, [fp, #14]
    ldrb r3, [r4, #175] @ ldrb r3, [r4, #175]
    ldrb r3, [r4, #175]
    eors r5, r3, r2 @ eors r3, r3, r2
    eors r5, r3, r2
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #15] @ strb r3, [fp, #15]
    strb r3, [fp, #15]
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L13 @ b .L13
    b .L13
.L37:
    .align 2
.L36:
    .word .LANCHOR0
    .size cipher_check_flow, .-cipher_check_flow
    .ltorg
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
    .global report_done_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type report_done_check_flow, %function
report_done_check_flow:
    @ check gsr against sig of .L2009
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x583617a @ ldr r6, =#0x583617a
    ldr r6, =#0x583617a
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x48268673 @ ldr r5, =#0x48268673
    ldr r5, =#0x48268673
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
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
    @ prepare gsr for branch target
    ldr r6, =#0x583617a @ ldr r6, =#0x583617a
    ldr r6, =#0x583617a
    adr lr, .L1008 @ bl report_done_check_flow
    adr lr, .L1008
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
.L1008:
    .size report_done_check_flow, .-report_done_check_flow
    .align 1
    .p2align 2,,3
    .global AES_ECB_encrypt
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type AES_ECB_encrypt, %function
AES_ECB_encrypt:
    ldr r7, =#0x37ebdcd9 @ ldr r7, =#0x37ebdcd9
    ldr r7, =#0x37ebdcd9
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
    adr lr, .L1009 @ bl key_expansion_check_flow
    adr lr, .L1009
    orr lr, #1
    orr lr, #1
    b key_expansion_check_flow
    b key_expansion_check_flow
.L1009:
.L2008:
    @ check gsr against sig of .L2002
    ldr r6, =#0x2359899a @ ldr r6, =#0x2359899a
    ldr r6, =#0x2359899a
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xd4713d60 @ ldr r5, =#0xd4713d60
    ldr r5, =#0xd4713d60
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    mov r1, sp @ mov r1, sp
    mov r1, sp
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    @ only predecessor for cipher_check_flow, no D reg usage
    adr lr, .L1010 @ bl cipher_check_flow
    adr lr, .L1010
    orr lr, #1
    orr lr, #1
    b cipher_check_flow
    b cipher_check_flow
.L1010:
.L2009:
    @ check gsr against sig of .L13
    ldr r6, =#0x9589e0c4 @ ldr r6, =#0x9589e0c4
    ldr r6, =#0x9589e0c4
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x4da5e709 @ ldr r5, =#0x4da5e709
    ldr r5, =#0x4da5e709
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    adr lr, .L1011 @ bl report_done_check_flow
    adr lr, .L1011
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
.L1011:
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
