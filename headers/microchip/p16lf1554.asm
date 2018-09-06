;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF1554 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF1554 microcontroller.  These names
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
PORTC            .EQ  $000E
PIR1             .EQ  $0011
PIR2             .EQ  $0012
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
TRISC            .EQ  $008E
PIE1             .EQ  $0091
PIE2             .EQ  $0092
OPTION_REG       .EQ  $0095
PCON             .EQ  $0096
WDTCON           .EQ  $0097
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
LATC             .EQ  $010E
BORCON           .EQ  $0116
FVRCON           .EQ  $0117
APFCON           .EQ  $011D

;-----Bank3------------------
ANSELA           .EQ  $018C
ANSELC           .EQ  $018E
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
SSP1BUF          .EQ  $0211
SSPBUF           .EQ  $0211
SSP1ADD          .EQ  $0212
SSPADD           .EQ  $0212
SSP1MSK          .EQ  $0213
SSPMSK           .EQ  $0213
SSP1STAT         .EQ  $0214
SSPSTAT          .EQ  $0214
SSP1CON1         .EQ  $0215
SSPCON           .EQ  $0215
SSPCON1          .EQ  $0215
SSP1CON2         .EQ  $0216
SSPCON2          .EQ  $0216
SSP1CON3         .EQ  $0217
SSPCON3          .EQ  $0217

;-----Bank7------------------
IOCAP            .EQ  $0391
IOCAN            .EQ  $0392
IOCAF            .EQ  $0393

;-----Bank12------------------
PWM1DCL          .EQ  $0611
PWM1DCH          .EQ  $0612
PWM1CON          .EQ  $0613
PWM1CON0         .EQ  $0613
PWM2DCL          .EQ  $0614
PWM2DCH          .EQ  $0615
PWM2CON          .EQ  $0616
PWM2CON0         .EQ  $0616

;-----Bank14------------------
AAD1CON0         .EQ  $0711
AADCON0          .EQ  $0711
AD1CON0          .EQ  $0711
AADCON1          .EQ  $0712
ADCOMCON         .EQ  $0712
AAD1CON2         .EQ  $0713
AADCON2          .EQ  $0713
AD1CON2          .EQ  $0713
AAD1CON3         .EQ  $0714
AADCON3          .EQ  $0714
AD1CON3          .EQ  $0714
AADSTAT          .EQ  $0715
ADSTAT           .EQ  $0715
AAD1PRE          .EQ  $0716
AADPRE           .EQ  $0716
AD1PRE           .EQ  $0716
AD1PRECON        .EQ  $0716
AAD1ACQ          .EQ  $0717
AADACQ           .EQ  $0717
AD1ACQ           .EQ  $0717
AD1ACQCON        .EQ  $0717
AAD1GRD          .EQ  $0718
AADGRD           .EQ  $0718
AD1GRD           .EQ  $0718
AAD1CAP          .EQ  $0719
AAD1CAPCON       .EQ  $0719
AADCAP           .EQ  $0719
AD1CAPCON        .EQ  $0719
AAD1RES0         .EQ  $071A
AAD1RES0L        .EQ  $071A
AD1RES0          .EQ  $071A
AD1RES0L         .EQ  $071A
ADRES0           .EQ  $071A
AAD1RES0H        .EQ  $071B
AD1RES0H         .EQ  $071B
AAD1RES1         .EQ  $071C
AAD1RES1L        .EQ  $071C
AD1RES1          .EQ  $071C
AD1RES1L         .EQ  $071C
ADRES1           .EQ  $071C
AAD1RES1H        .EQ  $071D
AD1RES1H         .EQ  $071D
AAD1CH           .EQ  $071E
AD1CH            .EQ  $071E

;-----Bank15------------------
AAD2CON0         .EQ  $0791
AD2CON0          .EQ  $0791
AAD2CON2         .EQ  $0793
AD2CON2          .EQ  $0793
AAD2CON3         .EQ  $0794
AD2CON3          .EQ  $0794
AAD2PRE          .EQ  $0796
AD2PRE           .EQ  $0796
AD2PRECON        .EQ  $0796
AAD2ACQ          .EQ  $0797
AD2ACQ           .EQ  $0797
AD2ACQCON        .EQ  $0797
AAD2GRD          .EQ  $0798
AD2GRD           .EQ  $0798
AAD2CAP          .EQ  $0799
AAD2CAPCON       .EQ  $0799
AD2CAPCON        .EQ  $0799
AAD2RES0         .EQ  $079A
AAD2RES0L        .EQ  $079A
AD2RES0          .EQ  $079A
AD2RES0L         .EQ  $079A
AAD2RES0H        .EQ  $079B
AD2RES0H         .EQ  $079B
AAD2RES1         .EQ  $079C
AAD2RES1L        .EQ  $079C
AD2RES1          .EQ  $079C
AD2RES1L         .EQ  $079C
AAD2RES1H        .EQ  $079D
AD2RES1H         .EQ  $079D
AAD2CH           .EQ  $079E
AD2CH            .EQ  $079E

;-----Bank31------------------
ICDIO            .EQ  $0F8C
ICDCON0          .EQ  $0F8D
ICDSTAT          .EQ  $0F91
ICDINSTL         .EQ  $0F96
ICDINSTH         .EQ  $0F97
ICDBK0CON        .EQ  $0F9C
ICDBK0L          .EQ  $0F9D
ICDBK0H          .EQ  $0F9E
BSRICDSHAD       .EQ  $0FE3
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


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
SSP1IF           .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007

AD1IF            .EQ  $0006


;----- PIR2 Bits -----------------------------------------------------
BCL1IF           .EQ  $0003
AD2IF            .EQ  $0006


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
GO_T1GCON        .EQ  $0003


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
SSP1IE           .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007

AD1IE            .EQ  $0006


;----- PIE2 Bits -----------------------------------------------------
BCL1IE           .EQ  $0003
AD2IE            .EQ  $0006


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
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

WDTPS0           .EQ  $0001
WDTPS1           .EQ  $0002
WDTPS2           .EQ  $0003
WDTPS3           .EQ  $0004
WDTPS4           .EQ  $0005


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
HFIOFR           .EQ  $0004
PLLSR            .EQ  $0006


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

AD1ON            .EQ  $0000
ADGO             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO_ADCON0        .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
GO_NOT_DONE_ALL  .EQ  $0002
ADFM             .EQ  $0007

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
GO_ALL           .EQ  $0002


;----- ADCON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006


;----- LATA Bits -----------------------------------------------------
LATA0            .EQ  $0000
LATA1            .EQ  $0001
LATA2            .EQ  $0002
LATA4            .EQ  $0004
LATA5            .EQ  $0005


;----- LATC Bits -----------------------------------------------------
LATC0            .EQ  $0000
LATC1            .EQ  $0001
LATC2            .EQ  $0002
LATC3            .EQ  $0003
LATC4            .EQ  $0004
LATC5            .EQ  $0005


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


;----- APFCON Bits -----------------------------------------------------
GRDASEL          .EQ  $0000
GRDBSEL          .EQ  $0001
TXCKSEL          .EQ  $0002
SDSEL            .EQ  $0004
SSSEL            .EQ  $0005
SDOSEL           .EQ  $0006
RXDTSEL          .EQ  $0007


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA4            .EQ  $0004
ANSA5            .EQ  $0005



;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
ANSC4            .EQ  $0004
ANSC5            .EQ  $0005



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


;----- SSP1CON1 Bits -----------------------------------------------------
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007



;----- SSPCON Bits -----------------------------------------------------
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007



;----- SSPCON1 Bits -----------------------------------------------------
SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007



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



;----- PWM1DCL Bits -----------------------------------------------------
PWM1DCL0         .EQ  $0006
PWM1DCL1         .EQ  $0007


;----- PWM1DCH Bits -----------------------------------------------------
PWM1DCH0         .EQ  $0000
PWM1DCH1         .EQ  $0001
PWM1DCH2         .EQ  $0002
PWM1DCH3         .EQ  $0003
PWM1DCH4         .EQ  $0004
PWM1DCH5         .EQ  $0005
PWM1DCH6         .EQ  $0006
PWM1DCH7         .EQ  $0007


;----- PWM1CON Bits -----------------------------------------------------
PWM1POL          .EQ  $0004
PWM1OUT          .EQ  $0005
PWM1OE           .EQ  $0006
PWM1EN           .EQ  $0007


;----- PWM1CON0 Bits -----------------------------------------------------
PWM1POL          .EQ  $0004
PWM1OUT          .EQ  $0005
PWM1OE           .EQ  $0006
PWM1EN           .EQ  $0007


;----- PWM2DCL Bits -----------------------------------------------------
PWM2DCL0         .EQ  $0006
PWM2DCL1         .EQ  $0007


;----- PWM2DCH Bits -----------------------------------------------------
PWM2DCH0         .EQ  $0000
PWM2DCH1         .EQ  $0001
PWM2DCH2         .EQ  $0002
PWM2DCH3         .EQ  $0003
PWM2DCH4         .EQ  $0004
PWM2DCH5         .EQ  $0005
PWM2DCH6         .EQ  $0006
PWM2DCH7         .EQ  $0007


;----- PWM2CON Bits -----------------------------------------------------
PWM2POL          .EQ  $0004
PWM2OUT          .EQ  $0005
PWM2OE           .EQ  $0006
PWM2EN           .EQ  $0007


;----- PWM2CON0 Bits -----------------------------------------------------
PWM2POL          .EQ  $0004
PWM2OUT          .EQ  $0005
PWM2OE           .EQ  $0006
PWM2EN           .EQ  $0007


;----- AAD1CON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_AAD1CON0      .EQ  $0001

GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO_NOT_DONE1     .EQ  $0001


;----- AADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_AADCON0       .EQ  $0001

GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO_NOT_DONE1     .EQ  $0001


;----- AD1CON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_AD1CON0       .EQ  $0001

GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO_NOT_DONE1     .EQ  $0001


;----- AADCON1 Bits -----------------------------------------------------
GO_NOT_DONE_ALL  .EQ  $0002
ADFM             .EQ  $0007

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
GO_ALL           .EQ  $0002
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


;----- ADCOMCON Bits -----------------------------------------------------
GO_NOT_DONE_ALL  .EQ  $0002
ADFM             .EQ  $0007

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001
GO_ALL           .EQ  $0002
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


;----- AAD1CON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006


;----- AADCON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006


;----- AD1CON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006


;----- AAD1CON3 Bits -----------------------------------------------------
AD1DSEN          .EQ  $0000
AD1IPEN          .EQ  $0001
AD1IPPOL         .EQ  $0006
AD1EPPOL         .EQ  $0007

ADDSEN           .EQ  $0000
ADIPEN           .EQ  $0001
ADIPPOL          .EQ  $0006
ADEPPOL          .EQ  $0007


;----- AADCON3 Bits -----------------------------------------------------
AD1DSEN          .EQ  $0000
AD1IPEN          .EQ  $0001
AD1IPPOL         .EQ  $0006
AD1EPPOL         .EQ  $0007

ADDSEN           .EQ  $0000
ADIPEN           .EQ  $0001
ADIPPOL          .EQ  $0006
ADEPPOL          .EQ  $0007


;----- AD1CON3 Bits -----------------------------------------------------
AD1DSEN          .EQ  $0000
AD1IPEN          .EQ  $0001
AD1IPPOL         .EQ  $0006
AD1EPPOL         .EQ  $0007

ADDSEN           .EQ  $0000
ADIPEN           .EQ  $0001
ADIPPOL          .EQ  $0006
ADEPPOL          .EQ  $0007


;----- AADSTAT Bits -----------------------------------------------------
AD1CONV          .EQ  $0002
AD2CONV          .EQ  $0006

ADCONV           .EQ  $0002

AD1STG0          .EQ  $0000
AD1STG1          .EQ  $0001
AD2STG0          .EQ  $0004
AD2STG1          .EQ  $0005


;----- ADSTAT Bits -----------------------------------------------------
AD1CONV          .EQ  $0002
AD2CONV          .EQ  $0006

ADCONV           .EQ  $0002

AD1STG0          .EQ  $0000
AD1STG1          .EQ  $0001
AD2STG0          .EQ  $0004
AD2STG1          .EQ  $0005


;----- AAD1PRE Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AADPRE Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AD1PRE Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AD1PRECON Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AAD1ACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AADACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AD1ACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AD1ACQCON Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AAD1GRD Bits -----------------------------------------------------
GRD1POL          .EQ  $0005
GRD1AOE          .EQ  $0006
GRD1BOE          .EQ  $0007

GRDPOL           .EQ  $0005
GRDAOE           .EQ  $0006
GRDBOE           .EQ  $0007


;----- AADGRD Bits -----------------------------------------------------
GRD1POL          .EQ  $0005
GRD1AOE          .EQ  $0006
GRD1BOE          .EQ  $0007

GRDPOL           .EQ  $0005
GRDAOE           .EQ  $0006
GRDBOE           .EQ  $0007


;----- AD1GRD Bits -----------------------------------------------------
GRD1POL          .EQ  $0005
GRD1AOE          .EQ  $0006
GRD1BOE          .EQ  $0007

GRDPOL           .EQ  $0005
GRDAOE           .EQ  $0006
GRDBOE           .EQ  $0007


;----- AAD1CAP Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AAD1CAPCON Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AADCAP Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AD1CAPCON Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AAD1CH Bits -----------------------------------------------------
CH10             .EQ  $0000
CH11             .EQ  $0001
CH12             .EQ  $0002
CH13             .EQ  $0003


;----- AD1CH Bits -----------------------------------------------------
CH10             .EQ  $0000
CH11             .EQ  $0001
CH12             .EQ  $0002
CH13             .EQ  $0003


;----- AAD2CON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_AAD2CON0      .EQ  $0001

GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO_NOT_DONE2     .EQ  $0001


;----- AD2CON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_AD2CON0       .EQ  $0001

GO_NOT_DONE      .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO_NOT_DONE2     .EQ  $0001


;----- AAD2CON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006


;----- AD2CON2 Bits -----------------------------------------------------
TRIGSEL0         .EQ  $0004
TRIGSEL1         .EQ  $0005
TRIGSEL2         .EQ  $0006


;----- AAD2CON3 Bits -----------------------------------------------------
AD2DSEN          .EQ  $0000
AD2IPEN          .EQ  $0001
AD2IPPOL         .EQ  $0006
AD2EPPOL         .EQ  $0007

ADDSEN           .EQ  $0000
ADIPEN           .EQ  $0001
ADIPPOL          .EQ  $0006
ADEPPOL          .EQ  $0007


;----- AD2CON3 Bits -----------------------------------------------------
AD2DSEN          .EQ  $0000
AD2IPEN          .EQ  $0001
AD2IPPOL         .EQ  $0006
AD2EPPOL         .EQ  $0007

ADDSEN           .EQ  $0000
ADIPEN           .EQ  $0001
ADIPPOL          .EQ  $0006
ADEPPOL          .EQ  $0007


;----- AAD2PRE Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AD2PRE Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AD2PRECON Bits -----------------------------------------------------
ADPRE0           .EQ  $0000
ADPRE1           .EQ  $0001
ADPRE2           .EQ  $0002
ADPRE3           .EQ  $0003
ADPRE4           .EQ  $0004
ADPRE5           .EQ  $0005
ADPRE6           .EQ  $0006


;----- AAD2ACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AD2ACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AD2ACQCON Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006


;----- AAD2GRD Bits -----------------------------------------------------
GRD2POL          .EQ  $0005
GRD2AOE          .EQ  $0006
GRD2BOE          .EQ  $0007

GRDPOL           .EQ  $0005
GRDAOE           .EQ  $0006
GRDBOE           .EQ  $0007


;----- AD2GRD Bits -----------------------------------------------------
GRD2POL          .EQ  $0005
GRD2AOE          .EQ  $0006
GRD2BOE          .EQ  $0007

GRDPOL           .EQ  $0005
GRDAOE           .EQ  $0006
GRDBOE           .EQ  $0007


;----- AAD2CAP Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AAD2CAPCON Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AD2CAPCON Bits -----------------------------------------------------
ADDCAP0          .EQ  $0000
ADDCAP1          .EQ  $0001
ADDCAP2          .EQ  $0002
ADDCAP3          .EQ  $0003



;----- AAD2CH Bits -----------------------------------------------------
CH20             .EQ  $0000
CH21             .EQ  $0001
CH22             .EQ  $0002
CH23             .EQ  $0003


;----- AD2CH Bits -----------------------------------------------------
CH20             .EQ  $0000
CH21             .EQ  $0001
CH22             .EQ  $0002
CH23             .EQ  $0003


;----- ICDIO Bits -----------------------------------------------------
TRIS_ICDCLK      .EQ  $0002
TRIS_ICDDAT      .EQ  $0003
LAT_ICDCLK       .EQ  $0004
LAT_ICDDAT       .EQ  $0005
PORT_ICDCLK      .EQ  $0006
PORT_ICDDAT      .EQ  $0007


;----- ICDCON0 Bits -----------------------------------------------------
RSTVEC           .EQ  $0000
DBGINEX          .EQ  $0003
SSTEP            .EQ  $0005
FREEZ            .EQ  $0006
INBUG            .EQ  $0007


;----- ICDSTAT Bits -----------------------------------------------------
USRHLTF          .EQ  $0001
TRP0HLTF         .EQ  $0006
TRP1HLTF         .EQ  $0007


;----- ICDINSTL Bits -----------------------------------------------------
DBGIN0           .EQ  $0000
DBGIN1           .EQ  $0001
DBGIN2           .EQ  $0002
DBGIN3           .EQ  $0003
DBGIN4           .EQ  $0004
DBGIN5           .EQ  $0005
DBGIN6           .EQ  $0006
DBGIN7           .EQ  $0007


;----- ICDINSTH Bits -----------------------------------------------------
DBGIN8           .EQ  $0000
DBGIN9           .EQ  $0001
DBGIN10          .EQ  $0002
DBGIN11          .EQ  $0003
DBGIN12          .EQ  $0004
DBGIN13          .EQ  $0005


;----- ICDBK0CON Bits -----------------------------------------------------
BKHLT            .EQ  $0000
BKEN             .EQ  $0007


;----- ICDBK0L Bits -----------------------------------------------------
BKA0             .EQ  $0000
BKA1             .EQ  $0001
BKA2             .EQ  $0002
BKA3             .EQ  $0003
BKA4             .EQ  $0004
BKA5             .EQ  $0005
BKA6             .EQ  $0006
BKA7             .EQ  $0007


;----- ICDBK0H Bits -----------------------------------------------------
BKA8             .EQ  $0000
BKA9             .EQ  $0001
BKA10            .EQ  $0002
BKA11            .EQ  $0003
BKA12            .EQ  $0004
BKA13            .EQ  $0005
BKA14            .EQ  $0006


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
_FOSC_INTOSC         .EQ  $3FFC  INTOSC oscillator: I/O function on CLKIN pin
_FOSC_ECL            .EQ  $3FFD  ECL, External Clock, Low Power Mode (0-0.5 MHz): device clock supplied to CLKIN pins
_FOSC_ECM            .EQ  $3FFE  ECM, External Clock, Medium Power Mode (0.5-4 MHz): device clock supplied to CLKIN pins
_FOSC_ECH            .EQ  $3FFF  ECH, External Clock, High Power Mode (4-20 MHz): device clock supplied to CLKIN pins

_WDTE_OFF            .EQ  $3FE7  WDT disabled. SWDTEN bit is ignored.
_WDTE_SWDTEN         .EQ  $3FEF  WDT controlled by the SWDTEN bit in the WDTCON register
_WDTE_NSLEEP         .EQ  $3FF7  WDT enabled while running and disabled in Sleep. SWDTEN bit is ignored.
_WDTE_ON             .EQ  $3FFF  WDT enabled. SWDTEN bit is ignored.

_PWRTE_ON            .EQ  $3FDF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FBF  MCLR/VPP pin function is digital input
_MCLRE_ON            .EQ  $3FFF  MCLR/VPP pin function is MCLR

_CP_ON               .EQ  $3F7F  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_BOREN_OFF           .EQ  $39FF  Brown-out Reset disabled. SBOREN bit is ignored.
_BOREN_SBODEN        .EQ  $3BFF  Brown-out Reset controlled by the SBOREN bit in the BORCON register
_BOREN_NSLEEP        .EQ  $3DFF  Brown-out Reset enabled while running and disabled in Sleep. SBOREN bit is ignored.
_BOREN_ON            .EQ  $3FFF  Brown-out Reset enabled

_CLKOUTEN_ON         .EQ  $37FF  CLKOUT function is enabled on the CLKOUT pin
_CLKOUTEN_OFF        .EQ  $3FFF  CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin

;----- CONFIG2 Options --------------------------------------------------
_WRT_ALL             .EQ  $3FFC  000h to FFFh write protected, no addresses may be modified by PMCON control
_WRT_HALF            .EQ  $3FFD  000h to 7FFh write protected, 800h to FFFh may be modified by PMCON control
_WRT_BOOT            .EQ  $3FFE  000h to 1FFh write protected, 200h to FFFh may be modified by PMCON control
_WRT_OFF             .EQ  $3FFF  Write protection off

_STVREN_OFF          .EQ  $3DFF  Stack Overflow or Underflow will not cause a Reset
_STVREN_ON           .EQ  $3FFF  Stack Overflow or Underflow will cause a Reset

_BORV_HI             .EQ  $3BFF  Brown-out Reset Voltage (Vbor), 2.7V trip point selected.
_BORV_LO             .EQ  $3FFF  Brown-out Reset Voltage (Vbor), 1.9V trip point selected.

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
