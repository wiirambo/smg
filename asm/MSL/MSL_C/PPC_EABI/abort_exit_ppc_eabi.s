.text

.include "macros.inc"

.global abort
abort:
/* 80522D70 0051E2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522D74 0051E2B4  7C 08 02 A6 */	mflr r0
/* 80522D78 0051E2B8  38 60 00 01 */	li r3, 1
/* 80522D7C 0051E2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522D80 0051E2C0  4B FF B8 D1 */	bl raise
/* 80522D84 0051E2C4  38 00 00 01 */	li r0, 1
/* 80522D88 0051E2C8  38 60 00 01 */	li r3, 1
/* 80522D8C 0051E2CC  90 0D E5 90 */	stw r0, lbl_806A3230-_SDA_BASE_(r13)
/* 80522D90 0051E2D0  4B F8 B7 95 */	bl exit
/* 80522D94 0051E2D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522D98 0051E2D8  7C 08 03 A6 */	mtlr r0
/* 80522D9C 0051E2DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80522DA0 0051E2E0  4E 80 00 20 */	blr 
