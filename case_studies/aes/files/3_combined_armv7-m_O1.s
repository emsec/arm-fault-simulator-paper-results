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
    ldr r6, =#0x62f06aff @ ldr r6, =#0x62f06aff
    ldr r6, =#0x62f06aff
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
key_expansion:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r8, sb, lr} @ stmdb sp!, {r4, r8, sb, lr}
    stmdb sp, {r4, r8, sb, lr}
    sub r5, sp, #16
    sub r5, sp, #16
    mov sp, r5
    mov sp, r5
    mov r2, r0 @ mov r2, r0
    mov r2, r0
    add r4, r1, #16 @ add r4, r1, #16
    add r4, r1, #16
    @ prepare D reg for going on
    ldr r6, =#0xdf1a75d9 @ ldr r6, =#0xdf1a75d9
    ldr r6, =#0xdf1a75d9
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
    adds r5, r1, #4 @ adds r1, r1, #4
    adds r5, r1, #4
    mov r1, r5
    mov r1, r5
    adds r5, r0, #4 @ adds r0, r0, #4
    adds r5, r0, #4
    mov r0, r5
    mov r0, r5
    cmp r1, r4 @ cmp r1, r4
    cmp r1, r4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L2 @ bne .L2
    bne .L2
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of .L2
    ldr r6, =#0x480de54f @ ldr r6, =#0x480de54f
    ldr r6, =#0x480de54f
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
    mov lr, #4 @ mov lr, #4
    mov lr, #4
    ldr ip, .L9 @ ldr ip, .L9
    ldr ip, .L9
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L4 @ b .L4
    b .L4
.L3:
    @ check gsr against sig of .L2001
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x299b4e1b @ ldr r6, =#0x299b4e1b
    ldr r6, =#0x299b4e1b
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
    ldrb sb, [r3] @ ldrb sb, [r3]
    ldrb sb, [r3]
    eor r5, r1, sb @ eor r1, r1, sb
    eor r5, r1, sb
    mov r1, r5
    mov r1, r5
    strb r1, [r3, #16] @ strb r1, [r3, #16]
    strb r1, [r3, #16]
    ldrb r1, [r3, #1] @ ldrb r1, [r3, #1]
    ldrb r1, [r3, #1]
    eor r5, r8, r1 @ eor r8, r8, r1
    eor r5, r8, r1
    mov r8, r5
    mov r8, r5
    strb r8, [r3, #17] @ strb r8, [r3, #17]
    strb r8, [r3, #17]
    ldrb r1, [r3, #2] @ ldrb r1, [r3, #2]
    ldrb r1, [r3, #2]
    eors r5, r4, r1 @ eors r4, r4, r1
    eors r5, r4, r1
    mov r4, r5
    mov r4, r5
    strb r4, [r3, #18] @ strb r4, [r3, #18]
    strb r4, [r3, #18]
    ldrb r1, [r3, #3] @ ldrb r1, [r3, #3]
    ldrb r1, [r3, #3]
    eors r5, r0, r1 @ eors r0, r0, r1
    eors r5, r0, r1
    mov r0, r5
    mov r0, r5
    strb r0, [r3, #19] @ strb r0, [r3, #19]
    strb r0, [r3, #19]
    add r5, lr, #1 @ add lr, lr, #1
    add r5, lr, #1
    mov lr, r5
    mov lr, r5
    adds r5, r2, #4 @ adds r2, r2, #4
    adds r5, r2, #4
    mov r2, r5
    mov r2, r5
    cmp lr, #44 @ cmp lr, #44
    cmp lr, #44
    @ only predecessor for .L8, no D reg usage
    beq .L8 @ beq .L8
    beq .L8
    @ prepare D reg for going on
    ldr r6, =#0x486cf57a @ ldr r6, =#0x486cf57a
    ldr r6, =#0x486cf57a
.L4:
    @ check gsr against sig of .L2000
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0xaad6f62c @ ldr r6, =#0xaad6f62c
    ldr r6, =#0xaad6f62c
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
    mov r3, r2 @ mov r3, r2
    mov r3, r2
    ldrb r1, [r2, #12] @ ldrb r1, [r2, #12]
    ldrb r1, [r2, #12]
    ldrb r8, [r2, #13] @ ldrb r8, [r2, #13]
    ldrb r8, [r2, #13]
    ldrb r4, [r2, #14] @ ldrb r4, [r2, #14]
    ldrb r4, [r2, #14]
    ldrb r0, [r2, #15] @ ldrb r0, [r2, #15]
    ldrb r0, [r2, #15]
    tst lr, #3 @ tst lr, #3
    tst lr, #3
    @ prepare gsr for branch target
    ldr r6, =#0xcb214d4d @ ldr r6, =#0xcb214d4d
    ldr r6, =#0xcb214d4d
    bne .L3 @ bne .L3
    bne .L3
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L4
    ldr r6, =#0xcb214d4d @ ldr r6, =#0xcb214d4d
    ldr r6, =#0xcb214d4d
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
    ldrb sb, [ip, r8] @ ldrb sb, [ip, r8]
    ldrb sb, [ip, r8]
    ldrb r8, [ip, r4] @ ldrb r8, [ip, r4]
    ldrb r8, [ip, r4]
    ldrb r4, [ip, r0] @ ldrb r4, [ip, r0]
    ldrb r4, [ip, r0]
    ldrb r0, [ip, r1] @ ldrb r0, [ip, r1]
    ldrb r0, [ip, r1]
    add r1, ip, lr, lsr #2 @ add r1, ip, lr, lsr #2
    add r1, ip, lr, lsr #2
    ldrb r5, [r1, #256] @ ldrb r1, [r1, #256]
    ldrb r5, [r1, #256]
    mov r1, r5
    mov r1, r5
    eor r5, sb, r1 @ eor r1, sb, r1
    eor r5, sb, r1
    mov r1, r5
    mov r1, r5
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L3 @ b .L3
    b .L3
.L8:
    @ check gsr against sig of .L3
    ldr r6, =#0x3b80b50b @ ldr r6, =#0x3b80b50b
    ldr r6, =#0x3b80b50b
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
    @ return target always has only one predecessor, no D reg usage
    add r5, sp, #16 @ ldmia sp!, {r4, r8, sb, pc}
    add r5, sp, #16
    mov sp, r5
    mov sp, r5
    sub r5, sp, #16
    sub r5, sp, #16
    ldmia r5, {r4, r8, sb, pc}
    ldmia r5, {r4, r8, sb, pc}
.L10:
    .align 2
.L9:
    .word .LANCHOR0
    .size key_expansion_check_flow, .-key_expansion_check_flow
    .align 1
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type add_round_key_check_flow, %function
add_round_key_check_flow:
    @ check gsr against sig of .L2010
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x810042a8 @ ldr r6, =#0x810042a8
    ldr r6, =#0x810042a8
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
add_round_key:
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r8, lr} @ stmdb sp!, {r4, r8, lr}
    stmdb sp, {r4, r8, lr}
    sub r5, sp, #12
    sub r5, sp, #12
    mov sp, r5
    mov sp, r5
    mov r3, r1 @ mov r3, r1
    mov r3, r1
    add r5, r2, r0, lsl #4 @ add r2, r2, r0, lsl #4
    add r5, r2, r0, lsl #4
    mov r2, r5
    mov r2, r5
    adds r5, r1, #16 @ adds r1, r1, #16
    adds r5, r1, #16
    mov r1, r5
    mov r1, r5
    @ prepare D reg for going on
    ldr r6, =#0x8eedfb9b @ ldr r6, =#0x8eedfb9b
    ldr r6, =#0x8eedfb9b
.L12:
    @ check gsr against sig of .L2002
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x9a6459f7 @ ldr r6, =#0x9a6459f7
    ldr r6, =#0x9a6459f7
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
    add r8, r3, #4 @ add r8, r3, #4
    add r8, r3, #4
    mov lr, r2 @ mov lr, r2
    mov lr, r2
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
    ldrb r4, [lr] @ ldrb r4, [lr], #1
    ldrb r4, [lr]
    add r5, lr, #1 @ add lr, lr, #1
    add r5, lr, #1
    mov lr, r5
    mov lr, r5
    ldrb ip, [r3] @ ldrb ip, [r3]
    ldrb ip, [r3]
    eor r5, r4, ip @ eor r4, r4, ip
    eor r5, r4, ip
    mov r4, r5
    mov r4, r5
    strb r4, [r3] @ strb r4, [r3], #1
    strb r4, [r3]
    add r5, r3, #1 @ add r3, r3, #1
    add r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, r8 @ cmp r3, r8
    cmp r3, r8
    @ prepare gsr for branch target
    ldr r6, =#0xbab36873 @ ldr r6, =#0xbab36873
    ldr r6, =#0xbab36873
    bne .L13 @ bne .L13
    bne .L13
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L13
    ldr r6, =#0x20d73184 @ ldr r6, =#0x20d73184
    ldr r6, =#0x20d73184
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
    adds r5, r2, #4 @ adds r2, r2, #4
    adds r5, r2, #4
    mov r2, r5
    mov r2, r5
    mov r3, r8 @ mov r3, r8
    mov r3, r8
    cmp r1, r8 @ cmp r1, r8
    cmp r1, r8
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L12 @ bne .L12
    bne .L12
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L2002
    ldr r6, =#0xb560eac0 @ ldr r6, =#0xb560eac0
    ldr r6, =#0xb560eac0
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
    add r5, sp, #12 @ ldmia sp!, {r4, r8, pc}
    add r5, sp, #12
    mov sp, r5
    mov sp, r5
    sub r5, sp, #12
    sub r5, sp, #12
    ldmia r5, {r4, r8, pc}
    ldmia r5, {r4, r8, pc}
    .size add_round_key_check_flow, .-add_round_key_check_flow
    .align 1
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type cipher_check_flow, %function
cipher_check_flow:
    @ check gsr against sig of .L2012
    ldr r6, =#0x3a236cf3 @ ldr r6, =#0x3a236cf3
    ldr r6, =#0x3a236cf3
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
cipher:
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    stmdb sp, {r4, r8, sb, sl, fp, lr} @ stmdb sp!, {r4, r8, sb, sl, fp, lr}
    stmdb sp, {r4, r8, sb, sl, fp, lr}
    sub r5, sp, #24
    sub r5, sp, #24
    mov sp, r5
    mov sp, r5
    sub r5, sp, #32 @ sub sp, sp, #32
    sub r5, sp, #32
    mov sp, r5
    mov sp, r5
    mov sb, r0 @ mov sb, r0
    mov sb, r0
    mov r2, r1 @ mov r2, r1
    mov r2, r1
    str r1, [sp, #16] @ str r1, [sp, #16]
    str r1, [sp, #16]
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    movs r0, #0 @ movs r0, #0
    movs r0, #0
    @ prepare gsr for branch target
    ldr r6, =#0xd84c9fe @ ldr r6, =#0xd84c9fe
    ldr r6, =#0xd84c9fe
    adr lr, .L1000 @ bl add_round_key_check_flow
    adr lr, .L1000
    orr lr, #1
    orr lr, #1
    b add_round_key_check_flow
    b add_round_key_check_flow
.L1000:
.L2004:
    @ check gsr against sig of .L2003
    ldr r6, =#0x75ca5298 @ ldr r6, =#0x75ca5298
    ldr r6, =#0x75ca5298
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
    movs r3, #1 @ movs r3, #1
    movs r3, #1
    str r3, [sp, #4] @ str r3, [sp, #4]
    str r3, [sp, #4]
    add r3, sb, #4 @ add r3, sb, #4
    add r3, sb, #4
    str r3, [sp, #24] @ str r3, [sp, #24]
    str r3, [sp, #24]
    add r3, sb, #16 @ add r3, sb, #16
    add r3, sb, #16
    str r3, [sp, #28] @ str r3, [sp, #28]
    str r3, [sp, #28]
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    b .L18 @ b .L18
    b .L18
.L31:
    @ check gsr against sig of .L2008
    ldr r6, =#0x8081804a @ ldr r6, =#0x8081804a
    ldr r6, =#0x8081804a
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
    ldr r4, [sp, #8] @ ldr r4, [sp, #8]
    ldr r4, [sp, #8]
    ldr sb, [sp, #12] @ ldr sb, [sp, #12]
    ldr sb, [sp, #12]
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    mov r1, sb @ mov r1, sb
    mov r1, sb
    ldr r8, [sp, #4] @ ldr r8, [sp, #4]
    ldr r8, [sp, #4]
    mov r0, r8 @ mov r0, r8
    mov r0, r8
    @ prepare gsr for branch target
    ldr r6, =#0x583617a @ ldr r6, =#0x583617a
    ldr r6, =#0x583617a
    adr lr, .L1001 @ bl add_round_key_check_flow
    adr lr, .L1001
    orr lr, #1
    orr lr, #1
    b add_round_key_check_flow
    b add_round_key_check_flow
.L1001:
.L2005:
    @ check gsr against sig of .L2003
    ldr r6, =#0x8b4d751f @ ldr r6, =#0x8b4d751f
    ldr r6, =#0x8b4d751f
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
    mov r3, r8 @ mov r3, r8
    mov r3, r8
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    uxtb r5, r3 @ uxtb r3, r3
    uxtb r5, r3
    mov r3, r5
    mov r3, r5
    str r3, [sp, #4] @ str r3, [sp, #4]
    str r3, [sp, #4]
    cmp r3, #10 @ cmp r3, #10
    cmp r3, #10
    @ only predecessor for .L22, no D reg usage
    beq .L22 @ beq .L22
    beq .L22
    @ prepare D reg for going on
    ldr r6, =#0xfe872787 @ ldr r6, =#0xfe872787
    ldr r6, =#0xfe872787
.L18:
    @ check gsr against sig of .L2004
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x40ebaace @ ldr r6, =#0x40ebaace
    ldr r6, =#0x40ebaace
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
    str sb, [sp, #20] @ str sb, [sp, #20]
    str sb, [sp, #20]
    mov r4, sb @ mov r4, sb
    mov r4, sb
    ldr r1, [sp, #24] @ ldr r1, [sp, #24]
    ldr r1, [sp, #24]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L23:
    @ check gsr against sig of .L18
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
    @ prepare D reg for going on
    ldr r6, =#0xb9d1091 @ ldr r6, =#0xb9d1091
    ldr r6, =#0xb9d1091
.L19:
    @ check gsr against sig of .L19
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
    ldrb r2, [r4, r3, lsl #2] @ ldrb r2, [r4, r3, lsl #2]
    ldrb r2, [r4, r3, lsl #2]
    ldr r0, .L32 @ ldr r0, .L32
    ldr r0, .L32
    ldrb r5, [r0, r2] @ ldrb r2, [r0, r2]
    ldrb r5, [r0, r2]
    mov r2, r5
    mov r2, r5
    strb r2, [r4, r3, lsl #2] @ strb r2, [r4, r3, lsl #2]
    strb r2, [r4, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L19 @ bne .L19
    bne .L19
    @ only predecessor for .L2006, no D reg usage
.L2006:
    @ check gsr against sig of .L19
    ldr r6, =#0x844ec5fa @ ldr r6, =#0x844ec5fa
    ldr r6, =#0x844ec5fa
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
    adds r5, r4, #1 @ adds r4, r4, #1
    adds r5, r4, #1
    mov r4, r5
    mov r4, r5
    cmp r4, r1 @ cmp r4, r1
    cmp r4, r1
    @ prepare gsr for branch target
    ldr r6, =#0xa5a08fd4 @ ldr r6, =#0xa5a08fd4
    ldr r6, =#0xa5a08fd4
    bne .L23 @ bne .L23
    bne .L23
    @ only predecessor for .L2007, no D reg usage
.L2007:
    @ check gsr against sig of .L2006
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
    ldrb r3, [sb, #1] @ ldrb r3, [sb, #1]
    ldrb r3, [sb, #1]
    ldrb r2, [sb, #5] @ ldrb r2, [sb, #5]
    ldrb r2, [sb, #5]
    strb r2, [sb, #1] @ strb r2, [sb, #1]
    strb r2, [sb, #1]
    ldrb r2, [sb, #9] @ ldrb r2, [sb, #9]
    ldrb r2, [sb, #9]
    strb r2, [sb, #5] @ strb r2, [sb, #5]
    strb r2, [sb, #5]
    ldrb r2, [sb, #13] @ ldrb r2, [sb, #13]
    ldrb r2, [sb, #13]
    strb r2, [sb, #9] @ strb r2, [sb, #9]
    strb r2, [sb, #9]
    strb r3, [sb, #13] @ strb r3, [sb, #13]
    strb r3, [sb, #13]
    ldrb r3, [sb, #2] @ ldrb r3, [sb, #2]
    ldrb r3, [sb, #2]
    ldrb r2, [sb, #10] @ ldrb r2, [sb, #10]
    ldrb r2, [sb, #10]
    strb r2, [sb, #2] @ strb r2, [sb, #2]
    strb r2, [sb, #2]
    strb r3, [sb, #10] @ strb r3, [sb, #10]
    strb r3, [sb, #10]
    ldrb r3, [sb, #6] @ ldrb r3, [sb, #6]
    ldrb r3, [sb, #6]
    ldrb r2, [sb, #14] @ ldrb r2, [sb, #14]
    ldrb r2, [sb, #14]
    strb r2, [sb, #6] @ strb r2, [sb, #6]
    strb r2, [sb, #6]
    strb r3, [sb, #14] @ strb r3, [sb, #14]
    strb r3, [sb, #14]
    ldrb r3, [sb, #3] @ ldrb r3, [sb, #3]
    ldrb r3, [sb, #3]
    ldrb r2, [sb, #15] @ ldrb r2, [sb, #15]
    ldrb r2, [sb, #15]
    strb r2, [sb, #3] @ strb r2, [sb, #3]
    strb r2, [sb, #3]
    ldrb r2, [sb, #11] @ ldrb r2, [sb, #11]
    ldrb r2, [sb, #11]
    strb r2, [sb, #15] @ strb r2, [sb, #15]
    strb r2, [sb, #15]
    ldrb r2, [sb, #7] @ ldrb r2, [sb, #7]
    ldrb r2, [sb, #7]
    strb r2, [sb, #11] @ strb r2, [sb, #11]
    strb r2, [sb, #11]
    strb r3, [sb, #7] @ strb r3, [sb, #7]
    strb r3, [sb, #7]
    mov fp, sb @ mov fp, sb
    mov fp, sb
    str r4, [sp, #8] @ str r4, [sp, #8]
    str r4, [sp, #8]
    str sb, [sp, #12] @ str sb, [sp, #12]
    str sb, [sp, #12]
    ldr sb, [sp, #28] @ ldr sb, [sp, #28]
    ldr sb, [sp, #28]
    @ prepare D reg for going on
    mov r6, #0 @ mov r6, #0
    mov r6, #0
.L21:
    @ check gsr against sig of .L2007
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
    ldr r6, =#0x7e49e1cc @ ldr r6, =#0x7e49e1cc
    ldr r6, =#0x7e49e1cc
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
    ldrb r2, [fp] @ ldrb r2, [fp]
    ldrb r2, [fp]
    ldrb r4, [fp, #1] @ ldrb r4, [fp, #1]
    ldrb r4, [fp, #1]
    eor r8, r2, r4 @ eor r8, r2, r4
    eor r8, r2, r4
    ldrb r0, [fp, #2] @ ldrb r0, [fp, #2]
    ldrb r0, [fp, #2]
    ldrb r1, [fp, #3] @ ldrb r1, [fp, #3]
    ldrb r1, [fp, #3]
    eor ip, r0, r1 @ eor ip, r0, r1
    eor ip, r0, r1
    eor lr, r8, ip @ eor lr, r8, ip
    eor lr, r8, ip
    lsr r3, r8, #7 @ lsr r3, r8, #7
    lsr r3, r8, #7
    lsl sl, r3, #1 @ lsl sl, r3, #1
    lsl sl, r3, #1
    add r5, r3, sl @ add r3, r3, sl
    add r5, r3, sl
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
    eor r3, r2, lr @ eor r3, r2, lr
    eor r3, r2, lr
    eor r5, r8, r3 @ eor r8, r8, r3
    eor r5, r8, r3
    mov r8, r5
    mov r8, r5
    strb r8, [fp] @ strb r8, [fp]
    strb r8, [fp]
    eor r8, r4, r0 @ eor r8, r4, r0
    eor r8, r4, r0
    lsr r3, r8, #7 @ lsr r3, r8, #7
    lsr r3, r8, #7
    lsl sl, r3, #1 @ lsl sl, r3, #1
    lsl sl, r3, #1
    add r5, r3, sl @ add r3, r3, sl
    add r5, r3, sl
    mov r3, r5
    mov r3, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eor r5, r3, r8, lsl #1 @ eor r3, r3, r8, lsl #1
    eor r5, r3, r8, lsl #1
    mov r3, r5
    mov r3, r5
    eor r5, r4, lr @ eor r4, r4, lr
    eor r5, r4, lr
    mov r4, r5
    mov r4, r5
    eors r5, r3, r4 @ eors r3, r3, r4
    eors r5, r3, r4
    mov r3, r5
    mov r3, r5
    strb r3, [fp, #1] @ strb r3, [fp, #1]
    strb r3, [fp, #1]
    lsr r3, ip, #7 @ lsr r3, ip, #7
    lsr r3, ip, #7
    lsls r4, r3, #1 @ lsls r4, r3, #1
    lsls r4, r3, #1
    add r5, r3, r4 @ add r3, r3, r4
    add r5, r3, r4
    mov r3, r5
    mov r3, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eor r5, r3, ip, lsl #1 @ eor ip, r3, ip, lsl #1
    eor r5, r3, ip, lsl #1
    mov ip, r5
    mov ip, r5
    eor r5, r0, lr @ eor r0, r0, lr
    eor r5, r0, lr
    mov r0, r5
    mov r0, r5
    eor r5, ip, r0 @ eor r0, ip, r0
    eor r5, ip, r0
    mov r0, r5
    mov r0, r5
    strb r0, [fp, #2] @ strb r0, [fp, #2]
    strb r0, [fp, #2]
    eors r5, r2, r1 @ eors r2, r2, r1
    eors r5, r2, r1
    mov r2, r5
    mov r2, r5
    lsrs r3, r2, #7 @ lsrs r3, r2, #7
    lsrs r3, r2, #7
    lsls r0, r3, #1 @ lsls r0, r3, #1
    lsls r0, r3, #1
    add r5, r3, r0 @ add r3, r3, r0
    add r5, r3, r0
    mov r3, r5
    mov r3, r5
    add r5, r3, r3, lsl #3 @ add r3, r3, r3, lsl #3
    add r5, r3, r3, lsl #3
    mov r3, r5
    mov r3, r5
    eor r5, r3, r2, lsl #1 @ eor r3, r3, r2, lsl #1
    eor r5, r3, r2, lsl #1
    mov r3, r5
    mov r3, r5
    eor r5, r1, lr @ eor r1, r1, lr
    eor r5, r1, lr
    mov r1, r5
    mov r1, r5
    eors r5, r1, r3 @ eors r1, r1, r3
    eors r5, r1, r3
    mov r1, r5
    mov r1, r5
    strb r1, [fp, #3] @ strb r1, [fp, #3]
    strb r1, [fp, #3]
    add r5, fp, #4 @ add fp, fp, #4
    add r5, fp, #4
    mov fp, r5
    mov fp, r5
    cmp fp, sb @ cmp fp, sb
    cmp fp, sb
    @ prepare gsr for branch target
    ldr r6, =#0x7e49e1cc @ ldr r6, =#0x7e49e1cc
    ldr r6, =#0x7e49e1cc
    bne .L21 @ bne .L21
    bne .L21
    @ only predecessor for .L2008, no D reg usage
.L2008:
    @ check gsr against sig of .L21
    ldr r6, =#0x5dff8046 @ ldr r6, =#0x5dff8046
    ldr r6, =#0x5dff8046
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
    @ only predecessor for .L31, no D reg usage
    b .L31 @ b .L31
    b .L31
.L22:
    @ check gsr against sig of .L2005
    ldr r6, =#0x98261e9d @ ldr r6, =#0x98261e9d
    ldr r6, =#0x98261e9d
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
    ldr r1, .L32 @ ldr r1, .L32
    ldr r1, .L32
    ldr r2, [sp, #20] @ ldr r2, [sp, #20]
    ldr r2, [sp, #20]
    @ prepare D reg for going on
    ldr r6, =#0x3032e218 @ ldr r6, =#0x3032e218
    ldr r6, =#0x3032e218
.L29:
    @ check gsr against sig of .L2009
    eor r5, r7, r6 @ eor r7, r7, r6
    eor r5, r7, r6
    mov r7, r5
    mov r7, r5
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
    movs r3, #0 @ movs r3, #0
    movs r3, #0
    @ prepare D reg for going on
    ldr r6, =#0xb6d8f4af @ ldr r6, =#0xb6d8f4af
    ldr r6, =#0xb6d8f4af
.L24:
    @ check gsr against sig of .L24
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
    ldrb r0, [r2, r3, lsl #2] @ ldrb r0, [r2, r3, lsl #2]
    ldrb r0, [r2, r3, lsl #2]
    ldrb r5, [r1, r0] @ ldrb r0, [r1, r0]
    ldrb r5, [r1, r0]
    mov r0, r5
    mov r0, r5
    strb r0, [r2, r3, lsl #2] @ strb r0, [r2, r3, lsl #2]
    strb r0, [r2, r3, lsl #2]
    adds r5, r3, #1 @ adds r3, r3, #1
    adds r5, r3, #1
    mov r3, r5
    mov r3, r5
    cmp r3, #4 @ cmp r3, #4
    cmp r3, #4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L24 @ bne .L24
    bne .L24
    @ only predecessor for .L2009, no D reg usage
.L2009:
    @ check gsr against sig of .L24
    ldr r6, =#0xe39ae1b9 @ ldr r6, =#0xe39ae1b9
    ldr r6, =#0xe39ae1b9
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
    adds r5, r2, #1 @ adds r2, r2, #1
    adds r5, r2, #1
    mov r2, r5
    mov r2, r5
    cmp r2, r4 @ cmp r2, r4
    cmp r2, r4
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    bne .L29 @ bne .L29
    bne .L29
    @ only predecessor for .L2010, no D reg usage
.L2010:
    @ check gsr against sig of .L2009
    ldr r6, =#0x99d4da69 @ ldr r6, =#0x99d4da69
    ldr r6, =#0x99d4da69
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
    ldrb r3, [sb, #1] @ ldrb r3, [sb, #1]
    ldrb r3, [sb, #1]
    ldrb r2, [sb, #5] @ ldrb r2, [sb, #5]
    ldrb r2, [sb, #5]
    strb r2, [sb, #1] @ strb r2, [sb, #1]
    strb r2, [sb, #1]
    ldrb r2, [sb, #9] @ ldrb r2, [sb, #9]
    ldrb r2, [sb, #9]
    strb r2, [sb, #5] @ strb r2, [sb, #5]
    strb r2, [sb, #5]
    ldrb r2, [sb, #13] @ ldrb r2, [sb, #13]
    ldrb r2, [sb, #13]
    strb r2, [sb, #9] @ strb r2, [sb, #9]
    strb r2, [sb, #9]
    strb r3, [sb, #13] @ strb r3, [sb, #13]
    strb r3, [sb, #13]
    ldrb r3, [sb, #2] @ ldrb r3, [sb, #2]
    ldrb r3, [sb, #2]
    ldrb r2, [sb, #10] @ ldrb r2, [sb, #10]
    ldrb r2, [sb, #10]
    strb r2, [sb, #2] @ strb r2, [sb, #2]
    strb r2, [sb, #2]
    strb r3, [sb, #10] @ strb r3, [sb, #10]
    strb r3, [sb, #10]
    ldrb r3, [sb, #6] @ ldrb r3, [sb, #6]
    ldrb r3, [sb, #6]
    ldrb r2, [sb, #14] @ ldrb r2, [sb, #14]
    ldrb r2, [sb, #14]
    strb r2, [sb, #6] @ strb r2, [sb, #6]
    strb r2, [sb, #6]
    strb r3, [sb, #14] @ strb r3, [sb, #14]
    strb r3, [sb, #14]
    ldrb r3, [sb, #3] @ ldrb r3, [sb, #3]
    ldrb r3, [sb, #3]
    ldrb r2, [sb, #15] @ ldrb r2, [sb, #15]
    ldrb r2, [sb, #15]
    strb r2, [sb, #3] @ strb r2, [sb, #3]
    strb r2, [sb, #3]
    ldrb r2, [sb, #11] @ ldrb r2, [sb, #11]
    ldrb r2, [sb, #11]
    strb r2, [sb, #15] @ strb r2, [sb, #15]
    strb r2, [sb, #15]
    ldrb r2, [sb, #7] @ ldrb r2, [sb, #7]
    ldrb r2, [sb, #7]
    strb r2, [sb, #11] @ strb r2, [sb, #11]
    strb r2, [sb, #11]
    strb r3, [sb, #7] @ strb r3, [sb, #7]
    strb r3, [sb, #7]
    ldr r2, [sp, #16] @ ldr r2, [sp, #16]
    ldr r2, [sp, #16]
    mov r1, sb @ mov r1, sb
    mov r1, sb
    movs r0, #10 @ movs r0, #10
    movs r0, #10
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    adr lr, .L1002 @ bl add_round_key_check_flow
    adr lr, .L1002
    orr lr, #1
    orr lr, #1
    b add_round_key_check_flow
    b add_round_key_check_flow
.L1002:
.L2011:
    @ check gsr against sig of .L2003
    ldr r6, =#0xe9097d @ ldr r6, =#0xe9097d
    ldr r6, =#0xe9097d
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
.L33:
    .align 2
.L32:
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
.L35:
    b .L35 @ b .L35
    b .L35
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
    ldr r6, =#0xb34c3ec5 @ ldr r6, =#0xb34c3ec5
    ldr r6, =#0xb34c3ec5
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
    ldr r6, =#0xb34c3ec5 @ ldr r6, =#0xb34c3ec5
    ldr r6, =#0xb34c3ec5
    adr lr, .L1003 @ bl report_done_check_flow
    adr lr, .L1003
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
.L1003:
    .size report_done_check_flow, .-report_done_check_flow
    .align 1
    .global AES_ECB_encrypt
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type AES_ECB_encrypt, %function
AES_ECB_encrypt:
    ldr r7, =#0x9e4d6e3c @ ldr r7, =#0x9e4d6e3c
    ldr r7, =#0x9e4d6e3c
    @ Volatile: function does not return.
    @ args = 0, pretend = 0, frame = 176
    @ frame_needed = 0, uses_anonymous_args = 0
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
    mov r4, r1 @ mov r4, r1
    mov r4, r1
    mov r1, r0 @ mov r1, r0
    mov r1, r0
    mov r0, sp @ mov r0, sp
    mov r0, sp
    adr lr, .L1004 @ bl key_expansion_check_flow
    adr lr, .L1004
    orr lr, #1
    orr lr, #1
    b key_expansion_check_flow
    b key_expansion_check_flow
.L1004:
.L2012:
    @ check gsr against sig of .L8
    ldr r6, =#0x62449620 @ ldr r6, =#0x62449620
    ldr r6, =#0x62449620
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
    mov r1, sp @ mov r1, sp
    mov r1, sp
    mov r0, r4 @ mov r0, r4
    mov r0, r4
    @ only predecessor for cipher_check_flow, no D reg usage
    adr lr, .L1005 @ bl cipher_check_flow
    adr lr, .L1005
    orr lr, #1
    orr lr, #1
    b cipher_check_flow
    b cipher_check_flow
.L1005:
.L2013:
    @ check gsr against sig of .L2011
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
    @ prepare gsr for branch target
    mov r6, #0 @ mov r6, #0
    mov r6, #0
    adr lr, .L1006 @ bl report_done_check_flow
    adr lr, .L1006
    orr lr, #1
    orr lr, #1
    b report_done_check_flow
    b report_done_check_flow
.L1006:
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
