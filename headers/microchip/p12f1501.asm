;==========================================================================
;    Build date : Mar 21 2016
;    MPASM PIC12F1501 processor include
;
;    (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;    This header file defines configurations, registers, and other useful
;    bits of information for the PIC12F1501 microcontroller.  These names
;    are taken to match the data sheets as closely as possible.
;
;    Note that the processor must be selected before this file is included.
;    The processor may be selected the following ways:
;==========================================================================

;==========================================================================
;
;         Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   1024

;==========================================================================
;
;         Register Definitions
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

;-----Bank7------------------
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393

;-----Bank9------------------
NCO1ACC          .EQ  $0498
NCO1ACCL         .EQ  $0498
NCO1ACCH         .EQ  $0499
NCO1ACCU         .EQ  $049A
NCO1INC          .EQ  $049B
NCO1INCL         .EQ  $049B
NCO1INCH         .EQ  $049C
NCO1INCU         .EQ  $049D
NCO1CON          .EQ  $049E
NCO1CLK          .EQ  $049F

;-----Bank12------------------
PWM1DCL          .EQ  $0611
PWM1DCH          .EQ  $0612
PWM1CON          .EQ  $0613
PWM1CON0         .EQ  $0613
PWM2DCL          .EQ  $0614
PWM2DCH          .EQ  $0615
PWM2CON          .EQ  $0616
PWM2CON0         .EQ  $0616
PWM3DCL          .EQ  $0617
PWM3DCH          .EQ  $0618
PWM3CON          .EQ  $0619
PWM3CON0         .EQ  $0619
PWM4DCL          .EQ  $061A
PWM4DCH          .EQ  $061B
PWM4CON          .EQ  $061C
PWM4CON0         .EQ  $061C

;-----Bank13------------------
CWG1DBR          .EQ  $0691
CWG1DBF          .EQ  $0692
CWG1CON0         .EQ  $0693
CWG1CON1         .EQ  $0694
CWG1CON2         .EQ  $0695

;-----Bank30------------------
CLCDATA          .EQ  $0F0F
CLC1CON          .EQ  $0F10
CLC1POL          .EQ  $0F11
CLC1SEL0         .EQ  $0F12
CLC1SEL1         .EQ  $0F13
CLC1GLS0         .EQ  $0F14
CLC1GLS1         .EQ  $0F15
CLC1GLS2         .EQ  $0F16
CLC1GLS3         .EQ  $0F17
CLC2CON          .EQ  $0F18
CLC2POL          .EQ  $0F19
CLC2SEL0         .EQ  $0F1A
CLC2SEL1         .EQ  $0F1B
CLC2GLS0         .EQ  $0F1C
CLC2GLS1         .EQ  $0F1D
CLC2GLS2         .EQ  $0F1E
CLC2GLS3         .EQ  $0F1F

;-----Bank31------------------
BSR_ICDSHAD      .EQ  $0FE3
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
NCO1IF           .EQ  2
C1IF             .EQ  5


;----- PIR3 Bits -----------------------------------------------------
CLC1IF           .EQ  0
CLC2IF           .EQ  1


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  0
NOT_T1SYNC       .EQ  2

T1CKPS0          .EQ  4
T1CKPS1          .EQ  5
TMR1CS0          .EQ  6
TMR1CS1          .EQ  7


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  2
T1GGO_NOT_DONE   .EQ  3
T1GSPM           .EQ  4
T1GTM            .EQ  5
T1GPOL           .EQ  6
TMR1GE           .EQ  7

T1GSS0           .EQ  0
T1GSS1           .EQ  1


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  2

T2CKPS0          .EQ  0
T2CKPS1          .EQ  1
TOUTPS0          .EQ  3
TOUTPS1          .EQ  4
TOUTPS2          .EQ  5
TOUTPS3          .EQ  6


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
NCO1IE           .EQ  2
C1IE             .EQ  5


;----- PIE3 Bits -----------------------------------------------------
CLC1IE           .EQ  0
CLC2IE           .EQ  1


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  3
TMR0SE           .EQ  4
TMR0CS           .EQ  5
INTEDG           .EQ  6
NOT_WPUEN        .EQ  7

PS0              .EQ  0
PS1              .EQ  1
PS2              .EQ  2
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


;----- OSCCON Bits -----------------------------------------------------
SCS0             .EQ  0
SCS1             .EQ  1
IRCF0            .EQ  3
IRCF1            .EQ  4
IRCF2            .EQ  5
IRCF3            .EQ  6


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  0
LFIOFR           .EQ  1
HFIOFR           .EQ  4


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  0
GO_NOT_DONE      .EQ  1

ADGO             .EQ  1
CHS0             .EQ  2
CHS1             .EQ  3
CHS2             .EQ  4
CHS3             .EQ  5
CHS4             .EQ  6

GO               .EQ  1


;----- ADCON1 Bits -----------------------------------------------------
ADFM             .EQ  7

ADPREF0          .EQ  0
ADPREF1          .EQ  1


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
C1INTN           .EQ  6
C1INTP           .EQ  7

C1NCH0           .EQ  0
C1NCH1           .EQ  1
C1NCH2           .EQ  2
C1PCH0           .EQ  4
C1PCH1           .EQ  5


;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  0


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  0
BORFS            .EQ  6
SBOREN           .EQ  7


;----- FVRCON Bits -----------------------------------------------------
TSRNG            .EQ  4
TSEN             .EQ  5
FVRRDY           .EQ  6
FVREN            .EQ  7

ADFVR0           .EQ  0
ADFVR1           .EQ  1
CDAFVR0          .EQ  2
CDAFVR1          .EQ  3


;----- DACCON0 Bits -----------------------------------------------------
DACPSS           .EQ  2
DACOE2           .EQ  4
DACOE1           .EQ  5
DACEN            .EQ  7


;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  0
DACR1            .EQ  1
DACR2            .EQ  2
DACR3            .EQ  3
DACR4            .EQ  4


;----- APFCON Bits -----------------------------------------------------
NCO1SEL          .EQ  0
CLC1SEL          .EQ  1
T1GSEL           .EQ  3
CWG1ASEL         .EQ  6
CWG1BSEL         .EQ  7


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



;----- NCO1ACCL Bits -----------------------------------------------------
NCO1ACC0         .EQ  0
NCO1ACC1         .EQ  1
NCO1ACC2         .EQ  2
NCO1ACC3         .EQ  3
NCO1ACC4         .EQ  4
NCO1ACC5         .EQ  5
NCO1ACC6         .EQ  6
NCO1ACC7         .EQ  7


;----- NCO1ACCH Bits -----------------------------------------------------
NCO1ACC8         .EQ  0
NCO1ACC9         .EQ  1
NCO1ACC10        .EQ  2
NCO1ACC11        .EQ  3
NCO1ACC12        .EQ  4
NCO1ACC13        .EQ  5
NCO1ACC14        .EQ  6
NCO1ACC15        .EQ  7


;----- NCO1ACCU Bits -----------------------------------------------------
NCO1ACC16        .EQ  0
NCO1ACC17        .EQ  1
NCO1ACC18        .EQ  2
NCO1ACC19        .EQ  3


;----- NCO1INCL Bits -----------------------------------------------------
NCO1INC0         .EQ  0
NCO1INC1         .EQ  1
NCO1INC2         .EQ  2
NCO1INC3         .EQ  3
NCO1INC4         .EQ  4
NCO1INC5         .EQ  5
NCO1INC6         .EQ  6
NCO1INC7         .EQ  7


;----- NCO1INCH Bits -----------------------------------------------------
NCO1INC8         .EQ  0
NCO1INC9         .EQ  1
NCO1INC10        .EQ  2
NCO1INC11        .EQ  3
NCO1INC12        .EQ  4
NCO1INC13        .EQ  5
NCO1INC14        .EQ  6
NCO1INC15        .EQ  7


;----- NCO1CON Bits -----------------------------------------------------
N1PFM            .EQ  0
N1POL            .EQ  4
N1OUT            .EQ  5
N1OE             .EQ  6
N1EN             .EQ  7


;----- NCO1CLK Bits -----------------------------------------------------
N1CKS0           .EQ  0
N1CKS1           .EQ  1
N1PWS0           .EQ  5
N1PWS1           .EQ  6
N1PWS2           .EQ  7


;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         .EQ  6
PWM1DCL1         .EQ  7


;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         .EQ  0
PWM1DCH1         .EQ  1
PWM1DCH2         .EQ  2
PWM1DCH3         .EQ  3
PWM1DCH4         .EQ  4
PWM1DCH5         .EQ  5
PWM1DCH6         .EQ  6
PWM1DCH7         .EQ  7


;----- PWM1CON Bits -----------------------------------------------------
PWM1POL          .EQ  4
PWM1OUT          .EQ  5
PWM1OE           .EQ  6
PWM1EN           .EQ  7


;----- PWM1CON0 Bits -----------------------------------------------------
PWM1POL          .EQ  4
PWM1OUT          .EQ  5
PWM1OE           .EQ  6
PWM1EN           .EQ  7


;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         .EQ  6
PWM2DCL1         .EQ  7


;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         .EQ  0
PWM2DCH1         .EQ  1
PWM2DCH2         .EQ  2
PWM2DCH3         .EQ  3
PWM2DCH4         .EQ  4
PWM2DCH5         .EQ  5
PWM2DCH6         .EQ  6
PWM2DCH7         .EQ  7


;----- PWM2CON Bits -----------------------------------------------------
PWM2POL          .EQ  4
PWM2OUT          .EQ  5
PWM2OE           .EQ  6
PWM2EN           .EQ  7


;----- PWM2CON0 Bits -----------------------------------------------------
PWM2POL          .EQ  4
PWM2OUT          .EQ  5
PWM2OE           .EQ  6
PWM2EN           .EQ  7


;----- PWM3DCL Bits -----------------------------------------------------
PWM3DCL0         .EQ  6
PWM3DCL1         .EQ  7


;----- PWM3DCH Bits -----------------------------------------------------
PWM3DCH0         .EQ  0
PWM3DCH1         .EQ  1
PWM3DCH2         .EQ  2
PWM3DCH3         .EQ  3
PWM3DCH4         .EQ  4
PWM3DCH5         .EQ  5
PWM3DCH6         .EQ  6
PWM3DCH7         .EQ  7


;----- PWM3CON Bits -----------------------------------------------------
PWM3POL          .EQ  4
PWM3OUT          .EQ  5
PWM3OE           .EQ  6
PWM3EN           .EQ  7


;----- PWM3CON0 Bits -----------------------------------------------------
PWM3POL          .EQ  4
PWM3OUT          .EQ  5
PWM3OE           .EQ  6
PWM3EN           .EQ  7


;----- PWM4DCL Bits -----------------------------------------------------
PWM4DCL0         .EQ  6
PWM4DCL1         .EQ  7


;----- PWM4DCH Bits -----------------------------------------------------
PWM4DCH0         .EQ  0
PWM4DCH1         .EQ  1
PWM4DCH2         .EQ  2
PWM4DCH3         .EQ  3
PWM4DCH4         .EQ  4
PWM4DCH5         .EQ  5
PWM4DCH6         .EQ  6
PWM4DCH7         .EQ  7


;----- PWM4CON Bits -----------------------------------------------------
PWM4POL          .EQ  4
PWM4OUT          .EQ  5
PWM4OE           .EQ  6
PWM4EN           .EQ  7


;----- PWM4CON0 Bits -----------------------------------------------------
PWM4POL          .EQ  4
PWM4OUT          .EQ  5
PWM4OE           .EQ  6
PWM4EN           .EQ  7


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
G1ASDSCLC2       .EQ  0
G1ASDSFLT        .EQ  1
G1ASDSC1         .EQ  2
G1ARSEN          .EQ  6
G1ASE            .EQ  7


;----- CLCDATA Bits -----------------------------------------------------
MCLC1OUT         .EQ  0
MCLC2OUT         .EQ  1


;----- CLC1CON Bits -----------------------------------------------------
LC1MODE0         .EQ  0
LC1MODE1         .EQ  1
LC1MODE2         .EQ  2
LC1INTN          .EQ  3
LC1INTP          .EQ  4
LC1OUT           .EQ  5
LC1OE            .EQ  6
LC1EN            .EQ  7

LCMODE0          .EQ  0
LCMODE1          .EQ  1
LCMODE2          .EQ  2
LCINTN           .EQ  3
LCINTP           .EQ  4
LCOUT            .EQ  5
LCOE             .EQ  6
LCEN             .EQ  7



;----- CLC1POL Bits -----------------------------------------------------
LC1G1POL         .EQ  0
LC1G2POL         .EQ  1
LC1G3POL         .EQ  2
LC1G4POL         .EQ  3
LC1POL           .EQ  7

G1POL            .EQ  0
G2POL            .EQ  1
G3POL            .EQ  2
G4POL            .EQ  3
POL              .EQ  7


;----- CLC1SEL0 Bits -----------------------------------------------------
LC1D1S0          .EQ  0
LC1D1S1          .EQ  1
LC1D1S2          .EQ  2
LC1D2S0          .EQ  4
LC1D2S1          .EQ  5
LC1D2S2          .EQ  6

D1S0             .EQ  0
D1S1             .EQ  1
D1S2             .EQ  2
D2S0             .EQ  4
D2S1             .EQ  5
D2S2             .EQ  6



;----- CLC1SEL1 Bits -----------------------------------------------------
LC1D3S0          .EQ  0
LC1D3S1          .EQ  1
LC1D3S2          .EQ  2
LC1D4S0          .EQ  4
LC1D4S1          .EQ  5
LC1D4S2          .EQ  6

D3S0             .EQ  0
D3S1             .EQ  1
D3S2             .EQ  2
D4S0             .EQ  4
D4S1             .EQ  5
D4S2             .EQ  6



;----- CLC1GLS0 Bits -----------------------------------------------------
LC1G1D1N         .EQ  0
LC1G1D1T         .EQ  1
LC1G1D2N         .EQ  2
LC1G1D2T         .EQ  3
LC1G1D3N         .EQ  4
LC1G1D3T         .EQ  5
LC1G1D4N         .EQ  6
LC1G1D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC1GLS1 Bits -----------------------------------------------------
LC1G2D1N         .EQ  0
LC1G2D1T         .EQ  1
LC1G2D2N         .EQ  2
LC1G2D2T         .EQ  3
LC1G2D3N         .EQ  4
LC1G2D3T         .EQ  5
LC1G2D4N         .EQ  6
LC1G2D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC1GLS2 Bits -----------------------------------------------------
LC1G3D1N         .EQ  0
LC1G3D1T         .EQ  1
LC1G3D2N         .EQ  2
LC1G3D2T         .EQ  3
LC1G3D3N         .EQ  4
LC1G3D3T         .EQ  5
LC1G3D4N         .EQ  6
LC1G3D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC1GLS3 Bits -----------------------------------------------------
LC1G4D1N         .EQ  0
LC1G4D1T         .EQ  1
LC1G4D2N         .EQ  2
LC1G4D2T         .EQ  3
LC1G4D3N         .EQ  4
LC1G4D3T         .EQ  5
LC1G4D4N         .EQ  6
LC1G4D4T         .EQ  7

G4D1N            .EQ  0
G4D1T            .EQ  1
G4D2N            .EQ  2
G4D2T            .EQ  3
G4D3N            .EQ  4
G4D3T            .EQ  5
G4D4N            .EQ  6
G4D4T            .EQ  7


;----- CLC2CON Bits -----------------------------------------------------
LC2MODE0         .EQ  0
LC2MODE1         .EQ  1
LC2MODE2         .EQ  2
LC2INTN          .EQ  3
LC2INTP          .EQ  4
LC2OUT           .EQ  5
LC2OE            .EQ  6
LC2EN            .EQ  7

LCMODE0          .EQ  0
LCMODE1          .EQ  1
LCMODE2          .EQ  2
LCINTN           .EQ  3
LCINTP           .EQ  4
LCOUT            .EQ  5
LCOE             .EQ  6
LCEN             .EQ  7



;----- CLC2POL Bits -----------------------------------------------------
LC2G1POL         .EQ  0
LC2G2POL         .EQ  1
LC2G3POL         .EQ  2
LC2G4POL         .EQ  3
LC2POL           .EQ  7

G1POL            .EQ  0
G2POL            .EQ  1
G3POL            .EQ  2
G4POL            .EQ  3
POL              .EQ  7


;----- CLC2SEL0 Bits -----------------------------------------------------
LC2D1S0          .EQ  0
LC2D1S1          .EQ  1
LC2D1S2          .EQ  2
LC2D2S0          .EQ  4
LC2D2S1          .EQ  5
LC2D2S2          .EQ  6

D1S0             .EQ  0
D1S1             .EQ  1
D1S2             .EQ  2
D2S0             .EQ  4
D2S1             .EQ  5
D2S2             .EQ  6



;----- CLC2SEL1 Bits -----------------------------------------------------
LC2D3S0          .EQ  0
LC2D3S1          .EQ  1
LC2D3S2          .EQ  2
LC2D4S0          .EQ  4
LC2D4S1          .EQ  5
LC2D4S2          .EQ  6

D3S0             .EQ  0
D3S1             .EQ  1
D3S2             .EQ  2
D4S0             .EQ  4
D4S1             .EQ  5
D4S2             .EQ  6



;----- CLC2GLS0 Bits -----------------------------------------------------
LC2G1D1N         .EQ  0
LC2G1D1T         .EQ  1
LC2G1D2N         .EQ  2
LC2G1D2T         .EQ  3
LC2G1D3N         .EQ  4
LC2G1D3T         .EQ  5
LC2G1D4N         .EQ  6
LC2G1D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC2GLS1 Bits -----------------------------------------------------
LC2G2D1N         .EQ  0
LC2G2D1T         .EQ  1
LC2G2D2N         .EQ  2
LC2G2D2T         .EQ  3
LC2G2D3N         .EQ  4
LC2G2D3T         .EQ  5
LC2G2D4N         .EQ  6
LC2G2D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC2GLS2 Bits -----------------------------------------------------
LC2G3D1N         .EQ  0
LC2G3D1T         .EQ  1
LC2G3D2N         .EQ  2
LC2G3D2T         .EQ  3
LC2G3D3N         .EQ  4
LC2G3D3T         .EQ  5
LC2G3D4N         .EQ  6
LC2G3D4T         .EQ  7

D1N              .EQ  0
D1T              .EQ  1
D2N              .EQ  2
D2T              .EQ  3
D3N              .EQ  4
D3T              .EQ  5
D4N              .EQ  6
D4T              .EQ  7


;----- CLC2GLS3 Bits -----------------------------------------------------
LC2G4D1N         .EQ  0
LC2G4D1T         .EQ  1
LC2G4D2N         .EQ  2
LC2G4D2T         .EQ  3
LC2G4D3N         .EQ  4
LC2G4D3T         .EQ  5
LC2G4D4N         .EQ  6
LC2G4D4T         .EQ  7

G4D1N            .EQ  0
G4D1T            .EQ  1
G4D2N            .EQ  2
G4D2T            .EQ  3
G4D3N            .EQ  4
G4D3T            .EQ  5
G4D4N            .EQ  6
G4D4T            .EQ  7


;----- STATUS_SHAD Bits -----------------------------------------------------
C_SHAD           .EQ  0
DC_SHAD          .EQ  1
Z_SHAD           .EQ  2



;==========================================================================
;
;         RAM Definitions
;
;==========================================================================

_MAXRAM      .EQ   $0FFF

;==========================================================================
;
;         Configuration Bits
;
;     NAME            Address
;     CONFIG1           8007h
;     CONFIG2           8008h
;
;==========================================================================

;   The following is an assignment of address values for all of the
;   configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008

;----- CONFIG1 Options --------------------------------------------------
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pin
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pin
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pin

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
_WRT_ALL             .EQ  $3FFC  000h to 1FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD  000h to FFFh write protected, 1000h to 1FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 1FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            .EQ  $37FF  Low-Power BOR is enabled
_LPBOR_OFF           .EQ  $3FFF  Low-Power BOR is disabled

_LVP_OFF             .EQ  $1FFF  High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF  Low-voltage programming enabled

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003


