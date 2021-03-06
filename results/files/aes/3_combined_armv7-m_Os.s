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
    .type key_expansion_check_flow, %function
key_expansion_check_flow:
    @ check gsr against sig of AES_ECB_encrypt
    ldr r6, =#0xdd9c7d8 @ ldr r6, =#0xdd9c7d8
    ldr r6, =#0xdd9c7d8
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
key_expansion:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    mov r3, r0 @ mov r3, r0
    mov r3, r0
    stmdb sp, {r4, r8, lr} @ stmdb sp!, {r4, r8, lr}
    stmdb sp, {r4, r8, lr}
    sub r5, sp, #12
    sub r5, sp, #12
    mov sp, r5
    mov sp, r5
    add r2, r1, #16 @ add r2, r1, #16
    add r2, r1, #16
    @ prepare D reg for going on
    ldr r6, =#0xef02d4bb @ ldr r6, =#0xef02d4bb
    ldr r6, =#0xef02d4bb
.L2:
    @ check gsr against sig of .L2
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    mov r6, #0 @ mov r6, #0
    mov r6, #0
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L2 @ bne .L2
    bne .L2
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of .L2
    ldr r6, =#0x61ef2f20 @ ldr r6, =#0x61ef2f20
    ldr r6, =#0x61ef2f20
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
    movs r2, #4 @ movs r2, #4
    movs r2, #4
    ldr ip, .L7 @ ldr ip, .L7
    ldr ip, .L7
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L4:
    @ check gsr against sig of .L2000
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x618e3f15 @ ldr r6, =#0x618e3f15
    ldr r6, =#0x618e3f15
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
    tst r2, #3 @ tst r2, #3
    tst r2, #3
    ldrb r3, [r0, #12] @ ldrb r3, [r0, #12]
    ldrb r3, [r0, #12]
    ldrb lr, [r0, #13] @ ldrb lr, [r0, #13]
    ldrb lr, [r0, #13]
    ldrb r4, [r0, #14] @ ldrb r4, [r0, #14]
    ldrb r4, [r0, #14]
    ldrb r1, [r0, #15] @ ldrb r1, [r0, #15]
    ldrb r1, [r0, #15]
    @ prepare gsr for branch target
    ldr r6, =#0xd4eed5d5 @ ldr r6, =#0xd4eed5d5
    ldr r6, =#0xd4eed5d5
    bne .L3 @ bne .L3
    bne .L3
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L4
    ldr r6, =#0xd4eed5d5 @ ldr r6, =#0xd4eed5d5
    ldr r6, =#0xd4eed5d5
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
    ldrb r8, [ip, lr] @ ldrb r8, [ip, lr]
    ldrb r8, [ip, lr]
    ldrb lr, [ip, r4] @ ldrb lr, [ip, r4]
    ldrb lr, [ip, r4]
    ldrb r4, [ip, r1] @ ldrb r4, [ip, r1]
    ldrb r4, [ip, r1]
    ldrb r1, [ip, r3] @ ldrb r1, [ip, r3]
    ldrb r1, [ip, r3]
    add r3, ip, r2, lsr #2 @ add r3, ip, r2, lsr #2
    add r3, ip, r2, lsr #2
    ldrb r5, [r3, #256] @ ldrb r3, [r3, #256]
    ldrb r5, [r3, #256]
    mov r3, r5
    mov r3, r5
    eor r5, r8, r3 @ eor r3, r8, r3
    eor r5, r8, r3
    mov r3, r5
    mov r3, r5
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L3:
    @ check gsr against sig of .L2001
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xbf0e3289 @ ldr r6, =#0xbf0e3289
    ldr r6, =#0xbf0e3289
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
    ldrb r8, [r0] @ ldrb r8, [r0]
    ldrb r8, [r0]
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    eor r5, r3, r8 @ eor r3, r3, r8
    eor r5, r3, r8
    mov r3, r5
    mov r3, r5
    strb r3, [r0, #16] @ strb r3, [r0, #16]
    strb r3, [r0, #16]
    ldrb r3, [r0, #1] @ ldrb r3, [r0, #1]
    ldrb r3, [r0, #1]
    cmp r2, #44 @ cmp r2, #44
    cmp r2, #44
    eor r5, lr, r3 @ eor lr, lr, r3
    eor r5, lr, r3
    mov lr, r5
    mov lr, r5
    ldrb r3, [r0, #2] @ ldrb r3, [r0, #2]
    ldrb r3, [r0, #2]
    strb lr, [r0, #17] @ strb lr, [r0, #17]
    strb lr, [r0, #17]
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
    @ prepare gsr for branch target
    ldr r6, =#0xa6ed849 @ ldr r6, =#0xa6ed849
    ldr r6, =#0xa6ed849
    bne .L4 @ bne .L4
    bne .L4
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L3
    ldr r6, =#0xcac46011 @ ldr r6, =#0xcac46011
    ldr r6, =#0xcac46011
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
    add r5, sp, #12 @ ldmia sp!, {r4, r8, pc}
    add r5, sp, #12
    mov sp, r5
    mov sp, r5
    sub r5, sp, #12
    sub r5, sp, #12
    ldmia r5, {r4, r8, pc}
    ldmia r5, {r4, r8, pc}
.L8:
    .align 2
.L7:
    .word .LANCHOR0
    .size key_expansion_check_flow, .-key_expansion_check_flow
    .align 1
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type add_round_key_check_flow, %function
add_round_key_check_flow:
    @ check gsr against sig of .L2007
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xcc37e944 @ ldr r6, =#0xcc37e944
    ldr r6, =#0xcc37e944
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
add_round_key:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, lr} @ stmdb sp!, {r4, lr}
    stmdb sp, {r4, lr}
    sub r5, sp, #8
    sub r5, sp, #8
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
    @ prepare D reg for going on
    ldr r6, =#0x642315c1 @ ldr r6, =#0x642315c1
    ldr r6, =#0x642315c1
.L10:
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
    mov lr, r2 @ mov lr, r2
    mov lr, r2
    subs r3, r4, #4 @ subs r3, r4, #4
    subs r3, r4, #4
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L11:
    @ check gsr against sig of .L10
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
    ldrb r0, [lr] @ ldrb r0, [lr], #1
    ldrb r0, [lr]
    add r5, lr, #1 @ add lr, lr, #1
    add r5, lr, #1
    mov lr, r5
    mov lr, r5
    ldrb ip, [r3] @ ldrb ip, [r3]
    ldrb ip, [r3]
    eor r5, r0, ip @ eor r0, r0, ip
    eor r5, r0, ip
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
    @ prepare gsr for branch target
    ldr r6, =#0xbab36873 @ ldr r6, =#0xbab36873
    ldr r6, =#0xbab36873
    bne .L11 @ bne .L11
    bne .L11
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L11
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
    adds r4, r3, #4 @ adds r4, r3, #4
    adds r4, r3, #4
    cmp r4, r1 @ cmp r4, r1
    cmp r4, r1
    add r5, r2, #4 @ add r2, r2, #4
    add r5, r2, #4
    mov r2, r5
    mov r2, r5
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L10 @ bne .L10
    bne .L10
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
    @ return target always has only one predecessor, no D reg usage
    add r5, sp, #8 @ ldmia sp!, {r4, pc}
    add r5, sp, #8
    mov sp, r5
    mov sp, r5
    sub r5, sp, #8
    sub r5, sp, #8
    ldmia r5, {r4, pc}
    ldmia r5, {r4, pc}
    .size add_round_key_check_flow, .-add_round_key_check_flow
    .align 1
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type cipher_check_flow, %function
cipher_check_flow:
    @ check gsr against sig of .L2012
    ldr r6, =#0xb15e843 @ ldr r6, =#0xb15e843
    ldr r6, =#0xb15e843
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
cipher:
    @ args = 0, pretend = 0, frame = 24
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r8, sb, sl, fp, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #24 @ sub sp, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    str r1, [sp, #16] @ str r1, [sp, #16]
    str r1, [sp, #16]
    mov r2, r1 @ mov r2, r1
    mov r2, r1
    mov r4, r0 @ mov r4, r0
    mov r4, r0
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    movs r0, #0 @ movs r0, #0
    movs r0, #0
    @ prepare gsr for branch target
    ldr r6, =#0x4a3c535c @ ldr r6, =#0x4a3c535c
    ldr r6, =#0x4a3c535c
    adr lr, .L1000 @ bl add_round_key_check_flow
    adr lr, .L1000
    orr lr, #1
    orr lr, #1
    b add_round_key_check_flow
    b add_round_key_check_flow
.L1000:
.L2005:
    @ check gsr against sig of .L2004
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
    mov sb, #1 @ mov sb, #1
    mov sb, #1
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L15:
    @ check gsr against sig of .L2005
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x29182b1f @ ldr r6, =#0x29182b1f
    ldr r6, =#0x29182b1f
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
    mov sl, r4 @ mov sl, r4
    mov sl, r4
    adds r2, r4, #4 @ adds r2, r4, #4
    adds r2, r4, #4
    mov r8, r4 @ mov r8, r4
    mov r8, r4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L20 @ b .L20
    b .L20
.L16:
    @ check gsr against sig of .L16
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    mov r6, #0 @ mov r6, #0
    mov r6, #0
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
    ldrb r1, [r8, r3, lsl #2] @ ldrb r1, [r8, r3, lsl #2]
    ldrb r1, [r8, r3, lsl #2]
    ldr r0, .L29 @ ldr r0, .L29
    ldr r0, .L29
    ldrb r5, [r0, r1] @ ldrb r1, [r0, r1]
    ldrb r5, [r0, r1]
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L16 @ bne .L16
    bne .L16
    @ only predecessor for .L2006, no D reg usage
.L2006:
    @ check gsr against sig of .L16
    ldr r6, =#0x2b4000bb @ ldr r6, =#0x2b4000bb
    ldr r6, =#0x2b4000bb
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
    add r5, r8, #1 @ add r8, r8, #1
    add r5, r8, #1
    mov r8, r5
    mov r8, r5
    cmp r2, r8 @ cmp r2, r8
    cmp r2, r8
    @ only predecessor for .L17, no D reg usage
    beq .L17 @ beq .L17
    beq .L17
    @ prepare D reg for going on
    ldr r6, =#0xaae4a95 @ ldr r6, =#0xaae4a95
    ldr r6, =#0xaae4a95
.L20:
    @ check gsr against sig of .L15
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x2a735abf @ ldr r6, =#0x2a735abf
    ldr r6, =#0x2a735abf
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
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    @ prepare gsr for branch target
    ldr r6, =#0xb9d1091 @ ldr r6, =#0xb9d1091
    ldr r6, =#0xb9d1091
    b .L16 @ b .L16
    b .L16
.L17:
    @ check gsr against sig of .L2006
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
    str r3, [sp, #20] @ str r3, [sp, #20]
    str r3, [sp, #20]
    mov r3, r4 @ mov r3, r4
    mov r3, r4
    strb r2, [r4, #11] @ strb r2, [r4, #11]
    strb r2, [r4, #11]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L18:
    @ check gsr against sig of .L17
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x61f7bb61 @ ldr r6, =#0x61f7bb61
    ldr r6, =#0x61f7bb61
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
    ldrb r2, [r3] @ ldrb r2, [r3]
    ldrb r2, [r3]
    ldrb r1, [r3, #1] @ ldrb r1, [r3, #1]
    ldrb r1, [r3, #1]
    ldrb lr, [r3, #2] @ ldrb lr, [r3, #2]
    ldrb lr, [r3, #2]
    eor ip, r2, r1 @ eor ip, r2, r1
    eor ip, r2, r1
    str r2, [sp, #4] @ str r2, [sp, #4]
    str r2, [sp, #4]
    ldrb r2, [r3, #3] @ ldrb r2, [r3, #3]
    ldrb r2, [r3, #3]
    adds r5, r3, #4 @ adds r3, r3, #4
    adds r5, r3, #4
    mov r3, r5
    mov r3, r5
    str r2, [sp, #8] @ str r2, [sp, #8]
    str r2, [sp, #8]
    eor r5, lr, r2 @ eor r2, lr, r2
    eor r5, lr, r2
    mov r2, r5
    mov r2, r5
    eor r0, ip, r2 @ eor r0, ip, r2
    eor r0, ip, r2
    str r2, [sp, #12] @ str r2, [sp, #12]
    str r2, [sp, #12]
    lsr r2, ip, #7 @ lsr r2, ip, #7
    lsr r2, ip, #7
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
    eor r5, r2, ip, lsl #1 @ eor ip, r2, ip, lsl #1
    eor r5, r2, ip, lsl #1
    mov ip, r5
    mov ip, r5
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    eor r5, ip, r2 @ eor ip, ip, r2
    eor r5, ip, r2
    mov ip, r5
    mov ip, r5
    strb ip, [r3, #-4] @ strb ip, [r3, #-4]
    strb ip, [r3, #-4]
    eor ip, r1, lr @ eor ip, r1, lr
    eor ip, r1, lr
    lsr r2, ip, #7 @ lsr r2, ip, #7
    lsr r2, ip, #7
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
    eors r5, r1, r0 @ eors r1, r1, r0
    eors r5, r1, r0
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
    strb r2, [r3, #-3] @ strb r2, [r3, #-3]
    strb r2, [r3, #-3]
    ldr r2, [sp, #12] @ ldr r2, [sp, #12]
    ldr r2, [sp, #12]
    eor r5, lr, r0 @ eor lr, lr, r0
    eor r5, lr, r0
    mov lr, r5
    mov lr, r5
    lsrs r5, r2, #7 @ lsrs r2, r2, #7
    lsrs r5, r2, #7
    mov r2, r5
    mov r2, r5
    lsls r1, r2, #1 @ lsls r1, r2, #1
    lsls r1, r2, #1
    add r5, r2, r1 @ add r2, r2, r1
    add r5, r2, r1
    mov r2, r5
    mov r2, r5
    ldr r1, [sp, #12] @ ldr r1, [sp, #12]
    ldr r1, [sp, #12]
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r2, r1, lsl #1 @ eor r2, r2, r1, lsl #1
    eor r5, r2, r1, lsl #1
    mov r2, r5
    mov r2, r5
    eor r5, r2, lr @ eor r2, r2, lr
    eor r5, r2, lr
    mov r2, r5
    mov r2, r5
    strb r2, [r3, #-2] @ strb r2, [r3, #-2]
    strb r2, [r3, #-2]
    ldr r1, [sp, #8] @ ldr r1, [sp, #8]
    ldr r1, [sp, #8]
    ldr r2, [sp, #4] @ ldr r2, [sp, #4]
    ldr r2, [sp, #4]
    eors r5, r1, r2 @ eors r1, r1, r2
    eors r5, r1, r2
    mov r1, r5
    mov r1, r5
    lsrs r2, r1, #7 @ lsrs r2, r1, #7
    lsrs r2, r1, #7
    lsl lr, r2, #1 @ lsl lr, r2, #1
    lsl lr, r2, #1
    add r5, r2, lr @ add r2, r2, lr
    add r5, r2, lr
    mov r2, r5
    mov r2, r5
    add r5, r2, r2, lsl #3 @ add r2, r2, r2, lsl #3
    add r5, r2, r2, lsl #3
    mov r2, r5
    mov r2, r5
    eor r5, r2, r1, lsl #1 @ eor r2, r2, r1, lsl #1
    eor r5, r2, r1, lsl #1
    mov r2, r5
    mov r2, r5
    ldr r1, [sp, #8] @ ldr r1, [sp, #8]
    ldr r1, [sp, #8]
    eors r5, r0, r1 @ eors r0, r0, r1
    eors r5, r0, r1
    mov r0, r5
    mov r0, r5
    eors r5, r2, r0 @ eors r2, r2, r0
    eors r5, r2, r0
    mov r2, r5
    mov r2, r5
    strb r2, [r3, #-1] @ strb r2, [r3, #-1]
    strb r2, [r3, #-1]
    ldr r2, [sp, #20] @ ldr r2, [sp, #20]
    ldr r2, [sp, #20]
    cmp r2, r3 @ cmp r2, r3
    cmp r2, r3
    @ prepare gsr for branch target
    ldr r6, =#0x61f7bb61 @ ldr r6, =#0x61f7bb61
    ldr r6, =#0x61f7bb61
    bne .L18 @ bne .L18
    bne .L18
    @ only predecessor for .L2007, no D reg usage
.L2007:
    @ check gsr against sig of .L18
    ldr r6, =#0xde2c1254 @ ldr r6, =#0xde2c1254
    ldr r6, =#0xde2c1254
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
    mov r0, sb @ mov r0, sb
    mov r0, sb
    add r5, sb, #1 @ add sb, sb, #1
    add r5, sb, #1
    mov sb, r5
    mov sb, r5
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    mov r1, r4 @ mov r1, r4
    mov r1, r4
    uxtb r5, sb @ uxtb sb, sb
    uxtb r5, sb
    mov sb, r5
    mov sb, r5
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    adr lr, .L1001 @ bl add_round_key_check_flow
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b add_round_key_check_flow
    b add_round_key_check_flow
.L1001:
.L2008:
    @ check gsr against sig of .L2004
    ldr r6, =#0x2a0c2471 @ ldr r6, =#0x2a0c2471
    ldr r6, =#0x2a0c2471
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
    cmp sb, #10 @ cmp sb, #10
    cmp sb, #10
    @ prepare gsr for branch target
    ldr r6, =#0xa6b480ba @ ldr r6, =#0xa6b480ba
    ldr r6, =#0xa6b480ba
    bne .L15 @ bne .L15
    bne .L15
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
    ldr r2, .L29 @ ldr r2, .L29
    ldr r2, .L29
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L22:
    @ check gsr against sig of .L2009
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x76f295f1 @ ldr r6, =#0x76f295f1
    ldr r6, =#0x76f295f1
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
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    @ prepare D reg for going on
    ldr r6, =#0xb6d8f4af @ ldr r6, =#0xb6d8f4af
    ldr r6, =#0xb6d8f4af
.L21:
    @ check gsr against sig of .L21
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    mov r6, #0 @ mov r6, #0
    mov r6, #0
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
    ldrb r1, [sl, r3, lsl #2] @ ldrb r1, [sl, r3, lsl #2]
    ldrb r1, [sl, r3, lsl #2]
    ldrb r5, [r2, r1] @ ldrb r1, [r2, r1]
    ldrb r5, [r2, r1]
    mov r1, r5
    mov r1, r5
    strb r1, [sl, r3, lsl #2] @ strb r1, [sl, r3, lsl #2]
    strb r1, [sl, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L21 @ bne .L21
    bne .L21
    @ only predecessor for .L2010, no D reg usage
.L2010:
    @ check gsr against sig of .L21
    ldr r6, =#0x4de99edd @ ldr r6, =#0x4de99edd
    ldr r6, =#0x4de99edd
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
    add r5, sl, #1 @ add sl, sl, #1
    add r5, sl, #1
    mov sl, r5
    mov sl, r5
    cmp r8, sl @ cmp r8, sl
    cmp r8, sl
    @ prepare gsr for branch target
    ldr r6, =#0x8dc3ff83 @ ldr r6, =#0x8dc3ff83
    ldr r6, =#0x8dc3ff83
    bne .L22 @ bne .L22
    bne .L22
    @ only predecessor for .L2011, no D reg usage
.L2011:
    @ check gsr against sig of .L2010
    ldr r6, =#0x21ab5dab @ ldr r6, =#0x21ab5dab
    ldr r6, =#0x21ab5dab
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
    mov r1, r4 @ mov r1, r4
    mov r1, r4
    movs r0, #10 @ movs r0, #10
    movs r0, #10
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
    strb r2, [r4, #11] @ strb r2, [r4, #11]
    strb r2, [r4, #11]
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    add r5, sp, #24 @ add sp, sp, #24
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    @ sp needed
    ldmia sp, {r4, r8, sb, sl, fp, lr} @ ldmia sp!, {r4, r8, sb, sl, fp, lr}
    ldmia sp, {r4, r8, sb, sl, fp, lr}
    add r5, sp, #24
    add r5, sp, #24
    mov sp, r5
    mov sp, r5
    @ prepare gsr for branch target
    ldr r6, =#0x8fd822cf @ ldr r6, =#0x8fd822cf
    ldr r6, =#0x8fd822cf
    b add_round_key_check_flow @ b add_round_key_check_flow
    b add_round_key_check_flow
.L30:
    .align 2
.L29:
    .word .LANCHOR0
    .size cipher_check_flow, .-cipher_check_flow
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
    .global report_done_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type report_done_check_flow, %function
report_done_check_flow:
    @ check gsr against sig of .L2013
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xa462f18f @ ldr r6, =#0xa462f18f
    ldr r6, =#0xa462f18f
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
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
    ldr r6, =#0xa462f18f @ ldr r6, =#0xa462f18f
    ldr r6, =#0xa462f18f
    adr lr, .L1002 @ bl report_done_check_flow
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
.L1002:
    .size report_done_check_flow, .-report_done_check_flow
    .align 1
    .global AES_ECB_encrypt
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type AES_ECB_encrypt, %function
AES_ECB_encrypt:
    ldr r7, =#0xc17c6279 @ ldr r7, =#0xc17c6279
    ldr r7, =#0xc17c6279
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
    adr lr, .L1003 @ bl key_expansion_check_flow
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b key_expansion_check_flow
    b key_expansion_check_flow
.L1003:
.L2012:
    @ check gsr against sig of .L2002
    ldr r6, =#0x17ba601d @ ldr r6, =#0x17ba601d
    ldr r6, =#0x17ba601d
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
    mov r1, sp @ mov r1, sp
    mov r1, sp
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    @ only predecessor for cipher_check_flow, no D reg usage
    adr lr, .L1004 @ bl cipher_check_flow
    adr lr, .L1004
    orr lr, #1
    orr lr, #1
    b cipher_check_flow
    b cipher_check_flow
.L1004:
.L2013:
    @ check gsr against sig of .L2004
    ldr r6, =#0x83ea1c00 @ ldr r6, =#0x83ea1c00
    ldr r6, =#0x83ea1c00
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    adr lr, .L1005 @ bl report_done_check_flow
    adr lr, .L1005
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
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
