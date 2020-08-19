.text

.include "macros.inc"

.global ceil
ceil:
/* 8052674C 00521C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80526750 00521C90  D8 21 00 08 */	stfd f1, 8(r1)
/* 80526754 00521C94  80 A1 00 08 */	lwz r5, 8(r1)
/* 80526758 00521C98  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8052675C 00521C9C  54 A3 65 7E */	rlwinm r3, r5, 0xc, 0x15, 0x1f
/* 80526760 00521CA0  38 E3 FC 01 */	addi r7, r3, -1023
/* 80526764 00521CA4  2C 87 00 14 */	cmpwi cr1, r7, 0x14
/* 80526768 00521CA8  40 84 00 94 */	bge cr1, lbl_805267FC
/* 8052676C 00521CAC  2C 07 00 00 */	cmpwi r7, 0
/* 80526770 00521CB0  40 80 00 40 */	bge lbl_805267B0
/* 80526774 00521CB4  C8 42 2C 58 */	lfd f2, lbl_806ADED8-_SDA2_BASE_(r2)
/* 80526778 00521CB8  C8 02 2C 60 */	lfd f0, lbl_806ADEE0-_SDA2_BASE_(r2)
/* 8052677C 00521CBC  FC 22 08 2A */	fadd f1, f2, f1
/* 80526780 00521CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80526784 00521CC4  40 81 00 F4 */	ble lbl_80526878
/* 80526788 00521CC8  2C 05 00 00 */	cmpwi r5, 0
/* 8052678C 00521CCC  40 80 00 10 */	bge lbl_8052679C
/* 80526790 00521CD0  3C A0 80 00 */	lis r5, 0x8000
/* 80526794 00521CD4  38 C0 00 00 */	li r6, 0
/* 80526798 00521CD8  48 00 00 E0 */	b lbl_80526878
lbl_8052679C:
/* 8052679C 00521CDC  7C A0 33 79 */	or. r0, r5, r6
/* 805267A0 00521CE0  41 82 00 D8 */	beq lbl_80526878
/* 805267A4 00521CE4  3C A0 3F F0 */	lis r5, 0x3ff0
/* 805267A8 00521CE8  38 C0 00 00 */	li r6, 0
/* 805267AC 00521CEC  48 00 00 CC */	b lbl_80526878
lbl_805267B0:
/* 805267B0 00521CF0  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 805267B4 00521CF4  38 03 FF FF */	addi r0, r3, 0x000FFFFF@l
/* 805267B8 00521CF8  7C 04 3E 30 */	sraw r4, r0, r7
/* 805267BC 00521CFC  7C A0 20 38 */	and r0, r5, r4
/* 805267C0 00521D00  7C C0 03 79 */	or. r0, r6, r0
/* 805267C4 00521D04  40 82 00 08 */	bne lbl_805267CC
/* 805267C8 00521D08  48 00 00 BC */	b lbl_80526884
lbl_805267CC:
/* 805267CC 00521D0C  C8 42 2C 58 */	lfd f2, lbl_806ADED8-_SDA2_BASE_(r2)
/* 805267D0 00521D10  C8 02 2C 60 */	lfd f0, lbl_806ADEE0-_SDA2_BASE_(r2)
/* 805267D4 00521D14  FC 22 08 2A */	fadd f1, f2, f1
/* 805267D8 00521D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805267DC 00521D1C  40 81 00 9C */	ble lbl_80526878
/* 805267E0 00521D20  2C 05 00 00 */	cmpwi r5, 0
/* 805267E4 00521D24  40 81 00 0C */	ble lbl_805267F0
/* 805267E8 00521D28  7C 60 3E 30 */	sraw r0, r3, r7
/* 805267EC 00521D2C  7C A5 02 14 */	add r5, r5, r0
lbl_805267F0:
/* 805267F0 00521D30  7C A5 20 78 */	andc r5, r5, r4
/* 805267F4 00521D34  38 C0 00 00 */	li r6, 0
/* 805267F8 00521D38  48 00 00 80 */	b lbl_80526878
lbl_805267FC:
/* 805267FC 00521D3C  2C 07 00 33 */	cmpwi r7, 0x33
/* 80526800 00521D40  40 81 00 14 */	ble lbl_80526814
/* 80526804 00521D44  2C 07 04 00 */	cmpwi r7, 0x400
/* 80526808 00521D48  40 82 00 7C */	bne lbl_80526884
/* 8052680C 00521D4C  FC 21 08 2A */	fadd f1, f1, f1
/* 80526810 00521D50  48 00 00 74 */	b lbl_80526884
lbl_80526814:
/* 80526814 00521D54  38 07 FF EC */	addi r0, r7, -20
/* 80526818 00521D58  38 60 FF FF */	li r3, -1
/* 8052681C 00521D5C  7C 64 04 30 */	srw r4, r3, r0
/* 80526820 00521D60  7C C0 20 39 */	and. r0, r6, r4
/* 80526824 00521D64  40 82 00 08 */	bne lbl_8052682C
/* 80526828 00521D68  48 00 00 5C */	b lbl_80526884
lbl_8052682C:
/* 8052682C 00521D6C  C8 42 2C 58 */	lfd f2, lbl_806ADED8-_SDA2_BASE_(r2)
/* 80526830 00521D70  C8 02 2C 60 */	lfd f0, lbl_806ADEE0-_SDA2_BASE_(r2)
/* 80526834 00521D74  FC 22 08 2A */	fadd f1, f2, f1
/* 80526838 00521D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052683C 00521D7C  40 81 00 3C */	ble lbl_80526878
/* 80526840 00521D80  2C 05 00 00 */	cmpwi r5, 0
/* 80526844 00521D84  40 81 00 30 */	ble lbl_80526874
/* 80526848 00521D88  40 86 00 0C */	bne cr1, lbl_80526854
/* 8052684C 00521D8C  38 A5 00 01 */	addi r5, r5, 1
/* 80526850 00521D90  48 00 00 24 */	b lbl_80526874
lbl_80526854:
/* 80526854 00521D94  20 07 00 34 */	subfic r0, r7, 0x34
/* 80526858 00521D98  38 60 00 01 */	li r3, 1
/* 8052685C 00521D9C  7C 60 00 30 */	slw r0, r3, r0
/* 80526860 00521DA0  7C 06 02 14 */	add r0, r6, r0
/* 80526864 00521DA4  7C 00 30 40 */	cmplw r0, r6
/* 80526868 00521DA8  40 80 00 08 */	bge lbl_80526870
/* 8052686C 00521DAC  38 A5 00 01 */	addi r5, r5, 1
lbl_80526870:
/* 80526870 00521DB0  7C 06 03 78 */	mr r6, r0
lbl_80526874:
/* 80526874 00521DB4  7C C6 20 78 */	andc r6, r6, r4
lbl_80526878:
/* 80526878 00521DB8  90 A1 00 08 */	stw r5, 8(r1)
/* 8052687C 00521DBC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80526880 00521DC0  C8 21 00 08 */	lfd f1, 8(r1)
lbl_80526884:
/* 80526884 00521DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80526888 00521DC8  4E 80 00 20 */	blr 
