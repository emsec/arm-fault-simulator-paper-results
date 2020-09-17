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
    .global sha256_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type sha256_check_flow, %function
sha256_check_flow:
    @ check gsr against sig of verify_and_run_firmware
    ldr r6, =#0xc39c96b
    eor r7, r7, r6
    ldr r5, =#0xe443df78
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
sha256:
    @ args = 0, pretend = 0, frame = 336
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r4, r8, sb, sl, fp, lr}
    sub sp, sp, #336
    add ip, sp, #16
    mov lr, ip
    ldr r4, .L16
    str r0, [sp, #4]
    str r1, [sp, #8]
    str r2, [sp, #12]
    ldmia r4!, {r0, r1, r2, r3}
    stmia lr!, {r0, r1, r2, r3}
    ldm r4, {r0, r1, r2, r3}
    stm lr, {r0, r1, r2, r3}
    movs r0, #0
    mov r2, ip
    add lr, sp, #80
    add r3, sp, #48
    add fp, r4, #16
    @ prepare D reg for going on
    ldr r6, =#0x8fe94b2d
.L2:
    @ check gsr against sig of .L2004
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xc03572d
    eor r7, r7, r6
    ldr r5, =#0x67a9c378
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r1, [sp, #8]
    cmp r1, r0
    @ only predecessor for .L8, no D reg usage
    bls .L8
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of .L2
    ldr r6, =#0xbf85c4b5
    eor r7, r7, r6
    ldr r5, =#0xd82c07cd
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov ip, #0
    ldr r1, [sp, #4]
    add r1, r1, r0
    @ prepare D reg for going on
    mov r6, #0
.L3:
    @ check gsr against sig of .L2000
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x333d607e
    eor r7, r7, r6
    ldr r5, =#0xeb1167b3
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r4, [r1, #1]
    ldrb sb, [r1]
    lsls r4, r4, #16
    orr r8, r4, sb, lsl #24
    ldrb r4, [r1, #3]
    adds r1, r1, #4
    orr r4, r8, r4
    ldrb r8, [r1, #-2]
    orr r4, r4, r8, lsl #8
    str r4, [lr, ip, lsl #2]
    add ip, ip, #1
    cmp ip, #16
    @ prepare gsr for branch target
    ldr r6, =#0x333d607e
    bne .L3
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L3
    ldr r6, =#0x898e080d
    eor r7, r7, r6
    ldr r5, =#0x629f6fbe
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov r4, lr
    @ prepare D reg for going on
    mov r6, #0
.L4:
    @ check gsr against sig of .L2001
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xaa386987
    eor r7, r7, r6
    ldr r5, =#0xc8a70639
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov sb, r4
    ldr r1, [r4, #56]
    ldr r8, [r4, #4]!
    ror ip, r1, #19
    eor ip, ip, r1, ror #17
    eor ip, ip, r1, lsr #10
    ldr r1, [sb, #36]
    ldr sb, [sb]
    add r1, r1, sb
    ror sb, r8, #18
    eor sb, sb, r8, ror #7
    add ip, ip, r1
    eor r8, sb, r8, lsr #3
    add r1, ip, r8
    str r1, [r4, #60]
    add r1, sp, #272
    cmp r1, r4
    @ prepare gsr for branch target
    ldr r6, =#0xaa386987
    bne .L4
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L4
    ldr r6, =#0xaae4a95
    eor r7, r7, r6
    ldr r5, =#0xc2094cac
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov ip, #0
    ldr r1, [r2]
    str r1, [r3]
    ldr r1, [r2, #4]
    str r1, [r3, #4]
    ldr r1, [r2, #8]
    str r1, [r3, #8]
    ldr r1, [r2, #12]
    str r1, [r3, #12]
    ldr r1, [r2, #16]
    str r1, [r3, #16]
    ldr r1, [r2, #20]
    str r1, [r3, #20]
    ldr r1, [r2, #24]
    str r1, [r3, #24]
    ldr r1, [r2, #28]
    str r1, [r3, #28]
    @ prepare D reg for going on
    mov r6, #0
.L6:
    @ check gsr against sig of .L2002
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x8facaba5
    eor r7, r7, r6
    ldr r5, =#0x4da5e709
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r8, [r3, #16]
    ldr r1, [r3, #24]
    ldr r4, [r3, #20]
    ror sb, r8, #11
    and r4, r8, r4
    eor sb, sb, r8, ror #6
    bic r1, r1, r8
    eors r1, r1, r4
    eor r4, sb, r8, ror #25
    add r4, r4, r1
    ldr r1, [r3, #28]
    ldr sl, [r3]
    add r4, r4, r1
    ldr r1, [lr, ip, lsl #2]
    ldr sb, [r3, #4]
    add r4, r4, r1
    ldr r1, [fp, ip, lsl #2]
    ror r8, sl, #13
    add r4, r4, r1
    ldr r1, [r3, #8]
    eor r8, r8, sl, ror #2
    eor r1, r1, sb
    eor r8, r8, sl, ror #22
    and sl, r1, sl
    ldr r1, [r3, #8]
    and sb, sb, r1
    eor r1, sl, sb
    mov sb, #7
    add r8, r8, r1
    add r1, sp, #76
    @ prepare D reg for going on
    ldr r6, =#0x99d4da69
.L5:
    @ check gsr against sig of .L5
    eor r7, r7, r6 @ multiple predecessors, use D reg
    mov r6, #0
    ldr r5, =#0xd4713d60
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr sl, [r1, #-4]!
    subs sb, sb, #1
    str sl, [r1, #4]
    @ prepare gsr for branch target
    mov r6, #0
    bne .L5
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L5
    ldr r6, =#0x37963be2
    eor r7, r7, r6
    ldr r5, =#0xe3e70682
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r1, r4, r8
    str r1, [r3]
    ldr r1, [r3, #16]
    add ip, ip, #1
    add r1, r1, r4
    cmp ip, #64
    str r1, [r3, #16]
    @ prepare gsr for branch target
    ldr r6, =#0x21ee4a2e
    bne .L6
    @ prepare D reg for going on
    mov r6, #0
.L7:
    @ check gsr against sig of .L2003
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x1426bb05
    eor r7, r7, r6
    ldr r5, =#0xf7c1bd87
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r1, [r2, sb, lsl #2]
    ldr r4, [r3, sb, lsl #2]
    add r1, r1, r4
    str r1, [r2, sb, lsl #2]
    add sb, sb, #1
    cmp sb, #8
    @ prepare gsr for branch target
    ldr r6, =#0x1426bb05
    bne .L7
    @ only predecessor for .L2004, no D reg usage
.L2004:
    @ check gsr against sig of .L7
    ldr r6, =#0x9c6b29d2
    eor r7, r7, r6
    ldr r5, =#0x6baa9455
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    adds r0, r0, #64
    @ prepare gsr for branch target
    mov r6, #0
    b .L2
.L8:
    @ check gsr against sig of .L2
    ldr r6, =#0x1dab817c
    eor r7, r7, r6
    ldr r5, =#0x7a024204
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    movs r2, #0
    ldr r3, [sp, #12]
    @ prepare D reg for going on
    mov r6, #0
.L9:
    @ check gsr against sig of .L8
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x21ab5dab
    eor r7, r7, r6
    ldr r5, =#0x5ba91faf
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r1, sp, #16
    ldr r1, [r1, r2, lsl #2]
    adds r2, r2, #1
    lsrs r0, r1, #24
    strb r0, [r3]
    lsrs r0, r1, #16
    strb r0, [r3, #1]
    cmp r2, #8
    lsr r0, r1, #8
    strb r0, [r3, #2]
    strb r1, [r3, #3]
    add r3, r3, #4
    @ prepare gsr for branch target
    ldr r6, =#0x21ab5dab
    bne .L9
    @ only predecessor for .L2005, no D reg usage
.L2005:
    @ check gsr against sig of .L9
    ldr r6, =#0x51f4309b
    eor r7, r7, r6
    ldr r5, =#0xa5d2f34
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add sp, sp, #336
    @ sp needed
    @ return target always has only one predecessor, no D reg usage
    pop {r4, r8, sb, sl, fp, pc}
.L17:
    .align 2
.L16:
    .word .LANCHOR0
    .size sha256_check_flow, .-sha256_check_flow
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
    b .L19
    .size report_error, .-report_error
    .align 1
    .global execute_firmware_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type execute_firmware_check_flow, %function
execute_firmware_check_flow:
    @ check gsr against sig of .L2008
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x62703285
    eor r7, r7, r6
    ldr r5, =#0x9558867f
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
execute_firmware:
    @ Volatile: function does not return.
    @ args = 0, pretend = 0, frame = 0
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r3, lr}
    @ prepare gsr for branch target
    ldr r6, =#0x62703285
    bl execute_firmware_check_flow
    .size execute_firmware_check_flow, .-execute_firmware_check_flow
    .align 1
    .global verify_and_run_firmware
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type verify_and_run_firmware, %function
verify_and_run_firmware:
    ldr r7, =#0xe87a1613 @ initialize gsr
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r4, lr}
    sub sp, sp, #32
    mov r4, r2
    mov r2, sp
    bl sha256_check_flow
.L2006:
    @ check gsr against sig of .L2005
    ldr r6, =#0x4815710e
    eor r7, r7, r6
    ldr r5, =#0x42485e3a
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    movs r3, #0
    @ prepare D reg for going on
    mov r6, #0
.L23:
    @ check gsr against sig of .L2006
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x3e2d9fdf
    eor r7, r7, r6
    ldr r5, =#0x7c65c1e5
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r1, [sp, r3]
    ldrb r2, [r4, r3]
    cmp r1, r2
    @ only predecessor for .L22, no D reg usage
    beq .L22
.L2007:
    bl report_error
    @ only predecessor for .L22, no D reg usage
.L22:
    @ check gsr against sig of .L23
    ldr r6, =#0xfe872787
    eor r7, r7, r6
    ldr r5, =#0x82e2e662
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    adds r3, r3, #1
    cmp r3, #32
    @ prepare gsr for branch target
    ldr r6, =#0xc0aab858
    bne .L23
    @ only predecessor for .L2008, no D reg usage
.L2008:
    @ check gsr against sig of .L22
    ldr r6, =#0x75ca5298
    eor r7, r7, r6
    ldr r5, =#0xf728b4fa
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    @ prepare gsr for branch target
    mov r6, #0
    bl execute_firmware_check_flow
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
