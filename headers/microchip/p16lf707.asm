;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16LF707 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16LF707 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
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
INDF             .EQ  $0000
TMR0             .EQ  $0001
PCL              .EQ  $0002
STATUS           .EQ  $0003
FSR              .EQ  $0004
PORTA            .EQ  $0005
PORTB            .EQ  $0006
PORTC            .EQ  $0007
PORTD            .EQ  $0008
PORTE            .EQ  $0009
PCLATH           .EQ  $000A
INTCON           .EQ  $000B
PIR1             .EQ  $000C
PIR2             .EQ  $000D
TMR1             .EQ  $000E
TMR1L            .EQ  $000E
TMR1H            .EQ  $000F
T1CON            .EQ  $0010
TMR2             .EQ  $0011
T2CON            .EQ  $0012
SSPBUF           .EQ  $0013
SSPCON           .EQ  $0014
CCPR1            .EQ  $0015
CCPR1L           .EQ  $0015
CCPR1H           .EQ  $0016
CCP1CON          .EQ  $0017
RCSTA            .EQ  $0018
TXREG            .EQ  $0019
RCREG            .EQ  $001A
CCPR2            .EQ  $001B
CCPR2L           .EQ  $001B
CCPR2H           .EQ  $001C
CCP2CON          .EQ  $001D
ADRES            .EQ  $001E
ADCON0           .EQ  $001F

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
TRISC            .EQ  $0087
TRISD            .EQ  $0088
TRISE            .EQ  $0089
PIE1             .EQ  $008C
PIE2             .EQ  $008D
PCON             .EQ  $008E
T1GCON           .EQ  $008F
OSCCON           .EQ  $0090
OSCTUNE          .EQ  $0091
PR2              .EQ  $0092
SSPADD           .EQ  $0093
SSPMSK           .EQ  $0093
SSPSTAT          .EQ  $0094
WPUB             .EQ  $0095
IOCB             .EQ  $0096
T3CON            .EQ  $0097
TXSTA            .EQ  $0098
SPBRG            .EQ  $0099
TMR3             .EQ  $009A
TMR3L            .EQ  $009A
TMR3H            .EQ  $009B
APFCON           .EQ  $009C
FVRCON           .EQ  $009D
T3GCON           .EQ  $009E
ADCON1           .EQ  $009F

;-----Bank2------------------
TACON            .EQ  $0105
CPSBCON0         .EQ  $0106
CPSBCON1         .EQ  $0107
CPSACON0         .EQ  $0108
CPSACON1         .EQ  $0109
PMDATL           .EQ  $010C
PMADRL           .EQ  $010D
PMDATH           .EQ  $010E
PMADRH           .EQ  $010F
TMRA             .EQ  $0110
TBCON            .EQ  $0111
TMRB             .EQ  $0112
DACCON0          .EQ  $0113
DACCON1          .EQ  $0114

;-----Bank3------------------
ANSELA           .EQ  $0185
ANSELB           .EQ  $0186
ANSELC           .EQ  $0187
ANSELD           .EQ  $0188
ANSELE           .EQ  $0189
PMCON1           .EQ  $018C

;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
NOT_PD           .EQ  $0003
NOT_TO           .EQ  $0004
IRP              .EQ  $0007

RP0              .EQ  $0005
RP1              .EQ  $0006


;----- PORTA Bits -----------------------------------------------------
RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007

AN0              .EQ  $0000
AN1              .EQ  $0001
AN2              .EQ  $0002
AN3              .EQ  $0003
AN4              .EQ  $0005
OSC2             .EQ  $0006
OSC1             .EQ  $0007

CPSA0            .EQ  $0001
CPSA1            .EQ  $0002
CPSA2            .EQ  $0003
CPSA3            .EQ  $0004
CPSA4            .EQ  $0005
CPSB1            .EQ  $0006
CPSB0            .EQ  $0007

DACOUT           .EQ  $0002
T0CKI            .EQ  $0004
CLKOUT           .EQ  $0006
CLKIN            .EQ  $0007

TACKI            .EQ  $0004


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

AN12             .EQ  $0000
AN10             .EQ  $0001
AN8              .EQ  $0002
AN9              .EQ  $0003
AN11             .EQ  $0004
AN13             .EQ  $0005

CPSB8            .EQ  $0000
CPSB9            .EQ  $0001
CPSB10           .EQ  $0002
CPSB11           .EQ  $0003
CPSB12           .EQ  $0004
CPSB13           .EQ  $0005
CPSB14           .EQ  $0006
CPSB15           .EQ  $0007

CCP2_PORTB       .EQ  $0003
T1G              .EQ  $0005

T3CKI            .EQ  $0005


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

CPSB2            .EQ  $0000
CPSB3            .EQ  $0001
CPSB4            .EQ  $0002
CPSA9            .EQ  $0005
CPSA10           .EQ  $0006
CPSA11           .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
TBCKI            .EQ  $0002
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

T1CKI            .EQ  $0000
CCP2_PORTC       .EQ  $0001
CCP1             .EQ  $0002
SCL              .EQ  $0003
SDA              .EQ  $0004
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

CPSB5            .EQ  $0000
CPSB6            .EQ  $0001
CPSB7            .EQ  $0002
CPSA8            .EQ  $0003
CPSA12           .EQ  $0004
CPSA13           .EQ  $0005
CPSA14           .EQ  $0006
CPSA15           .EQ  $0007

T3G              .EQ  $0000


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003

AN5              .EQ  $0000
AN6              .EQ  $0001
AN7              .EQ  $0002
NOT_MCLR         .EQ  $0003

CPSA5            .EQ  $0000
CPSA6            .EQ  $0001
CPSA7            .EQ  $0002


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INTF             .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
TMR0IE           .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

T0IF             .EQ  $0002
T0IE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005
ADIF             .EQ  $0006
TMR1GIF          .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMRAIF           .EQ  $0004
TMRBIF           .EQ  $0005
TMR3IF           .EQ  $0006
TMR3GIF          .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003

T1SYNC           .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMRCS0           .EQ  $0006
TMRCS1           .EQ  $0007


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
TOUTPS0          .EQ  $0003
TOUTPS1          .EQ  $0004
TOUTPS2          .EQ  $0005
TOUTPS3          .EQ  $0006


;----- SSPCON Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
TMR0SE           .EQ  $0004
TMR0CS           .EQ  $0005
INTEDG           .EQ  $0006
NOT_RBPU         .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002
T0SE             .EQ  $0004
T0CS             .EQ  $0005


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
TRISE3           .EQ  $0003


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005
ADIE             .EQ  $0006
TMR1GIE          .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMRAIE           .EQ  $0004
TMRBIE           .EQ  $0005
TMR3IE           .EQ  $0006
TMR3GIE          .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001


;----- OSCCON Bits -----------------------------------------------------
ICSS             .EQ  $0002
ICSL             .EQ  $0003

IRCF0            .EQ  $0004
IRCF1            .EQ  $0005


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- IOCB Bits -----------------------------------------------------
IOCB0            .EQ  $0000
IOCB1            .EQ  $0001
IOCB2            .EQ  $0002
IOCB3            .EQ  $0003
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
T3SYNC           .EQ  $0002

T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- APFCON Bits -----------------------------------------------------
CCP2SEL          .EQ  $0000
SSSEL            .EQ  $0001


;----- FVRCON Bits -----------------------------------------------------
FVREN            .EQ  $0006
FVRRDY           .EQ  $0007

ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
CDAFVR0          .EQ  $0002
CDAFVR1          .EQ  $0003


;----- T3GCON Bits -----------------------------------------------------
T3GVAL           .EQ  $0002
T3GGO_NOT_DONE   .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADREF0           .EQ  $0000
ADREF1           .EQ  $0001
ADCS0            .EQ  $0004
ADCS1            .EQ  $0005
ADCS2            .EQ  $0006


;----- TACON Bits -----------------------------------------------------
TAPSA            .EQ  $0003
TASE             .EQ  $0004
TACS             .EQ  $0005
TMRAON           .EQ  $0007

TAPS0            .EQ  $0000
TAPS1            .EQ  $0001
TAPS2            .EQ  $0002

TMRAPSA          .EQ  $0003
TMRASE           .EQ  $0004
TMRACS           .EQ  $0005

TMRAPS0          .EQ  $0000
TMRAPS1          .EQ  $0001
TMRAPS2          .EQ  $0002


;----- CPSBCON0 Bits -----------------------------------------------------
TBXCS            .EQ  $0000
CPSBOUT          .EQ  $0001
CPSBRM           .EQ  $0006
CPSBON           .EQ  $0007

CPSBRNG0         .EQ  $0002
CPSBRNG1         .EQ  $0003


;----- CPSBCON1 Bits -----------------------------------------------------
CPSBCH0          .EQ  $0000
CPSBCH1          .EQ  $0001
CPSBCH2          .EQ  $0002
CPSBCH3          .EQ  $0003


;----- CPSACON0 Bits -----------------------------------------------------
TAXCS            .EQ  $0000
CPSAOUT          .EQ  $0001
CPSARM           .EQ  $0006
CPSAON           .EQ  $0007

CPSARNG0         .EQ  $0002
CPSARNG1         .EQ  $0003


;----- CPSACON1 Bits -----------------------------------------------------
CPSACH0          .EQ  $0000
CPSACH1          .EQ  $0001
CPSACH2          .EQ  $0002
CPSACH3          .EQ  $0003


;----- TBCON Bits -----------------------------------------------------
TBPSA            .EQ  $0003
TBSE             .EQ  $0004
TBCS             .EQ  $0005
TMRBON           .EQ  $0007

TBPS0            .EQ  $0000
TBPS1            .EQ  $0001
TBPS2            .EQ  $0002

TMRBPSA          .EQ  $0003
TMRBSE           .EQ  $0004
TMRBCS           .EQ  $0005

TMRBPS0          .EQ  $0000
TMRBPS1          .EQ  $0001
TMRBPS2          .EQ  $0002


;----- DACCON0 Bits -----------------------------------------------------
DACOE            .EQ  $0005
DACLPS           .EQ  $0006
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003


;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004


;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA4            .EQ  $0004
ANSA5            .EQ  $0005
ANSA6            .EQ  $0006
ANSA7            .EQ  $0007



;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005
ANSB6            .EQ  $0006
ANSB7            .EQ  $0007



;----- ANSELC Bits -----------------------------------------------------
ANSC0            .EQ  $0000
ANSC1            .EQ  $0001
ANSC2            .EQ  $0002
ANSC5            .EQ  $0005
ANSC6            .EQ  $0006
ANSC7            .EQ  $0007



;----- ANSELD Bits -----------------------------------------------------
ANSD0            .EQ  $0000
ANSD1            .EQ  $0001
ANSD2            .EQ  $0002
ANSD3            .EQ  $0003
ANSD4            .EQ  $0004
ANSD5            .EQ  $0005
ANSD6            .EQ  $0006
ANSD7            .EQ  $0007



;----- ANSELE Bits -----------------------------------------------------
ANSE0            .EQ  $0000
ANSE1            .EQ  $0001
ANSE2            .EQ  $0002



;----- PMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000




;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $01FF

;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG            2007h
;   CONFIG2           2008h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG         .EQ  $2007
_CONFIG2        .EQ  $2008

;----- CONFIG Options --------------------------------------------------
_FOSC_LP_OSC         .EQ  $3FF8  LP oscillator: Low-power crystal on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_LP_OSC              .EQ  $3FF8  LP oscillator: Low-power crystal on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_FOSC_XT_OSC         .EQ  $3FF9  XT oscillator: Crystal/resonator on RA6/OSC2/CLKIN and RA7/OSC1/CLKIN
_XT_OSC              .EQ  $3FF9  XT oscillator: Crystal/resonator on RA6/OSC2/CLKIN and RA7/OSC1/CLKIN
_FOSC_HS_OSC         .EQ  $3FFA  HS oscillator: High Speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_HS_OSC              .EQ  $3FFA  HS oscillator: High Speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN
_FOSC_EC_OSC         .EQ  $3FFB  EC oscillator: I/O function on RA6/OSC2/CLKOUT pin, CLKIN on RA7/OSC1/CLKIN
_EC_OSC              .EQ  $3FFB  EC oscillator: I/O function on RA6/OSC2/CLKOUT pin, CLKIN on RA7/OSC1/CLKIN
_FOSC_INTOSCIO       .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN pins
_INTOSCIO            .EQ  $3FFC  INTOSCIO oscillator: I/O function on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN pins
_FOSC_INTOSC         .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function  on RA7/OSC1/CLKIN
_INTOSC              .EQ  $3FFD  INTOSC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, I/O function  on RA7/OSC1/CLKIN
_FOSC_EXTRCIO        .EQ  $3FFE  RCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
_EXTRCIO             .EQ  $3FFE  RCIO oscillator: I/O function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
_FOSC_EXTRC          .EQ  $3FFF  RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN
_EXTRC               .EQ  $3FFF  RC oscillator: CLKOUT function on RA6/OSC2/CLKOUT pin, RC on RA7/OSC1/CLKIN

_WDTE_OFF            .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDT_OFF             .EQ  $3FF7  WDT disabled and can be enabled by SWDTEN bit of the WDTCON register
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FEF  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_MCLRE_OFF           .EQ  $3FDF  RE3/MCLR pin function is digital input, MCLR internally tied to VDD
_MCLRE_ON            .EQ  $3FFF  RE3/MCLR pin function is MCLR

_CP_ON               .EQ  $3FBF  Program memory code protection is enabled
_CP_OFF              .EQ  $3FFF  Program memory code protection is disabled

_BOREN_OFF           .EQ  $3CFF  BOR disabled (Preconditioned State)
_BOREN_NSLEEP        .EQ  $3EFF  BOR enabled during operation and disabled in Sleep
_BOREN_ON            .EQ  $3FFF  BOR enabled

_BORV_25             .EQ  $3BFF  Brown-out Reset Voltage (VBOR) set to 2.5 V nominal
_BORV_19             .EQ  $3FFF  Brown-out Reset Voltage (VBOR) set to 1.9 V nominal

_PLLEN_OFF           .EQ  $2FFF  INTOSC Frequency is 500 kHz
_PLLEN_ON            .EQ  $3FFF  INTOSC Frequency is 16 MHz (32x)

;----- CONFIG2 Options --------------------------------------------------
;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $2006

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
