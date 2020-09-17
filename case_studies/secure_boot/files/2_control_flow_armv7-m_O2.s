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
    .global sha256_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type sha256_check_flow, %function
sha256_check_flow:
    @ check gsr against sig of verify_and_run_firmware
    ldr r6, =#0x6be0e75c
    eor r7, r7, r6
    ldr r5, =#0x48268673
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
sha256:
    @ args = 0, pretend = 0, frame = 360
    @ frame_needed = 0, uses_anonymous_args = 0
    mov ip, r1
    push {r4, r8, sb, sl, fp, lr}
    ldr r4, .L25
    sub sp, sp, #360
    add lr, sp, #40
    str r1, [sp, #28]
    str r0, [sp, #32]
    str r2, [sp, #36]
    ldmia r4!, {r0, r1, r2, r3}
    stmia lr!, {r0, r1, r2, r3}
    ldm r4, {r0, r1, r2, r3}
    stm lr, {r0, r1, r2, r3}
    mov r3, ip
    cmp r3, #0
    @ only predecessor for .L21, no D reg usage
    beq .L21
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of sha256_check_flow
    ldr r6, =#0xabc180f1
    eor r7, r7, r6
    ldr r5, =#0xe3e70682
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    movs r3, #0
    str r3, [sp, #20]
    add r3, r4, #16
    str r3, [sp, #16]
    add r8, sp, #68
    add fp, sp, #72
    @ prepare D reg for going on
    mov r6, #0
.L12:
    @ check gsr against sig of .L2000
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x8178693c
    eor r7, r7, r6
    ldr r5, =#0x629f6fbe
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #32]
    ldr r2, [sp, #20]
    add r4, sp, #100
    adds r0, r3, r2
    @ prepare D reg for going on
    mov r6, #0
.L4:
    @ check gsr against sig of .L12
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x86dcb0c6
    eor r7, r7, r6
    ldr r5, =#0xe443df78
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r3, [r0, #1]
    ldrb r2, [r0]
    ldrb r1, [r0, #3]
    lsls r3, r3, #16
    orr r3, r3, r2, lsl #24
    ldrb r2, [r0, #2]
    orrs r3, r3, r1
    orr r3, r3, r2, lsl #8
    str r3, [r4, #4]!
    add r3, sp, #164
    cmp r3, r4
    add r0, r0, #4
    @ prepare gsr for branch target
    ldr r6, =#0x86dcb0c6
    bne .L4
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L4
    ldr r6, =#0x8fe94b2d
    eor r7, r7, r6
    ldr r5, =#0x6baa9455
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r0, sp, #104
    @ prepare D reg for going on
    mov r6, #0
.L5:
    @ check gsr against sig of .L2001
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x83d08246
    eor r7, r7, r6
    ldr r5, =#0xe87a1613
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov lr, r0
    ldr r2, [r0, #56]
    ldr r1, [r0, #4]!
    ror r3, r2, #19
    ldr r4, [lr, #36]
    eor r3, r3, r2, ror #17
    ldr lr, [lr]
    eor r3, r3, r2, lsr #10
    ror r2, r1, #18
    add r4, r4, lr
    eor r2, r2, r1, ror #7
    add r3, r3, r4
    eor r2, r2, r1, lsr #3
    add r3, r3, r2
    str r3, [r0, #60]
    add r3, sp, #296
    cmp r3, r0
    @ prepare gsr for branch target
    ldr r6, =#0x83d08246
    bne .L5
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L5
    ldr r6, =#0xe2273927
    eor r7, r7, r6
    ldr r5, =#0xa5d2f34
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r2, [sp, #44]
    movs r1, #0
    mov r4, r2
    str r2, [sp, #12]
    ldr r2, [sp, #60]
    ldr r3, [sp, #40]
    ldr sl, [sp, #48]
    str r2, [sp, #4]
    ldr sb, [sp, #56]
    ldr ip, [sp, #64]
    stm fp, {r3, r4, sl}
    str r3, [sp, #24]
    ldr r4, [sp, #4]
    mov lr, r3
    ldr r3, [sp, #52]
    str sb, [fp, #16]
    str r3, [fp, #12]
    str r4, [fp, #20]
    mov r3, sb
    mov r4, ip
    mov sb, r1
    ldr r2, [sp, #68]
    ldr r0, .L25+4
    str ip, [fp, #24]
    str r2, [fp, #28]
    @ prepare D reg for going on
    mov r6, #0
.L10:
    @ check gsr against sig of .L2002
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xd27128f9
    eor r7, r7, r6
    ldr r5, =#0xd82c07cd
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add ip, r2, r0
    add r1, sp, #92
    add r2, sp, #104
    str r1, [sp, #8]
    ldr r0, [r2, sb, lsl #2]
    ldr r1, [sp, #4]
    ror r2, r3, #11
    eor r2, r2, r3, ror #6
    ands r1, r1, r3
    eor r2, r2, r3, ror #25
    bic r3, r4, r3
    eors r3, r3, r1
    ldr r1, [sp, #12]
    add r0, r0, ip
    add r0, r0, r2
    ror ip, lr, #13
    eor r2, sl, r1
    and r2, r2, lr
    and sl, r1, sl
    eor ip, ip, lr, ror #2
    eor lr, ip, lr, ror #22
    eor sl, r2, sl
    add r3, r3, r0
    add lr, lr, sl
    ldr r1, [sp, #8]
    @ prepare gsr for branch target
    mov r6, #0
    b .L7
.L22:
    @ check gsr against sig of .L7
    ldr r6, =#0xff4cdae0
    eor r7, r7, r6
    ldr r5, =#0xc8a70639
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r4, [r1], #-4
    @ prepare D reg for going on
    ldr r6, =#0x108b01f4
.L7:
    @ check gsr against sig of .L10
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xefc7db14
    eor r7, r7, r6
    ldr r5, =#0x37ebdcd9
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    cmp r8, r1
    str r4, [r1, #8]
    @ only predecessor for .L22, no D reg usage
    bne .L22
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L7
    ldr r6, =#0x75a382e3
    eor r7, r7, r6
    ldr r5, =#0x42485e3a
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r1, [fp, #16]
    add sb, sb, #1
    add lr, lr, r3
    cmp sb, #64
    add r3, r3, r1
    str lr, [fp]
    str r3, [fp, #16]
    @ only predecessor for .L23, no D reg usage
    beq .L23
    @ only predecessor for .L2004, no D reg usage
.L2004:
    @ check gsr against sig of .L2003
    ldr r6, =#0xb560eac0
    eor r7, r7, r6
    ldr r5, =#0xf728b4fa
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r1, [fp, #20]
    ldr r2, [fp, #28]
    str r1, [sp, #4]
    ldr r1, [sp, #16]
    ldr r4, [fp, #24]
    ldr r0, [r1, sb, lsl #2]
    ldr r1, [fp, #4]
    ldr sl, [fp, #8]
    str r1, [sp, #12]
    @ prepare gsr for branch target
    ldr r6, =#0xfd759bce
    b .L10
.L23:
    @ check gsr against sig of .L2003
    ldr r6, =#0x9639635a
    eor r7, r7, r6
    ldr r5, =#0xd4713d60
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r3, sp, #40
    add r1, sp, #76
    mov r0, lr
    ldr r2, [sp, #24]
    @ prepare gsr for branch target
    mov r6, #0
    b .L9
.L24:
    @ check gsr against sig of .L9
    ldr r6, =#0xcc96cf7f
    eor r7, r7, r6
    ldr r5, =#0x4da5e709
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r2, [r3]
    ldr r0, [r1], #4
    @ prepare D reg for going on
    ldr r6, =#0x99d4da69
.L9:
    @ check gsr against sig of .L23
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x55421516
    eor r7, r7, r6
    ldr r5, =#0x81332876
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r2, r2, r0
    str r2, [r3], #4
    cmp fp, r3
    @ only predecessor for .L24, no D reg usage
    bne .L24
    @ only predecessor for .L2005, no D reg usage
.L2005:
    @ check gsr against sig of .L9
    ldr r6, =#0x3d1ce14
    eor r7, r7, r6
    ldr r5, =#0x82e2e662
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #20]
    ldr r2, [sp, #28]
    adds r3, r3, #64
    cmp r2, r3
    str r3, [sp, #20]
    @ prepare gsr for branch target
    ldr r6, =#0x6105e0e0
    bhi .L12
    @ prepare D reg for going on
    mov r6, #0
.L13:
    @ check gsr against sig of .L2005
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x40ebaace
    eor r7, r7, r6
    ldr r5, =#0xc2094cac
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #36]
    add r1, sp, #36
    @ prepare D reg for going on
    mov r6, #0
.L3:
    @ check gsr against sig of .L13
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x5751cad3
    eor r7, r7, r6
    ldr r5, =#0x9558867f
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r2, [r1, #4]!
    adds r3, r3, #4
    lsr lr, r2, #24
    lsrs r4, r2, #16
    lsrs r0, r2, #8
    cmp r8, r1
    strb r2, [r3, #-1]
    strb lr, [r3, #-4]
    strb r4, [r3, #-3]
    strb r0, [r3, #-2]
    @ prepare gsr for branch target
    ldr r6, =#0x5751cad3
    bne .L3
    @ only predecessor for .L2006, no D reg usage
.L2006:
    @ check gsr against sig of .L3
    ldr r6, =#0xe93d479a
    eor r7, r7, r6
    ldr r5, =#0x7c65c1e5
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add sp, sp, #360
    @ sp needed
    @ return target always has only one predecessor, no D reg usage
    pop {r4, r8, sb, sl, fp, pc}
.L21:
    @ check gsr against sig of sha256_check_flow
    ldr r6, =#0xa337e1c0
    eor r7, r7, r6
    ldr r5, =#0xeb1167b3
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r8, sp, #68
    @ prepare gsr for branch target
    ldr r6, =#0x69f381d1
    b .L13
.L26:
    .align 2
.L25:
    .word .LANCHOR0
    .word 1116352408
    .size sha256_check_flow, .-sha256_check_flow
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
    b .L28
    .size report_error, .-report_error
    .align 1
    .p2align 2,,3
    .global execute_firmware_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type execute_firmware_check_flow, %function
execute_firmware_check_flow:
    @ check gsr against sig of .L36
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x780e6eb5
    eor r7, r7, r6
    ldr r5, =#0x23a7711a
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
    ldr r6, =#0x780e6eb5
    bl execute_firmware_check_flow
    .size execute_firmware_check_flow, .-execute_firmware_check_flow
    .align 1
    .p2align 2,,3
    .global verify_and_run_firmware
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type verify_and_run_firmware, %function
verify_and_run_firmware:
    ldr r7, =#0x23c6612f @ initialize gsr
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r4, lr}
    mov r4, r2
    sub sp, sp, #32
    mov r2, sp
    bl sha256_check_flow
.L2007:
    @ check gsr against sig of .L2006
    ldr r6, =#0x1bcc029d
    eor r7, r7, r6
    ldr r5, =#0x67a9c378
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    subs r2, r4, #1
    add r3, sp, #-1
    add r4, sp, #31
    @ prepare gsr for branch target
    mov r6, #0
    b .L33
.L32:
    @ check gsr against sig of .L33
    ldr r6, =#0x8dc3ff83
    eor r7, r7, r6
    ldr r5, =#0xf7c1bd87
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    cmp r3, r4
    @ only predecessor for .L36, no D reg usage
    beq .L36
    @ prepare D reg for going on
    ldr r6, =#0x90687eff
.L33:
    @ check gsr against sig of .L2007
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x1dab817c
    eor r7, r7, r6
    ldr r5, =#0x7a024204
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r0, [r3, #1]!
    ldrb r1, [r2, #1]!
    cmp r0, r1
    @ only predecessor for .L32, no D reg usage
    beq .L32
.L2008:
    bl report_error
    @ only predecessor for .L36, no D reg usage
.L36:
    @ check gsr against sig of .L32
    ldr r6, =#0xac68a228
    eor r7, r7, r6
    ldr r5, =#0x5ba91faf
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
