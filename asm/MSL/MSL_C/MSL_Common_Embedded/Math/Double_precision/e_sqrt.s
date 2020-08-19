.text

.include "macros.inc"

.global __ieee754_sqrt
__ieee754_sqrt:
/* 80526E2C 0052236C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80526E30 00522370  D8 21 00 08 */	stfd f1, 8(r1)
/* 80526E34 00522374  80 C1 00 08 */	lwz r6, 8(r1)
/* 80526E38 00522378  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80526E3C 0052237C  54 C3 00 56 */	rlwinm r3, r6, 0, 1, 0xb
/* 80526E40 00522380  3C 63 80 10 */	addis r3, r3, 0x8010
/* 80526E44 00522384  28 03 00 00 */	cmplwi r3, 0
/* 80526E48 00522388  40 82 00 18 */	bne lbl_80526E60
/* 80526E4C 0052238C  FC 01 00 72 */	fmul f0, f1, f1
/* 80526E50 00522390  38 00 00 21 */	li r0, 0x21
/* 80526E54 00522394  90 0D E5 80 */	stw r0, lbl_806A3220-_SDA_BASE_(r13)
/* 80526E58 00522398  FC 21 00 2A */	fadd f1, f1, f0
/* 80526E5C 0052239C  48 00 02 10 */	b lbl_8052706C
lbl_80526E60:
/* 80526E60 005223A0  2C 86 00 00 */	cmpwi cr1, r6, 0
/* 80526E64 005223A4  41 85 00 2C */	bgt cr1, lbl_80526E90
/* 80526E68 005223A8  54 C3 00 7E */	clrlwi r3, r6, 1
/* 80526E6C 005223AC  7C 03 1B 79 */	or. r3, r0, r3
/* 80526E70 005223B0  40 82 00 08 */	bne lbl_80526E78
/* 80526E74 005223B4  48 00 01 F8 */	b lbl_8052706C
lbl_80526E78:
/* 80526E78 005223B8  40 84 00 18 */	bge cr1, lbl_80526E90
/* 80526E7C 005223BC  38 00 00 21 */	li r0, 0x21
/* 80526E80 005223C0  3C 60 80 6A */	lis r3, lbl_8069E488@ha
/* 80526E84 005223C4  90 0D E5 80 */	stw r0, lbl_806A3220-_SDA_BASE_(r13)
/* 80526E88 005223C8  C0 23 E4 88 */	lfs f1, lbl_8069E488@l(r3)
/* 80526E8C 005223CC  48 00 01 E0 */	b lbl_8052706C
lbl_80526E90:
/* 80526E90 005223D0  7C C3 A6 71 */	srawi. r3, r6, 0x14
/* 80526E94 005223D4  40 82 00 50 */	bne lbl_80526EE4
/* 80526E98 005223D8  48 00 00 14 */	b lbl_80526EAC
lbl_80526E9C:
/* 80526E9C 005223DC  54 04 AA FE */	srwi r4, r0, 0xb
/* 80526EA0 005223E0  54 00 A8 14 */	slwi r0, r0, 0x15
/* 80526EA4 005223E4  7C C6 23 78 */	or r6, r6, r4
/* 80526EA8 005223E8  38 63 FF EB */	addi r3, r3, -21
lbl_80526EAC:
/* 80526EAC 005223EC  2C 06 00 00 */	cmpwi r6, 0
/* 80526EB0 005223F0  41 82 FF EC */	beq lbl_80526E9C
/* 80526EB4 005223F4  38 E0 00 00 */	li r7, 0
/* 80526EB8 005223F8  48 00 00 0C */	b lbl_80526EC4
lbl_80526EBC:
/* 80526EBC 005223FC  54 C6 08 3C */	slwi r6, r6, 1
/* 80526EC0 00522400  38 E7 00 01 */	addi r7, r7, 1
lbl_80526EC4:
/* 80526EC4 00522404  54 C4 02 D7 */	rlwinm. r4, r6, 0, 0xb, 0xb
/* 80526EC8 00522408  41 82 FF F4 */	beq lbl_80526EBC
/* 80526ECC 0052240C  20 87 00 20 */	subfic r4, r7, 0x20
/* 80526ED0 00522410  38 A7 FF FF */	addi r5, r7, -1
/* 80526ED4 00522414  7C 04 24 30 */	srw r4, r0, r4
/* 80526ED8 00522418  7C 00 38 30 */	slw r0, r0, r7
/* 80526EDC 0052241C  7C 65 18 50 */	subf r3, r5, r3
/* 80526EE0 00522420  7C C6 23 78 */	or r6, r6, r4
lbl_80526EE4:
/* 80526EE4 00522424  38 83 FC 01 */	addi r4, r3, -1023
/* 80526EE8 00522428  54 C5 03 3E */	clrlwi r5, r6, 0xc
/* 80526EEC 0052242C  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 80526EF0 00522430  64 A6 00 10 */	oris r6, r5, 0x10
/* 80526EF4 00522434  41 82 00 14 */	beq lbl_80526F08
/* 80526EF8 00522438  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80526EFC 0052243C  7C 86 32 14 */	add r4, r6, r6
/* 80526F00 00522440  7C C5 22 14 */	add r6, r5, r4
/* 80526F04 00522444  7C 00 02 14 */	add r0, r0, r0
lbl_80526F08:
/* 80526F08 00522448  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80526F0C 0052244C  7C 86 32 14 */	add r4, r6, r6
/* 80526F10 00522450  7C C5 22 14 */	add r6, r5, r4
/* 80526F14 00522454  7C 00 02 14 */	add r0, r0, r0
/* 80526F18 00522458  39 20 00 00 */	li r9, 0
/* 80526F1C 0052245C  39 60 00 00 */	li r11, 0
/* 80526F20 00522460  39 40 00 00 */	li r10, 0
/* 80526F24 00522464  39 80 00 00 */	li r12, 0
/* 80526F28 00522468  3C E0 00 20 */	lis r7, 0x20
/* 80526F2C 0052246C  48 00 00 30 */	b lbl_80526F5C
lbl_80526F30:
/* 80526F30 00522470  7C 8B 3A 14 */	add r4, r11, r7
/* 80526F34 00522474  7C 04 30 00 */	cmpw r4, r6
/* 80526F38 00522478  41 81 00 10 */	bgt lbl_80526F48
/* 80526F3C 0052247C  7D 64 3A 14 */	add r11, r4, r7
/* 80526F40 00522480  7C C4 30 50 */	subf r6, r4, r6
/* 80526F44 00522484  7D 8C 3A 14 */	add r12, r12, r7
lbl_80526F48:
/* 80526F48 00522488  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80526F4C 0052248C  7C 86 32 14 */	add r4, r6, r6
/* 80526F50 00522490  7C C5 22 14 */	add r6, r5, r4
/* 80526F54 00522494  7C 00 02 14 */	add r0, r0, r0
/* 80526F58 00522498  54 E7 F8 7E */	srwi r7, r7, 1
lbl_80526F5C:
/* 80526F5C 0052249C  2C 07 00 00 */	cmpwi r7, 0
/* 80526F60 005224A0  40 82 FF D0 */	bne lbl_80526F30
/* 80526F64 005224A4  3C E0 80 00 */	lis r7, 0x8000
/* 80526F68 005224A8  48 00 00 6C */	b lbl_80526FD4
lbl_80526F6C:
/* 80526F6C 005224AC  7C 0B 30 00 */	cmpw r11, r6
/* 80526F70 005224B0  7D 65 5B 78 */	mr r5, r11
/* 80526F74 005224B4  7D 09 3A 14 */	add r8, r9, r7
/* 80526F78 005224B8  41 80 00 10 */	blt lbl_80526F88
/* 80526F7C 005224BC  40 82 00 44 */	bne lbl_80526FC0
/* 80526F80 005224C0  7C 08 00 40 */	cmplw r8, r0
/* 80526F84 005224C4  41 81 00 3C */	bgt lbl_80526FC0
lbl_80526F88:
/* 80526F88 005224C8  55 04 00 00 */	rlwinm r4, r8, 0, 0, 0
/* 80526F8C 005224CC  7D 28 3A 14 */	add r9, r8, r7
/* 80526F90 005224D0  3C 84 80 00 */	addis r4, r4, 0x8000
/* 80526F94 005224D4  28 04 00 00 */	cmplwi r4, 0
/* 80526F98 005224D8  40 82 00 10 */	bne lbl_80526FA8
/* 80526F9C 005224DC  55 24 00 01 */	rlwinm. r4, r9, 0, 0, 0
/* 80526FA0 005224E0  40 82 00 08 */	bne lbl_80526FA8
/* 80526FA4 005224E4  39 6B 00 01 */	addi r11, r11, 1
lbl_80526FA8:
/* 80526FA8 005224E8  7C 00 40 40 */	cmplw r0, r8
/* 80526FAC 005224EC  7C C5 30 50 */	subf r6, r5, r6
/* 80526FB0 005224F0  40 80 00 08 */	bge lbl_80526FB8
/* 80526FB4 005224F4  38 C6 FF FF */	addi r6, r6, -1
lbl_80526FB8:
/* 80526FB8 005224F8  7C 08 00 50 */	subf r0, r8, r0
/* 80526FBC 005224FC  7D 4A 3A 14 */	add r10, r10, r7
lbl_80526FC0:
/* 80526FC0 00522500  54 05 0F FE */	srwi r5, r0, 0x1f
/* 80526FC4 00522504  7C 86 32 14 */	add r4, r6, r6
/* 80526FC8 00522508  7C C5 22 14 */	add r6, r5, r4
/* 80526FCC 0052250C  7C 00 02 14 */	add r0, r0, r0
/* 80526FD0 00522510  54 E7 F8 7E */	srwi r7, r7, 1
lbl_80526FD4:
/* 80526FD4 00522514  2C 07 00 00 */	cmpwi r7, 0
/* 80526FD8 00522518  40 82 FF 94 */	bne lbl_80526F6C
/* 80526FDC 0052251C  7C C0 03 79 */	or. r0, r6, r0
/* 80526FE0 00522520  41 82 00 58 */	beq lbl_80527038
/* 80526FE4 00522524  C8 02 2C C0 */	lfd f0, lbl_806ADF40-_SDA2_BASE_(r2)
/* 80526FE8 00522528  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 80526FEC 0052252C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80526FF0 00522530  4C 41 13 82 */	cror 2, 1, 2
/* 80526FF4 00522534  40 82 00 44 */	bne lbl_80527038
/* 80526FF8 00522538  3C 0A 00 01 */	addis r0, r10, 1
/* 80526FFC 0052253C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80527000 00522540  28 00 FF FF */	cmplwi r0, 0xffff
/* 80527004 00522544  40 82 00 10 */	bne lbl_80527014
/* 80527008 00522548  39 40 00 00 */	li r10, 0
/* 8052700C 0052254C  39 8C 00 01 */	addi r12, r12, 1
/* 80527010 00522550  48 00 00 28 */	b lbl_80527038
lbl_80527014:
/* 80527014 00522554  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 80527018 00522558  40 81 00 18 */	ble lbl_80527030
/* 8052701C 0052255C  28 00 FF FE */	cmplwi r0, 0xfffe
/* 80527020 00522560  40 82 00 08 */	bne lbl_80527028
/* 80527024 00522564  39 8C 00 01 */	addi r12, r12, 1
lbl_80527028:
/* 80527028 00522568  39 4A 00 02 */	addi r10, r10, 2
/* 8052702C 0052256C  48 00 00 0C */	b lbl_80527038
lbl_80527030:
/* 80527030 00522570  55 40 07 FE */	clrlwi r0, r10, 0x1f
/* 80527034 00522574  7D 4A 02 14 */	add r10, r10, r0
lbl_80527038:
/* 80527038 00522578  55 80 07 FE */	clrlwi r0, r12, 0x1f
/* 8052703C 0052257C  7D 84 0E 70 */	srawi r4, r12, 1
/* 80527040 00522580  2C 00 00 01 */	cmpwi r0, 1
/* 80527044 00522584  55 45 F8 7E */	srwi r5, r10, 1
/* 80527048 00522588  3C 84 3F E0 */	addis r4, r4, 0x3fe0
/* 8052704C 0052258C  40 82 00 08 */	bne lbl_80527054
/* 80527050 00522590  64 A5 80 00 */	oris r5, r5, 0x8000
lbl_80527054:
/* 80527054 00522594  38 03 FC 01 */	addi r0, r3, -1023
/* 80527058 00522598  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8052705C 0052259C  54 00 98 16 */	rlwinm r0, r0, 0x13, 0, 0xb
/* 80527060 005225A0  7C 84 02 14 */	add r4, r4, r0
/* 80527064 005225A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80527068 005225A8  C8 21 00 10 */	lfd f1, 0x10(r1)
lbl_8052706C:
/* 8052706C 005225AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80527070 005225B0  4E 80 00 20 */	blr 
