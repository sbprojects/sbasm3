;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F1571 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F1571 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;
;  Note that the processor must be selected before this file is included.
;  The processor may be selected the following ways:
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   1024

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------

;-----Bank0------------------
INDF0            .EQ  $00
INDF1            .EQ  $01
PCL              .EQ  $02
STATUS           .EQ  $03
FSR0             .EQ  $04
FSR0L            .EQ  $04
FSR0H            .EQ  $05
FSR1             .EQ  $06
FSR1L            .EQ  $06
FSR1H            .EQ  $07
BSR              .EQ  $08
WREG             .EQ  $09
PCLATH           .EQ  $0A
INTCON           .EQ  $0B
PORTA            .EQ  $0C
PIR1             .EQ  $11
PIR2             .EQ  $12
PIR3             .EQ  $13
TMR0             .EQ  $15
TMR1             .EQ  $16
TMR1L            .EQ  $16
TMR1H            .EQ  $17
T1CON            .EQ  $18
T1GCON           .EQ  $19
TMR2             .EQ  $1A
PR2              .EQ  $1B
T2CON            .EQ  $1C

;-----Bank1------------------
TRISA            .EQ  $8C
PIE1             .EQ  $91
PIE2             .EQ  $92
PIE3             .EQ  $93
OPTION_REG       .EQ  $95
PCON             .EQ  $96
WDTCON           .EQ  $97
OSCTUNE          .EQ  $98
OSCCON           .EQ  $99
OSCSTAT          .EQ  $9A
ADRES            .EQ  $9B
ADRESL           .EQ  $9B
ADRESH           .EQ  $9C
ADCON0           .EQ  $9D
ADCON1           .EQ  $9E
ADCON2           .EQ  $9F

;-----Bank2------------------
LATA             .EQ  $010C
CM1CON0          .EQ  $0111
CM1CON1          .EQ  $0112
CMOUT            .EQ  $0115
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
DACCON0          .EQ  $0118
DACCON1          .EQ  $0119
APFCON           .EQ  $011D
APFCON0          .EQ  $011D

;-----Bank3------------------
ANSELA           .EQ  $018C
PMADR            .EQ  $0191
PMADRL           .EQ  $0191
PMADRH           .EQ  $0192
PMDAT            .EQ  $0193
PMDATL           .EQ  $0193
PMDATH           .EQ  $0194
PMCON1           .EQ  $0195
PMCON2           .EQ  $0196
VREGCON          .EQ  $0197

;-----Bank4------------------
WPUA             .EQ  $020C

;-----Bank5------------------
ODCONA           .EQ  $028C

;-----Bank6------------------
SLRCONA          .EQ  $030C

;-----Bank7------------------
INLVLA           .EQ  $038C
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393

;-----Bank13------------------
CWG1DBR          .EQ  $0691
CWG1DBF          .EQ  $0692
CWG1CON0         .EQ  $0693
CWG1CON1         .EQ  $0694
CWG1CON2         .EQ  $0695

;-----Bank27------------------
PWMEN            .EQ  $0D8E
PWMLD            .EQ  $0D8F
PWMOUT           .EQ  $0D90
PWM1PH           .EQ  $0D91
PWM1PHL          .EQ  $0D91
PWM1PHH          .EQ  $0D92
PWM1DC           .EQ  $0D93
PWM1DCL          .EQ  $0D93
PWM1DCH          .EQ  $0D94
PWM1PR           .EQ  $0D95
PWM1PRL          .EQ  $0D95
PWM1PRH          .EQ  $0D96
PWM1OF           .EQ  $0D97
PWM1OFL          .EQ  $0D97
PWM1OFH          .EQ  $0D98
PWM1TMR          .EQ  $0D99
PWM1TMRL         .EQ  $0D99
PWM1TMRH         .EQ  $0D9A
PWM1CON          .EQ  $0D9B
PWM1INTCON       .EQ  $0D9C
PWM1INTE         .EQ  $0D9C
PWM1INTF         .EQ  $0D9D
PWM1INTFLG       .EQ  $0D9D
PWM1CLKCON       .EQ  $0D9E
PWM1LDCON        .EQ  $0D9F
PWM1OFCON        .EQ  $0DA0
PWM2PH           .EQ  $0DA1
PWM2PHL          .EQ  $0DA1
PWM2PHH          .EQ  $0DA2
PWM2DC           .EQ  $0DA3
PWM2DCL          .EQ  $0DA3
PWM2DCH          .EQ  $0DA4
PWM2PR           .EQ  $0DA5
PWM2PRL          .EQ  $0DA5
PWM2PRH          .EQ  $0DA6
PWM2OF           .EQ  $0DA7
PWM2OFL          .EQ  $0DA7
PWM2OFH          .EQ  $0DA8
PWM2TMR          .EQ  $0DA9
PWM2TMRL         .EQ  $0DA9
PWM2TMRH         .EQ  $0DAA
PWM2CON          .EQ  $0DAB
PWM2INTCON       .EQ  $0DAC
PWM2INTE         .EQ  $0DAC
PWM2INTF         .EQ  $0DAD
PWM2INTFLG       .EQ  $0DAD
PWM2CLKCON       .EQ  $0DAE
PWM2LDCON        .EQ  $0DAF
PWM2OFCON        .EQ  $0DB0
PWM3PH           .EQ  $0DB1
PWM3PHL          .EQ  $0DB1
PWM3PHH          .EQ  $0DB2
PWM3DC           .EQ  $0DB3
PWM3DCL          .EQ  $0DB3
PWM3DCH          .EQ  $0DB4
PWM3PR           .EQ  $0DB5
PWM3PRL          .EQ  $0DB5
PWM3PRH          .EQ  $0DB6
PWM3OF           .EQ  $0DB7
PWM3OFL          .EQ  $0DB7
PWM3OFH          .EQ  $0DB8
PWM3TMR          .EQ  $0DB9
PWM3TMRL         .EQ  $0DB9
PWM3TMRH         .EQ  $0DBA
PWM3CON          .EQ  $0DBB
PWM3INTCON       .EQ  $0DBC
PWM3INTE         .EQ  $0DBC
PWM3INTF         .EQ  $0DBD
PWM3INTFLG       .EQ  $0DBD
PWM3CLKCON       .EQ  $0DBE
PWM3LDCON        .EQ  $0DBF
PWM3OFCON        .EQ  $0DC0

;-----Bank31------------------
STATUS_SHAD      .EQ  $0FE4
WREG_SHAD        .EQ  $0FE5
BSR_SHAD         .EQ  $0FE6
PCLATH_SHAD      .EQ  $0FE7
FSR0L_SHAD       .EQ  $0FE8
FSR0_SHAD        .EQ  $0FE8
FSR0H_SHAD       .EQ  $0FE9
FSR1L_SHAD       .EQ  $0FEA
FSR1_SHAD        .EQ  $0FEA
FSR1H_SHAD       .EQ  $0FEB
STKPTR           .EQ  $0FED
TOS              .EQ  $0FEE
TOSL             .EQ  $0FEE
TOSH             .EQ  $0FEF

;----- STATUS Bits -----------------------------------------------------
C                .EQ  0
DC               .EQ  1
Z                .EQ  2
NOT_PD           .EQ  3
NOT_TO           .EQ  4


;----- BSR Bits -----------------------------------------------------
BSR0             .EQ  0
BSR1             .EQ  1
BSR2             .EQ  2
BSR3             .EQ  3
BSR4             .EQ  4



;----- INTCON Bits -----------------------------------------------------
IOCIF            .EQ  0
INTF             .EQ  1
TMR0IF           .EQ  2
IOCIE            .EQ  3
INTE             .EQ  4
TMR0IE           .EQ  5
PEIE             .EQ  6
GIE              .EQ  7

T0IF             .EQ  2
T0IE             .EQ  5


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  0
RA1              .EQ  1
RA2              .EQ  2
RA3              .EQ  3
RA4              .EQ  4
RA5              .EQ  5



;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  0
TMR2IF           .EQ  1
ADIF             .EQ  6
TMR1GIF          .EQ  7


;----- PIR2 Bits -----------------------------------------------------
C1IF             .EQ  5


;----- PIR3 Bits -----------------------------------------------------
PWM1IF           .EQ  4
PWM2IF           .EQ  5
PWM3IF           .EQ  6


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
NOT_T1SYNC       .EQ  2
T1CKPS0          .EQ  4
T1CKPS1          .EQ  5
TMR1CS0          .EQ  6
TMR1CS1          .EQ  7



;----- T1GCON Bits -----------------------------------------------------
T1GSS0           .EQ  0
T1GSS1           .EQ  1
T1GVAL           .EQ  2
T1GGO_NOT_DONE   .EQ  3
T1GSPM           .EQ  4
T1GTM            .EQ  5
T1GPOL           .EQ  6
TMR1GE           .EQ  7

T1GGO            .EQ  3


;----- T2CON Bits -----------------------------------------------------
T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
T2OUTPS0         .EQ  3
T2OUTPS1         .EQ  4
T2OUTPS2         .EQ  5
T2OUTPS3         .EQ  6

TMR2ON           .EQ  2


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  0
TRISA1           .EQ  1
TRISA2           .EQ  2
TRISA3           .EQ  3
TRISA4           .EQ  4
TRISA5           .EQ  5



;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  0
TMR2IE           .EQ  1
ADIE             .EQ  6
TMR1GIE          .EQ  7


;----- PIE2 Bits -----------------------------------------------------
C1IE             .EQ  5


;----- PIE3 Bits -----------------------------------------------------
PWM1IE           .EQ  4
PWM2IE           .EQ  5
PWM3IE           .EQ  6


;----- OPTION_REG Bits -----------------------------------------------------
PS0_OPTION_REG   .EQ  0
PS1_OPTION_REG   .EQ  1
PS2_OPTION_REG   .EQ  2
PSA              .EQ  3
TMR0SE           .EQ  4
TMR0CS           .EQ  5
INTEDG           .EQ  6
NOT_WPUEN        .EQ  7

T0SE             .EQ  4
T0CS             .EQ  5


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  0
NOT_POR          .EQ  1
NOT_RI           .EQ  2
NOT_RMCLR        .EQ  3
NOT_RWDT         .EQ  4
STKUNF           .EQ  6
STKOVF           .EQ  7


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  0
WDTPS0           .EQ  1
WDTPS1           .EQ  2
WDTPS2           .EQ  3
WDTPS3           .EQ  4
WDTPS4           .EQ  5



;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  0
TUN1             .EQ  1
TUN2             .EQ  2
TUN3             .EQ  3
TUN4             .EQ  4
TUN5             .EQ  5



;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  0
SCS1             .EQ  1
IRCF0            .EQ  3
IRCF1            .EQ  4
IRCF2            .EQ  5
IRCF3            .EQ  6
SPLLEN           .EQ  7



;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  0
LFIOFR           .EQ  1
MFIOFR           .EQ  2
HFIOFL           .EQ  3
HFIOFR           .EQ  4
OSTS             .EQ  5
PLLR             .EQ  6


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1
CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4
CHS3             .EQ  5
CHS4             .EQ  6

ADGO             .EQ  1

GO               .EQ  1

NOT_DONE         .EQ  1


;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  0
ADPREF1          .EQ  1
ADCS0            .EQ  4
ADCS1            .EQ  5
ADCS2            .EQ  6
ADFM             .EQ  7



;----- ADCON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  4
TRIGSEL1         .EQ  5
TRIGSEL2         .EQ  6
TRIGSEL3         .EQ  7



;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  0
LATA1            .EQ  1
LATA2            .EQ  2
LATA4            .EQ  4
LATA5            .EQ  5



;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  0
C1HYS            .EQ  1
C1SP             .EQ  2
C1POL            .EQ  4
C1OE             .EQ  5
C1OUT            .EQ  6
C1ON             .EQ  7


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH0           .EQ  0
C1NCH1           .EQ  1
C1NCH2           .EQ  2
C1PCH0           .EQ  4
C1PCH1           .EQ  5
C1INTN           .EQ  6
C1INTP           .EQ  7



;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  0


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  0
BORFS            .EQ  6
SBOREN           .EQ  7


;----- FVRCON Bits -----------------------------------------------------
ADFVR0           .EQ  0
ADFVR1           .EQ  1
CDAFVR0          .EQ  2
CDAFVR1          .EQ  3
TSRNG            .EQ  4
TSEN             .EQ  5
FVRRDY           .EQ  6
FVREN            .EQ  7



;----- DACCON0 Bits -----------------------------------------------------
DACPSS0          .EQ  2
DACPSS1          .EQ  3
DACOE            .EQ  5
DACLPS           .EQ  6
DACEN            .EQ  7



;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  0
DACR1            .EQ  1
DACR2            .EQ  2
DACR3            .EQ  3
DACR4            .EQ  4



;----- APFCON Bits -----------------------------------------------------
P1SEL            .EQ  0
P2SEL            .EQ  1
T1GSEL           .EQ  3
CWGBSEL          .EQ  5
CWGASEL          .EQ  6


;----- APFCON0 Bits -----------------------------------------------------
P1SEL            .EQ  0
P2SEL            .EQ  1
T1GSEL           .EQ  3
CWGBSEL          .EQ  5
CWGASEL          .EQ  6


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  0
ANSA1            .EQ  1
ANSA2            .EQ  2
ANSA4            .EQ  4



;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  0
WR               .EQ  1
WREN             .EQ  2
WRERR            .EQ  3
FREE             .EQ  4
LWLO             .EQ  5
CFGS             .EQ  6


;----- VREGCON Bits -----------------------------------------------------
VREGPM           .EQ  1


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  0
WPUA1            .EQ  1
WPUA2            .EQ  2
WPUA3            .EQ  3
WPUA4            .EQ  4
WPUA5            .EQ  5



;----- ODCONA Bits -----------------------------------------------------

ODA0             .EQ  0
ODA1             .EQ  1
ODA2             .EQ  2
ODA4             .EQ  4
ODA5             .EQ  5



;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  0
SLRA1            .EQ  1
SLRA2            .EQ  2
SLRA4            .EQ  4
SLRA5            .EQ  5



;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  0
INLVLA1          .EQ  1
INLVLA2          .EQ  2
INLVLA3          .EQ  3
INLVLA4          .EQ  4
INLVLA5          .EQ  5



;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  0
IOCAP1           .EQ  1
IOCAP2           .EQ  2
IOCAP3           .EQ  3
IOCAP4           .EQ  4
IOCAP5           .EQ  5



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  0
IOCAN1           .EQ  1
IOCAN2           .EQ  2
IOCAN3           .EQ  3
IOCAN4           .EQ  4
IOCAN5           .EQ  5



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  0
IOCAF1           .EQ  1
IOCAF2           .EQ  2
IOCAF3           .EQ  3
IOCAF4           .EQ  4
IOCAF5           .EQ  5



;----- CWG1DBR Bits -----------------------------------------------------
CWG1DBR0         .EQ  0
CWG1DBR1         .EQ  1
CWG1DBR2         .EQ  2
CWG1DBR3         .EQ  3
CWG1DBR4         .EQ  4
CWG1DBR5         .EQ  5


;----- CWG1DBF Bits -----------------------------------------------------
CWG1DBF0         .EQ  0
CWG1DBF1         .EQ  1
CWG1DBF2         .EQ  2
CWG1DBF3         .EQ  3
CWG1DBF4         .EQ  4
CWG1DBF5         .EQ  5


;----- CWG1CON0 Bits -----------------------------------------------------
G1CS0            .EQ  0
G1POLA           .EQ  3
G1POLB           .EQ  4
G1OEA            .EQ  5
G1OEB            .EQ  6
G1EN             .EQ  7



;----- CWG1CON1 Bits -----------------------------------------------------
G1IS0            .EQ  0
G1IS1            .EQ  1
G1IS2            .EQ  2

G1ASDLA0         .EQ  4
G1ASDLA1         .EQ  5
G1ASDLB0         .EQ  6
G1ASDLB1         .EQ  7


;----- CWG1CON2 Bits -----------------------------------------------------
G1ASDSFLT        .EQ  1
G1ASDSC1         .EQ  2
G1ARSEN          .EQ  6
G1ASE            .EQ  7


;----- PWMEN Bits -----------------------------------------------------
PWM1EN_A         .EQ  0
PWM2EN_A         .EQ  1
PWM3EN_A         .EQ  2

MPWM1EN          .EQ  0
MPWM2EN          .EQ  1
MPWM3EN          .EQ  2


;----- PWMLD Bits -----------------------------------------------------
PWM1LDA_A        .EQ  0
PWM2LDA_A        .EQ  1
PWM3LDA_A        .EQ  2

MPWM1LD          .EQ  0
MPWM2LD          .EQ  1
MPWM3LD          .EQ  2


;----- PWMOUT Bits -----------------------------------------------------
PWM1OUT_A        .EQ  0
PWM2OUT_A        .EQ  1
PWM3OUT_A        .EQ  2

MPWM1OUT         .EQ  0
MPWM2OUT         .EQ  1
MPWM3OUT         .EQ  2


;----- PWM1PHL Bits -----------------------------------------------------
PWM1PHL0         .EQ  0
PWM1PHL1         .EQ  1
PWM1PHL2         .EQ  2
PWM1PHL3         .EQ  3
PWM1PHL4         .EQ  4
PWM1PHL5         .EQ  5
PWM1PHL6         .EQ  6
PWM1PHL7         .EQ  7



;----- PWM1PHH Bits -----------------------------------------------------
PWM1PHH0         .EQ  0
PWM1PHH1         .EQ  1
PWM1PHH2         .EQ  2
PWM1PHH3         .EQ  3
PWM1PHH4         .EQ  4
PWM1PHH5         .EQ  5
PWM1PHH6         .EQ  6
PWM1PHH7         .EQ  7



;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         .EQ  0
PWM1DCL1         .EQ  1
PWM1DCL2         .EQ  2
PWM1DCL3         .EQ  3
PWM1DCL4         .EQ  4
PWM1DCL5         .EQ  5
PWM1DCL6         .EQ  6
PWM1DCL7         .EQ  7



;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         .EQ  0
PWM1DCH1         .EQ  1
PWM1DCH2         .EQ  2
PWM1DCH3         .EQ  3
PWM1DCH4         .EQ  4
PWM1DCH5         .EQ  5
PWM1DCH6         .EQ  6
PWM1DCH7         .EQ  7



;----- PWM1PRL Bits -----------------------------------------------------
PWM1PRL0         .EQ  0
PWM1PRL1         .EQ  1
PWM1PRL2         .EQ  2
PWM1PRL3         .EQ  3
PWM1PRL4         .EQ  4
PWM1PRL5         .EQ  5
PWM1PRL6         .EQ  6
PWM1PRL7         .EQ  7



;----- PWM1PRH Bits -----------------------------------------------------
PWM1PRH0         .EQ  0
PWM1PRH1         .EQ  1
PWM1PRH2         .EQ  2
PWM1PRH3         .EQ  3
PWM1PRH4         .EQ  4
PWM1PRH5         .EQ  5
PWM1PRH6         .EQ  6
PWM1PRH7         .EQ  7



;----- PWM1OFL Bits -----------------------------------------------------
PWM1OFL0         .EQ  0
PWM1OFL1         .EQ  1
PWM1OFL2         .EQ  2
PWM1OFL3         .EQ  3
PWM1OFL4         .EQ  4
PWM1OFL5         .EQ  5
PWM1OFL6         .EQ  6
PWM1OFL7         .EQ  7



;----- PWM1OFH Bits -----------------------------------------------------
PWM1OFH0         .EQ  0
PWM1OFH1         .EQ  1
PWM1OFH2         .EQ  2
PWM1OFH3         .EQ  3
PWM1OFH4         .EQ  4
PWM1OFH5         .EQ  5
PWM1OFH6         .EQ  6
PWM1OFH7         .EQ  7



;----- PWM1TMRL Bits -----------------------------------------------------
PWM1TMRL0        .EQ  0
PWM1TMRL1        .EQ  1
PWM1TMRL2        .EQ  2
PWM1TMRL3        .EQ  3
PWM1TMRL4        .EQ  4
PWM1TMRL5        .EQ  5
PWM1TMRL6        .EQ  6
PWM1TMRL7        .EQ  7



;----- PWM1TMRH Bits -----------------------------------------------------
PWM1TMRH0        .EQ  0
PWM1TMRH1        .EQ  1
PWM1TMRH2        .EQ  2
PWM1TMRH3        .EQ  3
PWM1TMRH4        .EQ  4
PWM1TMRH5        .EQ  5
PWM1TMRH6        .EQ  6
PWM1TMRH7        .EQ  7



;----- PWM1CON Bits -----------------------------------------------------
POL              .EQ  4
OUT              .EQ  5
OE               .EQ  6
EN               .EQ  7

PWM1MODE0        .EQ  2
PWM1MODE1        .EQ  3

PWM1POL          .EQ  4
PWM1OUT          .EQ  5
PWM1OE           .EQ  6
PWM1EN           .EQ  7

MODE0            .EQ  2
MODE1            .EQ  3


;----- PWM1INTCON Bits -----------------------------------------------------
PRIE             .EQ  0
DCIE             .EQ  1
PHIE             .EQ  2
OFIE             .EQ  3

PWM1PRIE         .EQ  0
PWM1DCIE         .EQ  1
PWM1PHIE         .EQ  2
PWM1OFIE         .EQ  3


;----- PWM1INTE Bits -----------------------------------------------------
PRIE             .EQ  0
DCIE             .EQ  1
PHIE             .EQ  2
OFIE             .EQ  3

PWM1PRIE         .EQ  0
PWM1DCIE         .EQ  1
PWM1PHIE         .EQ  2
PWM1OFIE         .EQ  3


;----- PWM1INTF Bits -----------------------------------------------------
PRIF             .EQ  0
DCIF             .EQ  1
PHIF             .EQ  2
OFIF             .EQ  3

PWM1PRIF         .EQ  0
PWM1DCIF         .EQ  1
PWM1PHIF         .EQ  2
PWM1OFIF         .EQ  3


;----- PWM1INTFLG Bits -----------------------------------------------------
PRIF             .EQ  0
DCIF             .EQ  1
PHIF             .EQ  2
OFIF             .EQ  3

PWM1PRIF         .EQ  0
PWM1DCIF         .EQ  1
PWM1PHIF         .EQ  2
PWM1OFIF         .EQ  3


;----- PWM1CLKCON Bits -----------------------------------------------------
PWM1CS0          .EQ  0
PWM1CS1          .EQ  1
PWM1PS0          .EQ  4
PWM1PS1          .EQ  5
PWM1PS2          .EQ  6


CS0              .EQ  0
CS1              .EQ  1
PS0_PWM1CLKCON   .EQ  4
PS1_PWM1CLKCON   .EQ  5
PS2_PWM1CLKCON   .EQ  6


;----- PWM1LDCON Bits -----------------------------------------------------
LDT              .EQ  6
LDA              .EQ  7

PWM1LDS0         .EQ  0
PWM1LDS1         .EQ  1

PWM1LDM          .EQ  6
PWM1LD           .EQ  7

LDS0             .EQ  0
LDS1             .EQ  1


;----- PWM1OFCON Bits -----------------------------------------------------
OFO              .EQ  4

PWM1OFS0         .EQ  0
PWM1OFS1         .EQ  1
PWM1OFM0         .EQ  5
PWM1OFM1         .EQ  6

PWM1OFMC         .EQ  4

OFS0             .EQ  0
OFS1             .EQ  1
OFM0             .EQ  5
OFM1             .EQ  6


;----- PWM2PHL Bits -----------------------------------------------------
PWM2PHL0         .EQ  0
PWM2PHL1         .EQ  1
PWM2PHL2         .EQ  2
PWM2PHL3         .EQ  3
PWM2PHL4         .EQ  4
PWM2PHL5         .EQ  5
PWM2PHL6         .EQ  6
PWM2PHL7         .EQ  7



;----- PWM2PHH Bits -----------------------------------------------------
PWM2PHH0         .EQ  0
PWM2PHH1         .EQ  1
PWM2PHH2         .EQ  2
PWM2PHH3         .EQ  3
PWM2PHH4         .EQ  4
PWM2PHH5         .EQ  5
PWM2PHH6         .EQ  6
PWM2PHH7         .EQ  7



;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         .EQ  0
PWM2DCL1         .EQ  1
PWM2DCL2         .EQ  2
PWM2DCL3         .EQ  3
PWM2DCL4         .EQ  4
PWM2DCL5         .EQ  5
PWM2DCL6         .EQ  6
PWM2DCL7         .EQ  7



;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         .EQ  0
PWM2DCH1         .EQ  1
PWM2DCH2         .EQ  2
PWM2DCH3         .EQ  3
PWM2DCH4         .EQ  4
PWM2DCH5         .EQ  5
PWM2DCH6         .EQ  6
PWM2DCH7         .EQ  7



;----- PWM2PRL Bits -----------------------------------------------------
PWM2PRL0         .EQ  0
PWM2PRL1         .EQ  1
PWM2PRL2         .EQ  2
PWM2PRL3         .EQ  3
PWM2PRL4         .EQ  4
PWM2PRL5         .EQ  5
PWM2PRL6         .EQ  6
PWM2PRL7         .EQ  7



;----- PWM2PRH Bits -----------------------------------------------------
PWM2PRH0         .EQ  0
PWM2PRH1         .EQ  1
PWM2PRH2         .EQ  2
PWM2PRH3         .EQ  3
PWM2PRH4         .EQ  4
PWM2PRH5         .EQ  5
PWM2PRH6         .EQ  6
PWM2PRH7         .EQ  7



;----- PWM2OFL Bits -----------------------------------------------------
PWM2OFL0         .EQ  0
PWM2OFL1         .EQ  1
PWM2OFL2         .EQ  2
PWM2OFL3         .EQ  3
PWM2OFL4         .EQ  4
PWM2OFL5         .EQ  5
PWM2OFL6         .EQ  6
PWM2OFL7         .EQ  7



;----- PWM2OFH Bits -----------------------------------------------------
PWM2OFH0         .EQ  0
PWM2OFH1         .EQ  1
PWM2OFH2         .EQ  2
PWM2OFH3         .EQ  3
PWM2OFH4         .EQ  4
PWM2OFH5         .EQ  5
PWM2OFH6         .EQ  6
PWM2OFH7         .EQ  7



;----- PWM2TMRL Bits -----------------------------------------------------
PWM2TMRL0        .EQ  0
PWM2TMRL1        .EQ  1
PWM2TMRL2        .EQ  2
PWM2TMRL3        .EQ  3
PWM2TMRL4        .EQ  4
PWM2TMRL5        .EQ  5
PWM2TMRL6        .EQ  6
PWM2TMRL7        .EQ  7



;----- PWM2TMRH Bits -----------------------------------------------------
PWM2TMRH0        .EQ  0
PWM2TMRH1        .EQ  1
PWM2TMRH2        .EQ  2
PWM2TMRH3        .EQ  3
PWM2TMRH4        .EQ  4
PWM2TMRH5        .EQ  5
PWM2TMRH6        .EQ  6
PWM2TMRH7        .EQ  7



;----- PWM2CON Bits -----------------------------------------------------
POL              .EQ  4
OUT              .EQ  5
OE               .EQ  6
EN               .EQ  7

PWM2MODE0        .EQ  2
PWM2MODE1        .EQ  3

PWM2POL          .EQ  4
PWM2OUT          .EQ  5
PWM2OE           .EQ  6
PWM2EN           .EQ  7

MODE0            .EQ  2
MODE1            .EQ  3


;----- PWM2INTCON Bits -----------------------------------------------------
PRIE             .EQ  0
DCIE             .EQ  1
PHIE             .EQ  2
OFIE             .EQ  3

PWM2PRIE         .EQ  0
PWM2DCIE         .EQ  1
PWM2PHIE         .EQ  2
PWM2OFIE         .EQ  3


;----- PWM2INTE Bits -----------------------------------------------------
PRIE             .EQ  0
DCIE             .EQ  1
PHIE             .EQ  2
OFIE             .EQ  3

PWM2PRIE         .EQ  0
PWM2DCIE         .EQ  1
PWM2PHIE         .EQ  2
PWM2OFIE         .EQ  3


;----- PWM2INTF Bits -----------------------------------------------------
PRIF             .EQ  0
DCIF             .EQ  1
PHIF             .EQ  2
OFIF             .EQ  3

PWM2PRIF         .EQ  0
PWM2DCIF         .EQ  1
PWM2PHIF         .EQ  2
PWM2OFIF         .EQ  3


;----- PWM2INTFLG Bits -----------------------------------------------------
PRIF             .EQ  0
DCIF             .EQ  1
PHIF             .EQ  2
OFIF             .EQ  3

PWM2PRIF         .EQ  0
PWM2DCIF         .EQ  1
PWM2PHIF         .EQ  2
PWM2OFIF         .EQ  3


;----- PWM2CLKCON Bits -----------------------------------------------------
PWM2CS0          .EQ  0
PWM2CS1          .EQ  1
PWM2PS0          .EQ  4
PWM2PS1          .EQ  5
PWM2PS2          .EQ  6


CS0              .EQ  0
CS1              .EQ  1
PS0_PWM2CLKCON   .EQ  4
PS1_PWM2CLKCON   .EQ  5
PS2_PWM2CLKCON   .EQ  6


;----- PWM2LDCON Bits -----------------------------------------------------
LDT              .EQ  6
LDA              .EQ  7

PWM2LDS0         .EQ  0
PWM2LDS1         .EQ  1

PWM2LDM          .EQ  6
PWM2LD           .EQ  7

LDS0             .EQ  0
LDS1             .EQ  1


;----- PWM2OFCON Bits -----------------------------------------------------
OFO              .EQ  4

PWM2OFS0         .EQ  0
PWM2OFS1         .EQ  1
PWM2OFM0         .EQ  5
PWM2OFM1         .EQ  6

PWM2OFMC         .EQ  4

OFS0             .EQ  0
OFS1             .EQ  1
OFM0             .EQ  5
OFM1             .EQ  6


;----- PWM3PHL Bits -----------------------------------------------------
PWM3PHL0         .EQ  0
PWM3PHL1         .EQ  1
PWM3PHL2         .EQ  2
PWM3PHL3         .EQ  3
PWM3PHL4         .EQ  4
PWM3PHL5         .EQ  5
PWM3PHL6         .EQ  6
PWM3PHL7         .EQ  7



;----- PWM3PHH Bits -----------------------------------------------------
PWM3PHH0         .EQ  0
PWM3PHH1         .EQ  1
PWM3PHH2         .EQ  2
PWM3PHH3         .EQ  3
PWM3PHH4         .EQ  4
PWM3PHH5         .EQ  5
PWM3PHH6         .EQ  6
PWM3PHH7         .EQ  7



;----- PWM3DCL Bits -----------------------------------------------------
PWM3DCL0         .EQ  0
PWM3DCL1         .EQ  1
PWM3DCL2         .EQ  2
PWM3DCL3         .EQ  3
PWM3DCL4         .EQ  4
PWM3DCL5         .EQ  5
PWM3DCL6         .EQ  6
PWM3DCL7         .EQ  7



;----- PWM3DCH Bits -----------------------------------------------------
PWM3DCH0         .EQ  0
PWM3DCH1         .EQ  1
PWM3DCH2         .EQ  2
PWM3DCH3         .EQ  3
PWM3DCH4         .EQ  4
PWM3DCH5         .EQ  5
PWM3DCH6         .EQ  6
PWM3DCH7         .EQ  7



;----- PWM3PRL Bits -----------------------------------------------------
PWM3PRL0         .EQ  0
PWM3PRL1         .EQ  1
PWM3PRL2         .EQ  2
PWM3PRL3         .EQ  3
PWM3PRL4         .EQ  4
PWM3PRL5         .EQ  5
PWM3PRL6         .EQ  6
PWM3PRL7         .EQ  7



;----- PWM3PRH Bits -----------------------------------------------------
PWM3PRH0         .EQ  0
PWM3PRH1         .EQ  1
PWM3PRH2         .EQ  2
PWM3PRH3         .EQ  3
PWM3PRH4         .EQ  4
PWM3PRH5         .EQ  5
PWM3PRH6         .EQ  6
PWM3PRH7         .EQ  7



;----- PWM3OFL Bits -----------------------------------------------------
PWM3OFL0         .EQ  0
PWM3OFL1         .EQ  1
PWM3OFL2         .EQ  2
PWM3OFL3         .EQ  3
PWM3OFL4         .EQ  4
PWM3OFL5         .EQ  5
PWM3OFL6         .EQ  6
PWM3OFL7         .EQ  7



;----- PWM3OFH Bits -----------------------------------------------------
PWM3OFH0         .EQ  0
PWM3OFH1         .EQ  1
PWM3OFH2         .EQ  2
PWM3OFH3         .EQ  3
PWM3OFH4         .EQ  4
PWM3OFH5         .EQ  5
PWM3OFH6         .EQ  6
PWM3OFH7         .EQ  7



;----- PWM3TMRL Bits -----------------------------------------------------
PWM3TMRL0        .EQ  0
PWM3TMRL1        .EQ  1
PWM3TMRL2        .EQ  2
PWM3TMRL3        .EQ  3
PWM3TMRL4        .EQ  4
PWM3TMRL5        .EQ  5
PWM3TMRL6        .EQ  6
PWM3TMRL7        .EQ  7



;----- PWM3TMRH Bits -----------------------------------------------------
PWM3TMRH0        .EQ  0
PWM3TMRH1        .EQ  1
PWM3TMRH2        .EQ  2
PWM3TMRH3        .EQ  3
PWM3TMRH4        .EQ  4
PWM3TMRH5        .EQ  5
PWM3TMRH6        .EQ  6
PWM3TMRH7        .EQ  7



;----- PWM3CON Bits -----------------------------------------------------
POL              .EQ  4
OUT              .EQ  5
OE               .EQ  6
EN               .EQ  7

PWM3MODE0        .EQ  2
PWM3MODE1        .EQ  3

PWM3POL          .EQ  4
PWM3OUT          .EQ  5
PWM3OE           .EQ  6
PWM3EN           .EQ  7

MODE0            .EQ  2
MODE1            .EQ  3


;----- PWM3INTCON Bits -----------------------------------------------------
PRIE             .EQ  0
DCIE             .EQ  1
PHIE             .EQ  2
OFIE             .EQ  3

PWM3PRIE         .EQ  0
PWM3DCIE         .EQ  1
PWM3PHIE         .EQ  2
PWM3OFIE         .EQ  3


;----- PWM3INTE Bits -----------------------------------------------------
PRIE             .EQ  0
DCIE             .EQ  1
PHIE             .EQ  2
OFIE             .EQ  3

PWM3PRIE         .EQ  0
PWM3DCIE         .EQ  1
PWM3PHIE         .EQ  2
PWM3OFIE         .EQ  3


;----- PWM3INTF Bits -----------------------------------------------------
PRIF             .EQ  0
DCIF             .EQ  1
PHIF             .EQ  2
OFIF             .EQ  3

PWM3PRIF         .EQ  0
PWM3DCIF         .EQ  1
PWM3PHIF         .EQ  2
PWM3OFIF         .EQ  3


;----- PWM3INTFLG Bits -----------------------------------------------------
PRIF             .EQ  0
DCIF             .EQ  1
PHIF             .EQ  2
OFIF             .EQ  3

PWM3PRIF         .EQ  0
PWM3DCIF         .EQ  1
PWM3PHIF         .EQ  2
PWM3OFIF         .EQ  3


;----- PWM3CLKCON Bits -----------------------------------------------------
PWM3CS0          .EQ  0
PWM3CS1          .EQ  1
PWM3PS0          .EQ  4
PWM3PS1          .EQ  5
PWM3PS2          .EQ  6


CS0              .EQ  0
CS1              .EQ  1
PS0_PWM3CLKCON   .EQ  4
PS1_PWM3CLKCON   .EQ  5
PS2_PWM3CLKCON   .EQ  6


;----- PWM3LDCON Bits -----------------------------------------------------
LDT              .EQ  6
LDA              .EQ  7

PWM3LDS0         .EQ  0
PWM3LDS1         .EQ  1

PWM3LDM          .EQ  6
PWM3LD           .EQ  7

LDS0             .EQ  0
LDS1             .EQ  1


;----- PWM3OFCON Bits -----------------------------------------------------
OFO              .EQ  4

PWM3OFS0         .EQ  0
PWM3OFS1         .EQ  1
PWM3OFM0         .EQ  5
PWM3OFM1         .EQ  6

PWM3OFMC         .EQ  4

OFS0             .EQ  0
OFS1             .EQ  1
OFM0             .EQ  5
OFM1             .EQ  6


;----- STATUS_SHAD Bits -----------------------------------------------------
C_SHAD           .EQ  0
DC_SHAD          .EQ  1
Z_SHAD           .EQ  2



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM      .EQ   $0FFF

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
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator  I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz)  device clock supplied to CLKIN pin
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz)  device clock supplied to CLKIN pin
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-32 MHz)  device clock supplied to CLKIN pin

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

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to 7FFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to 1FFh write protected, 200h to 3FFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 0FFh write protected, 100h to 3FFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_PLLEN_OFF           .EQ  $3EFF  4x PLL disabled
_PLLEN_ON            .EQ  $3FFF  4x PLL enabled

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.
_BORV_19             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOREN_ON          .EQ  $37FF  LPBOR is enabled
_LPBOREN_OFF         .EQ  $3FFF  LPBOR is disabled

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003


