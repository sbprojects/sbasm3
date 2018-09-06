;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F18876 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F18876 microcontroller.  These names
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
PORTD            .EQ  $000F
PORTE            .EQ  $0010
TRISA            .EQ  $0011
TRISB            .EQ  $0012
TRISC            .EQ  $0013
TRISD            .EQ  $0014
TRISE            .EQ  $0015
LATA             .EQ  $0016
LATB             .EQ  $0017
LATC             .EQ  $0018
LATD             .EQ  $0019
LATE             .EQ  $001A
TMR0             .EQ  $001C
TMR0L            .EQ  $001C
PR0              .EQ  $001D
TMR0H            .EQ  $001D
T0CON0           .EQ  $001E
T0CON1           .EQ  $001F

;-----Bank1------------------
ADRES            .EQ  $008C
ADRESL           .EQ  $008C
ADRESH           .EQ  $008D
ADPREV           .EQ  $008E
ADPREVL          .EQ  $008E
ADPREVH          .EQ  $008F
ADACC            .EQ  $0090
ADACCL           .EQ  $0090
ADACCH           .EQ  $0091
ADCON0           .EQ  $0093
ADCON1           .EQ  $0094
ADCON2           .EQ  $0095
ADCON3           .EQ  $0096
ADSTAT           .EQ  $0097
ADCLK            .EQ  $0098
ADACT            .EQ  $0099
ADREF            .EQ  $009A
ADCAP            .EQ  $009B
ADPRE            .EQ  $009C
ADACQ            .EQ  $009D
ADPCH            .EQ  $009E

;-----Bank2------------------
ADCNT            .EQ  $010C
ADRPT            .EQ  $010D
ADLTH            .EQ  $010E
ADLTHL           .EQ  $010E
ADLTHH           .EQ  $010F
ADUTH            .EQ  $0110
ADUTHL           .EQ  $0110
ADUTHH           .EQ  $0111
ADSTPT           .EQ  $0112
ADSTPTL          .EQ  $0112
ADSTPTH          .EQ  $0113
ADFLTR           .EQ  $0114
ADFLTRL          .EQ  $0114
ADFLTRH          .EQ  $0115
ADERR            .EQ  $0116
ADERRL           .EQ  $0116
ADERRH           .EQ  $0117
RC1REG           .EQ  $0119
RCREG            .EQ  $0119
RCREG1           .EQ  $0119
TX1REG           .EQ  $011A
TXREG            .EQ  $011A
TXREG1           .EQ  $011A
SP1BRG           .EQ  $011B
SP1BRGL          .EQ  $011B
SPBRG            .EQ  $011B
SPBRG1           .EQ  $011B
SPBRGL           .EQ  $011B
SP1BRGH          .EQ  $011C
SPBRGH           .EQ  $011C
SPBRGH1          .EQ  $011C
RC1STA           .EQ  $011D
RCSTA            .EQ  $011D
RCSTA1           .EQ  $011D
TX1STA           .EQ  $011E
TXSTA            .EQ  $011E
TXSTA1           .EQ  $011E
BAUD1CON         .EQ  $011F
BAUDCON          .EQ  $011F
BAUDCON1         .EQ  $011F
BAUDCTL          .EQ  $011F
BAUDCTL1         .EQ  $011F

;-----Bank3------------------
SSP1BUF          .EQ  $018C
SSP1ADD          .EQ  $018D
SSP1MSK          .EQ  $018E
SSP1STAT         .EQ  $018F
SSP1CON1         .EQ  $0190
SSP1CON2         .EQ  $0191
SSP1CON3         .EQ  $0192
SSP2BUF          .EQ  $0196
SSP2ADD          .EQ  $0197
SSP2MSK          .EQ  $0198
SSP2STAT         .EQ  $0199
SSP2CON1         .EQ  $019A
SSP2CON2         .EQ  $019B
SSP2CON3         .EQ  $019C

;-----Bank4------------------
TMR1L            .EQ  $020C
TMR1H            .EQ  $020D
T1CON            .EQ  $020E
PR1              .EQ  $020F
T1GCON           .EQ  $020F
T1GATE           .EQ  $0210
TMR1GATE         .EQ  $0210
T1CLK            .EQ  $0211
TMR1CLK          .EQ  $0211
TMR3L            .EQ  $0212
TMR3H            .EQ  $0213
T3CON            .EQ  $0214
PR3              .EQ  $0215
T3GCON           .EQ  $0215
T3GATE           .EQ  $0216
TMR3GATE         .EQ  $0216
T3CLK            .EQ  $0217
TMR3CLK          .EQ  $0217
TMR5L            .EQ  $0218
TMR5H            .EQ  $0219
T5CON            .EQ  $021A
PR5              .EQ  $021B
T5GCON           .EQ  $021B
T5GATE           .EQ  $021C
TMR5GATE         .EQ  $021C
T5CLK            .EQ  $021D
TMR5CLK          .EQ  $021D
CCPTMRS0         .EQ  $021E
CCPTMRS1         .EQ  $021F

;-----Bank5------------------
T2TMR            .EQ  $028C
TMR2             .EQ  $028C
PR2              .EQ  $028D
T2PR             .EQ  $028D
T2CON            .EQ  $028E
T2HLT            .EQ  $028F
T2CLKCON         .EQ  $0290
T2RST            .EQ  $0291
T4TMR            .EQ  $0292
TMR4             .EQ  $0292
PR4              .EQ  $0293
T4PR             .EQ  $0293
T4CON            .EQ  $0294
T4HLT            .EQ  $0295
T4CLKCON         .EQ  $0296
T4RST            .EQ  $0297
T6TMR            .EQ  $0298
TMR6             .EQ  $0298
PR6              .EQ  $0299
T6PR             .EQ  $0299
T6CON            .EQ  $029A
T6HLT            .EQ  $029B
T6CLKCON         .EQ  $029C
T6RST            .EQ  $029D

;-----Bank6------------------
CCPR1            .EQ  $030C
CCPR1L           .EQ  $030C
CCPR1H           .EQ  $030D
CCP1CON          .EQ  $030E
CCP1CAP          .EQ  $030F
CCPR2            .EQ  $0310
CCPR2L           .EQ  $0310
CCPR2H           .EQ  $0311
CCP2CON          .EQ  $0312
CCP2CAP          .EQ  $0313
CCPR3            .EQ  $0314
CCPR3L           .EQ  $0314
CCPR3H           .EQ  $0315
CCP3CON          .EQ  $0316
CCP3CAP          .EQ  $0317
CCPR4            .EQ  $0318
CCPR4L           .EQ  $0318
CCPR4H           .EQ  $0319
CCP4CON          .EQ  $031A
CCP4CAP          .EQ  $031B
CCPR5            .EQ  $031C
CCPR5L           .EQ  $031C
CCPR5H           .EQ  $031D
CCP5CON          .EQ  $031E
CCP5CAP          .EQ  $031F

;-----Bank7------------------
PWM6DCL          .EQ  $038C
PWM6DCH          .EQ  $038D
PWM6CON          .EQ  $038E
PWM7DCL          .EQ  $0390
PWM7DCH          .EQ  $0391
PWM7CON          .EQ  $0392

;-----Bank8------------------
SCANLADRL        .EQ  $040C
SCANLADRH        .EQ  $040D
SCANHADRL        .EQ  $040E
SCANHADRH        .EQ  $040F
SCANCON0         .EQ  $0410
SCANTRIG         .EQ  $0411
CRCDATA          .EQ  $0416
CRCDATL          .EQ  $0416
CRCDATH          .EQ  $0417
CRCACC           .EQ  $0418
CRCACCL          .EQ  $0418
CRCACCH          .EQ  $0419
CRCSHFT          .EQ  $041A
CRCSHIFTL        .EQ  $041A
CRCSHIFTH        .EQ  $041B
CRCXOR           .EQ  $041C
CRCXORL          .EQ  $041C
CRCXORH          .EQ  $041D
CRCCON0          .EQ  $041E
CRCCON1          .EQ  $041F

;-----Bank9------------------
SMT1TMR          .EQ  $048C
SMT1TMRL         .EQ  $048C
SMT1TMRH         .EQ  $048D
SMT1TMRU         .EQ  $048E
SMT1CPR          .EQ  $048F
SMT1CPRL         .EQ  $048F
SMT1CPRH         .EQ  $0490
SMT1CPRU         .EQ  $0491
SMT1CPW          .EQ  $0492
SMT1CPWL         .EQ  $0492
SMT1CPWH         .EQ  $0493
SMT1CPWU         .EQ  $0494
SMT1PR           .EQ  $0495
SMT1PRL          .EQ  $0495
SMT1PRH          .EQ  $0496
SMT1PRU          .EQ  $0497
SMT1CON0         .EQ  $0498
SMT1CON1         .EQ  $0499
SMT1STAT         .EQ  $049A
SMT1CLK          .EQ  $049B
SMT1SIG          .EQ  $049C
SMT1WIN          .EQ  $049D

;-----Bank10------------------
SMT2TMR          .EQ  $050C
SMT2TMRL         .EQ  $050C
SMT2TMRH         .EQ  $050D
SMT2TMRU         .EQ  $050E
SMT2CPR          .EQ  $050F
SMT2CPRL         .EQ  $050F
SMT2CPRH         .EQ  $0510
SMT2CPRU         .EQ  $0511
SMT2CPW          .EQ  $0512
SMT2CPWL         .EQ  $0512
SMT2CPWH         .EQ  $0513
SMT2CPWU         .EQ  $0514
SMT2PR           .EQ  $0515
SMT2PRL          .EQ  $0515
SMT2PRH          .EQ  $0516
SMT2PRU          .EQ  $0517
SMT2CON0         .EQ  $0518
SMT2CON1         .EQ  $0519
SMT2STAT         .EQ  $051A
SMT2CLK          .EQ  $051B
SMT2SIG          .EQ  $051C
SMT2WIN          .EQ  $051D

;-----Bank11------------------
NCO1ACC          .EQ  $058C
NCO1ACCL         .EQ  $058C
NCO1ACCH         .EQ  $058D
NCO1ACCU         .EQ  $058E
NCO1INC          .EQ  $058F
NCO1INCL         .EQ  $058F
NCO1INCH         .EQ  $0590
NCO1INCU         .EQ  $0591
NCO1CON          .EQ  $0592
NCO1CLK          .EQ  $0593

;-----Bank12------------------
CWG1CLKCON       .EQ  $060C
CWG1ISM          .EQ  $060D
CWG1DBR          .EQ  $060E
CWG1DBF          .EQ  $060F
CWG1CON0         .EQ  $0610
CWG1CON1         .EQ  $0611
CWG1AS0          .EQ  $0612
CWG1AS1          .EQ  $0613
CWG1STR          .EQ  $0614
CWG2CLKCON       .EQ  $0616
CWG2ISM          .EQ  $0617
CWG2DBR          .EQ  $0618
CWG2DBF          .EQ  $0619
CWG2CON0         .EQ  $061A
CWG2CON1         .EQ  $061B
CWG2AS0          .EQ  $061C
CWG2AS1          .EQ  $061D
CWG2STR          .EQ  $061E

;-----Bank13------------------
CWG3CLKCON       .EQ  $068C
CWG3ISM          .EQ  $068D
CWG3DBR          .EQ  $068E
CWG3DBF          .EQ  $068F
CWG3CON0         .EQ  $0690
CWG3CON1         .EQ  $0691
CWG3AS0          .EQ  $0692
CWG3AS1          .EQ  $0693
CWG3STR          .EQ  $0694

;-----Bank14------------------
PIR0             .EQ  $070C
PIR1             .EQ  $070D
PIR2             .EQ  $070E
PIR3             .EQ  $070F
PIR4             .EQ  $0710
PIR5             .EQ  $0711
PIR6             .EQ  $0712
PIR7             .EQ  $0713
PIR8             .EQ  $0714
PIE0             .EQ  $0716
PIE1             .EQ  $0717
PIE2             .EQ  $0718
PIE3             .EQ  $0719
PIE4             .EQ  $071A
PIE5             .EQ  $071B
PIE6             .EQ  $071C
PIE7             .EQ  $071D
PIE8             .EQ  $071E

;-----Bank15------------------
PMD0             .EQ  $0796
PMD1             .EQ  $0797
PMD2             .EQ  $0798
PMD3             .EQ  $0799
PMD4             .EQ  $079A
PMD5             .EQ  $079B

;-----Bank16------------------
WDTCON0          .EQ  $080C
WDTCON1          .EQ  $080D
WDTPSL           .EQ  $080E
WDTPSH           .EQ  $080F
WDTTMR           .EQ  $0810
BORCON           .EQ  $0811
VREGCON          .EQ  $0812
PCON0            .EQ  $0813
CCDCON           .EQ  $0814
NVMADRL          .EQ  $081A
NVMADRH          .EQ  $081B
NVMDATL          .EQ  $081C
NVMDATH          .EQ  $081D
NVMCON1          .EQ  $081E
NVMCON2          .EQ  $081F

;-----Bank17------------------
CPUDOZE          .EQ  $088C
OSCCON1          .EQ  $088D
OSCCON2          .EQ  $088E
OSCCON3          .EQ  $088F
OSCSTAT          .EQ  $0890
OSCEN            .EQ  $0891
OSCTUNE          .EQ  $0892
OSCFRQ           .EQ  $0893
CLKRCON          .EQ  $0895
CLKRCLK          .EQ  $0896
MDCON0           .EQ  $0897
MDCON1           .EQ  $0898
MDSRC            .EQ  $0899
MDCARL           .EQ  $089A
MDCARH           .EQ  $089B

;-----Bank18------------------
FVRCON           .EQ  $090C
DAC1CON0         .EQ  $090E
DAC1CON1         .EQ  $090F
ZCDCON           .EQ  $091F

;-----Bank19------------------
CMOUT            .EQ  $098F
CMSTAT           .EQ  $098F
CM1CON0          .EQ  $0990
CM1CON1          .EQ  $0991
CM1NSEL          .EQ  $0992
CM1PSEL          .EQ  $0993
CM2CON0          .EQ  $0994
CM2CON1          .EQ  $0995
CM2NSEL          .EQ  $0996
CM2PSEL          .EQ  $0997

;-----Bank28------------------
CLCDATA          .EQ  $0E0F
CLC1CON          .EQ  $0E10
CLC1POL          .EQ  $0E11
CLC1SEL0         .EQ  $0E12
CLC1SEL1         .EQ  $0E13
CLC1SEL2         .EQ  $0E14
CLC1SEL3         .EQ  $0E15
CLC1GLS0         .EQ  $0E16
CLC1GLS1         .EQ  $0E17
CLC1GLS2         .EQ  $0E18
CLC1GLS3         .EQ  $0E19
CLC2CON          .EQ  $0E1A
CLC2POL          .EQ  $0E1B
CLC2SEL0         .EQ  $0E1C
CLC2SEL1         .EQ  $0E1D
CLC2SEL2         .EQ  $0E1E
CLC2SEL3         .EQ  $0E1F
CLC2GLS0         .EQ  $0E20
CLC2GLS1         .EQ  $0E21
CLC2GLS2         .EQ  $0E22
CLC2GLS3         .EQ  $0E23
CLC3CON          .EQ  $0E24
CLC3POL          .EQ  $0E25
CLC3SEL0         .EQ  $0E26
CLC3SEL1         .EQ  $0E27
CLC3SEL2         .EQ  $0E28
CLC3SEL3         .EQ  $0E29
CLC3GLS0         .EQ  $0E2A
CLC3GLS1         .EQ  $0E2B
CLC3GLS2         .EQ  $0E2C
CLC3GLS3         .EQ  $0E2D
CLC4CON          .EQ  $0E2E
CLC4POL          .EQ  $0E2F
CLC4SEL0         .EQ  $0E30
CLC4SEL1         .EQ  $0E31
CLC4SEL2         .EQ  $0E32
CLC4SEL3         .EQ  $0E33
CLC4GLS0         .EQ  $0E34
CLC4GLS1         .EQ  $0E35
CLC4GLS2         .EQ  $0E36
CLC4GLS3         .EQ  $0E37

;-----Bank29------------------
PPSLOCK          .EQ  $0E8F
INTPPS           .EQ  $0E90
T0CKIPPS         .EQ  $0E91
T1CKIPPS         .EQ  $0E92
T1GPPS           .EQ  $0E93
T3CKIPPS         .EQ  $0E94
T3GPPS           .EQ  $0E95
T5CKIPPS         .EQ  $0E96
T5GPPS           .EQ  $0E97
T2AINPPS         .EQ  $0E9C
T4AINPPS         .EQ  $0E9D
T6AINPPS         .EQ  $0E9E
CCP1PPS          .EQ  $0EA1
CCP2PPS          .EQ  $0EA2
CCP3PPS          .EQ  $0EA3
CCP4PPS          .EQ  $0EA4
CCP5PPS          .EQ  $0EA5
SMT1WINPPS       .EQ  $0EA9
SMT1SIGPPS       .EQ  $0EAA
SMT2WINPPS       .EQ  $0EAB
SMT2SIGPPS       .EQ  $0EAC
CWG1PPS          .EQ  $0EB1
CWG2PPS          .EQ  $0EB2
CWG3PPS          .EQ  $0EB3
MDCARLPPS        .EQ  $0EB8
MDCARHPPS        .EQ  $0EB9
MDSRCPPS         .EQ  $0EBA
CLCIN0PPS        .EQ  $0EBB
CLCIN1PPS        .EQ  $0EBC
CLCIN2PPS        .EQ  $0EBD
CLCIN3PPS        .EQ  $0EBE
ADCACTPPS        .EQ  $0EC3
SSP1CLKPPS       .EQ  $0EC5
SSP1DATPPS       .EQ  $0EC6
SSP1SSPPS        .EQ  $0EC7
SSP2CLKPPS       .EQ  $0EC8
SSP2DATPPS       .EQ  $0EC9
SSP2SSPPS        .EQ  $0ECA
RXPPS            .EQ  $0ECB
TXPPS            .EQ  $0ECC

;-----Bank30------------------
RA0PPS           .EQ  $0F10
RA1PPS           .EQ  $0F11
RA2PPS           .EQ  $0F12
RA3PPS           .EQ  $0F13
RA4PPS           .EQ  $0F14
RA5PPS           .EQ  $0F15
RA6PPS           .EQ  $0F16
RA7PPS           .EQ  $0F17
RB0PPS           .EQ  $0F18
RB1PPS           .EQ  $0F19
RB2PPS           .EQ  $0F1A
RB3PPS           .EQ  $0F1B
RB4PPS           .EQ  $0F1C
RB5PPS           .EQ  $0F1D
RB6PPS           .EQ  $0F1E
RB7PPS           .EQ  $0F1F
RC0PPS           .EQ  $0F20
RC1PPS           .EQ  $0F21
RC2PPS           .EQ  $0F22
RC3PPS           .EQ  $0F23
RC4PPS           .EQ  $0F24
RC5PPS           .EQ  $0F25
RC6PPS           .EQ  $0F26
RC7PPS           .EQ  $0F27
RD0PPS           .EQ  $0F28
RD1PPS           .EQ  $0F29
RD2PPS           .EQ  $0F2A
RD3PPS           .EQ  $0F2B
RD4PPS           .EQ  $0F2C
RD5PPS           .EQ  $0F2D
RD6PPS           .EQ  $0F2E
RD7PPS           .EQ  $0F2F
RE0PPS           .EQ  $0F30
RE1PPS           .EQ  $0F31
RE2PPS           .EQ  $0F32
ANSELA           .EQ  $0F38
WPUA             .EQ  $0F39
ODCONA           .EQ  $0F3A
SLRCONA          .EQ  $0F3B
INLVLA           .EQ  $0F3C
IOCAP            .EQ  $0F3D
IOCAN            .EQ  $0F3E
IOCAF            .EQ  $0F3F
CCDNA            .EQ  $0F40
CCDPA            .EQ  $0F41
ANSELB           .EQ  $0F43
WPUB             .EQ  $0F44
ODCONB           .EQ  $0F45
SLRCONB          .EQ  $0F46
INLVLB           .EQ  $0F47
IOCBP            .EQ  $0F48
IOCBN            .EQ  $0F49
IOCBF            .EQ  $0F4A
CCDNB            .EQ  $0F4B
CCDPB            .EQ  $0F4C
ANSELC           .EQ  $0F4E
WPUC             .EQ  $0F4F
ODCONC           .EQ  $0F50
SLRCONC          .EQ  $0F51
INLVLC           .EQ  $0F52
IOCCP            .EQ  $0F53
IOCCN            .EQ  $0F54
IOCCF            .EQ  $0F55
CCDNC            .EQ  $0F56
CCDPC            .EQ  $0F57
ANSELD           .EQ  $0F59
WPUD             .EQ  $0F5A
ODCOND           .EQ  $0F5B
SLRCOND          .EQ  $0F5C
INLVLD           .EQ  $0F5D
CCDND            .EQ  $0F61
CCDPD            .EQ  $0F62
ANSELE           .EQ  $0F64
WPUE             .EQ  $0F65
ODCONE           .EQ  $0F66
SLRCONE          .EQ  $0F67
INLVLE           .EQ  $0F68
IOCEP            .EQ  $0F69
IOCEN            .EQ  $0F6A
IOCEF            .EQ  $0F6B
CCDNE            .EQ  $0F6C
CCDPE            .EQ  $0F6D

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
INTEDG           .EQ  $0000
PEIE             .EQ  $0006
GIE              .EQ  $0007


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


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003


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


;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002


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


;----- LATD Bits -----------------------------------------------------
LATD0            .EQ  $0000
LATD1            .EQ  $0001
LATD2            .EQ  $0002
LATD3            .EQ  $0003
LATD4            .EQ  $0004
LATD5            .EQ  $0005
LATD6            .EQ  $0006
LATD7            .EQ  $0007


;----- LATE Bits -----------------------------------------------------
LATE0            .EQ  $0000
LATE1            .EQ  $0001
LATE2            .EQ  $0002


;----- TMR0 Bits -----------------------------------------------------
TMR0L0           .EQ  $0000
TMR0L1           .EQ  $0001
TMR0L2           .EQ  $0002
TMR0L3           .EQ  $0003
TMR0L4           .EQ  $0004
TMR0L5           .EQ  $0005
TMR0L6           .EQ  $0006
TMR0L7           .EQ  $0007


;----- TMR0L Bits -----------------------------------------------------
TMR0L0           .EQ  $0000
TMR0L1           .EQ  $0001
TMR0L2           .EQ  $0002
TMR0L3           .EQ  $0003
TMR0L4           .EQ  $0004
TMR0L5           .EQ  $0005
TMR0L6           .EQ  $0006
TMR0L7           .EQ  $0007


;----- PR0 Bits -----------------------------------------------------
TMR0H0           .EQ  $0000
TMR0H1           .EQ  $0001
TMR0H2           .EQ  $0002
TMR0H3           .EQ  $0003
TMR0H4           .EQ  $0004
TMR0H5           .EQ  $0005
TMR0H6           .EQ  $0006
TMR0H7           .EQ  $0007

T0PR0            .EQ  $0000
T0PR1            .EQ  $0001
T0PR2            .EQ  $0002
T0PR3            .EQ  $0003
T0PR4            .EQ  $0004
T0PR5            .EQ  $0005
T0PR6            .EQ  $0006
T0PR7            .EQ  $0007


;----- TMR0H Bits -----------------------------------------------------
TMR0H0           .EQ  $0000
TMR0H1           .EQ  $0001
TMR0H2           .EQ  $0002
TMR0H3           .EQ  $0003
TMR0H4           .EQ  $0004
TMR0H5           .EQ  $0005
TMR0H6           .EQ  $0006
TMR0H7           .EQ  $0007

T0PR0            .EQ  $0000
T0PR1            .EQ  $0001
T0PR2            .EQ  $0002
T0PR3            .EQ  $0003
T0PR4            .EQ  $0004
T0PR5            .EQ  $0005
T0PR6            .EQ  $0006
T0PR7            .EQ  $0007


;----- T0CON0 Bits -----------------------------------------------------
T016BIT          .EQ  $0004
T0OUT            .EQ  $0005
T0EN             .EQ  $0007

T0OUTPS0         .EQ  $0000
T0OUTPS1         .EQ  $0001
T0OUTPS2         .EQ  $0002
T0OUTPS3         .EQ  $0003


;----- T0CON1 Bits -----------------------------------------------------
T0ASYNC          .EQ  $0004

T0CKPS0          .EQ  $0000
T0CKPS1          .EQ  $0001
T0CKPS2          .EQ  $0002
T0CKPS3          .EQ  $0003
T0CS0            .EQ  $0005
T0CS1            .EQ  $0006
T0CS2            .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002
T0PS3            .EQ  $0003



;----- ADPREVL Bits -----------------------------------------------------
ADPREV0          .EQ  $0000
ADPREV1          .EQ  $0001
ADPREV2          .EQ  $0002
ADPREV3          .EQ  $0003
ADPREV4          .EQ  $0004
ADPREV5          .EQ  $0005
ADPREV6          .EQ  $0006
ADPREV7          .EQ  $0007


;----- ADPREVH Bits -----------------------------------------------------
ADPREV8          .EQ  $0000
ADPREV9          .EQ  $0001
ADPREV10         .EQ  $0002
ADPREV11         .EQ  $0003
ADPREV12         .EQ  $0004
ADPREV13         .EQ  $0005
ADPREV14         .EQ  $0006
ADPREV15         .EQ  $0007


;----- ADACCL Bits -----------------------------------------------------
ADACC0           .EQ  $0000
ADACC1           .EQ  $0001
ADACC2           .EQ  $0002
ADACC3           .EQ  $0003
ADACC4           .EQ  $0004
ADACC5           .EQ  $0005
ADACC6           .EQ  $0006
ADACC7           .EQ  $0007


;----- ADACCH Bits -----------------------------------------------------
ADACC8           .EQ  $0000
ADACC9           .EQ  $0001
ADACC10          .EQ  $0002
ADACC11          .EQ  $0003
ADACC12          .EQ  $0004
ADACC13          .EQ  $0005
ADACC14          .EQ  $0006
ADACC15          .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADGO             .EQ  $0000
ADCS             .EQ  $0004
ADCONT           .EQ  $0006
ADON             .EQ  $0007

DONE             .EQ  $0000

NOT_DONE         .EQ  $0000

GO               .EQ  $0000
ADFM0            .EQ  $0002
ADFM1            .EQ  $0003

GO_NOT_DONE      .EQ  $0000


;----- ADCON1 Bits -----------------------------------------------------
ADDSEN           .EQ  $0000
ADGPOL           .EQ  $0005
ADIPEN           .EQ  $0006
ADPPOL           .EQ  $0007


;----- ADCON2 Bits -----------------------------------------------------
ADACLR           .EQ  $0003
ADPSIS           .EQ  $0007

ADMD0            .EQ  $0000
ADMD1            .EQ  $0001
ADMD2            .EQ  $0002
ADCRS0           .EQ  $0004
ADCRS1           .EQ  $0005
ADCRS2           .EQ  $0006


;----- ADCON3 Bits -----------------------------------------------------
ADTMD0           .EQ  $0000
ADTMD1           .EQ  $0001
ADTMD2           .EQ  $0002
ADCALC0          .EQ  $0004
ADCALC1          .EQ  $0005
ADCALC2          .EQ  $0006

ADSOI            .EQ  $0003


;----- ADSTAT Bits -----------------------------------------------------
ADMACT           .EQ  $0003
ADMATH           .EQ  $0004
ADLTHR           .EQ  $0005
ADUTHR           .EQ  $0006
ADAOV            .EQ  $0007

ADSTAT0          .EQ  $0000
ADSTAT1          .EQ  $0001
ADSTAT2          .EQ  $0002


;----- ADCLK Bits -----------------------------------------------------
ADCCS0           .EQ  $0000
ADCCS1           .EQ  $0001
ADCCS2           .EQ  $0002
ADCCS3           .EQ  $0003
ADCCS4           .EQ  $0004
ADCCS5           .EQ  $0005


;----- ADACT Bits -----------------------------------------------------
ADACT0           .EQ  $0000
ADACT1           .EQ  $0001
ADACT2           .EQ  $0002
ADACT3           .EQ  $0003
ADACT4           .EQ  $0004


;----- ADREF Bits -----------------------------------------------------
ADNREF           .EQ  $0004

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001


;----- ADCAP Bits -----------------------------------------------------
ADCAP0           .EQ  $0000
ADCAP1           .EQ  $0001
ADCAP2           .EQ  $0002
ADCAP3           .EQ  $0003
ADCAP4           .EQ  $0004


;----- ADPRE Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006
ADPRE7           .EQ  $0007


;----- ADACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006
ADACQ7           .EQ  $0007


;----- ADPCH Bits -----------------------------------------------------
ADPCH0           .EQ  $0000
ADPCH1           .EQ  $0001
ADPCH2           .EQ  $0002
ADPCH3           .EQ  $0003
ADPCH4           .EQ  $0004
ADPCH5           .EQ  $0005


;----- ADCNT Bits -----------------------------------------------------
ADCNT0           .EQ  $0000
ADCNT1           .EQ  $0001
ADCNT2           .EQ  $0002
ADCNT3           .EQ  $0003
ADCNT4           .EQ  $0004
ADCNT5           .EQ  $0005
ADCNT6           .EQ  $0006
ADCNT7           .EQ  $0007


;----- ADRPT Bits -----------------------------------------------------
ADRPT0           .EQ  $0000
ADRPT1           .EQ  $0001
ADRPT2           .EQ  $0002
ADRPT3           .EQ  $0003
ADRPT4           .EQ  $0004
ADRPT5           .EQ  $0005
ADRPT6           .EQ  $0006
ADRPT7           .EQ  $0007


;----- ADLTHL Bits -----------------------------------------------------
ADLTH0           .EQ  $0000
ADLTH1           .EQ  $0001
ADLTH2           .EQ  $0002
ADLTH3           .EQ  $0003
ADLTH4           .EQ  $0004
ADLTH5           .EQ  $0005
ADLTH6           .EQ  $0006
ADLTH7           .EQ  $0007


;----- ADLTHH Bits -----------------------------------------------------
ADLTH8           .EQ  $0000
ADLTH9           .EQ  $0001
ADLTH10          .EQ  $0002
ADLTH11          .EQ  $0003
ADLTH12          .EQ  $0004
ADLTH13          .EQ  $0005
ADLTH14          .EQ  $0006
ADLTH15          .EQ  $0007


;----- ADUTHL Bits -----------------------------------------------------
ADUTH0           .EQ  $0000
ADUTH1           .EQ  $0001
ADUTH2           .EQ  $0002
ADUTH3           .EQ  $0003
ADUTH4           .EQ  $0004
ADUTH5           .EQ  $0005
ADUTH6           .EQ  $0006
ADUTH7           .EQ  $0007


;----- ADUTHH Bits -----------------------------------------------------
ADUTH8           .EQ  $0000
ADUTH9           .EQ  $0001
ADUTH10          .EQ  $0002
ADUTH11          .EQ  $0003
ADUTH12          .EQ  $0004
ADUTH13          .EQ  $0005
ADUTH14          .EQ  $0006
ADUTH15          .EQ  $0007


;----- ADSTPTL Bits -----------------------------------------------------
ADSTPT0          .EQ  $0000
ADSTPT1          .EQ  $0001
ADSTPT2          .EQ  $0002
ADSTPT3          .EQ  $0003
ADSTPT4          .EQ  $0004
ADSTPT5          .EQ  $0005
ADSTPT6          .EQ  $0006
ADSTPT7          .EQ  $0007


;----- ADSTPTH Bits -----------------------------------------------------
ADSTPT8          .EQ  $0000
ADSTPT9          .EQ  $0001
ADSTPT10         .EQ  $0002
ADSTPT11         .EQ  $0003
ADSTPT12         .EQ  $0004
ADSTPT13         .EQ  $0005
ADSTPT14         .EQ  $0006
ADSTPT15         .EQ  $0007


;----- ADFLTRL Bits -----------------------------------------------------
ADFLTR0          .EQ  $0000
ADFLTR1          .EQ  $0001
ADFLTR2          .EQ  $0002
ADFLTR3          .EQ  $0003
ADFLTR4          .EQ  $0004
ADFLTR5          .EQ  $0005
ADFLTR6          .EQ  $0006
ADFLTR7          .EQ  $0007


;----- ADFLTRH Bits -----------------------------------------------------
ADFLTR8          .EQ  $0000
ADFLTR9          .EQ  $0001
ADFLTR10         .EQ  $0002
ADFLTR11         .EQ  $0003
ADFLTR12         .EQ  $0004
ADFLTR13         .EQ  $0005
ADFLTR14         .EQ  $0006
ADFLTR15         .EQ  $0007


;----- ADERRL Bits -----------------------------------------------------
ADERR0           .EQ  $0000
ADERR1           .EQ  $0001
ADERR2           .EQ  $0002
ADERR3           .EQ  $0003
ADERR4           .EQ  $0004
ADERR5           .EQ  $0005
ADERR6           .EQ  $0006
ADERR7           .EQ  $0007


;----- ADERRH Bits -----------------------------------------------------
ADERR8           .EQ  $0000
ADERR9           .EQ  $0001
ADERR10          .EQ  $0002
ADERR11          .EQ  $0003
ADERR12          .EQ  $0004
ADERR13          .EQ  $0005
ADERR14          .EQ  $0006
ADERR15          .EQ  $0007


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


;----- SSP1MSK Bits -----------------------------------------------------
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

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005


;----- SSP1CON1 Bits -----------------------------------------------------
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


ADMSK1           .EQ  $0001
ADMSK2           .EQ  $0002
ADMSK3           .EQ  $0003
ADMSK4           .EQ  $0004
ADMSK5           .EQ  $0005


;----- SSP1CON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- SSP2MSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SSP2STAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DAT          .EQ  $0005


;----- SSP2CON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP2CON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


ADMSK1           .EQ  $0001
ADMSK2           .EQ  $0002
ADMSK3           .EQ  $0003
ADMSK4           .EQ  $0004
ADMSK5           .EQ  $0005


;----- SSP2CON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


;----- TMR1L Bits -----------------------------------------------------
TMR1L0           .EQ  $0000
TMR1L1           .EQ  $0001
TMR1L2           .EQ  $0002
TMR1L3           .EQ  $0003
TMR1L4           .EQ  $0004
TMR1L5           .EQ  $0005
TMR1L6           .EQ  $0006
TMR1L7           .EQ  $0007



;----- TMR1H Bits -----------------------------------------------------
TMR1H0           .EQ  $0000
TMR1H1           .EQ  $0001
TMR1H2           .EQ  $0002
TMR1H3           .EQ  $0003
TMR1H4           .EQ  $0004
TMR1H5           .EQ  $0005
TMR1H6           .EQ  $0006
TMR1H7           .EQ  $0007



;----- T1CON Bits -----------------------------------------------------
ON_T1CON         .EQ  $0000
RD16             .EQ  $0001
NOT_SYNC         .EQ  $0002

TMR1ON           .EQ  $0000
T1RD16           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005

CKPS0            .EQ  $0004
CKPS1            .EQ  $0005


;----- PR1 Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
T1GE             .EQ  $0007

T1GGO            .EQ  $0003


;----- T1GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
T1GE             .EQ  $0007

T1GGO            .EQ  $0003


;----- T1GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GSS2           .EQ  $0002
T1GSS3           .EQ  $0003
T1GSS4           .EQ  $0004


;----- TMR1GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GSS2           .EQ  $0002
T1GSS3           .EQ  $0003
T1GSS4           .EQ  $0004


;----- T1CLK Bits -----------------------------------------------------
T1CS0            .EQ  $0000
T1CS1            .EQ  $0001
T1CS2            .EQ  $0002
T1CS3            .EQ  $0003

CS0              .EQ  $0000
CS1              .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


;----- TMR1CLK Bits -----------------------------------------------------
T1CS0            .EQ  $0000
T1CS1            .EQ  $0001
T1CS2            .EQ  $0002
T1CS3            .EQ  $0003

CS0              .EQ  $0000
CS1              .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


;----- TMR3L Bits -----------------------------------------------------
TMR3L0           .EQ  $0000
TMR3L1           .EQ  $0001
TMR3L2           .EQ  $0002
TMR3L3           .EQ  $0003
TMR3L4           .EQ  $0004
TMR3L5           .EQ  $0005
TMR3L6           .EQ  $0006
TMR3L7           .EQ  $0007



;----- TMR3H Bits -----------------------------------------------------
TMR3H0           .EQ  $0000
TMR3H1           .EQ  $0001
TMR3H2           .EQ  $0002
TMR3H3           .EQ  $0003
TMR3H4           .EQ  $0004
TMR3H5           .EQ  $0005
TMR3H6           .EQ  $0006
TMR3H7           .EQ  $0007



;----- T3CON Bits -----------------------------------------------------
ON_T3CON         .EQ  $0000
RD16             .EQ  $0001
NOT_SYNC         .EQ  $0002

TMR3ON           .EQ  $0000
T3RD16           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005

CKPS0            .EQ  $0004
CKPS1            .EQ  $0005


;----- PR3 Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T3GVAL           .EQ  $0002
T3GGO_NOT_DONE   .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
T3GE             .EQ  $0007

T3GGO            .EQ  $0003


;----- T3GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T3GVAL           .EQ  $0002
T3GGO_NOT_DONE   .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
T3GE             .EQ  $0007

T3GGO            .EQ  $0003


;----- T3GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GSS2           .EQ  $0002
T3GSS3           .EQ  $0003
T3GSS4           .EQ  $0004


;----- TMR3GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GSS2           .EQ  $0002
T3GSS3           .EQ  $0003
T3GSS4           .EQ  $0004


;----- T3CLK Bits -----------------------------------------------------
T3CS0            .EQ  $0000
T3CS1            .EQ  $0001
T3CS2            .EQ  $0002
T3CS3            .EQ  $0003

CS0              .EQ  $0000
CS1              .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


;----- TMR3CLK Bits -----------------------------------------------------
T3CS0            .EQ  $0000
T3CS1            .EQ  $0001
T3CS2            .EQ  $0002
T3CS3            .EQ  $0003

CS0              .EQ  $0000
CS1              .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


;----- TMR5L Bits -----------------------------------------------------
TMR5L0           .EQ  $0000
TMR5L1           .EQ  $0001
TMR5L2           .EQ  $0002
TMR5L3           .EQ  $0003
TMR5L4           .EQ  $0004
TMR5L5           .EQ  $0005
TMR5L6           .EQ  $0006
TMR5L7           .EQ  $0007



;----- TMR5H Bits -----------------------------------------------------
TMR5H0           .EQ  $0000
TMR5H1           .EQ  $0001
TMR5H2           .EQ  $0002
TMR5H3           .EQ  $0003
TMR5H4           .EQ  $0004
TMR5H5           .EQ  $0005
TMR5H6           .EQ  $0006
TMR5H7           .EQ  $0007



;----- T5CON Bits -----------------------------------------------------
ON_T5CON         .EQ  $0000
RD16             .EQ  $0001
NOT_SYNC         .EQ  $0002

TMR5ON           .EQ  $0000
T5RD16           .EQ  $0001
NOT_T5SYNC       .EQ  $0002
T5CKPS0          .EQ  $0004
T5CKPS1          .EQ  $0005

CKPS0            .EQ  $0004
CKPS1            .EQ  $0005


;----- PR5 Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T5GVAL           .EQ  $0002
T5GGO_NOT_DONE   .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
T5GE             .EQ  $0007

T5GGO            .EQ  $0003


;----- T5GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T5GVAL           .EQ  $0002
T5GGO_NOT_DONE   .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
T5GE             .EQ  $0007

T5GGO            .EQ  $0003


;----- T5GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001
T5GSS2           .EQ  $0002
T5GSS3           .EQ  $0003
T5GSS4           .EQ  $0004


;----- TMR5GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001
T5GSS2           .EQ  $0002
T5GSS3           .EQ  $0003
T5GSS4           .EQ  $0004


;----- T5CLK Bits -----------------------------------------------------
T5CS0            .EQ  $0000
T5CS1            .EQ  $0001
T5CS2            .EQ  $0002
T5CS3            .EQ  $0003

CS0              .EQ  $0000
CS1              .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


;----- TMR5CLK Bits -----------------------------------------------------
T5CS0            .EQ  $0000
T5CS1            .EQ  $0001
T5CS2            .EQ  $0002
T5CS3            .EQ  $0003

CS0              .EQ  $0000
CS1              .EQ  $0001
CS2              .EQ  $0002
CS3              .EQ  $0003


;----- CCPTMRS0 Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C2TSEL0          .EQ  $0002
C2TSEL1          .EQ  $0003
C3TSEL0          .EQ  $0004
C3TSEL1          .EQ  $0005
C4TSEL0          .EQ  $0006
C4TSEL1          .EQ  $0007


;----- CCPTMRS1 Bits -----------------------------------------------------
C5TSEL0          .EQ  $0000
C5TSEL1          .EQ  $0001
P6TSEL0          .EQ  $0002
P6TSEL1          .EQ  $0003
P7TSEL0          .EQ  $0004
P7TSEL1          .EQ  $0005


;----- T2CON Bits -----------------------------------------------------
ON_T2CON         .EQ  $0007

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


;----- T4CON Bits -----------------------------------------------------
ON_T4CON         .EQ  $0007

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


;----- CCP1CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP1CON      .EQ  $0005
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
CTS2             .EQ  $0002


CCP1CTS0         .EQ  $0000
CCP1CTS1         .EQ  $0001
CCP1CTS2         .EQ  $0002


;----- CCP2CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP2CON      .EQ  $0005
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
CTS2             .EQ  $0002


CCP2CTS0         .EQ  $0000
CCP2CTS1         .EQ  $0001
CCP2CTS2         .EQ  $0002


;----- CCP3CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP3CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP3FMT          .EQ  $0004
CCP3OUT          .EQ  $0005
CCP3OE           .EQ  $0006
CCP3EN           .EQ  $0007

CCP3MODE0        .EQ  $0000
CCP3MODE1        .EQ  $0001
CCP3MODE2        .EQ  $0002
CCP3MODE3        .EQ  $0003


;----- CCP3CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001
CTS2             .EQ  $0002


CCP3CTS0         .EQ  $0000
CCP3CTS1         .EQ  $0001
CCP3CTS2         .EQ  $0002


;----- CCP4CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP4CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP4FMT          .EQ  $0004
CCP4OUT          .EQ  $0005
CCP4OE           .EQ  $0006
CCP4EN           .EQ  $0007

CCP4MODE0        .EQ  $0000
CCP4MODE1        .EQ  $0001
CCP4MODE2        .EQ  $0002
CCP4MODE3        .EQ  $0003


;----- CCP4CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001
CTS2             .EQ  $0002


CCP4CTS0         .EQ  $0000
CCP4CTS1         .EQ  $0001
CCP4CTS2         .EQ  $0002


;----- CCP5CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP5CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003

CCP5FMT          .EQ  $0004
CCP5OUT          .EQ  $0005
CCP5OE           .EQ  $0006
CCP5EN           .EQ  $0007

CCP5MODE0        .EQ  $0000
CCP5MODE1        .EQ  $0001
CCP5MODE2        .EQ  $0002
CCP5MODE3        .EQ  $0003


;----- CCP5CAP Bits -----------------------------------------------------
CTS0             .EQ  $0000
CTS1             .EQ  $0001
CTS2             .EQ  $0002


CCP5CTS0         .EQ  $0000
CCP5CTS1         .EQ  $0001
CCP5CTS2         .EQ  $0002


;----- PWM6DCL Bits -----------------------------------------------------
DC0              .EQ  $0006
DC1              .EQ  $0007

PWM6DC0          .EQ  $0006
PWM6DC1          .EQ  $0007

PWMPW0           .EQ  $0006
PWMPW1           .EQ  $0007


;----- PWM6DCH Bits -----------------------------------------------------
DC2              .EQ  $0000
DC3              .EQ  $0001
DC4              .EQ  $0002
DC5              .EQ  $0003
DC6              .EQ  $0004
DC7              .EQ  $0005
DC8              .EQ  $0006
DC9              .EQ  $0007

PWM6DC2          .EQ  $0000
PWM6DC3          .EQ  $0001
PWM6DC4          .EQ  $0002
PWM6DC5          .EQ  $0003
PWM6DC6          .EQ  $0004
PWM6DC7          .EQ  $0005
PWM6DC8          .EQ  $0006
PWM6DC9          .EQ  $0007

PWMPW2           .EQ  $0000
PWMPW3           .EQ  $0001
PWMPW4           .EQ  $0002
PWMPW5           .EQ  $0003
PWMPW6           .EQ  $0004
PWMPW7           .EQ  $0005
PWMPW8           .EQ  $0006
PWMPW9           .EQ  $0007


;----- PWM6CON Bits -----------------------------------------------------
POL_PWM6CON      .EQ  $0004
OUT_PWM6CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM6POL          .EQ  $0004
PWM6OUT          .EQ  $0005
PWM6OE           .EQ  $0006
PWM6EN           .EQ  $0007


;----- PWM7DCL Bits -----------------------------------------------------
DC0              .EQ  $0006
DC1              .EQ  $0007

PWM7DC0          .EQ  $0006
PWM7DC1          .EQ  $0007

PWMPW0           .EQ  $0006
PWMPW1           .EQ  $0007


;----- PWM7DCH Bits -----------------------------------------------------
DC2              .EQ  $0000
DC3              .EQ  $0001
DC4              .EQ  $0002
DC5              .EQ  $0003
DC6              .EQ  $0004
DC7              .EQ  $0005
DC8              .EQ  $0006
DC9              .EQ  $0007

PWM7DC2          .EQ  $0000
PWM7DC3          .EQ  $0001
PWM7DC4          .EQ  $0002
PWM7DC5          .EQ  $0003
PWM7DC6          .EQ  $0004
PWM7DC7          .EQ  $0005
PWM7DC8          .EQ  $0006
PWM7DC9          .EQ  $0007

PWMPW2           .EQ  $0000
PWMPW3           .EQ  $0001
PWMPW4           .EQ  $0002
PWMPW5           .EQ  $0003
PWMPW6           .EQ  $0004
PWMPW7           .EQ  $0005
PWMPW8           .EQ  $0006
PWMPW9           .EQ  $0007


;----- PWM7CON Bits -----------------------------------------------------
POL_PWM7CON      .EQ  $0004
OUT_PWM7CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM7POL          .EQ  $0004
PWM7OUT          .EQ  $0005
PWM7OE           .EQ  $0006
PWM7EN           .EQ  $0007


;----- SCANLADRL Bits -----------------------------------------------------
LADR0            .EQ  $0000
LADR1            .EQ  $0001
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
HADR2            .EQ  $0002
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

DABORT           .EQ  $0004


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
DATA0            .EQ  $0000
DATA1            .EQ  $0001
DATA2            .EQ  $0002
DATA3            .EQ  $0003
DATA4            .EQ  $0004
DATA5            .EQ  $0005
DATA6            .EQ  $0006
DATA7            .EQ  $0007


;----- CRCDATH Bits -----------------------------------------------------
DATA8            .EQ  $0000
DATA9            .EQ  $0001
DATA10           .EQ  $0002
DATA11           .EQ  $0003
DATA12           .EQ  $0004
DATA13           .EQ  $0005
DATA14           .EQ  $0006
DATA15           .EQ  $0007


;----- CRCACCL Bits -----------------------------------------------------
ACC0             .EQ  $0000
ACC1             .EQ  $0001
ACC2             .EQ  $0002
ACC3             .EQ  $0003
ACC4             .EQ  $0004
ACC5             .EQ  $0005
ACC6             .EQ  $0006
ACC7             .EQ  $0007


;----- CRCACCH Bits -----------------------------------------------------
ACC8             .EQ  $0000
ACC9             .EQ  $0001
ACC10            .EQ  $0002
ACC11            .EQ  $0003
ACC12            .EQ  $0004
ACC13            .EQ  $0005
ACC14            .EQ  $0006
ACC15            .EQ  $0007


;----- CRCSHIFTL Bits -----------------------------------------------------
SHFT0            .EQ  $0000
SHFT1            .EQ  $0001
SHFT2            .EQ  $0002
SHFT3            .EQ  $0003
SHFT4            .EQ  $0004
SHFT5            .EQ  $0005
SHFT6            .EQ  $0006
SHFT7            .EQ  $0007


;----- CRCSHIFTH Bits -----------------------------------------------------
SHFT8            .EQ  $0000
SHFT9            .EQ  $0001
SHFT10           .EQ  $0002
SHFT11           .EQ  $0003
SHFT12           .EQ  $0004
SHFT13           .EQ  $0005
SHFT14           .EQ  $0006
SHFT15           .EQ  $0007


;----- CRCXORL Bits -----------------------------------------------------
X1               .EQ  $0001
X2               .EQ  $0002
X3               .EQ  $0003
X4               .EQ  $0004
X5               .EQ  $0005
X6               .EQ  $0006
X7               .EQ  $0007


;----- CRCXORH Bits -----------------------------------------------------
X8               .EQ  $0000
X9               .EQ  $0001
X10              .EQ  $0002
X11              .EQ  $0003
X12              .EQ  $0004
X13              .EQ  $0005
X14              .EQ  $0006
X15              .EQ  $0007


;----- CRCCON0 Bits -----------------------------------------------------
FULL             .EQ  $0000
SHIFTM           .EQ  $0001
ACCM             .EQ  $0004
BUSY             .EQ  $0005
CRCGO            .EQ  $0006
EN               .EQ  $0007

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
CPR0             .EQ  $0000
CPR1             .EQ  $0001
CPR2             .EQ  $0002
CPR3             .EQ  $0003
CPR4             .EQ  $0004
CPR5             .EQ  $0005
CPR6             .EQ  $0006
CPR7             .EQ  $0007



;----- SMT1CPRH Bits -----------------------------------------------------
CPR8             .EQ  $0000
CPR9             .EQ  $0001
CPR10            .EQ  $0002
CPR11            .EQ  $0003
CPR12            .EQ  $0004
CPR13            .EQ  $0005
CPR14            .EQ  $0006
CPR15            .EQ  $0007

SMT1CPR8         .EQ  $0000
SMT1CPR9         .EQ  $0001
SMT1CPR10        .EQ  $0002
SMT1CPR11        .EQ  $0003
SMT1CPR12        .EQ  $0004
SMT1CPR13        .EQ  $0005
SMT1CPR14        .EQ  $0006
SMT1CPR15        .EQ  $0007



;----- SMT1CPRU Bits -----------------------------------------------------
CPR16            .EQ  $0000
CPR17            .EQ  $0001
CPR18            .EQ  $0002
CPR19            .EQ  $0003
CPR20            .EQ  $0004
CPR21            .EQ  $0005
CPR22            .EQ  $0006
CPR23            .EQ  $0007

SMT1CPR16        .EQ  $0000
SMT1CPR17        .EQ  $0001
SMT1CPR18        .EQ  $0002
SMT1CPR19        .EQ  $0003
SMT1CPR20        .EQ  $0004
SMT1CPR21        .EQ  $0005
SMT1CPR22        .EQ  $0006
SMT1CPR23        .EQ  $0007



;----- SMT1CPWL Bits -----------------------------------------------------
CPW0             .EQ  $0000
CPW1             .EQ  $0001
CPW2             .EQ  $0002
CPW3             .EQ  $0003
CPW4             .EQ  $0004
CPW5             .EQ  $0005
CPW6             .EQ  $0006
CPW7             .EQ  $0007


SMT1CPW0         .EQ  $0000
SMT1CPW1         .EQ  $0001
SMT1CPW2         .EQ  $0002
SMT1CPW3         .EQ  $0003
SMT1CPW4         .EQ  $0004
SMT1CPW5         .EQ  $0005
SMT1CPW6         .EQ  $0006
SMT1CPW7         .EQ  $0007


;----- SMT1CPWH Bits -----------------------------------------------------
CPW8             .EQ  $0000
CPW9             .EQ  $0001
CPW10            .EQ  $0002
CPW11            .EQ  $0003
CPW12            .EQ  $0004
CPW13            .EQ  $0005
CPW14            .EQ  $0006
CPW15            .EQ  $0007


SMT1CPW8         .EQ  $0000
SMT1CPW9         .EQ  $0001
SMT1CPW10        .EQ  $0002
SMT1CPW11        .EQ  $0003
SMT1CPW12        .EQ  $0004
SMT1CPW13        .EQ  $0005
SMT1CPW14        .EQ  $0006
SMT1CPW15        .EQ  $0007


;----- SMT1CPWU Bits -----------------------------------------------------
CPW16            .EQ  $0000
CPW17            .EQ  $0001
CPW18            .EQ  $0002
CPW19            .EQ  $0003
CPW20            .EQ  $0004
CPW21            .EQ  $0005
CPW22            .EQ  $0006
CPW23            .EQ  $0007


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
SMT1EN           .EQ  $0007


;----- SMT1CON1 Bits -----------------------------------------------------
REPEAT           .EQ  $0006
SMT1GO           .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003


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
CPR0             .EQ  $0000
CPR1             .EQ  $0001
CPR2             .EQ  $0002
CPR3             .EQ  $0003
CPR4             .EQ  $0004
CPR5             .EQ  $0005
CPR6             .EQ  $0006
CPR7             .EQ  $0007



;----- SMT2CPRH Bits -----------------------------------------------------
CPR8             .EQ  $0000
CPR9             .EQ  $0001
CPR10            .EQ  $0002
CPR11            .EQ  $0003
CPR12            .EQ  $0004
CPR13            .EQ  $0005
CPR14            .EQ  $0006
CPR15            .EQ  $0007

SMT2CPR8         .EQ  $0000
SMT2CPR9         .EQ  $0001
SMT2CPR10        .EQ  $0002
SMT2CPR11        .EQ  $0003
SMT2CPR12        .EQ  $0004
SMT2CPR13        .EQ  $0005
SMT2CPR14        .EQ  $0006
SMT2CPR15        .EQ  $0007



;----- SMT2CPRU Bits -----------------------------------------------------
CPR16            .EQ  $0000
CPR17            .EQ  $0001
CPR18            .EQ  $0002
CPR19            .EQ  $0003
CPR20            .EQ  $0004
CPR21            .EQ  $0005
CPR22            .EQ  $0006
CPR23            .EQ  $0007

SMT2CPR16        .EQ  $0000
SMT2CPR17        .EQ  $0001
SMT2CPR18        .EQ  $0002
SMT2CPR19        .EQ  $0003
SMT2CPR20        .EQ  $0004
SMT2CPR21        .EQ  $0005
SMT2CPR22        .EQ  $0006
SMT2CPR23        .EQ  $0007



;----- SMT2CPWL Bits -----------------------------------------------------
CPW0             .EQ  $0000
CPW1             .EQ  $0001
CPW2             .EQ  $0002
CPW3             .EQ  $0003
CPW4             .EQ  $0004
CPW5             .EQ  $0005
CPW6             .EQ  $0006
CPW7             .EQ  $0007


SMT2CPW0         .EQ  $0000
SMT2CPW1         .EQ  $0001
SMT2CPW2         .EQ  $0002
SMT2CPW3         .EQ  $0003
SMT2CPW4         .EQ  $0004
SMT2CPW5         .EQ  $0005
SMT2CPW6         .EQ  $0006
SMT2CPW7         .EQ  $0007


;----- SMT2CPWH Bits -----------------------------------------------------
CPW8             .EQ  $0000
CPW9             .EQ  $0001
CPW10            .EQ  $0002
CPW11            .EQ  $0003
CPW12            .EQ  $0004
CPW13            .EQ  $0005
CPW14            .EQ  $0006
CPW15            .EQ  $0007


SMT2CPW8         .EQ  $0000
SMT2CPW9         .EQ  $0001
SMT2CPW10        .EQ  $0002
SMT2CPW11        .EQ  $0003
SMT2CPW12        .EQ  $0004
SMT2CPW13        .EQ  $0005
SMT2CPW14        .EQ  $0006
SMT2CPW15        .EQ  $0007


;----- SMT2CPWU Bits -----------------------------------------------------
CPW16            .EQ  $0000
CPW17            .EQ  $0001
CPW18            .EQ  $0002
CPW19            .EQ  $0003
CPW20            .EQ  $0004
CPW21            .EQ  $0005
CPW22            .EQ  $0006
CPW23            .EQ  $0007


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
SMT2EN           .EQ  $0007


;----- SMT2CON1 Bits -----------------------------------------------------
REPEAT           .EQ  $0006
SMT2GO           .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003


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


;----- NCO1ACCL Bits -----------------------------------------------------
NCO1ACC0         .EQ  $0000
NCO1ACC1         .EQ  $0001
NCO1ACC2         .EQ  $0002
NCO1ACC3         .EQ  $0003
NCO1ACC4         .EQ  $0004
NCO1ACC5         .EQ  $0005
NCO1ACC6         .EQ  $0006
NCO1ACC7         .EQ  $0007



;----- NCO1ACCH Bits -----------------------------------------------------
NCO1ACC8         .EQ  $0000
NCO1ACC9         .EQ  $0001
NCO1ACC10        .EQ  $0002
NCO1ACC11        .EQ  $0003
NCO1ACC12        .EQ  $0004
NCO1ACC13        .EQ  $0005
NCO1ACC14        .EQ  $0006
NCO1ACC15        .EQ  $0007



;----- NCO1ACCU Bits -----------------------------------------------------
NCO1ACC16        .EQ  $0000
NCO1ACC17        .EQ  $0001
NCO1ACC18        .EQ  $0002
NCO1ACC19        .EQ  $0003



;----- NCO1INCL Bits -----------------------------------------------------
NCO1INC0         .EQ  $0000
NCO1INC1         .EQ  $0001
NCO1INC2         .EQ  $0002
NCO1INC3         .EQ  $0003
NCO1INC4         .EQ  $0004
NCO1INC5         .EQ  $0005
NCO1INC6         .EQ  $0006
NCO1INC7         .EQ  $0007



;----- NCO1INCH Bits -----------------------------------------------------
NCO1INC8         .EQ  $0000
NCO1INC9         .EQ  $0001
NCO1INC10        .EQ  $0002
NCO1INC11        .EQ  $0003
NCO1INC12        .EQ  $0004
NCO1INC13        .EQ  $0005
NCO1INC14        .EQ  $0006
NCO1INC15        .EQ  $0007



;----- NCO1INCU Bits -----------------------------------------------------
NCO1INC16        .EQ  $0000
NCO1INC17        .EQ  $0001
NCO1INC18        .EQ  $0002
NCO1INC19        .EQ  $0003



;----- NCO1CON Bits -----------------------------------------------------
N1PFM            .EQ  $0000
N1POL            .EQ  $0004
N1OUT            .EQ  $0005
N1EN             .EQ  $0007


;----- NCO1CLK Bits -----------------------------------------------------
N1CKS0           .EQ  $0000
N1CKS1           .EQ  $0001
N1CKS2           .EQ  $0002
N1PWS0           .EQ  $0005
N1PWS1           .EQ  $0006
N1PWS2           .EQ  $0007



;----- CWG1CLKCON Bits -----------------------------------------------------
CS               .EQ  $0000

CWG1CS           .EQ  $0000


;----- CWG1ISM Bits -----------------------------------------------------
CWG1ISM0         .EQ  $0000
CWG1ISM1         .EQ  $0001
CWG1ISM2         .EQ  $0002
CWG1ISM3         .EQ  $0003


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
AS0E             .EQ  $0000
AS1E             .EQ  $0001
AS2E             .EQ  $0002
AS3E             .EQ  $0003
AS4E             .EQ  $0004
AS5E             .EQ  $0005
AS6E             .EQ  $0006


;----- CWG1STR Bits -----------------------------------------------------
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


;----- CWG2CLKCON Bits -----------------------------------------------------
CS               .EQ  $0000

CWG2CS           .EQ  $0000


;----- CWG2ISM Bits -----------------------------------------------------
CWG2ISM0         .EQ  $0000
CWG2ISM1         .EQ  $0001
CWG2ISM2         .EQ  $0002
CWG2ISM3         .EQ  $0003


;----- CWG2DBR Bits -----------------------------------------------------
DBR0             .EQ  $0000
DBR1             .EQ  $0001
DBR2             .EQ  $0002
DBR3             .EQ  $0003
DBR4             .EQ  $0004
DBR5             .EQ  $0005


CWG2DBR0         .EQ  $0000
CWG2DBR1         .EQ  $0001
CWG2DBR2         .EQ  $0002
CWG2DBR3         .EQ  $0003
CWG2DBR4         .EQ  $0004
CWG2DBR5         .EQ  $0005


;----- CWG2DBF Bits -----------------------------------------------------
DBF0             .EQ  $0000
DBF1             .EQ  $0001
DBF2             .EQ  $0002
DBF3             .EQ  $0003
DBF4             .EQ  $0004
DBF5             .EQ  $0005


CWG2DBF0         .EQ  $0000
CWG2DBF1         .EQ  $0001
CWG2DBF2         .EQ  $0002
CWG2DBF3         .EQ  $0003
CWG2DBF4         .EQ  $0004
CWG2DBF5         .EQ  $0005


;----- CWG2CON0 Bits -----------------------------------------------------
LD               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
G2EN             .EQ  $0007

CWG2LD           .EQ  $0006
CWG2EN           .EQ  $0007

CWG2MODE0        .EQ  $0000
CWG2MODE1        .EQ  $0001
CWG2MODE2        .EQ  $0002


;----- CWG2CON1 Bits -----------------------------------------------------
POLA             .EQ  $0000
POLB             .EQ  $0001
POLC             .EQ  $0002
POLD             .EQ  $0003
IN               .EQ  $0005

CWG2POLA         .EQ  $0000
CWG2POLB         .EQ  $0001
CWG2POLC         .EQ  $0002
CWG2POLD         .EQ  $0003
CWG2IN           .EQ  $0005


;----- CWG2AS0 Bits -----------------------------------------------------
REN              .EQ  $0006
SHUTDOWN         .EQ  $0007

LSAC0            .EQ  $0002
LSAC1            .EQ  $0003
LSBD0            .EQ  $0004
LSBD1            .EQ  $0005

CWG2REN          .EQ  $0006
CWG2SHUTDOWN     .EQ  $0007

CWG2LSAC0        .EQ  $0002
CWG2LSAC1        .EQ  $0003
CWG2LSBD0        .EQ  $0004
CWG2LSBD1        .EQ  $0005


;----- CWG2AS1 Bits -----------------------------------------------------
AS0E             .EQ  $0000
AS1E             .EQ  $0001
AS2E             .EQ  $0002
AS3E             .EQ  $0003
AS4E             .EQ  $0004
AS5E             .EQ  $0005
AS6E             .EQ  $0006


;----- CWG2STR Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
OVRA             .EQ  $0004
OVRB             .EQ  $0005
OVRC             .EQ  $0006
OVRD             .EQ  $0007

CWG2STRA         .EQ  $0000
CWG2STRB         .EQ  $0001
CWG2STRC         .EQ  $0002
CWG2STRD         .EQ  $0003
CWG2OVRA         .EQ  $0004
CWG2OVRB         .EQ  $0005
CWG2OVRC         .EQ  $0006
CWG2OVRD         .EQ  $0007


;----- CWG3CLKCON Bits -----------------------------------------------------
CS               .EQ  $0000

CWG3CS           .EQ  $0000


;----- CWG3ISM Bits -----------------------------------------------------
CWG3ISM0         .EQ  $0000
CWG3ISM1         .EQ  $0001
CWG3ISM2         .EQ  $0002
CWG3ISM3         .EQ  $0003


;----- CWG3DBR Bits -----------------------------------------------------
DBR0             .EQ  $0000
DBR1             .EQ  $0001
DBR2             .EQ  $0002
DBR3             .EQ  $0003
DBR4             .EQ  $0004
DBR5             .EQ  $0005


CWG3DBR0         .EQ  $0000
CWG3DBR1         .EQ  $0001
CWG3DBR2         .EQ  $0002
CWG3DBR3         .EQ  $0003
CWG3DBR4         .EQ  $0004
CWG3DBR5         .EQ  $0005


;----- CWG3DBF Bits -----------------------------------------------------
DBF0             .EQ  $0000
DBF1             .EQ  $0001
DBF2             .EQ  $0002
DBF3             .EQ  $0003
DBF4             .EQ  $0004
DBF5             .EQ  $0005


CWG3DBF0         .EQ  $0000
CWG3DBF1         .EQ  $0001
CWG3DBF2         .EQ  $0002
CWG3DBF3         .EQ  $0003
CWG3DBF4         .EQ  $0004
CWG3DBF5         .EQ  $0005


;----- CWG3CON0 Bits -----------------------------------------------------
LD               .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
G3EN             .EQ  $0007

CWG3LD           .EQ  $0006
CWG3EN           .EQ  $0007

CWG3MODE0        .EQ  $0000
CWG3MODE1        .EQ  $0001
CWG3MODE2        .EQ  $0002


;----- CWG3CON1 Bits -----------------------------------------------------
POLA             .EQ  $0000
POLB             .EQ  $0001
POLC             .EQ  $0002
POLD             .EQ  $0003
IN               .EQ  $0005

CWG3POLA         .EQ  $0000
CWG3POLB         .EQ  $0001
CWG3POLC         .EQ  $0002
CWG3POLD         .EQ  $0003
CWG3IN           .EQ  $0005


;----- CWG3AS0 Bits -----------------------------------------------------
REN              .EQ  $0006
SHUTDOWN         .EQ  $0007

LSAC0            .EQ  $0002
LSAC1            .EQ  $0003
LSBD0            .EQ  $0004
LSBD1            .EQ  $0005

CWG3REN          .EQ  $0006
CWG3SHUTDOWN     .EQ  $0007

CWG3LSAC0        .EQ  $0002
CWG3LSAC1        .EQ  $0003
CWG3LSBD0        .EQ  $0004
CWG3LSBD1        .EQ  $0005


;----- CWG3AS1 Bits -----------------------------------------------------
AS0E             .EQ  $0000
AS1E             .EQ  $0001
AS2E             .EQ  $0002
AS3E             .EQ  $0003
AS4E             .EQ  $0004
AS5E             .EQ  $0005
AS6E             .EQ  $0006


;----- CWG3STR Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
OVRA             .EQ  $0004
OVRB             .EQ  $0005
OVRC             .EQ  $0006
OVRD             .EQ  $0007

CWG3STRA         .EQ  $0000
CWG3STRB         .EQ  $0001
CWG3STRC         .EQ  $0002
CWG3STRD         .EQ  $0003
CWG3OVRA         .EQ  $0004
CWG3OVRB         .EQ  $0005
CWG3OVRC         .EQ  $0006
CWG3OVRD         .EQ  $0007


;----- PIR0 Bits -----------------------------------------------------
INTF             .EQ  $0000
IOCIF            .EQ  $0004
TMR0IF           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
ADIF             .EQ  $0000
ADTIF            .EQ  $0001
CSWIF            .EQ  $0006
OSFIF            .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
C1IF             .EQ  $0000
C2IF             .EQ  $0001
ZCDIF            .EQ  $0006


;----- PIR3 Bits -----------------------------------------------------
SSP1IF           .EQ  $0000
BCL1IF           .EQ  $0001
SSP2IF           .EQ  $0002
BCL2IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005


;----- PIR4 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
TMR3IF           .EQ  $0002
TMR4IF           .EQ  $0003
TMR5IF           .EQ  $0004
TMR6IF           .EQ  $0005


;----- PIR5 Bits -----------------------------------------------------
TMR1GIF          .EQ  $0000
TMR3GIF          .EQ  $0001
TMR5GIF          .EQ  $0002
CLC1IF           .EQ  $0004
CLC2IF           .EQ  $0005
CLC3IF           .EQ  $0006
CLC4IF           .EQ  $0007


;----- PIR6 Bits -----------------------------------------------------
CCP1IF           .EQ  $0000
CCP2IF           .EQ  $0001
CCP3IF           .EQ  $0002
CCP4IF           .EQ  $0003
CCP5IF           .EQ  $0004


;----- PIR7 Bits -----------------------------------------------------
CWG1IF           .EQ  $0000
CWG2IF           .EQ  $0001
CWG3IF           .EQ  $0002
NCO1IF           .EQ  $0004
NVMIF            .EQ  $0005
CRCIF            .EQ  $0006
SCANIF           .EQ  $0007

NCOIF            .EQ  $0004


;----- PIR8 Bits -----------------------------------------------------
SMT1IF           .EQ  $0000
SMT1PRAIF        .EQ  $0001
SMT1PWAIF        .EQ  $0002
SMT2IF           .EQ  $0003
SMT2PRAIF        .EQ  $0004
SMT2PWAIF        .EQ  $0005


;----- PIE0 Bits -----------------------------------------------------
INTE             .EQ  $0000
IOCIE            .EQ  $0004
TMR0IE           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
ADIE             .EQ  $0000
ADTIE            .EQ  $0001
CSWIE            .EQ  $0006
OSFIE            .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
C1IE             .EQ  $0000
C2IE             .EQ  $0001
ZCDIE            .EQ  $0006


;----- PIE3 Bits -----------------------------------------------------
SSP1IE           .EQ  $0000
BCL1IE           .EQ  $0001
SSP2IE           .EQ  $0002
BCL2IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005


;----- PIE4 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
TMR3IE           .EQ  $0002
TMR4IE           .EQ  $0003
TMR5IE           .EQ  $0004
TMR6IE           .EQ  $0005


;----- PIE5 Bits -----------------------------------------------------
TMR1GIE          .EQ  $0000
TMR3GIE          .EQ  $0001
TMR5GIE          .EQ  $0002
CLC1IE           .EQ  $0004
CLC2IE           .EQ  $0005
CLC3IE           .EQ  $0006
CLC4IE           .EQ  $0007


;----- PIE6 Bits -----------------------------------------------------
CCP1IE           .EQ  $0000
CCP2IE           .EQ  $0001
CCP3IE           .EQ  $0002
CCP4IE           .EQ  $0003
CCP5IE           .EQ  $0004


;----- PIE7 Bits -----------------------------------------------------
CWG1IE           .EQ  $0000
CWG2IE           .EQ  $0001
CWG3IE           .EQ  $0002
NCO1IE           .EQ  $0004
NVMIE            .EQ  $0005
CRCIE            .EQ  $0006
SCANIE           .EQ  $0007

NCOIE            .EQ  $0004


;----- PIE8 Bits -----------------------------------------------------
SMT1IE           .EQ  $0000
SMT1PRAIE        .EQ  $0001
SMT1PWAIE        .EQ  $0002
SMT2IE           .EQ  $0003
SMT2PRAIE        .EQ  $0004
SMT2PWAIE        .EQ  $0005


;----- PMD0 Bits -----------------------------------------------------
IOCMD            .EQ  $0000
CLKRMD           .EQ  $0001
NVMMD            .EQ  $0002
SCANMD           .EQ  $0003
CRCMD            .EQ  $0004
FVRMD            .EQ  $0006
SYSCMD           .EQ  $0007


;----- PMD1 Bits -----------------------------------------------------
TMR0MD           .EQ  $0000
TMR1MD           .EQ  $0001
TMR2MD           .EQ  $0002
TMR3MD           .EQ  $0003
TMR4MD           .EQ  $0004
TMR5MD           .EQ  $0005
TMR6MD           .EQ  $0006
NCOMD            .EQ  $0007

NCO1MD           .EQ  $0007


;----- PMD2 Bits -----------------------------------------------------
ZCDMD            .EQ  $0000
CMP1MD           .EQ  $0001
CMP2MD           .EQ  $0002
ADCMD            .EQ  $0005
DACMD            .EQ  $0006


;----- PMD3 Bits -----------------------------------------------------
CCP1MD           .EQ  $0000
CCP2MD           .EQ  $0001
CCP3MD           .EQ  $0002
CCP4MD           .EQ  $0003
CCP5MD           .EQ  $0004
PWM6MD           .EQ  $0005
PWM7MD           .EQ  $0006


;----- PMD4 Bits -----------------------------------------------------
CWG1MD           .EQ  $0000
CWG2MD           .EQ  $0001
CWG3MD           .EQ  $0002
MSSP1MD          .EQ  $0004
MSSP2MD          .EQ  $0005
UART1MD          .EQ  $0006


;----- PMD5 Bits -----------------------------------------------------
DSMMD            .EQ  $0000
CLC1MD           .EQ  $0001
CLC2MD           .EQ  $0002
CLC3MD           .EQ  $0003
CLC4MD           .EQ  $0004
SMT1MD           .EQ  $0006
SMT2MD           .EQ  $0007


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


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
SBOREN           .EQ  $0007


;----- VREGCON Bits -----------------------------------------------------
VREGPM0          .EQ  $0000
VREGPM1          .EQ  $0001

VREGPM           .EQ  $0001


;----- PCON0 Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
NOT_RWDT         .EQ  $0004
NOT_WDTWV        .EQ  $0005
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007


;----- CCDCON Bits -----------------------------------------------------
CCDS0            .EQ  $0000
CCDS1            .EQ  $0001
CCDEN            .EQ  $0007


;----- NVMADRL Bits -----------------------------------------------------
NVMADR0          .EQ  $0000
NVMADR1          .EQ  $0001
NVMADR2          .EQ  $0002
NVMADR3          .EQ  $0003
NVMADR4          .EQ  $0004
NVMADR5          .EQ  $0005
NVMADR6          .EQ  $0006
NVMADR7          .EQ  $0007


;----- NVMADRH Bits -----------------------------------------------------
NVMADR8          .EQ  $0000
NVMADR9          .EQ  $0001
NVMADR10         .EQ  $0002
NVMADR11         .EQ  $0003
NVMADR12         .EQ  $0004
NVMADR13         .EQ  $0005
NVMADR14         .EQ  $0006


;----- NVMDATL Bits -----------------------------------------------------
NVMDAT0          .EQ  $0000
NVMDAT1          .EQ  $0001
NVMDAT2          .EQ  $0002
NVMDAT3          .EQ  $0003
NVMDAT4          .EQ  $0004
NVMDAT5          .EQ  $0005
NVMDAT6          .EQ  $0006
NVMDAT7          .EQ  $0007


;----- NVMDATH Bits -----------------------------------------------------
NVMDAT8          .EQ  $0000
NVMDAT9          .EQ  $0001
NVMDAT10         .EQ  $0002
NVMDAT11         .EQ  $0003
NVMDAT12         .EQ  $0004
NVMDAT13         .EQ  $0005


;----- NVMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
LWLO             .EQ  $0005
NVMREGS          .EQ  $0006


;----- CPUDOZE Bits -----------------------------------------------------
DOZE0            .EQ  $0000
DOZE1            .EQ  $0001
DOZE2            .EQ  $0002
DOE              .EQ  $0004
ROI              .EQ  $0005
DOZEN            .EQ  $0006
IDLEN            .EQ  $0007


;----- OSCCON1 Bits -----------------------------------------------------
NDIV0            .EQ  $0000
NDIV1            .EQ  $0001
NDIV2            .EQ  $0002
NDIV3            .EQ  $0003
NOSC0            .EQ  $0004
NOSC1            .EQ  $0005
NOSC2            .EQ  $0006


;----- OSCCON2 Bits -----------------------------------------------------
CDIV0            .EQ  $0000
CDIV1            .EQ  $0001
CDIV2            .EQ  $0002
CDIV3            .EQ  $0003
COSC0            .EQ  $0004
COSC1            .EQ  $0005
COSC2            .EQ  $0006


;----- OSCCON3 Bits -----------------------------------------------------
NOSCR            .EQ  $0003
ORDY             .EQ  $0004
SOSCPWR          .EQ  $0006
CSWHOLD          .EQ  $0007


;----- OSCSTAT Bits -----------------------------------------------------
PLLR             .EQ  $0000
ADOR             .EQ  $0002
SOR              .EQ  $0003
LFOR             .EQ  $0004
MFOR             .EQ  $0005
HFOR             .EQ  $0006
EXTOR            .EQ  $0007


;----- OSCEN Bits -----------------------------------------------------
ADOEN            .EQ  $0002
SOSCEN           .EQ  $0003
LFOEN            .EQ  $0004
MFOEN            .EQ  $0005
HFOEN            .EQ  $0006
EXTOEN           .EQ  $0007


;----- OSCTUNE Bits -----------------------------------------------------
HFTUN0           .EQ  $0000
HFTUN1           .EQ  $0001
HFTUN2           .EQ  $0002
HFTUN3           .EQ  $0003
HFTUN4           .EQ  $0004
HFTUN5           .EQ  $0005


;----- OSCFRQ Bits -----------------------------------------------------
HFFRQ0           .EQ  $0000
HFFRQ1           .EQ  $0001
HFFRQ2           .EQ  $0002


;----- CLKRCON Bits -----------------------------------------------------
CLKREN           .EQ  $0007

CLKRDIV0         .EQ  $0000
CLKRDIV1         .EQ  $0001
CLKRDIV2         .EQ  $0002
CLKRDC0          .EQ  $0003
CLKRDC1          .EQ  $0004


;----- CLKRCLK Bits -----------------------------------------------------
CLKRCLK0         .EQ  $0000
CLKRCLK1         .EQ  $0001
CLKRCLK2         .EQ  $0002
CLKRCLK3         .EQ  $0003


;----- MDCON0 Bits -----------------------------------------------------
MDBIT            .EQ  $0000
MDOPOL           .EQ  $0004
MDOUT            .EQ  $0005
MDEN             .EQ  $0007


;----- MDCON1 Bits -----------------------------------------------------
MDCLSYNC         .EQ  $0000
MDCLPOL          .EQ  $0001
MDCHSYNC         .EQ  $0004
MDCHPOL          .EQ  $0005


;----- MDSRC Bits -----------------------------------------------------
MDMS0            .EQ  $0000
MDMS1            .EQ  $0001
MDMS2            .EQ  $0002
MDMS3            .EQ  $0003
MDMS4            .EQ  $0004


;----- MDCARL Bits -----------------------------------------------------
MDCL0            .EQ  $0000
MDCL1            .EQ  $0001
MDCL2            .EQ  $0002
MDCL3            .EQ  $0003


;----- MDCARH Bits -----------------------------------------------------
MDCH0            .EQ  $0000
MDCH1            .EQ  $0001
MDCH2            .EQ  $0002
MDCH3            .EQ  $0003


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
NSS              .EQ  $0000
OE2              .EQ  $0004
OE1              .EQ  $0005
EN               .EQ  $0007

DAC1NSS          .EQ  $0000
DAC1PSS0         .EQ  $0002
DAC1PSS1         .EQ  $0003
DAC1OE2          .EQ  $0004
DAC1OE1          .EQ  $0005
DAC1EN           .EQ  $0007

PSS0             .EQ  $0002
PSS1             .EQ  $0003


;----- DAC1CON1 Bits -----------------------------------------------------
DAC1R0           .EQ  $0000
DAC1R1           .EQ  $0001
DAC1R2           .EQ  $0002
DAC1R3           .EQ  $0003
DAC1R4           .EQ  $0004


;----- ZCDCON Bits -----------------------------------------------------
ZCDINTN          .EQ  $0000
ZCDINTP          .EQ  $0001
ZCDPOL           .EQ  $0004
ZCDOUT           .EQ  $0005
ZCDSEN           .EQ  $0007


;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001

C1OUT_CMOUT      .EQ  $0000
C2OUT_CMOUT      .EQ  $0001


;----- CMSTAT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001

C1OUT_CMSTAT     .EQ  $0000
C2OUT_CMSTAT     .EQ  $0001


;----- CM1CON0 Bits -----------------------------------------------------
SYNC_CM1CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved         .EQ  $0002
POL_CM1CON0      .EQ  $0004
OUT_CM1CON0      .EQ  $0006
ON_CM1CON0       .EQ  $0007

C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1POL            .EQ  $0004
C1OUT_CM1CON0    .EQ  $0006
C1ON             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
INTN_CM1CON1     .EQ  $0000
INTP_CM1CON1     .EQ  $0001

C1INTN           .EQ  $0000
C1INTP           .EQ  $0001


;----- CM1NSEL Bits -----------------------------------------------------
NCH0             .EQ  $0000
NCH1             .EQ  $0001
NCH2             .EQ  $0002


C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002


;----- CM1PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002


C1PCH0           .EQ  $0000
C1PCH1           .EQ  $0001
C1PCH2           .EQ  $0002


;----- CM2CON0 Bits -----------------------------------------------------
SYNC_CM2CON0     .EQ  $0000
HYS              .EQ  $0001
Reserved         .EQ  $0002
POL_CM2CON0      .EQ  $0004
OUT_CM2CON0      .EQ  $0006
ON_CM2CON0       .EQ  $0007

C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2POL            .EQ  $0004
C2OUT_CM2CON0    .EQ  $0006
C2ON             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
INTN_CM2CON1     .EQ  $0000
INTP_CM2CON1     .EQ  $0001

C2INTN           .EQ  $0000
C2INTP           .EQ  $0001


;----- CM2NSEL Bits -----------------------------------------------------
NCH0             .EQ  $0000
NCH1             .EQ  $0001
NCH2             .EQ  $0002


C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002


;----- CM2PSEL Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002


C2PCH0           .EQ  $0000
C2PCH1           .EQ  $0001
C2PCH2           .EQ  $0002


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

INTN_CLC1CON     .EQ  $0003
INTP_CLC1CON     .EQ  $0004
OUT_CLC1CON      .EQ  $0005
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
LC1D1S6          .EQ  $0006
LC1D1S7          .EQ  $0007



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005
D1S6             .EQ  $0006
D1S7             .EQ  $0007


;----- CLC1SEL1 Bits -----------------------------------------------------
LC1D2S0          .EQ  $0000
LC1D2S1          .EQ  $0001
LC1D2S2          .EQ  $0002
LC1D2S3          .EQ  $0003
LC1D2S4          .EQ  $0004
LC1D2S5          .EQ  $0005
LC1D2S6          .EQ  $0006
LC1D2S7          .EQ  $0007



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005
D2S6             .EQ  $0006
D2S7             .EQ  $0007


;----- CLC1SEL2 Bits -----------------------------------------------------
LC1D3S0          .EQ  $0000
LC1D3S1          .EQ  $0001
LC1D3S2          .EQ  $0002
LC1D3S3          .EQ  $0003
LC1D3S4          .EQ  $0004
LC1D3S5          .EQ  $0005
LC1D3S6          .EQ  $0006
LC1D3S7          .EQ  $0007



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005
D3S6             .EQ  $0006
D3S7             .EQ  $0007


;----- CLC1SEL3 Bits -----------------------------------------------------
LC1D4S0          .EQ  $0000
LC1D4S1          .EQ  $0001
LC1D4S2          .EQ  $0002
LC1D4S3          .EQ  $0003
LC1D4S4          .EQ  $0004
LC1D4S5          .EQ  $0005
LC1D4S6          .EQ  $0006
LC1D4S7          .EQ  $0007



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005
D4S6             .EQ  $0006
D4S7             .EQ  $0007


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
LC2D1S6          .EQ  $0006
LC2D1S7          .EQ  $0007



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005
D1S6             .EQ  $0006
D1S7             .EQ  $0007


;----- CLC2SEL1 Bits -----------------------------------------------------
LC2D2S0          .EQ  $0000
LC2D2S1          .EQ  $0001
LC2D2S2          .EQ  $0002
LC2D2S3          .EQ  $0003
LC2D2S4          .EQ  $0004
LC2D2S5          .EQ  $0005
LC2D2S6          .EQ  $0006
LC2D2S7          .EQ  $0007



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005
D2S6             .EQ  $0006
D2S7             .EQ  $0007


;----- CLC2SEL2 Bits -----------------------------------------------------
LC2D3S0          .EQ  $0000
LC2D3S1          .EQ  $0001
LC2D3S2          .EQ  $0002
LC2D3S3          .EQ  $0003
LC2D3S4          .EQ  $0004
LC2D3S5          .EQ  $0005
LC2D3S6          .EQ  $0006
LC2D3S7          .EQ  $0007



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005
D3S6             .EQ  $0006
D3S7             .EQ  $0007


;----- CLC2SEL3 Bits -----------------------------------------------------
LC2D4S0          .EQ  $0000
LC2D4S1          .EQ  $0001
LC2D4S2          .EQ  $0002
LC2D4S3          .EQ  $0003
LC2D4S4          .EQ  $0004
LC2D4S5          .EQ  $0005
LC2D4S6          .EQ  $0006
LC2D4S7          .EQ  $0007



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005
D4S6             .EQ  $0006
D4S7             .EQ  $0007


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
LC3D1S6          .EQ  $0006
LC3D1S7          .EQ  $0007



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005
D1S6             .EQ  $0006
D1S7             .EQ  $0007


;----- CLC3SEL1 Bits -----------------------------------------------------
LC3D2S0          .EQ  $0000
LC3D2S1          .EQ  $0001
LC3D2S2          .EQ  $0002
LC3D2S3          .EQ  $0003
LC3D2S4          .EQ  $0004
LC3D2S5          .EQ  $0005
LC3D2S6          .EQ  $0006
LC3D2S7          .EQ  $0007



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005
D2S6             .EQ  $0006
D2S7             .EQ  $0007


;----- CLC3SEL2 Bits -----------------------------------------------------
LC3D3S0          .EQ  $0000
LC3D3S1          .EQ  $0001
LC3D3S2          .EQ  $0002
LC3D3S3          .EQ  $0003
LC3D3S4          .EQ  $0004
LC3D3S5          .EQ  $0005
LC3D3S6          .EQ  $0006
LC3D3S7          .EQ  $0007



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005
D3S6             .EQ  $0006
D3S7             .EQ  $0007


;----- CLC3SEL3 Bits -----------------------------------------------------
LC3D4S0          .EQ  $0000
LC3D4S1          .EQ  $0001
LC3D4S2          .EQ  $0002
LC3D4S3          .EQ  $0003
LC3D4S4          .EQ  $0004
LC3D4S5          .EQ  $0005
LC3D4S6          .EQ  $0006
LC3D4S7          .EQ  $0007



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005
D4S6             .EQ  $0006
D4S7             .EQ  $0007


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
LC4D1S6          .EQ  $0006
LC4D1S7          .EQ  $0007



D1S0             .EQ  $0000
D1S1             .EQ  $0001
D1S2             .EQ  $0002
D1S3             .EQ  $0003
D1S4             .EQ  $0004
D1S5             .EQ  $0005
D1S6             .EQ  $0006
D1S7             .EQ  $0007


;----- CLC4SEL1 Bits -----------------------------------------------------
LC4D2S0          .EQ  $0000
LC4D2S1          .EQ  $0001
LC4D2S2          .EQ  $0002
LC4D2S3          .EQ  $0003
LC4D2S4          .EQ  $0004
LC4D2S5          .EQ  $0005
LC4D2S6          .EQ  $0006
LC4D2S7          .EQ  $0007



D2S0             .EQ  $0000
D2S1             .EQ  $0001
D2S2             .EQ  $0002
D2S3             .EQ  $0003
D2S4             .EQ  $0004
D2S5             .EQ  $0005
D2S6             .EQ  $0006
D2S7             .EQ  $0007


;----- CLC4SEL2 Bits -----------------------------------------------------
LC4D3S0          .EQ  $0000
LC4D3S1          .EQ  $0001
LC4D3S2          .EQ  $0002
LC4D3S3          .EQ  $0003
LC4D3S4          .EQ  $0004
LC4D3S5          .EQ  $0005
LC4D3S6          .EQ  $0006
LC4D3S7          .EQ  $0007



D3S0             .EQ  $0000
D3S1             .EQ  $0001
D3S2             .EQ  $0002
D3S3             .EQ  $0003
D3S4             .EQ  $0004
D3S5             .EQ  $0005
D3S6             .EQ  $0006
D3S7             .EQ  $0007


;----- CLC4SEL3 Bits -----------------------------------------------------
LC4D4S0          .EQ  $0000
LC4D4S1          .EQ  $0001
LC4D4S2          .EQ  $0002
LC4D4S3          .EQ  $0003
LC4D4S4          .EQ  $0004
LC4D4S5          .EQ  $0005
LC4D4S6          .EQ  $0006
LC4D4S7          .EQ  $0007



D4S0             .EQ  $0000
D4S1             .EQ  $0001
D4S2             .EQ  $0002
D4S3             .EQ  $0003
D4S4             .EQ  $0004
D4S5             .EQ  $0005
D4S6             .EQ  $0006
D4S7             .EQ  $0007


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


;----- PPSLOCK Bits -----------------------------------------------------
PPSLOCKED        .EQ  $0000


;----- INTPPS Bits -----------------------------------------------------
INTPPS0          .EQ  $0000
INTPPS1          .EQ  $0001
INTPPS2          .EQ  $0002
INTPPS3          .EQ  $0003


;----- T0CKIPPS Bits -----------------------------------------------------
T0CKIPPS0        .EQ  $0000
T0CKIPPS1        .EQ  $0001
T0CKIPPS2        .EQ  $0002
T0CKIPPS3        .EQ  $0003


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


;----- T2AINPPS Bits -----------------------------------------------------
T2AINPPS0        .EQ  $0000
T2AINPPS1        .EQ  $0001
T2AINPPS2        .EQ  $0002
T2AINPPS3        .EQ  $0003
T2AINPPS4        .EQ  $0004


;----- T4AINPPS Bits -----------------------------------------------------
T4AINPPS0        .EQ  $0000
T4AINPPS1        .EQ  $0001
T4AINPPS2        .EQ  $0002
T4AINPPS3        .EQ  $0003
T4AINPPS4        .EQ  $0004


;----- T6AINPPS Bits -----------------------------------------------------
T6AINPPS0        .EQ  $0000
T6AINPPS1        .EQ  $0001
T6AINPPS2        .EQ  $0002
T6AINPPS3        .EQ  $0003
T6AINPPS4        .EQ  $0004


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


;----- CCP3PPS Bits -----------------------------------------------------
CCP3PPS0         .EQ  $0000
CCP3PPS1         .EQ  $0001
CCP3PPS2         .EQ  $0002
CCP3PPS3         .EQ  $0003
CCP3PPS4         .EQ  $0004


;----- CCP4PPS Bits -----------------------------------------------------
CCP4PPS0         .EQ  $0000
CCP4PPS1         .EQ  $0001
CCP4PPS2         .EQ  $0002
CCP4PPS3         .EQ  $0003
CCP4PPS4         .EQ  $0004


;----- CCP5PPS Bits -----------------------------------------------------
CCP5PPS0         .EQ  $0000
CCP5PPS1         .EQ  $0001
CCP5PPS2         .EQ  $0002
CCP5PPS3         .EQ  $0003
CCP5PPS4         .EQ  $0004
CCP6PPS          .EQ  $0005


;----- SMT1WINPPS Bits -----------------------------------------------------
SMU1WINPPS0      .EQ  $0000
SMU1WINPPS1      .EQ  $0001
SMU1WINPPS2      .EQ  $0002
SMU1WINPPS3      .EQ  $0003
SMU1WINPPS4      .EQ  $0004


;----- SMT1SIGPPS Bits -----------------------------------------------------
SMU1SIGPPS0      .EQ  $0000
SMU1SIGPPS1      .EQ  $0001
SMU1SIGPPS2      .EQ  $0002
SMU1SIGPPS3      .EQ  $0003
SMU1SIGPPS4      .EQ  $0004


;----- SMT2WINPPS Bits -----------------------------------------------------
SMU2WINPPS0      .EQ  $0000
SMU2WINPPS1      .EQ  $0001
SMU2WINPPS2      .EQ  $0002
SMU2WINPPS3      .EQ  $0003
SMU2WINPPS4      .EQ  $0004


;----- SMT2SIGPPS Bits -----------------------------------------------------
SMU2SIGPPS0      .EQ  $0000
SMU2SIGPPS1      .EQ  $0001
SMU2SIGPPS2      .EQ  $0002
SMU2SIGPPS3      .EQ  $0003
SMU2SIGPPS4      .EQ  $0004


;----- CWG1PPS Bits -----------------------------------------------------
CWG1PPS0         .EQ  $0000
CWG1PPS1         .EQ  $0001
CWG1PPS2         .EQ  $0002
CWG1PPS3         .EQ  $0003
CWG1PPS4         .EQ  $0004


;----- CWG2PPS Bits -----------------------------------------------------
CWG2PPS0         .EQ  $0000
CWG2PPS1         .EQ  $0001
CWG2PPS2         .EQ  $0002
CWG2PPS3         .EQ  $0003
CWG2PPS4         .EQ  $0004


;----- CWG3PPS Bits -----------------------------------------------------
CWG3PPS0         .EQ  $0000
CWG3PPS1         .EQ  $0001
CWG3PPS2         .EQ  $0002
CWG3PPS3         .EQ  $0003
CWG3PPS4         .EQ  $0004


;----- MDCARLPPS Bits -----------------------------------------------------
MDCARLPPS0       .EQ  $0000
MDCARLPPS1       .EQ  $0001
MDCARLPPS2       .EQ  $0002
MDCARLPPS3       .EQ  $0003
MDCARLPPS4       .EQ  $0004


;----- MDCARHPPS Bits -----------------------------------------------------
MDCARHPPS0       .EQ  $0000
MDCARHPPS1       .EQ  $0001
MDCARHPPS2       .EQ  $0002
MDCARHPPS3       .EQ  $0003
MDCARHPPS4       .EQ  $0004


;----- MDSRCPPS Bits -----------------------------------------------------
MDSRCPPS0        .EQ  $0000
MDSRCPPS1        .EQ  $0001
MDSRCPPS2        .EQ  $0002
MDSRCPPS3        .EQ  $0003
MDSRCPPS4        .EQ  $0004


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


;----- ADCACTPPS Bits -----------------------------------------------------
ADCACTPPS0       .EQ  $0000
ADCACTPPS1       .EQ  $0001
ADCACTPPS2       .EQ  $0002
ADCACTPPS3       .EQ  $0003
ADCACTPPS4       .EQ  $0004


;----- SSP1CLKPPS Bits -----------------------------------------------------
SSP1CLKPPS0      .EQ  $0000
SSP1CLKPPS1      .EQ  $0001
SSP1CLKPPS2      .EQ  $0002
SSP1CLKPPS3      .EQ  $0003
SSP1CLKPPS4      .EQ  $0004


;----- SSP1DATPPS Bits -----------------------------------------------------
SSP1DATPPS0      .EQ  $0000
SSP1DATPPS1      .EQ  $0001
SSP1DATPPS2      .EQ  $0002
SSP1DATPPS3      .EQ  $0003
SSP1DATPPS4      .EQ  $0004


;----- SSP1SSPPS Bits -----------------------------------------------------
SSP1SSPPS0       .EQ  $0000
SSP1SSPPS1       .EQ  $0001
SSP1SSPPS2       .EQ  $0002
SSP1SSPPS3       .EQ  $0003
SSP1SSPPS4       .EQ  $0004


;----- SSP2CLKPPS Bits -----------------------------------------------------
SSP2CLKPPS0      .EQ  $0000
SSP2CLKPPS1      .EQ  $0001
SSP2CLKPPS2      .EQ  $0002
SSP2CLKPPS3      .EQ  $0003
SSP2CLKPPS4      .EQ  $0004


;----- SSP2DATPPS Bits -----------------------------------------------------
SSP2DATPPS0      .EQ  $0000
SSP2DATPPS1      .EQ  $0001
SSP2DATPPS2      .EQ  $0002
SSP2DATPPS3      .EQ  $0003
SSP2DATPPS4      .EQ  $0004


;----- SSP2SSPPS Bits -----------------------------------------------------
SSP2SSPPS0       .EQ  $0000
SSP2SSPPS1       .EQ  $0001
SSP2SSPPS2       .EQ  $0002
SSP2SSPPS3       .EQ  $0003
SSP2SSPPS4       .EQ  $0004


;----- RXPPS Bits -----------------------------------------------------
RXPPS0           .EQ  $0000
RXPPS1           .EQ  $0001
RXPPS2           .EQ  $0002
RXPPS3           .EQ  $0003
RXPPS4           .EQ  $0004


;----- TXPPS Bits -----------------------------------------------------
TXPPS0           .EQ  $0000
TXPPS1           .EQ  $0001
TXPPS2           .EQ  $0002
TXPPS3           .EQ  $0003
TXPPS4           .EQ  $0004


;----- RA0PPS Bits -----------------------------------------------------
RA0PPS0          .EQ  $0000
RA0PPS1          .EQ  $0001
RA0PPS2          .EQ  $0002
RA0PPS3          .EQ  $0003
RA0PPS4          .EQ  $0004
RA0PPS5          .EQ  $0005


;----- RA1PPS Bits -----------------------------------------------------
RA1PPS0          .EQ  $0000
RA1PPS1          .EQ  $0001
RA1PPS2          .EQ  $0002
RA1PPS3          .EQ  $0003
RA1PPS4          .EQ  $0004
RA1PPS5          .EQ  $0005


;----- RA2PPS Bits -----------------------------------------------------
RA2PPS0          .EQ  $0000
RA2PPS1          .EQ  $0001
RA2PPS2          .EQ  $0002
RA2PPS3          .EQ  $0003
RA2PPS4          .EQ  $0004
RA2PPS5          .EQ  $0005


;----- RA3PPS Bits -----------------------------------------------------
RA3PPS0          .EQ  $0000
RA3PPS1          .EQ  $0001
RA3PPS2          .EQ  $0002
RA3PPS3          .EQ  $0003
RA3PPS4          .EQ  $0004
RA3PPS5          .EQ  $0005


;----- RA4PPS Bits -----------------------------------------------------
RA4PPS0          .EQ  $0000
RA4PPS1          .EQ  $0001
RA4PPS2          .EQ  $0002
RA4PPS3          .EQ  $0003
RA4PPS4          .EQ  $0004
RA4PPS5          .EQ  $0005


;----- RA5PPS Bits -----------------------------------------------------
RA5PPS0          .EQ  $0000
RA5PPS1          .EQ  $0001
RA5PPS2          .EQ  $0002
RA5PPS3          .EQ  $0003
RA5PPS4          .EQ  $0004
RA5PPS5          .EQ  $0005


;----- RA6PPS Bits -----------------------------------------------------
RA6PPS0          .EQ  $0000
RA6PPS1          .EQ  $0001
RA6PPS2          .EQ  $0002
RA6PPS3          .EQ  $0003
RA6PPS4          .EQ  $0004
RA6PPS5          .EQ  $0005


;----- RA7PPS Bits -----------------------------------------------------
RA7PPS0          .EQ  $0000
RA7PPS1          .EQ  $0001
RA7PPS2          .EQ  $0002
RA7PPS3          .EQ  $0003
RA7PPS4          .EQ  $0004
RA7PPS5          .EQ  $0005


;----- RB0PPS Bits -----------------------------------------------------
RB0PPS0          .EQ  $0000
RB0PPS1          .EQ  $0001
RB0PPS2          .EQ  $0002
RB0PPS3          .EQ  $0003
RB0PPS4          .EQ  $0004
RB0PPS5          .EQ  $0005


;----- RB1PPS Bits -----------------------------------------------------
RB1PPS0          .EQ  $0000
RB1PPS1          .EQ  $0001
RB1PPS2          .EQ  $0002
RB1PPS3          .EQ  $0003
RB1PPS4          .EQ  $0004
RB1PPS5          .EQ  $0005


;----- RB2PPS Bits -----------------------------------------------------
RB2PPS0          .EQ  $0000
RB2PPS1          .EQ  $0001
RB2PPS2          .EQ  $0002
RB2PPS3          .EQ  $0003
RB2PPS4          .EQ  $0004
RB2PPS5          .EQ  $0005


;----- RB3PPS Bits -----------------------------------------------------
RB3PPS0          .EQ  $0000
RB3PPS1          .EQ  $0001
RB3PPS2          .EQ  $0002
RB3PPS3          .EQ  $0003
RB3PPS4          .EQ  $0004
RB3PPS5          .EQ  $0005


;----- RB4PPS Bits -----------------------------------------------------
RB4PPS0          .EQ  $0000
RB4PPS1          .EQ  $0001
RB4PPS2          .EQ  $0002
RB4PPS3          .EQ  $0003
RB4PPS4          .EQ  $0004
RB4PPS5          .EQ  $0005


;----- RB5PPS Bits -----------------------------------------------------
RB5PPS0          .EQ  $0000
RB5PPS1          .EQ  $0001
RB5PPS2          .EQ  $0002
RB5PPS3          .EQ  $0003
RB5PPS4          .EQ  $0004
RB5PPS5          .EQ  $0005


;----- RB6PPS Bits -----------------------------------------------------
RB6PPS0          .EQ  $0000
RB6PPS1          .EQ  $0001
RB6PPS2          .EQ  $0002
RB6PPS3          .EQ  $0003
RB6PPS4          .EQ  $0004
RB6PPS5          .EQ  $0005


;----- RB7PPS Bits -----------------------------------------------------
RB7PPS0          .EQ  $0000
RB7PPS1          .EQ  $0001
RB7PPS2          .EQ  $0002
RB7PPS3          .EQ  $0003
RB7PPS4          .EQ  $0004
RB7PPS5          .EQ  $0005


;----- RC0PPS Bits -----------------------------------------------------
RC0PPS0          .EQ  $0000
RC0PPS1          .EQ  $0001
RC0PPS2          .EQ  $0002
RC0PPS3          .EQ  $0003
RC0PPS4          .EQ  $0004
RC0PPS5          .EQ  $0005


;----- RC1PPS Bits -----------------------------------------------------
RC1PPS0          .EQ  $0000
RC1PPS1          .EQ  $0001
RC1PPS2          .EQ  $0002
RC1PPS3          .EQ  $0003
RC1PPS4          .EQ  $0004
RC1PPS5          .EQ  $0005


;----- RC2PPS Bits -----------------------------------------------------
RC2PPS0          .EQ  $0000
RC2PPS1          .EQ  $0001
RC2PPS2          .EQ  $0002
RC2PPS3          .EQ  $0003
RC2PPS4          .EQ  $0004
RC2PPS5          .EQ  $0005


;----- RC3PPS Bits -----------------------------------------------------
RC3PPS0          .EQ  $0000
RC3PPS1          .EQ  $0001
RC3PPS2          .EQ  $0002
RC3PPS3          .EQ  $0003
RC3PPS4          .EQ  $0004
RC3PPS5          .EQ  $0005


;----- RC4PPS Bits -----------------------------------------------------
RC4PPS0          .EQ  $0000
RC4PPS1          .EQ  $0001
RC4PPS2          .EQ  $0002
RC4PPS3          .EQ  $0003
RC4PPS4          .EQ  $0004
RC4PPS5          .EQ  $0005


;----- RC5PPS Bits -----------------------------------------------------
RC5PPS0          .EQ  $0000
RC5PPS1          .EQ  $0001
RC5PPS2          .EQ  $0002
RC5PPS3          .EQ  $0003
RC5PPS4          .EQ  $0004
RC5PPS5          .EQ  $0005


;----- RC6PPS Bits -----------------------------------------------------
RC6PPS0          .EQ  $0000
RC6PPS1          .EQ  $0001
RC6PPS2          .EQ  $0002
RC6PPS3          .EQ  $0003
RC6PPS4          .EQ  $0004
RC6PPS5          .EQ  $0005


;----- RC7PPS Bits -----------------------------------------------------
RC7PPS0          .EQ  $0000
RC7PPS1          .EQ  $0001
RC7PPS2          .EQ  $0002
RC7PPS3          .EQ  $0003
RC7PPS4          .EQ  $0004
RC7PPS5          .EQ  $0005


;----- RD0PPS Bits -----------------------------------------------------
RD0PPS0          .EQ  $0000
RD0PPS1          .EQ  $0001
RD0PPS2          .EQ  $0002
RD0PPS3          .EQ  $0003
RD0PPS4          .EQ  $0004
RD0PPS5          .EQ  $0005


;----- RD1PPS Bits -----------------------------------------------------
RD1PPS0          .EQ  $0000
RD1PPS1          .EQ  $0001
RD1PPS2          .EQ  $0002
RD1PPS3          .EQ  $0003
RD1PPS4          .EQ  $0004
RD1PPS5          .EQ  $0005


;----- RD2PPS Bits -----------------------------------------------------
RD2PPS0          .EQ  $0000
RD2PPS1          .EQ  $0001
RD2PPS2          .EQ  $0002
RD2PPS3          .EQ  $0003
RD2PPS4          .EQ  $0004
RD2PPS5          .EQ  $0005


;----- RD3PPS Bits -----------------------------------------------------
RD3PPS0          .EQ  $0000
RD3PPS1          .EQ  $0001
RD3PPS2          .EQ  $0002
RD3PPS3          .EQ  $0003
RD3PPS4          .EQ  $0004
RD3PPS5          .EQ  $0005


;----- RD4PPS Bits -----------------------------------------------------
RD4PPS0          .EQ  $0000
RD4PPS1          .EQ  $0001
RD4PPS2          .EQ  $0002
RD4PPS3          .EQ  $0003
RD4PPS4          .EQ  $0004
RD4PPS5          .EQ  $0005


;----- RD5PPS Bits -----------------------------------------------------
RD5PPS0          .EQ  $0000
RD5PPS1          .EQ  $0001
RD5PPS2          .EQ  $0002
RD5PPS3          .EQ  $0003
RD5PPS4          .EQ  $0004
RD5PPS5          .EQ  $0005


;----- RD6PPS Bits -----------------------------------------------------
RD6PPS0          .EQ  $0000
RD6PPS1          .EQ  $0001
RD6PPS2          .EQ  $0002
RD6PPS3          .EQ  $0003
RD6PPS4          .EQ  $0004
RD6PPS5          .EQ  $0005


;----- RD7PPS Bits -----------------------------------------------------
RD7PPS0          .EQ  $0000
RD7PPS1          .EQ  $0001
RD7PPS2          .EQ  $0002
RD7PPS3          .EQ  $0003
RD7PPS4          .EQ  $0004
RD7PPS5          .EQ  $0005


;----- RE0PPS Bits -----------------------------------------------------
RE0PPS0          .EQ  $0000
RE0PPS1          .EQ  $0001
RE0PPS2          .EQ  $0002
RE0PPS3          .EQ  $0003
RE0PPS4          .EQ  $0004
RE0PPS5          .EQ  $0005


;----- RE1PPS Bits -----------------------------------------------------
RE1PPS0          .EQ  $0000
RE1PPS1          .EQ  $0001
RE1PPS2          .EQ  $0002
RE1PPS3          .EQ  $0003
RE1PPS4          .EQ  $0004
RE1PPS5          .EQ  $0005


;----- RE2PPS Bits -----------------------------------------------------
RE2PPS0          .EQ  $0000
RE2PPS1          .EQ  $0001
RE2PPS2          .EQ  $0002
RE2PPS3          .EQ  $0003
RE2PPS4          .EQ  $0004
RE2PPS5          .EQ  $0005


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA4            .EQ  $0004
ANSA5            .EQ  $0005
ANSA6            .EQ  $0006
ANSA7            .EQ  $0007


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005
WPUA6            .EQ  $0006
WPUA7            .EQ  $0007


;----- ODCONA Bits -----------------------------------------------------
ODCA0            .EQ  $0000
ODCA1            .EQ  $0001
ODCA2            .EQ  $0002
ODCA3            .EQ  $0003
ODCA4            .EQ  $0004
ODCA5            .EQ  $0005
ODCA6            .EQ  $0006
ODCA7            .EQ  $0007


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  $0000
SLRA1            .EQ  $0001
SLRA2            .EQ  $0002
SLRA3            .EQ  $0003
SLRA4            .EQ  $0004
SLRA5            .EQ  $0005
SLRA6            .EQ  $0006
SLRA7            .EQ  $0007


;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  $0000
INLVLA1          .EQ  $0001
INLVLA2          .EQ  $0002
INLVLA3          .EQ  $0003
INLVLA4          .EQ  $0004
INLVLA5          .EQ  $0005
INLVLA6          .EQ  $0006
INLVLA7          .EQ  $0007


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


;----- CCDNA Bits -----------------------------------------------------
CCDNA0           .EQ  $0000
CCDNA1           .EQ  $0001
CCDNA2           .EQ  $0002
CCDNA3           .EQ  $0003
CCDNA4           .EQ  $0004
CCDNA5           .EQ  $0005
CCDNA6           .EQ  $0006
CCDNA7           .EQ  $0007


;----- CCDPA Bits -----------------------------------------------------
CCDPA0           .EQ  $0000
CCDPA1           .EQ  $0001
CCDPA2           .EQ  $0002
CCDPA3           .EQ  $0003
CCDPA4           .EQ  $0004
CCDPA5           .EQ  $0005
CCDPA6           .EQ  $0006
CCDPA7           .EQ  $0007


;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005
ANSB6            .EQ  $0006
ANSB7            .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- ODCONB Bits -----------------------------------------------------
ODCB0            .EQ  $0000
ODCB1            .EQ  $0001
ODCB2            .EQ  $0002
ODCB3            .EQ  $0003
ODCB4            .EQ  $0004
ODCB5            .EQ  $0005
ODCB6            .EQ  $0006
ODCB7            .EQ  $0007


;----- SLRCONB Bits -----------------------------------------------------
SLRB0            .EQ  $0000
SLRB1            .EQ  $0001
SLRB2            .EQ  $0002
SLRB3            .EQ  $0003
SLRB4            .EQ  $0004
SLRB5            .EQ  $0005
SLRB6            .EQ  $0006
SLRB7            .EQ  $0007


;----- INLVLB Bits -----------------------------------------------------
INLVLB0          .EQ  $0000
INLVLB1          .EQ  $0001
INLVLB2          .EQ  $0002
INLVLB3          .EQ  $0003
INLVLB4          .EQ  $0004
INLVLB5          .EQ  $0005
INLVLB6          .EQ  $0006
INLVLB7          .EQ  $0007


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


;----- CCDNB Bits -----------------------------------------------------
CCDNB0           .EQ  $0000
CCDNB1           .EQ  $0001
CCDNB2           .EQ  $0002
CCDNB3           .EQ  $0003
CCDNB4           .EQ  $0004
CCDNB5           .EQ  $0005
CCDNB6           .EQ  $0006
CCDNB7           .EQ  $0007


;----- CCDPB Bits -----------------------------------------------------
CCDPB0           .EQ  $0000
CCDPB1           .EQ  $0001
CCDPB2           .EQ  $0002
CCDPB3           .EQ  $0003
CCDPB4           .EQ  $0004
CCDPB5           .EQ  $0005
CCDPB6           .EQ  $0006
CCDPB7           .EQ  $0007


;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
ANSC4            .EQ  $0004
ANSC5            .EQ  $0005
ANSC6            .EQ  $0006
ANSC7            .EQ  $0007


;----- WPUC Bits -----------------------------------------------------
WPUC0            .EQ  $0000
WPUC1            .EQ  $0001
WPUC2            .EQ  $0002
WPUC3            .EQ  $0003
WPUC4            .EQ  $0004
WPUC5            .EQ  $0005
WPUC6            .EQ  $0006
WPUC7            .EQ  $0007


;----- ODCONC Bits -----------------------------------------------------
ODCC0            .EQ  $0000
ODCC1            .EQ  $0001
ODCC2            .EQ  $0002
ODCC3            .EQ  $0003
ODCC4            .EQ  $0004
ODCC5            .EQ  $0005
ODCC6            .EQ  $0006
ODCC7            .EQ  $0007


;----- SLRCONC Bits -----------------------------------------------------
SLRC0            .EQ  $0000
SLRC1            .EQ  $0001
SLRC2            .EQ  $0002
SLRC3            .EQ  $0003
SLRC4            .EQ  $0004
SLRC5            .EQ  $0005
SLRC6            .EQ  $0006
SLRC7            .EQ  $0007


;----- INLVLC Bits -----------------------------------------------------
INLVLC0          .EQ  $0000
INLVLC1          .EQ  $0001
INLVLC2          .EQ  $0002
INLVLC3          .EQ  $0003
INLVLC4          .EQ  $0004
INLVLC5          .EQ  $0005
INLVLC6          .EQ  $0006
INLVLC7          .EQ  $0007


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


;----- CCDNC Bits -----------------------------------------------------
CCDNC0           .EQ  $0000
CCDNC1           .EQ  $0001
CCDNC2           .EQ  $0002
CCDNC3           .EQ  $0003
CCDNC4           .EQ  $0004
CCDNC5           .EQ  $0005
CCDNC6           .EQ  $0006
CCDNC7           .EQ  $0007


;----- CCDPC Bits -----------------------------------------------------
CCDPC0           .EQ  $0000
CCDPC1           .EQ  $0001
CCDPC2           .EQ  $0002
CCDPC3           .EQ  $0003
CCDPC4           .EQ  $0004
CCDPC5           .EQ  $0005
CCDPC6           .EQ  $0006
CCDPC7           .EQ  $0007


;----- ANSELD Bits -----------------------------------------------------
ANSD0            .EQ  $0000
ANSD1            .EQ  $0001
ANSD2            .EQ  $0002
ANSD3            .EQ  $0003
ANSD4            .EQ  $0004
ANSD5            .EQ  $0005
ANSD6            .EQ  $0006
ANSD7            .EQ  $0007


;----- WPUD Bits -----------------------------------------------------
WPUD0            .EQ  $0000
WPUD1            .EQ  $0001
WPUD2            .EQ  $0002
WPUD3            .EQ  $0003
WPUD4            .EQ  $0004
WPUD5            .EQ  $0005
WPUD6            .EQ  $0006
WPUD7            .EQ  $0007


;----- ODCOND Bits -----------------------------------------------------
ODCD0            .EQ  $0000
ODCD1            .EQ  $0001
ODCD2            .EQ  $0002
ODCD3            .EQ  $0003
ODCD4            .EQ  $0004
ODCD5            .EQ  $0005
ODCD6            .EQ  $0006
ODCD7            .EQ  $0007


;----- SLRCOND Bits -----------------------------------------------------
SLRD0            .EQ  $0000
SLRD1            .EQ  $0001
SLRD2            .EQ  $0002
SLRD3            .EQ  $0003
SLRD4            .EQ  $0004
SLRD5            .EQ  $0005
SLRD6            .EQ  $0006
SLRD7            .EQ  $0007


;----- INLVLD Bits -----------------------------------------------------
INLVLD0          .EQ  $0000
INLVLD1          .EQ  $0001
INLVLD2          .EQ  $0002
INLVLD3          .EQ  $0003
INLVLD4          .EQ  $0004
INLVLD5          .EQ  $0005
INLVLD6          .EQ  $0006
INLVLD7          .EQ  $0007


;----- CCDND Bits -----------------------------------------------------
CCDND0           .EQ  $0000
CCDND1           .EQ  $0001
CCDND2           .EQ  $0002
CCDND3           .EQ  $0003
CCDND4           .EQ  $0004
CCDND5           .EQ  $0005
CCDND6           .EQ  $0006
CCDND7           .EQ  $0007


;----- CCDPD Bits -----------------------------------------------------
CCDPD0           .EQ  $0000
CCDPD1           .EQ  $0001
CCDPD2           .EQ  $0002
CCDPD3           .EQ  $0003
CCDPD4           .EQ  $0004
CCDPD5           .EQ  $0005
CCDPD6           .EQ  $0006
CCDPD7           .EQ  $0007


;----- ANSELE Bits -----------------------------------------------------
ANSE0            .EQ  $0000
ANSE1            .EQ  $0001
ANSE2            .EQ  $0002


;----- WPUE Bits -----------------------------------------------------
WPUE0            .EQ  $0000
WPUE1            .EQ  $0001
WPUE2            .EQ  $0002
WPUE3            .EQ  $0003


;----- ODCONE Bits -----------------------------------------------------
ODCE0            .EQ  $0000
ODCE1            .EQ  $0001
ODCE2            .EQ  $0002


;----- SLRCONE Bits -----------------------------------------------------
SLRE0            .EQ  $0000
SLRE1            .EQ  $0001
SLRE2            .EQ  $0002


;----- INLVLE Bits -----------------------------------------------------
INLVLE0          .EQ  $0000
INLVLE1          .EQ  $0001
INLVLE2          .EQ  $0002
INLVLE3          .EQ  $0003


;----- IOCEP Bits -----------------------------------------------------
IOCEP3           .EQ  $0003


;----- IOCEN Bits -----------------------------------------------------
IOCEN3           .EQ  $0003


;----- IOCEF Bits -----------------------------------------------------
IOCEF3           .EQ  $0003


;----- CCDNE Bits -----------------------------------------------------
CCDNE0           .EQ  $0000
CCDNE1           .EQ  $0001
CCDNE2           .EQ  $0002


;----- CCDPE Bits -----------------------------------------------------
CCDPE0           .EQ  $0000
CCDPE1           .EQ  $0001
CCDPE2           .EQ  $0002


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
;   CONFIG4           800Ah
;   CONFIG5           800Bh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $8007
_CONFIG2        .EQ  $8008
_CONFIG3        .EQ  $8009
_CONFIG4        .EQ  $800A
_CONFIG5        .EQ  $800B

;----- CONFIG1 Options --------------------------------------------------
_FEXTOSC_LP          .EQ  $3FF8  LP (crystal oscillator) optimized for 32.768kHz; PFM set to low power
_FEXTOSC_XT          .EQ  $3FF9  XT (crystal oscillator) above 500kHz, below 4MHz; PFM set to medium power
_FEXTOSC_HS          .EQ  $3FFA  HS (crystal oscillator) above 4MHz; PFM set to high power
_FEXTOSC_Reserved    .EQ  $3FFB  Reserved
_FEXTOSC_OFF         .EQ  $3FFC  Oscillator not enabled
_FEXTOSC_ECL         .EQ  $3FFD  EC below 500kHz; PFM set to low power
_FEXTOSC_ECM         .EQ  $3FFE  EC for 500kHz to 8MHz; PFM set to medium power
_FEXTOSC_ECH         .EQ  $3FFF  EC above 8MHz; PFM set to high power

_RSTOSC_HFINT32      .EQ  $3F8F  HFINTOSC with OSCFRQ= 32 MHz and CDIV = 1:1
_RSTOSC_HFINTPLL     .EQ  $3F9F  HFINTOSC with 2x PLL, with OSCFRQ = 16 MHz and CDIV = 1:1 (FOSC = 32 MHz)
_RSTOSC_EXT4X        .EQ  $3FAF  EXTOSC with 4x PLL, with EXTOSC operating per FEXTOSC bits
_RSTOSC_Reserved     .EQ  $3FBF  Reserved
_RSTOSC_SOSC         .EQ  $3FCF  SOSC
_RSTOSC_LFINT        .EQ  $3FDF  LFINTOSC
_RSTOSC_HFINT1       .EQ  $3FEF  HFINTOSC (1MHz)
_RSTOSC_EXT1X        .EQ  $3FFF  EXTOSC operating per FEXTOSC bits

_CLKOUTEN_ON         .EQ  $3EFF  CLKOUT function is enabled; FOSC/4 clock appears at OSC2
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled; i/o or oscillator function on OSC2

_CSWEN_OFF           .EQ  $37FF  The NOSC and NDIV bits cannot be changed by user software
_CSWEN_ON            .EQ  $3FFF  Writing to NOSC and NDIV is allowed

_FCMEN_OFF           .EQ  $1FFF  FSCM timer disabled
_FCMEN_ON            .EQ  $3FFF  FSCM timer enabled

;----- CONFIG2 Options --------------------------------------------------
_MCLRE_OFF           .EQ  $3FFE  MCLR pin function is port defined function
_MCLRE_ON            .EQ  $3FFF  MCLR pin is Master Clear function

_PWRTE_ON            .EQ  $3FFD  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_LPBOREN_ON          .EQ  $3FDF  ULPBOR enabled
_LPBOREN_OFF         .EQ  $3FFF  ULPBOR disabled

_BOREN_OFF           .EQ  $3F3F  Brown-out reset disabled
_BOREN_SBOREN        .EQ  $3F7F  Brown-out reset enabled according to SBOREN bit
_BOREN_NSLEEP        .EQ  $3FBF  Brown-out Reset enabled while running, disabled in sleep; SBOREN is ignored
_BOREN_ON            .EQ  $3FFF  Brown-out Reset Enabled, SBOREN bit is ignored

_BORV_HI             .EQ  $3DFF  Brown-out Reset Voltage (VBOR) is set to 2.7V
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (VBOR) set to 1.9V on LF, and 2.45V on F Devices

_ZCD_OFF             .EQ  $3BFF  Zero-cross detect circuit is always enabled
_ZCD_ON              .EQ  $3FFF  Zero-cross detect circuit is disabled at POR.

_PPS1WAY_OFF         .EQ  $37FF  The PPSLOCK bit can be set and cleared repeatedly by software
_PPS1WAY_ON          .EQ  $3FFF  The PPSLOCK bit can be cleared and set only once in software

_STVREN_OFF          .EQ  $2FFF  Stack Overflow or Underflow will not cause a reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a reset

;----- CONFIG3 Options --------------------------------------------------
_WDTCPS_WDTCPS_0     .EQ  $3FE0  Divider ratio 1:32
_WDTCPS_WDTCPS_1     .EQ  $3FE1  Divider ratio 1:64
_WDTCPS_WDTCPS_2     .EQ  $3FE2  Divider ratio 1:128
_WDTCPS_WDTCPS_3     .EQ  $3FE3  Divider ratio 1:256
_WDTCPS_WDTCPS_4     .EQ  $3FE4  Divider ratio 1:512
_WDTCPS_WDTCPS_5     .EQ  $3FE5  Divider ratio 1:1024
_WDTCPS_WDTCPS_6     .EQ  $3FE6  Divider ratio 1:2048
_WDTCPS_WDTCPS_7     .EQ  $3FE7  Divider ratio 1:4096
_WDTCPS_WDTCPS_8     .EQ  $3FE8  Divider ratio 1:8192
_WDTCPS_WDTCPS_9     .EQ  $3FE9  Divider ratio 1:16384
_WDTCPS_WDTCPS_10    .EQ  $3FEA  Divider ratio 1:32768
_WDTCPS_WDTCPS_11    .EQ  $3FEB  Divider ratio 1:65536
_WDTCPS_WDTCPS_12    .EQ  $3FEC  Divider ratio 1:131072
_WDTCPS_WDTCPS_13    .EQ  $3FED  Divider ratio 1:262144
_WDTCPS_WDTCPS_14    .EQ  $3FEE  Divider ratio 1:524299
_WDTCPS_WDTCPS_15    .EQ  $3FEF  Divider ratio 1:1048576
_WDTCPS_WDTCPS_16    .EQ  $3FF0  Divider ratio 1:2097152
_WDTCPS_WDTCPS_17    .EQ  $3FF1  Divider ratio 1:4194304
_WDTCPS_WDTCPS_18    .EQ  $3FF2  Divider ratio 1:8388608
_WDTCPS_WDTCPS_19    .EQ  $3FF3  Divider ratio 1:32
_WDTCPS_WDTCPS_20    .EQ  $3FF4  Divider ratio 1:32
_WDTCPS_WDTCPS_21    .EQ  $3FF5  Divider ratio 1:32
_WDTCPS_WDTCPS_22    .EQ  $3FF6  Divider ratio 1:32
_WDTCPS_WDTCPS_23    .EQ  $3FF7  Divider ratio 1:32
_WDTCPS_WDTCPS_24    .EQ  $3FF8  Divider ratio 1:32
_WDTCPS_WDTCPS_25    .EQ  $3FF9  Divider ratio 1:32
_WDTCPS_WDTCPS_26    .EQ  $3FFA  Divider ratio 1:32
_WDTCPS_WDTCPS_27    .EQ  $3FFB  Divider ratio 1:32
_WDTCPS_WDTCPS_28    .EQ  $3FFC  Divider ratio 1:32
_WDTCPS_WDTCPS_29    .EQ  $3FFD  Divider ratio 1:32
_WDTCPS_WDTCPS_30    .EQ  $3FFE  Divider ratio 1:32
_WDTCPS_WDTCPS_31    .EQ  $3FFF  Divider ratio 1:65536  software control of WDTPS

_WDTE_OFF            .EQ  $3F9F  WDT Disabled, SWDTEN is ignored
_WDTE_SWDTEN         .EQ  $3FBF  WDT enabled/disabled by SWDTEN bit in WDTCON0
_WDTE_NSLEEP         .EQ  $3FDF  WDT enabled while sleep=0, suspended when sleep=1  SWDTEN ignored
_WDTE_ON             .EQ  $3FFF  WDT enabled regardless of sleep; SWDTEN ignored

_WDTCWS_WDTCWS_0     .EQ  $38FF  window delay = 87.5 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_1     .EQ  $39FF  window delay = 75 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_2     .EQ  $3AFF  window delay = 62.5 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_3     .EQ  $3BFF  window delay = 50 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_4     .EQ  $3CFF  window delay = 37.5 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_5     .EQ  $3DFF  window delay = 25 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_6     .EQ  $3EFF  window always open (100%); no software control; keyed access required
_WDTCWS_WDTCWS_7     .EQ  $3FFF  window always open (100%); software control; keyed access not required

_WDTCCS_LFINTOSC     .EQ  $07FF  WDT reference clock is the 31.0kHz LFINTOSC output
_WDTCCS_HFINTOSC     .EQ  $0FFF  WDT reference clock is the 31.25 kHz HFINTOSC
_WDTCCS_SC           .EQ  $3FFF  Software Control

;----- CONFIG4 Options --------------------------------------------------
_WRT_ON              .EQ  $3FFC  0x0000 to 0x3FFF write protected
_WRT_WRT_lower       .EQ  $3FFD  0x0000 to x1FFF write protected
_WRT_WRT_upper       .EQ  $3FFE  0x0000 to 0x01FF write protected
_WRT_OFF             .EQ  $3FFF  Write protection off

_SCANE_not_available .EQ  $2FFF  Scanner module is not available for use
_SCANE_available     .EQ  $3FFF  Scanner module is available for use

_LVP_OFF             .EQ  $1FFF  High Voltage on MCLR/Vpp must be used for programming
_LVP_ON              .EQ  $3FFF  Low Voltage programming enabled. MCLR/Vpp pin function is MCLR.

;----- CONFIG5 Options --------------------------------------------------
_CP_ON               .EQ  $3FFE  Program Memory code protection enabled
_CP_OFF              .EQ  $3FFF  Program Memory code protection disabled

_CPD_ON              .EQ  $3FFD  Data EEPROM code protection enabled
_CPD_OFF             .EQ  $3FFF  Data EEPROM code protection disabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
