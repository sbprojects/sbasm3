;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F1619 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F1619 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   8192

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
PIR1             .EQ  $0010
PIR2             .EQ  $0011
PIR3             .EQ  $0012
PIR4             .EQ  $0013
PIR5             .EQ  $0014
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
TRISB            .EQ  $008D
TRISC            .EQ  $008E
PIE1             .EQ  $0090
PIE2             .EQ  $0091
PIE3             .EQ  $0092
PIE4             .EQ  $0093
PIE5             .EQ  $0094
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
LATB             .EQ  $010D
LATC             .EQ  $010E
CM1CON0          .EQ  $0111
CM1CON1          .EQ  $0112
CM2CON0          .EQ  $0113
CM2CON1          .EQ  $0114
CMOUT            .EQ  $0115
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
DAC1CON0         .EQ  $0118
DAC1CON1         .EQ  $0119
ZCD1CON          .EQ  $011C

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

;-----Bank5------------------
ODCONA           .EQ  $028C
ODCONB           .EQ  $028D
ODCONC           .EQ  $028E
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
SLRCONB          .EQ  $030D
SLRCONC          .EQ  $030E

;-----Bank7------------------
INLVLA           .EQ  $038C
INLVLB           .EQ  $038D
INLVLC           .EQ  $038E
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393
IOCBP            .EQ  $0394
IOCBN            .EQ  $0395
IOCBF            .EQ  $0396
IOCCP            .EQ  $0397
IOCCN            .EQ  $0398
IOCCF            .EQ  $0399

;-----Bank8------------------
HIDRVC           .EQ  $040E
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
TMR3L            .EQ  $0493
TMR3H            .EQ  $0494
T3CON            .EQ  $0495
T3GCON           .EQ  $0496
TMR5L            .EQ  $049A
TMR5H            .EQ  $049B
T5CON            .EQ  $049C
T5GCON           .EQ  $049D

;-----Bank11------------------
PID1SET          .EQ  $058C
PID1SETL         .EQ  $058C
PID1SETH         .EQ  $058D
PID1IN           .EQ  $058E
PID1INL          .EQ  $058E
PID1INH          .EQ  $058F
PID1K1           .EQ  $0590
PID1K1L          .EQ  $0590
PID1K1H          .EQ  $0591
PID1K2           .EQ  $0592
PID1K2L          .EQ  $0592
PID1K2H          .EQ  $0593
PID1K3           .EQ  $0594
PID1K3L          .EQ  $0594
PID1K3H          .EQ  $0595
PID1OUT          .EQ  $0596
PID1OUTLL        .EQ  $0596
PID1OUTLH        .EQ  $0597
PID1OUTHL        .EQ  $0598
PID1OUTHH        .EQ  $0599
PID1OUTU         .EQ  $059A
PID1Z1           .EQ  $059B
PID1Z1L          .EQ  $059B
PID1Z1H          .EQ  $059C
PID1Z1U          .EQ  $059D

;-----Bank12------------------
PID1Z2           .EQ  $060C
PID1Z2L          .EQ  $060C
PID1Z2H          .EQ  $060D
PID1Z2U          .EQ  $060E
PID1ACC          .EQ  $060F
PID1ACCLL        .EQ  $060F
PID1ACCLH        .EQ  $0610
PID1ACCHL        .EQ  $0611
PID1ACCHH        .EQ  $0612
PID1ACCU         .EQ  $0613
PID1CON          .EQ  $0614
PWM3DCL          .EQ  $0617
PWM3DCH          .EQ  $0618
PWM3CON          .EQ  $0619
PWM4DCL          .EQ  $061A
PWM4DCH          .EQ  $061B
PWM4CON          .EQ  $061C

;-----Bank13------------------
CWG1DBR          .EQ  $0691
CWG1DBF          .EQ  $0692
CWG1AS0          .EQ  $0693
CWG1AS1          .EQ  $0694
CWG1OCON0        .EQ  $0695
CWG1CON0         .EQ  $0696
CWG1CON1         .EQ  $0697
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

;-----Bank16------------------
AT1RES           .EQ  $080C
AT1RESL          .EQ  $080C
AT1RESH          .EQ  $080D
AT1MISS          .EQ  $080E
AT1MISSL         .EQ  $080E
AT1MISSH         .EQ  $080F
AT1PER           .EQ  $0810
AT1PERL          .EQ  $0810
AT1PERH          .EQ  $0811
AT1PHS           .EQ  $0812
AT1PHSL          .EQ  $0812
AT1PHSH          .EQ  $0813
AT1CON0          .EQ  $0814
AT1CON1          .EQ  $0815
AT1IR0           .EQ  $0816
AT1IE0           .EQ  $0817
AT1IR1           .EQ  $0818
AT1IE1           .EQ  $0819
AT1STPT          .EQ  $081A
AT1STPTL         .EQ  $081A
AT1STPTH         .EQ  $081B
AT1ERR           .EQ  $081C
AT1ERRL          .EQ  $081C
AT1ERRH          .EQ  $081D

;-----Bank17------------------
AT1CLK           .EQ  $088C
AT1SIG           .EQ  $088D
AT1CSEL1         .EQ  $088E
AT1CC1           .EQ  $088F
AT1CC1L          .EQ  $088F
AT1CC1H          .EQ  $0890
AT1CCON1         .EQ  $0891
AT1CSEL2         .EQ  $0892
AT1CC2           .EQ  $0893
AT1CC2L          .EQ  $0893
AT1CC2H          .EQ  $0894
AT1CCON2         .EQ  $0895
AT1CSEL3         .EQ  $0896
AT1CC3           .EQ  $0897
AT1CC3L          .EQ  $0897
AT1CC3H          .EQ  $0898
AT1CCON3         .EQ  $0899

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

;-----Bank28------------------
PPSLOCK          .EQ  $0E0F
INTPPS           .EQ  $0E10
T0CKIPPS         .EQ  $0E11
T1CKIPPS         .EQ  $0E12
T1GPPS           .EQ  $0E13
CCP1PPS          .EQ  $0E14
CCP2PPS          .EQ  $0E15
ATINPPS          .EQ  $0E16
CWGINPPS         .EQ  $0E17
T2PPS            .EQ  $0E18
T3CKIPPS         .EQ  $0E19
T3GPPS           .EQ  $0E1A
T4PPS            .EQ  $0E1B
T5CKIPPS         .EQ  $0E1C
T5GPPS           .EQ  $0E1D
T6PPS            .EQ  $0E1E
ATCC1PPS         .EQ  $0E1F
SSPCLKPPS        .EQ  $0E20
SSPDATPPS        .EQ  $0E21
SSPSSPPS         .EQ  $0E22
ATCC2PPS         .EQ  $0E23
RXPPS            .EQ  $0E24
CKPPS            .EQ  $0E25
SMT1SIGPPS       .EQ  $0E26
SMT1WINPPS       .EQ  $0E27
CLCIN0PPS        .EQ  $0E28
CLCIN1PPS        .EQ  $0E29
CLCIN2PPS        .EQ  $0E2A
CLCIN3PPS        .EQ  $0E2B
SMT2SIGPPS       .EQ  $0E2C
SMT2WINPPS       .EQ  $0E2D
ATCC3PPS         .EQ  $0E2E

;-----Bank29------------------
RA0PPS           .EQ  $0E90
RA1PPS           .EQ  $0E91
RA2PPS           .EQ  $0E92
RA4PPS           .EQ  $0E94
RA5PPS           .EQ  $0E95
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


;----- PORTB Bits -----------------------------------------------------
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


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR4IF           .EQ  $0001
TMR6IF           .EQ  $0002
BCL1IF           .EQ  $0003
C1IF             .EQ  $0005
C2IF             .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
CLC1IF           .EQ  $0000
CLC2IF           .EQ  $0001
CLC3IF           .EQ  $0002
CLC4IF           .EQ  $0003
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


;----- PIR5 Bits -----------------------------------------------------
PID1DIF          .EQ  $0000
PID1EIF          .EQ  $0001
AT1IF            .EQ  $0002
TMR5IF           .EQ  $0004
TMR5GIF          .EQ  $0005
TMR3IF           .EQ  $0006
TMR3GIF          .EQ  $0007


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

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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
CS0              .EQ  $0000
CS1              .EQ  $0001
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


;----- TRISB Bits -----------------------------------------------------
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


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR4IE           .EQ  $0001
TMR6IE           .EQ  $0002
BCL1IE           .EQ  $0003
C1IE             .EQ  $0005
C2IE             .EQ  $0006
OSCFIE           .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
CLC1IE           .EQ  $0000
CLC2IE           .EQ  $0001
CLC3IE           .EQ  $0002
CLC4IE           .EQ  $0003
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


;----- PIE5 Bits -----------------------------------------------------
PID1DIE          .EQ  $0000
PID1EIE          .EQ  $0001
AT1IE            .EQ  $0002
TMR5IE           .EQ  $0004
TMR5GIE          .EQ  $0005
TMR3IE           .EQ  $0006
TMR3GIE          .EQ  $0007


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

PS0_OPTION_REG   .EQ  $0000
PS1_OPTION_REG   .EQ  $0001
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
OSTS             .EQ  $0005
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


;----- LATB Bits -----------------------------------------------------
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


;----- CM1CON0 Bits -----------------------------------------------------
C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1POL            .EQ  $0004
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



;----- CM2CON0 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2POL            .EQ  $0004
C2OUT            .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002
C2PCH0           .EQ  $0004
C2PCH1           .EQ  $0005
C2INTN           .EQ  $0006
C2INTP           .EQ  $0007



;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001


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
ZCD1EN           .EQ  $0007


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA4            .EQ  $0004



;----- ANSELB Bits -----------------------------------------------------
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005
ANSB6            .EQ  $0006
ANSB7            .EQ  $0007


;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
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
VREGPM0          .EQ  $0000
VREGPM1          .EQ  $0001


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
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
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



;----- WPUB Bits -----------------------------------------------------
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


;----- ODCONA Bits -----------------------------------------------------
ODA0             .EQ  $0000
ODA1             .EQ  $0001
ODA2             .EQ  $0002
ODA4             .EQ  $0004
ODA5             .EQ  $0005


;----- ODCONB Bits -----------------------------------------------------
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
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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


CCP1CTS0         .EQ  $0000
CCP1CTS1         .EQ  $0001
CCP1CTS2         .EQ  $0002


;----- CCP2CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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


CCP2CTS0         .EQ  $0000
CCP2CTS1         .EQ  $0001
CCP2CTS2         .EQ  $0002


;----- CCPTMRS Bits -----------------------------------------------------
CCP1TSEL0        .EQ  $0000
CCP1TSEL1        .EQ  $0001
CCP2TSEL0        .EQ  $0002
CCP2TSEL1        .EQ  $0003
P3TSEL0          .EQ  $0004
P3TSEL1          .EQ  $0005
P4TSEL0          .EQ  $0006
P4TSEL1          .EQ  $0007


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  $0000
SLRA1            .EQ  $0001
SLRA2            .EQ  $0002
SLRA4            .EQ  $0004
SLRA5            .EQ  $0005


;----- SLRCONB Bits -----------------------------------------------------
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


;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  $0000
INLVLA1          .EQ  $0001
INLVLA2          .EQ  $0002
INLVLA3          .EQ  $0003
INLVLA4          .EQ  $0004
INLVLA5          .EQ  $0005


;----- INLVLB Bits -----------------------------------------------------
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


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  $0000
IOCAP1           .EQ  $0001
IOCAP2           .EQ  $0002
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005



;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN2           .EQ  $0002
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005



;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF2           .EQ  $0002
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005



;----- IOCBP Bits -----------------------------------------------------
IOCBP4           .EQ  $0004
IOCBP5           .EQ  $0005
IOCBP6           .EQ  $0006
IOCBP7           .EQ  $0007


;----- IOCBN Bits -----------------------------------------------------
IOCBN4           .EQ  $0004
IOCBN5           .EQ  $0005
IOCBN6           .EQ  $0006
IOCBN7           .EQ  $0007


;----- IOCBF Bits -----------------------------------------------------
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


;----- HIDRVC Bits -----------------------------------------------------
HIDC4            .EQ  $0004
HIDC5            .EQ  $0005


;----- T4CON Bits -----------------------------------------------------
ON               .EQ  $0007

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

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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
CS0              .EQ  $0000
CS1              .EQ  $0001
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


T4RSEL0          .EQ  $0000
T4RSEL1          .EQ  $0001
T4RSEL2          .EQ  $0002
T4RSEL3          .EQ  $0003


;----- T6CON Bits -----------------------------------------------------
ON               .EQ  $0007

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

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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
CS0              .EQ  $0000
CS1              .EQ  $0001
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


T6RSEL0          .EQ  $0000
T6RSEL1          .EQ  $0001
T6RSEL2          .EQ  $0002
T6RSEL3          .EQ  $0003


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
T3SYNC           .EQ  $0002

T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007


;----- T3GCON Bits -----------------------------------------------------
T3GVAL           .EQ  $0002
T3GGO_NOT_DONE   .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001


;----- T5CON Bits -----------------------------------------------------
TMR5ON           .EQ  $0000
T5SYNC           .EQ  $0002

T5CKPS0          .EQ  $0004
T5CKPS1          .EQ  $0005
TMR5CS0          .EQ  $0006
TMR5CS1          .EQ  $0007


;----- T5GCON Bits -----------------------------------------------------
T5GVAL           .EQ  $0002
T5GGO_NOT_DONE   .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
TMR5GE           .EQ  $0007

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001


;----- PID1SETL Bits -----------------------------------------------------
PID1SET0         .EQ  $0000
PID1SET1         .EQ  $0001
PID1SET2         .EQ  $0002
PID1SET3         .EQ  $0003
PID1SET4         .EQ  $0004
PID1SET5         .EQ  $0005
PID1SET6         .EQ  $0006
PID1SET7         .EQ  $0007

SET0             .EQ  $0000
SET1             .EQ  $0001
SET2             .EQ  $0002
SET3             .EQ  $0003
SET4             .EQ  $0004
SET5             .EQ  $0005
SET6             .EQ  $0006
SET7             .EQ  $0007


;----- PID1SETH Bits -----------------------------------------------------
PID1SET8         .EQ  $0000
PID1SET9         .EQ  $0001
PID1SET10        .EQ  $0002
PID1SET11        .EQ  $0003
PID1SET12        .EQ  $0004
PID1SET13        .EQ  $0005
PID1SET14        .EQ  $0006
PID1SET15        .EQ  $0007

SET8             .EQ  $0000
SET9             .EQ  $0001
SET10            .EQ  $0002
SET11            .EQ  $0003
SET12            .EQ  $0004
SET13            .EQ  $0005
SET14            .EQ  $0006
SET15            .EQ  $0007


;----- PID1INL Bits -----------------------------------------------------
PID1IN0          .EQ  $0000
PID1IN1          .EQ  $0001
PID1IN2          .EQ  $0002
PID1IN3          .EQ  $0003
PID1IN4          .EQ  $0004
PID1IN5          .EQ  $0005
PID1IN6          .EQ  $0006
PID1IN7          .EQ  $0007

IN0              .EQ  $0000
IN1              .EQ  $0001
IN2              .EQ  $0002
IN3              .EQ  $0003
IN4              .EQ  $0004
IN5              .EQ  $0005
IN6              .EQ  $0006
IN7              .EQ  $0007


;----- PID1INH Bits -----------------------------------------------------
PID1IN8          .EQ  $0000
PID1IN9          .EQ  $0001
PID1IN10         .EQ  $0002
PID1IN11         .EQ  $0003
PID1IN12         .EQ  $0004
PID1IN13         .EQ  $0005
PID1IN14         .EQ  $0006
PID1IN15         .EQ  $0007

IN8              .EQ  $0000
IN9              .EQ  $0001
IN10             .EQ  $0002
IN11             .EQ  $0003
IN12             .EQ  $0004
IN13             .EQ  $0005
IN14             .EQ  $0006
IN15             .EQ  $0007


;----- PID1K1L Bits -----------------------------------------------------
PID1K10          .EQ  $0000
PID1K11          .EQ  $0001
PID1K12          .EQ  $0002
PID1K13          .EQ  $0003
PID1K14          .EQ  $0004
PID1K15          .EQ  $0005
PID1K16          .EQ  $0006
PID1K17          .EQ  $0007

K10              .EQ  $0000
K11              .EQ  $0001
K12              .EQ  $0002
K13              .EQ  $0003
K14              .EQ  $0004
K15              .EQ  $0005
K16              .EQ  $0006
K17              .EQ  $0007


;----- PID1K1H Bits -----------------------------------------------------
PID1K18          .EQ  $0000
PID1K19          .EQ  $0001
PID1K110         .EQ  $0002
PID1K111         .EQ  $0003
PID1K112         .EQ  $0004
PID1K113         .EQ  $0005
PID1K114         .EQ  $0006
PID1K115         .EQ  $0007

K18              .EQ  $0000
K19              .EQ  $0001
K110             .EQ  $0002
K111             .EQ  $0003
K112             .EQ  $0004
K113             .EQ  $0005
K114             .EQ  $0006
K115             .EQ  $0007


;----- PID1K2L Bits -----------------------------------------------------
PID1K20          .EQ  $0000
PID1K21          .EQ  $0001
PID1K22          .EQ  $0002
PID1K23          .EQ  $0003
PID1K24          .EQ  $0004
PID1K25          .EQ  $0005
PID1K26          .EQ  $0006
PID1K27          .EQ  $0007

K20              .EQ  $0000
K21              .EQ  $0001
K22              .EQ  $0002
K23              .EQ  $0003
K24              .EQ  $0004
K25              .EQ  $0005
K26              .EQ  $0006
K27              .EQ  $0007


;----- PID1K2H Bits -----------------------------------------------------
PID1K28          .EQ  $0000
PID1K29          .EQ  $0001
PID1K210         .EQ  $0002
PID1K211         .EQ  $0003
PID1K212         .EQ  $0004
PID1K213         .EQ  $0005
PID1K214         .EQ  $0006
PID1K215         .EQ  $0007

K28              .EQ  $0000
K29              .EQ  $0001
K210             .EQ  $0002
K211             .EQ  $0003
K212             .EQ  $0004
K213             .EQ  $0005
K214             .EQ  $0006
K215             .EQ  $0007


;----- PID1K3L Bits -----------------------------------------------------
PID1K30          .EQ  $0000
PID1K31          .EQ  $0001
PID1K32          .EQ  $0002
PID1K33          .EQ  $0003
PID1K34          .EQ  $0004
PID1K35          .EQ  $0005
PID1K36          .EQ  $0006
PID1K37          .EQ  $0007

K30              .EQ  $0000
K31              .EQ  $0001
K32              .EQ  $0002
K33              .EQ  $0003
K34              .EQ  $0004
K35              .EQ  $0005
K36              .EQ  $0006
K37              .EQ  $0007


;----- PID1K3H Bits -----------------------------------------------------
PID1K38          .EQ  $0000
PID1K39          .EQ  $0001
PID1K310         .EQ  $0002
PID1K311         .EQ  $0003
PID1K312         .EQ  $0004
PID1K313         .EQ  $0005
PID1K314         .EQ  $0006
PID1K315         .EQ  $0007

K38              .EQ  $0000
K39              .EQ  $0001
K310             .EQ  $0002
K311             .EQ  $0003
K312             .EQ  $0004
K313             .EQ  $0005
K314             .EQ  $0006
K315             .EQ  $0007


;----- PID1OUTLL Bits -----------------------------------------------------
PID1OUT0         .EQ  $0000
PID1OUT1         .EQ  $0001
PID1OUT2         .EQ  $0002
PID1OUT3         .EQ  $0003
PID1OUT4         .EQ  $0004
PID1OUT5         .EQ  $0005
PID1OUT6         .EQ  $0006
PID1OUT7         .EQ  $0007

OUT0             .EQ  $0000
OUT1             .EQ  $0001
OUT2             .EQ  $0002
OUT3             .EQ  $0003
OUT4             .EQ  $0004
OUT5             .EQ  $0005
OUT6             .EQ  $0006
OUT7             .EQ  $0007


;----- PID1OUTLH Bits -----------------------------------------------------
PID1OUT8         .EQ  $0000
PID1OUT9         .EQ  $0001
PID1OUT10        .EQ  $0002
PID1OUT11        .EQ  $0003
PID1OUT12        .EQ  $0004
PID1OUT13        .EQ  $0005
PID1OUT14        .EQ  $0006
PID1OUT15        .EQ  $0007

OUT8             .EQ  $0000
OUT9             .EQ  $0001
OUT10            .EQ  $0002
OUT11            .EQ  $0003
OUT12            .EQ  $0004
OUT13            .EQ  $0005
OUT14            .EQ  $0006
OUT15            .EQ  $0007


;----- PID1OUTHL Bits -----------------------------------------------------
PID1OUT16        .EQ  $0000
PID1OUT17        .EQ  $0001
PID1OUT18        .EQ  $0002
PID1OUT19        .EQ  $0003
PID1OUT20        .EQ  $0004
PID1OUT21        .EQ  $0005
PID1OUT22        .EQ  $0006
PID1OUT23        .EQ  $0007

OUT16            .EQ  $0000
OUT17            .EQ  $0001
OUT18            .EQ  $0002
OUT19            .EQ  $0003
OUT20            .EQ  $0004
OUT21            .EQ  $0005
OUT22            .EQ  $0006
OUT23            .EQ  $0007


;----- PID1OUTHH Bits -----------------------------------------------------
PID1OUT24        .EQ  $0000
PID1OUT25        .EQ  $0001
PID1OUT26        .EQ  $0002
PID1OUT27        .EQ  $0003
PID1OUT28        .EQ  $0004
PID1OUT29        .EQ  $0005
PID1OUT30        .EQ  $0006
PID1OUT31        .EQ  $0007

OUT24            .EQ  $0000
OUT25            .EQ  $0001
OUT26            .EQ  $0002
OUT27            .EQ  $0003
OUT28            .EQ  $0004
OUT29            .EQ  $0005
OUT30            .EQ  $0006
OUT31            .EQ  $0007


;----- PID1OUTU Bits -----------------------------------------------------
PID1OUT32        .EQ  $0000
PID1OUT33        .EQ  $0001
PID1OUT34        .EQ  $0002
PID1OUT35        .EQ  $0003

OUT32            .EQ  $0000
OUT33            .EQ  $0001
OUT34            .EQ  $0002
OUT35            .EQ  $0003


;----- PID1Z1L Bits -----------------------------------------------------
PID1Z10          .EQ  $0000
PID1Z11          .EQ  $0001
PID1Z12          .EQ  $0002
PID1Z13          .EQ  $0003
PID1Z14          .EQ  $0004
PID1Z15          .EQ  $0005
PID1Z16          .EQ  $0006
PID1Z17          .EQ  $0007

Z10              .EQ  $0000
Z11              .EQ  $0001
Z12              .EQ  $0002
Z13              .EQ  $0003
Z14              .EQ  $0004
Z15              .EQ  $0005
Z16              .EQ  $0006
Z17              .EQ  $0007


;----- PID1Z1H Bits -----------------------------------------------------
PID1Z18          .EQ  $0000
PID1Z19          .EQ  $0001
PID1Z110         .EQ  $0002
PID1Z111         .EQ  $0003
PID1Z112         .EQ  $0004
PID1Z113         .EQ  $0005
PID1Z114         .EQ  $0006
PID1Z115         .EQ  $0007

Z18              .EQ  $0000
Z19              .EQ  $0001
Z110             .EQ  $0002
Z111             .EQ  $0003
Z112             .EQ  $0004
Z113             .EQ  $0005
Z114             .EQ  $0006
Z115             .EQ  $0007


;----- PID1Z1U Bits -----------------------------------------------------
PID1Z116         .EQ  $0000

Z116             .EQ  $0000


;----- PID1Z2L Bits -----------------------------------------------------
PID1Z20          .EQ  $0000
PID1Z21          .EQ  $0001
PID1Z22          .EQ  $0002
PID1Z23          .EQ  $0003
PID1Z24          .EQ  $0004
PID1Z25          .EQ  $0005
PID1Z26          .EQ  $0006
PID1Z27          .EQ  $0007

Z20              .EQ  $0000
Z21              .EQ  $0001
Z22              .EQ  $0002
Z23              .EQ  $0003
Z24              .EQ  $0004
Z25              .EQ  $0005
Z26              .EQ  $0006
Z27              .EQ  $0007


;----- PID1Z2H Bits -----------------------------------------------------
PID1Z28          .EQ  $0000
PID1Z29          .EQ  $0001
PID1Z210         .EQ  $0002
PID1Z211         .EQ  $0003
PID1Z212         .EQ  $0004
PID1Z213         .EQ  $0005
PID1Z214         .EQ  $0006
PID1Z215         .EQ  $0007

Z28              .EQ  $0000
Z29              .EQ  $0001
Z210             .EQ  $0002
Z211             .EQ  $0003
Z212             .EQ  $0004
Z213             .EQ  $0005
Z214             .EQ  $0006
Z215             .EQ  $0007


;----- PID1Z2U Bits -----------------------------------------------------
PID1Z216         .EQ  $0000

Z216             .EQ  $0000


;----- PID1ACCLL Bits -----------------------------------------------------
PID1ACC0         .EQ  $0000
PID1ACC1         .EQ  $0001
PID1ACC2         .EQ  $0002
PID1ACC3         .EQ  $0003
PID1ACC4         .EQ  $0004
PID1ACC5         .EQ  $0005
PID1ACC6         .EQ  $0006
PID1ACC7         .EQ  $0007

ACC0             .EQ  $0000
ACC1             .EQ  $0001
ACC2             .EQ  $0002
ACC3             .EQ  $0003
ACC4             .EQ  $0004
ACC5             .EQ  $0005
ACC6             .EQ  $0006
ACC7             .EQ  $0007


;----- PID1ACCLH Bits -----------------------------------------------------
PID1ACC8         .EQ  $0000
PID1ACC9         .EQ  $0001
PID1ACC10        .EQ  $0002
PID1ACC11        .EQ  $0003
PID1ACC12        .EQ  $0004
PID1ACC13        .EQ  $0005
PID1ACC14        .EQ  $0006
PID1ACC15        .EQ  $0007

ACC8             .EQ  $0000
ACC9             .EQ  $0001
ACC10            .EQ  $0002
ACC11            .EQ  $0003
ACC12            .EQ  $0004
ACC13            .EQ  $0005
ACC14            .EQ  $0006
ACC15            .EQ  $0007


;----- PID1ACCHL Bits -----------------------------------------------------
PID1ACC16        .EQ  $0000
PID1ACC17        .EQ  $0001
PID1ACC18        .EQ  $0002
PID1ACC19        .EQ  $0003
PID1ACC20        .EQ  $0004
PID1ACC21        .EQ  $0005
PID1ACC22        .EQ  $0006
PID1ACC23        .EQ  $0007

ACC16            .EQ  $0000
ACC17            .EQ  $0001
ACC18            .EQ  $0002
ACC19            .EQ  $0003
ACC20            .EQ  $0004
ACC21            .EQ  $0005
ACC22            .EQ  $0006
ACC23            .EQ  $0007


;----- PID1ACCHH Bits -----------------------------------------------------
PID1ACC24        .EQ  $0000
PID1ACC25        .EQ  $0001
PID1ACC26        .EQ  $0002
PID1ACC27        .EQ  $0003
PID1ACC28        .EQ  $0004
PID1ACC29        .EQ  $0005
PID1ACC30        .EQ  $0006
PID1ACC31        .EQ  $0007

ACC24            .EQ  $0000
ACC25            .EQ  $0001
ACC26            .EQ  $0002
ACC27            .EQ  $0003
ACC28            .EQ  $0004
ACC29            .EQ  $0005
ACC30            .EQ  $0006
ACC31            .EQ  $0007


;----- PID1ACCU Bits -----------------------------------------------------
PID1ACC32        .EQ  $0000
PID1ACC33        .EQ  $0001
PID1ACC34        .EQ  $0002

ACC32            .EQ  $0000
ACC33            .EQ  $0001
ACC34            .EQ  $0002


;----- PID1CON Bits -----------------------------------------------------
PID1BUSY         .EQ  $0006
PID1EN           .EQ  $0007

BUSY_PID1CON     .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002

PID1MODE0        .EQ  $0000
PID1MODE1        .EQ  $0001
PID1MODE2        .EQ  $0002


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
OUT              .EQ  $0005
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
OUT              .EQ  $0005
EN               .EQ  $0007

PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4EN           .EQ  $0007


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


;----- CWG1CLKCON Bits -----------------------------------------------------
CS               .EQ  $0000

CWG1CS           .EQ  $0000


;----- CWG1ISM Bits -----------------------------------------------------
IS0              .EQ  $0000
IS1              .EQ  $0001
IS2              .EQ  $0002
IS3              .EQ  $0003


CWG1IS0          .EQ  $0000
CWG1IS1          .EQ  $0001
CWG1IS2          .EQ  $0002
CWG1IS3          .EQ  $0003


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
BUSY_SCANCON0    .EQ  $0005
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
TSEL2            .EQ  $0002
TSEL3            .EQ  $0003


SCANTSEL0        .EQ  $0000
SCANTSEL1        .EQ  $0001
SCANTSEL2        .EQ  $0002
SCANTSEL3        .EQ  $0003


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
BUSY_CRCCON0     .EQ  $0005
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


;----- AT1RESL Bits -----------------------------------------------------
AT1RES0          .EQ  $0000
AT1RES1          .EQ  $0001
AT1RES2          .EQ  $0002
AT1RES3          .EQ  $0003
AT1RES4          .EQ  $0004
AT1RES5          .EQ  $0005
AT1RES6          .EQ  $0006
AT1RES7          .EQ  $0007

RES0             .EQ  $0000
RES1             .EQ  $0001
RES2             .EQ  $0002
RES3             .EQ  $0003
RES4             .EQ  $0004
RES5             .EQ  $0005
RES6             .EQ  $0006
RES7             .EQ  $0007


;----- AT1RESH Bits -----------------------------------------------------
AT1RES8          .EQ  $0000
AT1RES9          .EQ  $0001

RES8             .EQ  $0000
RES9             .EQ  $0001


;----- AT1MISSL Bits -----------------------------------------------------
AT1MISS0         .EQ  $0000
AT1MISS1         .EQ  $0001
AT1MISS2         .EQ  $0002
AT1MISS3         .EQ  $0003
AT1MISS4         .EQ  $0004
AT1MISS5         .EQ  $0005
AT1MISS6         .EQ  $0006
AT1MISS7         .EQ  $0007

MISS0            .EQ  $0000
MISS1            .EQ  $0001
MISS2            .EQ  $0002
MISS3            .EQ  $0003
MISS4            .EQ  $0004
MISS5            .EQ  $0005
MISS6            .EQ  $0006
MISS7            .EQ  $0007


;----- AT1MISSH Bits -----------------------------------------------------
AT1MISS8         .EQ  $0000
AT1MISS9         .EQ  $0001
AT1MISS10        .EQ  $0002
AT1MISS11        .EQ  $0003
AT1MISS12        .EQ  $0004
AT1MISS13        .EQ  $0005
AT1MISS14        .EQ  $0006
AT1MISS15        .EQ  $0007

MISS8            .EQ  $0000
MISS9            .EQ  $0001
MISS10           .EQ  $0002
MISS11           .EQ  $0003
MISS12           .EQ  $0004
MISS13           .EQ  $0005
MISS14           .EQ  $0006
MISS15           .EQ  $0007


;----- AT1PERL Bits -----------------------------------------------------
AT1PER0          .EQ  $0000
AT1PER1          .EQ  $0001
AT1PER2          .EQ  $0002
AT1PER3          .EQ  $0003
AT1PER4          .EQ  $0004
AT1PER5          .EQ  $0005
AT1PER6          .EQ  $0006
AT1PER7          .EQ  $0007

PER0             .EQ  $0000
PER1             .EQ  $0001
PER2             .EQ  $0002
PER3             .EQ  $0003
PER4             .EQ  $0004
PER5             .EQ  $0005
PER6             .EQ  $0006
PER7             .EQ  $0007

PERL0            .EQ  $0000
PERL1            .EQ  $0001
PERL2            .EQ  $0002
PERL3            .EQ  $0003
PERL4            .EQ  $0004
PERL5            .EQ  $0005
PERL6            .EQ  $0006
PERL7            .EQ  $0007


;----- AT1PERH Bits -----------------------------------------------------
AT1PER8          .EQ  $0000
AT1PER9          .EQ  $0001
AT1PER10         .EQ  $0002
AT1PER11         .EQ  $0003
AT1PER12         .EQ  $0004
AT1PER13         .EQ  $0005
AT1PER14         .EQ  $0006
AT1POV           .EQ  $0007

PER8             .EQ  $0000
PER9             .EQ  $0001
PER10            .EQ  $0002
PER11            .EQ  $0003
PER12            .EQ  $0004
PER13            .EQ  $0005
PER14            .EQ  $0006
PER15            .EQ  $0007

PERH0            .EQ  $0000
PERH1            .EQ  $0001
PERH2            .EQ  $0002
PERH3            .EQ  $0003
PERH4            .EQ  $0004
PERH5            .EQ  $0005
PERH6            .EQ  $0006
PERH7            .EQ  $0007


;----- AT1PHSL Bits -----------------------------------------------------
AT1PHS0          .EQ  $0000
AT1PHS1          .EQ  $0001
AT1PHS2          .EQ  $0002
AT1PHS3          .EQ  $0003
AT1PHS4          .EQ  $0004
AT1PHS5          .EQ  $0005
AT1PHS6          .EQ  $0006
AT1PHS7          .EQ  $0007

PHS0             .EQ  $0000
PHS1             .EQ  $0001
PHS2             .EQ  $0002
PHS3             .EQ  $0003
PHS4             .EQ  $0004
PHS5             .EQ  $0005
PHS6             .EQ  $0006
PHS7             .EQ  $0007


;----- AT1PHSH Bits -----------------------------------------------------
AT1PHS8          .EQ  $0000
AT1PHS9          .EQ  $0001

PHS8             .EQ  $0000
PHS9             .EQ  $0001

PHSL8            .EQ  $0000
PHSL9            .EQ  $0001


;----- AT1CON0 Bits -----------------------------------------------------
MODE             .EQ  $0000
APMOD            .EQ  $0001
POL_AT1CON0      .EQ  $0003
PREC             .EQ  $0006
EN               .EQ  $0007

PS0_AT1CON0      .EQ  $0004
PS1_AT1CON0      .EQ  $0005

AT1MODE          .EQ  $0000
AT1APMOD         .EQ  $0001
AT1POL           .EQ  $0003
AT1PREC          .EQ  $0006
AT1EN            .EQ  $0007

AT1PS0           .EQ  $0004
AT1PS1           .EQ  $0005


;----- AT1CON1 Bits -----------------------------------------------------
VALID            .EQ  $0000
ACCS             .EQ  $0001
MPP              .EQ  $0002
PRP              .EQ  $0004
PHP              .EQ  $0006

AT1VALID         .EQ  $0000
AT1ACCS          .EQ  $0001
AT1MPP           .EQ  $0002
AT1PRP           .EQ  $0004
AT1PHP           .EQ  $0006


;----- AT1IR0 Bits -----------------------------------------------------
AT1PERIF         .EQ  $0000
AT1MISSIF        .EQ  $0001
AT1PHSIF         .EQ  $0002


;----- AT1IE0 Bits -----------------------------------------------------
AT1PERIE         .EQ  $0000
AT1MISSIE        .EQ  $0001
AT1PHSIE         .EQ  $0002


;----- AT1IR1 Bits -----------------------------------------------------
AT1CC1IF         .EQ  $0000
AT1CC2IF         .EQ  $0001
AT1CC3IF         .EQ  $0002


;----- AT1IE1 Bits -----------------------------------------------------
AT1CC1IE         .EQ  $0000
AT1CC2IE         .EQ  $0001
AT1CC3IE         .EQ  $0002


;----- AT1STPTL Bits -----------------------------------------------------
AT1STPT0         .EQ  $0000
AT1STPT1         .EQ  $0001
AT1STPT2         .EQ  $0002
AT1STPT3         .EQ  $0003
AT1STPT4         .EQ  $0004
AT1STPT5         .EQ  $0005
AT1STPT6         .EQ  $0006
AT1STPT7         .EQ  $0007

STPT0            .EQ  $0000
STPT1            .EQ  $0001
STPT2            .EQ  $0002
STPT3            .EQ  $0003
STPT4            .EQ  $0004
STPT5            .EQ  $0005
STPT6            .EQ  $0006
STPT7            .EQ  $0007


;----- AT1STPTH Bits -----------------------------------------------------
AT1STPT8         .EQ  $0000
AT1STPT9         .EQ  $0001
AT1STPT10        .EQ  $0002
AT1STPT11        .EQ  $0003
AT1STPT12        .EQ  $0004
AT1STPT13        .EQ  $0005
AT1STPT14        .EQ  $0006

STPT8            .EQ  $0000
STPT9            .EQ  $0001
STPT10           .EQ  $0002
STPT11           .EQ  $0003
STPT12           .EQ  $0004
STPT13           .EQ  $0005
STPT14           .EQ  $0006


;----- AT1ERRL Bits -----------------------------------------------------
AT1ERR0          .EQ  $0000
AT1ERR1          .EQ  $0001
AT1ERR2          .EQ  $0002
AT1ERR3          .EQ  $0003
AT1ERR4          .EQ  $0004
AT1ERR5          .EQ  $0005
AT1ERR6          .EQ  $0006
AT1ERR7          .EQ  $0007

ERR0             .EQ  $0000
ERR1             .EQ  $0001
ERR2             .EQ  $0002
ERR3             .EQ  $0003
ERR4             .EQ  $0004
ERR5             .EQ  $0005
ERR6             .EQ  $0006
ERR7             .EQ  $0007

ERRL0            .EQ  $0000
ERRL1            .EQ  $0001
ERRL2            .EQ  $0002
ERRL3            .EQ  $0003
ERRL4            .EQ  $0004
ERRL5            .EQ  $0005
ERRL6            .EQ  $0006
ERRL7            .EQ  $0007


;----- AT1ERRH Bits -----------------------------------------------------
AT1ERR8          .EQ  $0000
AT1ERR9          .EQ  $0001
AT1ERR10         .EQ  $0002
AT1ERR11         .EQ  $0003
AT1ERR12         .EQ  $0004
AT1ERR13         .EQ  $0005
AT1ERR14         .EQ  $0006
AT1ERR15         .EQ  $0007

ERR8             .EQ  $0000
ERR9             .EQ  $0001
ERR10            .EQ  $0002
ERR11            .EQ  $0003
ERR12            .EQ  $0004
ERR13            .EQ  $0005
ERR14            .EQ  $0006
ERR15            .EQ  $0007

ERRH0            .EQ  $0000
ERRH1            .EQ  $0001
ERRH2            .EQ  $0002
ERRH3            .EQ  $0003
ERRH4            .EQ  $0004
ERRH5            .EQ  $0005
ERRH6            .EQ  $0006
ERRH7            .EQ  $0007


;----- AT1CLK Bits -----------------------------------------------------
CS               .EQ  $0000

AT1CS            .EQ  $0000

CS0              .EQ  $0000

AT1CS0           .EQ  $0000


;----- AT1SIG Bits -----------------------------------------------------
AT1SSEL0         .EQ  $0000
AT1SSEL1         .EQ  $0001
AT1SSEL2         .EQ  $0002

SSEL0            .EQ  $0000
SSEL1            .EQ  $0001
SSEL2            .EQ  $0002



;----- AT1CSEL1 Bits -----------------------------------------------------
AT1CP1S0         .EQ  $0000
AT1CP1S1         .EQ  $0001
AT1CP1S2         .EQ  $0002

CP1S0            .EQ  $0000
CP1S1            .EQ  $0001
CP1S2            .EQ  $0002



;----- AT1CC1L Bits -----------------------------------------------------
AT1CC10          .EQ  $0000
AT1CC11          .EQ  $0001
AT1CC12          .EQ  $0002
AT1CC13          .EQ  $0003
AT1CC14          .EQ  $0004
AT1CC15          .EQ  $0005
AT1CC16          .EQ  $0006
AT1CC17          .EQ  $0007

CC10             .EQ  $0000
CC11             .EQ  $0001
CC12             .EQ  $0002
CC13             .EQ  $0003
CC14             .EQ  $0004
CC15             .EQ  $0005
CC16             .EQ  $0006
CC17             .EQ  $0007


;----- AT1CC1H Bits -----------------------------------------------------
AT1CC18          .EQ  $0000
AT1CC19          .EQ  $0001

CC18             .EQ  $0000
CC19             .EQ  $0001


;----- AT1CCON1 Bits -----------------------------------------------------
AT1CC1MODE       .EQ  $0000
AT1CAP1P         .EQ  $0003
AT1CC1POL        .EQ  $0004
AT1CC1EN         .EQ  $0007

CC1MODE          .EQ  $0000
CAP1P            .EQ  $0003
CC1POL           .EQ  $0004
CC1EN            .EQ  $0007


;----- AT1CSEL2 Bits -----------------------------------------------------
AT1CP2S0         .EQ  $0000
AT1CP2S1         .EQ  $0001
AT1CP2S2         .EQ  $0002


CP2S0            .EQ  $0000
CP2S1            .EQ  $0001
CP2S2            .EQ  $0002


;----- AT1CC2L Bits -----------------------------------------------------
AT1CC20          .EQ  $0000
AT1CC21          .EQ  $0001
AT1CC22          .EQ  $0002
AT1CC23          .EQ  $0003
AT1CC24          .EQ  $0004
AT1CC25          .EQ  $0005
AT1CC26          .EQ  $0006
AT1CC27          .EQ  $0007

CC20             .EQ  $0000
CC21             .EQ  $0001
CC22             .EQ  $0002
CC13             .EQ  $0003
CC24             .EQ  $0004
CCW5             .EQ  $0005
CC26             .EQ  $0006
CC27             .EQ  $0007


;----- AT1CC2H Bits -----------------------------------------------------
AT1CC28          .EQ  $0000
AT1CC29          .EQ  $0001

CC28             .EQ  $0000
CC29             .EQ  $0001


;----- AT1CCON2 Bits -----------------------------------------------------
AT1CC2MODE       .EQ  $0000
AT1CAP2P         .EQ  $0003
AT1CC2POL        .EQ  $0004
AT1CC2EN         .EQ  $0007

CC2MODE          .EQ  $0000
CAP2P            .EQ  $0003
CC2POL           .EQ  $0004
CC2EN            .EQ  $0007


;----- AT1CSEL3 Bits -----------------------------------------------------
AT1CP3S0         .EQ  $0000
AT1CP3S1         .EQ  $0001
AT1CP3S2         .EQ  $0002


CP3S0            .EQ  $0000
CP3S1            .EQ  $0001
CP3S2            .EQ  $0002


;----- AT1CC3L Bits -----------------------------------------------------
AT1CC30          .EQ  $0000
AT1CC31          .EQ  $0001
AT1CC32          .EQ  $0002
AT1CC33          .EQ  $0003
AT1CC34          .EQ  $0004
AT1CC35          .EQ  $0005
AT1CC36          .EQ  $0006
AT1CC37          .EQ  $0007

CC30             .EQ  $0000
CC31             .EQ  $0001
CC32             .EQ  $0002
CC33             .EQ  $0003
CC34             .EQ  $0004
CC35             .EQ  $0005
CC36             .EQ  $0006
CC37             .EQ  $0007


;----- AT1CC3H Bits -----------------------------------------------------
AT1CC38          .EQ  $0000
AT1CC39          .EQ  $0001

CC38             .EQ  $0000
CC39             .EQ  $0001


;----- AT1CCON3 Bits -----------------------------------------------------
AT1CC3MODE       .EQ  $0000
AT1CAP3P         .EQ  $0003
AT1CC3POL        .EQ  $0004
AT1CC3EN         .EQ  $0007

CC3MODE          .EQ  $0000
CAP3P            .EQ  $0003
CC3POL           .EQ  $0004
CC3EN            .EQ  $0007


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
SSEL3            .EQ  $0003
SSEL4            .EQ  $0004


SMT1SSEL0        .EQ  $0000
SMT1SSEL1        .EQ  $0001
SMT1SSEL2        .EQ  $0002
SMT1SSEL3        .EQ  $0003
SMT1SSEL4        .EQ  $0004


;----- SMT1WIN Bits -----------------------------------------------------
WSEL0            .EQ  $0000
WSEL1            .EQ  $0001
WSEL2            .EQ  $0002
WSEL3            .EQ  $0003
WSEL4            .EQ  $0004


SMT1WSEL0        .EQ  $0000
SMT1WSEL1        .EQ  $0001
SMT1WSEL2        .EQ  $0002
SMT1WSEL3        .EQ  $0003
SMT1WSEL4        .EQ  $0004


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


SMT2CSEL0        .EQ  $0000
SMT2CSEL1        .EQ  $0001
SMT2CSEL2        .EQ  $0002


;----- SMT2SIG Bits -----------------------------------------------------
SSEL0            .EQ  $0000
SSEL1            .EQ  $0001
SSEL2            .EQ  $0002
SSEL3            .EQ  $0003
SSEL4            .EQ  $0004


SMT2SSEL0        .EQ  $0000
SMT2SSEL1        .EQ  $0001
SMT2SSEL2        .EQ  $0002
SMT2SSEL3        .EQ  $0003
SMT2SSEL4        .EQ  $0004


;----- SMT2WIN Bits -----------------------------------------------------
WSEL0            .EQ  $0000
WSEL1            .EQ  $0001
WSEL2            .EQ  $0002
WSEL3            .EQ  $0003
WSEL4            .EQ  $0004


SMT2WSEL0        .EQ  $0000
SMT2WSEL1        .EQ  $0001
SMT2WSEL2        .EQ  $0002
SMT2WSEL3        .EQ  $0003
SMT2WSEL4        .EQ  $0004


;----- PPSLOCK Bits -----------------------------------------------------
PPSLOCKED        .EQ  $0000


;----- INTPPS Bits -----------------------------------------------------
INTPPS0          .EQ  $0000
INTPPS1          .EQ  $0001
INTPPS2          .EQ  $0002
INTPPS3          .EQ  $0003
INTPPS4          .EQ  $0004


;----- T0CKIPPS Bits -----------------------------------------------------
T0CKIPPS0        .EQ  $0000
T0CKIPPS1        .EQ  $0001
T0CKIPPS2        .EQ  $0002
T0CKIPPS3        .EQ  $0003
T0CKIPPS4        .EQ  $0004


;----- T1CKIPPS Bits -----------------------------------------------------
T1CKIPPS0        .EQ  $0000
T1CKIPPS1        .EQ  $0001
T1CKIPPS2        .EQ  $0002
T1CKIPPS3        .EQ  $0003
T1CKIPPS4        .EQ  $0004


;----- T1GPPS Bits -----------------------------------------------------
T1GPPS0          .EQ  $0000
T1GPPS1          .EQ  $0001
T1GPPS2          .EQ  $0002
T1GPPS3          .EQ  $0003
T1GPPS4          .EQ  $0004


;----- CCP1PPS Bits -----------------------------------------------------
CCP1PPS0         .EQ  $0000
CCP1PPS1         .EQ  $0001
CCP1PPS2         .EQ  $0002
CCP1PPS3         .EQ  $0003
CCP1PPS4         .EQ  $0004


;----- CCP2PPS Bits -----------------------------------------------------
CCP2PPS0         .EQ  $0000
CCP2PPS1         .EQ  $0001
CCP2PPS2         .EQ  $0002
CCP2PPS3         .EQ  $0003
CCP2PPS4         .EQ  $0004


;----- ATINPPS Bits -----------------------------------------------------
ATINPPS0         .EQ  $0000
ATINPPS1         .EQ  $0001
ATINPPS2         .EQ  $0002
ATINPPS3         .EQ  $0003
ATINPPS4         .EQ  $0004


;----- CWGINPPS Bits -----------------------------------------------------
CWGINPPS0        .EQ  $0000
CWGINPPS1        .EQ  $0001
CWGINPPS2        .EQ  $0002
CWGINPPS3        .EQ  $0003
CWGINPPS4        .EQ  $0004


;----- T2PPS Bits -----------------------------------------------------
T2PPS0           .EQ  $0000
T2PPS1           .EQ  $0001
T2PPS2           .EQ  $0002
T2PPS3           .EQ  $0003
T2PPS4           .EQ  $0004


;----- T3CKIPPS Bits -----------------------------------------------------
T3CKIPPS0        .EQ  $0000
T3CKIPPS1        .EQ  $0001
T3CKIPPS2        .EQ  $0002
T3CKIPPS3        .EQ  $0003
T3CKIPPS4        .EQ  $0004


;----- T3GPPS Bits -----------------------------------------------------
T3GPPS0          .EQ  $0000
T3GPPS1          .EQ  $0001
T3GPPS2          .EQ  $0002
T3GPPS3          .EQ  $0003
T3GPPS4          .EQ  $0004


;----- T4PPS Bits -----------------------------------------------------
T4PPS0           .EQ  $0000
T4PPS1           .EQ  $0001
T4PPS2           .EQ  $0002
T4PPS3           .EQ  $0003
T4PPS4           .EQ  $0004


;----- T5CKIPPS Bits -----------------------------------------------------
T5CKIPPS0        .EQ  $0000
T5CKIPPS1        .EQ  $0001
T5CKIPPS2        .EQ  $0002
T5CKIPPS3        .EQ  $0003
T5CKIPPS4        .EQ  $0004


;----- T5GPPS Bits -----------------------------------------------------
T5GPPS0          .EQ  $0000
T5GPPS1          .EQ  $0001
T5GPPS2          .EQ  $0002
T5GPPS3          .EQ  $0003
T5GPPS4          .EQ  $0004


;----- T6PPS Bits -----------------------------------------------------
T6PPS0           .EQ  $0000
T6PPS1           .EQ  $0001
T6PPS2           .EQ  $0002
T6PPS3           .EQ  $0003
T6PPS4           .EQ  $0004


;----- ATCC1PPS Bits -----------------------------------------------------
ATCC1PPS0        .EQ  $0000
ATCC1PPS1        .EQ  $0001
ATCC1PPS2        .EQ  $0002
ATCC1PPS3        .EQ  $0003
ATCC1PPS4        .EQ  $0004


;----- SSPCLKPPS Bits -----------------------------------------------------
SSPCLKPPS0       .EQ  $0000
SSPCLKPPS1       .EQ  $0001
SSPCLKPPS2       .EQ  $0002
SSPCLKPPS3       .EQ  $0003
SSPCLKPPS4       .EQ  $0004


;----- SSPDATPPS Bits -----------------------------------------------------
SSPDATPPS0       .EQ  $0000
SSPDATPPS1       .EQ  $0001
SSPDATPPS2       .EQ  $0002
SSPDATPPS3       .EQ  $0003
SSPDATPPS4       .EQ  $0004


;----- SSPSSPPS Bits -----------------------------------------------------
SSPSSPPS0        .EQ  $0000
SSPSSPPS1        .EQ  $0001
SSPSSPPS2        .EQ  $0002
SSPSSPPS3        .EQ  $0003
SSPSSPPS4        .EQ  $0004


;----- ATCC2PPS Bits -----------------------------------------------------
ATCC2PPS0        .EQ  $0000
ATCC2PPS1        .EQ  $0001
ATCC2PPS2        .EQ  $0002
ATCC2PPS3        .EQ  $0003
ATCC2PPS4        .EQ  $0004


;----- RXPPS Bits -----------------------------------------------------
RXPPS0           .EQ  $0000
RXPPS1           .EQ  $0001
RXPPS2           .EQ  $0002
RXPPS3           .EQ  $0003
RXPPS4           .EQ  $0004


;----- CKPPS Bits -----------------------------------------------------
CKPPS0           .EQ  $0000
CKPPS1           .EQ  $0001
CKPPS2           .EQ  $0002
CKPPS3           .EQ  $0003
CKPPS4           .EQ  $0004


;----- SMT1SIGPPS Bits -----------------------------------------------------
SMT1SIGPPS0      .EQ  $0000
SMT1SIGPPS1      .EQ  $0001
SMT1SIGPPS2      .EQ  $0002
SMT1SIGPPS3      .EQ  $0003
SMT1SIGPPS4      .EQ  $0004


;----- SMT1WINPPS Bits -----------------------------------------------------
SMTWINPPS0       .EQ  $0000
SMTWINPPS1       .EQ  $0001
SMTWINPPS2       .EQ  $0002
SMTWINPPS3       .EQ  $0003
SMTWINPPS4       .EQ  $0004


;----- CLCIN0PPS Bits -----------------------------------------------------
CLCIN0PPS0       .EQ  $0000
CLCIN0PPS1       .EQ  $0001
CLCIN0PPS2       .EQ  $0002
CLCIN0PPS3       .EQ  $0003
CLCIN0PPS4       .EQ  $0004


;----- CLCIN1PPS Bits -----------------------------------------------------
CLCIN1PPS0       .EQ  $0000
CLCIN1PPS1       .EQ  $0001
CLCIN1PPS2       .EQ  $0002
CLCIN1PPS3       .EQ  $0003
CLCIN1PPS4       .EQ  $0004


;----- CLCIN2PPS Bits -----------------------------------------------------
CLCIN2PPS0       .EQ  $0000
CLCIN2PPS1       .EQ  $0001
CLCIN2PPS2       .EQ  $0002
CLCIN2PPS3       .EQ  $0003
CLCIN2PPS4       .EQ  $0004


;----- CLCIN3PPS Bits -----------------------------------------------------
CLCIN3PPS0       .EQ  $0000
CLCIN3PPS1       .EQ  $0001
CLCIN3PPS2       .EQ  $0002
CLCIN3PPS3       .EQ  $0003
CLCIN3PPS4       .EQ  $0004


;----- SMT2SIGPPS Bits -----------------------------------------------------
SMT2SIGPPS0      .EQ  $0000
SMT2SIGPPS1      .EQ  $0001
SMT2SIGPPS2      .EQ  $0002
SMT2SIGPPS3      .EQ  $0003
SMT2SIGPPS4      .EQ  $0004


;----- SMT2WINPPS Bits -----------------------------------------------------
SMT2WINPPS0      .EQ  $0000
SMT2WINPPS1      .EQ  $0001
SMT2WINPPS2      .EQ  $0002
SMT2WINPPS3      .EQ  $0003
SMT2WINPPS4      .EQ  $0004


;----- ATCC3PPS Bits -----------------------------------------------------
ATCC3PPS0        .EQ  $0000
ATCC3PPS1        .EQ  $0001
ATCC3PPS2        .EQ  $0002
ATCC3PPS3        .EQ  $0003
ATCC3PPS4        .EQ  $0004


;----- RA0PPS Bits -----------------------------------------------------
RA0PPS0          .EQ  $0000
RA0PPS1          .EQ  $0001
RA0PPS2          .EQ  $0002
RA0PPS3          .EQ  $0003
RA0PPS4          .EQ  $0004


;----- RA1PPS Bits -----------------------------------------------------
RA1PPS0          .EQ  $0000
RA1PPS1          .EQ  $0001
RA1PPS2          .EQ  $0002
RA1PPS3          .EQ  $0003
RA1PPS4          .EQ  $0004


;----- RA2PPS Bits -----------------------------------------------------
RA2PPS0          .EQ  $0000
RA2PPS1          .EQ  $0001
RA2PPS2          .EQ  $0002
RA2PPS3          .EQ  $0003
RA2PPS4          .EQ  $0004


;----- RA4PPS Bits -----------------------------------------------------
RA4PPS0          .EQ  $0000
RA4PPS1          .EQ  $0001
RA4PPS2          .EQ  $0002
RA4PPS3          .EQ  $0003
RA4PPS4          .EQ  $0004


;----- RA5PPS Bits -----------------------------------------------------
RA5PPS0          .EQ  $0000
RA5PPS1          .EQ  $0001
RA5PPS2          .EQ  $0002
RA5PPS3          .EQ  $0003
RA5PPS4          .EQ  $0004


;----- RB4PPS Bits -----------------------------------------------------
RB4PPS0          .EQ  $0000
RB4PPS1          .EQ  $0001
RB4PPS2          .EQ  $0002
RB4PPS3          .EQ  $0003
RB4PPS4          .EQ  $0004


;----- RB5PPS Bits -----------------------------------------------------
RB5PPS0          .EQ  $0000
RB5PPS1          .EQ  $0001
RB5PPS2          .EQ  $0002
RB5PPS3          .EQ  $0003
RB5PPS4          .EQ  $0004


;----- RB6PPS Bits -----------------------------------------------------
RB6PPS0          .EQ  $0000
RB6PPS1          .EQ  $0001
RB6PPS2          .EQ  $0002
RB6PPS3          .EQ  $0003
RB6PPS4          .EQ  $0004


;----- RB7PPS Bits -----------------------------------------------------
RB7PPS0          .EQ  $0000
RB7PPS1          .EQ  $0001
RB7PPS2          .EQ  $0002
RB7PPS3          .EQ  $0003
RB7PPS4          .EQ  $0004


;----- RC0PPS Bits -----------------------------------------------------
RC0PPS0          .EQ  $0000
RC0PPS1          .EQ  $0001
RC0PPS2          .EQ  $0002
RC0PPS3          .EQ  $0003
RC0PPS4          .EQ  $0004


;----- RC1PPS Bits -----------------------------------------------------
RC1PPS0          .EQ  $0000
RC1PPS1          .EQ  $0001
RC1PPS2          .EQ  $0002
RC1PPS3          .EQ  $0003
RC1PPS4          .EQ  $0004


;----- RC2PPS Bits -----------------------------------------------------
RC2PPS0          .EQ  $0000
RC2PPS1          .EQ  $0001
RC2PPS2          .EQ  $0002
RC2PPS3          .EQ  $0003
RC2PPS4          .EQ  $0004


;----- RC3PPS Bits -----------------------------------------------------
RC3PPS0          .EQ  $0000
RC3PPS1          .EQ  $0001
RC3PPS2          .EQ  $0002
RC3PPS3          .EQ  $0003
RC3PPS4          .EQ  $0004


;----- RC4PPS Bits -----------------------------------------------------
RC4PPS0          .EQ  $0000
RC4PPS1          .EQ  $0001
RC4PPS2          .EQ  $0002
RC4PPS3          .EQ  $0003
RC4PPS4          .EQ  $0004


;----- RC5PPS Bits -----------------------------------------------------
RC5PPS0          .EQ  $0000
RC5PPS1          .EQ  $0001
RC5PPS2          .EQ  $0002
RC5PPS3          .EQ  $0003
RC5PPS4          .EQ  $0004


;----- RC6PPS Bits -----------------------------------------------------
RC6PPS0          .EQ  $0000
RC6PPS1          .EQ  $0001
RC6PPS2          .EQ  $0002
RC6PPS3          .EQ  $0003
RC6PPS4          .EQ  $0004


;----- RC7PPS Bits -----------------------------------------------------
RC7PPS0          .EQ  $0000
RC7PPS1          .EQ  $0001
RC7PPS2          .EQ  $0002
RC7PPS3          .EQ  $0003
RC7PPS4          .EQ  $0004


;----- CLCDATA Bits -----------------------------------------------------
MLC1OUT          .EQ  $0000
MLC2OUT          .EQ  $0001
MLC3OUT          .EQ  $0002
MLC4OUT          .EQ  $0003


;----- CLC1CON Bits -----------------------------------------------------
LC1INTN          .EQ  $0003
LC1INTP          .EQ  $0004
LC1OUT           .EQ  $0005
LC1EN            .EQ  $0007

LC1MODE0         .EQ  $0000
LC1MODE1         .EQ  $0001
LC1MODE2         .EQ  $0002

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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

INTN             .EQ  $0003
INTP             .EQ  $0004
OUT              .EQ  $0005
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
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
;   CONFIG3           8009h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008
_CONFIG3        .EQ  $8009

;----- CONFIG1 Options --------------------------------------------------
_FOSC_HS             .EQ  $3FFA  HS Oscillator, High-speed crystal/resonator connected between OSC1 and OSC2 pins
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

_IESO_OFF            .EQ  $2FFF  Internal External Switch Over mode is disabled
_IESO_ON             .EQ  $3FFF  Internal External Switch Over mode is enabled

_FCMEN_OFF           .EQ  $1FFF  Fail-Safe Clock Monitor is disabled
_FCMEN_ON            .EQ  $3FFF  Fail-Safe Clock Monitor is enabled

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to 1FFFh write protected, no addresses may be modified by PMCON control
_WRT_HALF            .EQ  $3FFD  000h to FFFh write protected, 1000h to 1FFFh may be modified by PMCON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 1FFFh may be modified by PMCON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_PPS1WAY_OFF         .EQ  $3FFB  The PPSLOCK bit can be set and cleared repeatedly by software
_PPS1WAY_ON          .EQ  $3FFF  The PPSLOCK bit cannot be cleared once it is set by software

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

_WDTCCS_LFINTOSC     .EQ  $07FF  31.0kHz LFINTOSC
_WDTCCS_MFINTOSC     .EQ  $0FFF  31.25 kHz HFINTOSC (MFINTOSC)
_WDTCCS_SWC          .EQ  $3FFF  Software control, controlled by WDTCS bits

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
