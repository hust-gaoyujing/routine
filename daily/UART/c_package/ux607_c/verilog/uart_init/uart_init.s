	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.globl	UART_Init
	.hidden	UART_Init
	.type	UART_Init, @function
UART_Init:
.LFB0:
	.file 1 "/mnt/d/prj/routine/daily/UART/c_package/ux607_c/Libraries/Periph/src/ux607_uart.c"
	.loc 1 19 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	sd	a1,-48(s0)
	.loc 1 20 11
	sw	zero,-20(s0)
	.loc 1 20 26
	sw	zero,-24(s0)
	.loc 1 21 11
	sw	zero,-28(s0)
	.loc 1 25 36
	ld	a5,-48(s0)
	lw	a4,8(a5)
	.loc 1 25 67
	ld	a5,-48(s0)
	lw	a5,12(a5)
	.loc 1 25 50
	or	a5,a4,a5
	sext.w	a4,a5
	.loc 1 26 22
	ld	a5,-48(s0)
	lw	a5,16(a5)
	.loc 1 26 5
	or	a5,a4,a5
	sext.w	a4,a5
	.loc 1 26 51
	ld	a5,-48(s0)
	lw	a5,4(a5)
	.loc 1 25 9
	or	a5,a4,a5
	sw	a5,-20(s0)
	.loc 1 28 12
	ld	a5,-40(s0)
	lw	a4,-20(s0)
	sw	a4,4(a5)
	.loc 1 31 14
	li	a5,15998976
	addiw	a5,a5,1024
	sw	a5,-24(s0)
	.loc 1 35 56
	ld	a5,-48(s0)
	lw	a5,0(a5)
	.loc 1 35 38
	slliw	a5,a5,4
	sext.w	a5,a5
	.loc 1 35 32
	lw	a4,-24(s0)
	divuw	a5,a4,a5
	sext.w	a5,a5
	.loc 1 35 20
	addiw	a5,a5,-1
	sw	a5,-28(s0)
	.loc 1 38 40
	lw	a5,-28(s0)
	slliw	a5,a5,16
	sext.w	a4,a5
	.loc 1 38 13
	ld	a5,-40(s0)
	sw	a4,0(a5)
	.loc 1 39 1
	nop
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	UART_Init, .-UART_Init
	.align	1
	.globl	UART_StructInit
	.hidden	UART_StructInit
	.type	UART_StructInit, @function
UART_StructInit:
.LFB1:
	.loc 1 49 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	.loc 1 51 34
	ld	a5,-24(s0)
	li	a4,114688
	addiw	a4,a4,512
	sw	a4,0(a5)
	.loc 1 52 32
	ld	a5,-24(s0)
	li	a4,65536
	sw	a4,4(a5)
	.loc 1 53 32
	ld	a5,-24(s0)
	li	a4,512
	sw	a4,8(a5)
	.loc 1 54 32
	ld	a5,-24(s0)
	li	a4,1
	sw	a4,12(a5)
	.loc 1 55 31
	ld	a5,-24(s0)
	li	a4,272
	sw	a4,16(a5)
	.loc 1 56 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	UART_StructInit, .-UART_StructInit
	.align	1
	.globl	UART_Cmd
	.hidden	UART_Cmd
	.type	UART_Cmd, @function
UART_Cmd:
.LFB2:
	.loc 1 67 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sw	a5,-28(s0)
	.loc 1 68 6
	lw	a5,-28(s0)
	sext.w	a5,a5
	beqz	a5,.L4
	.loc 1 71 15
	ld	a5,-24(s0)
	lw	a5,4(a5)
	sext.w	a5,a5
	ori	a5,a5,512
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,4(a5)
	.loc 1 78 1
	j	.L6
.L4:
	.loc 1 76 15
	ld	a5,-24(s0)
	lw	a5,4(a5)
	ld	a5,-24(s0)
	sw	zero,4(a5)
.L6:
	.loc 1 78 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	UART_Cmd, .-UART_Cmd
	.align	1
	.globl	UART_GetFlagStatus
	.hidden	UART_GetFlagStatus
	.type	UART_GetFlagStatus, @function
UART_GetFlagStatus:
.LFB3:
	.loc 1 91 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	.loc 1 92 14
	sw	zero,-20(s0)
	.loc 1 94 13
	ld	a5,-40(s0)
	lw	a5,0(a5)
	sext.w	a4,a5
	.loc 1 94 19
	lw	a5,-44(s0)
	and	a5,a5,a4
	sext.w	a5,a5
	.loc 1 94 6
	beqz	a5,.L8
	.loc 1 96 15
	li	a5,1
	sw	a5,-20(s0)
	j	.L9
.L8:
	.loc 1 100 15
	sw	zero,-20(s0)
.L9:
	.loc 1 102 10
	lw	a5,-20(s0)
	.loc 1 103 1
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	UART_GetFlagStatus, .-UART_GetFlagStatus
	.align	1
	.globl	UART_SendData
	.hidden	UART_SendData
	.type	UART_SendData, @function
UART_SendData:
.LFB4:
	.loc 1 113 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	mv	a5,a1
	sb	a5,-25(s0)
	.loc 1 115 13
	lbu	a5,-25(s0)
	sext.w	a4,a5
	ld	a5,-24(s0)
	sw	a4,8(a5)
	.loc 1 116 1
	nop
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	UART_SendData, .-UART_SendData
	.align	1
	.globl	UART_ReceiveData
	.hidden	UART_ReceiveData
	.type	UART_ReceiveData, @function
UART_ReceiveData:
.LFB5:
	.loc 1 125 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	s0,24(sp)
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sd	a0,-24(s0)
	.loc 1 127 25
	ld	a5,-24(s0)
	lw	a5,8(a5)
	sext.w	a5,a5
	.loc 1 127 10
	andi	a5,a5,0xff
	.loc 1 128 1
	mv	a0,a5
	ld	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	UART_ReceiveData, .-UART_ReceiveData
	.hidden	UART_InitStructure
	.comm	UART_InitStructure,20,8
	.align	1
	.globl	main
	.hidden	main
	.type	main, @function
main:
.LFB6:
	.file 2 "/mnt/d/prj/routine/daily/UART/c_package/ux607_c/Project/UART/UART_Init/main.c"
	.loc 2 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sd	ra,8(sp)
	sd	s0,0(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 16 2
	lla	a0,UART_InitStructure
	call	UART_StructInit
	.loc 2 19 2
	lla	a1,UART_InitStructure
	li	a0,268513280
	call	UART_Init
.L15:
	.loc 2 21 8 discriminator 1
	j	.L15
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 3 "/home/gaoyujing/riscv/gcc/riscv-nuclei-elf/include/machine/_default_types.h"
	.file 4 "/home/gaoyujing/riscv/gcc/riscv-nuclei-elf/include/sys/_stdint.h"
	.file 5 "/mnt/d/prj/routine/daily/UART/c_package/ux607_c/Libraries/Core/ux607_type.h"
	.file 6 "/mnt/d/prj/routine/daily/UART/c_package/ux607_c/Libraries/Core/ux607_map.h"
	.file 7 "/mnt/d/prj/routine/daily/UART/c_package/ux607_c/Libraries/Periph/inc/ux607_uart.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x347
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x18
	.4byte	0x40
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x68
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x34
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x5c
	.byte	0x5
	.4byte	0x89
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x68
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0xb5
	.byte	0x7
	.4byte	.LASF11
	.byte	0
	.byte	0x8
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x39
	.byte	0x28
	.4byte	0x9a
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x68
	.byte	0x5
	.byte	0x3b
	.byte	0xe
	.4byte	0xdc
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x3b
	.byte	0x2f
	.4byte	0xc1
	.byte	0x9
	.byte	0xc
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.4byte	0x117
	.byte	0xa
	.string	"CSR"
	.byte	0x6
	.byte	0xc
	.byte	0x11
	.4byte	0x95
	.byte	0
	.byte	0xa
	.string	"CR"
	.byte	0x6
	.byte	0xd
	.byte	0x11
	.4byte	0x95
	.byte	0x4
	.byte	0xa
	.string	"DR"
	.byte	0x6
	.byte	0xe
	.byte	0x11
	.4byte	0x95
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0xf
	.byte	0x3
	.4byte	0xe8
	.byte	0x9
	.byte	0x14
	.byte	0x7
	.byte	0x9
	.byte	0x9
	.4byte	0x16e
	.byte	0xb
	.4byte	.LASF17
	.byte	0x7
	.byte	0xb
	.byte	0xb
	.4byte	0x89
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x7
	.byte	0x10
	.byte	0xb
	.4byte	0x89
	.byte	0x4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x7
	.byte	0x17
	.byte	0xb
	.4byte	0x89
	.byte	0x8
	.byte	0xb
	.4byte	.LASF20
	.byte	0x7
	.byte	0x1a
	.byte	0xb
	.4byte	0x89
	.byte	0xc
	.byte	0xb
	.4byte	.LASF21
	.byte	0x7
	.byte	0x1d
	.byte	0xb
	.4byte	0x89
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0x20
	.byte	0x3
	.4byte	0x123
	.byte	0xc
	.4byte	.LASF40
	.byte	0x2
	.byte	0x5
	.byte	0x12
	.4byte	0x16e
	.byte	0x9
	.byte	0x3
	.8byte	UART_InitStructure
	.byte	0xd
	.4byte	.LASF41
	.byte	0x2
	.byte	0xe
	.byte	0x5
	.4byte	0x55
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7c
	.byte	0x9
	.4byte	0x7d
	.8byte	.LFB5
	.8byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e0
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7c
	.byte	0x28
	.4byte	0x1e0
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x10
	.byte	0x8
	.4byte	0x117
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x70
	.byte	0x6
	.8byte	.LFB4
	.8byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x223
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x70
	.byte	0x22
	.4byte	0x1e0
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x70
	.byte	0x31
	.4byte	0x7d
	.byte	0x2
	.byte	0x91
	.byte	0x67
	.byte	0
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	0xb5
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x273
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.4byte	0x1e0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5a
	.byte	0x3d
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b0
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x42
	.byte	0x1d
	.4byte	0x1e0
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x42
	.byte	0x34
	.4byte	0xdc
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x2de
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.4byte	0x2de
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x10
	.byte	0x8
	.4byte	0x16e
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.byte	0x12
	.byte	0x1e
	.4byte	0x1e0
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x12
	.byte	0x37
	.4byte	0x2de
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x14
	.byte	0xb
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.4byte	.LASF35
	.byte	0x1
	.byte	0x14
	.byte	0x1a
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0x15
	.byte	0xb
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x7
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"integerdivider"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"UARTx"
.LASF41:
	.string	"main"
.LASF5:
	.string	"__uint32_t"
.LASF28:
	.string	"UART_SendData"
.LASF9:
	.string	"uint8_t"
.LASF17:
	.string	"UART_BaudRate"
.LASF30:
	.string	"NewState"
.LASF13:
	.string	"DISABLE"
.LASF26:
	.string	"UART_GetFlagStatus"
.LASF15:
	.string	"FunctionalState"
.LASF32:
	.string	"UART_InitStruct"
.LASF7:
	.string	"long int"
.LASF4:
	.string	"__uint8_t"
.LASF24:
	.string	"Data"
.LASF42:
	.string	"UART_Init"
.LASF34:
	.string	"tmpreg"
.LASF33:
	.string	"bitstatus"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"UART_InitTypeDef"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"UART_InitStructure"
.LASF10:
	.string	"uint32_t"
.LASF6:
	.string	"unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF38:
	.string	"/mnt/d/prj/routine/daily/UART/c_package/ux607_c/Project/UART/UART_Init/main.c"
.LASF18:
	.string	"UART_Parity"
.LASF16:
	.string	"UART_TypeDef"
.LASF27:
	.string	"UART_FLAG"
.LASF20:
	.string	"UART_Br_Gen"
.LASF8:
	.string	"long unsigned int"
.LASF31:
	.string	"UART_StructInit"
.LASF25:
	.string	"UART_ReceiveData"
.LASF35:
	.string	"sysclock"
.LASF37:
	.string	"GNU C17 9.2.0 -march=rv64imafdc -mabi=lp64 -mcmodel=medany -mtune=rocket -g -fvisibility=hidden"
.LASF11:
	.string	"RESET"
.LASF29:
	.string	"UART_Cmd"
.LASF19:
	.string	"UART_Status"
.LASF39:
	.string	"/home/gaoyujing/SRCV-AI-IFICs/ux607_rls_pkg/ux607_cct/riscv-tests/isa/generated"
.LASF21:
	.string	"UART_Mode"
.LASF12:
	.string	"FlagStatus"
.LASF14:
	.string	"ENABLE"
	.ident	"GCC: (GNU) 9.2.0"
