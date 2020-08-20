.text

.include "macros.inc"

.global func_804E3434
func_804E3434:
/* 804E3434 004DE974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E3438 004DE978  7C 08 02 A6 */	mflr r0
/* 804E343C 004DE97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E3440 004DE980  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E3444 004DE984  80 0D E4 F0 */	lwz r0, lbl_806A3190-_SDA_BASE_(r13)
/* 804E3448 004DE988  2C 00 00 00 */	cmpwi r0, 0
/* 804E344C 004DE98C  41 82 00 0C */	beq lbl_804E3458
/* 804E3450 004DE990  38 60 00 01 */	li r3, 1
/* 804E3454 004DE994  48 00 00 C8 */	b lbl_804E351C
lbl_804E3458:
/* 804E3458 004DE998  4B FB D7 D9 */	bl OSGetConsoleType
/* 804E345C 004DE99C  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 804E3460 004DE9A0  40 82 00 14 */	bne lbl_804E3474
/* 804E3464 004DE9A4  38 00 00 02 */	li r0, 2
/* 804E3468 004DE9A8  38 60 00 00 */	li r3, 0
/* 804E346C 004DE9AC  90 0D E4 F4 */	stw r0, lbl_806A3194-_SDA_BASE_(r13)
/* 804E3470 004DE9B0  48 00 00 AC */	b lbl_804E351C
lbl_804E3474:
/* 804E3474 004DE9B4  4B FC 4C 75 */	bl OSDisableInterrupts
/* 804E3478 004DE9B8  38 00 00 F2 */	li r0, 0xf2
/* 804E347C 004DE9BC  7C 7F 1B 78 */	mr r31, r3
/* 804E3480 004DE9C0  98 01 00 08 */	stb r0, 8(r1)
/* 804E3484 004DE9C4  38 C1 00 08 */	addi r6, r1, 8
/* 804E3488 004DE9C8  38 60 00 00 */	li r3, 0
/* 804E348C 004DE9CC  38 80 00 01 */	li r4, 1
/* 804E3490 004DE9D0  3C A0 B0 00 */	lis r5, 0xb000
/* 804E3494 004DE9D4  38 E0 00 01 */	li r7, 1
/* 804E3498 004DE9D8  4B FC CC A1 */	bl func_804B0138
/* 804E349C 004DE9DC  2C 03 00 00 */	cmpwi r3, 0
/* 804E34A0 004DE9E0  40 82 00 1C */	bne lbl_804E34BC
/* 804E34A4 004DE9E4  38 00 00 05 */	li r0, 5
/* 804E34A8 004DE9E8  7F E3 FB 78 */	mr r3, r31
/* 804E34AC 004DE9EC  90 0D E4 F4 */	stw r0, lbl_806A3194-_SDA_BASE_(r13)
/* 804E34B0 004DE9F0  4B FC 4C 61 */	bl OSRestoreInterrupts
/* 804E34B4 004DE9F4  38 60 00 00 */	li r3, 0
/* 804E34B8 004DE9F8  48 00 00 64 */	b lbl_804E351C
lbl_804E34BC:
/* 804E34BC 004DE9FC  38 00 00 F3 */	li r0, 0xf3
/* 804E34C0 004DEA00  38 C1 00 08 */	addi r6, r1, 8
/* 804E34C4 004DEA04  98 01 00 08 */	stb r0, 8(r1)
/* 804E34C8 004DEA08  38 60 00 00 */	li r3, 0
/* 804E34CC 004DEA0C  38 80 00 01 */	li r4, 1
/* 804E34D0 004DEA10  3C A0 B0 00 */	lis r5, 0xb000
/* 804E34D4 004DEA14  38 E0 00 01 */	li r7, 1
/* 804E34D8 004DEA18  4B FC CC 61 */	bl func_804B0138
/* 804E34DC 004DEA1C  2C 03 00 00 */	cmpwi r3, 0
/* 804E34E0 004DEA20  40 82 00 1C */	bne lbl_804E34FC
/* 804E34E4 004DEA24  38 00 00 05 */	li r0, 5
/* 804E34E8 004DEA28  7F E3 FB 78 */	mr r3, r31
/* 804E34EC 004DEA2C  90 0D E4 F4 */	stw r0, lbl_806A3194-_SDA_BASE_(r13)
/* 804E34F0 004DEA30  4B FC 4C 21 */	bl OSRestoreInterrupts
/* 804E34F4 004DEA34  38 60 00 00 */	li r3, 0
/* 804E34F8 004DEA38  48 00 00 24 */	b lbl_804E351C
lbl_804E34FC:
/* 804E34FC 004DEA3C  7F E3 FB 78 */	mr r3, r31
/* 804E3500 004DEA40  4B FC 4C 11 */	bl OSRestoreInterrupts
/* 804E3504 004DEA44  38 00 00 00 */	li r0, 0
/* 804E3508 004DEA48  38 60 00 01 */	li r3, 1
/* 804E350C 004DEA4C  90 6D E4 F0 */	stw r3, lbl_806A3190-_SDA_BASE_(r13)
/* 804E3510 004DEA50  38 60 00 01 */	li r3, 1
/* 804E3514 004DEA54  90 0D E4 F4 */	stw r0, lbl_806A3194-_SDA_BASE_(r13)
/* 804E3518 004DEA58  90 0D E4 F8 */	stw r0, lbl_806A3198-_SDA_BASE_(r13)
lbl_804E351C:
/* 804E351C 004DEA5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E3520 004DEA60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E3524 004DEA64  7C 08 03 A6 */	mtlr r0
/* 804E3528 004DEA68  38 21 00 20 */	addi r1, r1, 0x20
/* 804E352C 004DEA6C  4E 80 00 20 */	blr 

.global InitializeUART
InitializeUART:
/* 804E3530 004DEA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E3534 004DEA74  7C 08 02 A6 */	mflr r0
/* 804E3538 004DEA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E353C 004DEA7C  4B FB D6 F5 */	bl OSGetConsoleType
/* 804E3540 004DEA80  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 804E3544 004DEA84  40 82 00 14 */	bne lbl_804E3558
/* 804E3548 004DEA88  38 00 00 00 */	li r0, 0
/* 804E354C 004DEA8C  38 60 00 02 */	li r3, 2
/* 804E3550 004DEA90  90 0D E4 FC */	stw r0, lbl_806A319C-_SDA_BASE_(r13)
/* 804E3554 004DEA94  48 00 00 14 */	b lbl_804E3568
lbl_804E3558:
/* 804E3558 004DEA98  3C 80 A5 FF */	lis r4, 0xA5FF005A@ha
/* 804E355C 004DEA9C  38 60 00 00 */	li r3, 0
/* 804E3560 004DEAA0  38 04 00 5A */	addi r0, r4, 0xA5FF005A@l
/* 804E3564 004DEAA4  90 0D E4 FC */	stw r0, lbl_806A319C-_SDA_BASE_(r13)
lbl_804E3568:
/* 804E3568 004DEAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E356C 004DEAAC  7C 08 03 A6 */	mtlr r0
/* 804E3570 004DEAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E3574 004DEAB4  4E 80 00 20 */	blr 

.global WriteUARTN
WriteUARTN:
/* 804E3578 004DEAB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E357C 004DEABC  7C 08 02 A6 */	mflr r0
/* 804E3580 004DEAC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E3584 004DEAC4  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3588 004DEAC8  48 03 3F A5 */	bl _savegpr_26
/* 804E358C 004DEACC  80 AD E4 FC */	lwz r5, lbl_806A319C-_SDA_BASE_(r13)
/* 804E3590 004DEAD0  7C 7E 1B 78 */	mr r30, r3
/* 804E3594 004DEAD4  7C 9F 23 78 */	mr r31, r4
/* 804E3598 004DEAD8  3C 05 5A 01 */	addis r0, r5, 0x5a01
/* 804E359C 004DEADC  28 00 00 5A */	cmplwi r0, 0x5a
/* 804E35A0 004DEAE0  41 82 00 0C */	beq lbl_804E35AC
/* 804E35A4 004DEAE4  38 60 00 02 */	li r3, 2
/* 804E35A8 004DEAE8  48 00 01 E4 */	b lbl_804E378C
lbl_804E35AC:
/* 804E35AC 004DEAEC  80 0D E4 F0 */	lwz r0, lbl_806A3190-_SDA_BASE_(r13)
/* 804E35B0 004DEAF0  2C 00 00 00 */	cmpwi r0, 0
/* 804E35B4 004DEAF4  40 82 00 18 */	bne lbl_804E35CC
/* 804E35B8 004DEAF8  4B FF FE 7D */	bl func_804E3434
/* 804E35BC 004DEAFC  2C 03 00 00 */	cmpwi r3, 0
/* 804E35C0 004DEB00  40 82 00 0C */	bne lbl_804E35CC
/* 804E35C4 004DEB04  38 60 00 02 */	li r3, 2
/* 804E35C8 004DEB08  48 00 01 C4 */	b lbl_804E378C
lbl_804E35CC:
/* 804E35CC 004DEB0C  80 0D E4 F0 */	lwz r0, lbl_806A3190-_SDA_BASE_(r13)
/* 804E35D0 004DEB10  2C 00 00 00 */	cmpwi r0, 0
/* 804E35D4 004DEB14  40 82 00 14 */	bne lbl_804E35E8
/* 804E35D8 004DEB18  38 00 00 01 */	li r0, 1
/* 804E35DC 004DEB1C  38 60 00 02 */	li r3, 2
/* 804E35E0 004DEB20  90 0D E4 F4 */	stw r0, lbl_806A3194-_SDA_BASE_(r13)
/* 804E35E4 004DEB24  48 00 01 A8 */	b lbl_804E378C
lbl_804E35E8:
/* 804E35E8 004DEB28  38 60 00 00 */	li r3, 0
/* 804E35EC 004DEB2C  38 80 00 01 */	li r4, 1
/* 804E35F0 004DEB30  38 A0 00 00 */	li r5, 0
/* 804E35F4 004DEB34  4B FC C2 69 */	bl func_804AF85C
/* 804E35F8 004DEB38  2C 03 00 00 */	cmpwi r3, 0
/* 804E35FC 004DEB3C  40 82 00 0C */	bne lbl_804E3608
/* 804E3600 004DEB40  38 60 00 00 */	li r3, 0
/* 804E3604 004DEB44  48 00 01 88 */	b lbl_804E378C
lbl_804E3608:
/* 804E3608 004DEB48  7F C4 F3 78 */	mr r4, r30
/* 804E360C 004DEB4C  38 60 00 0D */	li r3, 0xd
/* 804E3610 004DEB50  48 00 00 18 */	b lbl_804E3628
lbl_804E3614:
/* 804E3614 004DEB54  88 04 00 00 */	lbz r0, 0(r4)
/* 804E3618 004DEB58  2C 00 00 0A */	cmpwi r0, 0xa
/* 804E361C 004DEB5C  40 82 00 08 */	bne lbl_804E3624
/* 804E3620 004DEB60  98 64 00 00 */	stb r3, 0(r4)
lbl_804E3624:
/* 804E3624 004DEB64  38 84 00 01 */	addi r4, r4, 1
lbl_804E3628:
/* 804E3628 004DEB68  7C 1E 20 50 */	subf r0, r30, r4
/* 804E362C 004DEB6C  7C 00 F8 40 */	cmplw r0, r31
/* 804E3630 004DEB70  41 80 FF E4 */	blt lbl_804E3614
/* 804E3634 004DEB74  3C 60 B0 00 */	lis r3, 0xB0000100@ha
/* 804E3638 004DEB78  83 82 24 A8 */	lwz r28, lbl_806AD728-_SDA2_BASE_(r2)
/* 804E363C 004DEB7C  38 03 01 00 */	addi r0, r3, 0xB0000100@l
/* 804E3640 004DEB80  3B 40 00 00 */	li r26, 0
/* 804E3644 004DEB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E3648 004DEB88  3F A0 30 00 */	lis r29, 0x3000
/* 804E364C 004DEB8C  48 00 01 2C */	b lbl_804E3778
lbl_804E3650:
/* 804E3650 004DEB90  7F 85 E3 78 */	mr r5, r28
/* 804E3654 004DEB94  38 60 00 00 */	li r3, 0
/* 804E3658 004DEB98  38 80 00 01 */	li r4, 1
/* 804E365C 004DEB9C  4B FC BA 6D */	bl func_804AF0C8
/* 804E3660 004DEBA0  2C 03 00 00 */	cmpwi r3, 0
/* 804E3664 004DEBA4  40 82 00 0C */	bne lbl_804E3670
/* 804E3668 004DEBA8  3B 60 FF FF */	li r27, -1
/* 804E366C 004DEBAC  48 00 00 60 */	b lbl_804E36CC
lbl_804E3670:
/* 804E3670 004DEBB0  38 1D 01 00 */	addi r0, r29, 0x100
/* 804E3674 004DEBB4  38 81 00 08 */	addi r4, r1, 8
/* 804E3678 004DEBB8  90 01 00 08 */	stw r0, 8(r1)
/* 804E367C 004DEBBC  38 60 00 00 */	li r3, 0
/* 804E3680 004DEBC0  38 A0 00 04 */	li r5, 4
/* 804E3684 004DEBC4  38 C0 00 01 */	li r6, 1
/* 804E3688 004DEBC8  38 E0 00 00 */	li r7, 0
/* 804E368C 004DEBCC  4B FC AF D5 */	bl func_804AE660
/* 804E3690 004DEBD0  38 60 00 00 */	li r3, 0
/* 804E3694 004DEBD4  4B FC B3 E5 */	bl func_804AEA78
/* 804E3698 004DEBD8  38 81 00 0C */	addi r4, r1, 0xc
/* 804E369C 004DEBDC  38 60 00 00 */	li r3, 0
/* 804E36A0 004DEBE0  38 A0 00 04 */	li r5, 4
/* 804E36A4 004DEBE4  38 C0 00 00 */	li r6, 0
/* 804E36A8 004DEBE8  38 E0 00 00 */	li r7, 0
/* 804E36AC 004DEBEC  4B FC AF B5 */	bl func_804AE660
/* 804E36B0 004DEBF0  38 60 00 00 */	li r3, 0
/* 804E36B4 004DEBF4  4B FC B3 C5 */	bl func_804AEA78
/* 804E36B8 004DEBF8  38 60 00 00 */	li r3, 0
/* 804E36BC 004DEBFC  4B FC BB 3D */	bl func_804AF1F8
/* 804E36C0 004DEC00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804E36C4 004DEC04  54 00 46 BE */	rlwinm r0, r0, 8, 0x1a, 0x1f
/* 804E36C8 004DEC08  23 60 00 20 */	subfic r27, r0, 0x20
lbl_804E36CC:
/* 804E36CC 004DEC0C  2C 1B 00 00 */	cmpwi r27, 0
/* 804E36D0 004DEC10  40 80 00 0C */	bge lbl_804E36DC
/* 804E36D4 004DEC14  3B 40 00 03 */	li r26, 3
/* 804E36D8 004DEC18  48 00 00 A8 */	b lbl_804E3780
lbl_804E36DC:
/* 804E36DC 004DEC1C  2C 1B 00 20 */	cmpwi r27, 0x20
/* 804E36E0 004DEC20  40 82 00 98 */	bne lbl_804E3778
/* 804E36E4 004DEC24  7F 85 E3 78 */	mr r5, r28
/* 804E36E8 004DEC28  38 60 00 00 */	li r3, 0
/* 804E36EC 004DEC2C  38 80 00 01 */	li r4, 1
/* 804E36F0 004DEC30  4B FC B9 D9 */	bl func_804AF0C8
/* 804E36F4 004DEC34  2C 03 00 00 */	cmpwi r3, 0
/* 804E36F8 004DEC38  40 82 00 0C */	bne lbl_804E3704
/* 804E36FC 004DEC3C  3B 40 00 03 */	li r26, 3
/* 804E3700 004DEC40  48 00 00 80 */	b lbl_804E3780
lbl_804E3704:
/* 804E3704 004DEC44  38 81 00 14 */	addi r4, r1, 0x14
/* 804E3708 004DEC48  38 60 00 00 */	li r3, 0
/* 804E370C 004DEC4C  38 A0 00 04 */	li r5, 4
/* 804E3710 004DEC50  38 C0 00 01 */	li r6, 1
/* 804E3714 004DEC54  38 E0 00 00 */	li r7, 0
/* 804E3718 004DEC58  4B FC AF 49 */	bl func_804AE660
/* 804E371C 004DEC5C  38 60 00 00 */	li r3, 0
/* 804E3720 004DEC60  4B FC B3 59 */	bl func_804AEA78
/* 804E3724 004DEC64  48 00 00 3C */	b lbl_804E3760
lbl_804E3728:
/* 804E3728 004DEC68  88 1E 00 00 */	lbz r0, 0(r30)
/* 804E372C 004DEC6C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E3730 004DEC70  38 60 00 00 */	li r3, 0
/* 804E3734 004DEC74  38 A0 00 04 */	li r5, 4
/* 804E3738 004DEC78  54 00 C0 0E */	slwi r0, r0, 0x18
/* 804E373C 004DEC7C  38 C0 00 01 */	li r6, 1
/* 804E3740 004DEC80  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E3744 004DEC84  38 E0 00 00 */	li r7, 0
/* 804E3748 004DEC88  4B FC AF 19 */	bl func_804AE660
/* 804E374C 004DEC8C  38 60 00 00 */	li r3, 0
/* 804E3750 004DEC90  4B FC B3 29 */	bl func_804AEA78
/* 804E3754 004DEC94  3B DE 00 01 */	addi r30, r30, 1
/* 804E3758 004DEC98  3B 7B FF FF */	addi r27, r27, -1
/* 804E375C 004DEC9C  3B FF FF FF */	addi r31, r31, -1
lbl_804E3760:
/* 804E3760 004DECA0  2C 1B 00 00 */	cmpwi r27, 0
/* 804E3764 004DECA4  40 81 00 0C */	ble lbl_804E3770
/* 804E3768 004DECA8  2C 1F 00 00 */	cmpwi r31, 0
/* 804E376C 004DECAC  40 82 FF BC */	bne lbl_804E3728
lbl_804E3770:
/* 804E3770 004DECB0  38 60 00 00 */	li r3, 0
/* 804E3774 004DECB4  4B FC BA 85 */	bl func_804AF1F8
lbl_804E3778:
/* 804E3778 004DECB8  2C 1F 00 00 */	cmpwi r31, 0
/* 804E377C 004DECBC  40 82 FE D4 */	bne lbl_804E3650
lbl_804E3780:
/* 804E3780 004DECC0  38 60 00 00 */	li r3, 0
/* 804E3784 004DECC4  4B FC C1 D5 */	bl func_804AF958
/* 804E3788 004DECC8  7F 43 D3 78 */	mr r3, r26
lbl_804E378C:
/* 804E378C 004DECCC  39 61 00 30 */	addi r11, r1, 0x30
/* 804E3790 004DECD0  48 03 3D E9 */	bl _restgpr_26
/* 804E3794 004DECD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E3798 004DECD8  7C 08 03 A6 */	mtlr r0
/* 804E379C 004DECDC  38 21 00 30 */	addi r1, r1, 0x30
/* 804E37A0 004DECE0  4E 80 00 20 */	blr 
