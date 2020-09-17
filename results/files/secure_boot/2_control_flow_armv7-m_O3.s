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
    ldr r6, =#0xcef199d0
    eor r7, r7, r6
    ldr r5, =#0x5ba91faf
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
sha256:
    @ args = 0, pretend = 0, frame = 360
    @ frame_needed = 0, uses_anonymous_args = 0
    mov ip, r1
    push {r4, r8, sb, sl, fp, lr}
    ldr r4, .L18
    sub sp, sp, #360
    add lr, sp, #72
    str r1, [sp, #64]
    str r0, [sp, #68]
    str r2, [sp, #60]
    ldmia r4!, {r0, r1, r2, r3}
    stmia lr!, {r0, r1, r2, r3}
    ldm r4, {r0, r1, r2, r3}
    stm lr, {r0, r1, r2, r3}
    mov r3, ip
    cmp r3, #0
    @ prepare gsr for branch target
    ldr r6, =#0x30038bfa
    beq .L2
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of sha256_check_flow
    ldr r6, =#0x83851862
    eor r7, r7, r6
    ldr r5, =#0xd82c07cd
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    movs r3, #0
    str r3, [sp, #56]
    ldr r3, [sp, #72]
    add sl, sp, #104
    str r3, [sp, #44]
    ldr r3, [sp, #76]
    str r3, [sp, #48]
    ldr r3, [sp, #80]
    str r3, [sp, #24]
    ldr r3, [sp, #84]
    str r3, [sp, #28]
    ldr r3, [sp, #88]
    str r3, [sp, #32]
    ldr r3, [sp, #92]
    str r3, [sp, #52]
    ldr r3, [sp, #96]
    str r3, [sp, #36]
    ldr r3, [sp, #100]
    str r3, [sp, #40]
    add r3, r4, #16
    str r3, [sp, #20]
    @ prepare D reg for going on
    mov r6, #0
.L7:
    @ check gsr against sig of .L2000
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x9589e0c4
    eor r7, r7, r6
    ldr r5, =#0x4da5e709
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #68]
    ldr r2, [sp, #56]
    add r4, sp, #100
    adds r0, r3, r2
    @ prepare D reg for going on
    ldr r6, =#0x2a0c2471
.L3:
    @ check gsr against sig of .L3
    eor r7, r7, r6 @ multiple predecessors, use D reg
    mov r6, #0
    ldr r5, =#0x67a9c378
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
    mov r6, #0
    bne .L3
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L3
    ldr r6, =#0x536acc6
    eor r7, r7, r6
    ldr r5, =#0x629f6fbe
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr ip, [sl]
    mov lr, sl
    mov r8, #16
    mov r0, ip
    ldr r4, [sl, #56]
    ldr r2, [sl, #60]
    @ prepare D reg for going on
    mov r6, #0
.L4:
    @ check gsr against sig of .L2001
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x898e080d
    eor r7, r7, r6
    ldr r5, =#0xeb1167b3
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ror r1, r4, #19
    eor r1, r1, r4, ror #17
    ror ip, r2, #17
    eor r4, r1, r4, lsr #10
    eor ip, ip, r2, ror #19
    ldr r3, [lr, #4]
    add r4, r4, r0
    ldr r1, [lr, #36]
    ldr r0, [lr, #8]
    eor ip, ip, r2, lsr #10
    ldr r2, [lr, #40]
    add r1, r1, r4
    add ip, ip, r2
    ror r4, r3, #18
    ror r2, r0, #7
    eor r4, r4, r3, ror #7
    eor r2, r2, r0, ror #18
    eor r4, r4, r3, lsr #3
    eor r2, r2, r0, lsr #3
    add r3, r3, ip
    add r8, r8, #2
    add r4, r4, r1
    add r2, r2, r3
    cmp r8, #62
    str r4, [lr, #64]
    str r2, [lr, #68]
    add lr, lr, #8
    @ prepare gsr for branch target
    ldr r6, =#0x898e080d
    bne .L4
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L4
    ldr r6, =#0x29182b1f
    eor r7, r7, r6
    ldr r5, =#0xc2094cac
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add ip, sp, #348
    add lr, sp, #288
    @ prepare D reg for going on
    mov r6, #0
.L5:
    @ check gsr against sig of .L2002
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xaae4a95
    eor r7, r7, r6
    ldr r5, =#0xc8a70639
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov r4, lr
    ldr r2, [lr, #56]
    ldr r1, [lr, #4]!
    ror r3, r2, #17
    ldr r0, [r4]
    eor r3, r3, r2, ror #19
    ldr r4, [r4, #36]
    eor r3, r3, r2, lsr #10
    ror r2, r1, #7
    add r0, r0, r4
    eor r2, r2, r1, ror #18
    add r3, r3, r0
    eor r2, r2, r1, lsr #3
    add r3, r3, r2
    str r3, [ip, #4]!
    add r3, sp, #356
    cmp ip, r3
    @ prepare gsr for branch target
    ldr r6, =#0xaae4a95
    bne .L5
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L5
    ldr r6, =#0x2b4000bb
    eor r7, r7, r6
    ldr r5, =#0xe3e70682
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #40]
    ldr sb, [sp, #36]
    str r3, [sp, #8]
    ldr r3, [sp, #52]
    ldr r0, [sp, #32]
    str r3, [sp]
    ldr r3, [sp, #28]
    ldr ip, [sp, #24]
    str r3, [sp, #4]
    ldr r8, [sp, #48]
    ldr r4, [sp, #44]
    mov lr, #0
    @ prepare gsr for branch target
    mov r6, #0
    b .L6
.L19:
    .align 2
.L18:
    .word .LANCHOR0
.L8:
    @ check gsr against sig of .L6
    ldr r6, =#0x23b080e7
    eor r7, r7, r6
    ldr r5, =#0xf7c1bd87
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr sb, [sp]
    mov ip, r8
    str r0, [sp]
    mov r8, r4
    mov r0, r1
    mov r4, r3
    @ prepare D reg for going on
    ldr r6, =#0x1426bb05
.L6:
    @ check gsr against sig of .L2003
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x37963be2
    eor r7, r7, r6
    ldr r5, =#0xd4713d60
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp]
    bic r2, sb, r0
    ands r3, r3, r0
    eors r3, r3, r2
    ldr r2, [sp, #20]
    ror r1, r0, #11
    ldr r2, [r2, lr, lsl #2]
    eor r1, r1, r0, ror #6
    eor r1, r1, r0, ror #25
    add r3, r3, r1
    str r2, [sp, #12]
    ldr r1, [sl, lr, lsl #2]
    ror r2, r4, #13
    eor r2, r2, r4, ror #2
    add r3, r3, r1
    str r2, [sp, #16]
    eor r1, r8, ip
    ldr r2, [sp, #12]
    ands r1, r1, r4
    and fp, r8, ip
    add r3, r3, r2
    eor fp, r1, fp
    ldr r2, [sp, #16]
    ldr r1, [sp, #8]
    eor r2, r2, r4, ror #22
    add r3, r3, r1
    add lr, lr, #1
    ldr r1, [sp, #4]
    add r2, r2, fp
    cmp lr, #64
    add r1, r1, r3
    str ip, [sp, #4]
    add r3, r3, r2
    str sb, [sp, #8]
    @ only predecessor for .L8, no D reg usage
    bne .L8
    @ only predecessor for .L2004, no D reg usage
.L2004:
    @ check gsr against sig of .L6
    ldr r6, =#0xbfdba935
    eor r7, r7, r6
    ldr r5, =#0x6baa9455
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov r2, r1
    ldr r1, [sp, #44]
    add r1, r1, r3
    ldr r3, [sp, #48]
    str r1, [sp, #44]
    add r3, r3, r4
    mov r4, r3
    str r3, [sp, #48]
    ldr r3, [sp, #24]
    str r1, [sp, #72]
    add r3, r3, r8
    str r3, [sp, #24]
    ldr r3, [sp, #28]
    str r4, [sp, #76]
    add r3, r3, ip
    str r3, [sp, #28]
    ldr r3, [sp, #32]
    add r3, r3, r2
    str r3, [sp, #32]
    ldr r3, [sp, #52]
    ldr r2, [sp]
    mov lr, r3
    ldr r3, [sp, #36]
    add lr, lr, r0
    mov r0, lr
    str lr, [sp, #52]
    mov lr, r3
    ldr r3, [sp, #40]
    add lr, lr, r2
    str lr, [sp, #36]
    mov lr, r3
    ldr r2, [sp, #24]
    ldr r3, [sp, #56]
    str r2, [sp, #80]
    ldr r2, [sp, #28]
    adds r3, r3, #64
    str r2, [sp, #84]
    ldr r2, [sp, #32]
    add lr, lr, sb
    str r2, [sp, #88]
    ldr r2, [sp, #36]
    str lr, [sp, #40]
    str r2, [sp, #96]
    ldr r2, [sp, #64]
    str r3, [sp, #56]
    cmp r2, r3
    str r0, [sp, #92]
    str lr, [sp, #100]
    @ prepare gsr for branch target
    ldr r6, =#0xb3869398
    bhi .L7
    @ prepare D reg for going on
    mov r6, #0
.L2:
    @ check gsr against sig of .L2004
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x17cf55b0
    eor r7, r7, r6
    ldr r5, =#0x7c65c1e5
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov r8, #0
    mov r4, r8
    mov ip, r8
    mov lr, r8
    mov r0, r8
    mov r1, r4
    mov r2, r4
    mov fp, r4
    ldr sb, [sp, #72]
    ldr r3, [sp, #60]
    lsr sl, sb, #24
    bfi r8, sl, #0, #8
    lsr sl, sb, #16
    bfi r8, sl, #8, #8
    lsr sl, sb, #8
    bfi r8, sl, #16, #8
    bfi r8, sb, #24, #8
    ldr sb, [sp, #76]
    str r8, [r3]
    lsr r8, sb, #24
    bfi ip, r8, #0, #8
    lsr r8, sb, #16
    bfi ip, r8, #8, #8
    lsr r8, sb, #8
    bfi ip, r8, #16, #8
    ldr r8, [sp, #80]
    bfi ip, sb, #24, #8
    str ip, [r3, #4]
    lsr ip, r8, #24
    bfi lr, ip, #0, #8
    lsr ip, r8, #16
    bfi lr, ip, #8, #8
    lsr ip, r8, #8
    ldr sl, [sp, #84]
    bfi lr, ip, #16, #8
    bfi lr, r8, #24, #8
    str lr, [r3, #8]
    lsr lr, sl, #24
    bfi r4, lr, #0, #8
    lsr lr, sl, #16
    bfi r4, lr, #8, #8
    lsr lr, sl, #8
    ldr sb, [sp, #88]
    bfi r4, lr, #16, #8
    bfi r4, sl, #24, #8
    str r4, [r3, #12]
    lsr r4, sb, #24
    bfi r0, r4, #0, #8
    lsr r4, sb, #16
    ldr r8, [sp, #92]
    bfi r0, r4, #8, #8
    lsr r4, sb, #8
    bfi r0, r4, #16, #8
    ldr ip, [sp, #96]
    bfi r0, sb, #24, #8
    lsr r4, r8, #24
    ldr lr, [sp, #100]
    bfi r1, r4, #0, #8
    str r0, [r3, #16]
    lsr r0, r8, #16
    lsr r4, ip, #24
    bfi r1, r0, #8, #8
    lsr r0, r8, #8
    bfi r2, r4, #0, #8
    bfi r1, r0, #16, #8
    lsr r4, lr, #24
    lsr r0, ip, #16
    bfi fp, r4, #0, #8
    bfi r2, r0, #8, #8
    lsr r0, lr, #16
    bfi fp, r0, #8, #8
    lsr r0, ip, #8
    bfi r2, r0, #16, #8
    lsr r0, lr, #8
    bfi fp, r0, #16, #8
    bfi r1, r8, #24, #8
    bfi r2, ip, #24, #8
    bfi fp, lr, #24, #8
    str r1, [r3, #20]
    str r2, [r3, #24]
    str fp, [r3, #28]
    add sp, sp, #360
    @ sp needed
    @ return target always has only one predecessor, no D reg usage
    pop {r4, r8, sb, sl, fp, pc}
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
.L21:
    b .L21
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
    @ check gsr against sig of .L29
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xf8e0a466
    eor r7, r7, r6
    ldr r5, =#0x7a024204
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
    ldr r6, =#0xf8e0a466
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
    ldr r7, =#0x9558867f @ initialize gsr
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r4, lr}
    mov r4, r2
    sub sp, sp, #32
    mov r2, sp
    bl sha256_check_flow
.L2005:
    @ check gsr against sig of .L2
    ldr r6, =#0x7638eed1
    eor r7, r7, r6
    ldr r5, =#0xa5d2f34
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    subs r2, r4, #1
    add r3, sp, #-1
    add r4, sp, #31
    @ prepare gsr for branch target
    mov r6, #0
    b .L26
.L25:
    @ check gsr against sig of .L26
    ldr r6, =#0xb560eac0
    eor r7, r7, r6
    ldr r5, =#0x42485e3a
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    cmp r3, r4
    @ only predecessor for .L29, no D reg usage
    beq .L29
    @ prepare D reg for going on
    ldr r6, =#0x4815710e
.L26:
    @ check gsr against sig of .L2005
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xfd759bce
    eor r7, r7, r6
    ldr r5, =#0xf728b4fa
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r0, [r3, #1]!
    ldrb r1, [r2, #1]!
    cmp r0, r1
    @ only predecessor for .L25, no D reg usage
    beq .L25
.L2006:
    bl report_error
    @ only predecessor for .L29, no D reg usage
.L29:
    @ check gsr against sig of .L25
    ldr r6, =#0xc0aab858
    eor r7, r7, r6
    ldr r5, =#0x82e2e662
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
