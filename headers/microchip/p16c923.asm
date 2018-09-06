;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC16C923 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC16C923 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic14
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

;-----Bank1------------------
OPTION_REG       .EQ  $0081
TRISA            .EQ  $0085
TRISB            .EQ  $0086
TRISC            .EQ  $0087
TRISD            .EQ  $0088
TRISE            .EQ  $0089
PIE1             .EQ  $008C
PCON             .EQ  $008E
PR2              .EQ  $0092
SSPADD           .EQ  $0093
SSPSTAT          .EQ  $0094

;-----Bank2------------------
PORTF            .EQ  $0107
PORTG            .EQ  $0108
LCDSE            .EQ  $010D
LCDPS            .EQ  $010E
LCDCON           .EQ  $010F
LCDD00           .EQ  $0110
LCDD01           .EQ  $0111
LCDD02           .EQ  $0112
LCDD03           .EQ  $0113
LCDD04           .EQ  $0114
LCDD05           .EQ  $0115
LCDD06           .EQ  $0116
LCDD07           .EQ  $0117
LCDD08           .EQ  $0118
LCDD09           .EQ  $0119
LCDD10           .EQ  $011A
LCDD11           .EQ  $011B
LCDD12           .EQ  $011C
LCDD13           .EQ  $011D
LCDD14           .EQ  $011E
LCDD15           .EQ  $011F

;-----Bank3------------------
TRISF            .EQ  $0187
TRISG            .EQ  $0188

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
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INTF             .EQ  $0001
T0IF             .EQ  $0002
RBIE             .EQ  $0003
INTE             .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

TMR0IF           .EQ  $0002
TMR0IE           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
CCP1IF           .EQ  $0002
SSPIF            .EQ  $0003
LCDIF            .EQ  $0007


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
TMR1CS           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1OSCEN          .EQ  $0003

T1INSYNC         .EQ  $0002
T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005


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
CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- OPTION_REG Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
INTEDG           .EQ  $0006
NOT_RBPU         .EQ  $0007

PS0              .EQ  $0000
PS1              .EQ  $0001
PS2              .EQ  $0002


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005


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
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
SSPIE            .EQ  $0003
LCDIE            .EQ  $0007


;----- PCON Bits -----------------------------------------------------
NOT_POR          .EQ  $0001


;----- SSPSTAT Bits -----------------------------------------------------
BF               .EQ  $0000
UA               .EQ  $0001
R_NOT_W          .EQ  $0002
S                .EQ  $0003
P                .EQ  $0004
D_NOT_A          .EQ  $0005
CKE              .EQ  $0006
SMP              .EQ  $0007

R                .EQ  $0002
D                .EQ  $0005

I2C_READ         .EQ  $0002
I2C_START        .EQ  $0003
I2C_STOP         .EQ  $0004
I2C_DATA         .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

READ_WRITE       .EQ  $0002
DATA_ADDRESS     .EQ  $0005

NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005


;----- PORTF Bits -----------------------------------------------------
RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RG5              .EQ  $0005
RG6              .EQ  $0006
RG7              .EQ  $0007


;----- LCDSE Bits -----------------------------------------------------
SE0              .EQ  $0000
SE5              .EQ  $0001
SE9              .EQ  $0002
SE12             .EQ  $0003
SE16             .EQ  $0004
SE20             .EQ  $0005
SE27             .EQ  $0006
SE29             .EQ  $0007


;----- LCDPS Bits -----------------------------------------------------
LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003


;----- LCDCON Bits -----------------------------------------------------
VGEN             .EQ  $0004
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007

LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
CS0              .EQ  $0002
CS1              .EQ  $0003


;----- LCDD00 Bits -----------------------------------------------------
SEG00            .EQ  $0000
SEG01            .EQ  $0001
SEG02            .EQ  $0002
SEG03            .EQ  $0003
SEG04            .EQ  $0004
SEG05            .EQ  $0005
SEG06            .EQ  $0006
SEG07            .EQ  $0007


;----- LCDD01 Bits -----------------------------------------------------
SEG08            .EQ  $0000
SEG09            .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007


;----- LCDD02 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007


;----- LCDD03 Bits -----------------------------------------------------
SEG24            .EQ  $0000
SEG25            .EQ  $0001
SEG26            .EQ  $0002
SEG27            .EQ  $0003
SEG28            .EQ  $0004
SEG29            .EQ  $0005
SEG30            .EQ  $0006
SEG31            .EQ  $0007


;----- LCDD04 Bits -----------------------------------------------------
SEG00            .EQ  $0000
SEG01            .EQ  $0001
SEG02            .EQ  $0002
SEG03            .EQ  $0003
SEG04            .EQ  $0004
SEG05            .EQ  $0005
SEG06            .EQ  $0006
SEG07            .EQ  $0007


;----- LCDD05 Bits -----------------------------------------------------
SEG08            .EQ  $0000
SEG09            .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007


;----- LCDD06 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007


;----- LCDD07 Bits -----------------------------------------------------
SEG24            .EQ  $0000
SEG25            .EQ  $0001
SEG26            .EQ  $0002
SEG27            .EQ  $0003
SEG28            .EQ  $0004
SEG29            .EQ  $0005
SEG30            .EQ  $0006
SEG31            .EQ  $0007


;----- LCDD08 Bits -----------------------------------------------------
SEG00            .EQ  $0000
SEG01            .EQ  $0001
SEG02            .EQ  $0002
SEG03            .EQ  $0003
SEG04            .EQ  $0004
SEG05            .EQ  $0005
SEG06            .EQ  $0006
SEG07            .EQ  $0007


;----- LCDD09 Bits -----------------------------------------------------
SEG08            .EQ  $0000
SEG09            .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007


;----- LCDD10 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007


;----- LCDD11 Bits -----------------------------------------------------
SEG24            .EQ  $0000
SEG25            .EQ  $0001
SEG26            .EQ  $0002
SEG27            .EQ  $0003
SEG28            .EQ  $0004
SEG29            .EQ  $0005
SEG30            .EQ  $0006
SEG31            .EQ  $0007


;----- LCDD12 Bits -----------------------------------------------------
SEG00            .EQ  $0000
SEG01            .EQ  $0001
SEG02            .EQ  $0002
SEG03            .EQ  $0003
SEG04            .EQ  $0004
SEG05            .EQ  $0005
SEG06            .EQ  $0006
SEG07            .EQ  $0007


;----- LCDD13 Bits -----------------------------------------------------
SEG08            .EQ  $0000
SEG09            .EQ  $0001
SEG10            .EQ  $0002
SEG11            .EQ  $0003
SEG12            .EQ  $0004
SEG13            .EQ  $0005
SEG14            .EQ  $0006
SEG15            .EQ  $0007


;----- LCDD14 Bits -----------------------------------------------------
SEG16            .EQ  $0000
SEG17            .EQ  $0001
SEG18            .EQ  $0002
SEG19            .EQ  $0003
SEG20            .EQ  $0004
SEG21            .EQ  $0005
SEG22            .EQ  $0006
SEG23            .EQ  $0007


;----- LCDD15 Bits -----------------------------------------------------
SEG24            .EQ  $0000
SEG25            .EQ  $0001
SEG26            .EQ  $0002
SEG27            .EQ  $0003
SEG28            .EQ  $0004
SEG29            .EQ  $0005
SEG30            .EQ  $0006
SEG31            .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007


;----- TRISG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004
TRISG5           .EQ  $0005
TRISG6           .EQ  $0006
TRISG7           .EQ  $0007




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
;   CONFIG1           2007h
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1        .EQ  $2007

;----- CONFIG1 Options --------------------------------------------------
_FOSC_LP             .EQ  $3FFC  LP oscillator
_LP_OSC              .EQ  $3FFC  LP oscillator
_FOSC_XT             .EQ  $3FFD  XT oscillator
_XT_OSC              .EQ  $3FFD  XT oscillator
_FOSC_HS             .EQ  $3FFE  HS oscillator
_HS_OSC              .EQ  $3FFE  HS oscillator
_FOSC_RC             .EQ  $3FFF  RC oscillator
_RC_OSC              .EQ  $3FFF  RC oscillator

_WDTE_OFF            .EQ  $3FFB  WDT disabled
_WDT_OFF             .EQ  $3FFB  WDT disabled
_WDTE_ON             .EQ  $3FFF  WDT enabled
_WDT_ON              .EQ  $3FFF  WDT enabled

_PWRTE_ON            .EQ  $3FF7  PWRT enabled
_PWRTE_OFF           .EQ  $3FFF  PWRT disabled

_CP_ALL              .EQ  $00CF  All memory is code protected
_CP_75               .EQ  $15DF  0400h-0FFFh code protected
_CP_50               .EQ  $2AEF  0800h-0FFFh code protected
_CP_OFF              .EQ  $3FFF  Code protection off


;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $2000
_IDLOC1          .EQ  $2001
_IDLOC2          .EQ  $2002
_IDLOC3          .EQ  $2003
