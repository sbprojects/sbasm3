;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16F15354 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16F15354 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14e
                  .MS   4096

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
TRISA            .EQ  $0012
TRISB            .EQ  $0013
TRISC            .EQ  $0014
LATA             .EQ  $0018
LATB             .EQ  $0019
LATC             .EQ  $001A

;-----Bank1------------------
ADRES            .EQ  $009B
ADRESL           .EQ  $009B
ADRESH           .EQ  $009C
ADCON0           .EQ  $009D
ADCON1           .EQ  $009E
ADACT            .EQ  $009F

;-----Bank2------------------
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

;-----Bank5------------------
T2TMR            .EQ  $028C
TMR2             .EQ  $028C
PR2              .EQ  $028D
T2PR             .EQ  $028D
T2CON            .EQ  $028E
T2HLT            .EQ  $028F
T2CLKCON         .EQ  $0290
T2RST            .EQ  $0291

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
PWM3DCL          .EQ  $0314
PWM3DCH          .EQ  $0315
PWM3CON          .EQ  $0316
PWM4DCL          .EQ  $0318
PWM4DCH          .EQ  $0319
PWM4CON          .EQ  $031A
PWM5DCL          .EQ  $031C
PWM5DCH          .EQ  $031D
PWM5CON          .EQ  $031E

;-----Bank7------------------
PWM6DCL          .EQ  $038C
PWM6DCH          .EQ  $038D
PWM6CON          .EQ  $038E

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
TMR0             .EQ  $059C
TMR0L            .EQ  $059C
PR0              .EQ  $059D
TMR0H            .EQ  $059D
T0CON0           .EQ  $059E
T0CON1           .EQ  $059F

;-----Bank12------------------
CWG1CLKCON       .EQ  $060C
CWG1DAT          .EQ  $060D
CWG1DBR          .EQ  $060E
CWG1DBF          .EQ  $060F
CWG1CON0         .EQ  $0610
CWG1CON1         .EQ  $0611
CWG1AS0          .EQ  $0612
CWG1AS1          .EQ  $0613
CWG1STR          .EQ  $0614

;-----Bank14------------------
PIR0             .EQ  $070C
PIR1             .EQ  $070D
PIR2             .EQ  $070E
PIR3             .EQ  $070F
PIR4             .EQ  $0710
PIR5             .EQ  $0711
PIR6             .EQ  $0712
PIR7             .EQ  $0713
PIE0             .EQ  $0716
PIE1             .EQ  $0717
PIE2             .EQ  $0718
PIE3             .EQ  $0719
PIE4             .EQ  $071A
PIE5             .EQ  $071B
PIE6             .EQ  $071C
PIE7             .EQ  $071D

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
PCON1            .EQ  $0814
NVMADR           .EQ  $081A
NVMADRL          .EQ  $081A
NVMADRH          .EQ  $081B
NVMDAT           .EQ  $081C
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
CM1NCH           .EQ  $0992
CM1PCH           .EQ  $0993
CM2CON0          .EQ  $0994
CM2CON1          .EQ  $0995
CM2NCH           .EQ  $0996
CM2PCH           .EQ  $0997

;-----Bank20------------------
RC2REG           .EQ  $0A19
RCREG2           .EQ  $0A19
TX2REG           .EQ  $0A1A
TXREG2           .EQ  $0A1A
SP2BRG           .EQ  $0A1B
SP2BRGL          .EQ  $0A1B
SPBRG2           .EQ  $0A1B
SP2BRGH          .EQ  $0A1C
SPBRGH2          .EQ  $0A1C
RC2STA           .EQ  $0A1D
RCSTA2           .EQ  $0A1D
TX2STA           .EQ  $0A1E
TXSTA2           .EQ  $0A1E
BAUD2CON         .EQ  $0A1F
BAUDCON2         .EQ  $0A1F
BAUDCTL2         .EQ  $0A1F

;-----Bank60------------------
CLCDATA          .EQ  $1E0F
CLC1CON          .EQ  $1E10
CLC1POL          .EQ  $1E11
CLC1SEL0         .EQ  $1E12
CLC1SEL1         .EQ  $1E13
CLC1SEL2         .EQ  $1E14
CLC1SEL3         .EQ  $1E15
CLC1GLS0         .EQ  $1E16
CLC1GLS1         .EQ  $1E17
CLC1GLS2         .EQ  $1E18
CLC1GLS3         .EQ  $1E19
CLC2CON          .EQ  $1E1A
CLC2POL          .EQ  $1E1B
CLC2SEL0         .EQ  $1E1C
CLC2SEL1         .EQ  $1E1D
CLC2SEL2         .EQ  $1E1E
CLC2SEL3         .EQ  $1E1F
CLC2GLS0         .EQ  $1E20
CLC2GLS1         .EQ  $1E21
CLC2GLS2         .EQ  $1E22
CLC2GLS3         .EQ  $1E23
CLC3CON          .EQ  $1E24
CLC3POL          .EQ  $1E25
CLC3SEL0         .EQ  $1E26
CLC3SEL1         .EQ  $1E27
CLC3SEL2         .EQ  $1E28
CLC3SEL3         .EQ  $1E29
CLC3GLS0         .EQ  $1E2A
CLC3GLS1         .EQ  $1E2B
CLC3GLS2         .EQ  $1E2C
CLC3GLS3         .EQ  $1E2D
CLC4CON          .EQ  $1E2E
CLC4POL          .EQ  $1E2F
CLC4SEL0         .EQ  $1E30
CLC4SEL1         .EQ  $1E31
CLC4SEL2         .EQ  $1E32
CLC4SEL3         .EQ  $1E33
CLC4GLS0         .EQ  $1E34
CLC4GLS1         .EQ  $1E35
CLC4GLS2         .EQ  $1E36
CLC4GLS3         .EQ  $1E37

;-----Bank61------------------
PPSLOCK          .EQ  $1E8F
INTPPS           .EQ  $1E90
T0CKIPPS         .EQ  $1E91
T1CKIPPS         .EQ  $1E92
T1GPPS           .EQ  $1E93
T2INPPS          .EQ  $1E9C
CCP1PPS          .EQ  $1EA1
CCP2PPS          .EQ  $1EA2
CWG1PPS          .EQ  $1EB1
CLCIN0PPS        .EQ  $1EBB
CLCIN1PPS        .EQ  $1EBC
CLCIN2PPS        .EQ  $1EBD
CLCIN3PPS        .EQ  $1EBE
ADCACTPPS        .EQ  $1EC3
SSP1CLKPPS       .EQ  $1EC5
SSP1DATPPS       .EQ  $1EC6
SSP1SSPPS        .EQ  $1EC7
SSP2CLKPPS       .EQ  $1EC8
SSP2DATPPS       .EQ  $1EC9
SSP2SSPPS        .EQ  $1ECA
RX1DTPPS         .EQ  $1ECB
TX1CKPPS         .EQ  $1ECC
RX2DTPPS         .EQ  $1ECD
TX2CKPPS         .EQ  $1ECE

;-----Bank62------------------
RA0PPS           .EQ  $1F10
RA1PPS           .EQ  $1F11
RA2PPS           .EQ  $1F12
RA3PPS           .EQ  $1F13
RA4PPS           .EQ  $1F14
RA5PPS           .EQ  $1F15
RA6PPS           .EQ  $1F16
RA7PPS           .EQ  $1F17
RB0PPS           .EQ  $1F18
RB1PPS           .EQ  $1F19
RB2PPS           .EQ  $1F1A
RB3PPS           .EQ  $1F1B
RB4PPS           .EQ  $1F1C
RB5PPS           .EQ  $1F1D
RB6PPS           .EQ  $1F1E
RB7PPS           .EQ  $1F1F
RC0PPS           .EQ  $1F20
RC1PPS           .EQ  $1F21
RC2PPS           .EQ  $1F22
RC3PPS           .EQ  $1F23
RC4PPS           .EQ  $1F24
RC5PPS           .EQ  $1F25
RC6PPS           .EQ  $1F26
RC7PPS           .EQ  $1F27
ANSELA           .EQ  $1F38
WPUA             .EQ  $1F39
ODCONA           .EQ  $1F3A
SLRCONA          .EQ  $1F3B
INLVLA           .EQ  $1F3C
IOCAP            .EQ  $1F3D
IOCAN            .EQ  $1F3E
IOCAF            .EQ  $1F3F
ANSELB           .EQ  $1F43
WPUB             .EQ  $1F44
ODCONB           .EQ  $1F45
SLRCONB          .EQ  $1F46
INLVLB           .EQ  $1F47
IOCBP            .EQ  $1F48
IOCBN            .EQ  $1F49
IOCBF            .EQ  $1F4A
ANSELC           .EQ  $1F4E
WPUC             .EQ  $1F4F
ODCONC           .EQ  $1F50
SLRCONC          .EQ  $1F51
INLVLC           .EQ  $1F52
IOCCP            .EQ  $1F53
IOCCN            .EQ  $1F54
IOCCF            .EQ  $1F55
WPUE             .EQ  $1F65
INLVLE           .EQ  $1F68
IOCEP            .EQ  $1F69
IOCEN            .EQ  $1F6A
IOCEF            .EQ  $1F6B

;-----Bank63------------------
STATUS_SHAD      .EQ  $1FE4
WREG_SHAD        .EQ  $1FE5
BSR_SHAD         .EQ  $1FE6
PCLATH_SHAD      .EQ  $1FE7
FSR0L_SHAD       .EQ  $1FE8
FSR0_SHAD        .EQ  $1FE8
FSR0H_SHAD       .EQ  $1FE9
FSR1L_SHAD       .EQ  $1FEA
FSR1H_SHAD       .EQ  $1FEB
STKPTR           .EQ  $1FED
TOSL             .EQ  $1FEE
TOSH             .EQ  $1FEF

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
BSR5             .EQ  $0005


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


;----- PORTE Bits -----------------------------------------------------
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


;----- ADRESL Bits -----------------------------------------------------
ADRESL0          .EQ  $0000
ADRESL1          .EQ  $0001
ADRESL2          .EQ  $0002
ADRESL3          .EQ  $0003
ADRESL4          .EQ  $0004
ADRESL5          .EQ  $0005
ADRESL6          .EQ  $0006
ADRESL7          .EQ  $0007


;----- ADRESH Bits -----------------------------------------------------
ADRESH0          .EQ  $0000
ADRESH1          .EQ  $0001
ADRESH2          .EQ  $0002
ADRESH3          .EQ  $0003
ADRESH4          .EQ  $0004
ADRESH5          .EQ  $0005
ADRESH6          .EQ  $0006
ADRESH7          .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GOnDONE          .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006
CHS5             .EQ  $0007



;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006
ADFM             .EQ  $0007



;----- ADACT Bits -----------------------------------------------------
ADACT0           .EQ  $0000
ADACT1           .EQ  $0001
ADACT2           .EQ  $0002
ADACT3           .EQ  $0003



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
OE               .EQ  $0006
EN               .EQ  $0007

PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3OE           .EQ  $0006
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
OE               .EQ  $0006
EN               .EQ  $0007

PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4OE           .EQ  $0006
PWM4EN           .EQ  $0007


;----- PWM5DCL Bits -----------------------------------------------------
DC0              .EQ  $0006
DC1              .EQ  $0007

PWM5DC0          .EQ  $0006
PWM5DC1          .EQ  $0007

PWMPW0           .EQ  $0006
PWMPW1           .EQ  $0007


;----- PWM5DCH Bits -----------------------------------------------------
DC2              .EQ  $0000
DC3              .EQ  $0001
DC4              .EQ  $0002
DC5              .EQ  $0003
DC6              .EQ  $0004
DC7              .EQ  $0005
DC8              .EQ  $0006
DC9              .EQ  $0007

PWM5DC2          .EQ  $0000
PWM5DC3          .EQ  $0001
PWM5DC4          .EQ  $0002
PWM5DC5          .EQ  $0003
PWM5DC6          .EQ  $0004
PWM5DC7          .EQ  $0005
PWM5DC8          .EQ  $0006
PWM5DC9          .EQ  $0007

PWMPW2           .EQ  $0000
PWMPW3           .EQ  $0001
PWMPW4           .EQ  $0002
PWMPW5           .EQ  $0003
PWMPW6           .EQ  $0004
PWMPW7           .EQ  $0005
PWMPW8           .EQ  $0006
PWMPW9           .EQ  $0007


;----- PWM5CON Bits -----------------------------------------------------
POL_PWM5CON      .EQ  $0004
OUT_PWM5CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM5POL          .EQ  $0004
PWM5OUT          .EQ  $0005
PWM5OE           .EQ  $0006
PWM5EN           .EQ  $0007


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
T0OE             .EQ  $0006
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



;----- CWG1CLKCON Bits -----------------------------------------------------
CS               .EQ  $0000

CWG1CS           .EQ  $0000


;----- CWG1DAT Bits -----------------------------------------------------
CWG1DAT0         .EQ  $0000
CWG1DAT1         .EQ  $0001
CWG1DAT2         .EQ  $0002
CWG1DAT3         .EQ  $0003


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
WDTTMR4          .EQ  $0007


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
SBOREN           .EQ  $0007


;----- VREGCON Bits -----------------------------------------------------
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


;----- PCON1 Bits -----------------------------------------------------
NOT_MEMV         .EQ  $0001


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
SP               .EQ  $0002
POL_CM1CON0      .EQ  $0004
OUT_CM1CON0      .EQ  $0006
EN               .EQ  $0007

C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1SP             .EQ  $0002
C1POL            .EQ  $0004
C1OUT_CM1CON0    .EQ  $0006
C1EN             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
INTN_CM1CON1     .EQ  $0000
INTP_CM1CON1     .EQ  $0001

C1INTN           .EQ  $0000
C1INTP           .EQ  $0001


;----- CM1NCH Bits -----------------------------------------------------
NCH0             .EQ  $0000
NCH1             .EQ  $0001
NCH2             .EQ  $0002

C1NCH0           .EQ  $0000
C1NCH1           .EQ  $0001
C1NCH2           .EQ  $0002


;----- CM1PCH Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002

C1PCH0           .EQ  $0000
C1PCH1           .EQ  $0001
C1PCH2           .EQ  $0002


;----- CM2CON0 Bits -----------------------------------------------------
SYNC_CM2CON0     .EQ  $0000
HYS              .EQ  $0001
SP               .EQ  $0002
POL_CM2CON0      .EQ  $0004
OUT_CM2CON0      .EQ  $0006
EN               .EQ  $0007

C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2SP             .EQ  $0002
C2POL            .EQ  $0004
C2OUT_CM2CON0    .EQ  $0006
C2EN             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
INTN_CM2CON1     .EQ  $0000
INTP_CM2CON1     .EQ  $0001

C2INTN           .EQ  $0000
C2INTP           .EQ  $0001


;----- CM2NCH Bits -----------------------------------------------------
NCH0             .EQ  $0000
NCH1             .EQ  $0001
NCH2             .EQ  $0002

C2NCH0           .EQ  $0000
C2NCH1           .EQ  $0001
C2NCH2           .EQ  $0002


;----- CM2PCH Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002

C2PCH0           .EQ  $0000
C2PCH1           .EQ  $0001
C2PCH2           .EQ  $0002


;----- RC2STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX2STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TX2STA      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TXSTA2      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD2CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- CLCDATA Bits -----------------------------------------------------
MLC1OUT          .EQ  $0000
MLC2OUT          .EQ  $0001
MLC3OUT          .EQ  $0002
MLC4OUT          .EQ  $0003


;----- CLC1CON Bits -----------------------------------------------------
LC1INTN          .EQ  $0003
LC1INTP          .EQ  $0004
LC1OUT           .EQ  $0005
LC1OE            .EQ  $0006
LC1EN            .EQ  $0007

LC1MODE0         .EQ  $0000
LC1MODE1         .EQ  $0001
LC1MODE2         .EQ  $0002

INTN_CLC1CON     .EQ  $0003
INTP_CLC1CON     .EQ  $0004
OUT_CLC1CON      .EQ  $0005
OE               .EQ  $0006
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
LC2OE            .EQ  $0006
LC2EN            .EQ  $0007

LC2MODE0         .EQ  $0000
LC2MODE1         .EQ  $0001
LC2MODE2         .EQ  $0002

INTN_CLC2CON     .EQ  $0003
INTP_CLC2CON     .EQ  $0004
OUT_CLC2CON      .EQ  $0005
OE               .EQ  $0006
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
LC3OE            .EQ  $0006
LC3EN            .EQ  $0007

LC3MODE0         .EQ  $0000
LC3MODE1         .EQ  $0001
LC3MODE2         .EQ  $0002

INTN_CLC3CON     .EQ  $0003
INTP_CLC3CON     .EQ  $0004
OUT_CLC3CON      .EQ  $0005
OE               .EQ  $0006
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
LC4OE            .EQ  $0006
LC4EN            .EQ  $0007

LC4MODE0         .EQ  $0000
LC4MODE1         .EQ  $0001
LC4MODE2         .EQ  $0002

INTN_CLC4CON     .EQ  $0003
INTP_CLC4CON     .EQ  $0004
OUT_CLC4CON      .EQ  $0005
OE               .EQ  $0006
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


;----- T2INPPS Bits -----------------------------------------------------
T2INPPS0         .EQ  $0000
T2INPPS1         .EQ  $0001
T2INPPS2         .EQ  $0002
T2INPPS3         .EQ  $0003
T2INPPS4         .EQ  $0004


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


;----- CWG1PPS Bits -----------------------------------------------------
CWG1PPS0         .EQ  $0000
CWG1PPS1         .EQ  $0001
CWG1PPS2         .EQ  $0002
CWG1PPS3         .EQ  $0003
CWG1PPS4         .EQ  $0004


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
ADACTPPS0        .EQ  $0000
ADACTPPS1        .EQ  $0001
ADACTPPS2        .EQ  $0002
ADACTPPS3        .EQ  $0003
ADACTPPS4        .EQ  $0004


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


;----- RX1DTPPS Bits -----------------------------------------------------
RX1DTPPS0        .EQ  $0000
RX1DTPPS1        .EQ  $0001
RX1DTPPS2        .EQ  $0002
RX1DTPPS3        .EQ  $0003
RX1DTPPS4        .EQ  $0004


;----- TX1CKPPS Bits -----------------------------------------------------
TX1CKPPS0        .EQ  $0000
TX1CKPPS1        .EQ  $0001
TX1CKPPS2        .EQ  $0002
TX1CKPPS3        .EQ  $0003
TX1CKPPS4        .EQ  $0004


;----- RX2DTPPS Bits -----------------------------------------------------
RX2DTPPS0        .EQ  $0000
RX2DTPPS1        .EQ  $0001
RX2DTPPS2        .EQ  $0002
RX2DTPPS3        .EQ  $0003
RX2DTPPS4        .EQ  $0004


;----- TX2CKPPS Bits -----------------------------------------------------
TX2CKPPS0        .EQ  $0000
TX2CKPPS1        .EQ  $0001
TX2CKPPS2        .EQ  $0002
TX2CKPPS3        .EQ  $0003
TX2CKPPS4        .EQ  $0004


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


;----- WPUE Bits -----------------------------------------------------
WPUE3            .EQ  $0003


;----- INLVLE Bits -----------------------------------------------------
INLVLE3          .EQ  $0003


;----- IOCEP Bits -----------------------------------------------------
IOCEP3           .EQ  $0003


;----- IOCEN Bits -----------------------------------------------------
IOCEN3           .EQ  $0003


;----- IOCEF Bits -----------------------------------------------------
IOCEF3           .EQ  $0003


;----- STKPTR Bits -----------------------------------------------------
STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004


;----- TOSL Bits -----------------------------------------------------
TOSL0            .EQ  $0000
TOSL1            .EQ  $0001
TOSL2            .EQ  $0002
TOSL3            .EQ  $0003
TOSL4            .EQ  $0004
TOSL5            .EQ  $0005
TOSL6            .EQ  $0006
TOSL7            .EQ  $0007


;----- TOSH Bits -----------------------------------------------------
TOSH0            .EQ  $0000
TOSH1            .EQ  $0001
TOSH2            .EQ  $0002
TOSH3            .EQ  $0003
TOSH4            .EQ  $0004
TOSH5            .EQ  $0005
TOSH6            .EQ  $0006
TOSH7            .EQ  $0007



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $1FFF

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

_ZCD_ON              .EQ  $3BFF  Zero-cross detect circuit is always enabled
_ZCD_OFF             .EQ  $3FFF  Zero-cross detect circuit is disabled at POR.

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
_WDTCCS_SOSC         .EQ  $17FF  WDT reference clock is the 32kHz secondary oscillator
_WDTCCS_SC           .EQ  $3FFF  Software Control

;----- CONFIG4 Options --------------------------------------------------
_BBSIZE_BB64K        .EQ  $3FF8  * half of user program memory
_BBSIZE_BB32K        .EQ  $3FF9  * half of user program memory
_BBSIZE_BB16K        .EQ  $3FFA  * half of user program memory
_BBSIZE_BB8K         .EQ  $3FFB  * half of user program memory
_BBSIZE_BB4K         .EQ  $3FFC  * half of user program memory
_BBSIZE_BB2K         .EQ  $3FFD  2048 byte boot block size
_BBSIZE_BB1K         .EQ  $3FFE  1024 byte boot block size
_BBSIZE_BB512        .EQ  $3FFF  512 byte boot block size

_BBEN_ON             .EQ  $3FF7  Boot Block enabled
_BBEN_OFF            .EQ  $3FFF  Boot Block disabled

_SAFEN_ON            .EQ  $3FEF  SAF enabled
_SAFEN_OFF           .EQ  $3FFF  SAF disabled

_WRTAPP_ON           .EQ  $3F7F  Application Block write protected
_WRTAPP_OFF          .EQ  $3FFF  Application Block not write protected

_WRTB_ON             .EQ  $3EFF  Boot Block write protected
_WRTB_OFF            .EQ  $3FFF  Boot Block not write protected

_WRTC_ON             .EQ  $3DFF  Configuration Register write protected
_WRTC_OFF            .EQ  $3FFF  Configuration Register not write protected

_WRTD_ON             .EQ  $3BFF  Data EEPROM write protected
_WRTD_OFF            .EQ  $3FFF  Data EEPROM not write protected

_WRTSAF_ON           .EQ  $37FF  SAF write protected
_WRTSAF_OFF          .EQ  $3FFF  SAF not write protected

_LVP_OFF             .EQ  $1FFF  High Voltage on MCLR/Vpp must be used for programming
_LVP_ON              .EQ  $3FFF  Low Voltage programming enabled. MCLR/Vpp pin function is MCLR.

;----- CONFIG5 Options --------------------------------------------------
_CP_ON               .EQ  $3FFE  UserNVM code protection enabled
_CP_OFF              .EQ  $3FFF  UserNVM code protection disabled

;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $8006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $8000
_IDLOC1          .EQ  $8001
_IDLOC2          .EQ  $8002
_IDLOC3          .EQ  $8003
