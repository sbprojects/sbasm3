;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12F1612 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12F1612 microcontroller.  These names
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
                  .MS   2048

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
PIR4             .EQ  $14
TMR0             .EQ  $15
TMR1             .EQ  $16
TMR1L            .EQ  $16
TMR1H            .EQ  $17
T1CON            .EQ  $18
T1GCON           .EQ  $19
T2TMR            .EQ  $1A
TMR2             .EQ  $1A
PR2              .EQ  $1B
T2PR             .EQ  $1B
T2CON            .EQ  $1C
T2HLT            .EQ  $1D
T2CLKCON         .EQ  $1E
T2RST            .EQ  $1F

;-----Bank1------------------
TRISA            .EQ  $8C
PIE1             .EQ  $91
PIE2             .EQ  $92
PIE3             .EQ  $93
PIE4             .EQ  $94
OPTION_REG       .EQ  $95
PCON             .EQ  $96
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
DAC1CON0         .EQ  $0118
DAC1CON1         .EQ  $0119
ZCD1CON          .EQ  $011C
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

;-----Bank5------------------
ODCONA           .EQ  $028C
CCPR1            .EQ  $0291
CCPR1L           .EQ  $0291
CCPR1H           .EQ  $0292
CCP1CON          .EQ  $0293
CCP1CAP          .EQ  $0294
CCPR2            .EQ  $0298
CCPR2L           .EQ  $0298
CCPR2H           .EQ  $0299
CCP2CON          .EQ  $029A
CCP2CAP          .EQ  $029B
CCPTMRS          .EQ  $029E

;-----Bank6------------------
SLRCONA          .EQ  $030C

;-----Bank7------------------
INLVLA           .EQ  $038C
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393

;-----Bank8------------------
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

;-----Bank13------------------
CWG1DBR          .EQ  $0691
CWG1DBF          .EQ  $0692
CWG1AS0          .EQ  $0693
CWG1AS1          .EQ  $0694
CWG1OCON0        .EQ  $0695
CWG1CON0         .EQ  $0696
CWG1CON1         .EQ  $0697
CWG1OCON1        .EQ  $0698
CWG1CLKCON       .EQ  $0699
CWG1ISM          .EQ  $069A

;-----Bank14------------------
WDTCON0          .EQ  $0711
WDTCON1          .EQ  $0712
WDTPSL           .EQ  $0713
WDTPSH           .EQ  $0714
WDTTMR           .EQ  $0715
SCANLADR         .EQ  $0718
SCANLADRL        .EQ  $0718
SCANLADRH        .EQ  $0719
SCANHADR         .EQ  $071A
SCANHADRL        .EQ  $071A
SCANHADRH        .EQ  $071B
SCANCON0         .EQ  $071C
SCANTRIG         .EQ  $071D

;-----Bank15------------------
CRCDAT           .EQ  $0791
CRCDATL          .EQ  $0791
CRCDATH          .EQ  $0792
CRCACC           .EQ  $0793
CRCACCL          .EQ  $0793
CRCACCH          .EQ  $0794
CRCSHIFT         .EQ  $0795
CRCSHIFTL        .EQ  $0795
CRCSHIFTH        .EQ  $0796
CRCXOR           .EQ  $0797
CRCXORL          .EQ  $0797
CRCXORH          .EQ  $0798
CRCCON0          .EQ  $0799
CRCCON1          .EQ  $079A

;-----Bank27------------------
SMT1TMR          .EQ  $0D8C
SMT1TMRL         .EQ  $0D8C
SMT1TMRH         .EQ  $0D8D
SMT1TMRU         .EQ  $0D8E
SMT1CPR          .EQ  $0D8F
SMT1CPRL         .EQ  $0D8F
SMT1CPRH         .EQ  $0D90
SMT1CPRU         .EQ  $0D91
SMT1CPW          .EQ  $0D92
SMT1CPWL         .EQ  $0D92
SMT1CPWH         .EQ  $0D93
SMT1CPWU         .EQ  $0D94
SMT1PR           .EQ  $0D95
SMT1PRL          .EQ  $0D95
SMT1PRH          .EQ  $0D96
SMT1PRU          .EQ  $0D97
SMT1CON0         .EQ  $0D98
SMT1CON1         .EQ  $0D99
SMT1STAT         .EQ  $0D9A
SMT1CLK          .EQ  $0D9B
SMT1SIG          .EQ  $0D9C
SMT1WIN          .EQ  $0D9D
SMT2TMR          .EQ  $0D9E
SMT2TMRL         .EQ  $0D9E
SMT2TMRH         .EQ  $0D9F
SMT2TMRU         .EQ  $0DA0
SMT2CPR          .EQ  $0DA1
SMT2CPRL         .EQ  $0DA1
SMT2CPRH         .EQ  $0DA2
SMT2CPRU         .EQ  $0DA3
SMT2CPW          .EQ  $0DA4
SMT2CPWL         .EQ  $0DA4
SMT2CPWH         .EQ  $0DA5
SMT2CPWU         .EQ  $0DA6
SMT2PR           .EQ  $0DA7
SMT2PRL          .EQ  $0DA7
SMT2PRH          .EQ  $0DA8
SMT2PRU          .EQ  $0DA9
SMT2CON0         .EQ  $0DAA
SMT2CON1         .EQ  $0DAB
SMT2STAT         .EQ  $0DAC
SMT2CLK          .EQ  $0DAD
SMT2SIG          .EQ  $0DAE
SMT2WIN          .EQ  $0DAF

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
CCP1IF           .EQ  2
ADIF             .EQ  6
TMR1GIF          .EQ  7


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  0
TMR4IF           .EQ  1
TMR6IF           .EQ  2
C1IF             .EQ  5
C2IF             .EQ  6


;----- PIR3 Bits -----------------------------------------------------
ZCDIF            .EQ  4
CWGIF            .EQ  5


;----- PIR4 Bits -----------------------------------------------------
SMT1IF           .EQ  0
SMT1PRAIF        .EQ  1
SMT1PWAIF        .EQ  2
SMT2IF           .EQ  3
SMT2PRAIF        .EQ  4
SMT2PWAIF        .EQ  5
CRCIF            .EQ  6
SCANIF           .EQ  7


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
ON               .EQ  7

T2ON             .EQ  7

T2OUTPS0         .EQ  0
T2OUTPS1         .EQ  1
T2OUTPS2         .EQ  2
T2OUTPS3         .EQ  3
T2CKPS0          .EQ  4
T2CKPS1          .EQ  5
T2CKPS2          .EQ  6

OUTPS0           .EQ  0
OUTPS1           .EQ  1
OUTPS2           .EQ  2
OUTPS3           .EQ  3
CKPS0            .EQ  4
CKPS1            .EQ  5
CKPS2            .EQ  6
TMR2ON           .EQ  7


;----- T2HLT Bits -----------------------------------------------------
CKSYNC           .EQ  5
CKPOL            .EQ  6
PSYNC            .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

T2CKSYNC         .EQ  5
T2CKPOL          .EQ  6
T2PSYNC          .EQ  7

T2MODE0          .EQ  0
T2MODE1          .EQ  1
T2MODE2          .EQ  2
T2MODE3          .EQ  3


;----- T2CLKCON Bits -----------------------------------------------------
T2CS0            .EQ  0
T2CS1            .EQ  1
T2CS2            .EQ  2


;----- T2RST Bits -----------------------------------------------------
RSEL0            .EQ  0
RSEL1            .EQ  1
RSEL2            .EQ  2
RSEL3            .EQ  3


T2RSEL0          .EQ  0
T2RSEL1          .EQ  1
T2RSEL2          .EQ  2
T2RSEL3          .EQ  3


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
CCP1IE           .EQ  2
ADIE             .EQ  6
TMR1GIE          .EQ  7


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  0
TMR4IE           .EQ  1
TMR6IE           .EQ  2
C1IE             .EQ  5
C2IE             .EQ  6


;----- PIE3 Bits -----------------------------------------------------
ZCDIE            .EQ  4
CWGIE            .EQ  5


;----- PIE4 Bits -----------------------------------------------------
SMT1IE           .EQ  0
SMT1PRAIE        .EQ  1
SMT1PWAIE        .EQ  2
SMT2IE           .EQ  3
SMT2PRAIE        .EQ  4
SMT2PWAIE        .EQ  5
CRCIE            .EQ  6
SCANIE           .EQ  7


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
NOT_WDTWV        .EQ  5
STKUNF           .EQ  6
STKOVF           .EQ  7


;----- OSCTUNE Bits -----------------------------------------------------
TUN0             .EQ  0
TUN1             .EQ  1
TUN2             .EQ  2
TUN3             .EQ  3
TUN4             .EQ  4
TUN5             .EQ  5


;----- OSCCON Bits -----------------------------------------------------
SPLLEN           .EQ  7

SCS0             .EQ  0
SCS1             .EQ  1
IRCF0            .EQ  3
IRCF1            .EQ  4
IRCF2            .EQ  5
IRCF3            .EQ  6


;----- OSCSTAT Bits -----------------------------------------------------
HFIOFS           .EQ  0
LFIOFR           .EQ  1
MFIOFR           .EQ  2
HFIOFL           .EQ  3
HFIOFR           .EQ  4
PLLR             .EQ  6


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
ADCS0            .EQ  4
ADCS1            .EQ  5
ADCS2            .EQ  6


;----- ADCON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  4
TRIGSEL1         .EQ  5
TRIGSEL2         .EQ  6
TRIGSEL3         .EQ  7


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  0
LATA1            .EQ  1
LATA2            .EQ  2
LATA3            .EQ  3
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
TSRNG            .EQ  4
TSEN             .EQ  5
FVRRDY           .EQ  6
FVREN            .EQ  7

ADFVR0           .EQ  0
ADFVR1           .EQ  1
CDAFVR0          .EQ  2
CDAFVR1          .EQ  3


;----- DAC1CON0 Bits -----------------------------------------------------
DAC1OE           .EQ  5
DAC1EN           .EQ  7

D1PSS0           .EQ  2
D1PSS1           .EQ  3


;----- DAC1CON1 Bits -----------------------------------------------------
DAC1R0           .EQ  0
DAC1R1           .EQ  1
DAC1R2           .EQ  2
DAC1R3           .EQ  3
DAC1R4           .EQ  4
DAC1R5           .EQ  5
DAC1R6           .EQ  6
DAC1R7           .EQ  7


;----- ZCD1CON Bits -----------------------------------------------------
ZCD1INTN         .EQ  0
ZCD1INTP         .EQ  1
ZCD1POL          .EQ  4
ZCD1OUT          .EQ  5
ZCD1OE           .EQ  6
ZCD1EN           .EQ  7


;----- APFCON Bits -----------------------------------------------------
CCP1SEL          .EQ  0
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
VREGPM0          .EQ  0
VREGPM1          .EQ  1


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


;----- CCP1CON Bits -----------------------------------------------------
FMT              .EQ  4
OUT              .EQ  5
OE               .EQ  6
EN               .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

CCP1FMT          .EQ  4
CCP1OUT          .EQ  5
CCP1OE           .EQ  6
CCP1EN           .EQ  7

CCP1MODE0        .EQ  0
CCP1MODE1        .EQ  1
CCP1MODE2        .EQ  2
CCP1MODE3        .EQ  3


;----- CCP1CAP Bits -----------------------------------------------------
CTS0             .EQ  0
CTS1             .EQ  1


CCP1CTS0         .EQ  0
CCP1CTS1         .EQ  1


;----- CCP2CON Bits -----------------------------------------------------
FMT              .EQ  4
OUT              .EQ  5
OE               .EQ  6
EN               .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

CCP2FMT          .EQ  4
CCP2OUT          .EQ  5
CCP2OE           .EQ  6
CCP2EN           .EQ  7

CCP2MODE0        .EQ  0
CCP2MODE1        .EQ  1
CCP2MODE2        .EQ  2
CCP2MODE3        .EQ  3


;----- CCP2CAP Bits -----------------------------------------------------
CTS0             .EQ  0
CTS1             .EQ  1


CCP2CTS0         .EQ  0
CCP2CTS1         .EQ  1


;----- CCPTMRS Bits -----------------------------------------------------
CCP1TSEL0        .EQ  0
CCP1TSEL1        .EQ  1
CCP2TSEL0        .EQ  2
CCP2TSEL1        .EQ  3


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


;----- T4CON Bits -----------------------------------------------------
ON               .EQ  7

T4ON             .EQ  7

T4OUTPS0         .EQ  0
T4OUTPS1         .EQ  1
T4OUTPS2         .EQ  2
T4OUTPS3         .EQ  3
T4CKPS0          .EQ  4
T4CKPS1          .EQ  5
T4CKPS2          .EQ  6

OUTPS0           .EQ  0
OUTPS1           .EQ  1
OUTPS2           .EQ  2
OUTPS3           .EQ  3
CKPS0            .EQ  4
CKPS1            .EQ  5
CKPS2            .EQ  6
TMR4ON           .EQ  7


;----- T4HLT Bits -----------------------------------------------------
CKSYNC           .EQ  5
CKPOL            .EQ  6
PSYNC            .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

T4CKSYNC         .EQ  5
T4CKPOL          .EQ  6
T4PSYNC          .EQ  7

T4MODE0          .EQ  0
T4MODE1          .EQ  1
T4MODE2          .EQ  2
T4MODE3          .EQ  3


;----- T4CLKCON Bits -----------------------------------------------------
T4CS0            .EQ  0
T4CS1            .EQ  1
T4CS2            .EQ  2


;----- T4RST Bits -----------------------------------------------------
RSEL0            .EQ  0
RSEL1            .EQ  1
RSEL2            .EQ  2
RSEL3            .EQ  3


T4RSEL0          .EQ  0
T4RSEL1          .EQ  1
T4RSEL2          .EQ  2
T4RSEL3          .EQ  3


;----- T6CON Bits -----------------------------------------------------
ON               .EQ  7

T6ON             .EQ  7

T6OUTPS0         .EQ  0
T6OUTPS1         .EQ  1
T6OUTPS2         .EQ  2
T6OUTPS3         .EQ  3
T6CKPS0          .EQ  4
T6CKPS1          .EQ  5
T6CKPS2          .EQ  6

OUTPS0           .EQ  0
OUTPS1           .EQ  1
OUTPS2           .EQ  2
OUTPS3           .EQ  3
CKPS0            .EQ  4
CKPS1            .EQ  5
CKPS2            .EQ  6
TMR6ON           .EQ  7


;----- T6HLT Bits -----------------------------------------------------
CKSYNC           .EQ  5
CKPOL            .EQ  6
PSYNC            .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

T6CKSYNC         .EQ  5
T6CKPOL          .EQ  6
T6PSYNC          .EQ  7

T6MODE0          .EQ  0
T6MODE1          .EQ  1
T6MODE2          .EQ  2
T6MODE3          .EQ  3


;----- T6CLKCON Bits -----------------------------------------------------
T6CS0            .EQ  0
T6CS1            .EQ  1
T6CS2            .EQ  2


;----- T6RST Bits -----------------------------------------------------
RSEL0            .EQ  0
RSEL1            .EQ  1
RSEL2            .EQ  2
RSEL3            .EQ  3


T6RSEL0          .EQ  0
T6RSEL1          .EQ  1
T6RSEL2          .EQ  2
T6RSEL3          .EQ  3


;----- CWG1DBR Bits -----------------------------------------------------
DBR0             .EQ  0
DBR1             .EQ  1
DBR2             .EQ  2
DBR3             .EQ  3
DBR4             .EQ  4
DBR5             .EQ  5


CWG1DBR0         .EQ  0
CWG1DBR1         .EQ  1
CWG1DBR2         .EQ  2
CWG1DBR3         .EQ  3
CWG1DBR4         .EQ  4
CWG1DBR5         .EQ  5


;----- CWG1DBF Bits -----------------------------------------------------
DBF0             .EQ  0
DBF1             .EQ  1
DBF2             .EQ  2
DBF3             .EQ  3
DBF4             .EQ  4
DBF5             .EQ  5


CWG1DBF0         .EQ  0
CWG1DBF1         .EQ  1
CWG1DBF2         .EQ  2
CWG1DBF3         .EQ  3
CWG1DBF4         .EQ  4
CWG1DBF5         .EQ  5


;----- CWG1AS0 Bits -----------------------------------------------------
REN              .EQ  6
SHUTDOWN         .EQ  7

LSAC0            .EQ  2
LSAC1            .EQ  3
LSBD0            .EQ  4
LSBD1            .EQ  5

CWG1REN          .EQ  6
CWG1SHUTDOWN     .EQ  7

CWG1LSAC0        .EQ  2
CWG1LSAC1        .EQ  3
CWG1LSBD0        .EQ  4
CWG1LSBD1        .EQ  5


;----- CWG1AS1 Bits -----------------------------------------------------
INAS             .EQ  0
C1AS             .EQ  1
C2AS             .EQ  2
TMR2AS           .EQ  4
TMR4AS           .EQ  5
TMR6AS           .EQ  6

CWG1INAS         .EQ  0
CWG1C1AS         .EQ  1
CWG1C2AS         .EQ  2
CWG1TMR2AS       .EQ  4
CWG1TMR4AS       .EQ  5
CWG1TMR6AS       .EQ  6


;----- CWG1OCON0 Bits -----------------------------------------------------
STRA             .EQ  0
STRB             .EQ  1
STRC             .EQ  2
STRD             .EQ  3
OVRA             .EQ  4
OVRB             .EQ  5
OVRC             .EQ  6
OVRD             .EQ  7

CWG1STRA         .EQ  0
CWG1STRB         .EQ  1
CWG1STRC         .EQ  2
CWG1STRD         .EQ  3
CWG1OVRA         .EQ  4
CWG1OVRB         .EQ  5
CWG1OVRC         .EQ  6
CWG1OVRD         .EQ  7


;----- CWG1CON0 Bits -----------------------------------------------------
LD               .EQ  6
EN               .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
G1EN             .EQ  7

CWG1LD           .EQ  6
CWG1EN           .EQ  7

CWG1MODE0        .EQ  0
CWG1MODE1        .EQ  1
CWG1MODE2        .EQ  2


;----- CWG1CON1 Bits -----------------------------------------------------
POLA             .EQ  0
POLB             .EQ  1
POLC             .EQ  2
POLD             .EQ  3
IN               .EQ  5

CWG1POLA         .EQ  0
CWG1POLB         .EQ  1
CWG1POLC         .EQ  2
CWG1POLD         .EQ  3
CWG1IN           .EQ  5


;----- CWG1OCON1 Bits -----------------------------------------------------
OEA              .EQ  0
OEB              .EQ  1
OEC              .EQ  2
OED              .EQ  3

CWG1OEA          .EQ  0
CWG1OEB          .EQ  1
CWG1OEC          .EQ  2
CWG1OED          .EQ  3


;----- CWG1CLKCON Bits -----------------------------------------------------
CS               .EQ  0

CWG1CS           .EQ  0


;----- CWG1ISM Bits -----------------------------------------------------
IS0              .EQ  0
IS1              .EQ  1
IS2              .EQ  2


CWG1IS0          .EQ  0
CWG1IS1          .EQ  1
CWG1IS2          .EQ  2


;----- WDTCON0 Bits -----------------------------------------------------
SEN              .EQ  0

SWDTEN           .EQ  0

WDTSEN           .EQ  0

WDTPS0           .EQ  1
WDTPS1           .EQ  2
WDTPS2           .EQ  3
WDTPS3           .EQ  4
WDTPS4           .EQ  5


;----- WDTCON1 Bits -----------------------------------------------------
WINDOW0          .EQ  0
WINDOW1          .EQ  1
WINDOW2          .EQ  2


WDTWINDOW0       .EQ  0
WDTWINDOW1       .EQ  1
WDTWINDOW2       .EQ  2
WDTCS0           .EQ  4
WDTCS1           .EQ  5
WDTCS2           .EQ  6


;----- WDTPSL Bits -----------------------------------------------------
PSCNT0           .EQ  0
PSCNT1           .EQ  1
PSCNT2           .EQ  2
PSCNT3           .EQ  3
PSCNT4           .EQ  4
PSCNT5           .EQ  5
PSCNT6           .EQ  6
PSCNT7           .EQ  7


WDTPSCNT0        .EQ  0
WDTPSCNT1        .EQ  1
WDTPSCNT2        .EQ  2
WDTPSCNT3        .EQ  3
WDTPSCNT4        .EQ  4
WDTPSCNT5        .EQ  5
WDTPSCNT6        .EQ  6
WDTPSCNT7        .EQ  7


;----- WDTPSH Bits -----------------------------------------------------
PSCNT8           .EQ  0
PSCNT9           .EQ  1
PSCNT10          .EQ  2
PSCNT11          .EQ  3
PSCNT12          .EQ  4
PSCNT13          .EQ  5
PSCNT14          .EQ  6
PSCNT15          .EQ  7


WDTPSCNT8        .EQ  0
WDTPSCNT9        .EQ  1
WDTPSCNT10       .EQ  2
WDTPSCNT11       .EQ  3
WDTPSCNT12       .EQ  4
WDTPSCNT13       .EQ  5
WDTPSCNT14       .EQ  6
WDTPSCNT15       .EQ  7


;----- WDTTMR Bits -----------------------------------------------------
PSCNT16          .EQ  0
PSCNT17          .EQ  1
STATE            .EQ  2

WDTPSCNT16       .EQ  0
WDTPSCNT17       .EQ  1
WDTSTATE         .EQ  2
WDTTMR0          .EQ  3
WDTTMR1          .EQ  4
WDTTMR2          .EQ  5
WDTTMR3          .EQ  6
WDTTMR4          .EQ  7


;----- SCANLADRL Bits -----------------------------------------------------
LDAR0            .EQ  0
LDAR1            .EQ  1
LADR2            .EQ  2
LADR3            .EQ  3
LADR4            .EQ  4
LADR5            .EQ  5
LADR6            .EQ  6
LADR7            .EQ  7


SCANLADR0        .EQ  0
SCANLADR1        .EQ  1
SCANLADR2        .EQ  2
SCANLADR3        .EQ  3
SCANLADR4        .EQ  4
SCANLADR5        .EQ  5
SCANLADR6        .EQ  6
SCANLADR7        .EQ  7


;----- SCANLADRH Bits -----------------------------------------------------
LADR8            .EQ  0
LADR9            .EQ  1
LADR10           .EQ  2
LADR11           .EQ  3
LADR12           .EQ  4
LADR13           .EQ  5
LADR14           .EQ  6
LADR15           .EQ  7


SCANLADR8        .EQ  0
SCANLADR9        .EQ  1
SCANLADR10       .EQ  2
SCANLADR11       .EQ  3
SCANLADR12       .EQ  4
SCANLADR13       .EQ  5
SCANLADR14       .EQ  6
SCANLADR15       .EQ  7


;----- SCANHADRL Bits -----------------------------------------------------
HADR0            .EQ  0
HADR1            .EQ  1
HARD2            .EQ  2
HADR3            .EQ  3
HADR4            .EQ  4
HADR5            .EQ  5
HADR6            .EQ  6
HADR7            .EQ  7


SCANHADR0        .EQ  0
SCANHADR1        .EQ  1
SCANHADR2        .EQ  2
SCANHADR3        .EQ  3
SCANHADR4        .EQ  4
SCANHADR5        .EQ  5
SCANHADR6        .EQ  6
SCANHADR7        .EQ  7


;----- SCANHADRH Bits -----------------------------------------------------
HADR8            .EQ  0
HADR9            .EQ  1
HADR10           .EQ  2
HADR11           .EQ  3
HADR12           .EQ  4
HADR13           .EQ  5
HADR14           .EQ  6
HADR15           .EQ  7


SCANHADR8        .EQ  0
SCANHADR9        .EQ  1
SCANHADR10       .EQ  2
SCANHADR11       .EQ  3
SCANHADR12       .EQ  4
SCANHADR13       .EQ  5
SCANHADR14       .EQ  6
SCANHADR15       .EQ  7


;----- SCANCON0 Bits -----------------------------------------------------
INTM             .EQ  3
INVALID          .EQ  4
BUSY             .EQ  5
SCANGO           .EQ  6
EN               .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1

SCANINTM         .EQ  3
SCANINVALID      .EQ  4
SCANBUSY         .EQ  5
SCANEN           .EQ  7

SCANMODE0        .EQ  0
SCANMODE1        .EQ  1


;----- SCANTRIG Bits -----------------------------------------------------
TSEL0            .EQ  0
TSEL1            .EQ  1


SCANTSEL0        .EQ  0
SCANTSEL1        .EQ  1


;----- CRCDATL Bits -----------------------------------------------------
DAT0             .EQ  0
DAT1             .EQ  1
DAT2             .EQ  2
DAT3             .EQ  3
DAT4             .EQ  4
DAT5             .EQ  5
DAT6             .EQ  6
DAT7             .EQ  7


CRCDAT0          .EQ  0
CRCDAT1          .EQ  1
CRCDAT2          .EQ  2
CRCDAT3          .EQ  3
CRCDAT4          .EQ  4
CRCDAT5          .EQ  5
CRCDAT6          .EQ  6
CRDCDAT7         .EQ  7


;----- CRCDATH Bits -----------------------------------------------------
DAT8             .EQ  0
DAT9             .EQ  1
DAT10            .EQ  2
DAT11            .EQ  3
DAT12            .EQ  4
DAT13            .EQ  5
DAT14            .EQ  6
DAT15            .EQ  7


CRCDAT8          .EQ  0
CRCDAT9          .EQ  1
CRCDAT10         .EQ  2
CRCDAT11         .EQ  3
CRCDAT12         .EQ  4
CRCDAT13         .EQ  5
CRCDAT14         .EQ  6
CRCDAT15         .EQ  7


;----- CRCACCL Bits -----------------------------------------------------
ACC0             .EQ  0
ACC1             .EQ  1
ACC2             .EQ  2
ACC3             .EQ  3
ACC4             .EQ  4
ACC5             .EQ  5
ACC6             .EQ  6
ACC7             .EQ  7


CRCACC0          .EQ  0
CRCACC1          .EQ  1
CRCACC2          .EQ  2
CRCACC3          .EQ  3
CRCACC4          .EQ  4
CRCACC5          .EQ  5
CRCACC6          .EQ  6
CRCACC7          .EQ  7


;----- CRCACCH Bits -----------------------------------------------------
ACC8             .EQ  0
ACC9             .EQ  1
ACC10            .EQ  2
ACC11            .EQ  3
ACC12            .EQ  4
ACC13            .EQ  5
ACC14            .EQ  6
ACC15            .EQ  7


CRCACC8          .EQ  0
CRCACC9          .EQ  1
CRCACC10         .EQ  2
CRCACC11         .EQ  3
CRCACC12         .EQ  4
CRCACC13         .EQ  5
CRCACC14         .EQ  6
CRCACC15         .EQ  7


;----- CRCSHIFTL Bits -----------------------------------------------------
SHIFT0           .EQ  0
SHIFT1           .EQ  1
SHIFT2           .EQ  2
SHIFT3           .EQ  3
SHIFT4           .EQ  4
SHIFT5           .EQ  5
SHIFT6           .EQ  6
SHIFT7           .EQ  7


CRCSHIFT0        .EQ  0
CRCSHIFT1        .EQ  1
CRCSHIFT2        .EQ  2
CRCSHIFT3        .EQ  3
CRCSHIFT4        .EQ  4
CRCSHIFT5        .EQ  5
CRCSHIFT6        .EQ  6
CRCSHIFT7        .EQ  7


;----- CRCSHIFTH Bits -----------------------------------------------------
SHIFT8           .EQ  0
SHIFT9           .EQ  1
SHIFT10          .EQ  2
SHIFT11          .EQ  3
SHIFT12          .EQ  4
SHIFT13          .EQ  5
SHIFT14          .EQ  6
SHIFT15          .EQ  7


CRCSHIFT8        .EQ  0
CRCSHIFT9        .EQ  1
CRCSHIFT10       .EQ  2
CRCSHIFT11       .EQ  3
CRCSHIFT12       .EQ  4
CRCSHIFT13       .EQ  5
CRCSHIFT14       .EQ  6
CRCSHIFT15       .EQ  7


;----- CRCXORL Bits -----------------------------------------------------
XOR1             .EQ  1
XOR2             .EQ  2
XOR3             .EQ  3
XOR4             .EQ  4
XOR5             .EQ  5
XOR6             .EQ  6
XOR7             .EQ  7

CRCXOR1          .EQ  1
CRCXOR2          .EQ  2
CRCXOR3          .EQ  3
CRCXOR4          .EQ  4
CRCXOR5          .EQ  5
CRCXOR6          .EQ  6
CRCXOR7          .EQ  7


;----- CRCXORH Bits -----------------------------------------------------
XOR8             .EQ  0
XOR9             .EQ  1
XOR10            .EQ  2
XOR11            .EQ  3
XOR12            .EQ  4
XOR13            .EQ  5
XOR14            .EQ  6
XOR15            .EQ  7

CRCXOR8          .EQ  0
CRCXOR9          .EQ  1
CRCXOR10         .EQ  2
CRCXOR11         .EQ  3
CRCXOR12         .EQ  4
CRCXOR13         .EQ  5
CRCXOR14         .EQ  6
CRCXOR15         .EQ  7


;----- CRCCON0 Bits -----------------------------------------------------
FULL             .EQ  0
SHIFTM           .EQ  1
ACCM             .EQ  4
BUSY             .EQ  5
CRCGO            .EQ  6
EN               .EQ  7

CRCFULL          .EQ  0
CRCSHIFTM        .EQ  1
CRCACCM          .EQ  4
CRCBUSY          .EQ  5
CRCEN            .EQ  7


;----- CRCCON1 Bits -----------------------------------------------------
PLEN0            .EQ  0
PLEN1            .EQ  1
PLEN2            .EQ  2
PLEN3            .EQ  3
DLEN0            .EQ  4
DLEN1            .EQ  5
DLEN2            .EQ  6
DLEN3            .EQ  7


CRCPLEN0         .EQ  0
CRCPLEN1         .EQ  1
CRCPLEN2         .EQ  2
CRCPLEN3         .EQ  3
CRCDLEN0         .EQ  4
CRCDLEN1         .EQ  5
CRCDLEN2         .EQ  6
CRCDLEN3         .EQ  7


;----- SMT1TMRL Bits -----------------------------------------------------
SMT1TMR0         .EQ  0
SMT1TMR1         .EQ  1
SMT1TMR2         .EQ  2
SMT1TMR3         .EQ  3
SMT1TMR4         .EQ  4
SMT1TMR5         .EQ  5
SMT1TMR6         .EQ  6
SMT1TMR7         .EQ  7


;----- SMT1TMRH Bits -----------------------------------------------------
SMT1TMR8         .EQ  0
SMT1TMR9         .EQ  1
SMT1TMR10        .EQ  2
SMT1TMR11        .EQ  3
SMT1TMR12        .EQ  4
SMT1TMR13        .EQ  5
SMT1TMR14        .EQ  6
SMT1TMR15        .EQ  7


;----- SMT1TMRU Bits -----------------------------------------------------
SMT1TMR16        .EQ  0
SMT1TMR17        .EQ  1
SMT1TMR18        .EQ  2
SMT1TMR19        .EQ  3
SMT1TMR20        .EQ  4
SMT1TMR21        .EQ  5
SMT1TMR22        .EQ  6
SMT1TMR23        .EQ  7


;----- SMT1CPRL Bits -----------------------------------------------------
SMT1CPR0         .EQ  0
SMT1CPR1         .EQ  1
SMT1CPR2         .EQ  2
SMT1CPR3         .EQ  3
SMT1CPR4         .EQ  4
SMT1CPR5         .EQ  5
SMT1CPR6         .EQ  6
SMT1CPR7         .EQ  7


;----- SMT1CPRH Bits -----------------------------------------------------
SMT1CPR8         .EQ  0
SMT1CPR9         .EQ  1
SMT1CPR10        .EQ  2
SMT1CPR11        .EQ  3
SMT1CPR12        .EQ  4
SMT1CPR13        .EQ  5
SMT1CPR14        .EQ  6
SMT1CPR15        .EQ  7


;----- SMT1CPRU Bits -----------------------------------------------------
SMT1CPR16        .EQ  0
SMT1CPR17        .EQ  1
SMT1CPR18        .EQ  2
SMT1CPR19        .EQ  3
SMT1CPR20        .EQ  4
SMT1CPR21        .EQ  5
SMT1CPR22        .EQ  6
SMT1CPR23        .EQ  7


;----- SMT1CPWL Bits -----------------------------------------------------
SMT1CPW0         .EQ  0
SMT1CPW1         .EQ  1
SMT1CPW2         .EQ  2
SMT1CPW3         .EQ  3
SMT1CPW4         .EQ  4
SMT1CPW5         .EQ  5
SMT1CPW6         .EQ  6
SMT1CPW7         .EQ  7


;----- SMT1CPWH Bits -----------------------------------------------------
SMT1CPW8         .EQ  0
SMT1CPW9         .EQ  1
SMT1CPW10        .EQ  2
SMT1CPW11        .EQ  3
SMT1CPW12        .EQ  4
SMT1CPW13        .EQ  5
SMT1CPW14        .EQ  6
SMT1CPW15        .EQ  7


;----- SMT1CPWU Bits -----------------------------------------------------
SMT1CPW16        .EQ  0
SMT1CPW17        .EQ  1
SMT1CPW18        .EQ  2
SMT1CPW19        .EQ  3
SMT1CPW20        .EQ  4
SMT1CPW21        .EQ  5
SMT1CPW22        .EQ  6
SMT1CPW23        .EQ  7


;----- SMT1PRL Bits -----------------------------------------------------
SMT1PR0          .EQ  0
SMT1PR1          .EQ  1
SMT1PR2          .EQ  2
SMT1PR3          .EQ  3
SMT1PR4          .EQ  4
SMT1PR5          .EQ  5
SMT1PR6          .EQ  6
SMT1PR7          .EQ  7


;----- SMT1PRH Bits -----------------------------------------------------
SMT1PR8          .EQ  0
SMT1PR9          .EQ  1
SMT1PR10         .EQ  2
SMT1PR11         .EQ  3
SMT1PR12         .EQ  4
SMT1PR13         .EQ  5
SMT1PR14         .EQ  6
SMT1PR15         .EQ  7


;----- SMT1PRU Bits -----------------------------------------------------
SMT1PR16         .EQ  0
SMT1PR17         .EQ  1
SMT1PR18         .EQ  2
SMT1PR19         .EQ  3
SMT1PR20         .EQ  4
SMT1PR21         .EQ  5
SMT1PR22         .EQ  6
SMT1PR23         .EQ  7


;----- SMT1CON0 Bits -----------------------------------------------------
CPOL             .EQ  2
SPOL             .EQ  3
WPOL             .EQ  4
STP              .EQ  5
EN               .EQ  7

SMT1PS0          .EQ  0
SMT1PS1          .EQ  1


;----- SMT1CON1 Bits -----------------------------------------------------
REPEAT           .EQ  6
SMT1GO           .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

SMT1REPEAT       .EQ  6

SMT1MODE0        .EQ  0
SMT1MODE1        .EQ  1
SMT1MODE2        .EQ  2
SMT1MODE3        .EQ  3


;----- SMT1STAT Bits -----------------------------------------------------
AS               .EQ  0
WS               .EQ  1
TS               .EQ  2
RST              .EQ  5
CPWUP            .EQ  6
CPRUP            .EQ  7

SMT1AS           .EQ  0
SMT1WS           .EQ  1
SMT1TS           .EQ  2
SMT1RESET        .EQ  5
SMT1CPWUP        .EQ  6
SMT1CPRUP        .EQ  7


;----- SMT1CLK Bits -----------------------------------------------------
CSEL0            .EQ  0
CSEL1            .EQ  1
CSEL2            .EQ  2


SMT1CSEL0        .EQ  0
SMT1CSEL1        .EQ  1
SMT1CSEL2        .EQ  2


;----- SMT1SIG Bits -----------------------------------------------------
SSEL0            .EQ  0
SSEL1            .EQ  1
SSEL2            .EQ  2


SMT1SSEL0        .EQ  0
SMT1SSEL1        .EQ  1
SMT1SSEL2        .EQ  2


;----- SMT1WIN Bits -----------------------------------------------------
WSEL0            .EQ  0
WSEL1            .EQ  1
WSEL2            .EQ  2
WSEL3            .EQ  3


SMT1WSEL0        .EQ  0
SMT1WSEL1        .EQ  1
SMT1WSEL2        .EQ  2
SMT1WSEL3        .EQ  3


;----- SMT2TMRL Bits -----------------------------------------------------
SMT2TMR0         .EQ  0
SMT2TMR1         .EQ  1
SMT2TMR2         .EQ  2
SMT2TMR3         .EQ  3
SMT2TMR4         .EQ  4
SMT2TMR5         .EQ  5
SMT2TMR6         .EQ  6
SMT2TMR7         .EQ  7


;----- SMT2TMRH Bits -----------------------------------------------------
SMT2TMR8         .EQ  0
SMT2TMR9         .EQ  1
SMT2TMR10        .EQ  2
SMT2TMR11        .EQ  3
SMT2TMR12        .EQ  4
SMT2TMR13        .EQ  5
SMT2TMR14        .EQ  6
SMT2TMR15        .EQ  7


;----- SMT2TMRU Bits -----------------------------------------------------
SMT2TMR16        .EQ  0
SMT2TMR17        .EQ  1
SMT2TMR18        .EQ  2
SMT2TMR19        .EQ  3
SMT2TMR20        .EQ  4
SMT2TMR21        .EQ  5
SMT2TMR22        .EQ  6
SMT2TMR23        .EQ  7


;----- SMT2CPRL Bits -----------------------------------------------------
SMT2CPR0         .EQ  0
SMT2CPR1         .EQ  1
SMT2CPR2         .EQ  2
SMT2CPR3         .EQ  3
SMT2CPR4         .EQ  4
SMT2CPR5         .EQ  5
SMT2CPR6         .EQ  6
SMT2CPR7         .EQ  7


;----- SMT2CPRH Bits -----------------------------------------------------
SMT2CPR8         .EQ  0
SMT2CPR9         .EQ  1
SMT2CPR10        .EQ  2
SMT2CPR11        .EQ  3
SMT2CPR12        .EQ  4
SMT2CPR13        .EQ  5
SMT2CPR14        .EQ  6
SMT2CPR15        .EQ  7


;----- SMT2CPRU Bits -----------------------------------------------------
SMT2CPR16        .EQ  0
SMT2CPR17        .EQ  1
SMT2CPR18        .EQ  2
SMT2CPR19        .EQ  3
SMT2CPR20        .EQ  4
SMT2CPR21        .EQ  5
SMT2CPR22        .EQ  6
SMT2CPR23        .EQ  7


;----- SMT2CPWL Bits -----------------------------------------------------
SMT2CPW0         .EQ  0
SMT2CPW1         .EQ  1
SMT2CPW2         .EQ  2
SMT2CPW3         .EQ  3
SMT2CPW4         .EQ  4
SMT2CPW5         .EQ  5
SMT2CPW6         .EQ  6
SMT2CPW7         .EQ  7


;----- SMT2CPWH Bits -----------------------------------------------------
SMT2CPW8         .EQ  0
SMT2CPW9         .EQ  1
SMT2CPW10        .EQ  2
SMT2CPW11        .EQ  3
SMT2CPW12        .EQ  4
SMT2CPW13        .EQ  5
SMT2CPW14        .EQ  6
SMT2CPW15        .EQ  7


;----- SMT2CPWU Bits -----------------------------------------------------
SMT2CPW16        .EQ  0
SMT2CPW17        .EQ  1
SMT2CPW18        .EQ  2
SMT2CPW19        .EQ  3
SMT2CPW20        .EQ  4
SMT2CPW21        .EQ  5
SMT2CPW22        .EQ  6
SMT2CPW23        .EQ  7


;----- SMT2PRL Bits -----------------------------------------------------
SMT2PR0          .EQ  0
SMT2PR1          .EQ  1
SMT2PR2          .EQ  2
SMT2PR3          .EQ  3
SMT2PR4          .EQ  4
SMT2PR5          .EQ  5
SMT2PR6          .EQ  6
SMT2PR7          .EQ  7


;----- SMT2PRH Bits -----------------------------------------------------
SMT2PR8          .EQ  0
SMT2PR9          .EQ  1
SMT2PR10         .EQ  2
SMT2PR11         .EQ  3
SMT2PR12         .EQ  4
SMT2PR13         .EQ  5
SMT2PR14         .EQ  6
SMT2PR15         .EQ  7


;----- SMT2PRU Bits -----------------------------------------------------
SMT2PR16         .EQ  0
SMT2PR17         .EQ  1
SMT2PR18         .EQ  2
SMT2PR19         .EQ  3
SMT2PR20         .EQ  4
SMT2PR21         .EQ  5
SMT2PR22         .EQ  6
SMT2PR23         .EQ  7


;----- SMT2CON0 Bits -----------------------------------------------------
CPOL             .EQ  2
SPOL             .EQ  3
WPOL             .EQ  4
STP              .EQ  5
EN               .EQ  7

SMT2PS0          .EQ  0
SMT2PS1          .EQ  1


;----- SMT2CON1 Bits -----------------------------------------------------
REPEAT           .EQ  6
SMT2GO           .EQ  7

MODE0            .EQ  0
MODE1            .EQ  1
MODE2            .EQ  2
MODE3            .EQ  3

SMT2REPEAT       .EQ  6

SMT2MODE0        .EQ  0
SMT2MODE1        .EQ  1
SMT2MODE2        .EQ  2
SMT2MODE3        .EQ  3


;----- SMT2STAT Bits -----------------------------------------------------
AS               .EQ  0
WS               .EQ  1
TS               .EQ  2
RST              .EQ  5
CPWUP            .EQ  6
CPRUP            .EQ  7

SMT2AS           .EQ  0
SMT2WS           .EQ  1
SMT2TS           .EQ  2
SMT2RESET        .EQ  5
SMT2CPWUP        .EQ  6
SMT2CPRUP        .EQ  7


;----- SMT2CLK Bits -----------------------------------------------------
CSEL0            .EQ  0
CSEL1            .EQ  1
CSEL2            .EQ  2


SMT2CSEL0        .EQ  0
SMT2CSEL1        .EQ  1
SMT2CSEL2        .EQ  2


;----- SMT2SIG Bits -----------------------------------------------------
SSEL0            .EQ  0
SSEL1            .EQ  1
SSEL2            .EQ  2


SMT2SSEL0        .EQ  0
SMT2SSEL1        .EQ  1
SMT2SSEL2        .EQ  2


;----- SMT2WIN Bits -----------------------------------------------------
WSEL0            .EQ  0
WSEL1            .EQ  1
WSEL2            .EQ  2
WSEL3            .EQ  3


SMT2WSEL0        .EQ  0
SMT2WSEL1        .EQ  1
SMT2WSEL2        .EQ  2
SMT2WSEL3        .EQ  3


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
;   CONFIG3           8009h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008
_CONFIG3        .EQ  $8009

;----- CONFIG1 Options --------------------------------------------------
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pins
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pins
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pins

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

_ZCD_ON              .EQ  $3F7F  ZCD always enabled
_ZCD_OFF             .EQ  $3FFF  ZCD disable.  ZCD can be enabled by setting the ZCDSEN bit of ZCDCON

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

;----- CONFIG3 Options --------------------------------------------------
_WDTCPS_WDTCPS0      .EQ  $3FE0  1:32 (1 ms period)
_WDTCPS_WDTCPS1      .EQ  $3FE1  1:64 (2 ms period)
_WDTCPS_WDTCPS2      .EQ  $3FE2  1:128 (4 ms period)
_WDTCPS_WDTCPS3      .EQ  $3FE3  1:256 (8 ms period)
_WDTCPS_WDTCPS4      .EQ  $3FE4  1:512 (16 ms period)
_WDTCPS_WDTCPS5      .EQ  $3FE5  1:1024 (32 ms period)
_WDTCPS_WDTCPS6      .EQ  $3FE6  1:2048 (64 ms period)
_WDTCPS_WDTCPS7      .EQ  $3FE7  1:4096 (128 ms period)
_WDTCPS_WDTCPS8      .EQ  $3FE8  1:8192 (256 ms period)
_WDTCPS_WDTCPS9      .EQ  $3FE9  1:16384 (512 ms period)
_WDTCPS_WDTCPSA      .EQ  $3FEA  1:32768 (1 s period)
_WDTCPS_WDTCPSB      .EQ  $3FEB  1:65536 (2 s period)
_WDTCPS_WDTCPSC      .EQ  $3FEC  1:131072 (4 s period)
_WDTCPS_WDTCPSD      .EQ  $3FED  1:262144 (8 s period)
_WDTCPS_WDTCPSE      .EQ  $3FEE  1:524299 (16 s period)
_WDTCPS_WDTCPSF      .EQ  $3FEF  1:1048576 (32 s period)
_WDTCPS_WDTCPS10     .EQ  $3FF0  1:2097152 (64 s period)
_WDTCPS_WDTCPS11     .EQ  $3FF1  1:4194304 (128 s period)
_WDTCPS_WDTCPS12     .EQ  $3FF2  1:8388608 (256 s period)
_WDTCPS_WDTCPS1F     .EQ  $3FFF  Software Control (WDTPS)

_WDTE_OFF            .EQ  $3F9F  WDT disabled
_WDTE_SWDTEN         .EQ  $3FBF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FDF  WDT enabled while running and disabled in Sleep
_WDTE_ON             .EQ  $3FFF  WDT enabled

_WDTCWS_WDTCWS125    .EQ  $38FF  12.5 percent window open time
_WDTCWS_WDTCWS25     .EQ  $39FF  25 percent window open time
_WDTCWS_WDTCWS375    .EQ  $3AFF  37.5 percent window open time
_WDTCWS_WDTCWS50     .EQ  $3BFF  50 percent window open time
_WDTCWS_WDTCWS625    .EQ  $3CFF  62.5 percent window open time
_WDTCWS_WDTCWS75     .EQ  $3DFF  75 percent window open time
_WDTCWS_WDTCWS100    .EQ  $3EFF  100 percent window open time (Legacy WDT) 
_WDTCWS_WDTCWSSW     .EQ  $3FFF  Software WDT window size control (WDTWS bits)

_WDTCCS_LFINTOSC     .EQ  $07FF  31.0 kHz LFINTOSC
_WDTCCS_MFINTOSC     .EQ  $0FFF  31.25 kHz HFINTOSC (MFINTOSC)
_WDTCCS_SWC          .EQ  $3FFF  Software control, controlled by WDTCS bits

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003


