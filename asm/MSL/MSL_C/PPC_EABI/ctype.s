.text

.include "macros.inc"

.global tolower
tolower:
/* 80519D74 005152B4  2C 03 00 00 */	cmpwi r3, 0
/* 80519D78 005152B8  38 00 00 00 */	li r0, 0
/* 80519D7C 005152BC  41 80 00 0C */	blt lbl_80519D88
/* 80519D80 005152C0  2C 03 01 00 */	cmpwi r3, 0x100
/* 80519D84 005152C4  41 80 00 08 */	blt lbl_80519D8C
lbl_80519D88:
/* 80519D88 005152C8  38 00 00 01 */	li r0, 1
lbl_80519D8C:
/* 80519D8C 005152CC  2C 00 00 00 */	cmpwi r0, 0
/* 80519D90 005152D0  4C 82 00 20 */	bnelr 
/* 80519D94 005152D4  3C 80 80 5F */	lis r4, lbl_805F51F8@ha
/* 80519D98 005152D8  38 84 51 F8 */	addi r4, r4, lbl_805F51F8@l
/* 80519D9C 005152DC  80 84 00 38 */	lwz r4, 0x38(r4)
/* 80519DA0 005152E0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80519DA4 005152E4  7C 64 18 AE */	lbzx r3, r4, r3
/* 80519DA8 005152E8  4E 80 00 20 */	blr 
