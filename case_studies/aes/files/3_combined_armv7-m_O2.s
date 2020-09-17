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
    ldr r6, =#0x3cd03c33 @ ldr r6, =#0x3cd03c33
    ldr r6, =#0x3cd03c33
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xb4862b21 @ ldr r5, =#0xb4862b21
    ldr r5, =#0xb4862b21
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
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    stmdb sp, {r4, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r8, sb, sl, fp, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    add r4, r1, #16 @ add r4, r1, #16
    add r4, r1, #16
    @ prepare D reg for going on
    ldr r6, =#0xf4a705d6 @ ldr r6, =#0xf4a705d6
    ldr r6, =#0xf4a705d6
.L2:
    @ check gsr against sig of .L2
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    ldr r5, =#0x40212ef7 @ ldr r5, =#0x40212ef7
    ldr r5, =#0x40212ef7
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L2 @ bne .L2
    bne .L2
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of .L2
    ldr r6, =#0x26970cd @ ldr r6, =#0x26970cd
    ldr r6, =#0x26970cd
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
    mov lr, #4 @ mov lr, #4
    mov lr, #4
    ldr ip, .L9 @ ldr ip, .L9
    ldr ip, .L9
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L4:
    @ check gsr against sig of .L2000
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xaaad7f50 @ ldr r6, =#0xaaad7f50
    ldr r6, =#0xaaad7f50
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xe8e5216a @ ldr r5, =#0xe8e5216a
    ldr r5, =#0xe8e5216a
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    tst lr, #3 @ tst lr, #3
    tst lr, #3
    ldrb r4, [r0, #12] @ ldrb r4, [r0, #12]
    ldrb r4, [r0, #12]
    ldrb r1, [r0, #13] @ ldrb r1, [r0, #13]
    ldrb r1, [r0, #13]
    ldrb r2, [r0, #14] @ ldrb r2, [r0, #14]
    ldrb r2, [r0, #14]
    ldrb r3, [r0, #15] @ ldrb r3, [r0, #15]
    ldrb r3, [r0, #15]
    @ prepare gsr for branch target
    ldr r6, =#0x1fcd9590 @ ldr r6, =#0x1fcd9590
    ldr r6, =#0x1fcd9590
    bne .L3 @ bne .L3
    bne .L3
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L4
    ldr r6, =#0x1fcd9590 @ ldr r6, =#0x1fcd9590
    ldr r6, =#0x1fcd9590
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
    add r8, ip, lr, lsr #2 @ add r8, ip, lr, lsr #2
    add r8, ip, lr, lsr #2
    ldrb sb, [ip, r1] @ ldrb sb, [ip, r1]
    ldrb sb, [ip, r1]
    ldrb r5, [r8, #256] @ ldrb r8, [r8, #256]
    ldrb r5, [r8, #256]
    mov r8, r5
    mov r8, r5
    ldrb r1, [ip, r2] @ ldrb r1, [ip, r2]
    ldrb r1, [ip, r2]
    ldrb r2, [ip, r3] @ ldrb r2, [ip, r3]
    ldrb r2, [ip, r3]
    ldrb r3, [ip, r4] @ ldrb r3, [ip, r4]
    ldrb r3, [ip, r4]
    eor r4, sb, r8 @ eor r4, sb, r8
    eor r4, sb, r8
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L3:
    @ check gsr against sig of .L2001
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xb95b039 @ ldr r6, =#0xb95b039
    ldr r6, =#0xb95b039
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xfcbd04c3 @ ldr r5, =#0xfcbd04c3
    ldr r5, =#0xfcbd04c3
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldrb fp, [r0] @ ldrb fp, [r0]
    ldrb fp, [r0]
    ldrb sl, [r0, #1] @ ldrb sl, [r0, #1]
    ldrb sl, [r0, #1]
    ldrb sb, [r0, #2] @ ldrb sb, [r0, #2]
    ldrb sb, [r0, #2]
    ldrb r8, [r0, #3] @ ldrb r8, [r0, #3]
    ldrb r8, [r0, #3]
    add r5, lr, #1 @ add lr, lr, #1
    add r5, lr, #1
    mov lr, r5
    mov lr, r5
    eor r5, r4, fp @ eor r4, r4, fp
    eor r5, r4, fp
    mov r4, r5
    mov r4, r5
    eor r5, r1, sl @ eor r1, r1, sl
    eor r5, r1, sl
    mov r1, r5
    mov r1, r5
    eor r5, r2, sb @ eor r2, r2, sb
    eor r5, r2, sb
    mov r2, r5
    mov r2, r5
    eor r5, r3, r8 @ eor r3, r3, r8
    eor r5, r3, r8
    mov r3, r5
    mov r3, r5
    cmp lr, #44 @ cmp lr, #44
    cmp lr, #44
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
    @ prepare gsr for branch target
    ldr r6, =#0xbef55af9 @ ldr r6, =#0xbef55af9
    ldr r6, =#0xbef55af9
    bne .L4 @ bne .L4
    bne .L4
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L3
    ldr r6, =#0x7e5fe2a1 @ ldr r6, =#0x7e5fe2a1
    ldr r6, =#0x7e5fe2a1
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
    @ return target always has only one predecessor, no D reg usage
    add r5, sp, #24 @ ldmia sp!, {r4, r8, sb, sl, fp, pc}
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #24
    sub r5, sp, #24
    ldmia r5, {r4, r8, sb, sl, fp, pc}
    ldmia r5, {r4, r8, sb, sl, fp, pc}
.L10:
    .align 2
.L9:
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
    @ check gsr against sig of .L2015
    ldr r6, =#0xcc7c08ec @ ldr r6, =#0xcc7c08ec
    ldr r6, =#0xcc7c08ec
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xfb97d435 @ ldr r5, =#0xfb97d435
    ldr r5, =#0xfb97d435
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
cipher:
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r8, sb, sl, fp, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    mov r8, r0 @ mov r8, r0
    mov r8, r0
    mov lr, r1 @ mov lr, r1
    mov lr, r1
    sub r5, sp, #32 @ sub sp, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    str r0, [sp, #28] @ str r0, [sp, #28]
    str r0, [sp, #28]
    add ip, r0, #16 @ add ip, r0, #16
    add ip, r0, #16
    @ prepare D reg for going on
    ldr r6, =#0x87f215d0 @ ldr r6, =#0x87f215d0
    ldr r6, =#0x87f215d0
.L12:
    @ check gsr against sig of .L2003
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xa449c628 @ ldr r6, =#0xa449c628
    ldr r6, =#0xa449c628
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
    mov r2, r3 @ mov r2, r3
    mov r2, r3
    mov r0, lr @ mov r0, lr
    mov r0, lr
    add sb, r3, #4 @ add sb, r3, #4
    add sb, r3, #4
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L13:
    @ check gsr against sig of .L12
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xbab36873 @ ldr r6, =#0xbab36873
    ldr r6, =#0xbab36873
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
    ldrb r3, [r0] @ ldrb r3, [r0], #1
    ldrb r3, [r0]
    add r5, r0, #1 @ add r0, r0, #1
    add r5, r0, #1
    mov r0, r5
    mov r0, r5
    ldrb r4, [r2] @ ldrb r4, [r2]
    ldrb r4, [r2]
    eors r5, r3, r4 @ eors r3, r3, r4
    eors r5, r3, r4
    mov r3, r5
    mov r3, r5
    strb r3, [r2] @ strb r3, [r2], #1
    strb r3, [r2]
    add r5, r2, #1 @ add r2, r2, #1
    add r5, r2, #1
    mov r2, r5
    mov r2, r5
    cmp sb, r2 @ cmp sb, r2
    cmp sb, r2
    @ prepare gsr for branch target
    ldr r6, =#0xbab36873 @ ldr r6, =#0xbab36873
    ldr r6, =#0xbab36873
    bne .L13 @ bne .L13
    bne .L13
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L13
    ldr r6, =#0x1efaae5b @ ldr r6, =#0x1efaae5b
    ldr r6, =#0x1efaae5b
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
    cmp r2, ip @ cmp r2, ip
    cmp r2, ip
    add r5, lr, #4 @ add lr, lr, #4
    add r5, lr, #4
    mov lr, r5
    mov lr, r5
    mov r3, r2 @ mov r3, r2
    mov r3, r2
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L12 @ bne .L12
    bne .L12
    @ only predecessor for .L2004, no D reg usage
.L2004:
    @ check gsr against sig of .L2003
    ldr r6, =#0x1bcc029d @ ldr r6, =#0x1bcc029d
    ldr r6, =#0x1bcc029d
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
    add r3, r1, #16 @ add r3, r1, #16
    add r3, r1, #16
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
    add r3, r1, #160 @ add r3, r1, #160
    add r3, r1, #160
    str r3, [sp, #20] @ str r3, [sp, #20]
    str r3, [sp, #20]
    add r3, r8, #4 @ add r3, r8, #4
    add r3, r8, #4
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
    str r3, [sp, #24] @ str r3, [sp, #24]
    str r3, [sp, #24]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L21:
    @ check gsr against sig of .L2004
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x440eb262 @ ldr r6, =#0x440eb262
    ldr r6, =#0x440eb262
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
    mov ip, r8 @ mov ip, r8
    mov ip, r8
    ldr r1, [sp, #24] @ ldr r1, [sp, #24]
    ldr r1, [sp, #24]
    @ prepare D reg for going on
    ldr r6, =#0xc8b616a9 @ ldr r6, =#0xc8b616a9
    ldr r6, =#0xc8b616a9
.L23:
    @ check gsr against sig of .L2005
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xc8d7069c @ ldr r6, =#0xc8d7069c
    ldr r6, =#0xc8d7069c
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x23c6612f @ ldr r5, =#0x23c6612f
    ldr r5, =#0x23c6612f
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    @ prepare D reg for going on
    ldr r6, =#0xe1cf2d83 @ ldr r6, =#0xe1cf2d83
    ldr r6, =#0xe1cf2d83
.L15:
    @ check gsr against sig of .L15
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    mov r6, #0 @ mov r6, #0
    mov r6, #0
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
    ldrb r2, [ip, r3, lsl #2] @ ldrb r2, [ip, r3, lsl #2]
    ldrb r2, [ip, r3, lsl #2]
    ldr r0, .L38 @ ldr r0, .L38
    ldr r0, .L38
    ldrb r5, [r0, r2] @ ldrb r2, [r0, r2]
    ldrb r5, [r0, r2]
    mov r2, r5
    mov r2, r5
    strb r2, [ip, r3, lsl #2] @ strb r2, [ip, r3, lsl #2]
    strb r2, [ip, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L15 @ bne .L15
    bne .L15
    @ only predecessor for .L2005, no D reg usage
.L2005:
    @ check gsr against sig of .L15
    ldr r6, =#0x29182b1f @ ldr r6, =#0x29182b1f
    ldr r6, =#0x29182b1f
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
    add r5, ip, #1 @ add ip, ip, #1
    add r5, ip, #1
    mov ip, r5
    mov ip, r5
    cmp r1, ip @ cmp r1, ip
    cmp r1, ip
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L23 @ bne .L23
    bne .L23
    @ only predecessor for .L2006, no D reg usage
.L2006:
    @ check gsr against sig of .L2005
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
    mov fp, r8 @ mov fp, r8
    mov fp, r8
    ldrb r2, [r8, #1] @ ldrb r2, [r8, #1]
    ldrb r2, [r8, #1]
    ldrb r3, [r8, #9] @ ldrb r3, [r8, #9]
    ldrb r3, [r8, #9]
    ldrb r1, [r8, #13] @ ldrb r1, [r8, #13]
    ldrb r1, [r8, #13]
    ldrb r0, [r8, #5] @ ldrb r0, [r8, #5]
    ldrb r0, [r8, #5]
    strb r2, [r8, #13] @ strb r2, [r8, #13]
    strb r2, [r8, #13]
    strb r3, [r8, #5] @ strb r3, [r8, #5]
    strb r3, [r8, #5]
    ldrb r2, [r8, #2] @ ldrb r2, [r8, #2]
    ldrb r2, [r8, #2]
    ldrb r3, [r8, #6] @ ldrb r3, [r8, #6]
    ldrb r3, [r8, #6]
    strb r1, [r8, #9] @ strb r1, [r8, #9]
    strb r1, [r8, #9]
    ldrb r1, [r8, #10] @ ldrb r1, [r8, #10]
    ldrb r1, [r8, #10]
    strb r2, [r8, #10] @ strb r2, [r8, #10]
    strb r2, [r8, #10]
    ldrb r2, [r8, #14] @ ldrb r2, [r8, #14]
    ldrb r2, [r8, #14]
    strb r3, [r8, #14] @ strb r3, [r8, #14]
    strb r3, [r8, #14]
    ldrb r3, [r8, #3] @ ldrb r3, [r8, #3]
    ldrb r3, [r8, #3]
    ldrb r4, [r8, #15] @ ldrb r4, [r8, #15]
    ldrb r4, [r8, #15]
    strb r2, [r8, #6] @ strb r2, [r8, #6]
    strb r2, [r8, #6]
    ldrb r2, [r8, #7] @ ldrb r2, [r8, #7]
    ldrb r2, [r8, #7]
    strb r3, [r8, #7] @ strb r3, [r8, #7]
    strb r3, [r8, #7]
    ldrb r3, [r8, #11] @ ldrb r3, [r8, #11]
    ldrb r3, [r8, #11]
    strb r0, [r8, #1] @ strb r0, [r8, #1]
    strb r0, [r8, #1]
    strb r1, [r8, #2] @ strb r1, [r8, #2]
    strb r1, [r8, #2]
    strb r2, [r8, #11] @ strb r2, [r8, #11]
    strb r2, [r8, #11]
    strb r3, [r8, #15] @ strb r3, [r8, #15]
    strb r3, [r8, #15]
    strb r4, [r8, #3] @ strb r4, [r8, #3]
    strb r4, [r8, #3]
    str ip, [sp, #12] @ str ip, [sp, #12]
    str ip, [sp, #12]
    str r8, [sp, #16] @ str r8, [sp, #16]
    str r8, [sp, #16]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L18:
    @ check gsr against sig of .L2006
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xa30d926c @ ldr r6, =#0xa30d926c
    ldr r6, =#0xa30d926c
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
    ldrb r3, [fp] @ ldrb r3, [fp]
    ldrb r3, [fp]
    eors r5, r4, r1 @ eors r4, r4, r1
    eors r5, r4, r1
    mov r4, r5
    mov r4, r5
    eor r8, r3, r0 @ eor r8, r3, r0
    eor r8, r3, r0
    lsr r0, r8, #7 @ lsr r0, r8, #7
    lsr r0, r8, #7
    lsls r1, r0, #1 @ lsls r1, r0, #1
    lsls r1, r0, #1
    ldrb ip, [fp, #3] @ ldrb ip, [fp, #3]
    ldrb ip, [fp, #3]
    add r5, r0, r1 @ add r0, r0, r1
    add r5, r0, r1
    mov r0, r5
    mov r0, r5
    eor r5, r8, r4 @ eor r4, r8, r4
    eor r5, r8, r4
    mov r4, r5
    mov r4, r5
    add r5, r0, r0, lsl #3 @ add r0, r0, r0, lsl #3
    add r5, r0, r0, lsl #3
    mov r0, r5
    mov r0, r5
    eor sl, r3, ip @ eor sl, r3, ip
    eor sl, r3, ip
    eor r5, r0, r8, lsl #1 @ eor r0, r0, r8, lsl #1
    eor r5, r0, r8, lsl #1
    mov r0, r5
    mov r0, r5
    eors r5, r3, r4 @ eors r3, r3, r4
    eors r5, r3, r4
    mov r3, r5
    mov r3, r5
    eors r5, r0, r3 @ eors r0, r0, r3
    eors r5, r0, r3
    mov r0, r5
    mov r0, r5
    lsr r1, sl, #7 @ lsr r1, sl, #7
    lsr r1, sl, #7
    ldrb lr, [fp, #2] @ ldrb lr, [fp, #2]
    ldrb lr, [fp, #2]
    strb r0, [fp] @ strb r0, [fp]
    strb r0, [fp]
    lsls r0, r1, #1 @ lsls r0, r1, #1
    lsls r0, r1, #1
    ldrb r2, [fp, #1] @ ldrb r2, [fp, #1]
    ldrb r2, [fp, #1]
    add r5, r1, r0 @ add r1, r1, r0
    add r5, r1, r0
    mov r1, r5
    mov r1, r5
    eor sb, lr, ip @ eor sb, lr, ip
    eor sb, lr, ip
    add r5, r1, r1, lsl #3 @ add r1, r1, r1, lsl #3
    add r5, r1, r1, lsl #3
    mov r1, r5
    mov r1, r5
    eor r8, r2, lr @ eor r8, r2, lr
    eor r8, r2, lr
    eor r5, r4, ip @ eor ip, r4, ip
    eor r5, r4, ip
    mov ip, r5
    mov ip, r5
    eor r5, r4, lr @ eor lr, r4, lr
    eor r5, r4, lr
    mov lr, r5
    mov lr, r5
    eor r5, r1, sl, lsl #1 @ eor r1, r1, sl, lsl #1
    eor r5, r1, sl, lsl #1
    mov r1, r5
    mov r1, r5
    eors r5, r4, r2 @ eors r4, r4, r2
    eors r5, r4, r2
    mov r4, r5
    mov r4, r5
    lsr r2, sb, #7 @ lsr r2, sb, #7
    lsr r2, sb, #7
    eor r5, r1, ip @ eor ip, r1, ip
    eor r5, r1, ip
    mov ip, r5
    mov ip, r5
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    lsr r3, r8, #7 @ lsr r3, r8, #7
    lsr r3, r8, #7
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r2, sb, lsl #1 @ eor sb, r2, sb, lsl #1
    eor r5, r2, sb, lsl #1
    mov sb, r5
    mov sb, r5
    lsls r2, r3, #1 @ lsls r2, r3, #1
    lsls r2, r3, #1
    add r5, r3, r2 @ add r3, r3, r2
    add r5, r3, r2
    mov r3, r5
    mov r3, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eor r5, r3, r8, lsl #1 @ eor r8, r3, r8, lsl #1
    eor r5, r3, r8, lsl #1
    mov r8, r5
    mov r8, r5
    eor r5, sb, lr @ eor sb, sb, lr
    eor r5, sb, lr
    mov sb, r5
    mov sb, r5
    eor r5, r8, r4 @ eor r4, r8, r4
    eor r5, r8, r4
    mov r4, r5
    mov r4, r5
    ldr r3, [sp, #4] @ ldr r3, [sp, #4]
    ldr r3, [sp, #4]
    strb ip, [fp, #3] @ strb ip, [fp, #3]
    strb ip, [fp, #3]
    strb sb, [fp, #2] @ strb sb, [fp, #2]
    strb sb, [fp, #2]
    strb r4, [fp, #1] @ strb r4, [fp, #1]
    strb r4, [fp, #1]
    add r5, fp, #4 @ add fp, fp, #4
    add r5, fp, #4
    mov fp, r5
    mov fp, r5
    cmp fp, r3 @ cmp fp, r3
    cmp fp, r3
    @ only predecessor for .L29, no D reg usage
    beq .L29 @ beq .L29
    beq .L29
    @ only predecessor for .L2007, no D reg usage
.L2007:
    @ check gsr against sig of .L18
    ldr r6, =#0xbfdba935 @ ldr r6, =#0xbfdba935
    ldr r6, =#0xbfdba935
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
    ldrb r0, [fp, #1] @ ldrb r0, [fp, #1]
    ldrb r0, [fp, #1]
    ldrb r1, [fp, #2] @ ldrb r1, [fp, #2]
    ldrb r1, [fp, #2]
    ldrb r4, [fp, #3] @ ldrb r4, [fp, #3]
    ldrb r4, [fp, #3]
    @ prepare gsr for branch target
    ldr r6, =#0x1cd63b59 @ ldr r6, =#0x1cd63b59
    ldr r6, =#0x1cd63b59
    b .L18 @ b .L18
    b .L18
.L29:
    @ check gsr against sig of .L18
    ldr r6, =#0xa70f31f4 @ ldr r6, =#0xa70f31f4
    ldr r6, =#0xa70f31f4
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xcca5a5a1 @ ldr r5, =#0xcca5a5a1
    ldr r5, =#0xcca5a5a1
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldr r8, [sp, #16] @ ldr r8, [sp, #16]
    ldr r8, [sp, #16]
    ldr ip, [sp, #12] @ ldr ip, [sp, #12]
    ldr ip, [sp, #12]
    mov r1, r8 @ mov r1, r8
    mov r1, r8
    ldr lr, [sp, #8] @ ldr lr, [sp, #8]
    ldr lr, [sp, #8]
    ldr sb, [sp, #4] @ ldr sb, [sp, #4]
    ldr sb, [sp, #4]
    @ prepare D reg for going on
    ldr r6, =#0x810042a8 @ ldr r6, =#0x810042a8
    ldr r6, =#0x810042a8
.L17:
    @ check gsr against sig of .L2008
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xae42e18b @ ldr r6, =#0xae42e18b
    ldr r6, =#0xae42e18b
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
    mov r0, lr @ mov r0, lr
    mov r0, lr
    adds r4, r1, #4 @ adds r4, r1, #4
    adds r4, r1, #4
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L19:
    @ check gsr against sig of .L17
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xe9ba29b6 @ ldr r6, =#0xe9ba29b6
    ldr r6, =#0xe9ba29b6
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
    ldrb r3, [r0] @ ldrb r3, [r0], #1
    ldrb r3, [r0]
    add r5, r0, #1 @ add r0, r0, #1
    add r5, r0, #1
    mov r0, r5
    mov r0, r5
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
    cmp r4, r1 @ cmp r4, r1
    cmp r4, r1
    @ prepare gsr for branch target
    ldr r6, =#0xe9ba29b6 @ ldr r6, =#0xe9ba29b6
    ldr r6, =#0xe9ba29b6
    bne .L19 @ bne .L19
    bne .L19
    @ only predecessor for .L2008, no D reg usage
.L2008:
    @ check gsr against sig of .L19
    ldr r6, =#0x47f8c83d @ ldr r6, =#0x47f8c83d
    ldr r6, =#0x47f8c83d
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
    cmp r4, sb @ cmp r4, sb
    cmp r4, sb
    add r5, lr, #4 @ add lr, lr, #4
    add r5, lr, #4
    mov lr, r5
    mov lr, r5
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L17 @ bne .L17
    bne .L17
    @ only predecessor for .L2009, no D reg usage
.L2009:
    @ check gsr against sig of .L2008
    ldr r6, =#0xba645a8e @ ldr r6, =#0xba645a8e
    ldr r6, =#0xba645a8e
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
    ldr r3, [sp, #8] @ ldr r3, [sp, #8]
    ldr r3, [sp, #8]
    ldr r2, [sp, #20] @ ldr r2, [sp, #20]
    ldr r2, [sp, #20]
    adds r5, r3, #16 @ adds r3, r3, #16
    adds r5, r3, #16
    mov r3, r5
    mov r3, r5
    cmp r3, r2 @ cmp r3, r2
    cmp r3, r2
    str r3, [sp, #8] @ str r3, [sp, #8]
    str r3, [sp, #8]
    @ prepare gsr for branch target
    ldr r6, =#0x90687eff @ ldr r6, =#0x90687eff
    ldr r6, =#0x90687eff
    bne .L21 @ bne .L21
    bne .L21
    @ only predecessor for .L2010, no D reg usage
.L2010:
    @ check gsr against sig of .L2009
    ldr r6, =#0x8dc3ff83 @ ldr r6, =#0x8dc3ff83
    ldr r6, =#0x8dc3ff83
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
    mov r2, r8 @ mov r2, r8
    mov r2, r8
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L22:
    @ check gsr against sig of .L2010
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x3224c477 @ ldr r6, =#0x3224c477
    ldr r6, =#0x3224c477
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
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L24:
    @ check gsr against sig of .L22
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x895ae40a @ ldr r6, =#0x895ae40a
    ldr r6, =#0x895ae40a
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xc17c6279 @ ldr r5, =#0xc17c6279
    ldr r5, =#0xc17c6279
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    ldrb r1, [r2, r3, lsl #2] @ ldrb r1, [r2, r3, lsl #2]
    ldrb r1, [r2, r3, lsl #2]
    ldr r0, .L38 @ ldr r0, .L38
    ldr r0, .L38
    ldrb r5, [r0, r1] @ ldrb r1, [r0, r1]
    ldrb r5, [r0, r1]
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
    @ prepare gsr for branch target
    ldr r6, =#0x895ae40a @ ldr r6, =#0x895ae40a
    ldr r6, =#0x895ae40a
    bne .L24 @ bne .L24
    bne .L24
    @ only predecessor for .L2011, no D reg usage
.L2011:
    @ check gsr against sig of .L24
    ldr r6, =#0x9ad57dd6 @ ldr r6, =#0x9ad57dd6
    ldr r6, =#0x9ad57dd6
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
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    cmp ip, r2 @ cmp ip, r2
    cmp ip, r2
    @ prepare gsr for branch target
    ldr r6, =#0x21ab5dab @ ldr r6, =#0x21ab5dab
    ldr r6, =#0x21ab5dab
    bne .L22 @ bne .L22
    bne .L22
    @ only predecessor for .L2012, no D reg usage
.L2012:
    @ check gsr against sig of .L2011
    ldr r6, =#0xcef199d0 @ ldr r6, =#0xcef199d0
    ldr r6, =#0xcef199d0
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
    ldrb r1, [r8, #1] @ ldrb r1, [r8, #1]
    ldrb r1, [r8, #1]
    ldrb r3, [r8, #9] @ ldrb r3, [r8, #9]
    ldrb r3, [r8, #9]
    ldrb r2, [r8, #13] @ ldrb r2, [r8, #13]
    ldrb r2, [r8, #13]
    strb r1, [r8, #13] @ strb r1, [r8, #13]
    strb r1, [r8, #13]
    ldrb r1, [r8, #5] @ ldrb r1, [r8, #5]
    ldrb r1, [r8, #5]
    strb r3, [r8, #5] @ strb r3, [r8, #5]
    strb r3, [r8, #5]
    ldrb r3, [r8, #10] @ ldrb r3, [r8, #10]
    ldrb r3, [r8, #10]
    strb r2, [r8, #9] @ strb r2, [r8, #9]
    strb r2, [r8, #9]
    ldrb r2, [r8, #2] @ ldrb r2, [r8, #2]
    ldrb r2, [r8, #2]
    strb r1, [r8, #1] @ strb r1, [r8, #1]
    strb r1, [r8, #1]
    strb r3, [r8, #2] @ strb r3, [r8, #2]
    strb r3, [r8, #2]
    ldrb r1, [r8, #6] @ ldrb r1, [r8, #6]
    ldrb r1, [r8, #6]
    ldrb r3, [r8, #3] @ ldrb r3, [r8, #3]
    ldrb r3, [r8, #3]
    strb r2, [r8, #10] @ strb r2, [r8, #10]
    strb r2, [r8, #10]
    ldrb r2, [r8, #14] @ ldrb r2, [r8, #14]
    ldrb r2, [r8, #14]
    strb r1, [r8, #14] @ strb r1, [r8, #14]
    strb r1, [r8, #14]
    ldrb r1, [r8, #7] @ ldrb r1, [r8, #7]
    ldrb r1, [r8, #7]
    strb r3, [r8, #7] @ strb r3, [r8, #7]
    strb r3, [r8, #7]
    ldrb r3, [r8, #15] @ ldrb r3, [r8, #15]
    ldrb r3, [r8, #15]
    strb r2, [r8, #6] @ strb r2, [r8, #6]
    strb r2, [r8, #6]
    ldrb r2, [r8, #11] @ ldrb r2, [r8, #11]
    ldrb r2, [r8, #11]
    strb r3, [r8, #3] @ strb r3, [r8, #3]
    strb r3, [r8, #3]
    ldr lr, [sp, #8] @ ldr lr, [sp, #8]
    ldr lr, [sp, #8]
    ldr r3, [sp, #28] @ ldr r3, [sp, #28]
    ldr r3, [sp, #28]
    ldr ip, [sp, #4] @ ldr ip, [sp, #4]
    ldr ip, [sp, #4]
    strb r1, [r8, #11] @ strb r1, [r8, #11]
    strb r1, [r8, #11]
    strb r2, [r8, #15] @ strb r2, [r8, #15]
    strb r2, [r8, #15]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L26:
    @ check gsr against sig of .L2012
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x8d1e525b @ ldr r6, =#0x8d1e525b
    ldr r6, =#0x8d1e525b
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x1846d424 @ ldr r5, =#0x1846d424
    ldr r5, =#0x1846d424
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
    mov r1, lr @ mov r1, lr
    mov r1, lr
    adds r4, r3, #4 @ adds r4, r3, #4
    adds r4, r3, #4
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L27:
    @ check gsr against sig of .L26
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x860bba18 @ ldr r6, =#0x860bba18
    ldr r6, =#0x860bba18
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x9e4d6e3c @ ldr r5, =#0x9e4d6e3c
    ldr r5, =#0x9e4d6e3c
    mrs r6, apsr @ mrs r6, apsr
    mrs r6, apsr
    cmp r5, r7 @ cmp r5, r7
    cmp r5, r7
    bne report_error @ bne report_error
    bne report_error
    msr apsr_nzcvq, r6 @ msr apsr_nzcvq, r6
    msr apsr_nzcvq, r6
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
    @ prepare gsr for branch target
    ldr r6, =#0x860bba18 @ ldr r6, =#0x860bba18
    ldr r6, =#0x860bba18
    bne .L27 @ bne .L27
    bne .L27
    @ only predecessor for .L2013, no D reg usage
.L2013:
    @ check gsr against sig of .L27
    ldr r6, =#0x7a0eb144 @ ldr r6, =#0x7a0eb144
    ldr r6, =#0x7a0eb144
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
    cmp r4, ip @ cmp r4, ip
    cmp r4, ip
    add r5, lr, #4 @ add lr, lr, #4
    add r5, lr, #4
    mov lr, r5
    mov lr, r5
    mov r3, r4 @ mov r3, r4
    mov r3, r4
    @ prepare gsr for branch target
    ldr r6, =#0x711b5907 @ ldr r6, =#0x711b5907
    ldr r6, =#0x711b5907
    bne .L26 @ bne .L26
    bne .L26
    @ only predecessor for .L2014, no D reg usage
.L2014:
    @ check gsr against sig of .L2013
    ldr r6, =#0xc39c96b @ ldr r6, =#0xc39c96b
    ldr r6, =#0xc39c96b
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
    add r5, sp, #32 @ add sp, sp, #32
    add r5, sp, #32
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
.L39:
    .align 2
.L38:
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
.L41:
    b .L41 @ b .L41
    b .L41
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
    @ check gsr against sig of .L2016
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x4e594de8 @ ldr r6, =#0x4e594de8
    ldr r6, =#0x4e594de8
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0xcf6a659e @ ldr r5, =#0xcf6a659e
    ldr r5, =#0xcf6a659e
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
    ldr r6, =#0x4e594de8 @ ldr r6, =#0x4e594de8
    ldr r6, =#0x4e594de8
    adr lr, .L1000 @ bl report_done_check_flow
    adr lr, .L1000
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
.L1000:
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
    ldr r7, =#0x88561712 @ ldr r7, =#0x88561712
    ldr r7, =#0x88561712
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
    adr lr, .L1001 @ bl key_expansion_check_flow
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b key_expansion_check_flow
    b key_expansion_check_flow
.L1001:
.L2015:
    @ check gsr against sig of .L2002
    ldr r6, =#0xb5093abb @ ldr r6, =#0xb5093abb
    ldr r6, =#0xb5093abb
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r5, =#0x37ebdcd9 @ ldr r5, =#0x37ebdcd9
    ldr r5, =#0x37ebdcd9
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
    adr lr, .L1002 @ bl cipher_check_flow
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b cipher_check_flow
    b cipher_check_flow
.L1002:
.L2016:
    @ check gsr against sig of .L2014
    ldr r6, =#0x69493e65 @ ldr r6, =#0x69493e65
    ldr r6, =#0x69493e65
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    adr lr, .L1003 @ bl report_done_check_flow
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
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
