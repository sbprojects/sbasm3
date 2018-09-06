;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC12LF1572 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC12LF1572 microcontroller.  These names
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
TMR0             .EQ  $0015
TMR1             .EQ  $0016
TMR1L            .EQ  $0016
TMR1H            .EQ  $0017
T1CON            .EQ  $0018
T1GCON           .EQ  $0019
TMR2             .EQ  $001A
PR2              .EQ  $001B
T2CON            .EQ  $001C

;-----Bank1------------------
TRISA            .EQ  $008C
PIE1             .EQ  $0091
PIE2             .EQ  $0092
PIE3             .EQ  $0093
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
WDTCON           .EQ  $0097
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
RCREG            .EQ  $0199
TXREG            .EQ  $019A
SPBRG            .EQ  $019B
SPBRGL           .EQ  $019B
SPBRGH           .EQ  $019C
RCSTA            .EQ  $019D
TXSTA            .EQ  $019E
BAUDCON          .EQ  $019F

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
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
C1IF             .EQ  $0005


;----- PIR3 Bits -----------------------------------------------------
PWM1IF           .EQ  $0004
PWM2IF           .EQ  $0005
PWM3IF           .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007



;----- T1GCON Bits -----------------------------------------------------
T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GGO            .EQ  $0003


;----- T2CON Bits -----------------------------------------------------
T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006

TMR2ON           .EQ  $0002


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
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
C1IE             .EQ  $0005


;----- PIE3 Bits -----------------------------------------------------
PWM1IE           .EQ  $0004
PWM2IE           .EQ  $0005
PWM3IE           .EQ  $0006


;----- OPTION_REG Bits -----------------------------------------------------
PS0_OPTION_REG   .EQ  $0000
PS1_OPTION_REG   .EQ  $0001
PS2_OPTION_REG   .EQ  $0002
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_WPUEN        .EQ  $0007

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
SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0003
IRCF1            .EQ  $0004
IRCF2            .EQ  $0005
IRCF3            .EQ  $0006
SPLLEN           .EQ  $0007



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
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

ADGO             .EQ  $0001

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006
ADFM             .EQ  $0007



;----- ADCON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006
TRIGSEL3         .EQ  $0007



;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
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
ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
CDAFVR0          .EQ  $0002
CDAFVR1          .EQ  $0003
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007



;----- DACCON0 Bits -----------------------------------------------------
DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003
DACOE            .EQ  $0005
DACLPS           .EQ  $0006
DACEN            .EQ  $0007



;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004



;----- APFCON Bits -----------------------------------------------------
P1SEL            .EQ  $0000
P2SEL            .EQ  $0001
TXCKSEL          .EQ  $0002
T1GSEL           .EQ  $0003
CWGBSEL          .EQ  $0005
CWGASEL          .EQ  $0006
RXDTSEL          .EQ  $0007


;----- APFCON0 Bits -----------------------------------------------------
P1SEL            .EQ  $0000
P2SEL            .EQ  $0001
TXCKSEL          .EQ  $0002
T1GSEL           .EQ  $0003
CWGBSEL          .EQ  $0005
CWGASEL          .EQ  $0006
RXDTSEL          .EQ  $0007


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


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
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



;----- ODCONA Bits -----------------------------------------------------
ODA0             .EQ  $0000
ODA1             .EQ  $0001
ODA2             .EQ  $0002
ODA4             .EQ  $0004
ODA5             .EQ  $0005



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



;----- CWG1DBR Bits -----------------------------------------------------
CWG1DBR0         .EQ  $0000
CWG1DBR1         .EQ  $0001
CWG1DBR2         .EQ  $0002
CWG1DBR3         .EQ  $0003
CWG1DBR4         .EQ  $0004
CWG1DBR5         .EQ  $0005


;----- CWG1DBF Bits -----------------------------------------------------
CWG1DBF0         .EQ  $0000
CWG1DBF1         .EQ  $0001
CWG1DBF2         .EQ  $0002
CWG1DBF3         .EQ  $0003
CWG1DBF4         .EQ  $0004
CWG1DBF5         .EQ  $0005


;----- CWG1CON0 Bits -----------------------------------------------------
G1CS0            .EQ  $0000
G1POLA           .EQ  $0003
G1POLB           .EQ  $0004
G1OEA            .EQ  $0005
G1OEB            .EQ  $0006
G1EN             .EQ  $0007



;----- CWG1CON1 Bits -----------------------------------------------------
G1IS0            .EQ  $0000
G1IS1            .EQ  $0001
G1IS2            .EQ  $0002

G1ASDLA0         .EQ  $0004
G1ASDLA1         .EQ  $0005
G1ASDLB0         .EQ  $0006
G1ASDLB1         .EQ  $0007


;----- CWG1CON2 Bits -----------------------------------------------------
G1ASDSFLT        .EQ  $0001
G1ASDSC1         .EQ  $0002
G1ARSEN          .EQ  $0006
G1ASE            .EQ  $0007


;----- PWMEN Bits -----------------------------------------------------
PWM1EN_A         .EQ  $0000
PWM2EN_A         .EQ  $0001
PWM3EN_A         .EQ  $0002

MPWM1EN          .EQ  $0000
MPWM2EN          .EQ  $0001
MPWM3EN          .EQ  $0002


;----- PWMLD Bits -----------------------------------------------------
PWM1LDA_A        .EQ  $0000
PWM2LDA_A        .EQ  $0001
PWM3LDA_A        .EQ  $0002

MPWM1LD          .EQ  $0000
MPWM2LD          .EQ  $0001
MPWM3LD          .EQ  $0002


;----- PWMOUT Bits -----------------------------------------------------
PWM1OUT_A        .EQ  $0000
PWM2OUT_A        .EQ  $0001
PWM3OUT_A        .EQ  $0002

MPWM1OUT         .EQ  $0000
MPWM2OUT         .EQ  $0001
MPWM3OUT         .EQ  $0002


;----- PWM1PHL Bits -----------------------------------------------------
PWM1PHL0         .EQ  $0000
PWM1PHL1         .EQ  $0001
PWM1PHL2         .EQ  $0002
PWM1PHL3         .EQ  $0003
PWM1PHL4         .EQ  $0004
PWM1PHL5         .EQ  $0005
PWM1PHL6         .EQ  $0006
PWM1PHL7         .EQ  $0007



;----- PWM1PHH Bits -----------------------------------------------------
PWM1PHH0         .EQ  $0000
PWM1PHH1         .EQ  $0001
PWM1PHH2         .EQ  $0002
PWM1PHH3         .EQ  $0003
PWM1PHH4         .EQ  $0004
PWM1PHH5         .EQ  $0005
PWM1PHH6         .EQ  $0006
PWM1PHH7         .EQ  $0007



;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         .EQ  $0000
PWM1DCL1         .EQ  $0001
PWM1DCL2         .EQ  $0002
PWM1DCL3         .EQ  $0003
PWM1DCL4         .EQ  $0004
PWM1DCL5         .EQ  $0005
PWM1DCL6         .EQ  $0006
PWM1DCL7         .EQ  $0007



;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         .EQ  $0000
PWM1DCH1         .EQ  $0001
PWM1DCH2         .EQ  $0002
PWM1DCH3         .EQ  $0003
PWM1DCH4         .EQ  $0004
PWM1DCH5         .EQ  $0005
PWM1DCH6         .EQ  $0006
PWM1DCH7         .EQ  $0007



;----- PWM1PRL Bits -----------------------------------------------------
PWM1PRL0         .EQ  $0000
PWM1PRL1         .EQ  $0001
PWM1PRL2         .EQ  $0002
PWM1PRL3         .EQ  $0003
PWM1PRL4         .EQ  $0004
PWM1PRL5         .EQ  $0005
PWM1PRL6         .EQ  $0006
PWM1PRL7         .EQ  $0007



;----- PWM1PRH Bits -----------------------------------------------------
PWM1PRH0         .EQ  $0000
PWM1PRH1         .EQ  $0001
PWM1PRH2         .EQ  $0002
PWM1PRH3         .EQ  $0003
PWM1PRH4         .EQ  $0004
PWM1PRH5         .EQ  $0005
PWM1PRH6         .EQ  $0006
PWM1PRH7         .EQ  $0007



;----- PWM1OFL Bits -----------------------------------------------------
PWM1OFL0         .EQ  $0000
PWM1OFL1         .EQ  $0001
PWM1OFL2         .EQ  $0002
PWM1OFL3         .EQ  $0003
PWM1OFL4         .EQ  $0004
PWM1OFL5         .EQ  $0005
PWM1OFL6         .EQ  $0006
PWM1OFL7         .EQ  $0007



;----- PWM1OFH Bits -----------------------------------------------------
PWM1OFH0         .EQ  $0000
PWM1OFH1         .EQ  $0001
PWM1OFH2         .EQ  $0002
PWM1OFH3         .EQ  $0003
PWM1OFH4         .EQ  $0004
PWM1OFH5         .EQ  $0005
PWM1OFH6         .EQ  $0006
PWM1OFH7         .EQ  $0007



;----- PWM1TMRL Bits -----------------------------------------------------
PWM1TMRL0        .EQ  $0000
PWM1TMRL1        .EQ  $0001
PWM1TMRL2        .EQ  $0002
PWM1TMRL3        .EQ  $0003
PWM1TMRL4        .EQ  $0004
PWM1TMRL5        .EQ  $0005
PWM1TMRL6        .EQ  $0006
PWM1TMRL7        .EQ  $0007



;----- PWM1TMRH Bits -----------------------------------------------------
PWM1TMRH0        .EQ  $0000
PWM1TMRH1        .EQ  $0001
PWM1TMRH2        .EQ  $0002
PWM1TMRH3        .EQ  $0003
PWM1TMRH4        .EQ  $0004
PWM1TMRH5        .EQ  $0005
PWM1TMRH6        .EQ  $0006
PWM1TMRH7        .EQ  $0007



;----- PWM1CON Bits -----------------------------------------------------
POL              .EQ  $0004
OUT              .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM1MODE0        .EQ  $0002
PWM1MODE1        .EQ  $0003

PWM1POL          .EQ  $0004
PWM1OUT          .EQ  $0005
PWM1OE           .EQ  $0006
PWM1EN           .EQ  $0007

MODE0            .EQ  $0002
MODE1            .EQ  $0003


;----- PWM1INTCON Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM1PRIE         .EQ  $0000
PWM1DCIE         .EQ  $0001
PWM1PHIE         .EQ  $0002
PWM1OFIE         .EQ  $0003


;----- PWM1INTE Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM1PRIE         .EQ  $0000
PWM1DCIE         .EQ  $0001
PWM1PHIE         .EQ  $0002
PWM1OFIE         .EQ  $0003


;----- PWM1INTF Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM1PRIF         .EQ  $0000
PWM1DCIF         .EQ  $0001
PWM1PHIF         .EQ  $0002
PWM1OFIF         .EQ  $0003


;----- PWM1INTFLG Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM1PRIF         .EQ  $0000
PWM1DCIF         .EQ  $0001
PWM1PHIF         .EQ  $0002
PWM1OFIF         .EQ  $0003


;----- PWM1CLKCON Bits -----------------------------------------------------
PWM1CS0          .EQ  $0000
PWM1CS1          .EQ  $0001
PWM1PS0          .EQ  $0004
PWM1PS1          .EQ  $0005
PWM1PS2          .EQ  $0006


CS0              .EQ  $0000
CS1              .EQ  $0001
PS0_PWM1CLKCON   .EQ  $0004
PS1_PWM1CLKCON   .EQ  $0005
PS2_PWM1CLKCON   .EQ  $0006


;----- PWM1LDCON Bits -----------------------------------------------------
LDT              .EQ  $0006
LDA              .EQ  $0007

PWM1LDS0         .EQ  $0000
PWM1LDS1         .EQ  $0001

PWM1LDM          .EQ  $0006
PWM1LD           .EQ  $0007

LDS0             .EQ  $0000
LDS1             .EQ  $0001


;----- PWM1OFCON Bits -----------------------------------------------------
OFO              .EQ  $0004

PWM1OFS0         .EQ  $0000
PWM1OFS1         .EQ  $0001
PWM1OFM0         .EQ  $0005
PWM1OFM1         .EQ  $0006

PWM1OFMC         .EQ  $0004

OFS0             .EQ  $0000
OFS1             .EQ  $0001
OFM0             .EQ  $0005
OFM1             .EQ  $0006


;----- PWM2PHL Bits -----------------------------------------------------
PWM2PHL0         .EQ  $0000
PWM2PHL1         .EQ  $0001
PWM2PHL2         .EQ  $0002
PWM2PHL3         .EQ  $0003
PWM2PHL4         .EQ  $0004
PWM2PHL5         .EQ  $0005
PWM2PHL6         .EQ  $0006
PWM2PHL7         .EQ  $0007



;----- PWM2PHH Bits -----------------------------------------------------
PWM2PHH0         .EQ  $0000
PWM2PHH1         .EQ  $0001
PWM2PHH2         .EQ  $0002
PWM2PHH3         .EQ  $0003
PWM2PHH4         .EQ  $0004
PWM2PHH5         .EQ  $0005
PWM2PHH6         .EQ  $0006
PWM2PHH7         .EQ  $0007



;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         .EQ  $0000
PWM2DCL1         .EQ  $0001
PWM2DCL2         .EQ  $0002
PWM2DCL3         .EQ  $0003
PWM2DCL4         .EQ  $0004
PWM2DCL5         .EQ  $0005
PWM2DCL6         .EQ  $0006
PWM2DCL7         .EQ  $0007



;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         .EQ  $0000
PWM2DCH1         .EQ  $0001
PWM2DCH2         .EQ  $0002
PWM2DCH3         .EQ  $0003
PWM2DCH4         .EQ  $0004
PWM2DCH5         .EQ  $0005
PWM2DCH6         .EQ  $0006
PWM2DCH7         .EQ  $0007



;----- PWM2PRL Bits -----------------------------------------------------
PWM2PRL0         .EQ  $0000
PWM2PRL1         .EQ  $0001
PWM2PRL2         .EQ  $0002
PWM2PRL3         .EQ  $0003
PWM2PRL4         .EQ  $0004
PWM2PRL5         .EQ  $0005
PWM2PRL6         .EQ  $0006
PWM2PRL7         .EQ  $0007



;----- PWM2PRH Bits -----------------------------------------------------
PWM2PRH0         .EQ  $0000
PWM2PRH1         .EQ  $0001
PWM2PRH2         .EQ  $0002
PWM2PRH3         .EQ  $0003
PWM2PRH4         .EQ  $0004
PWM2PRH5         .EQ  $0005
PWM2PRH6         .EQ  $0006
PWM2PRH7         .EQ  $0007



;----- PWM2OFL Bits -----------------------------------------------------
PWM2OFL0         .EQ  $0000
PWM2OFL1         .EQ  $0001
PWM2OFL2         .EQ  $0002
PWM2OFL3         .EQ  $0003
PWM2OFL4         .EQ  $0004
PWM2OFL5         .EQ  $0005
PWM2OFL6         .EQ  $0006
PWM2OFL7         .EQ  $0007



;----- PWM2OFH Bits -----------------------------------------------------
PWM2OFH0         .EQ  $0000
PWM2OFH1         .EQ  $0001
PWM2OFH2         .EQ  $0002
PWM2OFH3         .EQ  $0003
PWM2OFH4         .EQ  $0004
PWM2OFH5         .EQ  $0005
PWM2OFH6         .EQ  $0006
PWM2OFH7         .EQ  $0007



;----- PWM2TMRL Bits -----------------------------------------------------
PWM2TMRL0        .EQ  $0000
PWM2TMRL1        .EQ  $0001
PWM2TMRL2        .EQ  $0002
PWM2TMRL3        .EQ  $0003
PWM2TMRL4        .EQ  $0004
PWM2TMRL5        .EQ  $0005
PWM2TMRL6        .EQ  $0006
PWM2TMRL7        .EQ  $0007



;----- PWM2TMRH Bits -----------------------------------------------------
PWM2TMRH0        .EQ  $0000
PWM2TMRH1        .EQ  $0001
PWM2TMRH2        .EQ  $0002
PWM2TMRH3        .EQ  $0003
PWM2TMRH4        .EQ  $0004
PWM2TMRH5        .EQ  $0005
PWM2TMRH6        .EQ  $0006
PWM2TMRH7        .EQ  $0007



;----- PWM2CON Bits -----------------------------------------------------
POL              .EQ  $0004
OUT              .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM2MODE0        .EQ  $0002
PWM2MODE1        .EQ  $0003

PWM2POL          .EQ  $0004
PWM2OUT          .EQ  $0005
PWM2OE           .EQ  $0006
PWM2EN           .EQ  $0007

MODE0            .EQ  $0002
MODE1            .EQ  $0003


;----- PWM2INTCON Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM2PRIE         .EQ  $0000
PWM2DCIE         .EQ  $0001
PWM2PHIE         .EQ  $0002
PWM2OFIE         .EQ  $0003


;----- PWM2INTE Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM2PRIE         .EQ  $0000
PWM2DCIE         .EQ  $0001
PWM2PHIE         .EQ  $0002
PWM2OFIE         .EQ  $0003


;----- PWM2INTF Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM2PRIF         .EQ  $0000
PWM2DCIF         .EQ  $0001
PWM2PHIF         .EQ  $0002
PWM2OFIF         .EQ  $0003


;----- PWM2INTFLG Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM2PRIF         .EQ  $0000
PWM2DCIF         .EQ  $0001
PWM2PHIF         .EQ  $0002
PWM2OFIF         .EQ  $0003


;----- PWM2CLKCON Bits -----------------------------------------------------
PWM2CS0          .EQ  $0000
PWM2CS1          .EQ  $0001
PWM2PS0          .EQ  $0004
PWM2PS1          .EQ  $0005
PWM2PS2          .EQ  $0006


CS0              .EQ  $0000
CS1              .EQ  $0001
PS0_PWM2CLKCON   .EQ  $0004
PS1_PWM2CLKCON   .EQ  $0005
PS2_PWM2CLKCON   .EQ  $0006


;----- PWM2LDCON Bits -----------------------------------------------------
LDT              .EQ  $0006
LDA              .EQ  $0007

PWM2LDS0         .EQ  $0000
PWM2LDS1         .EQ  $0001

PWM2LDM          .EQ  $0006
PWM2LD           .EQ  $0007

LDS0             .EQ  $0000
LDS1             .EQ  $0001


;----- PWM2OFCON Bits -----------------------------------------------------
OFO              .EQ  $0004

PWM2OFS0         .EQ  $0000
PWM2OFS1         .EQ  $0001
PWM2OFM0         .EQ  $0005
PWM2OFM1         .EQ  $0006

PWM2OFMC         .EQ  $0004

OFS0             .EQ  $0000
OFS1             .EQ  $0001
OFM0             .EQ  $0005
OFM1             .EQ  $0006


;----- PWM3PHL Bits -----------------------------------------------------
PWM3PHL0         .EQ  $0000
PWM3PHL1         .EQ  $0001
PWM3PHL2         .EQ  $0002
PWM3PHL3         .EQ  $0003
PWM3PHL4         .EQ  $0004
PWM3PHL5         .EQ  $0005
PWM3PHL6         .EQ  $0006
PWM3PHL7         .EQ  $0007



;----- PWM3PHH Bits -----------------------------------------------------
PWM3PHH0         .EQ  $0000
PWM3PHH1         .EQ  $0001
PWM3PHH2         .EQ  $0002
PWM3PHH3         .EQ  $0003
PWM3PHH4         .EQ  $0004
PWM3PHH5         .EQ  $0005
PWM3PHH6         .EQ  $0006
PWM3PHH7         .EQ  $0007



;----- PWM3DCL Bits -----------------------------------------------------
PWM3DCL0         .EQ  $0000
PWM3DCL1         .EQ  $0001
PWM3DCL2         .EQ  $0002
PWM3DCL3         .EQ  $0003
PWM3DCL4         .EQ  $0004
PWM3DCL5         .EQ  $0005
PWM3DCL6         .EQ  $0006
PWM3DCL7         .EQ  $0007



;----- PWM3DCH Bits -----------------------------------------------------
PWM3DCH0         .EQ  $0000
PWM3DCH1         .EQ  $0001
PWM3DCH2         .EQ  $0002
PWM3DCH3         .EQ  $0003
PWM3DCH4         .EQ  $0004
PWM3DCH5         .EQ  $0005
PWM3DCH6         .EQ  $0006
PWM3DCH7         .EQ  $0007



;----- PWM3PRL Bits -----------------------------------------------------
PWM3PRL0         .EQ  $0000
PWM3PRL1         .EQ  $0001
PWM3PRL2         .EQ  $0002
PWM3PRL3         .EQ  $0003
PWM3PRL4         .EQ  $0004
PWM3PRL5         .EQ  $0005
PWM3PRL6         .EQ  $0006
PWM3PRL7         .EQ  $0007



;----- PWM3PRH Bits -----------------------------------------------------
PWM3PRH0         .EQ  $0000
PWM3PRH1         .EQ  $0001
PWM3PRH2         .EQ  $0002
PWM3PRH3         .EQ  $0003
PWM3PRH4         .EQ  $0004
PWM3PRH5         .EQ  $0005
PWM3PRH6         .EQ  $0006
PWM3PRH7         .EQ  $0007



;----- PWM3OFL Bits -----------------------------------------------------
PWM3OFL0         .EQ  $0000
PWM3OFL1         .EQ  $0001
PWM3OFL2         .EQ  $0002
PWM3OFL3         .EQ  $0003
PWM3OFL4         .EQ  $0004
PWM3OFL5         .EQ  $0005
PWM3OFL6         .EQ  $0006
PWM3OFL7         .EQ  $0007



;----- PWM3OFH Bits -----------------------------------------------------
PWM3OFH0         .EQ  $0000
PWM3OFH1         .EQ  $0001
PWM3OFH2         .EQ  $0002
PWM3OFH3         .EQ  $0003
PWM3OFH4         .EQ  $0004
PWM3OFH5         .EQ  $0005
PWM3OFH6         .EQ  $0006
PWM3OFH7         .EQ  $0007



;----- PWM3TMRL Bits -----------------------------------------------------
PWM3TMRL0        .EQ  $0000
PWM3TMRL1        .EQ  $0001
PWM3TMRL2        .EQ  $0002
PWM3TMRL3        .EQ  $0003
PWM3TMRL4        .EQ  $0004
PWM3TMRL5        .EQ  $0005
PWM3TMRL6        .EQ  $0006
PWM3TMRL7        .EQ  $0007



;----- PWM3TMRH Bits -----------------------------------------------------
PWM3TMRH0        .EQ  $0000
PWM3TMRH1        .EQ  $0001
PWM3TMRH2        .EQ  $0002
PWM3TMRH3        .EQ  $0003
PWM3TMRH4        .EQ  $0004
PWM3TMRH5        .EQ  $0005
PWM3TMRH6        .EQ  $0006
PWM3TMRH7        .EQ  $0007



;----- PWM3CON Bits -----------------------------------------------------
POL              .EQ  $0004
OUT              .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM3MODE0        .EQ  $0002
PWM3MODE1        .EQ  $0003

PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3OE           .EQ  $0006
PWM3EN           .EQ  $0007

MODE0            .EQ  $0002
MODE1            .EQ  $0003


;----- PWM3INTCON Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM3PRIE         .EQ  $0000
PWM3DCIE         .EQ  $0001
PWM3PHIE         .EQ  $0002
PWM3OFIE         .EQ  $0003


;----- PWM3INTE Bits -----------------------------------------------------
PRIE             .EQ  $0000
DCIE             .EQ  $0001
PHIE             .EQ  $0002
OFIE             .EQ  $0003

PWM3PRIE         .EQ  $0000
PWM3DCIE         .EQ  $0001
PWM3PHIE         .EQ  $0002
PWM3OFIE         .EQ  $0003


;----- PWM3INTF Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM3PRIF         .EQ  $0000
PWM3DCIF         .EQ  $0001
PWM3PHIF         .EQ  $0002
PWM3OFIF         .EQ  $0003


;----- PWM3INTFLG Bits -----------------------------------------------------
PRIF             .EQ  $0000
DCIF             .EQ  $0001
PHIF             .EQ  $0002
OFIF             .EQ  $0003

PWM3PRIF         .EQ  $0000
PWM3DCIF         .EQ  $0001
PWM3PHIF         .EQ  $0002
PWM3OFIF         .EQ  $0003


;----- PWM3CLKCON Bits -----------------------------------------------------
PWM3CS0          .EQ  $0000
PWM3CS1          .EQ  $0001
PWM3PS0          .EQ  $0004
PWM3PS1          .EQ  $0005
PWM3PS2          .EQ  $0006


CS0              .EQ  $0000
CS1              .EQ  $0001
PS0_PWM3CLKCON   .EQ  $0004
PS1_PWM3CLKCON   .EQ  $0005
PS2_PWM3CLKCON   .EQ  $0006


;----- PWM3LDCON Bits -----------------------------------------------------
LDT              .EQ  $0006
LDA              .EQ  $0007

PWM3LDS0         .EQ  $0000
PWM3LDS1         .EQ  $0001

PWM3LDM          .EQ  $0006
PWM3LD           .EQ  $0007

LDS0             .EQ  $0000
LDS1             .EQ  $0001


;----- PWM3OFCON Bits -----------------------------------------------------
OFO              .EQ  $0004

PWM3OFS0         .EQ  $0000
PWM3OFS1         .EQ  $0001
PWM3OFM0         .EQ  $0005
PWM3OFM1         .EQ  $0006

PWM3OFMC         .EQ  $0004

OFS0             .EQ  $0000
OFS1             .EQ  $0001
OFM0             .EQ  $0005
OFM1             .EQ  $0006


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
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator; I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz); device clock supplied to CLKIN pin
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz); device clock supplied to CLKIN pin
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-32 MHz); device clock supplied to CLKIN pin

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
_WRT_HALF            .EQ  $3FFD  000h to 3FFh write protected, 400h to 7FFh may be modified by EECON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to 7FFh may be modified by EECON control
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

