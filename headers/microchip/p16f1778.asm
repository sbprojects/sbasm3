;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F1778 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F1778 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   16384

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

W                .EQ  $0000
F                .EQ  $0001

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF0            .EQ  $0000
INDF1            .EQ  $0001
PCL              .EQ  $0002
STATUS           .EQ  $0003
FSR0             .EQ  $0004
FSR0L            .EQ  $0004
FSR0H            .EQ  $0005
FSR1             .EQ  $0006
FSR1L            .EQ  $0006
FSR1H            .EQ  $0007
BSR              .EQ  $0008
WREG             .EQ  $0009
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PORTA            .EQ  $000C
PORTB            .EQ  $000D
PORTC            .EQ  $000E
PORTE            .EQ  $0010
PIR1             .EQ  $0011
PIR2             .EQ  $0012
PIR3             .EQ  $0013
PIR4             .EQ  $0014
PIR5             .EQ  $0015
PIR6             .EQ  $0016
TMR0             .EQ  $0017
TMR1             .EQ  $0018
TMR1L            .EQ  $0018
TMR1H            .EQ  $0019
T1CON            .EQ  $001A
T1GCON           .EQ  $001B
TMR3             .EQ  $001C
TMR3L            .EQ  $001C
TMR3H            .EQ  $001D
T3CON            .EQ  $001E
T3GCON           .EQ  $001F

;-----Bank1------------------
TRISA            .EQ  $008C
TRISB            .EQ  $008D
TRISC            .EQ  $008E
TRISE            .EQ  $0090
PIE1             .EQ  $0091
PIE2             .EQ  $0092
PIE3             .EQ  $0093
PIE4             .EQ  $0094
PIE5             .EQ  $0095
PIE6             .EQ  $0096
OPTION_REG       .EQ  $0097
PCON             .EQ  $0098
WDTCON           .EQ  $0099
OSCTUNE          .EQ  $009A
OSCCON           .EQ  $009B
OSCSTAT          .EQ  $009C
BORCON           .EQ  $009D
FVRCON           .EQ  $009E
ZCD1CON          .EQ  $009F

;-----Bank2------------------
LATA             .EQ  $010C
LATB             .EQ  $010D
LATC             .EQ  $010E
CMOUT            .EQ  $0111
CM1CON0          .EQ  $0112
CM1CON1          .EQ  $0113
CM1NSEL          .EQ  $0114
CM1PSEL          .EQ  $0115
CM2CON0          .EQ  $0116
CM2CON1          .EQ  $0117
CM2NSEL          .EQ  $0118
CM2PSEL          .EQ  $0119
CM3CON0          .EQ  $011A
CM3CON1          .EQ  $011B
CM3NSEL          .EQ  $011C
CM3PSEL          .EQ  $011D

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELB           .EQ  $018D
ANSELC           .EQ  $018E
PMADR            .EQ  $0191
PMADRL           .EQ  $0191
PMADRH           .EQ  $0192
PMDAT            .EQ  $0193
PMDATL           .EQ  $0193
PMDATH           .EQ  $0194
PMCON1           .EQ  $0195
PMCON2           .EQ  $0196
VREGCON          .EQ  $0197
RC1REG           .EQ  $0199
RCREG            .EQ  $0199
RCREG1           .EQ  $0199
TX1REG           .EQ  $019A
TXREG            .EQ  $019A
TXREG1           .EQ  $019A
SP1BRG           .EQ  $019B
SP1BRGL          .EQ  $019B
SPBRG            .EQ  $019B
SPBRG1           .EQ  $019B
SPBRGL           .EQ  $019B
SP1BRGH          .EQ  $019C
SPBRGH           .EQ  $019C
SPBRGH1          .EQ  $019C
RC1STA           .EQ  $019D
RCSTA            .EQ  $019D
RCSTA1           .EQ  $019D
TX1STA           .EQ  $019E
TXSTA            .EQ  $019E
TXSTA1           .EQ  $019E
BAUD1CON         .EQ  $019F
BAUDCON          .EQ  $019F
BAUDCON1         .EQ  $019F
BAUDCTL          .EQ  $019F
BAUDCTL1         .EQ  $019F

;-----Bank4------------------
WPUA             .EQ  $020C
WPUB             .EQ  $020D
WPUC             .EQ  $020E
WPUE             .EQ  $0210
SSP1BUF          .EQ  $0211
SSPBUF           .EQ  $0211
SSP1ADD          .EQ  $0212
SSPADD           .EQ  $0212
SSP1MSK          .EQ  $0213
SSPMSK           .EQ  $0213
SSP1STAT         .EQ  $0214
SSPSTAT          .EQ  $0214
SSP1CON          .EQ  $0215
SSP1CON1         .EQ  $0215
SSPCON           .EQ  $0215
SSPCON1          .EQ  $0215
SSP1CON2         .EQ  $0216
SSPCON2          .EQ  $0216
SSP1CON3         .EQ  $0217
SSPCON3          .EQ  $0217
MD3CON0          .EQ  $021B
MD3CON1          .EQ  $021C
MD3SRC           .EQ  $021D
MD3CARL          .EQ  $021E
MD3CARH          .EQ  $021F

;-----Bank5------------------
ODCONA           .EQ  $028C
ODCONB           .EQ  $028D
ODCONC           .EQ  $028E
CCPR1            .EQ  $0291
CCPR1L           .EQ  $0291
CCPR1H           .EQ  $0292
CCP1CON          .EQ  $0293
CCP1CAP          .EQ  $0294
CCPR2            .EQ  $0295
CCPR2L           .EQ  $0295
CCPR2H           .EQ  $0296
CCP2CON          .EQ  $0297
CCP2CAP          .EQ  $0298
CCPR7            .EQ  $0299
CCPR7L           .EQ  $0299
CCPR7H           .EQ  $029A
CCP7CON          .EQ  $029B
CCP7CAP          .EQ  $029C
CCPTMRS1         .EQ  $029E
CCPTMRS2         .EQ  $029F

;-----Bank6------------------
SLRCONA          .EQ  $030C
SLRCONB          .EQ  $030D
SLRCONC          .EQ  $030E
MD1CON0          .EQ  $0315
MD1CON1          .EQ  $0316
MD1SRC           .EQ  $0317
MD1CARL          .EQ  $0318
MD1CARH          .EQ  $0319
MD2CON0          .EQ  $031B
MD2CON1          .EQ  $031C
MD2SRC           .EQ  $031D
MD2CARL          .EQ  $031E
MD2CARH          .EQ  $031F

;-----Bank7------------------
INLVLA           .EQ  $038C
INLVLB           .EQ  $038D
INLVLC           .EQ  $038E
INLVE            .EQ  $0390
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393
IOCBP            .EQ  $0394
IOCBN            .EQ  $0395
IOCBF            .EQ  $0396
IOCCP            .EQ  $0397
IOCCN            .EQ  $0398
IOCCF            .EQ  $0399
IOCEP            .EQ  $039D
IOCEN            .EQ  $039E
IOCEF            .EQ  $039F

;-----Bank8------------------
HIDRVB           .EQ  $040D
TMR5             .EQ  $040F
TMR5L            .EQ  $040F
TMR5H            .EQ  $0410
T5CON            .EQ  $0411
T5GCON           .EQ  $0412
T4TMR            .EQ  $0413
TMR4             .EQ  $0413
PR4              .EQ  $0414
T4PR             .EQ  $0414
T4CON            .EQ  $0415
T4HLT            .EQ  $0416
T4CLKCON         .EQ  $0417
T4RST            .EQ  $0418
T6TMR            .EQ  $041A
TMR6             .EQ  $041A
PR6              .EQ  $041B
T6PR             .EQ  $041B
T6CON            .EQ  $041C
T6HLT            .EQ  $041D
T6CLKCON         .EQ  $041E
T6RST            .EQ  $041F

;-----Bank9------------------
ADRESL           .EQ  $048E
ADRESH           .EQ  $048F
ADCON0           .EQ  $0490
ADCON1           .EQ  $0491
ADCON2           .EQ  $0492
T2TMR            .EQ  $0493
TMR2             .EQ  $0493
PR2              .EQ  $0494
T2PR             .EQ  $0494
T2CON            .EQ  $0495
T2HLT            .EQ  $0496
T2CLKCON         .EQ  $0497
T2RST            .EQ  $0498
T8TMR            .EQ  $049A
TMR8             .EQ  $049A
PR8              .EQ  $049B
T8PR             .EQ  $049B
T8CON            .EQ  $049C
T8HLT            .EQ  $049D
T8CLKCON         .EQ  $049E
T8RST            .EQ  $049F

;-----Bank10------------------
OPA1NCHS         .EQ  $050F
OPA1PCHS         .EQ  $0510
OPA1CON          .EQ  $0511
OPA1ORS          .EQ  $0512
OPA2NCHS         .EQ  $0513
OPA2PCHS         .EQ  $0514
OPA2CON          .EQ  $0515
OPA2ORS          .EQ  $0516
OPA3NCHS         .EQ  $0517
OPA3PCHS         .EQ  $0518
OPA3CON          .EQ  $0519
OPA3ORS          .EQ  $051A

;-----Bank11------------------
DACLD            .EQ  $058D
DAC1CON0         .EQ  $058E
DAC1CON1         .EQ  $058F
DAC1REF          .EQ  $058F
DAC1REFL         .EQ  $058F
DAC1CON2         .EQ  $0590
DAC1REFH         .EQ  $0590
DAC2CON0         .EQ  $0591
DAC2CON1         .EQ  $0592
DAC2REF          .EQ  $0592
DAC2REFL         .EQ  $0592
DAC2CON2         .EQ  $0593
DAC2REFH         .EQ  $0593
DAC3CON0         .EQ  $0594
DAC3CON1         .EQ  $0595
DAC3REF          .EQ  $0595
DAC4CON0         .EQ  $0596
DAC4CON1         .EQ  $0597
DAC4REF          .EQ  $0597
DAC5CON0         .EQ  $0598
DAC5CON1         .EQ  $0599
DAC5REF          .EQ  $0599
DAC5REFL         .EQ  $0599
DAC5CON2         .EQ  $059A
DAC5REFH         .EQ  $059A
DAC7CON0         .EQ  $059E
DAC7CON1         .EQ  $059F
DAC7REF          .EQ  $059F

;-----Bank12------------------
PWM3DCL          .EQ  $0614
PWM3DCH          .EQ  $0615
PWM3CON          .EQ  $0616
PWM4DCL          .EQ  $0617
PWM4DCH          .EQ  $0618
PWM4CON          .EQ  $0619
PWM9DCL          .EQ  $061A
PWM9DCH          .EQ  $061B
PWM9CON          .EQ  $061C

;-----Bank13------------------
COG1PHR          .EQ  $068D
COG1PHF          .EQ  $068E
COG1BLKR         .EQ  $068F
COG1BLKF         .EQ  $0690
COG1DBR          .EQ  $0691
COG1DBF          .EQ  $0692
COG1CON0         .EQ  $0693
COG1CON1         .EQ  $0694
COG1RIS0         .EQ  $0695
COG1RIS1         .EQ  $0696
COG1RSIM0        .EQ  $0697
COG1RSIM1        .EQ  $0698
COG1FIS0         .EQ  $0699
COG1FIS1         .EQ  $069A
COG1FSIM0        .EQ  $069B
COG1FSIM1        .EQ  $069C
COG1ASD0         .EQ  $069D
COG1ASD1         .EQ  $069E
COG1STR          .EQ  $069F

;-----Bank14------------------
COG2PHR          .EQ  $070D
COG2PHF          .EQ  $070E
COG2BLKR         .EQ  $070F
COG2BLKF         .EQ  $0710
COG2DBR          .EQ  $0711
COG2DBF          .EQ  $0712
COG2CON0         .EQ  $0713
COG2CON1         .EQ  $0714
COG2RIS0         .EQ  $0715
COG2RIS1         .EQ  $0716
COG2RSIM0        .EQ  $0717
COG2RSIM1        .EQ  $0718
COG2FIS0         .EQ  $0719
COG2FIS1         .EQ  $071A
COG2FSIM0        .EQ  $071B
COG2FSIM1        .EQ  $071C
COG2ASD0         .EQ  $071D
COG2ASD1         .EQ  $071E
COG2STR          .EQ  $071F

;-----Bank15------------------
PRG1RTSS         .EQ  $078E
PRG1FTSS         .EQ  $078F
PRG1INS          .EQ  $0790
PRG1CON0         .EQ  $0791
PRG1CON1         .EQ  $0792
PRG1CON2         .EQ  $0793
PRG2RTSS         .EQ  $0794
PRG2FTSS         .EQ  $0795
PRG2INS          .EQ  $0796
PRG2CON0         .EQ  $0797
PRG2CON1         .EQ  $0798
PRG2CON2         .EQ  $0799
PRG3RTSS         .EQ  $079A
PRG3FTSS         .EQ  $079B
PRG3INS          .EQ  $079C
PRG3CON0         .EQ  $079D
PRG3CON1         .EQ  $079E
PRG3CON2         .EQ  $079F

;-----Bank16------------------
COG3PHR          .EQ  $080D
COG3PHF          .EQ  $080E
COG3BLKR         .EQ  $080F
COG3BLKF         .EQ  $0810
COG3DBR          .EQ  $0811
COG3DBF          .EQ  $0812
COG3CON0         .EQ  $0813
COG3CON1         .EQ  $0814
COG3RIS0         .EQ  $0815
COG3RIS1         .EQ  $0816
COG3RSIM0        .EQ  $0817
COG3RSIM1        .EQ  $0818
COG3FIS0         .EQ  $0819
COG3FIS1         .EQ  $081A
COG3FSIM0        .EQ  $081B
COG3FSIM1        .EQ  $081C
COG3ASD0         .EQ  $081D
COG3ASD1         .EQ  $081E
COG3STR          .EQ  $081F

;-----Bank18------------------
CM4CON0          .EQ  $090C
CM4CON1          .EQ  $090D
CM4NSEL          .EQ  $090E
CM4PSEL          .EQ  $090F
CM5CON0          .EQ  $0910
CM5CON1          .EQ  $0911
CM5NSEL          .EQ  $0912
CM5PSEL          .EQ  $0913
CM6CON0          .EQ  $0914
CM6CON1          .EQ  $0915
CM6NSEL          .EQ  $0916
CM6PSEL          .EQ  $0917

;-----Bank27------------------
PWMEN            .EQ  $0D8E
PWMLD            .EQ  $0D8F
PWMOUT           .EQ  $0D90
PWM5PH           .EQ  $0D91
PWM5PHL          .EQ  $0D91
PWM5PHH          .EQ  $0D92
PWM5DC           .EQ  $0D93
PWM5DCL          .EQ  $0D93
PWM5DCH          .EQ  $0D94
PWM5PR           .EQ  $0D95
PWM5PRL          .EQ  $0D95
PWM5PRH          .EQ  $0D96
PWM5OF           .EQ  $0D97
PWM5OFL          .EQ  $0D97
PWM5OFH          .EQ  $0D98
PWM5TMR          .EQ  $0D99
PWM5TMRL         .EQ  $0D99
PWM5TMRH         .EQ  $0D9A
PWM5CON          .EQ  $0D9B
PWM5INTCON       .EQ  $0D9C
PWM5INTE         .EQ  $0D9C
PWM5INTF         .EQ  $0D9D
PWM5INTFLG       .EQ  $0D9D
PWM5CLKCON       .EQ  $0D9E
PWM5LDCON        .EQ  $0D9F
PWM5OFCON        .EQ  $0DA0
PWM6PH           .EQ  $0DA1
PWM6PHL          .EQ  $0DA1
PWM6PHH          .EQ  $0DA2
PWM6DC           .EQ  $0DA3
PWM6DCL          .EQ  $0DA3
PWM6DCH          .EQ  $0DA4
PWM6PR           .EQ  $0DA5
PWM6PRL          .EQ  $0DA5
PWM6PRH          .EQ  $0DA6
PWM6OF           .EQ  $0DA7
PWM6OFL          .EQ  $0DA7
PWM6OFH          .EQ  $0DA8
PWM6TMR          .EQ  $0DA9
PWM6TMRL         .EQ  $0DA9
PWM6TMRH         .EQ  $0DAA
PWM6CON          .EQ  $0DAB
PWM6INTCON       .EQ  $0DAC
PWM6INTE         .EQ  $0DAC
PWM6INTF         .EQ  $0DAD
PWM6INTFLG       .EQ  $0DAD
PWM6CLKCON       .EQ  $0DAE
PWM6LDCON        .EQ  $0DAF
PWM6OFCON        .EQ  $0DB0
PWM11PH          .EQ  $0DB1
PWM11PHL         .EQ  $0DB1
PWM11PHH         .EQ  $0DB2
PWM11DC          .EQ  $0DB3
PWM11DCL         .EQ  $0DB3
PWM11DCH         .EQ  $0DB4
PWM11PR          .EQ  $0DB5
PWM11PRL         .EQ  $0DB5
PWM11PRH         .EQ  $0DB6
PWM11OF          .EQ  $0DB7
PWM11OFL         .EQ  $0DB7
PWM11OFH         .EQ  $0DB8
PWM11TMR         .EQ  $0DB9
PWM11TMRL        .EQ  $0DB9
PWM11TMRH        .EQ  $0DBA
PWM11CON         .EQ  $0DBB
PWM11INTCON      .EQ  $0DBC
PWM11INTE        .EQ  $0DBC
PWM11INTF        .EQ  $0DBD
PWM11INTFLG      .EQ  $0DBD
PWM11CLKCON      .EQ  $0DBE
PWM11LDCON       .EQ  $0DBF
PWM11OFCON       .EQ  $0DC0

;-----Bank28------------------
PPSLOCK          .EQ  $0E0C
INTPPS           .EQ  $0E0D
T0CKIPPS         .EQ  $0E0E
T1CKIPPS         .EQ  $0E0F
T1GPPS           .EQ  $0E10
T3CKIPPS         .EQ  $0E11
T3GPPS           .EQ  $0E12
T5CKIPPS         .EQ  $0E13
T5GPPS           .EQ  $0E14
T2CKIPPS         .EQ  $0E15
T2INPPS          .EQ  $0E15
T2PPS            .EQ  $0E15
T4CKIPPS         .EQ  $0E16
T4INPPS          .EQ  $0E16
T4PPS            .EQ  $0E16
T6CKIPPS         .EQ  $0E17
T6INPPS          .EQ  $0E17
T6PPS            .EQ  $0E17
T8CKIPPS         .EQ  $0E18
T8INPPS          .EQ  $0E18
T8PPS            .EQ  $0E18
CCP1PPS          .EQ  $0E19
CCP2PPS          .EQ  $0E1A
CCP7PPS          .EQ  $0E1B
COG1INPPS        .EQ  $0E1D
COG2INPPS        .EQ  $0E1E
COG3INPPS        .EQ  $0E1F
MD1CLPPS         .EQ  $0E21
MD1CHPPS         .EQ  $0E22
MD1MODPPS        .EQ  $0E23
MD2CLPPS         .EQ  $0E24
MD2CHPPS         .EQ  $0E25
MD2MODPPS        .EQ  $0E26
MD3CLPPS         .EQ  $0E27
MD3CHPPS         .EQ  $0E28
MD3MODPPS        .EQ  $0E29
PRG1RPPS         .EQ  $0E2D
PRG1FPPS         .EQ  $0E2E
PRG2RPPS         .EQ  $0E2F
PRG2FPPS         .EQ  $0E30
PRG3RPPS         .EQ  $0E31
PRG3FPPS         .EQ  $0E32
CLCIN0PPS        .EQ  $0E35
CLCIN1PPS        .EQ  $0E36
CLCIN2PPS        .EQ  $0E37
CLCIN3PPS        .EQ  $0E38
ADCACTPPS        .EQ  $0E39
SSPCLKPPS        .EQ  $0E3A
SSPDATPPS        .EQ  $0E3B
SSPSSPPS         .EQ  $0E3C
RXPPS            .EQ  $0E3D
CKPPS            .EQ  $0E3E

;-----Bank29------------------
RA0PPS           .EQ  $0E90
RA1PPS           .EQ  $0E91
RA2PPS           .EQ  $0E92
RA3PPS           .EQ  $0E93
RA4PPS           .EQ  $0E94
RA5PPS           .EQ  $0E95
RA6PPS           .EQ  $0E96
RA7PPS           .EQ  $0E97
RB0PPS           .EQ  $0E98
RB1PPS           .EQ  $0E99
RB2PPS           .EQ  $0E9A
RB3PPS           .EQ  $0E9B
RB4PPS           .EQ  $0E9C
RB5PPS           .EQ  $0E9D
RB6PPS           .EQ  $0E9E
RB7PPS           .EQ  $0E9F
RC0PPS           .EQ  $0EA0
RC1PPS           .EQ  $0EA1
RC2PPS           .EQ  $0EA2
RC3PPS           .EQ  $0EA3
RC4PPS           .EQ  $0EA4
RC5PPS           .EQ  $0EA5
RC6PPS           .EQ  $0EA6
RC7PPS           .EQ  $0EA7

;-----Bank30------------------
CLCDATA          .EQ  $0F0F
CLC1CON          .EQ  $0F10
CLC1POL          .EQ  $0F11
CLC1SEL0         .EQ  $0F12
CLC1SEL1         .EQ  $0F13
CLC1SEL2         .EQ  $0F14
CLC1SEL3         .EQ  $0F15
CLC1GLS0         .EQ  $0F16
CLC1GLS1         .EQ  $0F17
CLC1GLS2         .EQ  $0F18
CLC1GLS3         .EQ  $0F19
CLC2CON          .EQ  $0F1A
CLC2POL          .EQ  $0F1B
CLC2SEL0         .EQ  $0F1C
CLC2SEL1         .EQ  $0F1D
CLC2SEL2         .EQ  $0F1E
CLC2SEL3         .EQ  $0F1F
CLC2GLS0         .EQ  $0F20
CLC2GLS1         .EQ  $0F21
CLC2GLS2         .EQ  $0F22
CLC2GLS3         .EQ  $0F23
CLC3CON          .EQ  $0F24
CLC3POL          .EQ  $0F25
CLC3SEL0         .EQ  $0F26
CLC3SEL1         .EQ  $0F27
CLC3SEL2         .EQ  $0F28
CLC3SEL3         .EQ  $0F29
CLC3GLS0         .EQ  $0F2A
CLC3GLS1         .EQ  $0F2B
CLC3GLS2         .EQ  $0F2C
CLC3GLS3         .EQ  $0F2D
CLC4CON          .EQ  $0F2E
CLC4POL          .EQ  $0F2F
CLC4SEL0         .EQ  $0F30
CLC4SEL1         .EQ  $0F31
CLC4SEL2         .EQ  $0F32
CLC4SEL3         .EQ  $0F33
CLC4GLS0         .EQ  $0F34
CLC4GLS1         .EQ  $0F35
CLC4GLS2         .EQ  $0F36
CLC4GLS3         .EQ  $0F37

;-----Bank31------------------
STATUS_SHAD      .EQ  $0FE4
WREG_SHAD        .EQ  $0FE5
BSR_SHAD         .EQ  $0FE6
PCLATH_SHAD      .EQ  $0FE7
FSR0L_SHAD       .EQ  $0FE8
FSR0H_SHAD       .EQ  $0FE9
FSR1L_SHAD       .EQ  $0FEA
FSR1H_SHAD       .EQ  $0FEB
STKPTR           .EQ  $0FED
TOSL             .EQ  $0FEE
TOSH             .EQ  $0FEF

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004


;----- BSR Bits -----------------------------------------------------
BSR0             .EQ  $0000
BSR1             .EQ  $0001
BSR2             .EQ  $0002
BSR3             .EQ  $0003
BSR4             .EQ  $0004


;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  $0000
INTF             .EQ  $0001
TMR0IF           .EQ  $0002
IOCIE            .EQ  $0003
INTE             .EQ  $0004
TMR0IE           .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

T0IF             .EQ  $0002
T0IE             .EQ  $0005


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE3              .EQ  $0003


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007

CCPIF            .EQ  $0002


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
C3IF             .EQ  $0001
C4IF             .EQ  $0002
BCL1IF           .EQ  $0003
COG1IF           .EQ  $0004
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
CLC1IF           .EQ  $0000
CLC2IF           .EQ  $0001
CLC3IF           .EQ  $0002
CLC4IF           .EQ  $0003
ZCDIF            .EQ  $0004
COG2IF           .EQ  $0005


;----- PIR4 Bits -----------------------------------------------------
TMR4IF           .EQ  $0000
TMR6IF           .EQ  $0001
TMR3IF           .EQ  $0002
TMR3GIF          .EQ  $0003
TMR5IF           .EQ  $0004
TMR5GIF          .EQ  $0005
TMR8IF           .EQ  $0006


;----- PIR5 Bits -----------------------------------------------------
C5IF             .EQ  $0000
C6IF             .EQ  $0001
COG3IF           .EQ  $0004
CCP7IF           .EQ  $0006


;----- PIR6 Bits -----------------------------------------------------
PWM5IF           .EQ  $0000
PWM6IF           .EQ  $0001
PWM11IF          .EQ  $0002


;----- T1CON Bits -----------------------------------------------------
ON_T1CON         .EQ  $0000
NOT_SYNC         .EQ  $0002
OSCEN            .EQ  $0003

TMRON            .EQ  $0000
SYNC_T1CON       .EQ  $0002
SOSCEN           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CS0_T1CON        .EQ  $0006
CS1_T1CON        .EQ  $0007

TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003
T1CS0            .EQ  $0006
T1CS1            .EQ  $0007

T1ON             .EQ  $0000
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


;----- T1GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

GSS0             .EQ  $0000
GSS1             .EQ  $0001
T1GE             .EQ  $0007

T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001


;----- T3CON Bits -----------------------------------------------------
ON_T3CON         .EQ  $0000
NOT_SYNC         .EQ  $0002
OSCEN            .EQ  $0003

TMRON            .EQ  $0000
SYNC_T3CON       .EQ  $0002
SOSCEN           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CS0_T3CON        .EQ  $0006
CS1_T3CON        .EQ  $0007

TMR3ON           .EQ  $0000
NOT_T3SYNC       .EQ  $0002
T3OSCEN          .EQ  $0003
T3CS0            .EQ  $0006
T3CS1            .EQ  $0007

T3ON             .EQ  $0000
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007


;----- T3GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

GSS0             .EQ  $0000
GSS1             .EQ  $0001
T3GE             .EQ  $0007

T3GVAL           .EQ  $0002
T3GGO_NOT_DONE   .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE3           .EQ  $0003


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007

CCPIE            .EQ  $0002


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
C3IE             .EQ  $0001
C4IE             .EQ  $0002
BCL1IE           .EQ  $0003
COGIE            .EQ  $0004
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSFIE            .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
CLC1IE           .EQ  $0000
CLC2IE           .EQ  $0001
CLC3IE           .EQ  $0002
CLC4IE           .EQ  $0003
ZCDIE            .EQ  $0004
COG2IE           .EQ  $0005


;----- PIE4 Bits -----------------------------------------------------
TMR4IE           .EQ  $0000
TMR6IE           .EQ  $0001
TMR3IE           .EQ  $0002
TMR3GIE          .EQ  $0003
TMR5IE           .EQ  $0004
TMR5GIE          .EQ  $0005
TMR8IE           .EQ  $0006


;----- PIE5 Bits -----------------------------------------------------
C5IE             .EQ  $0000
C6IE             .EQ  $0001
COG3IE           .EQ  $0004
CCP7IE           .EQ  $0006


;----- PIE6 Bits -----------------------------------------------------
PWM5IE           .EQ  $0000
PWM6IE           .EQ  $0001
PWM11IE          .EQ  $0002


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

PS0_OPTION_REG   .EQ  $0000
PS1_OPTION_REG   .EQ  $0001
PS2_OPTION_REG   .EQ  $0002
T0SE             .EQ  $0004
T0CS             .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
NOT_RWDT         .EQ  $0004
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004
WDTPS4           .EQ  $0005


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- OSCCON Bits -----------------------------------------------------
SPLLEN           .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0003
IRCF1            .EQ  $0004
IRCF2            .EQ  $0005
IRCF3            .EQ  $0006


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  $0000
LFIOFR           .EQ  $0001
MFIOFR           .EQ  $0002
HFIOFL           .EQ  $0003
HFIOFR           .EQ  $0004
OSTS             .EQ  $0005
PLLR             .EQ  $0006
SOSCR            .EQ  $0007


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
BORFS            .EQ  $0006
SBOREN           .EQ  $0007


;----- FVRCON Bits -----------------------------------------------------
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007


;----- ZCD1CON Bits -----------------------------------------------------
ZCD1INTN         .EQ  $0000
ZCD1INTP         .EQ  $0001
ZCD1POL          .EQ  $0004
ZCD1OUT          .EQ  $0005
ZCD1EN           .EQ  $0007


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
LATA5            .EQ  $0005
LATA6            .EQ  $0006
LATA7            .EQ  $0007


;----- LATB Bits -----------------------------------------------------
LATB0            .EQ  $0000
LATB1            .EQ  $0001
LATB2            .EQ  $0002
LATB3            .EQ  $0003
LATB4            .EQ  $0004
LATB5            .EQ  $0005
LATB6            .EQ  $0006
LATB7            .EQ  $0007


;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005
LATC6            .EQ  $0006
LATC7            .EQ  $0007


;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001
MC3OUT           .EQ  $0002
MC4OUT           .EQ  $0003
MC5OUT           .EQ  $0004
MC6OUT           .EQ  $0005


;----- CM1CON0 Bits -----------------------------------------------------
SYNC_CM1CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved_CM1CON0 .EQ  $0002
ZLF              .EQ  $0003
POL_CM1CON0      .EQ  $0004
OUT_CM1CON0      .EQ  $0006
ON_CM1CON0       .EQ  $0007

C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1ZLF            .EQ  $0003
C1POL            .EQ  $0004
C1OUT            .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
INTN_CM1CON1     .EQ  $0000
INTP_CM1CON1     .EQ  $0001

C1INTN           .EQ  $0000
C1INTP           .EQ  $0001


;----- CM1NSEL Bits -----------------------------------------------------
C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002
C1NCH3           .EQ  $0003


;----- CM1PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002
PCH3             .EQ  $0003


C1PCH0           .EQ  $0000
C1PCH1           .EQ  $0001
C1PCH2           .EQ  $0002
C1PCH3           .EQ  $0003


;----- CM2CON0 Bits -----------------------------------------------------
SYNC_CM2CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved_CM2CON0 .EQ  $0002
ZLF              .EQ  $0003
POL_CM2CON0      .EQ  $0004
OUT_CM2CON0      .EQ  $0006
ON_CM2CON0       .EQ  $0007

C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2ZLF            .EQ  $0003
C2POL            .EQ  $0004
C2OUT            .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
INTN_CM2CON1     .EQ  $0000
INTP_CM2CON1     .EQ  $0001

C2INTN           .EQ  $0000
C2INTP           .EQ  $0001


;----- CM2NSEL Bits -----------------------------------------------------
C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002
C2NCH3           .EQ  $0003


;----- CM2PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002
PCH3             .EQ  $0003


C2PCH0           .EQ  $0000
C2PCH1           .EQ  $0001
C2PCH2           .EQ  $0002
C2PCH3           .EQ  $0003


;----- CM3CON0 Bits -----------------------------------------------------
SYNC_CM3CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved_CM3CON0 .EQ  $0002
ZLF              .EQ  $0003
POL_CM3CON0      .EQ  $0004
OUT_CM3CON0      .EQ  $0006
ON_CM3CON0       .EQ  $0007

C3SYNC           .EQ  $0000
C3HYS            .EQ  $0001
C3SP             .EQ  $0002
C3ZLF            .EQ  $0003
C3POL            .EQ  $0004
C3OUT            .EQ  $0006
C3ON             .EQ  $0007


;----- CM3CON1 Bits -----------------------------------------------------
INTN_CM3CON1     .EQ  $0000
INTP_CM3CON1     .EQ  $0001

C3INTN           .EQ  $0000
C3INTP           .EQ  $0001


;----- CM3NSEL Bits -----------------------------------------------------
C3NCH0           .EQ  $0000
C3NCH1           .EQ  $0001
C3NCH2           .EQ  $0002
C3NCH3           .EQ  $0003


;----- CM3PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002
PCH3             .EQ  $0003


C3PCH0           .EQ  $0000
C3PCH1           .EQ  $0001
C3PCH2           .EQ  $0002
C3PCH3           .EQ  $0003


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA4            .EQ  $0004
ANSA5            .EQ  $0005


;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005


;----- ANSELC Bits -----------------------------------------------------
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
ANSC4            .EQ  $0004
ANSC5            .EQ  $0005
ANSC6            .EQ  $0006
ANSC7            .EQ  $0007


;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006


;----- VREGCON Bits -----------------------------------------------------
Reserved_VREGCON .EQ  $0000
VREGPM           .EQ  $0001


;----- RC1STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX1STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TX1STA      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TXSTA       .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TXSTA1      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD1CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005
WPUA6            .EQ  $0006
WPUA7            .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- WPUC Bits -----------------------------------------------------
WPUC0            .EQ  $0000
WPUC1            .EQ  $0001
WPUC2            .EQ  $0002
WPUC3            .EQ  $0003
WPUC4            .EQ  $0004
WPUC5            .EQ  $0005
WPUC6            .EQ  $0006
WPUC7            .EQ  $0007


;----- WPUE Bits -----------------------------------------------------
WPUE3            .EQ  $0003


;----- SSP1BUF Bits -----------------------------------------------------
SSP1BUF0         .EQ  $0000
SSP1BUF1         .EQ  $0001
SSP1BUF2         .EQ  $0002
SSP1BUF3         .EQ  $0003
SSP1BUF4         .EQ  $0004
SSP1BUF5         .EQ  $0005
SSP1BUF6         .EQ  $0006
SSP1BUF7         .EQ  $0007


BUF0             .EQ  $0000
BUF1             .EQ  $0001
BUF2             .EQ  $0002
BUF3             .EQ  $0003
BUF4             .EQ  $0004
BUF5             .EQ  $0005
BUF6             .EQ  $0006
BUF7             .EQ  $0007



;----- SSPBUF Bits -----------------------------------------------------
SSP1BUF0         .EQ  $0000
SSP1BUF1         .EQ  $0001
SSP1BUF2         .EQ  $0002
SSP1BUF3         .EQ  $0003
SSP1BUF4         .EQ  $0004
SSP1BUF5         .EQ  $0005
SSP1BUF6         .EQ  $0006
SSP1BUF7         .EQ  $0007


BUF0             .EQ  $0000
BUF1             .EQ  $0001
BUF2             .EQ  $0002
BUF3             .EQ  $0003
BUF4             .EQ  $0004
BUF5             .EQ  $0005
BUF6             .EQ  $0006
BUF7             .EQ  $0007



;----- SSP1ADD Bits -----------------------------------------------------
SSP1ADD0         .EQ  $0000
SSP1ADD1         .EQ  $0001
SSP1ADD2         .EQ  $0002
SSP1ADD3         .EQ  $0003
SSP1ADD4         .EQ  $0004
SSP1ADD5         .EQ  $0005
SSP1ADD6         .EQ  $0006
SSP1ADD7         .EQ  $0007


ADD0             .EQ  $0000
ADD1             .EQ  $0001
ADD2             .EQ  $0002
ADD3             .EQ  $0003
ADD4             .EQ  $0004
ADD5             .EQ  $0005
ADD6             .EQ  $0006
ADD7             .EQ  $0007



;----- SSPADD Bits -----------------------------------------------------
SSP1ADD0         .EQ  $0000
SSP1ADD1         .EQ  $0001
SSP1ADD2         .EQ  $0002
SSP1ADD3         .EQ  $0003
SSP1ADD4         .EQ  $0004
SSP1ADD5         .EQ  $0005
SSP1ADD6         .EQ  $0006
SSP1ADD7         .EQ  $0007


ADD0             .EQ  $0000
ADD1             .EQ  $0001
ADD2             .EQ  $0002
ADD3             .EQ  $0003
ADD4             .EQ  $0004
ADD5             .EQ  $0005
ADD6             .EQ  $0006
ADD7             .EQ  $0007



;----- SSP1MSK Bits -----------------------------------------------------
SSP1MSK0         .EQ  $0000
SSP1MSK1         .EQ  $0001
SSP1MSK2         .EQ  $0002
SSP1MSK3         .EQ  $0003
SSP1MSK4         .EQ  $0004
SSP1MSK5         .EQ  $0005
SSP1MSK6         .EQ  $0006
SSP1MSK7         .EQ  $0007


MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007



;----- SSPMSK Bits -----------------------------------------------------
SSP1MSK0         .EQ  $0000
SSP1MSK1         .EQ  $0001
SSP1MSK2         .EQ  $0002
SSP1MSK3         .EQ  $0003
SSP1MSK4         .EQ  $0004
SSP1MSK5         .EQ  $0005
SSP1MSK6         .EQ  $0006
SSP1MSK7         .EQ  $0007


MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007



;----- SSP1STAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- SSP1CON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP1CON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSPCON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSPCON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP1CON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSPCON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


;----- SSP1CON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- SSPCON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- MD3CON0 Bits -----------------------------------------------------
BIT              .EQ  $0000
OPOL             .EQ  $0004
OUT_MD3CON0      .EQ  $0005
EN               .EQ  $0007

MD3BIT           .EQ  $0000
MD3OPOL          .EQ  $0004
MD3OUT           .EQ  $0005
MD3EN            .EQ  $0007


;----- MD3CON1 Bits -----------------------------------------------------
CLSYNC           .EQ  $0000
CLPOL            .EQ  $0001
CHSYNC           .EQ  $0004
CHPOL            .EQ  $0005

MD3CLSYNC        .EQ  $0000
MD3CLPOL         .EQ  $0001
MD3CHSYNC        .EQ  $0004
MD3CHPOL         .EQ  $0005


;----- MD3SRC Bits -----------------------------------------------------
MS0              .EQ  $0000
MS1              .EQ  $0001
MS2              .EQ  $0002
MS3              .EQ  $0003
MS4              .EQ  $0004


MD3MS0           .EQ  $0000
MD3MS1           .EQ  $0001
MD3MS2           .EQ  $0002
MD3MS3           .EQ  $0003
MD3MS4           .EQ  $0004


;----- MD3CARL Bits -----------------------------------------------------
CL0              .EQ  $0000
CL1              .EQ  $0001
CL2              .EQ  $0002
CL3              .EQ  $0003
CL4              .EQ  $0004


MD3CL0           .EQ  $0000
MD3CL1           .EQ  $0001
MD3CL2           .EQ  $0002
MD3CL3           .EQ  $0003


;----- MD3CARH Bits -----------------------------------------------------
CH0              .EQ  $0000
CH1              .EQ  $0001
CH2              .EQ  $0002
CH3              .EQ  $0003
CH4              .EQ  $0004


MD3CH0           .EQ  $0000
MD3CH1           .EQ  $0001
MD3CH2           .EQ  $0002
MD3CH3           .EQ  $0003


;----- ODCONA Bits -----------------------------------------------------
ODA0             .EQ  $0000
ODA1             .EQ  $0001
ODA2             .EQ  $0002
ODA3             .EQ  $0003
ODA4             .EQ  $0004
ODA5             .EQ  $0005
ODA6             .EQ  $0006
ODA7             .EQ  $0007


;----- ODCONB Bits -----------------------------------------------------
ODB0             .EQ  $0000
ODB1             .EQ  $0001
ODB2             .EQ  $0002
ODB3             .EQ  $0003
ODB4             .EQ  $0004
ODB5             .EQ  $0005
ODB6             .EQ  $0006
ODB7             .EQ  $0007


;----- ODCONC Bits -----------------------------------------------------
ODC0             .EQ  $0000
ODC1             .EQ  $0001
ODC2             .EQ  $0002
ODC3             .EQ  $0003
ODC4             .EQ  $0004
ODC5             .EQ  $0005
ODC6             .EQ  $0006
ODC7             .EQ  $0007


;----- CCP1CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP1CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CCP1CON    .EQ  $0000
MODE1_CCP1CON    .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP1FMT          .EQ  $0004
CCP1OUT          .EQ  $0005
CCP1EN           .EQ  $0007

CCP1MODE0        .EQ  $0000
CCP1MODE1        .EQ  $0001
CCP1MODE2        .EQ  $0002
CCP1MODE3        .EQ  $0003


;----- CCP1CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001
CTS2             .EQ  $0002
CTS3             .EQ  $0003


CCP1CTS0         .EQ  $0000
CCP1CTS1         .EQ  $0001
CCP1CTS2         .EQ  $0002
CCP1CTS3         .EQ  $0003


;----- CCP2CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP2CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CCP2CON    .EQ  $0000
MODE1_CCP2CON    .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP2FMT          .EQ  $0004
CCP2OUT          .EQ  $0005
CCP2EN           .EQ  $0007

CCP2MODE0        .EQ  $0000
CCP2MODE1        .EQ  $0001
CCP2MODE2        .EQ  $0002
CCP2MODE3        .EQ  $0003


;----- CCP2CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001
CTS2             .EQ  $0002
CTS3             .EQ  $0003


CCP2CTS0         .EQ  $0000
CCP2CTS1         .EQ  $0001
CCP2CTS2         .EQ  $0002
CCP2CTS3         .EQ  $0003


;----- CCP7CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP7CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CCP7CON    .EQ  $0000
MODE1_CCP7CON    .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP7FMT          .EQ  $0004
CCP7OUT          .EQ  $0005
CCP7EN           .EQ  $0007

CCP7MODE0        .EQ  $0000
CCP7MODE1        .EQ  $0001
CCP7MODE2        .EQ  $0002
CCP7MODE3        .EQ  $0003


;----- CCP7CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001
CTS2             .EQ  $0002
CTS3             .EQ  $0003


CCP7CTS0         .EQ  $0000
CCP7CTS1         .EQ  $0001
CCP7CTS2         .EQ  $0002
CCP7CTS3         .EQ  $0003


;----- CCPTMRS1 Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C2TSEL0          .EQ  $0002
C2TSEL1          .EQ  $0003
C7TSEL0          .EQ  $0004
C7TSEL1          .EQ  $0005


;----- CCPTMRS2 Bits -----------------------------------------------------
P3TSEL0          .EQ  $0000
P3TSEL1          .EQ  $0001
P4TSEL0          .EQ  $0002
P4TSEL1          .EQ  $0003
P9TSEL0          .EQ  $0004
P9TSEL1          .EQ  $0005


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  $0000
SLRA1            .EQ  $0001
SLRA2            .EQ  $0002
SLRA3            .EQ  $0003
SLRA4            .EQ  $0004
SLRA5            .EQ  $0005
SLRA6            .EQ  $0006
SLRA7            .EQ  $0007


;----- SLRCONB Bits -----------------------------------------------------
SLRB0            .EQ  $0000
SLRB1            .EQ  $0001
SLRB2            .EQ  $0002
SLRB3            .EQ  $0003
SLRB4            .EQ  $0004
SLRB5            .EQ  $0005
SLRB6            .EQ  $0006
SLRB7            .EQ  $0007


;----- SLRCONC Bits -----------------------------------------------------
SLRC0            .EQ  $0000
SLRC1            .EQ  $0001
SLRC2            .EQ  $0002
SLRC3            .EQ  $0003
SLRC4            .EQ  $0004
SLRC5            .EQ  $0005
SLRC6            .EQ  $0006
SLRC7            .EQ  $0007


;----- MD1CON0 Bits -----------------------------------------------------
BIT              .EQ  $0000
OPOL             .EQ  $0004
OUT_MD1CON0      .EQ  $0005
EN               .EQ  $0007

MD1BIT           .EQ  $0000
MD1OPOL          .EQ  $0004
MD1OUT           .EQ  $0005
MD1EN            .EQ  $0007


;----- MD1CON1 Bits -----------------------------------------------------
CLSYNC           .EQ  $0000
CLPOL            .EQ  $0001
CHSYNC           .EQ  $0004
CHPOL            .EQ  $0005

MD1CLSYNC        .EQ  $0000
MD1CLPOL         .EQ  $0001
MD1CHSYNC        .EQ  $0004
MD1CHPOL         .EQ  $0005


;----- MD1SRC Bits -----------------------------------------------------
MS0              .EQ  $0000
MS1              .EQ  $0001
MS2              .EQ  $0002
MS3              .EQ  $0003
MS4              .EQ  $0004


MD1MS0           .EQ  $0000
MD1MS1           .EQ  $0001
MD1MS2           .EQ  $0002
MD1MS3           .EQ  $0003
MD1MS4           .EQ  $0004


;----- MD1CARL Bits -----------------------------------------------------
CL0              .EQ  $0000
CL1              .EQ  $0001
CL2              .EQ  $0002
CL3              .EQ  $0003
CL4              .EQ  $0004


MD1CL0           .EQ  $0000
MD1CL1           .EQ  $0001
MD1CL2           .EQ  $0002
MD1CL3           .EQ  $0003


;----- MD1CARH Bits -----------------------------------------------------
CH0              .EQ  $0000
CH1              .EQ  $0001
CH2              .EQ  $0002
CH3              .EQ  $0003
CH4              .EQ  $0004


MD1CH0           .EQ  $0000
MD1CH1           .EQ  $0001
MD1CH2           .EQ  $0002
MD1CH3           .EQ  $0003


;----- MD2CON0 Bits -----------------------------------------------------
BIT              .EQ  $0000
OPOL             .EQ  $0004
OUT_MD2CON0      .EQ  $0005
EN               .EQ  $0007

MD2BIT           .EQ  $0000
MD2OPOL          .EQ  $0004
MD2OUT           .EQ  $0005
MD2EN            .EQ  $0007


;----- MD2CON1 Bits -----------------------------------------------------
CLSYNC           .EQ  $0000
CLPOL            .EQ  $0001
CHSYNC           .EQ  $0004
CHPOL            .EQ  $0005

MD2CLSYNC        .EQ  $0000
MD2CLPOL         .EQ  $0001
MD2CHSYNC        .EQ  $0004
MD2CHPOL         .EQ  $0005


;----- MD2SRC Bits -----------------------------------------------------
MS0              .EQ  $0000
MS1              .EQ  $0001
MS2              .EQ  $0002
MS3              .EQ  $0003
MS4              .EQ  $0004


MD2MS0           .EQ  $0000
MD2MS1           .EQ  $0001
MD2MS2           .EQ  $0002
MD2MS3           .EQ  $0003
MD2MS4           .EQ  $0004


;----- MD2CARL Bits -----------------------------------------------------
CL0              .EQ  $0000
CL1              .EQ  $0001
CL2              .EQ  $0002
CL3              .EQ  $0003
CL4              .EQ  $0004


MD2CL0           .EQ  $0000
MD2CL1           .EQ  $0001
MD2CL2           .EQ  $0002
MD2CL3           .EQ  $0003


;----- MD2CARH Bits -----------------------------------------------------
CH0              .EQ  $0000
CH1              .EQ  $0001
CH2              .EQ  $0002
CH3              .EQ  $0003
CH4              .EQ  $0004


MD2CH0           .EQ  $0000
MD2CH1           .EQ  $0001
MD2CH2           .EQ  $0002
MD2CH3           .EQ  $0003


;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  $0000
INLVLA1          .EQ  $0001
INLVLA2          .EQ  $0002
INLVLA3          .EQ  $0003
INLVLA4          .EQ  $0004
INLVLA5          .EQ  $0005
INLVA6           .EQ  $0006
INLVA7           .EQ  $0007


;----- INLVLB Bits -----------------------------------------------------
INLVB0           .EQ  $0000
INLVB1           .EQ  $0001
INLVB2           .EQ  $0002
INLVB3           .EQ  $0003
INLVLB4          .EQ  $0004
INLVLB5          .EQ  $0005
INLVLB6          .EQ  $0006
INLVLB7          .EQ  $0007


;----- INLVLC Bits -----------------------------------------------------
INLVLC0          .EQ  $0000
INLVLC1          .EQ  $0001
INLVLC2          .EQ  $0002
INLVLC3          .EQ  $0003
INLVLC4          .EQ  $0004
INLVLC5          .EQ  $0005
INLVLC6          .EQ  $0006
INLVLC7          .EQ  $0007


;----- INLVE Bits -----------------------------------------------------
INLVE3           .EQ  $0003


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  $0000
IOCAP1           .EQ  $0001
IOCAP2           .EQ  $0002
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005
IOCAP6           .EQ  $0006
IOCAP7           .EQ  $0007


;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN2           .EQ  $0002
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005
IOCAN6           .EQ  $0006
IOCAN7           .EQ  $0007


;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF2           .EQ  $0002
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005
IOCAF6           .EQ  $0006
IOCAF7           .EQ  $0007


;----- IOCBP Bits -----------------------------------------------------
IOCBP0           .EQ  $0000
IOCBP1           .EQ  $0001
IOCBP2           .EQ  $0002
IOCBP3           .EQ  $0003
IOCBP4           .EQ  $0004
IOCBP5           .EQ  $0005
IOCBP6           .EQ  $0006
IOCBP7           .EQ  $0007


;----- IOCBN Bits -----------------------------------------------------
IOCBN0           .EQ  $0000
IOCBN1           .EQ  $0001
IOCBN2           .EQ  $0002
IOCBN3           .EQ  $0003
IOCBN4           .EQ  $0004
IOCBN5           .EQ  $0005
IOCBN6           .EQ  $0006
IOCBN7           .EQ  $0007


;----- IOCBF Bits -----------------------------------------------------
IOCBF0           .EQ  $0000
IOCBF1           .EQ  $0001
IOCBF2           .EQ  $0002
IOCBF3           .EQ  $0003
IOCBF4           .EQ  $0004
IOCBF5           .EQ  $0005
IOCBF6           .EQ  $0006
IOCBF7           .EQ  $0007


;----- IOCCP Bits -----------------------------------------------------
IOCCP0           .EQ  $0000
IOCCP1           .EQ  $0001
IOCCP2           .EQ  $0002
IOCCP3           .EQ  $0003
IOCCP4           .EQ  $0004
IOCCP5           .EQ  $0005
IOCCP6           .EQ  $0006
IOCCP7           .EQ  $0007


;----- IOCCN Bits -----------------------------------------------------
IOCCN0           .EQ  $0000
IOCCN1           .EQ  $0001
IOCCN2           .EQ  $0002
IOCCN3           .EQ  $0003
IOCCN4           .EQ  $0004
IOCCN5           .EQ  $0005
IOCCN6           .EQ  $0006
IOCCN7           .EQ  $0007


;----- IOCCF Bits -----------------------------------------------------
IOCCF0           .EQ  $0000
IOCCF1           .EQ  $0001
IOCCF2           .EQ  $0002
IOCCF3           .EQ  $0003
IOCCF4           .EQ  $0004
IOCCF5           .EQ  $0005
IOCCF6           .EQ  $0006
IOCCF7           .EQ  $0007


;----- IOCEP Bits -----------------------------------------------------
IOCEP3           .EQ  $0003


;----- IOCEN Bits -----------------------------------------------------
IOCEN3           .EQ  $0003


;----- IOCEF Bits -----------------------------------------------------
IOCEF3           .EQ  $0003


;----- HIDRVB Bits -----------------------------------------------------
HIDB0            .EQ  $0000
HIDB1            .EQ  $0001


;----- T5CON Bits -----------------------------------------------------
ON_T5CON         .EQ  $0000
NOT_SYNC         .EQ  $0002
OSCEN            .EQ  $0003

TMRON            .EQ  $0000
SYNC_T5CON       .EQ  $0002
SOSCEN           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CS0_T5CON        .EQ  $0006
CS1_T5CON        .EQ  $0007

TMR5ON           .EQ  $0000
NOT_T5SYNC       .EQ  $0002
T5OSCEN          .EQ  $0003
T5CS0            .EQ  $0006
T5CS1            .EQ  $0007

T5ON             .EQ  $0000
T5CKPS0          .EQ  $0004
T5CKPS1          .EQ  $0005
TMR5CS0          .EQ  $0006
TMR5CS1          .EQ  $0007


;----- T5GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

GSS0             .EQ  $0000
GSS1             .EQ  $0001
T5GE             .EQ  $0007

T5GVAL           .EQ  $0002
T5GGO_NOT_DONE   .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
TMR5GE           .EQ  $0007

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001


;----- T4CON Bits -----------------------------------------------------
ON_T4CON         .EQ  $0007

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006

T4ON             .EQ  $0007

T4OUTPS0         .EQ  $0000
T4OUTPS1         .EQ  $0001
T4OUTPS2         .EQ  $0002
T4OUTPS3         .EQ  $0003
T4CKPS0          .EQ  $0004
T4CKPS1          .EQ  $0005
T4CKPS2          .EQ  $0006
TMR4ON           .EQ  $0007


;----- T4HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0_T4HLT      .EQ  $0000
MODE1_T4HLT      .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003
MODE4            .EQ  $0004

T4CKSYNC         .EQ  $0005
T4CKPOL          .EQ  $0006
T4PSYNC          .EQ  $0007

T4MODE0          .EQ  $0000
T4MODE1          .EQ  $0001
T4MODE2          .EQ  $0002
T4MODE3          .EQ  $0003
T4MODE4          .EQ  $0004


;----- T4CLKCON Bits -----------------------------------------------------
CS0_T4CLKCON     .EQ  $0000
CS1_T4CLKCON     .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


T4CS0            .EQ  $0000
T4CS1            .EQ  $0001
T4CS2            .EQ  $0002
T4CS3            .EQ  $0003


;----- T4RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003
RSEL4            .EQ  $0004


T4RSEL0          .EQ  $0000
T4RSEL1          .EQ  $0001
T4RSEL2          .EQ  $0002
T4RSEL3          .EQ  $0003
T4RSEL4          .EQ  $0004


;----- T6CON Bits -----------------------------------------------------
ON_T6CON         .EQ  $0007

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006

T6ON             .EQ  $0007

T6OUTPS0         .EQ  $0000
T6OUTPS1         .EQ  $0001
T6OUTPS2         .EQ  $0002
T6OUTPS3         .EQ  $0003
T6CKPS0          .EQ  $0004
T6CKPS1          .EQ  $0005
T6CKPS2          .EQ  $0006
TMR6ON           .EQ  $0007


;----- T6HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0_T6HLT      .EQ  $0000
MODE1_T6HLT      .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003
MODE4            .EQ  $0004

T6CKSYNC         .EQ  $0005
T6CKPOL          .EQ  $0006
T6PSYNC          .EQ  $0007

T6MODE0          .EQ  $0000
T6MODE1          .EQ  $0001
T6MODE2          .EQ  $0002
T6MODE3          .EQ  $0003
T6MODE4          .EQ  $0004


;----- T6CLKCON Bits -----------------------------------------------------
CS0_T6CLKCON     .EQ  $0000
CS1_T6CLKCON     .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


T6CS0            .EQ  $0000
T6CS1            .EQ  $0001
T6CS2            .EQ  $0002
T6CS3            .EQ  $0003


;----- T6RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003
RSEL4            .EQ  $0004


T6RSEL0          .EQ  $0000
T6RSEL1          .EQ  $0001
T6RSEL2          .EQ  $0002
T6RSEL3          .EQ  $0003
T6RSEL4          .EQ  $0004


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_ADCON0        .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADNREF           .EQ  $0002
ADFM             .EQ  $0007


;----- T2CON Bits -----------------------------------------------------
ON_T2CON         .EQ  $0007

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006

T2ON             .EQ  $0007

T2OUTPS0         .EQ  $0000
T2OUTPS1         .EQ  $0001
T2OUTPS2         .EQ  $0002
T2OUTPS3         .EQ  $0003
T2CKPS0          .EQ  $0004
T2CKPS1          .EQ  $0005
T2CKPS2          .EQ  $0006
TMR2ON           .EQ  $0007


;----- T2HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0_T2HLT      .EQ  $0000
MODE1_T2HLT      .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003
MODE4            .EQ  $0004

T2CKSYNC         .EQ  $0005
T2CKPOL          .EQ  $0006
T2PSYNC          .EQ  $0007

T2MODE0          .EQ  $0000
T2MODE1          .EQ  $0001
T2MODE2          .EQ  $0002
T2MODE3          .EQ  $0003
T2MODE4          .EQ  $0004


;----- T2CLKCON Bits -----------------------------------------------------
CS0_T2CLKCON     .EQ  $0000
CS1_T2CLKCON     .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


T2CS0            .EQ  $0000
T2CS1            .EQ  $0001
T2CS2            .EQ  $0002
T2CS3            .EQ  $0003


;----- T2RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003
RSEL4            .EQ  $0004


T2RSEL0          .EQ  $0000
T2RSEL1          .EQ  $0001
T2RSEL2          .EQ  $0002
T2RSEL3          .EQ  $0003
T2RSEL4          .EQ  $0004


;----- T8CON Bits -----------------------------------------------------
ON_T8CON         .EQ  $0007

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006

T8ON             .EQ  $0007

T8OUTPS0         .EQ  $0000
T8OUTPS1         .EQ  $0001
T8OUTPS2         .EQ  $0002
T8OUTPS3         .EQ  $0003
T8CKPS0          .EQ  $0004
T8CKPS1          .EQ  $0005
T8CKPS2          .EQ  $0006
TMR8ON           .EQ  $0007


;----- T8HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0_T8HLT      .EQ  $0000
MODE1_T8HLT      .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003
MODE4            .EQ  $0004

T8CKSYNC         .EQ  $0005
T8CKPOL          .EQ  $0006
T8PSYNC          .EQ  $0007

T8MODE0          .EQ  $0000
T8MODE1          .EQ  $0001
T8MODE2          .EQ  $0002
T8MODE3          .EQ  $0003
T8MODE4          .EQ  $0004


;----- T8CLKCON Bits -----------------------------------------------------
CS0_T8CLKCON     .EQ  $0000
CS1_T8CLKCON     .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


T8CS0            .EQ  $0000
T8CS1            .EQ  $0001
T8CS2            .EQ  $0002
T8CS3            .EQ  $0003


;----- T8RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003
RSEL4            .EQ  $0004


T8RSEL0          .EQ  $0000
T8RSEL1          .EQ  $0001
T8RSEL2          .EQ  $0002
T8RSEL3          .EQ  $0003
T8RSEL4          .EQ  $0004


;----- OPA1CON Bits -----------------------------------------------------
ORPOL            .EQ  $0002
UG               .EQ  $0004
EN               .EQ  $0007

ORM0             .EQ  $0000
ORM1             .EQ  $0001

OPA1ORPOL        .EQ  $0002
OPA1UG           .EQ  $0004
OPA1EN           .EQ  $0007

OPA1ORM0         .EQ  $0000
OPA1ORM1         .EQ  $0001


;----- OPA2CON Bits -----------------------------------------------------
ORPOL            .EQ  $0002
UG               .EQ  $0004
EN               .EQ  $0007

ORM0             .EQ  $0000
ORM1             .EQ  $0001

OPA2ORPOL        .EQ  $0002
OPA2UG           .EQ  $0004
OPA2EN           .EQ  $0007

OPA2ORM0         .EQ  $0000
OPA2ORM1         .EQ  $0001


;----- OPA3CON Bits -----------------------------------------------------
ORPOL            .EQ  $0002
UG               .EQ  $0004
SP               .EQ  $0006
EN               .EQ  $0007

ORM0             .EQ  $0000
ORM1             .EQ  $0001

OPA3ORPOL        .EQ  $0002
OPA3UG           .EQ  $0004
OPA3SP           .EQ  $0006
OPA3EN           .EQ  $0007

OPA3ORM0         .EQ  $0000
OPA3ORM1         .EQ  $0001


;----- DACLD Bits -----------------------------------------------------
DAC1LD           .EQ  $0000
DAC2LD           .EQ  $0001
DAC5LD           .EQ  $0004


;----- DAC1CON0 Bits -----------------------------------------------------
OE2              .EQ  $0004
OE1              .EQ  $0005
FM               .EQ  $0006
EN               .EQ  $0007

NSS0             .EQ  $0000
NSS1             .EQ  $0001
PSS0             .EQ  $0002
PSS1             .EQ  $0003
OE               .EQ  $0005

DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACFM            .EQ  $0006
DACEN            .EQ  $0007

DACNSS0          .EQ  $0000
DACNSS1          .EQ  $0001
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003
DACOE            .EQ  $0005

DAC1OE2          .EQ  $0004
DAC1OE1          .EQ  $0005
DAC1FM           .EQ  $0006
DAC1EN           .EQ  $0007

DAC1NSS0         .EQ  $0000
DAC1NSS1         .EQ  $0001
DAC1PSS0         .EQ  $0002
DAC1PSS1         .EQ  $0003


;----- DAC1CON1 Bits -----------------------------------------------------
REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005
REF6             .EQ  $0006
REF7             .EQ  $0007

DAC1REF0         .EQ  $0000
DAC1REF1         .EQ  $0001
DAC1REF2         .EQ  $0002
DAC1REF3         .EQ  $0003
DAC1REF4         .EQ  $0004
DAC1REF5         .EQ  $0005
DAC1REF6         .EQ  $0006
DAC1REF7         .EQ  $0007

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004
R5               .EQ  $0005
R6               .EQ  $0006
R7               .EQ  $0007

DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004
DAC1R5           .EQ  $0005
DAC1R6           .EQ  $0006
DAC1R7           .EQ  $0007


;----- DAC1REFL Bits -----------------------------------------------------
REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005
REF6             .EQ  $0006
REF7             .EQ  $0007

DAC1REF0         .EQ  $0000
DAC1REF1         .EQ  $0001
DAC1REF2         .EQ  $0002
DAC1REF3         .EQ  $0003
DAC1REF4         .EQ  $0004
DAC1REF5         .EQ  $0005
DAC1REF6         .EQ  $0006
DAC1REF7         .EQ  $0007

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004
R5               .EQ  $0005
R6               .EQ  $0006
R7               .EQ  $0007

DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004
DAC1R5           .EQ  $0005
DAC1R6           .EQ  $0006
DAC1R7           .EQ  $0007


;----- DAC1CON2 Bits -----------------------------------------------------
REF8             .EQ  $0000
REF9             .EQ  $0001
REF10            .EQ  $0002
REF11            .EQ  $0003
REF12            .EQ  $0004
REF13            .EQ  $0005
REF14            .EQ  $0006
REF15            .EQ  $0007

DAC1REF8         .EQ  $0000
DAC1REF9         .EQ  $0001
DAC1REF10        .EQ  $0002
DAC1REF11        .EQ  $0003
DAC1REF12        .EQ  $0004
DAC1REF13        .EQ  $0005
DAC1REF14        .EQ  $0006
DAC1REF15        .EQ  $0007

R8               .EQ  $0000
R9               .EQ  $0001
R10              .EQ  $0002
R11              .EQ  $0003
R12              .EQ  $0004
R13              .EQ  $0005
R14              .EQ  $0006
R15              .EQ  $0007

DAC1R8           .EQ  $0000
DAC1R9           .EQ  $0001
DAC1R10          .EQ  $0002
DAC1R11          .EQ  $0003
DAC1R12          .EQ  $0004
DAC1R13          .EQ  $0005
DAC1R14          .EQ  $0006
DAC1R15          .EQ  $0007


;----- DAC1REFH Bits -----------------------------------------------------
REF8             .EQ  $0000
REF9             .EQ  $0001
REF10            .EQ  $0002
REF11            .EQ  $0003
REF12            .EQ  $0004
REF13            .EQ  $0005
REF14            .EQ  $0006
REF15            .EQ  $0007

DAC1REF8         .EQ  $0000
DAC1REF9         .EQ  $0001
DAC1REF10        .EQ  $0002
DAC1REF11        .EQ  $0003
DAC1REF12        .EQ  $0004
DAC1REF13        .EQ  $0005
DAC1REF14        .EQ  $0006
DAC1REF15        .EQ  $0007

R8               .EQ  $0000
R9               .EQ  $0001
R10              .EQ  $0002
R11              .EQ  $0003
R12              .EQ  $0004
R13              .EQ  $0005
R14              .EQ  $0006
R15              .EQ  $0007

DAC1R8           .EQ  $0000
DAC1R9           .EQ  $0001
DAC1R10          .EQ  $0002
DAC1R11          .EQ  $0003
DAC1R12          .EQ  $0004
DAC1R13          .EQ  $0005
DAC1R14          .EQ  $0006
DAC1R15          .EQ  $0007


;----- DAC2CON0 Bits -----------------------------------------------------
OE2              .EQ  $0004
OE1              .EQ  $0005
FM               .EQ  $0006
EN               .EQ  $0007

NSS0             .EQ  $0000
NSS1             .EQ  $0001
PSS0             .EQ  $0002
PSS1             .EQ  $0003
OE               .EQ  $0005

DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACFM            .EQ  $0006
DACEN            .EQ  $0007

DACNSS0          .EQ  $0000
DACNSS1          .EQ  $0001
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003
DACOE            .EQ  $0005

DAC2OE2          .EQ  $0004
DAC2OE1          .EQ  $0005
DAC2FM           .EQ  $0006
DAC2EN           .EQ  $0007

DAC2NSS0         .EQ  $0000
DAC2NSS1         .EQ  $0001
DAC2PSS0         .EQ  $0002
DAC2PSS1         .EQ  $0003


;----- DAC2CON1 Bits -----------------------------------------------------
REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005
REF6             .EQ  $0006
REF7             .EQ  $0007

DAC2REF0         .EQ  $0000
DAC2REF1         .EQ  $0001
DAC2REF2         .EQ  $0002
DAC2REF3         .EQ  $0003
DAC2REF4         .EQ  $0004
DAC2REF5         .EQ  $0005
DAC2REF6         .EQ  $0006
DAC2REF7         .EQ  $0007

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004
R5               .EQ  $0005
R6               .EQ  $0006
R7               .EQ  $0007

DAC2R0           .EQ  $0000
DAC2R1           .EQ  $0001
DAC2R2           .EQ  $0002
DAC2R3           .EQ  $0003
DAC2R4           .EQ  $0004
DAC2R5           .EQ  $0005
DAC2R6           .EQ  $0006
DAC2R7           .EQ  $0007


;----- DAC2REFL Bits -----------------------------------------------------
REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005
REF6             .EQ  $0006
REF7             .EQ  $0007

DAC2REF0         .EQ  $0000
DAC2REF1         .EQ  $0001
DAC2REF2         .EQ  $0002
DAC2REF3         .EQ  $0003
DAC2REF4         .EQ  $0004
DAC2REF5         .EQ  $0005
DAC2REF6         .EQ  $0006
DAC2REF7         .EQ  $0007

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004
R5               .EQ  $0005
R6               .EQ  $0006
R7               .EQ  $0007

DAC2R0           .EQ  $0000
DAC2R1           .EQ  $0001
DAC2R2           .EQ  $0002
DAC2R3           .EQ  $0003
DAC2R4           .EQ  $0004
DAC2R5           .EQ  $0005
DAC2R6           .EQ  $0006
DAC2R7           .EQ  $0007


;----- DAC2CON2 Bits -----------------------------------------------------
REF8             .EQ  $0000
REF9             .EQ  $0001
REF10            .EQ  $0002
REF11            .EQ  $0003
REF12            .EQ  $0004
REF13            .EQ  $0005
REF14            .EQ  $0006
REF15            .EQ  $0007

DAC2REF8         .EQ  $0000
DAC2REF9         .EQ  $0001
DAC2REF10        .EQ  $0002
DAC2REF11        .EQ  $0003
DAC2REF12        .EQ  $0004
DAC2REF13        .EQ  $0005
DAC2REF14        .EQ  $0006
DAC2REF15        .EQ  $0007

R8               .EQ  $0000
R9               .EQ  $0001
R10              .EQ  $0002
R11              .EQ  $0003
R12              .EQ  $0004
R13              .EQ  $0005
R14              .EQ  $0006
R15              .EQ  $0007

DAC2R8           .EQ  $0000
DAC2R9           .EQ  $0001
DAC2R10          .EQ  $0002
DAC2R11          .EQ  $0003
DAC2R12          .EQ  $0004
DAC2R13          .EQ  $0005
DAC2R14          .EQ  $0006
DAC2R15          .EQ  $0007


;----- DAC2REFH Bits -----------------------------------------------------
REF8             .EQ  $0000
REF9             .EQ  $0001
REF10            .EQ  $0002
REF11            .EQ  $0003
REF12            .EQ  $0004
REF13            .EQ  $0005
REF14            .EQ  $0006
REF15            .EQ  $0007

DAC2REF8         .EQ  $0000
DAC2REF9         .EQ  $0001
DAC2REF10        .EQ  $0002
DAC2REF11        .EQ  $0003
DAC2REF12        .EQ  $0004
DAC2REF13        .EQ  $0005
DAC2REF14        .EQ  $0006
DAC2REF15        .EQ  $0007

R8               .EQ  $0000
R9               .EQ  $0001
R10              .EQ  $0002
R11              .EQ  $0003
R12              .EQ  $0004
R13              .EQ  $0005
R14              .EQ  $0006
R15              .EQ  $0007

DAC2R8           .EQ  $0000
DAC2R9           .EQ  $0001
DAC2R10          .EQ  $0002
DAC2R11          .EQ  $0003
DAC2R12          .EQ  $0004
DAC2R13          .EQ  $0005
DAC2R14          .EQ  $0006
DAC2R15          .EQ  $0007


;----- DAC3CON0 Bits -----------------------------------------------------
OE2              .EQ  $0004
OE1              .EQ  $0005
EN               .EQ  $0007

NSS0             .EQ  $0000
NSS1             .EQ  $0001
PSS0             .EQ  $0002
PSS1             .EQ  $0003

DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACEN            .EQ  $0007

DACNSS0          .EQ  $0000
DACNSS1          .EQ  $0001
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003

DAC3OE2          .EQ  $0004
DAC3OE1          .EQ  $0005
DAC3EN           .EQ  $0007

DAC3NSS0         .EQ  $0000
DAC3NSS1         .EQ  $0001
DAC3PSS0         .EQ  $0002
DAC3PSS1         .EQ  $0003


;----- DAC3CON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC3R0           .EQ  $0000
DAC3R1           .EQ  $0001
DAC3R2           .EQ  $0002
DAC3R3           .EQ  $0003
DAC3R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004

DAC3REF0         .EQ  $0000
DAC3REF1         .EQ  $0001
DAC3REF2         .EQ  $0002
DAC3REF3         .EQ  $0003
DAC3REF4         .EQ  $0004


;----- DAC3REF Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC3R0           .EQ  $0000
DAC3R1           .EQ  $0001
DAC3R2           .EQ  $0002
DAC3R3           .EQ  $0003
DAC3R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004

DAC3REF0         .EQ  $0000
DAC3REF1         .EQ  $0001
DAC3REF2         .EQ  $0002
DAC3REF3         .EQ  $0003
DAC3REF4         .EQ  $0004


;----- DAC4CON0 Bits -----------------------------------------------------
OE2              .EQ  $0004
OE1              .EQ  $0005
EN               .EQ  $0007

NSS0             .EQ  $0000
NSS1             .EQ  $0001
PSS0             .EQ  $0002
PSS1             .EQ  $0003

DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACEN            .EQ  $0007

DACNSS0          .EQ  $0000
DACNSS1          .EQ  $0001
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003

DAC4OE2          .EQ  $0004
DAC4OE1          .EQ  $0005
DAC4EN           .EQ  $0007

DAC4NSS0         .EQ  $0000
DAC4NSS1         .EQ  $0001
DAC4PSS0         .EQ  $0002
DAC4PSS1         .EQ  $0003


;----- DAC4CON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC4R0           .EQ  $0000
DAC4R1           .EQ  $0001
DAC4R2           .EQ  $0002
DAC4R3           .EQ  $0003
DAC4R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004

DAC4REF0         .EQ  $0000
DAC4REF1         .EQ  $0001
DAC4REF2         .EQ  $0002
DAC4REF3         .EQ  $0003
DAC4REF4         .EQ  $0004


;----- DAC4REF Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC4R0           .EQ  $0000
DAC4R1           .EQ  $0001
DAC4R2           .EQ  $0002
DAC4R3           .EQ  $0003
DAC4R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004

DAC4REF0         .EQ  $0000
DAC4REF1         .EQ  $0001
DAC4REF2         .EQ  $0002
DAC4REF3         .EQ  $0003
DAC4REF4         .EQ  $0004


;----- DAC5CON0 Bits -----------------------------------------------------
OE2              .EQ  $0004
OE1              .EQ  $0005
FM               .EQ  $0006
EN               .EQ  $0007

NSS0             .EQ  $0000
NSS1             .EQ  $0001
PSS0             .EQ  $0002
PSS1             .EQ  $0003
OE               .EQ  $0005

DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACFM            .EQ  $0006
DACEN            .EQ  $0007

DACNSS0          .EQ  $0000
DACNSS1          .EQ  $0001
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003
DACOE            .EQ  $0005

DAC5OE2          .EQ  $0004
DAC5OE1          .EQ  $0005
DAC5FM           .EQ  $0006
DAC5EN           .EQ  $0007

DAC5NSS0         .EQ  $0000
DAC5NSS1         .EQ  $0001
DAC5PSS0         .EQ  $0002
DAC5PSS1         .EQ  $0003


;----- DAC5CON1 Bits -----------------------------------------------------
REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005
REF6             .EQ  $0006
REF7             .EQ  $0007

DAC5REF0         .EQ  $0000
DAC5REF1         .EQ  $0001
DAC5REF2         .EQ  $0002
DAC5REF3         .EQ  $0003
DAC5REF4         .EQ  $0004
DAC5REF5         .EQ  $0005
DAC5REF6         .EQ  $0006
DAC5REF7         .EQ  $0007

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004
R5               .EQ  $0005
R6               .EQ  $0006
R7               .EQ  $0007

DAC5R0           .EQ  $0000
DAC5R1           .EQ  $0001
DAC5R2           .EQ  $0002
DAC5R3           .EQ  $0003
DAC5R4           .EQ  $0004
DAC5R5           .EQ  $0005
DAC5R6           .EQ  $0006
DAC5R7           .EQ  $0007


;----- DAC5REFL Bits -----------------------------------------------------
REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004
REF5             .EQ  $0005
REF6             .EQ  $0006
REF7             .EQ  $0007

DAC5REF0         .EQ  $0000
DAC5REF1         .EQ  $0001
DAC5REF2         .EQ  $0002
DAC5REF3         .EQ  $0003
DAC5REF4         .EQ  $0004
DAC5REF5         .EQ  $0005
DAC5REF6         .EQ  $0006
DAC5REF7         .EQ  $0007

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004
R5               .EQ  $0005
R6               .EQ  $0006
R7               .EQ  $0007

DAC5R0           .EQ  $0000
DAC5R1           .EQ  $0001
DAC5R2           .EQ  $0002
DAC5R3           .EQ  $0003
DAC5R4           .EQ  $0004
DAC5R5           .EQ  $0005
DAC5R6           .EQ  $0006
DAC5R7           .EQ  $0007


;----- DAC5CON2 Bits -----------------------------------------------------
REF8             .EQ  $0000
REF9             .EQ  $0001
REF10            .EQ  $0002
REF11            .EQ  $0003
REF12            .EQ  $0004
REF13            .EQ  $0005
REF14            .EQ  $0006
REF15            .EQ  $0007

DAC5REF8         .EQ  $0000
DAC5REF9         .EQ  $0001
DAC5REF10        .EQ  $0002
DAC5REF11        .EQ  $0003
DAC5REF12        .EQ  $0004
DAC5REF13        .EQ  $0005
DAC5REF14        .EQ  $0006
DAC5REF15        .EQ  $0007

R8               .EQ  $0000
R9               .EQ  $0001
R10              .EQ  $0002
R11              .EQ  $0003
R12              .EQ  $0004
R13              .EQ  $0005
R14              .EQ  $0006
R15              .EQ  $0007

DAC5R8           .EQ  $0000
DAC5R9           .EQ  $0001
DAC5R10          .EQ  $0002
DAC5R11          .EQ  $0003
DAC5R12          .EQ  $0004
DAC5R13          .EQ  $0005
DAC5R14          .EQ  $0006
DAC5R15          .EQ  $0007


;----- DAC5REFH Bits -----------------------------------------------------
REF8             .EQ  $0000
REF9             .EQ  $0001
REF10            .EQ  $0002
REF11            .EQ  $0003
REF12            .EQ  $0004
REF13            .EQ  $0005
REF14            .EQ  $0006
REF15            .EQ  $0007

DAC5REF8         .EQ  $0000
DAC5REF9         .EQ  $0001
DAC5REF10        .EQ  $0002
DAC5REF11        .EQ  $0003
DAC5REF12        .EQ  $0004
DAC5REF13        .EQ  $0005
DAC5REF14        .EQ  $0006
DAC5REF15        .EQ  $0007

R8               .EQ  $0000
R9               .EQ  $0001
R10              .EQ  $0002
R11              .EQ  $0003
R12              .EQ  $0004
R13              .EQ  $0005
R14              .EQ  $0006
R15              .EQ  $0007

DAC5R8           .EQ  $0000
DAC5R9           .EQ  $0001
DAC5R10          .EQ  $0002
DAC5R11          .EQ  $0003
DAC5R12          .EQ  $0004
DAC5R13          .EQ  $0005
DAC5R14          .EQ  $0006
DAC5R15          .EQ  $0007


;----- DAC7CON0 Bits -----------------------------------------------------
OE2              .EQ  $0004
OE1              .EQ  $0005
EN               .EQ  $0007

NSS0             .EQ  $0000
NSS1             .EQ  $0001
PSS0             .EQ  $0002
PSS1             .EQ  $0003

DACOE2           .EQ  $0004
DACOE1           .EQ  $0005
DACEN            .EQ  $0007

DACNSS0          .EQ  $0000
DACNSS1          .EQ  $0001
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003

DAC7OE2          .EQ  $0004
DAC7OE1          .EQ  $0005
DAC7EN           .EQ  $0007

DAC7NSS0         .EQ  $0000
DAC7NSS1         .EQ  $0001
DAC7PSS0         .EQ  $0002
DAC7PSS1         .EQ  $0003


;----- DAC7CON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC7R0           .EQ  $0000
DAC7R1           .EQ  $0001
DAC7R2           .EQ  $0002
DAC7R3           .EQ  $0003
DAC7R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004

DAC7REF0         .EQ  $0000
DAC7REF1         .EQ  $0001
DAC7REF2         .EQ  $0002
DAC7REF3         .EQ  $0003
DAC7REF4         .EQ  $0004


;----- DAC7REF Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004

R0               .EQ  $0000
R1               .EQ  $0001
R2               .EQ  $0002
R3               .EQ  $0003
R4               .EQ  $0004


DAC7R0           .EQ  $0000
DAC7R1           .EQ  $0001
DAC7R2           .EQ  $0002
DAC7R3           .EQ  $0003
DAC7R4           .EQ  $0004

REF0             .EQ  $0000
REF1             .EQ  $0001
REF2             .EQ  $0002
REF3             .EQ  $0003
REF4             .EQ  $0004

DAC7REF0         .EQ  $0000
DAC7REF1         .EQ  $0001
DAC7REF2         .EQ  $0002
DAC7REF3         .EQ  $0003
DAC7REF4         .EQ  $0004


;----- PWM3DCL Bits -----------------------------------------------------
DC0              .EQ  $0006
DC1              .EQ  $0007

PWM3DC0          .EQ  $0006
PWM3DC1          .EQ  $0007

PWMPW0           .EQ  $0006
PWMPW1           .EQ  $0007


;----- PWM3DCH Bits -----------------------------------------------------
DC2              .EQ  $0000
DC3              .EQ  $0001
DC4              .EQ  $0002
DC5              .EQ  $0003
DC6              .EQ  $0004
DC7              .EQ  $0005
DC8              .EQ  $0006
DC9              .EQ  $0007

PWM3DC2          .EQ  $0000
PWM3DC3          .EQ  $0001
PWM3DC4          .EQ  $0002
PWM3DC5          .EQ  $0003
PWM3DC6          .EQ  $0004
PWM3DC7          .EQ  $0005
PWM3DC8          .EQ  $0006
PWM3DC9          .EQ  $0007

PWMPW2           .EQ  $0000
PWMPW3           .EQ  $0001
PWMPW4           .EQ  $0002
PWMPW5           .EQ  $0003
PWMPW6           .EQ  $0004
PWMPW7           .EQ  $0005
PWMPW8           .EQ  $0006
PWMPW9           .EQ  $0007


;----- PWM3CON Bits -----------------------------------------------------
POL_PWM3CON      .EQ  $0004
OUT_PWM3CON      .EQ  $0005
EN               .EQ  $0007

PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3EN           .EQ  $0007


;----- PWM4DCL Bits -----------------------------------------------------
DC0              .EQ  $0006
DC1              .EQ  $0007

PWM4DC0          .EQ  $0006
PWM4DC1          .EQ  $0007

PWMPW0           .EQ  $0006
PWMPW1           .EQ  $0007


;----- PWM4DCH Bits -----------------------------------------------------
DC2              .EQ  $0000
DC3              .EQ  $0001
DC4              .EQ  $0002
DC5              .EQ  $0003
DC6              .EQ  $0004
DC7              .EQ  $0005
DC8              .EQ  $0006
DC9              .EQ  $0007

PWM4DC2          .EQ  $0000
PWM4DC3          .EQ  $0001
PWM4DC4          .EQ  $0002
PWM4DC5          .EQ  $0003
PWM4DC6          .EQ  $0004
PWM4DC7          .EQ  $0005
PWM4DC8          .EQ  $0006
PWM4DC9          .EQ  $0007

PWMPW2           .EQ  $0000
PWMPW3           .EQ  $0001
PWMPW4           .EQ  $0002
PWMPW5           .EQ  $0003
PWMPW6           .EQ  $0004
PWMPW7           .EQ  $0005
PWMPW8           .EQ  $0006
PWMPW9           .EQ  $0007


;----- PWM4CON Bits -----------------------------------------------------
POL_PWM4CON      .EQ  $0004
OUT_PWM4CON      .EQ  $0005
EN               .EQ  $0007

PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4EN           .EQ  $0007


;----- PWM9DCL Bits -----------------------------------------------------
DC0              .EQ  $0006
DC1              .EQ  $0007

PWM9DC0          .EQ  $0006
PWM9DC1          .EQ  $0007

PWMPW0           .EQ  $0006
PWMPW1           .EQ  $0007


;----- PWM9DCH Bits -----------------------------------------------------
DC2              .EQ  $0000
DC3              .EQ  $0001
DC4              .EQ  $0002
DC5              .EQ  $0003
DC6              .EQ  $0004
DC7              .EQ  $0005
DC8              .EQ  $0006
DC9              .EQ  $0007

PWM9DC2          .EQ  $0000
PWM9DC3          .EQ  $0001
PWM9DC4          .EQ  $0002
PWM9DC5          .EQ  $0003
PWM9DC6          .EQ  $0004
PWM9DC7          .EQ  $0005
PWM9DC8          .EQ  $0006
PWM9DC9          .EQ  $0007

PWMPW2           .EQ  $0000
PWMPW3           .EQ  $0001
PWMPW4           .EQ  $0002
PWMPW5           .EQ  $0003
PWMPW6           .EQ  $0004
PWMPW7           .EQ  $0005
PWMPW8           .EQ  $0006
PWMPW9           .EQ  $0007


;----- PWM9CON Bits -----------------------------------------------------
POL_PWM9CON      .EQ  $0004
OUT_PWM9CON      .EQ  $0005
EN               .EQ  $0007

PWM9POL          .EQ  $0004
PWM9OUT          .EQ  $0005
PWM9EN           .EQ  $0007


;----- COG1PHR Bits -----------------------------------------------------
PHR0             .EQ  $0000
PHR1             .EQ  $0001
PHR2             .EQ  $0002
PHR3             .EQ  $0003
PHR4             .EQ  $0004
PHR5             .EQ  $0005

G1PHR0           .EQ  $0000
G1PHR1           .EQ  $0001
G1PHR2           .EQ  $0002
G1PHR3           .EQ  $0003
G1PHR4           .EQ  $0004
G1PHR5           .EQ  $0005


;----- COG1PHF Bits -----------------------------------------------------
PHF0             .EQ  $0000
PHF1             .EQ  $0001
PHF2             .EQ  $0002
PHF3             .EQ  $0003
PHF4             .EQ  $0004
PHF5             .EQ  $0005

G1PHF0           .EQ  $0000
G1PHF1           .EQ  $0001
G1PHF2           .EQ  $0002
G1PHF3           .EQ  $0003
G1PHF4           .EQ  $0004
G1PHF5           .EQ  $0005


;----- COG1BLKR Bits -----------------------------------------------------
BLKR0            .EQ  $0000
BLKR1            .EQ  $0001
BLKR2            .EQ  $0002
BLKR3            .EQ  $0003
BLKR4            .EQ  $0004
BLKR5            .EQ  $0005

G1BLKR0          .EQ  $0000
G1BLKR1          .EQ  $0001
G1BLKR2          .EQ  $0002
G1BLKR3          .EQ  $0003
G1BLKR4          .EQ  $0004
G1BLKR5          .EQ  $0005


;----- COG1BLKF Bits -----------------------------------------------------
BLKF0            .EQ  $0000
BLKF1            .EQ  $0001
BLKF2            .EQ  $0002
BLKF3            .EQ  $0003
BLKF4            .EQ  $0004
BLKF5            .EQ  $0005

G1BLKF0          .EQ  $0000
G1BLKF1          .EQ  $0001
G1BLKF2          .EQ  $0002
G1BLKF3          .EQ  $0003
G1BLKF4          .EQ  $0004
G1BLKF5          .EQ  $0005


;----- COG1DBR Bits -----------------------------------------------------
DBR0             .EQ  $0000
DBR1             .EQ  $0001
DBR2             .EQ  $0002
DBR3             .EQ  $0003
DBR4             .EQ  $0004
DBR5             .EQ  $0005

G1DBR0           .EQ  $0000
G1DBR1           .EQ  $0001
G1DBR2           .EQ  $0002
G1DBR3           .EQ  $0003
G1DBR4           .EQ  $0004
G1DBR5           .EQ  $0005


;----- COG1DBF Bits -----------------------------------------------------
DBF0             .EQ  $0000
DBF1             .EQ  $0001
DBF2             .EQ  $0002
DBF3             .EQ  $0003
DBF4             .EQ  $0004
DBF5             .EQ  $0005

G1DBF0           .EQ  $0000
G1DBF1           .EQ  $0001
G1DBF2           .EQ  $0002
G1DBF3           .EQ  $0003
G1DBF4           .EQ  $0004
G1DBF5           .EQ  $0005



;----- COG1CON0 Bits -----------------------------------------------------
LD               .EQ  $0006
EN               .EQ  $0007

MD0              .EQ  $0000
MD1              .EQ  $0001
MD2              .EQ  $0002
CS0_COG1CON0     .EQ  $0003
CS1_COG1CON0     .EQ  $0004

G1LD             .EQ  $0006
G1EN             .EQ  $0007

G1MD0            .EQ  $0000
G1MD1            .EQ  $0001
G1MD2            .EQ  $0002
G1CS0            .EQ  $0003
G1CS1            .EQ  $0004


;----- COG1CON1 Bits -----------------------------------------------------
POLA             .EQ  $0000
POLB             .EQ  $0001
POLC             .EQ  $0002
POLD             .EQ  $0003
FDBS             .EQ  $0006
RDBS             .EQ  $0007

G1POLA           .EQ  $0000
G1POLB           .EQ  $0001
G1POLC           .EQ  $0002
G1POLD           .EQ  $0003
G1FDBS           .EQ  $0006
G1RDBS           .EQ  $0007


;----- COG1RIS0 Bits -----------------------------------------------------
RIS0             .EQ  $0000
RIS1             .EQ  $0001
RIS2             .EQ  $0002
RIS3             .EQ  $0003
RIS4             .EQ  $0004
RIS5             .EQ  $0005
RIS6             .EQ  $0006
RIS7             .EQ  $0007

G1RIS0           .EQ  $0000
G1RIS1           .EQ  $0001
G1RIS2           .EQ  $0002
G1RIS3           .EQ  $0003
G1RIS4           .EQ  $0004
G1RIS5           .EQ  $0005
G1RIS6           .EQ  $0006
G1RIS7           .EQ  $0007


;----- COG1RIS1 Bits -----------------------------------------------------
RIS8             .EQ  $0000
RIS9             .EQ  $0001
RIS10            .EQ  $0002
RIS11            .EQ  $0003
RIS12            .EQ  $0004
RIS13            .EQ  $0005
RIS14            .EQ  $0006
RIS15            .EQ  $0007

G1RIS8           .EQ  $0000
G1RIS9           .EQ  $0001
G1RIS10          .EQ  $0002
G1RIS11          .EQ  $0003
G1RIS12          .EQ  $0004
G1RIS13          .EQ  $0005
G1RIS14          .EQ  $0006
G1RIS15          .EQ  $0007


;----- COG1RSIM0 Bits -----------------------------------------------------
RSIM0            .EQ  $0000
RSIM1            .EQ  $0001
RSIM2            .EQ  $0002
RSIM3            .EQ  $0003
RSIM4            .EQ  $0004
RSIM5            .EQ  $0005
RSIM6            .EQ  $0006
RSIM7            .EQ  $0007

G1RSIM0          .EQ  $0000
G1RSIM1          .EQ  $0001
G1RSIM2          .EQ  $0002
G1RSIM3          .EQ  $0003
G1RSIM4          .EQ  $0004
G1RSIM5          .EQ  $0005
G1RSIM6          .EQ  $0006
G1RSIM7          .EQ  $0007


;----- COG1RSIM1 Bits -----------------------------------------------------
RSIM8            .EQ  $0000
RSIM9            .EQ  $0001
RSIM10           .EQ  $0002
RSIM11           .EQ  $0003
RSIM12           .EQ  $0004
RSIM13           .EQ  $0005
RSIM14           .EQ  $0006
RSIM15           .EQ  $0007

G1RSIM8          .EQ  $0000
G1RSIM9          .EQ  $0001
G1RSIM10         .EQ  $0002
G1RSIM11         .EQ  $0003
G1RSIM12         .EQ  $0004
G1RSIM13         .EQ  $0005
G1RSIM14         .EQ  $0006
G1RSIM15         .EQ  $0007


;----- COG1FIS0 Bits -----------------------------------------------------
FIS0             .EQ  $0000
FIS1             .EQ  $0001
FIS2             .EQ  $0002
FIS3             .EQ  $0003
FIS4             .EQ  $0004
FIS5             .EQ  $0005
FIS6             .EQ  $0006
FIS7             .EQ  $0007

G1FIS0           .EQ  $0000
G1FIS1           .EQ  $0001
G1FIS2           .EQ  $0002
G1FIS3           .EQ  $0003
G1FIS4           .EQ  $0004
G1FIS5           .EQ  $0005
G1FIS6           .EQ  $0006
G1FIS7           .EQ  $0007


;----- COG1FIS1 Bits -----------------------------------------------------
FIS8             .EQ  $0000
FIS9             .EQ  $0001
FIS10            .EQ  $0002
FIS11            .EQ  $0003
FIS12            .EQ  $0004
FIS13            .EQ  $0005
FIS14            .EQ  $0006
FIS15            .EQ  $0007

G1FIS8           .EQ  $0000
G1FIS9           .EQ  $0001
G1FIS10          .EQ  $0002
G1FIS11          .EQ  $0003
G1FIS12          .EQ  $0004
G1FIS13          .EQ  $0005
G1FIS14          .EQ  $0006
G1FIS15          .EQ  $0007


;----- COG1FSIM0 Bits -----------------------------------------------------
FSIM0            .EQ  $0000
FSIM1            .EQ  $0001
FSIM2            .EQ  $0002
FSIM3            .EQ  $0003
FSIM4            .EQ  $0004
FSIM5            .EQ  $0005
FSIM6            .EQ  $0006
FSIM7            .EQ  $0007

G1FSIM0          .EQ  $0000
G1FSIM1          .EQ  $0001
G1FSIM2          .EQ  $0002
G1FSIM3          .EQ  $0003
G1FSIM4          .EQ  $0004
G1FSIM5          .EQ  $0005
G1FSIM6          .EQ  $0006
G1FSIM7          .EQ  $0007


;----- COG1FSIM1 Bits -----------------------------------------------------
FSIM8            .EQ  $0000
FSIM9            .EQ  $0001
FSIM10           .EQ  $0002
FSIM11           .EQ  $0003
FSIM12           .EQ  $0004
FSIM13           .EQ  $0005
FSIM14           .EQ  $0006
FSIM15           .EQ  $0007

G1FSIM8          .EQ  $0000
G1FSIM9          .EQ  $0001
G1FSIM10         .EQ  $0002
G1FSIM11         .EQ  $0003
G1FSIM12         .EQ  $0004
G1FSIM13         .EQ  $0005
G1FSIM14         .EQ  $0006
G1FSIM15         .EQ  $0007


;----- COG1ASD0 Bits -----------------------------------------------------
ASREN            .EQ  $0006
ASE              .EQ  $0007

ASDAC0           .EQ  $0002
ASDAC1           .EQ  $0003
ASDBD0           .EQ  $0004
ASDBD1           .EQ  $0005
ARSEN            .EQ  $0006

G1ARSEN          .EQ  $0006
G1ASE            .EQ  $0007

G1ASDAC0         .EQ  $0002
G1ASDAC1         .EQ  $0003
G1ASDBD0         .EQ  $0004
G1ASDBD1         .EQ  $0005
G1ASREN          .EQ  $0006


;----- COG1ASD1 Bits -----------------------------------------------------
AS0E             .EQ  $0000
AS1E             .EQ  $0001
AS2E             .EQ  $0002
AS3E             .EQ  $0003
AS4E             .EQ  $0004
AS5E             .EQ  $0005
AS6E             .EQ  $0006
AS7E             .EQ  $0007

G1AS0E           .EQ  $0000
G1AS1E           .EQ  $0001
G1AS2E           .EQ  $0002
G1AS3E           .EQ  $0003
G1AS4E           .EQ  $0004
G1AS5E           .EQ  $0005
G1AS6E           .EQ  $0006
G1AS7E           .EQ  $0007


;----- COG1STR Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
SDATA            .EQ  $0004
SDATB            .EQ  $0005
SDATC            .EQ  $0006
SDATD            .EQ  $0007

G1STRA           .EQ  $0000
G1STRB           .EQ  $0001
G1STRC           .EQ  $0002
G1STRD           .EQ  $0003
G1SDATA          .EQ  $0004
G1SDATB          .EQ  $0005
G1SDATC          .EQ  $0006
G1SDATD          .EQ  $0007


;----- COG2PHR Bits -----------------------------------------------------
PHR0             .EQ  $0000
PHR1             .EQ  $0001
PHR2             .EQ  $0002
PHR3             .EQ  $0003
PHR4             .EQ  $0004
PHR5             .EQ  $0005

G2PHR0           .EQ  $0000
G2PHR1           .EQ  $0001
G2PHR2           .EQ  $0002
G2PHR3           .EQ  $0003
G2PHR4           .EQ  $0004
G2PHR5           .EQ  $0005


;----- COG2PHF Bits -----------------------------------------------------
PHF0             .EQ  $0000
PHF1             .EQ  $0001
PHF2             .EQ  $0002
PHF3             .EQ  $0003
PHF4             .EQ  $0004
PHF5             .EQ  $0005

G2PHF0           .EQ  $0000
G2PHF1           .EQ  $0001
G2PHF2           .EQ  $0002
G2PHF3           .EQ  $0003
G2PHF4           .EQ  $0004
G2PHF5           .EQ  $0005


;----- COG2BLKR Bits -----------------------------------------------------
BLKR0            .EQ  $0000
BLKR1            .EQ  $0001
BLKR2            .EQ  $0002
BLKR3            .EQ  $0003
BLKR4            .EQ  $0004
BLKR5            .EQ  $0005

G2BLKR0          .EQ  $0000
G2BLKR1          .EQ  $0001
G2BLKR2          .EQ  $0002
G2BLKR3          .EQ  $0003
G2BLKR4          .EQ  $0004
G2BLKR5          .EQ  $0005


;----- COG2BLKF Bits -----------------------------------------------------
BLKF0            .EQ  $0000
BLKF1            .EQ  $0001
BLKF2            .EQ  $0002
BLKF3            .EQ  $0003
BLKF4            .EQ  $0004
BLKF5            .EQ  $0005

G2BLKF0          .EQ  $0000
G2BLKF1          .EQ  $0001
G2BLKF2          .EQ  $0002
G2BLKF3          .EQ  $0003
G2BLKF4          .EQ  $0004
G2BLKF5          .EQ  $0005


;----- COG2DBR Bits -----------------------------------------------------
DBR0             .EQ  $0000
DBR1             .EQ  $0001
DBR2             .EQ  $0002
DBR3             .EQ  $0003
DBR4             .EQ  $0004
DBR5             .EQ  $0005

G2DBR0           .EQ  $0000
G2DBR1           .EQ  $0001
G2DBR2           .EQ  $0002
G2DBR3           .EQ  $0003
G2DBR4           .EQ  $0004
G2DBR5           .EQ  $0005


;----- COG2DBF Bits -----------------------------------------------------
DBF0             .EQ  $0000
DBF1             .EQ  $0001
DBF2             .EQ  $0002
DBF3             .EQ  $0003
DBF4             .EQ  $0004
DBF5             .EQ  $0005

G2DBF0           .EQ  $0000
G2DBF1           .EQ  $0001
G2DBF2           .EQ  $0002
G2DBF3           .EQ  $0003
G2DBF4           .EQ  $0004
G2DBF5           .EQ  $0005



;----- COG2CON0 Bits -----------------------------------------------------
LD               .EQ  $0006
EN               .EQ  $0007

MD0              .EQ  $0000
MD1              .EQ  $0001
MD2              .EQ  $0002
CS0_COG2CON0     .EQ  $0003
CS1_COG2CON0     .EQ  $0004

G2LD             .EQ  $0006
G2EN             .EQ  $0007

G2MD0            .EQ  $0000
G2MD1            .EQ  $0001
G2MD2            .EQ  $0002
G2CS0            .EQ  $0003
G2CS1            .EQ  $0004


;----- COG2CON1 Bits -----------------------------------------------------
POLA             .EQ  $0000
POLB             .EQ  $0001
POLC             .EQ  $0002
POLD             .EQ  $0003
FDBS             .EQ  $0006
RDBS             .EQ  $0007

G2POLA           .EQ  $0000
G2POLB           .EQ  $0001
G2POLC           .EQ  $0002
G2POLD           .EQ  $0003
G2FDBS           .EQ  $0006
G2RDBS           .EQ  $0007


;----- COG2RIS0 Bits -----------------------------------------------------
RIS0             .EQ  $0000
RIS1             .EQ  $0001
RIS2             .EQ  $0002
RIS3             .EQ  $0003
RIS4             .EQ  $0004
RIS5             .EQ  $0005
RIS6             .EQ  $0006
RIS7             .EQ  $0007

G2RIS0           .EQ  $0000
G2RIS1           .EQ  $0001
G2RIS2           .EQ  $0002
G2RIS3           .EQ  $0003
G2RIS4           .EQ  $0004
G2RIS5           .EQ  $0005
G2RIS6           .EQ  $0006
G2RIS7           .EQ  $0007


;----- COG2RIS1 Bits -----------------------------------------------------
RIS8             .EQ  $0000
RIS9             .EQ  $0001
RIS10            .EQ  $0002
RIS11            .EQ  $0003
RIS12            .EQ  $0004
RIS13            .EQ  $0005
RIS14            .EQ  $0006
RIS15            .EQ  $0007

G2RIS8           .EQ  $0000
G2RIS9           .EQ  $0001
G2RIS10          .EQ  $0002
G2RIS11          .EQ  $0003
G2RIS12          .EQ  $0004
G2RIS13          .EQ  $0005
G2RIS14          .EQ  $0006
G2RIS15          .EQ  $0007


;----- COG2RSIM0 Bits -----------------------------------------------------
RSIM0            .EQ  $0000
RSIM1            .EQ  $0001
RSIM2            .EQ  $0002
RSIM3            .EQ  $0003
RSIM4            .EQ  $0004
RSIM5            .EQ  $0005
RSIM6            .EQ  $0006
RSIM7            .EQ  $0007

G2RSIM0          .EQ  $0000
G2RSIM1          .EQ  $0001
G2RSIM2          .EQ  $0002
G2RSIM3          .EQ  $0003
G2RSIM4          .EQ  $0004
G2RSIM5          .EQ  $0005
G2RSIM6          .EQ  $0006
G2RSIM7          .EQ  $0007


;----- COG2RSIM1 Bits -----------------------------------------------------
RSIM8            .EQ  $0000
RSIM9            .EQ  $0001
RSIM10           .EQ  $0002
RSIM11           .EQ  $0003
RSIM12           .EQ  $0004
RSIM13           .EQ  $0005
RSIM14           .EQ  $0006
RSIM15           .EQ  $0007

G2RSIM8          .EQ  $0000
G2RSIM9          .EQ  $0001
G2RSIM10         .EQ  $0002
G2RSIM11         .EQ  $0003
G2RSIM12         .EQ  $0004
G2RSIM13         .EQ  $0005
G2RSIM14         .EQ  $0006
G2RSIM15         .EQ  $0007


;----- COG2FIS0 Bits -----------------------------------------------------
FIS0             .EQ  $0000
FIS1             .EQ  $0001
FIS2             .EQ  $0002
FIS3             .EQ  $0003
FIS4             .EQ  $0004
FIS5             .EQ  $0005
FIS6             .EQ  $0006
FIS7             .EQ  $0007

G2FIS0           .EQ  $0000
G2FIS1           .EQ  $0001
G2FIS2           .EQ  $0002
G2FIS3           .EQ  $0003
G2FIS4           .EQ  $0004
G2FIS5           .EQ  $0005
G2FIS6           .EQ  $0006
G2FIS7           .EQ  $0007


;----- COG2FIS1 Bits -----------------------------------------------------
FIS8             .EQ  $0000
FIS9             .EQ  $0001
FIS10            .EQ  $0002
FIS11            .EQ  $0003
FIS12            .EQ  $0004
FIS13            .EQ  $0005
FIS14            .EQ  $0006
FIS15            .EQ  $0007

G2FIS8           .EQ  $0000
G2FIS9           .EQ  $0001
G2FIS10          .EQ  $0002
G2FIS11          .EQ  $0003
G2FIS12          .EQ  $0004
G2FIS13          .EQ  $0005
G2FIS14          .EQ  $0006
G2FIS15          .EQ  $0007


;----- COG2FSIM0 Bits -----------------------------------------------------
FSIM0            .EQ  $0000
FSIM1            .EQ  $0001
FSIM2            .EQ  $0002
FSIM3            .EQ  $0003
FSIM4            .EQ  $0004
FSIM5            .EQ  $0005
FSIM6            .EQ  $0006
FSIM7            .EQ  $0007

G2FSIM0          .EQ  $0000
G2FSIM1          .EQ  $0001
G2FSIM2          .EQ  $0002
G2FSIM3          .EQ  $0003
G2FSIM4          .EQ  $0004
G2FSIM5          .EQ  $0005
G2FSIM6          .EQ  $0006
G2FSIM7          .EQ  $0007


;----- COG2FSIM1 Bits -----------------------------------------------------
FSIM8            .EQ  $0000
FSIM9            .EQ  $0001
FSIM10           .EQ  $0002
FSIM11           .EQ  $0003
FSIM12           .EQ  $0004
FSIM13           .EQ  $0005
FSIM14           .EQ  $0006
FSIM15           .EQ  $0007

G2FSIM8          .EQ  $0000
G2FSIM9          .EQ  $0001
G2FSIM10         .EQ  $0002
G2FSIM11         .EQ  $0003
G2FSIM12         .EQ  $0004
G2FSIM13         .EQ  $0005
G2FSIM14         .EQ  $0006
G2FSIM15         .EQ  $0007


;----- COG2ASD0 Bits -----------------------------------------------------
ASREN            .EQ  $0006
ASE              .EQ  $0007

ASDAC0           .EQ  $0002
ASDAC1           .EQ  $0003
ASDBD0           .EQ  $0004
ASDBD1           .EQ  $0005
ARSEN            .EQ  $0006

G2ARSEN          .EQ  $0006
G2ASE            .EQ  $0007

G2ASDAC0         .EQ  $0002
G2ASDAC1         .EQ  $0003
G2ASDBD0         .EQ  $0004
G2ASDBD1         .EQ  $0005
G2ASREN          .EQ  $0006


;----- COG2ASD1 Bits -----------------------------------------------------
AS0E             .EQ  $0000
AS1E             .EQ  $0001
AS2E             .EQ  $0002
AS3E             .EQ  $0003
AS4E             .EQ  $0004
AS5E             .EQ  $0005
AS6E             .EQ  $0006
AS7E             .EQ  $0007

G2AS0E           .EQ  $0000
G2AS1E           .EQ  $0001
G2AS2E           .EQ  $0002
G2AS3E           .EQ  $0003
G2AS4E           .EQ  $0004
G2AS5E           .EQ  $0005
G2AS6E           .EQ  $0006
G2AS7E           .EQ  $0007


;----- COG2STR Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
SDATA            .EQ  $0004
SDATB            .EQ  $0005
SDATC            .EQ  $0006
SDATD            .EQ  $0007

G2STRA           .EQ  $0000
G2STRB           .EQ  $0001
G2STRC           .EQ  $0002
G2STRD           .EQ  $0003
G2SDATA          .EQ  $0004
G2SDATB          .EQ  $0005
G2SDATC          .EQ  $0006
G2SDATD          .EQ  $0007


;----- PRG1RTSS Bits -----------------------------------------------------
RTSS0            .EQ  $0000
RTSS1            .EQ  $0001
RTSS2            .EQ  $0002
RTSS3            .EQ  $0003

RG1RTSS0         .EQ  $0000
RG1RTSS1         .EQ  $0001
RG1RTSS2         .EQ  $0002
RG1RTSS3         .EQ  $0003


;----- PRG1FTSS Bits -----------------------------------------------------
FTSS0            .EQ  $0000
FTSS1            .EQ  $0001
FTSS2            .EQ  $0002
FTSS3            .EQ  $0003

RG1FTSS0         .EQ  $0000
RG1FTSS1         .EQ  $0001
RG1FTSS2         .EQ  $0002
RG1FTSS3         .EQ  $0003


;----- PRG1INS Bits -----------------------------------------------------
INS0             .EQ  $0000
INS1             .EQ  $0001
INS2             .EQ  $0002
INS3             .EQ  $0003

RG1INS0          .EQ  $0000
RG1INS1          .EQ  $0001
RG1INS2          .EQ  $0002
RG1INS3          .EQ  $0003


;----- PRG1CON0 Bits -----------------------------------------------------
GO_PRG1CON0      .EQ  $0000
OS               .EQ  $0001
REDG             .EQ  $0004
FEDG             .EQ  $0005
EN               .EQ  $0007

MODE0_PRG1CON0   .EQ  $0002
MODE1_PRG1CON0   .EQ  $0003

RG1GO            .EQ  $0000
RG1OS            .EQ  $0001
RG1REDG          .EQ  $0004
RG1FEDG          .EQ  $0005
RG1EN            .EQ  $0007

RG1MODE0         .EQ  $0002
RG1MODE1         .EQ  $0003


;----- PRG1CON1 Bits -----------------------------------------------------
RPOL             .EQ  $0000
FPOL             .EQ  $0001
RDY              .EQ  $0002

RG1RPOL          .EQ  $0000
RG1FPOL          .EQ  $0001
RG1RDY           .EQ  $0002


;----- PRG1CON2 Bits -----------------------------------------------------
ISET0            .EQ  $0000
ISET1            .EQ  $0001
ISET2            .EQ  $0002
ISET3            .EQ  $0003
ISET4            .EQ  $0004


RG1ISET0         .EQ  $0000
RG1ISET1         .EQ  $0001
RG1ISET2         .EQ  $0002
RG1ISET3         .EQ  $0003
RG1ISET4         .EQ  $0004


;----- PRG2RTSS Bits -----------------------------------------------------
RTSS0            .EQ  $0000
RTSS1            .EQ  $0001
RTSS2            .EQ  $0002
RTSS3            .EQ  $0003

RG2RTSS0         .EQ  $0000
RG2RTSS1         .EQ  $0001
RG2RTSS2         .EQ  $0002
RG2RTSS3         .EQ  $0003


;----- PRG2FTSS Bits -----------------------------------------------------
FTSS0            .EQ  $0000
FTSS1            .EQ  $0001
FTSS2            .EQ  $0002
FTSS3            .EQ  $0003

RG2FTSS0         .EQ  $0000
RG2FTSS1         .EQ  $0001
RG2FTSS2         .EQ  $0002
RG2FTSS3         .EQ  $0003


;----- PRG2INS Bits -----------------------------------------------------
INS0             .EQ  $0000
INS1             .EQ  $0001
INS2             .EQ  $0002
INS3             .EQ  $0003

RG2INS0          .EQ  $0000
RG2INS1          .EQ  $0001
RG2INS2          .EQ  $0002
RG2INS3          .EQ  $0003


;----- PRG2CON0 Bits -----------------------------------------------------
GO_PRG2CON0      .EQ  $0000
OS               .EQ  $0001
REDG             .EQ  $0004
FEDG             .EQ  $0005
EN               .EQ  $0007

MODE0_PRG2CON0   .EQ  $0002
MODE1_PRG2CON0   .EQ  $0003

RG2GO            .EQ  $0000
RG2OS            .EQ  $0001
RG2REDG          .EQ  $0004
RG2FEDG          .EQ  $0005
RG2EN            .EQ  $0007

RG2MODE0         .EQ  $0002
RG2MODE1         .EQ  $0003


;----- PRG2CON1 Bits -----------------------------------------------------
RPOL             .EQ  $0000
FPOL             .EQ  $0001
RDY              .EQ  $0002

RG2RPOL          .EQ  $0000
RG2FPOL          .EQ  $0001
RG2RDY           .EQ  $0002


;----- PRG2CON2 Bits -----------------------------------------------------
ISET0            .EQ  $0000
ISET1            .EQ  $0001
ISET2            .EQ  $0002
ISET3            .EQ  $0003
ISET4            .EQ  $0004


RG2ISET0         .EQ  $0000
RG2ISET1         .EQ  $0001
RG2ISET2         .EQ  $0002
RG2ISET3         .EQ  $0003
RG2ISET4         .EQ  $0004


;----- PRG3RTSS Bits -----------------------------------------------------
RTSS0            .EQ  $0000
RTSS1            .EQ  $0001
RTSS2            .EQ  $0002
RTSS3            .EQ  $0003

RG3RTSS0         .EQ  $0000
RG3RTSS1         .EQ  $0001
RG3RTSS2         .EQ  $0002
RG3RTSS3         .EQ  $0003


;----- PRG3FTSS Bits -----------------------------------------------------
FTSS0            .EQ  $0000
FTSS1            .EQ  $0001
FTSS2            .EQ  $0002
FTSS3            .EQ  $0003

RG3FTSS0         .EQ  $0000
RG3FTSS1         .EQ  $0001
RG3FTSS2         .EQ  $0002
RG3FTSS3         .EQ  $0003


;----- PRG3INS Bits -----------------------------------------------------
INS0             .EQ  $0000
INS1             .EQ  $0001
INS2             .EQ  $0002
INS3             .EQ  $0003

RG3INS0          .EQ  $0000
RG3INS1          .EQ  $0001
RG3INS2          .EQ  $0002
RG3INS3          .EQ  $0003


;----- PRG3CON0 Bits -----------------------------------------------------
GO_PRG3CON0      .EQ  $0000
OS               .EQ  $0001
REDG             .EQ  $0004
FEDG             .EQ  $0005
EN               .EQ  $0007

MODE0_PRG3CON0   .EQ  $0002
MODE1_PRG3CON0   .EQ  $0003

RG3GO            .EQ  $0000
RG3OS            .EQ  $0001
RG3REDG          .EQ  $0004
RG3FEDG          .EQ  $0005
RG3EN            .EQ  $0007

RG3MODE0         .EQ  $0002
RG3MODE1         .EQ  $0003


;----- PRG3CON1 Bits -----------------------------------------------------
RPOL             .EQ  $0000
FPOL             .EQ  $0001
RDY              .EQ  $0002

RG3RPOL          .EQ  $0000
RG3FPOL          .EQ  $0001
RG3RDY           .EQ  $0002


;----- PRG3CON2 Bits -----------------------------------------------------
ISET0            .EQ  $0000
ISET1            .EQ  $0001
ISET2            .EQ  $0002
ISET3            .EQ  $0003
ISET4            .EQ  $0004


RG3ISET0         .EQ  $0000
RG3ISET1         .EQ  $0001
RG3ISET2         .EQ  $0002
RG3ISET3         .EQ  $0003
RG3ISET4         .EQ  $0004


;----- COG3PHR Bits -----------------------------------------------------
PHR0             .EQ  $0000
PHR1             .EQ  $0001
PHR2             .EQ  $0002
PHR3             .EQ  $0003
PHR4             .EQ  $0004
PHR5             .EQ  $0005

G3PHR0           .EQ  $0000
G3PHR1           .EQ  $0001
G3PHR2           .EQ  $0002
G3PHR3           .EQ  $0003
G3PHR4           .EQ  $0004
G3PHR5           .EQ  $0005


;----- COG3PHF Bits -----------------------------------------------------
PHF0             .EQ  $0000
PHF1             .EQ  $0001
PHF2             .EQ  $0002
PHF3             .EQ  $0003
PHF4             .EQ  $0004
PHF5             .EQ  $0005

G3PHF0           .EQ  $0000
G3PHF1           .EQ  $0001
G3PHF2           .EQ  $0002
G3PHF3           .EQ  $0003
G3PHF4           .EQ  $0004
G3PHF5           .EQ  $0005


;----- COG3BLKR Bits -----------------------------------------------------
BLKR0            .EQ  $0000
BLKR1            .EQ  $0001
BLKR2            .EQ  $0002
BLKR3            .EQ  $0003
BLKR4            .EQ  $0004
BLKR5            .EQ  $0005

G3BLKR0          .EQ  $0000
G3BLKR1          .EQ  $0001
G3BLKR2          .EQ  $0002
G3BLKR3          .EQ  $0003
G3BLKR4          .EQ  $0004
G3BLKR5          .EQ  $0005


;----- COG3BLKF Bits -----------------------------------------------------
BLKF0            .EQ  $0000
BLKF1            .EQ  $0001
BLKF2            .EQ  $0002
BLKF3            .EQ  $0003
BLKF4            .EQ  $0004
BLKF5            .EQ  $0005

G3BLKF0          .EQ  $0000
G3BLKF1          .EQ  $0001
G3BLKF2          .EQ  $0002
G3BLKF3          .EQ  $0003
G3BLKF4          .EQ  $0004
G3BLKF5          .EQ  $0005


;----- COG3DBR Bits -----------------------------------------------------
DBR0             .EQ  $0000
DBR1             .EQ  $0001
DBR2             .EQ  $0002
DBR3             .EQ  $0003
DBR4             .EQ  $0004
DBR5             .EQ  $0005

G3DBR0           .EQ  $0000
G3DBR1           .EQ  $0001
G3DBR2           .EQ  $0002
G3DBR3           .EQ  $0003
G3DBR4           .EQ  $0004
G3DBR5           .EQ  $0005


;----- COG3DBF Bits -----------------------------------------------------
DBF0             .EQ  $0000
DBF1             .EQ  $0001
DBF2             .EQ  $0002
DBF3             .EQ  $0003
DBF4             .EQ  $0004
DBF5             .EQ  $0005

G3DBF0           .EQ  $0000
G3DBF1           .EQ  $0001
G3DBF2           .EQ  $0002
G3DBF3           .EQ  $0003
G3DBF4           .EQ  $0004
G3DBF5           .EQ  $0005



;----- COG3CON0 Bits -----------------------------------------------------
LD               .EQ  $0006
EN               .EQ  $0007

MD0              .EQ  $0000
MD1              .EQ  $0001
MD2              .EQ  $0002
CS0_COG3CON0     .EQ  $0003
CS1_COG3CON0     .EQ  $0004

G3LD             .EQ  $0006
G3EN             .EQ  $0007

G3MD0            .EQ  $0000
G3MD1            .EQ  $0001
G3MD2            .EQ  $0002
G3CS0            .EQ  $0003
G3CS1            .EQ  $0004


;----- COG3CON1 Bits -----------------------------------------------------
POLA             .EQ  $0000
POLB             .EQ  $0001
POLC             .EQ  $0002
POLD             .EQ  $0003
FDBS             .EQ  $0006
RDBS             .EQ  $0007

G3POLA           .EQ  $0000
G3POLB           .EQ  $0001
G3POLC           .EQ  $0002
G3POLD           .EQ  $0003
G3FDBS           .EQ  $0006
G3RDBS           .EQ  $0007


;----- COG3RIS0 Bits -----------------------------------------------------
RIS0             .EQ  $0000
RIS1             .EQ  $0001
RIS2             .EQ  $0002
RIS3             .EQ  $0003
RIS4             .EQ  $0004
RIS5             .EQ  $0005
RIS6             .EQ  $0006
RIS7             .EQ  $0007

G3RIS0           .EQ  $0000
G3RIS1           .EQ  $0001
G3RIS2           .EQ  $0002
G3RIS3           .EQ  $0003
G3RIS4           .EQ  $0004
G3RIS5           .EQ  $0005
G3RIS6           .EQ  $0006
G3RIS7           .EQ  $0007


;----- COG3RIS1 Bits -----------------------------------------------------
RIS9             .EQ  $0001
RIS11            .EQ  $0003
RIS12            .EQ  $0004
RIS13            .EQ  $0005
RIS14            .EQ  $0006
RIS15            .EQ  $0007

G3RIS9           .EQ  $0001
G3RIS11          .EQ  $0003
G3RIS12          .EQ  $0004
G3RIS13          .EQ  $0005
G3RIS14          .EQ  $0006
G3RIS15          .EQ  $0007


;----- COG3RSIM0 Bits -----------------------------------------------------
RSIM0            .EQ  $0000
RSIM1            .EQ  $0001
RSIM2            .EQ  $0002
RSIM3            .EQ  $0003
RSIM4            .EQ  $0004
RSIM5            .EQ  $0005
RSIM6            .EQ  $0006
RSIM7            .EQ  $0007

G3RSIM0          .EQ  $0000
G3RSIM1          .EQ  $0001
G3RSIM2          .EQ  $0002
G3RSIM3          .EQ  $0003
G3RSIM4          .EQ  $0004
G3RSIM5          .EQ  $0005
G3RSIM6          .EQ  $0006
G3RSIM7          .EQ  $0007


;----- COG3RSIM1 Bits -----------------------------------------------------
RSIM9            .EQ  $0001
RSIM11           .EQ  $0003
RSIM12           .EQ  $0004
RSIM13           .EQ  $0005
RSIM14           .EQ  $0006
RSIM15           .EQ  $0007

G3RSIM9          .EQ  $0001
G3RSIM11         .EQ  $0003
G3RSIM12         .EQ  $0004
G3RSIM13         .EQ  $0005
G3RSIM14         .EQ  $0006
G3RSIM15         .EQ  $0007


;----- COG3FIS0 Bits -----------------------------------------------------
FIS0             .EQ  $0000
FIS1             .EQ  $0001
FIS2             .EQ  $0002
FIS3             .EQ  $0003
FIS4             .EQ  $0004
FIS5             .EQ  $0005
FIS6             .EQ  $0006
FIS7             .EQ  $0007

G3FIS0           .EQ  $0000
G3FIS1           .EQ  $0001
G3FIS2           .EQ  $0002
G3FIS3           .EQ  $0003
G3FIS4           .EQ  $0004
G3FIS5           .EQ  $0005
G3FIS6           .EQ  $0006
G3FIS7           .EQ  $0007


;----- COG3FIS1 Bits -----------------------------------------------------
FIS9             .EQ  $0001
FIS11            .EQ  $0003
FIS12            .EQ  $0004
FIS13            .EQ  $0005
FIS14            .EQ  $0006
FIS15            .EQ  $0007

G3FIS9           .EQ  $0001
G3FIS11          .EQ  $0003
G3FIS12          .EQ  $0004
G3FIS13          .EQ  $0005
G3FIS14          .EQ  $0006
G3FIS15          .EQ  $0007


;----- COG3FSIM0 Bits -----------------------------------------------------
FSIM0            .EQ  $0000
FSIM1            .EQ  $0001
FSIM2            .EQ  $0002
FSIM3            .EQ  $0003
FSIM4            .EQ  $0004
FSIM5            .EQ  $0005
FSIM6            .EQ  $0006
FSIM7            .EQ  $0007

G3FSIM0          .EQ  $0000
G3FSIM1          .EQ  $0001
G3FSIM2          .EQ  $0002
G3FSIM3          .EQ  $0003
G3FSIM4          .EQ  $0004
G3FSIM5          .EQ  $0005
G3FSIM6          .EQ  $0006
G3FSIM7          .EQ  $0007


;----- COG3FSIM1 Bits -----------------------------------------------------
FSIM9            .EQ  $0001
FSIM11           .EQ  $0003
FSIM12           .EQ  $0004
FSIM13           .EQ  $0005
FSIM14           .EQ  $0006
FSIM15           .EQ  $0007

G3FSIM9          .EQ  $0001
G3FSIM11         .EQ  $0003
G3FSIM12         .EQ  $0004
G3FSIM13         .EQ  $0005
G3FSIM14         .EQ  $0006
G3FSIM15         .EQ  $0007


;----- COG3ASD0 Bits -----------------------------------------------------
ASREN            .EQ  $0006
ASE              .EQ  $0007

ASDAC0           .EQ  $0002
ASDAC1           .EQ  $0003
ASDBD0           .EQ  $0004
ASDBD1           .EQ  $0005
ARSEN            .EQ  $0006

G3ARSEN          .EQ  $0006
G3ASE            .EQ  $0007

G3ASDAC0         .EQ  $0002
G3ASDAC1         .EQ  $0003
G3ASDBD0         .EQ  $0004
G3ASDBD1         .EQ  $0005
G3ASREN          .EQ  $0006


;----- COG3ASD1 Bits -----------------------------------------------------
AS0E             .EQ  $0000
AS1E             .EQ  $0001
AS2E             .EQ  $0002
AS3E             .EQ  $0003
AS4E             .EQ  $0004
AS5E             .EQ  $0005
AS6E             .EQ  $0006
AS7E             .EQ  $0007

G3AS0E           .EQ  $0000
G3AS1E           .EQ  $0001
G3AS2E           .EQ  $0002
G3AS3E           .EQ  $0003
G3AS4E           .EQ  $0004
G3AS5E           .EQ  $0005
G3AS6E           .EQ  $0006
G3AS7E           .EQ  $0007


;----- COG3STR Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
SDATA            .EQ  $0004
SDATB            .EQ  $0005
SDATC            .EQ  $0006
SDATD            .EQ  $0007

G3STRA           .EQ  $0000
G3STRB           .EQ  $0001
G3STRC           .EQ  $0002
G3STRD           .EQ  $0003
G3SDATA          .EQ  $0004
G3SDATB          .EQ  $0005
G3SDATC          .EQ  $0006
G3SDATD          .EQ  $0007


;----- CM4CON0 Bits -----------------------------------------------------
SYNC_CM4CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved_CM4CON0 .EQ  $0002
ZLF              .EQ  $0003
POL_CM4CON0      .EQ  $0004
OUT_CM4CON0      .EQ  $0006
ON_CM4CON0       .EQ  $0007

C4SYNC           .EQ  $0000
C4HYS            .EQ  $0001
C4SP             .EQ  $0002
C4ZLF            .EQ  $0003
C4POL            .EQ  $0004
C4OUT            .EQ  $0006
C4ON             .EQ  $0007


;----- CM4CON1 Bits -----------------------------------------------------
INTN_CM4CON1     .EQ  $0000
INTP_CM4CON1     .EQ  $0001

C4INTN           .EQ  $0000
C4INTP           .EQ  $0001


;----- CM4NSEL Bits -----------------------------------------------------
C4NCH0           .EQ  $0000
C4NCH1           .EQ  $0001
C4NCH2           .EQ  $0002
C4NCH3           .EQ  $0003


;----- CM4PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002
PCH3             .EQ  $0003


C4PCH0           .EQ  $0000
C4PCH1           .EQ  $0001
C4PCH2           .EQ  $0002
C4PCH3           .EQ  $0003


;----- CM5CON0 Bits -----------------------------------------------------
SYNC_CM5CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved_CM5CON0 .EQ  $0002
ZLF              .EQ  $0003
POL_CM5CON0      .EQ  $0004
OUT_CM5CON0      .EQ  $0006
ON_CM5CON0       .EQ  $0007

C5SYNC           .EQ  $0000
C5HYS            .EQ  $0001
C5SP             .EQ  $0002
C5ZLF            .EQ  $0003
C5POL            .EQ  $0004
C5OUT            .EQ  $0006
C5ON             .EQ  $0007


;----- CM5CON1 Bits -----------------------------------------------------
INTN_CM5CON1     .EQ  $0000
INTP_CM5CON1     .EQ  $0001

C5INTN           .EQ  $0000
C5INTP           .EQ  $0001


;----- CM5NSEL Bits -----------------------------------------------------
C5NCH0           .EQ  $0000
C5NCH1           .EQ  $0001
C5NCH2           .EQ  $0002
C5NCH3           .EQ  $0003


;----- CM5PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002
PCH3             .EQ  $0003


C5PCH0           .EQ  $0000
C5PCH1           .EQ  $0001
C5PCH2           .EQ  $0002
C5PCH3           .EQ  $0003


;----- CM6CON0 Bits -----------------------------------------------------
SYNC_CM6CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved_CM6CON0 .EQ  $0002
ZLF              .EQ  $0003
POL_CM6CON0      .EQ  $0004
OUT_CM6CON0      .EQ  $0006
ON_CM6CON0       .EQ  $0007

C6SYNC           .EQ  $0000
C6HYS            .EQ  $0001
C6SP             .EQ  $0002
C6ZLF            .EQ  $0003
C6POL            .EQ  $0004
C6OUT            .EQ  $0006
C6ON             .EQ  $0007


;----- CM6CON1 Bits -----------------------------------------------------
INTN_CM6CON1     .EQ  $0000
INTP_CM6CON1     .EQ  $0001

C6INTN           .EQ  $0000
C6INTP           .EQ  $0001


;----- CM6NSEL Bits -----------------------------------------------------
C6NCH0           .EQ  $0000
C6NCH1           .EQ  $0001
C6NCH2           .EQ  $0002
C6NCH3           .EQ  $0003


;----- CM6PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002
PCH3             .EQ  $0003


C6PCH0           .EQ  $0000
C6PCH1           .EQ  $0001
C6PCH2           .EQ  $0002
C6PCH3           .EQ  $0003


;----- PWMEN Bits -----------------------------------------------------
MPWM5EN          .EQ  $0000
MPWM6EN          .EQ  $0001
MPWM11EN         .EQ  $0002


;----- PWMLD Bits -----------------------------------------------------
MPWM5LD          .EQ  $0000
MPWM6LD          .EQ  $0001
MPWM11LD         .EQ  $0002


;----- PWMOUT Bits -----------------------------------------------------
MPWM5OUT         .EQ  $0000
MPWM6OUT         .EQ  $0001
MPWM11OUT        .EQ  $0002


;----- PWM5PHL Bits -----------------------------------------------------
PWM5PHL0         .EQ  $0000
PWM5PHL1         .EQ  $0001
PWM5PHL2         .EQ  $0002
PWM5PHL3         .EQ  $0003
PWM5PHL4         .EQ  $0004
PWM5PHL5         .EQ  $0005
PWM5PHL6         .EQ  $0006
PWM5PHL7         .EQ  $0007



;----- PWM5PHH Bits -----------------------------------------------------
PWM5PHH0         .EQ  $0000
PWM5PHH1         .EQ  $0001
PWM5PHH2         .EQ  $0002
PWM5PHH3         .EQ  $0003
PWM5PHH4         .EQ  $0004
PWM5PHH5         .EQ  $0005
PWM5PHH6         .EQ  $0006
PWM5PHH7         .EQ  $0007



;----- PWM5DCL Bits -----------------------------------------------------
PWM5DCL0         .EQ  $0000
PWM5DCL1         .EQ  $0001
PWM5DCL2         .EQ  $0002
PWM5DCL3         .EQ  $0003
PWM5DCL4         .EQ  $0004
PWM5DCL5         .EQ  $0005
PWM5DCL6         .EQ  $0006
PWM5DCL7         .EQ  $0007



;----- PWM5DCH Bits -----------------------------------------------------
PWM5DCH0         .EQ  $0000
PWM5DCH1         .EQ  $0001
PWM5DCH2         .EQ  $0002
PWM5DCH3         .EQ  $0003
PWM5DCH4         .EQ  $0004
PWM5DCH5         .EQ  $0005
PWM5DCH6         .EQ  $0006
PWM5DCH7         .EQ  $0007



;----- PWM5PRL Bits -----------------------------------------------------
PWM5PRL0         .EQ  $0000
PWM5PRL1         .EQ  $0001
PWM5PRL2         .EQ  $0002
PWM5PRL3         .EQ  $0003
PWM5PRL4         .EQ  $0004
PWM5PRL5         .EQ  $0005
PWM5PRL6         .EQ  $0006
PWM5PRL7         .EQ  $0007



;----- PWM5PRH Bits -----------------------------------------------------
PWM5PRH0         .EQ  $0000
PWM5PRH1         .EQ  $0001
PWM5PRH2         .EQ  $0002
PWM5PRH3         .EQ  $0003
PWM5PRH4         .EQ  $0004
PWM5PRH5         .EQ  $0005
PWM5PRH6         .EQ  $0006
PWM5PRH7         .EQ  $0007



;----- PWM5OFL Bits -----------------------------------------------------
PWM5OFL0         .EQ  $0000
PWM5OFL1         .EQ  $0001
PWM5OFL2         .EQ  $0002
PWM5OFL3         .EQ  $0003
PWM5OFL4         .EQ  $0004
PWM5OFL5         .EQ  $0005
PWM5OFL6         .EQ  $0006
PWM5OFL7         .EQ  $0007



;----- PWM5OFH Bits -----------------------------------------------------
PWM5OFH0         .EQ  $0000
PWM5OFH1         .EQ  $0001
PWM5OFH2         .EQ  $0002
PWM5OFH3         .EQ  $0003
PWM5OFH4         .EQ  $0004
PWM5OFH5         .EQ  $0005
PWM5OFH6         .EQ  $0006
PWM5OFH7         .EQ  $0007



;----- PWM5TMRL Bits -----------------------------------------------------
PWM5TMRL0        .EQ  $0000
PWM5TMRL1        .EQ  $0001
PWM5TMRL2        .EQ  $0002
PWM5TMRL3        .EQ  $0003
PWM5TMRL4        .EQ  $0004
PWM5TMRL5        .EQ  $0005
PWM5TMRL6        .EQ  $0006
PWM5TMRL7        .EQ  $0007



;----- PWM5TMRH Bits -----------------------------------------------------
PWM5TMRH0        .EQ  $0000
PWM5TMRH1        .EQ  $0001
PWM5TMRH2        .EQ  $0002
PWM5TMRH3        .EQ  $0003
PWM5TMRH4        .EQ  $0004
PWM5TMRH5        .EQ  $0005
PWM5TMRH6        .EQ  $0006
PWM5TMRH7        .EQ  $0007



;----- PWM5CON Bits -----------------------------------------------------
POL_PWM5CON      .EQ  $0004
OUT_PWM5CON      .EQ  $0005
EN               .EQ  $0007

PWM5MODE0        .EQ  $0002
PWM5MODE1        .EQ  $0003

PWM5POL          .EQ  $0004
PWM5OUT          .EQ  $0005
PWM5EN           .EQ  $0007

MODE0_PWM5CON    .EQ  $0002
MODE1_PWM5CON    .EQ  $0003


;----- PWM5INTCON Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM5PRIE         .EQ  $0000
PWM5DCIE         .EQ  $0001
PWM5PHIE         .EQ  $0002
PWM5OFIE         .EQ  $0003


;----- PWM5INTE Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM5PRIE         .EQ  $0000
PWM5DCIE         .EQ  $0001
PWM5PHIE         .EQ  $0002
PWM5OFIE         .EQ  $0003


;----- PWM5INTF Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM5PRIF         .EQ  $0000
PWM5DCIF         .EQ  $0001
PWM5PHIF         .EQ  $0002
PWM5OFIF         .EQ  $0003


;----- PWM5INTFLG Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM5PRIF         .EQ  $0000
PWM5DCIF         .EQ  $0001
PWM5PHIF         .EQ  $0002
PWM5OFIF         .EQ  $0003


;----- PWM5CLKCON Bits -----------------------------------------------------
PWM5CS0          .EQ  $0000
PWM5CS1          .EQ  $0001
PWM5CS2          .EQ  $0002
PWM5PS0          .EQ  $0004
PWM5PS1          .EQ  $0005
PWM5PS2          .EQ  $0006


CS0_PWM5CLKCON   .EQ  $0000
CS1_PWM5CLKCON   .EQ  $0001
CS2              .EQ  $0002
PS0_PWM5CLKCON   .EQ  $0004
PS1_PWM5CLKCON   .EQ  $0005
PS2_PWM5CLKCON   .EQ  $0006


;----- PWM5LDCON Bits -----------------------------------------------------
LDT              .EQ  $0006
LDA              .EQ  $0007

PWM5LDS0         .EQ  $0000
PWM5LDS1         .EQ  $0001

PWM5LDM          .EQ  $0006
PWM5LD           .EQ  $0007

LDS0             .EQ  $0000
LDS1             .EQ  $0001


;----- PWM5OFCON Bits -----------------------------------------------------
OFO              .EQ  $0004

PWM5OFS0         .EQ  $0000
PWM5OFS1         .EQ  $0001
PWM5OFM0         .EQ  $0005
PWM5OFM1         .EQ  $0006

PWM5OFMC         .EQ  $0004

OFS0             .EQ  $0000
OFS1             .EQ  $0001
OFM0             .EQ  $0005
OFM1             .EQ  $0006


;----- PWM6PHL Bits -----------------------------------------------------
PWM6PHL0         .EQ  $0000
PWM6PHL1         .EQ  $0001
PWM6PHL2         .EQ  $0002
PWM6PHL3         .EQ  $0003
PWM6PHL4         .EQ  $0004
PWM6PHL5         .EQ  $0005
PWM6PHL6         .EQ  $0006
PWM6PHL7         .EQ  $0007



;----- PWM6PHH Bits -----------------------------------------------------
PWM6PHH0         .EQ  $0000
PWM6PHH1         .EQ  $0001
PWM6PHH2         .EQ  $0002
PWM6PHH3         .EQ  $0003
PWM6PHH4         .EQ  $0004
PWM6PHH5         .EQ  $0005
PWM6PHH6         .EQ  $0006
PWM6PHH7         .EQ  $0007



;----- PWM6DCL Bits -----------------------------------------------------
PWM6DCL0         .EQ  $0000
PWM6DCL1         .EQ  $0001
PWM6DCL2         .EQ  $0002
PWM6DCL3         .EQ  $0003
PWM6DCL4         .EQ  $0004
PWM6DCL5         .EQ  $0005
PWM6DCL6         .EQ  $0006
PWM6DCL7         .EQ  $0007



;----- PWM6DCH Bits -----------------------------------------------------
PWM6DCH0         .EQ  $0000
PWM6DCH1         .EQ  $0001
PWM6DCH2         .EQ  $0002
PWM6DCH3         .EQ  $0003
PWM6DCH4         .EQ  $0004
PWM6DCH5         .EQ  $0005
PWM6DCH6         .EQ  $0006
PWM6DCH7         .EQ  $0007



;----- PWM6PRL Bits -----------------------------------------------------
PWM6PRL0         .EQ  $0000
PWM6PRL1         .EQ  $0001
PWM6PRL2         .EQ  $0002
PWM6PRL3         .EQ  $0003
PWM6PRL4         .EQ  $0004
PWM6PRL5         .EQ  $0005
PWM6PRL6         .EQ  $0006
PWM6PRL7         .EQ  $0007



;----- PWM6PRH Bits -----------------------------------------------------
PWM6PRH0         .EQ  $0000
PWM6PRH1         .EQ  $0001
PWM6PRH2         .EQ  $0002
PWM6PRH3         .EQ  $0003
PWM6PRH4         .EQ  $0004
PWM6PRH5         .EQ  $0005
PWM6PRH6         .EQ  $0006
PWM6PRH7         .EQ  $0007



;----- PWM6OFL Bits -----------------------------------------------------
PWM6OFL0         .EQ  $0000
PWM6OFL1         .EQ  $0001
PWM6OFL2         .EQ  $0002
PWM6OFL3         .EQ  $0003
PWM6OFL4         .EQ  $0004
PWM6OFL5         .EQ  $0005
PWM6OFL6         .EQ  $0006
PWM6OFL7         .EQ  $0007



;----- PWM6OFH Bits -----------------------------------------------------
PWM6OFH0         .EQ  $0000
PWM6OFH1         .EQ  $0001
PWM6OFH2         .EQ  $0002
PWM6OFH3         .EQ  $0003
PWM6OFH4         .EQ  $0004
PWM6OFH5         .EQ  $0005
PWM6OFH6         .EQ  $0006
PWM6OFH7         .EQ  $0007



;----- PWM6TMRL Bits -----------------------------------------------------
PWM6TMRL0        .EQ  $0000
PWM6TMRL1        .EQ  $0001
PWM6TMRL2        .EQ  $0002
PWM6TMRL3        .EQ  $0003
PWM6TMRL4        .EQ  $0004
PWM6TMRL5        .EQ  $0005
PWM6TMRL6        .EQ  $0006
PWM6TMRL7        .EQ  $0007



;----- PWM6TMRH Bits -----------------------------------------------------
PWM6TMRH0        .EQ  $0000
PWM6TMRH1        .EQ  $0001
PWM6TMRH2        .EQ  $0002
PWM6TMRH3        .EQ  $0003
PWM6TMRH4        .EQ  $0004
PWM6TMRH5        .EQ  $0005
PWM6TMRH6        .EQ  $0006
PWM6TMRH7        .EQ  $0007



;----- PWM6CON Bits -----------------------------------------------------
POL_PWM6CON      .EQ  $0004
OUT_PWM6CON      .EQ  $0005
EN               .EQ  $0007

PWM6MODE0        .EQ  $0002
PWM6MODE1        .EQ  $0003

PWM6POL          .EQ  $0004
PWM6OUT          .EQ  $0005
PWM6EN           .EQ  $0007

MODE0_PWM6CON    .EQ  $0002
MODE1_PWM6CON    .EQ  $0003


;----- PWM6INTCON Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM6PRIE         .EQ  $0000
PWM6DCIE         .EQ  $0001
PWM6PHIE         .EQ  $0002
PWM6OFIE         .EQ  $0003


;----- PWM6INTE Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM6PRIE         .EQ  $0000
PWM6DCIE         .EQ  $0001
PWM6PHIE         .EQ  $0002
PWM6OFIE         .EQ  $0003


;----- PWM6INTF Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM6PRIF         .EQ  $0000
PWM6DCIF         .EQ  $0001
PWM6PHIF         .EQ  $0002
PWM6OFIF         .EQ  $0003


;----- PWM6INTFLG Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM6PRIF         .EQ  $0000
PWM6DCIF         .EQ  $0001
PWM6PHIF         .EQ  $0002
PWM6OFIF         .EQ  $0003


;----- PWM6CLKCON Bits -----------------------------------------------------
PWM6CS0          .EQ  $0000
PWM6CS1          .EQ  $0001
PWM6CS2          .EQ  $0002
PWM6PS0          .EQ  $0004
PWM6PS1          .EQ  $0005
PWM6PS2          .EQ  $0006


CS0_PWM6CLKCON   .EQ  $0000
CS1_PWM6CLKCON   .EQ  $0001
CS2              .EQ  $0002
PS0_PWM6CLKCON   .EQ  $0004
PS1_PWM6CLKCON   .EQ  $0005
PS2_PWM6CLKCON   .EQ  $0006


;----- PWM6LDCON Bits -----------------------------------------------------
LDT              .EQ  $0006
LDA              .EQ  $0007

PWM6LDS0         .EQ  $0000
PWM6LDS1         .EQ  $0001

PWM6LDM          .EQ  $0006
PWM6LD           .EQ  $0007

LDS0             .EQ  $0000
LDS1             .EQ  $0001


;----- PWM6OFCON Bits -----------------------------------------------------
OFO              .EQ  $0004

PWM6OFS0         .EQ  $0000
PWM6OFS1         .EQ  $0001
PWM6OFM0         .EQ  $0005
PWM6OFM1         .EQ  $0006

PWM6OFMC         .EQ  $0004

OFS0             .EQ  $0000
OFS1             .EQ  $0001
OFM0             .EQ  $0005
OFM1             .EQ  $0006


;----- PWM11PHL Bits -----------------------------------------------------
PWM11PHL0        .EQ  $0000
PWM11PHL1        .EQ  $0001
PWM11PHL2        .EQ  $0002
PWM11PHL3        .EQ  $0003
PWM11PHL4        .EQ  $0004
PWM11PHL5        .EQ  $0005
PWM11PHL6        .EQ  $0006
PWM11PHL7        .EQ  $0007



;----- PWM11PHH Bits -----------------------------------------------------
PWM11PHH0        .EQ  $0000
PWM11PHH1        .EQ  $0001
PWM11PHH2        .EQ  $0002
PWM11PHH3        .EQ  $0003
PWM11PHH4        .EQ  $0004
PWM11PHH5        .EQ  $0005
PWM11PHH6        .EQ  $0006
PWM11PHH7        .EQ  $0007



;----- PWM11DCL Bits -----------------------------------------------------
PWM11DCL0        .EQ  $0000
PWM11DCL1        .EQ  $0001
PWM11DCL2        .EQ  $0002
PWM11DCL3        .EQ  $0003
PWM11DCL4        .EQ  $0004
PWM11DCL5        .EQ  $0005
PWM11DCL6        .EQ  $0006
PWM11DCL7        .EQ  $0007



;----- PWM11DCH Bits -----------------------------------------------------
PWM11DCH0        .EQ  $0000
PWM11DCH1        .EQ  $0001
PWM11DCH2        .EQ  $0002
PWM11DCH3        .EQ  $0003
PWM11DCH4        .EQ  $0004
PWM11DCH5        .EQ  $0005
PWM11DCH6        .EQ  $0006
PWM11DCH7        .EQ  $0007



;----- PWM11PRL Bits -----------------------------------------------------
PWM11PRL0        .EQ  $0000
PWM11PRL1        .EQ  $0001
PWM11PRL2        .EQ  $0002
PWM11PRL3        .EQ  $0003
PWM11PRL4        .EQ  $0004
PWM11PRL5        .EQ  $0005
PWM11PRL6        .EQ  $0006
PWM11PRL7        .EQ  $0007



;----- PWM11PRH Bits -----------------------------------------------------
PWM11PRH0        .EQ  $0000
PWM11PRH1        .EQ  $0001
PWM11PRH2        .EQ  $0002
PWM11PRH3        .EQ  $0003
PWM11PRH4        .EQ  $0004
PWM11PRH5        .EQ  $0005
PWM11PRH6        .EQ  $0006
PWM11PRH7        .EQ  $0007



;----- PWM11OFL Bits -----------------------------------------------------
PWM11OFL0        .EQ  $0000
PWM11OFL1        .EQ  $0001
PWM11OFL2        .EQ  $0002
PWM11OFL3        .EQ  $0003
PWM11OFL4        .EQ  $0004
PWM11OFL5        .EQ  $0005
PWM11OFL6        .EQ  $0006
PWM11OFL7        .EQ  $0007



;----- PWM11OFH Bits -----------------------------------------------------
PWM11OFH0        .EQ  $0000
PWM11OFH1        .EQ  $0001
PWM11OFH2        .EQ  $0002
PWM11OFH3        .EQ  $0003
PWM11OFH4        .EQ  $0004
PWM11OFH5        .EQ  $0005
PWM11OFH6        .EQ  $0006
PWM11OFH7        .EQ  $0007



;----- PWM11TMRL Bits -----------------------------------------------------
PWM11TMRL0       .EQ  $0000
PWM11TMRL1       .EQ  $0001
PWM11TMRL2       .EQ  $0002
PWM11TMRL3       .EQ  $0003
PWM11TMRL4       .EQ  $0004
PWM11TMRL5       .EQ  $0005
PWM11TMRL6       .EQ  $0006
PWM11TMRL7       .EQ  $0007



;----- PWM11TMRH Bits -----------------------------------------------------
PWM11TMRH0       .EQ  $0000
PWM11TMRH1       .EQ  $0001
PWM11TMRH2       .EQ  $0002
PWM11TMRH3       .EQ  $0003
PWM11TMRH4       .EQ  $0004
PWM11TMRH5       .EQ  $0005
PWM11TMRH6       .EQ  $0006
PWM11TMRH7       .EQ  $0007



;----- PWM11CON Bits -----------------------------------------------------
POL_PWM11CON     .EQ  $0004
OUT_PWM11CON     .EQ  $0005
EN               .EQ  $0007

PWM11MODE0       .EQ  $0002
PWM11MODE1       .EQ  $0003

PWM11POL         .EQ  $0004
PWM11OUT         .EQ  $0005
PWM11EN          .EQ  $0007

MODE0_PWM11CON   .EQ  $0002
MODE1_PWM11CON   .EQ  $0003


;----- PWM11INTCON Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM11PRIE        .EQ  $0000
PWM11DCIE        .EQ  $0001
PWM11PHIE        .EQ  $0002
PWM11OFIE        .EQ  $0003


;----- PWM11INTE Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM11PRIE        .EQ  $0000
PWM11DCIE        .EQ  $0001
PWM11PHIE        .EQ  $0002
PWM11OFIE        .EQ  $0003


;----- PWM11INTF Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM11PRIF        .EQ  $0000
PWM11DCIF        .EQ  $0001
PWM11PHIF        .EQ  $0002
PWM11OFIF        .EQ  $0003


;----- PWM11INTFLG Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM11PRIF        .EQ  $0000
PWM11DCIF        .EQ  $0001
PWM11PHIF        .EQ  $0002
PWM11OFIF        .EQ  $0003


;----- PWM11CLKCON Bits -----------------------------------------------------
PWM11CS0         .EQ  $0000
PWM11CS1         .EQ  $0001
PWM11CS2         .EQ  $0002
PWM11PS0         .EQ  $0004
PWM11PS1         .EQ  $0005
PWM11PS2         .EQ  $0006


CS0_PWM11CLKCON  .EQ  $0000
CS1_PWM11CLKCON  .EQ  $0001
CS2              .EQ  $0002
PS0_PWM11CLKCON  .EQ  $0004
PS1_PWM11CLKCON  .EQ  $0005
PS2_PWM11CLKCON  .EQ  $0006


;----- PWM11LDCON Bits -----------------------------------------------------
LDT              .EQ  $0006
LDA              .EQ  $0007

PWM11LDS0        .EQ  $0000
PWM11LDS1        .EQ  $0001

PWM11LDM         .EQ  $0006
PWM11LD          .EQ  $0007

LDS0             .EQ  $0000
LDS1             .EQ  $0001


;----- PWM11OFCON Bits -----------------------------------------------------
OFO              .EQ  $0004

PWM11OFS0        .EQ  $0000
PWM11OFS1        .EQ  $0001
PWM11OFM0        .EQ  $0005
PWM11OFM1        .EQ  $0006

PWM11OFMC        .EQ  $0004

OFS0             .EQ  $0000
OFS1             .EQ  $0001
OFM0             .EQ  $0005
OFM1             .EQ  $0006


;----- PPSLOCK Bits -----------------------------------------------------
PPSLOCKED        .EQ  $0000


;----- CLCDATA Bits -----------------------------------------------------
MCLC1OUT         .EQ  $0000
MCLC2OUT         .EQ  $0001
MCLC3OUT         .EQ  $0002
MLC4OUT          .EQ  $0003


;----- CLC1CON Bits -----------------------------------------------------
LC1INTN          .EQ  $0003
LC1INTP          .EQ  $0004
LC1OUT           .EQ  $0005
LC1EN            .EQ  $0007

LC1MODE0         .EQ  $0000
LC1MODE1         .EQ  $0001
LC1MODE2         .EQ  $0002

INTN_CLC1CON     .EQ  $0003
INTP_CLC1CON     .EQ  $0004
OUT_CLC1CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CLC1CON    .EQ  $0000
MODE1_CLC1CON    .EQ  $0001
MODE2            .EQ  $0002


;----- CLC1POL Bits -----------------------------------------------------
LC1G1POL         .EQ  $0000
LC1G2POL         .EQ  $0001
LC1G3POL         .EQ  $0002
LC1G4POL         .EQ  $0003
LC1POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL_CLC1POL      .EQ  $0007


;----- CLC1SEL0 Bits -----------------------------------------------------
LC1D1S0          .EQ  $0000
LC1D1S1          .EQ  $0001
LC1D1S2          .EQ  $0002
LC1D1S3          .EQ  $0003
LC1D1S4          .EQ  $0004
LC1D1S5          .EQ  $0005



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005


;----- CLC1SEL1 Bits -----------------------------------------------------
LC1D2S0          .EQ  $0000
LC1D2S1          .EQ  $0001
LC1D2S2          .EQ  $0002
LC1D2S3          .EQ  $0003
LC1D2S4          .EQ  $0004
LC1D2S5          .EQ  $0005



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005


;----- CLC1SEL2 Bits -----------------------------------------------------
LC1D3S0          .EQ  $0000
LC1D3S1          .EQ  $0001
LC1D3S2          .EQ  $0002
LC1D3S3          .EQ  $0003
LC1D3S4          .EQ  $0004
LC1D3S5          .EQ  $0005



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005


;----- CLC1SEL3 Bits -----------------------------------------------------
LC1D4S0          .EQ  $0000
LC1D4S1          .EQ  $0001
LC1D4S2          .EQ  $0002
LC1D4S3          .EQ  $0003
LC1D4S4          .EQ  $0004
LC1D4S5          .EQ  $0005



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005


;----- CLC1GLS0 Bits -----------------------------------------------------
LC1G1D1N         .EQ  $0000
LC1G1D1T         .EQ  $0001
LC1G1D2N         .EQ  $0002
LC1G1D2T         .EQ  $0003
LC1G1D3N         .EQ  $0004
LC1G1D3T         .EQ  $0005
LC1G1D4N         .EQ  $0006
LC1G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC1GLS1 Bits -----------------------------------------------------
LC1G2D1N         .EQ  $0000
LC1G2D1T         .EQ  $0001
LC1G2D2N         .EQ  $0002
LC1G2D2T         .EQ  $0003
LC1G2D3N         .EQ  $0004
LC1G2D3T         .EQ  $0005
LC1G2D4N         .EQ  $0006
LC1G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC1GLS2 Bits -----------------------------------------------------
LC1G3D1N         .EQ  $0000
LC1G3D1T         .EQ  $0001
LC1G3D2N         .EQ  $0002
LC1G3D2T         .EQ  $0003
LC1G3D3N         .EQ  $0004
LC1G3D3T         .EQ  $0005
LC1G3D4N         .EQ  $0006
LC1G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC1GLS3 Bits -----------------------------------------------------
LC1G4D1N         .EQ  $0000
LC1G4D1T         .EQ  $0001
LC1G4D2N         .EQ  $0002
LC1G4D2T         .EQ  $0003
LC1G4D3N         .EQ  $0004
LC1G4D3T         .EQ  $0005
LC1G4D4N         .EQ  $0006
LC1G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- CLC2CON Bits -----------------------------------------------------
LC2INTN          .EQ  $0003
LC2INTP          .EQ  $0004
LC2OUT           .EQ  $0005
LC2EN            .EQ  $0007

LC2MODE0         .EQ  $0000
LC2MODE1         .EQ  $0001
LC2MODE2         .EQ  $0002

INTN_CLC2CON     .EQ  $0003
INTP_CLC2CON     .EQ  $0004
OUT_CLC2CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CLC2CON    .EQ  $0000
MODE1_CLC2CON    .EQ  $0001
MODE2            .EQ  $0002


;----- CLC2POL Bits -----------------------------------------------------
LC2G1POL         .EQ  $0000
LC2G2POL         .EQ  $0001
LC2G3POL         .EQ  $0002
LC2G4POL         .EQ  $0003
LC2POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL_CLC2POL      .EQ  $0007


;----- CLC2SEL0 Bits -----------------------------------------------------
LC2D1S0          .EQ  $0000
LC2D1S1          .EQ  $0001
LC2D1S2          .EQ  $0002
LC2D1S3          .EQ  $0003
LC2D1S4          .EQ  $0004
LC2D1S5          .EQ  $0005



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005


;----- CLC2SEL1 Bits -----------------------------------------------------
LC2D2S0          .EQ  $0000
LC2D2S1          .EQ  $0001
LC2D2S2          .EQ  $0002
LC2D2S3          .EQ  $0003
LC2D2S4          .EQ  $0004
LC2D2S5          .EQ  $0005



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005


;----- CLC2SEL2 Bits -----------------------------------------------------
LC2D3S0          .EQ  $0000
LC2D3S1          .EQ  $0001
LC2D3S2          .EQ  $0002
LC2D3S3          .EQ  $0003
LC2D3S4          .EQ  $0004
LC2D3S5          .EQ  $0005



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005


;----- CLC2SEL3 Bits -----------------------------------------------------
LC2D4S0          .EQ  $0000
LC2D4S1          .EQ  $0001
LC2D4S2          .EQ  $0002
LC2D4S3          .EQ  $0003
LC2D4S4          .EQ  $0004
LC2D4S5          .EQ  $0005



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005


;----- CLC2GLS0 Bits -----------------------------------------------------
LC2G1D1N         .EQ  $0000
LC2G1D1T         .EQ  $0001
LC2G1D2N         .EQ  $0002
LC2G1D2T         .EQ  $0003
LC2G1D3N         .EQ  $0004
LC2G1D3T         .EQ  $0005
LC2G1D4N         .EQ  $0006
LC2G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC2GLS1 Bits -----------------------------------------------------
LC2G2D1N         .EQ  $0000
LC2G2D1T         .EQ  $0001
LC2G2D2N         .EQ  $0002
LC2G2D2T         .EQ  $0003
LC2G2D3N         .EQ  $0004
LC2G2D3T         .EQ  $0005
LC2G2D4N         .EQ  $0006
LC2G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC2GLS2 Bits -----------------------------------------------------
LC2G3D1N         .EQ  $0000
LC2G3D1T         .EQ  $0001
LC2G3D2N         .EQ  $0002
LC2G3D2T         .EQ  $0003
LC2G3D3N         .EQ  $0004
LC2G3D3T         .EQ  $0005
LC2G3D4N         .EQ  $0006
LC2G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC2GLS3 Bits -----------------------------------------------------
LC2G4D1N         .EQ  $0000
LC2G4D1T         .EQ  $0001
LC2G4D2N         .EQ  $0002
LC2G4D2T         .EQ  $0003
LC2G4D3N         .EQ  $0004
LC2G4D3T         .EQ  $0005
LC2G4D4N         .EQ  $0006
LC2G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- CLC3CON Bits -----------------------------------------------------
LC3INTN          .EQ  $0003
LC3INTP          .EQ  $0004
LC3OUT           .EQ  $0005
LC3EN            .EQ  $0007

LC3MODE0         .EQ  $0000
LC3MODE1         .EQ  $0001
LC3MODE2         .EQ  $0002

INTN_CLC3CON     .EQ  $0003
INTP_CLC3CON     .EQ  $0004
OUT_CLC3CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CLC3CON    .EQ  $0000
MODE1_CLC3CON    .EQ  $0001
MODE2            .EQ  $0002


;----- CLC3POL Bits -----------------------------------------------------
LC3G1POL         .EQ  $0000
LC3G2POL         .EQ  $0001
LC3G3POL         .EQ  $0002
LC3G4POL         .EQ  $0003
LC3POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL_CLC3POL      .EQ  $0007


;----- CLC3SEL0 Bits -----------------------------------------------------
LC3D1S0          .EQ  $0000
LC3D1S1          .EQ  $0001
LC3D1S2          .EQ  $0002
LC3D1S3          .EQ  $0003
LC3D1S4          .EQ  $0004
LC3D1S5          .EQ  $0005



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005


;----- CLC3SEL1 Bits -----------------------------------------------------
LC3D2S0          .EQ  $0000
LC3D2S1          .EQ  $0001
LC3D2S2          .EQ  $0002
LC3D2S3          .EQ  $0003
LC3D2S4          .EQ  $0004
LC3D2S5          .EQ  $0005



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005


;----- CLC3SEL2 Bits -----------------------------------------------------
LC3D3S0          .EQ  $0000
LC3D3S1          .EQ  $0001
LC3D3S2          .EQ  $0002
LC3D3S3          .EQ  $0003
LC3D3S4          .EQ  $0004
LC3D3S5          .EQ  $0005



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005


;----- CLC3SEL3 Bits -----------------------------------------------------
LC3D4S0          .EQ  $0000
LC3D4S1          .EQ  $0001
LC3D4S2          .EQ  $0002
LC3D4S3          .EQ  $0003
LC3D4S4          .EQ  $0004
LC3D4S5          .EQ  $0005



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005


;----- CLC3GLS0 Bits -----------------------------------------------------
LC3G1D1N         .EQ  $0000
LC3G1D1T         .EQ  $0001
LC3G1D2N         .EQ  $0002
LC3G1D2T         .EQ  $0003
LC3G1D3N         .EQ  $0004
LC3G1D3T         .EQ  $0005
LC3G1D4N         .EQ  $0006
LC3G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC3GLS1 Bits -----------------------------------------------------
LC3G2D1N         .EQ  $0000
LC3G2D1T         .EQ  $0001
LC3G2D2N         .EQ  $0002
LC3G2D2T         .EQ  $0003
LC3G2D3N         .EQ  $0004
LC3G2D3T         .EQ  $0005
LC3G2D4N         .EQ  $0006
LC3G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC3GLS2 Bits -----------------------------------------------------
LC3G3D1N         .EQ  $0000
LC3G3D1T         .EQ  $0001
LC3G3D2N         .EQ  $0002
LC3G3D2T         .EQ  $0003
LC3G3D3N         .EQ  $0004
LC3G3D3T         .EQ  $0005
LC3G3D4N         .EQ  $0006
LC3G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC3GLS3 Bits -----------------------------------------------------
LC3G4D1N         .EQ  $0000
LC3G4D1T         .EQ  $0001
LC3G4D2N         .EQ  $0002
LC3G4D2T         .EQ  $0003
LC3G4D3N         .EQ  $0004
LC3G4D3T         .EQ  $0005
LC3G4D4N         .EQ  $0006
LC3G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- CLC4CON Bits -----------------------------------------------------
LC4INTN          .EQ  $0003
LC4INTP          .EQ  $0004
LC4OUT           .EQ  $0005
LC4EN            .EQ  $0007

LC4MODE0         .EQ  $0000
LC4MODE1         .EQ  $0001
LC4MODE2         .EQ  $0002

INTN_CLC4CON     .EQ  $0003
INTP_CLC4CON     .EQ  $0004
OUT_CLC4CON      .EQ  $0005
EN               .EQ  $0007

MODE0_CLC4CON    .EQ  $0000
MODE1_CLC4CON    .EQ  $0001
MODE2            .EQ  $0002


;----- CLC4POL Bits -----------------------------------------------------
LC4G1POL         .EQ  $0000
LC4G2POL         .EQ  $0001
LC4G3POL         .EQ  $0002
LC4G4POL         .EQ  $0003
LC4POL           .EQ  $0007

G1POL            .EQ  $0000
G2POL            .EQ  $0001
G3POL            .EQ  $0002
G4POL            .EQ  $0003
POL_CLC4POL      .EQ  $0007


;----- CLC4SEL0 Bits -----------------------------------------------------
LC4D1S0          .EQ  $0000
LC4D1S1          .EQ  $0001
LC4D1S2          .EQ  $0002
LC4D1S3          .EQ  $0003
LC4D1S4          .EQ  $0004
LC4D1S5          .EQ  $0005



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005


;----- CLC4SEL1 Bits -----------------------------------------------------
LC4D2S0          .EQ  $0000
LC4D2S1          .EQ  $0001
LC4D2S2          .EQ  $0002
LC4D2S3          .EQ  $0003
LC4D2S4          .EQ  $0004
LC4D2S5          .EQ  $0005



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005


;----- CLC4SEL2 Bits -----------------------------------------------------
LC4D3S0          .EQ  $0000
LC4D3S1          .EQ  $0001
LC4D3S2          .EQ  $0002
LC4D3S3          .EQ  $0003
LC4D3S4          .EQ  $0004
LC4D3S5          .EQ  $0005



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005


;----- CLC4SEL3 Bits -----------------------------------------------------
LC4D4S0          .EQ  $0000
LC4D4S1          .EQ  $0001
LC4D4S2          .EQ  $0002
LC4D4S3          .EQ  $0003
LC4D4S4          .EQ  $0004
LC4D4S5          .EQ  $0005



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005


;----- CLC4GLS0 Bits -----------------------------------------------------
LC4G1D1N         .EQ  $0000
LC4G1D1T         .EQ  $0001
LC4G1D2N         .EQ  $0002
LC4G1D2T         .EQ  $0003
LC4G1D3N         .EQ  $0004
LC4G1D3T         .EQ  $0005
LC4G1D4N         .EQ  $0006
LC4G1D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC4GLS1 Bits -----------------------------------------------------
LC4G2D1N         .EQ  $0000
LC4G2D1T         .EQ  $0001
LC4G2D2N         .EQ  $0002
LC4G2D2T         .EQ  $0003
LC4G2D3N         .EQ  $0004
LC4G2D3T         .EQ  $0005
LC4G2D4N         .EQ  $0006
LC4G2D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC4GLS2 Bits -----------------------------------------------------
LC4G3D1N         .EQ  $0000
LC4G3D1T         .EQ  $0001
LC4G3D2N         .EQ  $0002
LC4G3D2T         .EQ  $0003
LC4G3D3N         .EQ  $0004
LC4G3D3T         .EQ  $0005
LC4G3D4N         .EQ  $0006
LC4G3D4T         .EQ  $0007

D1N              .EQ  $0000
D1T              .EQ  $0001
D2N              .EQ  $0002
D2T              .EQ  $0003
D3N              .EQ  $0004
D3T              .EQ  $0005
D4N              .EQ  $0006
D4T              .EQ  $0007


;----- CLC4GLS3 Bits -----------------------------------------------------
LC4G4D1N         .EQ  $0000
LC4G4D1T         .EQ  $0001
LC4G4D2N         .EQ  $0002
LC4G4D2T         .EQ  $0003
LC4G4D3N         .EQ  $0004
LC4G4D3T         .EQ  $0005
LC4G4D4N         .EQ  $0006
LC4G4D4T         .EQ  $0007

G4D1N            .EQ  $0000
G4D1T            .EQ  $0001
G4D2N            .EQ  $0002
G4D2T            .EQ  $0003
G4D3N            .EQ  $0004
G4D3T            .EQ  $0005
G4D4N            .EQ  $0006
G4D4T            .EQ  $0007


;----- STATUS_SHAD Bits -----------------------------------------------------
C_SHAD           .EQ  $0000
DC_SHAD          .EQ  $0001
Z_SHAD           .EQ  $0002



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1           8007h
;   CONFIG2           8008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             .EQ  $3FF8  LP Oscillator, Low-power crystal connected between OSC1 and OSC2 pins
_FOSC_XT             .EQ  $3FF9  XT Oscillator, Crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_HS             .EQ  $3FFA  HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins
_FOSC_EXTRC          .EQ  $3FFB  EXTRC oscillator: External RC circuit connected to CLKIN pin
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pins
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pins
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pins

_WDTE_OFF            .EQ  $3FE7  WDT disabled
_WDTE_SWDTEN         .EQ  $3FEF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FF7  WDT enabled while running and disabled in Sleep
_WDTE_ON             .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FDF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FBF  MCLR/VPP pin function is digital input
_MCLRE_ON            .EQ  $3FFF  MCLR/VPP pin function is MCLR

_CP_ON               .EQ  $3F7F  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_BOREN_OFF           .EQ  $39FF  Brown-out Reset disabled
_BOREN_SBODEN        .EQ  $3BFF  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF  Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF  CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

_IESO_OFF            .EQ  $2FFF  Internal/External Switchover Mode is disabled
_IESO_ON             .EQ  $3FFF  Internal/External Switchover Mode is enabled

_FCMEN_OFF           .EQ  $1FFF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to 1FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to FFFh write protected, 1000h to 1FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 1FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_PPS1WAY_OFF         .EQ  $3FFB  The PPSLOCK bit can be set and cleared repeatedly by software
_PPS1WAY_ON          .EQ  $3FFF  The PPSLOCK bit cannot be cleared once it is set by software

_ZCD_ON              .EQ  $3F7F  Zero-cross detect circuit is enabled at POR
_ZCD_OFF             .EQ  $3FFF  Zero-cross detect circuit is disabled at POR

_PLLEN_OFF           .EQ  $3EFF  4x PLL is enabled when software sets the SPLLEN bit
_PLLEN_ON            .EQ  $3FFF  4x PLL is always enabled

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            .EQ  $37FF  Low-Power BOR is enabled
_LPBOR_OFF           .EQ  $3FFF  Low-Power BOR is disabled

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
