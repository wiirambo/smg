.text

.include "macros.inc"

.global frexp
frexp:
/* 80526AD0 00522010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526AD4 00522014  38 80 00 00 */	li r4, 0
/* 80526AD8 00522018  3C 00 7F F0 */	lis r0, 0x7ff0
/* 80526ADC 0052201C  D8 21 00 08 */	stfd f1, 8(r1)
/* 80526AE0 00522020  80 A1 00 08 */	lwz r5, 8(r1)
/* 80526AE4 00522024  90 83 00 00 */	stw r4, 0(r3)
/* 80526AE8 00522028  54 A4 00 7E */	clrlwi r4, r5, 1
/* 80526AEC 0052202C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80526AF0 00522030  7C 04 00 00 */	cmpw r4, r0
/* 80526AF4 00522034  40 80 00 5C */	bge lbl_80526B50
/* 80526AF8 00522038  7C 80 33 79 */	or. r0, r4, r6
/* 80526AFC 0052203C  40 82 00 08 */	bne lbl_80526B04
/* 80526B00 00522040  48 00 00 50 */	b lbl_80526B50
lbl_80526B04:
/* 80526B04 00522044  3C 00 00 10 */	lis r0, 0x10
/* 80526B08 00522048  7C 04 00 00 */	cmpw r4, r0
/* 80526B0C 0052204C  40 80 00 20 */	bge lbl_80526B2C
/* 80526B10 00522050  C8 02 2C 80 */	lfd f0, lbl_806ADF00-_SDA2_BASE_(r2)
/* 80526B14 00522054  38 00 FF CA */	li r0, -54
/* 80526B18 00522058  90 03 00 00 */	stw r0, 0(r3)
/* 80526B1C 0052205C  FC 21 00 32 */	fmul f1, f1, f0
/* 80526B20 00522060  D8 21 00 08 */	stfd f1, 8(r1)
/* 80526B24 00522064  80 A1 00 08 */	lwz r5, 8(r1)
/* 80526B28 00522068  54 A4 00 7E */	clrlwi r4, r5, 1
lbl_80526B2C:
/* 80526B2C 0052206C  54 A0 03 00 */	rlwinm r0, r5, 0, 0xc, 0
/* 80526B30 00522070  80 A3 00 00 */	lwz r5, 0(r3)
/* 80526B34 00522074  7C 84 A6 70 */	srawi r4, r4, 0x14
/* 80526B38 00522078  64 00 3F E0 */	oris r0, r0, 0x3fe0
/* 80526B3C 0052207C  90 01 00 08 */	stw r0, 8(r1)
/* 80526B40 00522080  7C 84 2A 14 */	add r4, r4, r5
/* 80526B44 00522084  38 04 FC 02 */	addi r0, r4, -1022
/* 80526B48 00522088  90 03 00 00 */	stw r0, 0(r3)
/* 80526B4C 0052208C  C8 21 00 08 */	lfd f1, 8(r1)
lbl_80526B50:
/* 80526B50 00522090  38 21 00 10 */	addi r1, r1, 0x10
/* 80526B54 00522094  4E 80 00 20 */	blr 
