;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12LF1612 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12LF1612 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
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
PIR1             .EQ  $0011
PIR2             .EQ  $0012
PIR3             .EQ  $0013
PIR4             .EQ  $0014
TMR0             .EQ  $0015
TMR1             .EQ  $0016
TMR1L            .EQ  $0016
TMR1H            .EQ  $0017
T1CON            .EQ  $0018
T1GCON           .EQ  $0019
T2TMR            .EQ  $001A
TMR2             .EQ  $001A
PR2              .EQ  $001B
T2PR             .EQ  $001B
T2CON            .EQ  $001C
T2HLT            .EQ  $001D
T2CLKCON         .EQ  $001E
T2RST            .EQ  $001F

;-----Bank1------------------
TRISA            .EQ  $008C
PIE1             .EQ  $0091
PIE2             .EQ  $0092
PIE3             .EQ  $0093
PIE4             .EQ  $0094
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
OSCTUNE          .EQ  $0098
OSCCON           .EQ  $0099
OSCSTAT          .EQ  $009A
ADRES            .EQ  $009B
ADRESL           .EQ  $009B
ADRESH           .EQ  $009C
ADCON0           .EQ  $009D
ADCON1           .EQ  $009E
ADCON2           .EQ  $009F

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


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR4IF           .EQ  $0001
TMR6IF           .EQ  $0002
C1IF             .EQ  $0005
C2IF             .EQ  $0006


;----- PIR3 Bits -----------------------------------------------------
ZCDIF            .EQ  $0004
CWGIF            .EQ  $0005


;----- PIR4 Bits -----------------------------------------------------
SMT1IF           .EQ  $0000
SMT1PRAIF        .EQ  $0001
SMT1PWAIF        .EQ  $0002
SMT2IF           .EQ  $0003
SMT2PRAIF        .EQ  $0004
SMT2PWAIF        .EQ  $0005
CRCIF            .EQ  $0006
SCANIF           .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001


;----- T2CON Bits -----------------------------------------------------
ON               .EQ  $0007

T2ON             .EQ  $0007

T2OUTPS0         .EQ  $0000
T2OUTPS1         .EQ  $0001
T2OUTPS2         .EQ  $0002
T2OUTPS3         .EQ  $0003
T2CKPS0          .EQ  $0004
T2CKPS1          .EQ  $0005
T2CKPS2          .EQ  $0006

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006
TMR2ON           .EQ  $0007


;----- T2HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

T2CKSYNC         .EQ  $0005
T2CKPOL          .EQ  $0006
T2PSYNC          .EQ  $0007

T2MODE0          .EQ  $0000
T2MODE1          .EQ  $0001
T2MODE2          .EQ  $0002
T2MODE3          .EQ  $0003


;----- T2CLKCON Bits -----------------------------------------------------
T2CS0            .EQ  $0000
T2CS1            .EQ  $0001
T2CS2            .EQ  $0002


;----- T2RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003


T2RSEL0          .EQ  $0000
T2RSEL1          .EQ  $0001
T2RSEL2          .EQ  $0002
T2RSEL3          .EQ  $0003


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR4IE           .EQ  $0001
TMR6IE           .EQ  $0002
C1IE             .EQ  $0005
C2IE             .EQ  $0006


;----- PIE3 Bits -----------------------------------------------------
ZCDIE            .EQ  $0004
CWGIE            .EQ  $0005


;----- PIE4 Bits -----------------------------------------------------
SMT1IE           .EQ  $0000
SMT1PRAIE        .EQ  $0001
SMT1PWAIE        .EQ  $0002
SMT2IE           .EQ  $0003
SMT2PRAIE        .EQ  $0004
SMT2PWAIE        .EQ  $0005
CRCIE            .EQ  $0006
SCANIE           .EQ  $0007


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002
T0SE             .EQ  $0004
T0CS             .EQ  $0005


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
NOT_RWDT         .EQ  $0004
NOT_WDTWV        .EQ  $0005
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007


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
PLLR             .EQ  $0006


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

ADGO             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO               .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


;----- ADCON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006
TRIGSEL3         .EQ  $0007


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA3            .EQ  $0003
LATA4            .EQ  $0004
LATA5            .EQ  $0005


;----- CM1CON0 Bits -----------------------------------------------------

C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT            .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002
C1PCH0           .EQ  $0004
C1PCH1           .EQ  $0005
C1INTN           .EQ  $0006
C1INTP           .EQ  $0007



;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
BORFS            .EQ  $0006
SBOREN           .EQ  $0007


;----- FVRCON Bits -----------------------------------------------------
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007

ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
CDAFVR0          .EQ  $0002
CDAFVR1          .EQ  $0003


;----- DAC1CON0 Bits -----------------------------------------------------
DAC1OE           .EQ  $0005
DAC1EN           .EQ  $0007

D1PSS0           .EQ  $0002
D1PSS1           .EQ  $0003


;----- DAC1CON1 Bits -----------------------------------------------------
DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004
DAC1R5           .EQ  $0005
DAC1R6           .EQ  $0006
DAC1R7           .EQ  $0007


;----- ZCD1CON Bits -----------------------------------------------------
ZCD1INTN         .EQ  $0000
ZCD1INTP         .EQ  $0001
ZCD1POL          .EQ  $0004
ZCD1OUT          .EQ  $0005
ZCD1OE           .EQ  $0006
ZCD1EN           .EQ  $0007


;----- APFCON Bits -----------------------------------------------------
CCP1SEL          .EQ  $0000
T1GSEL           .EQ  $0003
CWGBSEL          .EQ  $0005
CWGASEL          .EQ  $0006


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA4            .EQ  $0004



;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
CFGS             .EQ  $0006


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005



;----- ODCONA Bits -----------------------------------------------------
ODA0             .EQ  $0000
ODA1             .EQ  $0001
ODA2             .EQ  $0002
ODA4             .EQ  $0004
ODA5             .EQ  $0005


;----- CCP1CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT              .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP1FMT          .EQ  $0004
CCP1OUT          .EQ  $0005
CCP1OE           .EQ  $0006
CCP1EN           .EQ  $0007

CCP1MODE0        .EQ  $0000
CCP1MODE1        .EQ  $0001
CCP1MODE2        .EQ  $0002
CCP1MODE3        .EQ  $0003


;----- CCP1CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001


CCP1CTS0         .EQ  $0000
CCP1CTS1         .EQ  $0001


;----- CCP2CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT              .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP2FMT          .EQ  $0004
CCP2OUT          .EQ  $0005
CCP2OE           .EQ  $0006
CCP2EN           .EQ  $0007

CCP2MODE0        .EQ  $0000
CCP2MODE1        .EQ  $0001
CCP2MODE2        .EQ  $0002
CCP2MODE3        .EQ  $0003


;----- CCP2CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001


CCP2CTS0         .EQ  $0000
CCP2CTS1         .EQ  $0001


;----- CCPTMRS Bits -----------------------------------------------------
CCP1TSEL0        .EQ  $0000
CCP1TSEL1        .EQ  $0001
CCP2TSEL0        .EQ  $0002
CCP2TSEL1        .EQ  $0003


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  $0000
SLRA1            .EQ  $0001
SLRA2            .EQ  $0002
SLRA4            .EQ  $0004
SLRA5            .EQ  $0005


;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  $0000
INLVLA1          .EQ  $0001
INLVLA2          .EQ  $0002
INLVLA3          .EQ  $0003
INLVLA4          .EQ  $0004
INLVLA5          .EQ  $0005


;----- T4CON Bits -----------------------------------------------------
ON               .EQ  $0007

T4ON             .EQ  $0007

T4OUTPS0         .EQ  $0000
T4OUTPS1         .EQ  $0001
T4OUTPS2         .EQ  $0002
T4OUTPS3         .EQ  $0003
T4CKPS0          .EQ  $0004
T4CKPS1          .EQ  $0005
T4CKPS2          .EQ  $0006

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006
TMR4ON           .EQ  $0007


;----- T4HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

T4CKSYNC         .EQ  $0005
T4CKPOL          .EQ  $0006
T4PSYNC          .EQ  $0007

T4MODE0          .EQ  $0000
T4MODE1          .EQ  $0001
T4MODE2          .EQ  $0002
T4MODE3          .EQ  $0003


;----- T4CLKCON Bits -----------------------------------------------------
T4CS0            .EQ  $0000
T4CS1            .EQ  $0001
T4CS2            .EQ  $0002


;----- T4RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003


T4RSEL0          .EQ  $0000
T4RSEL1          .EQ  $0001
T4RSEL2          .EQ  $0002
T4RSEL3          .EQ  $0003


;----- T6CON Bits -----------------------------------------------------
ON               .EQ  $0007

T6ON             .EQ  $0007

T6OUTPS0         .EQ  $0000
T6OUTPS1         .EQ  $0001
T6OUTPS2         .EQ  $0002
T6OUTPS3         .EQ  $0003
T6CKPS0          .EQ  $0004
T6CKPS1          .EQ  $0005
T6CKPS2          .EQ  $0006

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006
TMR6ON           .EQ  $0007


;----- T6HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

T6CKSYNC         .EQ  $0005
T6CKPOL          .EQ  $0006
T6PSYNC          .EQ  $0007

T6MODE0          .EQ  $0000
T6MODE1          .EQ  $0001
T6MODE2          .EQ  $0002
T6MODE3          .EQ  $0003


;----- T6CLKCON Bits -----------------------------------------------------
T6CS0            .EQ  $0000
T6CS1            .EQ  $0001
T6CS2            .EQ  $0002


;----- T6RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003


T6RSEL0          .EQ  $0000
T6RSEL1          .EQ  $0001
T6RSEL2          .EQ  $0002
T6RSEL3          .EQ  $0003


;----- CWG1DBR Bits -----------------------------------------------------
DBR0             .EQ  $0000
DBR1             .EQ  $0001
DBR2             .EQ  $0002
DBR3             .EQ  $0003
DBR4             .EQ  $0004
DBR5             .EQ  $0005


CWG1DBR0         .EQ  $0000
CWG1DBR1         .EQ  $0001
CWG1DBR2         .EQ  $0002
CWG1DBR3         .EQ  $0003
CWG1DBR4         .EQ  $0004
CWG1DBR5         .EQ  $0005


;----- CWG1DBF Bits -----------------------------------------------------
DBF0             .EQ  $0000
DBF1             .EQ  $0001
DBF2             .EQ  $0002
DBF3             .EQ  $0003
DBF4             .EQ  $0004
DBF5             .EQ  $0005


CWG1DBF0         .EQ  $0000
CWG1DBF1         .EQ  $0001
CWG1DBF2         .EQ  $0002
CWG1DBF3         .EQ  $0003
CWG1DBF4         .EQ  $0004
CWG1DBF5         .EQ  $0005


;----- CWG1AS0 Bits -----------------------------------------------------
REN              .EQ  $0006
SHUTDOWN         .EQ  $0007

LSAC0            .EQ  $0002
LSAC1            .EQ  $0003
LSBD0            .EQ  $0004
LSBD1            .EQ  $0005

CWG1REN          .EQ  $0006
CWG1SHUTDOWN     .EQ  $0007

CWG1LSAC0        .EQ  $0002
CWG1LSAC1        .EQ  $0003
CWG1LSBD0        .EQ  $0004
CWG1LSBD1        .EQ  $0005


;----- CWG1AS1 Bits -----------------------------------------------------
INAS             .EQ  $0000
C1AS             .EQ  $0001
C2AS             .EQ  $0002
TMR2AS           .EQ  $0004
TMR4AS           .EQ  $0005
TMR6AS           .EQ  $0006

CWG1INAS         .EQ  $0000
CWG1C1AS         .EQ  $0001
CWG1C2AS         .EQ  $0002
CWG1TMR2AS       .EQ  $0004
CWG1TMR4AS       .EQ  $0005
CWG1TMR6AS       .EQ  $0006


;----- CWG1OCON0 Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
OVRA             .EQ  $0004
OVRB             .EQ  $0005
OVRC             .EQ  $0006
OVRD             .EQ  $0007

CWG1STRA         .EQ  $0000
CWG1STRB         .EQ  $0001
CWG1STRC         .EQ  $0002
CWG1STRD         .EQ  $0003
CWG1OVRA         .EQ  $0004
CWG1OVRB         .EQ  $0005
CWG1OVRC         .EQ  $0006
CWG1OVRD         .EQ  $0007


;----- CWG1CON0 Bits -----------------------------------------------------
LD               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
G1EN             .EQ  $0007

CWG1LD           .EQ  $0006
CWG1EN           .EQ  $0007

CWG1MODE0        .EQ  $0000
CWG1MODE1        .EQ  $0001
CWG1MODE2        .EQ  $0002


;----- CWG1CON1 Bits -----------------------------------------------------
POLA             .EQ  $0000
POLB             .EQ  $0001
POLC             .EQ  $0002
POLD             .EQ  $0003
IN               .EQ  $0005

CWG1POLA         .EQ  $0000
CWG1POLB         .EQ  $0001
CWG1POLC         .EQ  $0002
CWG1POLD         .EQ  $0003
CWG1IN           .EQ  $0005


;----- CWG1OCON1 Bits -----------------------------------------------------
OEA              .EQ  $0000
OEB              .EQ  $0001
OEC              .EQ  $0002
OED              .EQ  $0003

CWG1OEA          .EQ  $0000
CWG1OEB          .EQ  $0001
CWG1OEC          .EQ  $0002
CWG1OED          .EQ  $0003


;----- CWG1CLKCON Bits -----------------------------------------------------
CS               .EQ  $0000

CWG1CS           .EQ  $0000


;----- CWG1ISM Bits -----------------------------------------------------
IS0              .EQ  $0000
IS1              .EQ  $0001
IS2              .EQ  $0002


CWG1IS0          .EQ  $0000
CWG1IS1          .EQ  $0001
CWG1IS2          .EQ  $0002


;----- WDTCON0 Bits -----------------------------------------------------
SEN              .EQ  $0000

SWDTEN           .EQ  $0000

WDTSEN           .EQ  $0000

WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004
WDTPS4           .EQ  $0005


;----- WDTCON1 Bits -----------------------------------------------------
WINDOW0          .EQ  $0000
WINDOW1          .EQ  $0001
WINDOW2          .EQ  $0002


WDTWINDOW0       .EQ  $0000
WDTWINDOW1       .EQ  $0001
WDTWINDOW2       .EQ  $0002
WDTCS0           .EQ  $0004
WDTCS1           .EQ  $0005
WDTCS2           .EQ  $0006


;----- WDTPSL Bits -----------------------------------------------------
PSCNT0           .EQ  $0000
PSCNT1           .EQ  $0001
PSCNT2           .EQ  $0002
PSCNT3           .EQ  $0003
PSCNT4           .EQ  $0004
PSCNT5           .EQ  $0005
PSCNT6           .EQ  $0006
PSCNT7           .EQ  $0007


WDTPSCNT0        .EQ  $0000
WDTPSCNT1        .EQ  $0001
WDTPSCNT2        .EQ  $0002
WDTPSCNT3        .EQ  $0003
WDTPSCNT4        .EQ  $0004
WDTPSCNT5        .EQ  $0005
WDTPSCNT6        .EQ  $0006
WDTPSCNT7        .EQ  $0007


;----- WDTPSH Bits -----------------------------------------------------
PSCNT8           .EQ  $0000
PSCNT9           .EQ  $0001
PSCNT10          .EQ  $0002
PSCNT11          .EQ  $0003
PSCNT12          .EQ  $0004
PSCNT13          .EQ  $0005
PSCNT14          .EQ  $0006
PSCNT15          .EQ  $0007


WDTPSCNT8        .EQ  $0000
WDTPSCNT9        .EQ  $0001
WDTPSCNT10       .EQ  $0002
WDTPSCNT11       .EQ  $0003
WDTPSCNT12       .EQ  $0004
WDTPSCNT13       .EQ  $0005
WDTPSCNT14       .EQ  $0006
WDTPSCNT15       .EQ  $0007


;----- WDTTMR Bits -----------------------------------------------------
PSCNT16          .EQ  $0000
PSCNT17          .EQ  $0001
STATE            .EQ  $0002

WDTPSCNT16       .EQ  $0000
WDTPSCNT17       .EQ  $0001
WDTSTATE         .EQ  $0002
WDTTMR0          .EQ  $0003
WDTTMR1          .EQ  $0004
WDTTMR2          .EQ  $0005
WDTTMR3          .EQ  $0006
WDTTMR4          .EQ  $0007


;----- SCANLADRL Bits -----------------------------------------------------
LDAR0            .EQ  $0000
LDAR1            .EQ  $0001
LADR2            .EQ  $0002
LADR3            .EQ  $0003
LADR4            .EQ  $0004
LADR5            .EQ  $0005
LADR6            .EQ  $0006
LADR7            .EQ  $0007


SCANLADR0        .EQ  $0000
SCANLADR1        .EQ  $0001
SCANLADR2        .EQ  $0002
SCANLADR3        .EQ  $0003
SCANLADR4        .EQ  $0004
SCANLADR5        .EQ  $0005
SCANLADR6        .EQ  $0006
SCANLADR7        .EQ  $0007


;----- SCANLADRH Bits -----------------------------------------------------
LADR8            .EQ  $0000
LADR9            .EQ  $0001
LADR10           .EQ  $0002
LADR11           .EQ  $0003
LADR12           .EQ  $0004
LADR13           .EQ  $0005
LADR14           .EQ  $0006
LADR15           .EQ  $0007


SCANLADR8        .EQ  $0000
SCANLADR9        .EQ  $0001
SCANLADR10       .EQ  $0002
SCANLADR11       .EQ  $0003
SCANLADR12       .EQ  $0004
SCANLADR13       .EQ  $0005
SCANLADR14       .EQ  $0006
SCANLADR15       .EQ  $0007


;----- SCANHADRL Bits -----------------------------------------------------
HADR0            .EQ  $0000
HADR1            .EQ  $0001
HARD2            .EQ  $0002
HADR3            .EQ  $0003
HADR4            .EQ  $0004
HADR5            .EQ  $0005
HADR6            .EQ  $0006
HADR7            .EQ  $0007


SCANHADR0        .EQ  $0000
SCANHADR1        .EQ  $0001
SCANHADR2        .EQ  $0002
SCANHADR3        .EQ  $0003
SCANHADR4        .EQ  $0004
SCANHADR5        .EQ  $0005
SCANHADR6        .EQ  $0006
SCANHADR7        .EQ  $0007


;----- SCANHADRH Bits -----------------------------------------------------
HADR8            .EQ  $0000
HADR9            .EQ  $0001
HADR10           .EQ  $0002
HADR11           .EQ  $0003
HADR12           .EQ  $0004
HADR13           .EQ  $0005
HADR14           .EQ  $0006
HADR15           .EQ  $0007


SCANHADR8        .EQ  $0000
SCANHADR9        .EQ  $0001
SCANHADR10       .EQ  $0002
SCANHADR11       .EQ  $0003
SCANHADR12       .EQ  $0004
SCANHADR13       .EQ  $0005
SCANHADR14       .EQ  $0006
SCANHADR15       .EQ  $0007


;----- SCANCON0 Bits -----------------------------------------------------
INTM             .EQ  $0003
INVALID          .EQ  $0004
BUSY             .EQ  $0005
SCANGO           .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001

SCANINTM         .EQ  $0003
SCANINVALID      .EQ  $0004
SCANBUSY         .EQ  $0005
SCANEN           .EQ  $0007

SCANMODE0        .EQ  $0000
SCANMODE1        .EQ  $0001


;----- SCANTRIG Bits -----------------------------------------------------
TSEL0            .EQ  $0000
TSEL1            .EQ  $0001


SCANTSEL0        .EQ  $0000
SCANTSEL1        .EQ  $0001


;----- CRCDATL Bits -----------------------------------------------------
DAT0             .EQ  $0000
DAT1             .EQ  $0001
DAT2             .EQ  $0002
DAT3             .EQ  $0003
DAT4             .EQ  $0004
DAT5             .EQ  $0005
DAT6             .EQ  $0006
DAT7             .EQ  $0007


CRCDAT0          .EQ  $0000
CRCDAT1          .EQ  $0001
CRCDAT2          .EQ  $0002
CRCDAT3          .EQ  $0003
CRCDAT4          .EQ  $0004
CRCDAT5          .EQ  $0005
CRCDAT6          .EQ  $0006
CRDCDAT7         .EQ  $0007


;----- CRCDATH Bits -----------------------------------------------------
DAT8             .EQ  $0000
DAT9             .EQ  $0001
DAT10            .EQ  $0002
DAT11            .EQ  $0003
DAT12            .EQ  $0004
DAT13            .EQ  $0005
DAT14            .EQ  $0006
DAT15            .EQ  $0007


CRCDAT8          .EQ  $0000
CRCDAT9          .EQ  $0001
CRCDAT10         .EQ  $0002
CRCDAT11         .EQ  $0003
CRCDAT12         .EQ  $0004
CRCDAT13         .EQ  $0005
CRCDAT14         .EQ  $0006
CRCDAT15         .EQ  $0007


;----- CRCACCL Bits -----------------------------------------------------
ACC0             .EQ  $0000
ACC1             .EQ  $0001
ACC2             .EQ  $0002
ACC3             .EQ  $0003
ACC4             .EQ  $0004
ACC5             .EQ  $0005
ACC6             .EQ  $0006
ACC7             .EQ  $0007


CRCACC0          .EQ  $0000
CRCACC1          .EQ  $0001
CRCACC2          .EQ  $0002
CRCACC3          .EQ  $0003
CRCACC4          .EQ  $0004
CRCACC5          .EQ  $0005
CRCACC6          .EQ  $0006
CRCACC7          .EQ  $0007


;----- CRCACCH Bits -----------------------------------------------------
ACC8             .EQ  $0000
ACC9             .EQ  $0001
ACC10            .EQ  $0002
ACC11            .EQ  $0003
ACC12            .EQ  $0004
ACC13            .EQ  $0005
ACC14            .EQ  $0006
ACC15            .EQ  $0007


CRCACC8          .EQ  $0000
CRCACC9          .EQ  $0001
CRCACC10         .EQ  $0002
CRCACC11         .EQ  $0003
CRCACC12         .EQ  $0004
CRCACC13         .EQ  $0005
CRCACC14         .EQ  $0006
CRCACC15         .EQ  $0007


;----- CRCSHIFTL Bits -----------------------------------------------------
SHIFT0           .EQ  $0000
SHIFT1           .EQ  $0001
SHIFT2           .EQ  $0002
SHIFT3           .EQ  $0003
SHIFT4           .EQ  $0004
SHIFT5           .EQ  $0005
SHIFT6           .EQ  $0006
SHIFT7           .EQ  $0007


CRCSHIFT0        .EQ  $0000
CRCSHIFT1        .EQ  $0001
CRCSHIFT2        .EQ  $0002
CRCSHIFT3        .EQ  $0003
CRCSHIFT4        .EQ  $0004
CRCSHIFT5        .EQ  $0005
CRCSHIFT6        .EQ  $0006
CRCSHIFT7        .EQ  $0007


;----- CRCSHIFTH Bits -----------------------------------------------------
SHIFT8           .EQ  $0000
SHIFT9           .EQ  $0001
SHIFT10          .EQ  $0002
SHIFT11          .EQ  $0003
SHIFT12          .EQ  $0004
SHIFT13          .EQ  $0005
SHIFT14          .EQ  $0006
SHIFT15          .EQ  $0007


CRCSHIFT8        .EQ  $0000
CRCSHIFT9        .EQ  $0001
CRCSHIFT10       .EQ  $0002
CRCSHIFT11       .EQ  $0003
CRCSHIFT12       .EQ  $0004
CRCSHIFT13       .EQ  $0005
CRCSHIFT14       .EQ  $0006
CRCSHIFT15       .EQ  $0007


;----- CRCXORL Bits -----------------------------------------------------
XOR1             .EQ  $0001
XOR2             .EQ  $0002
XOR3             .EQ  $0003
XOR4             .EQ  $0004
XOR5             .EQ  $0005
XOR6             .EQ  $0006
XOR7             .EQ  $0007

CRCXOR1          .EQ  $0001
CRCXOR2          .EQ  $0002
CRCXOR3          .EQ  $0003
CRCXOR4          .EQ  $0004
CRCXOR5          .EQ  $0005
CRCXOR6          .EQ  $0006
CRCXOR7          .EQ  $0007


;----- CRCXORH Bits -----------------------------------------------------
XOR8             .EQ  $0000
XOR9             .EQ  $0001
XOR10            .EQ  $0002
XOR11            .EQ  $0003
XOR12            .EQ  $0004
XOR13            .EQ  $0005
XOR14            .EQ  $0006
XOR15            .EQ  $0007

CRCXOR8          .EQ  $0000
CRCXOR9          .EQ  $0001
CRCXOR10         .EQ  $0002
CRCXOR11         .EQ  $0003
CRCXOR12         .EQ  $0004
CRCXOR13         .EQ  $0005
CRCXOR14         .EQ  $0006
CRCXOR15         .EQ  $0007


;----- CRCCON0 Bits -----------------------------------------------------
FULL             .EQ  $0000
SHIFTM           .EQ  $0001
ACCM             .EQ  $0004
BUSY             .EQ  $0005
CRCGO            .EQ  $0006
EN               .EQ  $0007

CRCFULL          .EQ  $0000
CRCSHIFTM        .EQ  $0001
CRCACCM          .EQ  $0004
CRCBUSY          .EQ  $0005
CRCEN            .EQ  $0007


;----- CRCCON1 Bits -----------------------------------------------------
PLEN0            .EQ  $0000
PLEN1            .EQ  $0001
PLEN2            .EQ  $0002
PLEN3            .EQ  $0003
DLEN0            .EQ  $0004
DLEN1            .EQ  $0005
DLEN2            .EQ  $0006
DLEN3            .EQ  $0007


CRCPLEN0         .EQ  $0000
CRCPLEN1         .EQ  $0001
CRCPLEN2         .EQ  $0002
CRCPLEN3         .EQ  $0003
CRCDLEN0         .EQ  $0004
CRCDLEN1         .EQ  $0005
CRCDLEN2         .EQ  $0006
CRCDLEN3         .EQ  $0007


;----- SMT1TMRL Bits -----------------------------------------------------
SMT1TMR0         .EQ  $0000
SMT1TMR1         .EQ  $0001
SMT1TMR2         .EQ  $0002
SMT1TMR3         .EQ  $0003
SMT1TMR4         .EQ  $0004
SMT1TMR5         .EQ  $0005
SMT1TMR6         .EQ  $0006
SMT1TMR7         .EQ  $0007


;----- SMT1TMRH Bits -----------------------------------------------------
SMT1TMR8         .EQ  $0000
SMT1TMR9         .EQ  $0001
SMT1TMR10        .EQ  $0002
SMT1TMR11        .EQ  $0003
SMT1TMR12        .EQ  $0004
SMT1TMR13        .EQ  $0005
SMT1TMR14        .EQ  $0006
SMT1TMR15        .EQ  $0007


;----- SMT1TMRU Bits -----------------------------------------------------
SMT1TMR16        .EQ  $0000
SMT1TMR17        .EQ  $0001
SMT1TMR18        .EQ  $0002
SMT1TMR19        .EQ  $0003
SMT1TMR20        .EQ  $0004
SMT1TMR21        .EQ  $0005
SMT1TMR22        .EQ  $0006
SMT1TMR23        .EQ  $0007


;----- SMT1CPRL Bits -----------------------------------------------------
SMT1CPR0         .EQ  $0000
SMT1CPR1         .EQ  $0001
SMT1CPR2         .EQ  $0002
SMT1CPR3         .EQ  $0003
SMT1CPR4         .EQ  $0004
SMT1CPR5         .EQ  $0005
SMT1CPR6         .EQ  $0006
SMT1CPR7         .EQ  $0007


;----- SMT1CPRH Bits -----------------------------------------------------
SMT1CPR8         .EQ  $0000
SMT1CPR9         .EQ  $0001
SMT1CPR10        .EQ  $0002
SMT1CPR11        .EQ  $0003
SMT1CPR12        .EQ  $0004
SMT1CPR13        .EQ  $0005
SMT1CPR14        .EQ  $0006
SMT1CPR15        .EQ  $0007


;----- SMT1CPRU Bits -----------------------------------------------------
SMT1CPR16        .EQ  $0000
SMT1CPR17        .EQ  $0001
SMT1CPR18        .EQ  $0002
SMT1CPR19        .EQ  $0003
SMT1CPR20        .EQ  $0004
SMT1CPR21        .EQ  $0005
SMT1CPR22        .EQ  $0006
SMT1CPR23        .EQ  $0007


;----- SMT1CPWL Bits -----------------------------------------------------
SMT1CPW0         .EQ  $0000
SMT1CPW1         .EQ  $0001
SMT1CPW2         .EQ  $0002
SMT1CPW3         .EQ  $0003
SMT1CPW4         .EQ  $0004
SMT1CPW5         .EQ  $0005
SMT1CPW6         .EQ  $0006
SMT1CPW7         .EQ  $0007


;----- SMT1CPWH Bits -----------------------------------------------------
SMT1CPW8         .EQ  $0000
SMT1CPW9         .EQ  $0001
SMT1CPW10        .EQ  $0002
SMT1CPW11        .EQ  $0003
SMT1CPW12        .EQ  $0004
SMT1CPW13        .EQ  $0005
SMT1CPW14        .EQ  $0006
SMT1CPW15        .EQ  $0007


;----- SMT1CPWU Bits -----------------------------------------------------
SMT1CPW16        .EQ  $0000
SMT1CPW17        .EQ  $0001
SMT1CPW18        .EQ  $0002
SMT1CPW19        .EQ  $0003
SMT1CPW20        .EQ  $0004
SMT1CPW21        .EQ  $0005
SMT1CPW22        .EQ  $0006
SMT1CPW23        .EQ  $0007


;----- SMT1PRL Bits -----------------------------------------------------
SMT1PR0          .EQ  $0000
SMT1PR1          .EQ  $0001
SMT1PR2          .EQ  $0002
SMT1PR3          .EQ  $0003
SMT1PR4          .EQ  $0004
SMT1PR5          .EQ  $0005
SMT1PR6          .EQ  $0006
SMT1PR7          .EQ  $0007


;----- SMT1PRH Bits -----------------------------------------------------
SMT1PR8          .EQ  $0000
SMT1PR9          .EQ  $0001
SMT1PR10         .EQ  $0002
SMT1PR11         .EQ  $0003
SMT1PR12         .EQ  $0004
SMT1PR13         .EQ  $0005
SMT1PR14         .EQ  $0006
SMT1PR15         .EQ  $0007


;----- SMT1PRU Bits -----------------------------------------------------
SMT1PR16         .EQ  $0000
SMT1PR17         .EQ  $0001
SMT1PR18         .EQ  $0002
SMT1PR19         .EQ  $0003
SMT1PR20         .EQ  $0004
SMT1PR21         .EQ  $0005
SMT1PR22         .EQ  $0006
SMT1PR23         .EQ  $0007


;----- SMT1CON0 Bits -----------------------------------------------------
CPOL             .EQ  $0002
SPOL             .EQ  $0003
WPOL             .EQ  $0004
STP              .EQ  $0005
EN               .EQ  $0007

SMT1PS0          .EQ  $0000
SMT1PS1          .EQ  $0001


;----- SMT1CON1 Bits -----------------------------------------------------
REPEAT           .EQ  $0006
SMT1GO           .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

SMT1REPEAT       .EQ  $0006

SMT1MODE0        .EQ  $0000
SMT1MODE1        .EQ  $0001
SMT1MODE2        .EQ  $0002
SMT1MODE3        .EQ  $0003


;----- SMT1STAT Bits -----------------------------------------------------
AS               .EQ  $0000
WS               .EQ  $0001
TS               .EQ  $0002
RST              .EQ  $0005
CPWUP            .EQ  $0006
CPRUP            .EQ  $0007

SMT1AS           .EQ  $0000
SMT1WS           .EQ  $0001
SMT1TS           .EQ  $0002
SMT1RESET        .EQ  $0005
SMT1CPWUP        .EQ  $0006
SMT1CPRUP        .EQ  $0007


;----- SMT1CLK Bits -----------------------------------------------------
CSEL0            .EQ  $0000
CSEL1            .EQ  $0001
CSEL2            .EQ  $0002


SMT1CSEL0        .EQ  $0000
SMT1CSEL1        .EQ  $0001
SMT1CSEL2        .EQ  $0002


;----- SMT1SIG Bits -----------------------------------------------------
SSEL0            .EQ  $0000
SSEL1            .EQ  $0001
SSEL2            .EQ  $0002


SMT1SSEL0        .EQ  $0000
SMT1SSEL1        .EQ  $0001
SMT1SSEL2        .EQ  $0002


;----- SMT1WIN Bits -----------------------------------------------------
WSEL0            .EQ  $0000
WSEL1            .EQ  $0001
WSEL2            .EQ  $0002
WSEL3            .EQ  $0003


SMT1WSEL0        .EQ  $0000
SMT1WSEL1        .EQ  $0001
SMT1WSEL2        .EQ  $0002
SMT1WSEL3        .EQ  $0003


;----- SMT2TMRL Bits -----------------------------------------------------
SMT2TMR0         .EQ  $0000
SMT2TMR1         .EQ  $0001
SMT2TMR2         .EQ  $0002
SMT2TMR3         .EQ  $0003
SMT2TMR4         .EQ  $0004
SMT2TMR5         .EQ  $0005
SMT2TMR6         .EQ  $0006
SMT2TMR7         .EQ  $0007


;----- SMT2TMRH Bits -----------------------------------------------------
SMT2TMR8         .EQ  $0000
SMT2TMR9         .EQ  $0001
SMT2TMR10        .EQ  $0002
SMT2TMR11        .EQ  $0003
SMT2TMR12        .EQ  $0004
SMT2TMR13        .EQ  $0005
SMT2TMR14        .EQ  $0006
SMT2TMR15        .EQ  $0007


;----- SMT2TMRU Bits -----------------------------------------------------
SMT2TMR16        .EQ  $0000
SMT2TMR17        .EQ  $0001
SMT2TMR18        .EQ  $0002
SMT2TMR19        .EQ  $0003
SMT2TMR20        .EQ  $0004
SMT2TMR21        .EQ  $0005
SMT2TMR22        .EQ  $0006
SMT2TMR23        .EQ  $0007


;----- SMT2CPRL Bits -----------------------------------------------------
SMT2CPR0         .EQ  $0000
SMT2CPR1         .EQ  $0001
SMT2CPR2         .EQ  $0002
SMT2CPR3         .EQ  $0003
SMT2CPR4         .EQ  $0004
SMT2CPR5         .EQ  $0005
SMT2CPR6         .EQ  $0006
SMT2CPR7         .EQ  $0007


;----- SMT2CPRH Bits -----------------------------------------------------
SMT2CPR8         .EQ  $0000
SMT2CPR9         .EQ  $0001
SMT2CPR10        .EQ  $0002
SMT2CPR11        .EQ  $0003
SMT2CPR12        .EQ  $0004
SMT2CPR13        .EQ  $0005
SMT2CPR14        .EQ  $0006
SMT2CPR15        .EQ  $0007


;----- SMT2CPRU Bits -----------------------------------------------------
SMT2CPR16        .EQ  $0000
SMT2CPR17        .EQ  $0001
SMT2CPR18        .EQ  $0002
SMT2CPR19        .EQ  $0003
SMT2CPR20        .EQ  $0004
SMT2CPR21        .EQ  $0005
SMT2CPR22        .EQ  $0006
SMT2CPR23        .EQ  $0007


;----- SMT2CPWL Bits -----------------------------------------------------
SMT2CPW0         .EQ  $0000
SMT2CPW1         .EQ  $0001
SMT2CPW2         .EQ  $0002
SMT2CPW3         .EQ  $0003
SMT2CPW4         .EQ  $0004
SMT2CPW5         .EQ  $0005
SMT2CPW6         .EQ  $0006
SMT2CPW7         .EQ  $0007


;----- SMT2CPWH Bits -----------------------------------------------------
SMT2CPW8         .EQ  $0000
SMT2CPW9         .EQ  $0001
SMT2CPW10        .EQ  $0002
SMT2CPW11        .EQ  $0003
SMT2CPW12        .EQ  $0004
SMT2CPW13        .EQ  $0005
SMT2CPW14        .EQ  $0006
SMT2CPW15        .EQ  $0007


;----- SMT2CPWU Bits -----------------------------------------------------
SMT2CPW16        .EQ  $0000
SMT2CPW17        .EQ  $0001
SMT2CPW18        .EQ  $0002
SMT2CPW19        .EQ  $0003
SMT2CPW20        .EQ  $0004
SMT2CPW21        .EQ  $0005
SMT2CPW22        .EQ  $0006
SMT2CPW23        .EQ  $0007


;----- SMT2PRL Bits -----------------------------------------------------
SMT2PR0          .EQ  $0000
SMT2PR1          .EQ  $0001
SMT2PR2          .EQ  $0002
SMT2PR3          .EQ  $0003
SMT2PR4          .EQ  $0004
SMT2PR5          .EQ  $0005
SMT2PR6          .EQ  $0006
SMT2PR7          .EQ  $0007


;----- SMT2PRH Bits -----------------------------------------------------
SMT2PR8          .EQ  $0000
SMT2PR9          .EQ  $0001
SMT2PR10         .EQ  $0002
SMT2PR11         .EQ  $0003
SMT2PR12         .EQ  $0004
SMT2PR13         .EQ  $0005
SMT2PR14         .EQ  $0006
SMT2PR15         .EQ  $0007


;----- SMT2PRU Bits -----------------------------------------------------
SMT2PR16         .EQ  $0000
SMT2PR17         .EQ  $0001
SMT2PR18         .EQ  $0002
SMT2PR19         .EQ  $0003
SMT2PR20         .EQ  $0004
SMT2PR21         .EQ  $0005
SMT2PR22         .EQ  $0006
SMT2PR23         .EQ  $0007


;----- SMT2CON0 Bits -----------------------------------------------------
CPOL             .EQ  $0002
SPOL             .EQ  $0003
WPOL             .EQ  $0004
STP              .EQ  $0005
EN               .EQ  $0007

SMT2PS0          .EQ  $0000
SMT2PS1          .EQ  $0001


;----- SMT2CON1 Bits -----------------------------------------------------
REPEAT           .EQ  $0006
SMT2GO           .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

SMT2REPEAT       .EQ  $0006

SMT2MODE0        .EQ  $0000
SMT2MODE1        .EQ  $0001
SMT2MODE2        .EQ  $0002
SMT2MODE3        .EQ  $0003


;----- SMT2STAT Bits -----------------------------------------------------
AS               .EQ  $0000
WS               .EQ  $0001
TS               .EQ  $0002
RST              .EQ  $0005
CPWUP            .EQ  $0006
CPRUP            .EQ  $0007

SMT2AS           .EQ  $0000
SMT2WS           .EQ  $0001
SMT2TS           .EQ  $0002
SMT2RESET        .EQ  $0005
SMT2CPWUP        .EQ  $0006
SMT2CPRUP        .EQ  $0007


;----- SMT2CLK Bits -----------------------------------------------------
CSEL0            .EQ  $0000
CSEL1            .EQ  $0001
CSEL2            .EQ  $0002
CSEL3            .EQ  $0003
CSEL4            .EQ  $0004
CSEL5            .EQ  $0005
CSEL6            .EQ  $0006
CSEL7            .EQ  $0007


SMT2CSEL0        .EQ  $0000
SMT2CSEL1        .EQ  $0001
SMT2CSEL2        .EQ  $0002
SMT2CSEL3        .EQ  $0003
SMT2CSEL4        .EQ  $0004
SMT2CSEL5        .EQ  $0005
SMT2CSEL6        .EQ  $0006
SMT2CSEL7        .EQ  $0007


;----- SMT2SIG Bits -----------------------------------------------------
SSEL0            .EQ  $0000
SSEL1            .EQ  $0001
SSEL2            .EQ  $0002
SSEL3            .EQ  $0003
SSEL4            .EQ  $0004
SSEL5            .EQ  $0005
SSEL6            .EQ  $0006
SSEL7            .EQ  $0007


SMT2SSEL0        .EQ  $0000
SMT2SSEL1        .EQ  $0001
SMT2SSEL2        .EQ  $0002
SMT2SSEL3        .EQ  $0003
SMT2SSEL4        .EQ  $0004
SMT2SSEL5        .EQ  $0005
SMT2SSEL6        .EQ  $0006
SMT2SSEL7        .EQ  $0007


;----- SMT2WIN Bits -----------------------------------------------------
WSEL0            .EQ  $0000
WSEL1            .EQ  $0001
WSEL2            .EQ  $0002
WSEL3            .EQ  $0003
WSEL4            .EQ  $0004
WSEL5            .EQ  $0005
WSEL6            .EQ  $0006
WSEL7            .EQ  $0007


SMT2WSEL0        .EQ  $0000
SMT2WSEL1        .EQ  $0001
SMT2WSEL2        .EQ  $0002
SMT2WSEL3        .EQ  $0003
SMT2WSEL4        .EQ  $0004
SMT2WSEL5        .EQ  $0005
SMT2WSEL6        .EQ  $0006
SMT2WSEL7        .EQ  $0007


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
;   CONFIG3           8009h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008
_CONFIG3        .EQ  $8009

;----- CONFIG1 Options --------------------------------------------------
_FOSC_INTOSC         .EQ  $3FFC INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pins
_FOSC_ECM            .EQ  $3FFE ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pins
_FOSC_ECH            .EQ  $3FFF ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pins

_PWRTE_ON            .EQ  $3FDF PWRT enabled
_PWRTE_OFF           .EQ  $3FFF PWRT disabled

_MCLRE_OFF           .EQ  $3FBF MCLR/VPP pin function is digital input
_MCLRE_ON            .EQ  $3FFF MCLR/VPP pin function is MCLR

_CP_ON               .EQ  $3F7F Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF Program memory code protection is disabled

_BOREN_OFF           .EQ  $39FF Brown-out Reset disabled
_BOREN_SBODEN        .EQ  $3BFF Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF Brown-out Reset enabled while running and disabled in Sleep
_BOREN_ON            .EQ  $3FFF Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC 000h to 1FFFh write protected, no addresses may be modified by EECON control
_WRT_HALF            .EQ  $3FFD 000h to FFFh write protected, 1000h to 1FFFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE 000h to 1FFh write protected, 200h to 1FFFh may be modified by EECON control
_WRT_OFF             .EQ  $3FFF Write protection off

_ZCD_ON              .EQ  $3F7F ZCD always enabled
_ZCD_OFF             .EQ  $3FFF ZCD disable.  ZCD can be enabled by setting the ZCDSEN bit of ZCDCON

_PLLEN_OFF           .EQ  $3EFF 4x PLL is enabled when software sets the SPLLEN bit
_PLLEN_ON            .EQ  $3FFF 4x PLL is always enabled

_STVREN_OFF          .EQ  $3DFF Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF Brown-out Reset Voltage (Vbor), high trip point selected.
_BORV_LO             .EQ  $3FFF Brown-out Reset Voltage (Vbor), low trip point selected.

_LPBOR_ON            .EQ  $37FF Low-Power BOR is enabled
_LPBOR_OFF           .EQ  $3FFF Low-Power BOR is disabled

_LVP_OFF             .EQ  $1FFF High-voltage on MCLR/VPP must be used for programming
_LVP_ON              .EQ  $3FFF Low-voltage programming enabled

;----- CONFIG3 Options --------------------------------------------------
_WDTCPS_WDTCPS0      .EQ  $3FE0 1:32 (1 ms period)
_WDTCPS_WDTCPS1      .EQ  $3FE1 1:64 (2 ms period)
_WDTCPS_WDTCPS2      .EQ  $3FE2 1:128 (4 ms period)
_WDTCPS_WDTCPS3      .EQ  $3FE3 1:256 (8 ms period)
_WDTCPS_WDTCPS4      .EQ  $3FE4 1:512 (16 ms period)
_WDTCPS_WDTCPS5      .EQ  $3FE5 1:1024 (32 ms period)
_WDTCPS_WDTCPS6      .EQ  $3FE6 1:2048 (64 ms period)
_WDTCPS_WDTCPS7      .EQ  $3FE7 1:4096 (128 ms period)
_WDTCPS_WDTCPS8      .EQ  $3FE8 1:8192 (256 ms period)
_WDTCPS_WDTCPS9      .EQ  $3FE9 1:16384 (512 ms period)
_WDTCPS_WDTCPSA      .EQ  $3FEA 1:32768 (1 s period)
_WDTCPS_WDTCPSB      .EQ  $3FEB 1:65536 (2 s period)
_WDTCPS_WDTCPSC      .EQ  $3FEC 1:131072 (4 s period)
_WDTCPS_WDTCPSD      .EQ  $3FED 1:262144 (8 s period)
_WDTCPS_WDTCPSE      .EQ  $3FEE 1:524299 (16 s period)
_WDTCPS_WDTCPSF      .EQ  $3FEF 1:1048576 (32 s period)
_WDTCPS_WDTCPS10     .EQ  $3FF0 1:2097152 (64 s period)
_WDTCPS_WDTCPS11     .EQ  $3FF1 1:4194304 (128 s period)
_WDTCPS_WDTCPS12     .EQ  $3FF2 1:8388608 (256 s period)
_WDTCPS_WDTCPS1F     .EQ  $3FFF Software Control (WDTPS)

_WDTE_OFF            .EQ  $3F9F WDT disabled
_WDTE_SWDTEN         .EQ  $3FBF WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FDF WDT enabled while running and disabled in Sleep
_WDTE_ON             .EQ  $3FFF WDT enabled

_WDTCWS_WDTCWS125    .EQ  $38FF 12.5 percent window open time
_WDTCWS_WDTCWS25     .EQ  $39FF 25 percent window open time
_WDTCWS_WDTCWS375    .EQ  $3AFF 37.5 percent window open time
_WDTCWS_WDTCWS50     .EQ  $3BFF 50 percent window open time
_WDTCWS_WDTCWS625    .EQ  $3CFF 62.5 percent window open time
_WDTCWS_WDTCWS75     .EQ  $3DFF 75 percent window open time
_WDTCWS_WDTCWS100    .EQ  $3EFF 100 percent window open time (Legacy WDT) 
_WDTCWS_WDTCWSSW     .EQ  $3FFF Software WDT window size control (WDTWS bits)

_WDTCCS_LFINTOSC     .EQ  $07FF 31.0 kHz LFINTOSC
_WDTCCS_MFINTOSC     .EQ  $0FFF 31.0 kHz LFINTOSC
_WDTCCS_SWC          .EQ  $3FFF Software control, controlled by WDTCS bits

;----- DEVID .EQates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC .EQates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003

