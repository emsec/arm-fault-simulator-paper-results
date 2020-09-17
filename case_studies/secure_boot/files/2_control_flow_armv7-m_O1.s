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
    .global sha256_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type sha256_check_flow, %function
sha256_check_flow:
    @ check gsr against sig of verify_and_run_firmware
    ldr r6, =#0xa294596c
    eor r7, r7, r6
    ldr r5, =#0x81332876
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
sha256:
    @ args = 0, pretend = 0, frame = 336
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r4, r8, sb, sl, fp, lr}
    sub sp, sp, #336
    str r0, [sp, #8]
    mov ip, r1
    str r1, [sp, #4]
    str r2, [sp, #12]
    add r4, sp, #304
    ldr lr, .L20
    ldmia lr!, {r0, r1, r2, r3}
    stmia r4!, {r0, r1, r2, r3}
    ldm lr, {r0, r1, r2, r3}
    stm r4, {r0, r1, r2, r3}
    mov r3, ip
    cmp r3, #0
    @ prepare gsr for branch target
    ldr r6, =#0xea99bc23
    beq .L3
    @ only predecessor for .L2000, no D reg usage
.L2000:
    @ check gsr against sig of sha256_check_flow
    ldr r6, =#0x433a64da
    eor r7, r7, r6
    ldr r5, =#0xc2094cac
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    movs r3, #0
    str r3, [sp]
    add ip, sp, #240
    ldr r3, .L20
    add lr, r3, #284
    add r1, sp, #16
    @ prepare gsr for branch target
    mov r6, #0
    b .L2
.L19:
    @ check gsr against sig of .L2001
    ldr r6, =#0x8178693c
    eor r7, r7, r6
    ldr r5, =#0x629f6fbe
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r4, r4, r2
    str r4, [sp, #16]
    ldr r3, [sp, #32]
    add r2, r2, r3
    str r2, [sp, #32]
    cmp sl, lr
    @ only predecessor for .L18, no D reg usage
    beq .L18
    @ prepare D reg for going on
    mov r6, #0
.L7:
    @ check gsr against sig of .L19
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xf7c7e9c1
    eor r7, r7, r6
    ldr r5, =#0x9558867f
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r4, [sp, #32]
    ldr r3, [sp, #40]
    bic r2, r3, r4
    ldr r0, [sp, #36]
    ands r0, r0, r4
    eors r2, r2, r0
    ror r3, r4, #11
    eor r3, r3, r4, ror #6
    eor r3, r3, r4, ror #25
    add r2, r2, r3
    ldr r3, [sp, #44]
    add r2, r2, r3
    ldr r3, [sl, #4]!
    add r2, r2, r3
    ldr r3, [fp, #4]!
    add r2, r2, r3
    ldr sb, [sp, #16]
    ldr r0, [sp, #20]
    ldr r8, [sp, #24]
    ror r3, sb, #13
    eor r3, r3, sb, ror #2
    eor r3, r3, sb, ror #22
    eor r4, r8, r0
    and r4, r4, sb
    and r0, r0, r8
    eors r4, r4, r0
    add r4, r4, r3
    add r3, sp, #44
    @ prepare D reg for going on
    ldr r6, =#0xcef199d0
.L6:
    @ check gsr against sig of .L6
    eor r7, r7, r6 @ multiple predecessors, use D reg
    mov r6, #0
    ldr r5, =#0x5ba91faf
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r0, [r3, #-4]
    str r0, [r3], #-4
    cmp r3, r1
    @ prepare gsr for branch target
    mov r6, #0
    bne .L6
    @ only predecessor for .L2001, no D reg usage
.L2001:
    @ check gsr against sig of .L6
    ldr r6, =#0xb84e192d
    eor r7, r7, r6
    ldr r5, =#0xe3e70682
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    @ only predecessor for .L19, no D reg usage
    b .L19
.L18:
    @ check gsr against sig of .L19
    ldr r6, =#0xbab36873
    eor r7, r7, r6
    ldr r5, =#0xd82c07cd
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r0, sp, #300
    add r4, sp, #12
    add r8, sp, #332
    @ prepare D reg for going on
    mov r6, #0
.L8:
    @ check gsr against sig of .L18
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x3c6fd8b5
    eor r7, r7, r6
    ldr r5, =#0xe443df78
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [r0, #4]
    ldr r2, [r4, #4]!
    add r3, r3, r2
    str r3, [r0, #4]!
    cmp r8, r0
    @ prepare gsr for branch target
    ldr r6, =#0x3c6fd8b5
    bne .L8
    @ only predecessor for .L2002, no D reg usage
.L2002:
    @ check gsr against sig of .L8
    ldr r6, =#0x8fe94b2d
    eor r7, r7, r6
    ldr r5, =#0x6baa9455
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp]
    adds r3, r3, #64
    str r3, [sp]
    ldr r2, [sp, #4]
    cmp r2, r3
    @ prepare gsr for branch target
    mov r6, #0
    bls .L3
    @ prepare D reg for going on
    ldr r6, =#0xa9a3d8f9
.L2:
    @ check gsr against sig of .L2000
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x167871cc
    eor r7, r7, r6
    ldr r5, =#0xd4713d60
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #8]
    ldr r2, [sp]
    adds r0, r3, r2
    add fp, sp, #44
    mov r4, fp
    @ prepare D reg for going on
    mov r6, #0
.L4:
    @ check gsr against sig of .L2
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x23b080e7
    eor r7, r7, r6
    ldr r5, =#0xf7c1bd87
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r2, [r0]
    ldrb r3, [r0, #1]
    lsls r3, r3, #16
    orr r3, r3, r2, lsl #24
    ldrb r2, [r0, #3]
    orrs r3, r3, r2
    ldrb r2, [r0, #2]
    orr r3, r3, r2, lsl #8
    str r3, [r4, #4]!
    adds r0, r0, #4
    add r3, sp, #108
    cmp r4, r3
    @ prepare gsr for branch target
    ldr r6, =#0x23b080e7
    bne .L4
    @ only predecessor for .L2003, no D reg usage
.L2003:
    @ check gsr against sig of .L4
    ldr r6, =#0xfd9c92b3
    eor r7, r7, r6
    ldr r5, =#0xa5d2f34
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r0, sp, #48
    @ prepare D reg for going on
    mov r6, #0
.L5:
    @ check gsr against sig of .L2003
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x705f6d30
    eor r7, r7, r6
    ldr r5, =#0x7a024204
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov r8, r0
    ldr r2, [r0, #56]
    ldr r4, [r0, #4]!
    ror r3, r2, #19
    eor r3, r3, r2, ror #17
    eor r3, r3, r2, lsr #10
    ldr r2, [r8, #36]
    ldr r8, [r8]
    add r2, r2, r8
    add r3, r3, r2
    ror r2, r4, #18
    eor r2, r2, r4, ror #7
    eor r2, r2, r4, lsr #3
    add r3, r3, r2
    str r3, [r0, #60]
    cmp r0, ip
    @ prepare gsr for branch target
    ldr r6, =#0x705f6d30
    bne .L5
    @ only predecessor for .L2004, no D reg usage
.L2004:
    @ check gsr against sig of .L5
    ldr r6, =#0x384a1c3e
    eor r7, r7, r6
    ldr r5, =#0x42485e3a
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r3, [sp, #304]
    str r3, [sp, #16]
    ldr r3, [sp, #308]
    str r3, [sp, #20]
    ldr r3, [sp, #312]
    str r3, [sp, #24]
    ldr r3, [sp, #316]
    str r3, [sp, #28]
    ldr r3, [sp, #320]
    str r3, [sp, #32]
    ldr r3, [sp, #324]
    str r3, [sp, #36]
    ldr r3, [sp, #328]
    str r3, [sp, #40]
    ldr r3, [sp, #332]
    str r3, [sp, #44]
    ldr r3, .L20
    add sl, r3, #28
    @ prepare gsr for branch target
    ldr r6, =#0x20d73184
    b .L7
.L3:
    @ check gsr against sig of .L2002
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0x260f735c
    eor r7, r7, r6
    ldr r5, =#0x4da5e709
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add r1, sp, #300
    ldr r3, [sp, #12]
    add r0, sp, #332
    @ prepare D reg for going on
    mov r6, #0
.L9:
    @ check gsr against sig of .L3
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xa5dff11a
    eor r7, r7, r6
    ldr r5, =#0xe87a1613
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldr r2, [r1, #4]!
    lsrs r4, r2, #24
    strb r4, [r3]
    lsrs r4, r2, #16
    strb r4, [r3, #1]
    lsrs r4, r2, #8
    strb r4, [r3, #2]
    strb r2, [r3, #3]
    adds r3, r3, #4
    cmp r1, r0
    @ prepare gsr for branch target
    ldr r6, =#0xa5dff11a
    bne .L9
    @ only predecessor for .L2005, no D reg usage
.L2005:
    @ check gsr against sig of .L9
    ldr r6, =#0x1f52a2e9
    eor r7, r7, r6
    ldr r5, =#0xf728b4fa
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    add sp, sp, #336
    @ sp needed
    @ return target always has only one predecessor, no D reg usage
    pop {r4, r8, sb, sl, fp, pc}
.L21:
    .align 2
.L20:
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
.L23:
    b .L23
    .size report_error, .-report_error
    .align 1
    .global execute_firmware_check_flow
    .syntax unified
    .thumb
    .thumb_func
    .fpu softvfp
    .type execute_firmware_check_flow, %function
execute_firmware_check_flow:
    @ check gsr against sig of .L2009
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xdcfabb6a
    eor r7, r7, r6
    ldr r5, =#0x37ebdcd9
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
    ldr r6, =#0xdcfabb6a
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
    ldr r7, =#0x23a7711a @ initialize gsr
    @ args = 0, pretend = 0, frame = 32
    @ frame_needed = 0, uses_anonymous_args = 0
    push {r4, lr}
    sub sp, sp, #32
    mov r4, r2
    mov r2, sp
    bl sha256_check_flow
.L2006:
    @ check gsr against sig of .L2005
    ldr r6, =#0x75ca5298
    eor r7, r7, r6
    ldr r5, =#0x82e2e662
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r2, [sp]
    ldrb r3, [r4]
    cmp r2, r3
    bne .L27
    @ only predecessor for .L2007, no D reg usage
.L2007:
    @ check gsr against sig of .L2006
    ldr r6, =#0xfe872787
    eor r7, r7, r6
    ldr r5, =#0x7c65c1e5
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    mov r3, sp
    mov r2, r4
    add r4, sp, #31
    @ prepare D reg for going on
    mov r6, #0
.L29:
    @ check gsr against sig of .L2007
    eor r7, r7, r6 @ multiple predecessors, use D reg
    ldr r6, =#0xb4c2c7dc
    eor r7, r7, r6
    ldr r5, =#0xc8a70639
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    ldrb r0, [r3, #1]!
    ldrb r1, [r2, #1]!
    cmp r0, r1
    bne .L27
    @ only predecessor for .L2008, no D reg usage
.L2008:
    @ check gsr against sig of .L29
    ldr r6, =#0xaf0ec541
    eor r7, r7, r6
    ldr r5, =#0x67a9c378
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    cmp r3, r4
    @ prepare gsr for branch target
    ldr r6, =#0x1bcc029d
    bne .L29
    @ only predecessor for .L2009, no D reg usage
.L2009:
    @ check gsr against sig of .L2008
    ldr r6, =#0x8cb8a4cb
    eor r7, r7, r6
    ldr r5, =#0xeb1167b3
    mrs r6, apsr
    cmp r5, r7
    bne report_error
    msr apsr_nzcvq, r6
    @ prepare gsr for branch target
    mov r6, #0
    bl execute_firmware_check_flow
.L27:
    bl report_error
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
