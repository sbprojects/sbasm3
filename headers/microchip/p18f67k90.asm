;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18F67K90 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F67K90 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   65536

;==========================================================================
;       18xxxx Family        .EQates
;==========================================================================
FSR0             .EQ  0
FSR1             .EQ  1
FSR2             .EQ  2

FAST             .EQ  1

W                .EQ  0
A                .EQ  0
ACCESS           .EQ  0
BANKED           .EQ  1
;==========================================================================

;==========================================================================
;       16Cxxx/17Cxxx Substitutions
;==========================================================================
  #define DDRA  TRISA      ; PIC17Cxxx SFR substitution
  #define DDRB  TRISB      ; PIC17Cxxx SFR substitution
  #define DDRC  TRISC      ; PIC17Cxxx SFR substitution
  #define DDRD  TRISD      ; PIC17Cxxx SFR substitution
  #define DDRE  TRISE      ; PIC17Cxxx SFR substitution

;==========================================================================
;
;       Register Definitions
;
;==========================================================================

;----- Register Files -----------------------------------------------------
LCDCON           .EQ  $0EF4
LCDPS            .EQ  $0EF5
LCDSE0           .EQ  $0EF6
LCDSE1           .EQ  $0EF7
LCDSE2           .EQ  $0EF8
LCDSE3           .EQ  $0EF9
LCDSE4           .EQ  $0EFA
LCDRL            .EQ  $0EFC
LCDREF           .EQ  $0EFD
SSP2CON2         .EQ  $0EFE
SSP2CON1         .EQ  $0EFF
SSP2STAT         .EQ  $0F00
SSP2ADD          .EQ  $0F01
SSP2BUF          .EQ  $0F02
T4CON            .EQ  $0F03
PR4              .EQ  $0F04
TMR4             .EQ  $0F05
CCP7CON          .EQ  $0F06
CCPR7            .EQ  $0F07
CCPR7L           .EQ  $0F07
CCPR7H           .EQ  $0F08
CCP6CON          .EQ  $0F09
CCPR6            .EQ  $0F0A
CCPR6L           .EQ  $0F0A
CCPR6H           .EQ  $0F0B
CCP5CON          .EQ  $0F0C
CCPR5            .EQ  $0F0D
CCPR5L           .EQ  $0F0D
CCPR5H           .EQ  $0F0E
CCP4CON          .EQ  $0F0F
CCPR4            .EQ  $0F10
CCPR4L           .EQ  $0F10
CCPR4H           .EQ  $0F11
T5GCON           .EQ  $0F12
T5CON            .EQ  $0F13
TMR5             .EQ  $0F14
TMR5L            .EQ  $0F14
TMR5H            .EQ  $0F15
PMD3             .EQ  $0F16
PMD2             .EQ  $0F17
PMD1             .EQ  $0F18
PMD0             .EQ  $0F19
PSTR3CON         .EQ  $0F1A
PSTR2CON         .EQ  $0F1B
TXREG2           .EQ  $0F1C
RCREG2           .EQ  $0F1D
SPBRG2           .EQ  $0F1E
SPBRGH2          .EQ  $0F1F
BAUDCON2         .EQ  $0F20
TXSTA2           .EQ  $0F21
RCSTA2           .EQ  $0F22
ANCON2           .EQ  $0F23
ANCON1           .EQ  $0F24
ANCON0           .EQ  $0F25
ODCON3           .EQ  $0F27
ODCON2           .EQ  $0F28
ODCON1           .EQ  $0F29
REFOCON          .EQ  $0F2A
CCPTMRS2         .EQ  $0F2B
CCPTMRS1         .EQ  $0F2C
CCPTMRS0         .EQ  $0F2D
CM3CON           .EQ  $0F2E
CM3CON1          .EQ  $0F2E
CM2CON           .EQ  $0F2F
CM2CON1          .EQ  $0F2F
T12CON           .EQ  $0F30
PR12             .EQ  $0F31
TMR12            .EQ  $0F32
T10CON           .EQ  $0F33
PR10             .EQ  $0F34
TMR10            .EQ  $0F35
T8CON            .EQ  $0F36
PR8              .EQ  $0F37
TMR8             .EQ  $0F38
T6CON            .EQ  $0F39
PR6              .EQ  $0F3A
TMR6             .EQ  $0F3B
T7GCON           .EQ  $0F3C
T7CON            .EQ  $0F3D
TMR7             .EQ  $0F3E
TMR7L            .EQ  $0F3E
TMR7H            .EQ  $0F3F
CCP10CON         .EQ  $0F40
CCPR10           .EQ  $0F41
CCPR10L          .EQ  $0F41
CCPR10H          .EQ  $0F42
CCP9CON          .EQ  $0F43
CCPR9            .EQ  $0F44
CCPR9L           .EQ  $0F44
CCPR9H           .EQ  $0F45
CCP8CON          .EQ  $0F46
CCPR8            .EQ  $0F47
CCPR8L           .EQ  $0F47
CCPR8H           .EQ  $0F48
CCP3CON          .EQ  $0F49
CCPR3            .EQ  $0F4A
CCPR3L           .EQ  $0F4A
CCPR3H           .EQ  $0F4B
ECCP3DEL         .EQ  $0F4C
PWM3CON          .EQ  $0F4C
ECCP3AS          .EQ  $0F4D
CCP2CON          .EQ  $0F4E
ECCP2CON         .EQ  $0F4E
CCPR2            .EQ  $0F4F
CCPR2L           .EQ  $0F4F
CCPR2H           .EQ  $0F50
ECCP2DEL         .EQ  $0F51
PWM2CON          .EQ  $0F51
ECCP2AS          .EQ  $0F52
PADCFG1          .EQ  $0F53
CM1CON           .EQ  $0F54
CM1CON1          .EQ  $0F54
CTMUICON         .EQ  $0F55
CTMUCONL         .EQ  $0F56
CTMUCONH         .EQ  $0F57
ALRMVAL          .EQ  $0F58
ALRMVALL         .EQ  $0F58
ALRMVALH         .EQ  $0F59
ALRMRPT          .EQ  $0F5A
ALRMCFG          .EQ  $0F5B
RTCVAL           .EQ  $0F5C
RTCVALL          .EQ  $0F5C
RTCVALH          .EQ  $0F5D
RTCCAL           .EQ  $0F5E
RTCCFG           .EQ  $0F5F
PIE6             .EQ  $0F60
EEDATA           .EQ  $0F61
EEADR            .EQ  $0F62
EEADRH           .EQ  $0F63
OSCCON2          .EQ  $0F64
BAUDCON          .EQ  $0F65
BAUDCON1         .EQ  $0F65
BAUDCTL          .EQ  $0F65
LCDDATA0         .EQ  $0F66
LCDDATA1         .EQ  $0F67
LCDDATA2         .EQ  $0F68
LCDDATA3         .EQ  $0F69
LCDDATA4         .EQ  $0F6A
LCDDATA6         .EQ  $0F6C
LCDDATA7         .EQ  $0F6D
LCDDATA8         .EQ  $0F6E
LCDDATA9         .EQ  $0F6F
LCDDATA10        .EQ  $0F70
LCDDATA12        .EQ  $0F72
LCDDATA13        .EQ  $0F73
LCDDATA14        .EQ  $0F74
LCDDATA15        .EQ  $0F75
LCDDATA16        .EQ  $0F76
LCDDATA18        .EQ  $0F78
LCDDATA19        .EQ  $0F79
LCDDATA20        .EQ  $0F7A
LCDDATA21        .EQ  $0F7B
LCDDATA22        .EQ  $0F7C
EECON2           .EQ  $0F7E
EECON1           .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
PORTF            .EQ  $0F85
PORTG            .EQ  $0F86
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
LATF             .EQ  $0F8E
LATG             .EQ  $0F8F
TRISA            .EQ  $0F92
TRISB            .EQ  $0F93
TRISC            .EQ  $0F94
TRISD            .EQ  $0F95
TRISE            .EQ  $0F96
TRISF            .EQ  $0F97
TRISG            .EQ  $0F98
OSCTUNE          .EQ  $0F9B
PSTR1CON         .EQ  $0F9C
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
PIR6             .EQ  $0FA6
HLVDCON          .EQ  $0FA8
IPR6             .EQ  $0FA9
T1GCON           .EQ  $0FAA
RCSTA            .EQ  $0FAB
RCSTA1           .EQ  $0FAB
TXSTA            .EQ  $0FAC
TXSTA1           .EQ  $0FAC
TXREG            .EQ  $0FAD
TXREG1           .EQ  $0FAD
RCREG            .EQ  $0FAE
RCREG1           .EQ  $0FAE
SPBRG            .EQ  $0FAF
SPBRG1           .EQ  $0FAF
T3GCON           .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
CMSTAT           .EQ  $0FB4
CMSTATUS         .EQ  $0FB4
CVRCON           .EQ  $0FB5
PIE4             .EQ  $0FB6
PIR4             .EQ  $0FB7
IPR4             .EQ  $0FB8
PIE5             .EQ  $0FB9
PIR5             .EQ  $0FBA
CCP1CON          .EQ  $0FBB
ECCP1CON         .EQ  $0FBB
CCPR1            .EQ  $0FBC
CCPR1L           .EQ  $0FBC
CCPR1H           .EQ  $0FBD
ECCP1DEL         .EQ  $0FBE
PWM1CON          .EQ  $0FBE
ECCP1AS          .EQ  $0FBF
ADCON2           .EQ  $0FC0
ADCON1           .EQ  $0FC1
ADCON0           .EQ  $0FC2
ADRES            .EQ  $0FC3
ADRESL           .EQ  $0FC3
ADRESH           .EQ  $0FC4
SSP1CON2         .EQ  $0FC5
SSPCON2          .EQ  $0FC5
SSP1CON1         .EQ  $0FC6
SSPCON1          .EQ  $0FC6
SSP1STAT         .EQ  $0FC7
SSPSTAT          .EQ  $0FC7
SSP1ADD          .EQ  $0FC8
SSPADD           .EQ  $0FC8
SSP1BUF          .EQ  $0FC9
SSPBUF           .EQ  $0FC9
T2CON            .EQ  $0FCA
PR2              .EQ  $0FCB
TMR2             .EQ  $0FCC
T1CON            .EQ  $0FCD
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
WDTCON           .EQ  $0FD1
IPR5             .EQ  $0FD2
OSCCON           .EQ  $0FD3
SPBRGH1          .EQ  $0FD4
T0CON            .EQ  $0FD5
TMR0             .EQ  $0FD6
TMR0L            .EQ  $0FD6
TMR0H            .EQ  $0FD7
STATUS           .EQ  $0FD8
FSR2L            .EQ  $0FD9
FSR2H            .EQ  $0FDA
PLUSW2           .EQ  $0FDB
PREINC2          .EQ  $0FDC
POSTDEC2         .EQ  $0FDD
POSTINC2         .EQ  $0FDE
INDF2            .EQ  $0FDF
BSR              .EQ  $0FE0
FSR1L            .EQ  $0FE1
FSR1H            .EQ  $0FE2
PLUSW1           .EQ  $0FE3
PREINC1          .EQ  $0FE4
POSTDEC1         .EQ  $0FE5
POSTINC1         .EQ  $0FE6
INDF1            .EQ  $0FE7
WREG             .EQ  $0FE8
FSR0L            .EQ  $0FE9
FSR0H            .EQ  $0FEA
PLUSW0           .EQ  $0FEB
PREINC0          .EQ  $0FEC
POSTDEC0         .EQ  $0FED
POSTINC0         .EQ  $0FEE
INDF0            .EQ  $0FEF
INTCON3          .EQ  $0FF0
INTCON2          .EQ  $0FF1
INTCON           .EQ  $0FF2
PROD             .EQ  $0FF3
PRODL            .EQ  $0FF3
PRODH            .EQ  $0FF4
TABLAT           .EQ  $0FF5
TBLPTR           .EQ  $0FF6
TBLPTRL          .EQ  $0FF6
TBLPTRH          .EQ  $0FF7
TBLPTRU          .EQ  $0FF8
PC               .EQ  $0FF9
PCL              .EQ  $0FF9
PCLATH           .EQ  $0FFA
PCLATU           .EQ  $0FFB
STKPTR           .EQ  $0FFC
TOS              .EQ  $0FFD
TOSL             .EQ  $0FFD
TOSH             .EQ  $0FFE
TOSU             .EQ  $0FFF

;----- LCDCON Bits -----------------------------------------------------
WERR             .EQ  $0005
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007

LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
CS0              .EQ  $0002
CS1              .EQ  $0003


;----- LCDPS Bits -----------------------------------------------------
WA               .EQ  $0004
LCDA             .EQ  $0005
BIASMD           .EQ  $0006
WFT              .EQ  $0007

LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003


;----- LCDSE0 Bits -----------------------------------------------------
SE00             .EQ  $0000
SE01             .EQ  $0001
SE02             .EQ  $0002
SE03             .EQ  $0003
SE04             .EQ  $0004
SE05             .EQ  $0005
SE06             .EQ  $0006
SE07             .EQ  $0007


;----- LCDSE1 Bits -----------------------------------------------------
SE08             .EQ  $0000
SE09             .EQ  $0001
SE10             .EQ  $0002
SE11             .EQ  $0003
SE12             .EQ  $0004
SE13             .EQ  $0005
SE14             .EQ  $0006
SE15             .EQ  $0007


;----- LCDSE2 Bits -----------------------------------------------------
SE16             .EQ  $0000
SE17             .EQ  $0001
SE18             .EQ  $0002
SE19             .EQ  $0003
SE20             .EQ  $0004
SE21             .EQ  $0005
SE22             .EQ  $0006
SE23             .EQ  $0007


;----- LCDSE3 Bits -----------------------------------------------------
SE24             .EQ  $0000
SE25             .EQ  $0001
SE26             .EQ  $0002
SE27             .EQ  $0003
SE28             .EQ  $0004
SE29             .EQ  $0005
SE30             .EQ  $0006
SE31             .EQ  $0007


;----- LCDSE4 Bits -----------------------------------------------------
SE32             .EQ  $0000


;----- LCDRL Bits -----------------------------------------------------
LCDIRI           .EQ  $0003

LRLAT0           .EQ  $0000
LRLAT1           .EQ  $0001
LRLAT2           .EQ  $0002
LRLBP0           .EQ  $0004
LRLBP1           .EQ  $0005
LRLAP0           .EQ  $0006
LRLAP1           .EQ  $0007


;----- LCDREF Bits -----------------------------------------------------
VLCD1PE          .EQ  $0000
VLCD2PE          .EQ  $0001
VLCD3PE          .EQ  $0002
LCDIRS           .EQ  $0006
LCDIRE           .EQ  $0007

LCDCST0          .EQ  $0003
LCDCST1          .EQ  $0004
LCDCST2          .EQ  $0005


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


;----- SSP2CON1 Bits -----------------------------------------------------
CKP              .EQ  $0004
SSPEN            .EQ  $0005
SSPOV            .EQ  $0006
WCOL             .EQ  $0007

SSPM0            .EQ  $0000
SSPM1            .EQ  $0001
SSPM2            .EQ  $0002
SSPM3            .EQ  $0003


;----- SSP2STAT Bits -----------------------------------------------------
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


;----- SSP2ADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- T4CON Bits -----------------------------------------------------
T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
TMR4ON           .EQ  $0002
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006



;----- CCP7CON Bits -----------------------------------------------------
CCP7M0           .EQ  $0000
CCP7M1           .EQ  $0001
CCP7M2           .EQ  $0002
CCP7M3           .EQ  $0003
DC7B0            .EQ  $0004
DC7B1            .EQ  $0005

CCP7Y            .EQ  $0004
CCP7X            .EQ  $0005


;----- CCP6CON Bits -----------------------------------------------------
CCP6M0           .EQ  $0000
CCP6M1           .EQ  $0001
CCP6M2           .EQ  $0002
CCP6M3           .EQ  $0003
DC6B0            .EQ  $0004
DC6B1            .EQ  $0005

CCP6Y            .EQ  $0004
CCP6X            .EQ  $0005


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           .EQ  $0000
CCP5M1           .EQ  $0001
CCP5M2           .EQ  $0002
CCP5M3           .EQ  $0003
DC5B0            .EQ  $0004
DC5B1            .EQ  $0005

CCP5Y            .EQ  $0004
CCP5X            .EQ  $0005


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           .EQ  $0000
CCP4M1           .EQ  $0001
CCP4M2           .EQ  $0002
CCP4M3           .EQ  $0003
DC4B0            .EQ  $0004
DC4B1            .EQ  $0005

CCP4Y            .EQ  $0004
CCP4X            .EQ  $0005


;----- T5GCON Bits -----------------------------------------------------
T5GVAL           .EQ  $0002
T5GGO_NOT_T5DONE .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
TMR5GE           .EQ  $0007

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001
T5GGO            .EQ  $0003

NOT_T5DONE       .EQ  $0003


;----- T5CON Bits -----------------------------------------------------
TMR5ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T5SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T5CKPS0          .EQ  $0004
T5CKPS1          .EQ  $0005
TMR5CS0          .EQ  $0006
TMR5CS1          .EQ  $0007


;----- PMD3 Bits -----------------------------------------------------
TMR12MD          .EQ  $0000
CCP4MD           .EQ  $0001
CCP5MD           .EQ  $0002
CCP6MD           .EQ  $0003
CCP7MD           .EQ  $0004
CCP8MD           .EQ  $0005
CCP9MD           .EQ  $0006
CCP10MD          .EQ  $0007


;----- PMD2 Bits -----------------------------------------------------
CMP1MD           .EQ  $0000
CMP2MD           .EQ  $0001
CMP3MD           .EQ  $0002
TMR5MD           .EQ  $0003
TMR6MD           .EQ  $0004
TMR7MD           .EQ  $0005
TMR8MD           .EQ  $0006
TMR10MD          .EQ  $0007


;----- PMD1 Bits -----------------------------------------------------
TMR1MD           .EQ  $0001
TMR2MD           .EQ  $0002
TMR3MD           .EQ  $0003
TMR4MD           .EQ  $0004
RTCCMD           .EQ  $0005
CTMUMD           .EQ  $0006


;----- PMD0 Bits -----------------------------------------------------
ADCMD            .EQ  $0000
SSP1MD           .EQ  $0001
SSP2MD           .EQ  $0002
UART1MD          .EQ  $0003
UART2MD          .EQ  $0004
CCP1MD           .EQ  $0005
CCP2MD           .EQ  $0006
CCP3MD           .EQ  $0007


;----- PSTR3CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004

CMPL0            .EQ  $0006
CMPL1            .EQ  $0007


;----- PSTR2CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004

CMPL0            .EQ  $0006
CMPL1            .EQ  $0007


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- TXSTA2 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TX9D2            .EQ  $0000
TRMT2            .EQ  $0001
BRGH2            .EQ  $0002
SENDB2           .EQ  $0003
SYNC2            .EQ  $0004
TXEN2            .EQ  $0005
TX92             .EQ  $0006
CSRC2            .EQ  $0007


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- ANCON2 Bits -----------------------------------------------------
ANSEL16          .EQ  $0000
ANSEL17          .EQ  $0001
ANSEL18          .EQ  $0002
ANSEL19          .EQ  $0003


;----- ANCON1 Bits -----------------------------------------------------
ANSEL8           .EQ  $0000
ANSEL9           .EQ  $0001
ANSEL10          .EQ  $0002
ANSEL11          .EQ  $0003


;----- ANCON0 Bits -----------------------------------------------------
ANSEL0           .EQ  $0000
ANSEL1           .EQ  $0001
ANSEL2           .EQ  $0002
ANSEL3           .EQ  $0003
ANSEL4           .EQ  $0004
ANSEL5           .EQ  $0005
ANSEL6           .EQ  $0006
ANSEL7           .EQ  $0007


;----- ODCON3 Bits -----------------------------------------------------
CTMUDS           .EQ  $0000
U1OD             .EQ  $0006
U2OD             .EQ  $0007


;----- ODCON2 Bits -----------------------------------------------------
CCP3OD           .EQ  $0000
CCP4OD           .EQ  $0001
CCP5OD           .EQ  $0002
CCP6OD           .EQ  $0003
CCP7OD           .EQ  $0004
CCP8OD           .EQ  $0005
CCP9OD           .EQ  $0006
CCP10OD          .EQ  $0007


;----- ODCON1 Bits -----------------------------------------------------
SPI2OD           .EQ  $0000
CCP1OD           .EQ  $0005
CCP2OD           .EQ  $0006
SPI1OD           .EQ  $0007


;----- REFOCON Bits -----------------------------------------------------
ROSEL            .EQ  $0004
ROSSLP           .EQ  $0005
ROON             .EQ  $0007

RODIV0           .EQ  $0000
RODIV1           .EQ  $0001
RODIV2           .EQ  $0002
RODIV3           .EQ  $0003


;----- CCPTMRS2 Bits -----------------------------------------------------
C9TSEL0          .EQ  $0002
C10TSEL0         .EQ  $0004

C8TSEL0          .EQ  $0000
C8TSEL1          .EQ  $0001


;----- CCPTMRS1 Bits -----------------------------------------------------
C5TSEL0          .EQ  $0002
C6TSEL0          .EQ  $0004

C4TSEL0          .EQ  $0000
C4TSEL1          .EQ  $0001
C7TSEL0          .EQ  $0006
C7TSEL1          .EQ  $0007


;----- CCPTMRS0 Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C1TSEL2          .EQ  $0002
C2TSEL0          .EQ  $0003
C2TSEL1          .EQ  $0004
C2TSEL2          .EQ  $0005
C3TSEL0          .EQ  $0006
C3TSEL1          .EQ  $0007


;----- CM3CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM3CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM2CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM2CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- T12CON Bits -----------------------------------------------------
TMR12ON          .EQ  $0002

T12CKPS0         .EQ  $0000
T12CKPS1         .EQ  $0001
T12OUTPS0        .EQ  $0003
T12OUTPS1        .EQ  $0004
T12OUTPS2        .EQ  $0005
T12OUTPS3        .EQ  $0006


;----- T10CON Bits -----------------------------------------------------
TMR10ON          .EQ  $0002

T10CKPS0         .EQ  $0000
T10CKPS1         .EQ  $0001
T10OUTPS0        .EQ  $0003
T10OUTPS1        .EQ  $0004
T10OUTPS2        .EQ  $0005
T10OUTPS3        .EQ  $0006


;----- T8CON Bits -----------------------------------------------------
TMR8ON           .EQ  $0002

T8CKPS0          .EQ  $0000
T8CKPS1          .EQ  $0001
T8OUTPS0         .EQ  $0003
T8OUTPS1         .EQ  $0004
T8OUTPS2         .EQ  $0005
T8OUTPS3         .EQ  $0006


;----- T6CON Bits -----------------------------------------------------
TMR6ON           .EQ  $0002

T6CKPS0          .EQ  $0000
T6CKPS1          .EQ  $0001
T6OUTPS0         .EQ  $0003
T6OUTPS1         .EQ  $0004
T6OUTPS2         .EQ  $0005
T6OUTPS3         .EQ  $0006


;----- T7GCON Bits -----------------------------------------------------
T7GVAL           .EQ  $0002
T7GGO_NOT_T7DONE .EQ  $0003
T7GSPM           .EQ  $0004
T7GTM            .EQ  $0005
T7GPOL           .EQ  $0006
TMR7GE           .EQ  $0007

T7GSS0           .EQ  $0000
T7GSS1           .EQ  $0001
T7GGO            .EQ  $0003

NOT_T7DONE       .EQ  $0003


;----- T7CON Bits -----------------------------------------------------
TMR7ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T7SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T7CKPS0          .EQ  $0004
T7CKPS1          .EQ  $0005
TMR7CS0          .EQ  $0006
TMR7CS1          .EQ  $0007


;----- CCP10CON Bits -----------------------------------------------------
CCP10M0          .EQ  $0000
CCP10M1          .EQ  $0001
CCP10M2          .EQ  $0002
CCP10M3          .EQ  $0003
DC10B0           .EQ  $0004
DC10B1           .EQ  $0005

CCP10Y           .EQ  $0004
CCP10X           .EQ  $0005


;----- CCP9CON Bits -----------------------------------------------------
CCP9M0           .EQ  $0000
CCP9M1           .EQ  $0001
CCP9M2           .EQ  $0002
CCP9M3           .EQ  $0003
DC9B0            .EQ  $0004
DC9B1            .EQ  $0005

CCP9Y            .EQ  $0004
CCP9X            .EQ  $0005


;----- CCP8CON Bits -----------------------------------------------------
CCP8M0           .EQ  $0000
CCP8M1           .EQ  $0001
CCP8M2           .EQ  $0002
CCP8M3           .EQ  $0003
DC8B0            .EQ  $0004
DC8B1            .EQ  $0005

CCP8Y            .EQ  $0004
CCP8X            .EQ  $0005


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005
P3M0             .EQ  $0006
P3M1             .EQ  $0007

CCP3Y            .EQ  $0004
CCP3X            .EQ  $0005


;----- ECCP3DEL Bits -----------------------------------------------------
P3RSEN           .EQ  $0007

P3DC0            .EQ  $0000
P3DC1            .EQ  $0001
P3DC2            .EQ  $0002
P3DC3            .EQ  $0003
P3DC4            .EQ  $0004
P3DC5            .EQ  $0005
P3DC6            .EQ  $0006


;----- PWM3CON Bits -----------------------------------------------------
P3RSEN           .EQ  $0007

P3DC0            .EQ  $0000
P3DC1            .EQ  $0001
P3DC2            .EQ  $0002
P3DC3            .EQ  $0003
P3DC4            .EQ  $0004
P3DC5            .EQ  $0005
P3DC6            .EQ  $0006


;----- ECCP3AS Bits -----------------------------------------------------
ECCP3ASE         .EQ  $0007

PSS3BD0          .EQ  $0000
PSS3BD1          .EQ  $0001
PSS3AC0          .EQ  $0002
PSS3AC1          .EQ  $0003
ECCP3AS0         .EQ  $0004
ECCP3AS1         .EQ  $0005
ECCP3AS2         .EQ  $0006


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005
P2M0             .EQ  $0006
P2M1             .EQ  $0007

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005
P2M0             .EQ  $0006
P2M1             .EQ  $0007

CCP2Y            .EQ  $0004
CCP2X            .EQ  $0005


;----- ECCP2DEL Bits -----------------------------------------------------
P2RSEN           .EQ  $0007

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006


;----- PWM2CON Bits -----------------------------------------------------
P2RSEN           .EQ  $0007

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006


;----- ECCP2AS Bits -----------------------------------------------------
ECCP2ASE         .EQ  $0007

PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003
ECCP2AS0         .EQ  $0004
ECCP2AS1         .EQ  $0005
ECCP2AS2         .EQ  $0006


;----- PADCFG1 Bits -----------------------------------------------------
REPU             .EQ  $0006
RDPU             .EQ  $0007

RTSECSEL0        .EQ  $0001
RTSECSEL1        .EQ  $0002


;----- CM1CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CM1CON1 Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- CTMUICON Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


;----- CTMUCONL Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCONH Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007


;----- ALRMRPT Bits -----------------------------------------------------
ARPT0            .EQ  $0000
ARPT1            .EQ  $0001
ARPT2            .EQ  $0002
ARPT3            .EQ  $0003
ARPT4            .EQ  $0004
ARPT5            .EQ  $0005
ARPT6            .EQ  $0006
ARPT7            .EQ  $0007


;----- ALRMCFG Bits -----------------------------------------------------
CHIME            .EQ  $0006
ALRMEN           .EQ  $0007

ALRMPTR0         .EQ  $0000
ALRMPTR1         .EQ  $0001
AMASK0           .EQ  $0002
AMASK1           .EQ  $0003
AMASK2           .EQ  $0004
AMASK3           .EQ  $0005


;----- RTCVALH Bits -----------------------------------------------------
WAITE0           .EQ  $0000
WAITE1           .EQ  $0001
WAITM0           .EQ  $0002
WAITM1           .EQ  $0003
WAITM2           .EQ  $0004
WAITM3           .EQ  $0005
WAITB0           .EQ  $0006
WAITB1           .EQ  $0007


;----- RTCCAL Bits -----------------------------------------------------
CAL0             .EQ  $0000
CAL1             .EQ  $0001
CAL2             .EQ  $0002
CAL3             .EQ  $0003
CAL4             .EQ  $0004
CAL5             .EQ  $0005
CAL6             .EQ  $0006
CAL7             .EQ  $0007


;----- RTCCFG Bits -----------------------------------------------------
RTCOE            .EQ  $0002
HALFSEC          .EQ  $0003
RTCSYNC          .EQ  $0004
RTCWREN          .EQ  $0005
RTCEN            .EQ  $0007

RTCPTR0          .EQ  $0000
RTCPTR1          .EQ  $0001


;----- PIE6 Bits -----------------------------------------------------
CMP1IE           .EQ  $0000
CMP2IE           .EQ  $0001
CMP3IE           .EQ  $0002
EEIE             .EQ  $0004


;----- OSCCON2 Bits -----------------------------------------------------
MFIOSEL          .EQ  $0000
MFIOFS           .EQ  $0001
SOSCGO           .EQ  $0003
SOSCRUN          .EQ  $0006


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- LCDDATA0 Bits -----------------------------------------------------
S00C0            .EQ  $0000
S01C0            .EQ  $0001
S02C0            .EQ  $0002
S03C0            .EQ  $0003
S04C0            .EQ  $0004
S05C0            .EQ  $0005
S06C0            .EQ  $0006
S07C0            .EQ  $0007


;----- LCDDATA1 Bits -----------------------------------------------------
S08C0            .EQ  $0000
S09C0            .EQ  $0001
S10C0            .EQ  $0002
S11C0            .EQ  $0003
S12C0            .EQ  $0004
S13C0            .EQ  $0005
S14C0            .EQ  $0006
S15C0            .EQ  $0007


;----- LCDDATA2 Bits -----------------------------------------------------
S16C0            .EQ  $0000
S17C0            .EQ  $0001
S18C0            .EQ  $0002
S19C0            .EQ  $0003
S20C0            .EQ  $0004
S21C0            .EQ  $0005
S22C0            .EQ  $0006
S23C0            .EQ  $0007


;----- LCDDATA3 Bits -----------------------------------------------------
S24C0            .EQ  $0000
S25C0            .EQ  $0001
S26C0            .EQ  $0002
S27C0            .EQ  $0003
S28C0            .EQ  $0004
S29C0            .EQ  $0005
S30C0            .EQ  $0006
S31C0            .EQ  $0007


;----- LCDDATA4 Bits -----------------------------------------------------
S32C0            .EQ  $0000


;----- LCDDATA6 Bits -----------------------------------------------------
S00C1            .EQ  $0000
S01C1            .EQ  $0001
S02C1            .EQ  $0002
S03C1            .EQ  $0003
S04C1            .EQ  $0004
S05C1            .EQ  $0005
S06C1            .EQ  $0006
S07C1            .EQ  $0007


;----- LCDDATA7 Bits -----------------------------------------------------
S08C1            .EQ  $0000
S09C1            .EQ  $0001
S10C1            .EQ  $0002
S11C1            .EQ  $0003
S12C1            .EQ  $0004
S13C1            .EQ  $0005
S14C1            .EQ  $0006
S15C1            .EQ  $0007


;----- LCDDATA8 Bits -----------------------------------------------------
S16C1            .EQ  $0000
S17C1            .EQ  $0001
S18C1            .EQ  $0002
S19C1            .EQ  $0003
S20C1            .EQ  $0004
S21C1            .EQ  $0005
S22C1            .EQ  $0006
S23C1            .EQ  $0007


;----- LCDDATA9 Bits -----------------------------------------------------
S24C1            .EQ  $0000
S25C1            .EQ  $0001
S26C1            .EQ  $0002
S27C1            .EQ  $0003
S28C1            .EQ  $0004
S29C1            .EQ  $0005
S30C1            .EQ  $0006
S31C1            .EQ  $0007


;----- LCDDATA10 Bits -----------------------------------------------------
S32C1            .EQ  $0000


;----- LCDDATA12 Bits -----------------------------------------------------
S00C2            .EQ  $0000
S01C2            .EQ  $0001
S02C2            .EQ  $0002
S03C2            .EQ  $0003
S04C2            .EQ  $0004
S05C2            .EQ  $0005
S06C2            .EQ  $0006
S07C2            .EQ  $0007


;----- LCDDATA13 Bits -----------------------------------------------------
S08C2            .EQ  $0000
S09C2            .EQ  $0001
S10C2            .EQ  $0002
S11C2            .EQ  $0003
S12C2            .EQ  $0004
S13C2            .EQ  $0005
S14C2            .EQ  $0006
S15C2            .EQ  $0007


;----- LCDDATA14 Bits -----------------------------------------------------
S16C2            .EQ  $0000
S17C2            .EQ  $0001
S18C2            .EQ  $0002
S19C2            .EQ  $0003
S20C2            .EQ  $0004
S21C2            .EQ  $0005
S22C2            .EQ  $0006
S23C2            .EQ  $0007


;----- LCDDATA15 Bits -----------------------------------------------------
S24C2            .EQ  $0000
S25C2            .EQ  $0001
S26C2            .EQ  $0002
S27C2            .EQ  $0003
S28C2            .EQ  $0004
S29C2            .EQ  $0005
S30C2            .EQ  $0006
S31C2            .EQ  $0007


;----- LCDDATA16 Bits -----------------------------------------------------
S32C2            .EQ  $0000


;----- LCDDATA18 Bits -----------------------------------------------------
S00C3            .EQ  $0000
S01C3            .EQ  $0001
S02C3            .EQ  $0002
S03C3            .EQ  $0003
S04C3            .EQ  $0004
S05C3            .EQ  $0005
S06C3            .EQ  $0006
S07C3            .EQ  $0007


;----- LCDDATA19 Bits -----------------------------------------------------
S08C3            .EQ  $0000
S09C3            .EQ  $0001
S10C3            .EQ  $0002
S11C3            .EQ  $0003
S12C3            .EQ  $0004
S13C3            .EQ  $0005
S14C3            .EQ  $0006
S15C3            .EQ  $0007


;----- LCDDATA20 Bits -----------------------------------------------------
S16C3            .EQ  $0000
S17C3            .EQ  $0001
S18C3            .EQ  $0002
S19C3            .EQ  $0003
S20C3            .EQ  $0004
S21C3            .EQ  $0005
S22C3            .EQ  $0006
S23C3            .EQ  $0007


;----- LCDDATA21 Bits -----------------------------------------------------
S24C3            .EQ  $0000
S25C3            .EQ  $0001
S26C3            .EQ  $0002
S27C3            .EQ  $0003
S28C3            .EQ  $0004
S29C3            .EQ  $0005
S30C3            .EQ  $0006
S31C3            .EQ  $0007


;----- LCDDATA22 Bits -----------------------------------------------------
S32C3            .EQ  $0000


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


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

ULPWUIN          .EQ  $0000
SEG18            .EQ  $0001
VREF_MINUS       .EQ  $0002
VREF_PLUS        .EQ  $0003
SEG14            .EQ  $0004
SEG15            .EQ  $0005
CLKO             .EQ  $0006
CLKI             .EQ  $0007

T0CKI            .EQ  $0004
T1CKI            .EQ  $0005

T3G              .EQ  $0005

LVDIN            .EQ  $0005


;----- PORTB Bits -----------------------------------------------------
RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007

INT0             .EQ  $0000
INT1             .EQ  $0001
INT2             .EQ  $0002
INT3             .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
KBI2             .EQ  $0006
KBI3             .EQ  $0007

SEG30            .EQ  $0000
SEG8             .EQ  $0001
SEG9             .EQ  $0002
SEG10            .EQ  $0003
SEG11            .EQ  $0004
SEG29            .EQ  $0005

FLT0             .EQ  $0000
CTED1            .EQ  $0002
CTED2            .EQ  $0003
T3CKI            .EQ  $0005

CCP2_PA2         .EQ  $0003
T1G              .EQ  $0005

PGM              .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

SEG32            .EQ  $0001
SEG13            .EQ  $0002
SEG17            .EQ  $0003
SEG16            .EQ  $0004
SEG12            .EQ  $0005
SEG27            .EQ  $0006
SEG28            .EQ  $0007

SOSCO            .EQ  $0000
SOSCI            .EQ  $0001
SCK1             .EQ  $0003
SDI1             .EQ  $0004
SDO1             .EQ  $0005
TX1              .EQ  $0006
RX1              .EQ  $0007

SCKLI            .EQ  $0000
CCP2_PORTC       .EQ  $0001
CCP1             .EQ  $0002
SCL1             .EQ  $0003
SDA1             .EQ  $0004
CK1              .EQ  $0006
DT1              .EQ  $0007

PA2_PORTC        .EQ  $0001
PA1              .EQ  $0002


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

AD0              .EQ  $0000
AD1              .EQ  $0001
AD2              .EQ  $0002
AD3              .EQ  $0003
AD4              .EQ  $0004
AD5              .EQ  $0005
AD6              .EQ  $0006
AD7              .EQ  $0007

PSP0             .EQ  $0000
PSP1             .EQ  $0001
PSP2             .EQ  $0002
PSP3             .EQ  $0003
PSP4             .EQ  $0004
PSP5             .EQ  $0005
PSP6             .EQ  $0006
PSP7             .EQ  $0007

SEG0             .EQ  $0000
SEG1             .EQ  $0001
SEG2             .EQ  $0002
SEG3             .EQ  $0003
SEG4             .EQ  $0004
SEG5             .EQ  $0005
SEG6             .EQ  $0006
SEG7             .EQ  $0007

CTPLS            .EQ  $0000
T5CKI            .EQ  $0001
SDO2             .EQ  $0004
SDI2             .EQ  $0005
SCK2             .EQ  $0006
SS2              .EQ  $0007

T7G              .EQ  $0001
SDA2             .EQ  $0005
SCL2             .EQ  $0006


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007

AD8              .EQ  $0000
AD9              .EQ  $0001
AD10             .EQ  $0002
AD11             .EQ  $0003
AD12             .EQ  $0004
AD13             .EQ  $0005
AD14             .EQ  $0006
AD15             .EQ  $0007

PD2              .EQ  $0000
PC2              .EQ  $0001
PB2              .EQ  $0002
PC3              .EQ  $0003
PB3              .EQ  $0004
PC1              .EQ  $0005
PB1              .EQ  $0006
PA2_PORTE        .EQ  $0007

CCP10            .EQ  $0002
CCP9             .EQ  $0003
CCP8             .EQ  $0004
CCP7             .EQ  $0005
CCP6             .EQ  $0006
CCP2_PORTE       .EQ  $0007

RD               .EQ  $0000
WR               .EQ  $0001
CS               .EQ  $0002
COM0             .EQ  $0003
COM1             .EQ  $0004
COM2             .EQ  $0005
COM3             .EQ  $0006
SEG31            .EQ  $0007

LCDBIAS1         .EQ  $0000
LCDBIAS2         .EQ  $0001
LCDBIAS3         .EQ  $0002
REFO             .EQ  $0004


;----- PORTF Bits -----------------------------------------------------
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007

AN6              .EQ  $0001
AN7              .EQ  $0002
AN8              .EQ  $0003
AN9              .EQ  $0004
AN10             .EQ  $0005
AN11             .EQ  $0006
AN5              .EQ  $0007

SEG19            .EQ  $0001
SEG20            .EQ  $0002
SEG21            .EQ  $0003
SEG22            .EQ  $0004
SEG23            .EQ  $0005
SEG24            .EQ  $0006
SEG25            .EQ  $0007

C2OUT_PORTF      .EQ  $0001
C1OUT_PORTF      .EQ  $0002
C2INB            .EQ  $0003
C2INA            .EQ  $0004
C1INB            .EQ  $0005
C1INA            .EQ  $0006
SS1              .EQ  $0007

CTDIN            .EQ  $0001
CTMUI            .EQ  $0003
CVREF            .EQ  $0005


;----- PORTG Bits -----------------------------------------------------
RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RG5              .EQ  $0005

CCP3             .EQ  $0000
C3OUT_PORTG      .EQ  $0001
C3INA            .EQ  $0002
C3INB            .EQ  $0003
C3INC            .EQ  $0004

PA3              .EQ  $0000
TX2              .EQ  $0001
RX2              .EQ  $0002
PD3              .EQ  $0003
PD1              .EQ  $0004

AN19             .EQ  $0001
AN18             .EQ  $0002
AN17             .EQ  $0003
AN16             .EQ  $0004

CK2              .EQ  $0001
DT2              .EQ  $0002
CCP4             .EQ  $0003
CCP5             .EQ  $0004

SEG26            .EQ  $0004

T7CKI            .EQ  $0004

T5G              .EQ  $0004

RTCC             .EQ  $0004


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
LATE3            .EQ  $0003
LATE4            .EQ  $0004
LATE5            .EQ  $0005
LATE6            .EQ  $0006
LATE7            .EQ  $0007


;----- LATF Bits -----------------------------------------------------
LATF1            .EQ  $0001
LATF2            .EQ  $0002
LATF3            .EQ  $0003
LATF4            .EQ  $0004
LATF5            .EQ  $0005
LATF6            .EQ  $0006
LATF7            .EQ  $0007


;----- LATG Bits -----------------------------------------------------
LATG0            .EQ  $0000
LATG1            .EQ  $0001
LATG2            .EQ  $0002
LATG3            .EQ  $0003
LATG4            .EQ  $0004


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
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
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


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- PSTR1CON Bits -----------------------------------------------------
STRA             .EQ  $0000
STRB             .EQ  $0001
STRC             .EQ  $0002
STRD             .EQ  $0003
STRSYNC          .EQ  $0004

CMPL0            .EQ  $0006
CMPL1            .EQ  $0007


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
TMR1GIE          .EQ  $0002
SSP1IE           .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
ADIE             .EQ  $0006

SSPIE            .EQ  $0003
TXIE             .EQ  $0004
RCIE             .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
TMR1GIF          .EQ  $0002
SSP1IF           .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
ADIF             .EQ  $0006

SSPIF            .EQ  $0003
TXIF             .EQ  $0004
RCIF             .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
TMR1GIP          .EQ  $0002
SSP1IP           .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
ADIP             .EQ  $0006

SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
TMR3GIE          .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCL1IE           .EQ  $0003
BCL2IE           .EQ  $0004
SSP2IE           .EQ  $0005
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002
BCLIE            .EQ  $0003


;----- PIR2 Bits -----------------------------------------------------
TMR3GIF          .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCL1IF           .EQ  $0003
BCL2IF           .EQ  $0004
SSP2IF           .EQ  $0005
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002
BCLIF            .EQ  $0003


;----- IPR2 Bits -----------------------------------------------------
TMR3GIP          .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCL1IP           .EQ  $0003
BCL2IP           .EQ  $0004
SSP2IP           .EQ  $0005
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002
BCLIP            .EQ  $0003


;----- PIE3 Bits -----------------------------------------------------
RTCCIE           .EQ  $0000
CCP1IE           .EQ  $0001
CCP2IE           .EQ  $0002
CTMUIE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005
LCDIE            .EQ  $0006
TMR5GIE          .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
RTCCIF           .EQ  $0000
CCP1IF           .EQ  $0001
CCP2IF           .EQ  $0002
CTMUIF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005
LCDIF            .EQ  $0006
TMR5GIF          .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
RTCCIP           .EQ  $0000
CCP1IP           .EQ  $0001
CCP2IP           .EQ  $0002
CTMUIP           .EQ  $0003
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005
LCDIP            .EQ  $0006
TMR5GIP          .EQ  $0007


;----- PIR6 Bits -----------------------------------------------------
CMP1IF           .EQ  $0000
CMP2IF           .EQ  $0001
CMP3IF           .EQ  $0002
EEIF             .EQ  $0004


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
BGVST            .EQ  $0006
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003


;----- IPR6 Bits -----------------------------------------------------
CMP1IP           .EQ  $0000
CMP2IP           .EQ  $0001
CMP3IP           .EQ  $0002
EEIP             .EQ  $0004


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_T1DONE .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GGO            .EQ  $0003

NOT_T1DONE       .EQ  $0003


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
ADEN             .EQ  $0003
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- RCSTA1 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

RCD8             .EQ  $0000
ADEN             .EQ  $0003
RC9              .EQ  $0006

NOT_RC8          .EQ  $0006

RC8_9            .EQ  $0006

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TXD8             .EQ  $0000
TX8_9            .EQ  $0006

NOT_TX8          .EQ  $0006

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- T3GCON Bits -----------------------------------------------------
T3GVAL           .EQ  $0002
T3GGO_NOT_T3DONE .EQ  $0003
T3GSPM           .EQ  $0004
T3GTM            .EQ  $0005
T3GPOL           .EQ  $0006
TMR3GE           .EQ  $0007

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GGO            .EQ  $0003

NOT_T3DONE       .EQ  $0003


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T3SYNC       .EQ  $0002
SOSCEN           .EQ  $0003
T3CKPS0          .EQ  $0004
T3CKPS1          .EQ  $0005
TMR3CS0          .EQ  $0006
TMR3CS1          .EQ  $0007



;----- CMSTAT Bits -----------------------------------------------------
CMP1OUT          .EQ  $0005
CMP2OUT          .EQ  $0006
CMP3OUT          .EQ  $0007

C1OUT_CMSTAT     .EQ  $0005
C2OUT_CMSTAT     .EQ  $0006
C3OUT_CMSTAT     .EQ  $0007


;----- CMSTATUS Bits -----------------------------------------------------
CMP1OUT          .EQ  $0005
CMP2OUT          .EQ  $0006
CMP3OUT          .EQ  $0007

C1OUT_CMSTATUS   .EQ  $0005
C2OUT_CMSTATUS   .EQ  $0006
C3OUT_CMSTATUS   .EQ  $0007


;----- CVRCON Bits -----------------------------------------------------
CVRSS            .EQ  $0005
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003
CVR4             .EQ  $0004


;----- PIE4 Bits -----------------------------------------------------
CCP3IE           .EQ  $0000
CCP4IE           .EQ  $0001
CCP5IE           .EQ  $0002
CCP6IE           .EQ  $0003
CCP7IE           .EQ  $0004
CCP8IE           .EQ  $0005
CCP9IE           .EQ  $0006
CCP10IE          .EQ  $0007


;----- PIR4 Bits -----------------------------------------------------
CCP3IF           .EQ  $0000
CCP4IF           .EQ  $0001
CCP5IF           .EQ  $0002
CCP6IF           .EQ  $0003
CCP7IF           .EQ  $0004
CCP8IF           .EQ  $0005
CCP9IF           .EQ  $0006
CCP10IF          .EQ  $0007


;----- IPR4 Bits -----------------------------------------------------
CCP3IP           .EQ  $0000
CCP4IP           .EQ  $0001
CCP5IP           .EQ  $0002
CCP6IP           .EQ  $0003
CCP7IP           .EQ  $0004
CCP8IP           .EQ  $0005
CCP9IP           .EQ  $0006
CCP10IP          .EQ  $0007


;----- PIE5 Bits -----------------------------------------------------
TMR4IE           .EQ  $0000
TMR5IE           .EQ  $0001
TMR6IE           .EQ  $0002
TMR7IE           .EQ  $0003
TMR8IE           .EQ  $0004
TMR10IE          .EQ  $0005
TMR12IE          .EQ  $0006
TMR7GIE          .EQ  $0007


;----- PIR5 Bits -----------------------------------------------------
TMR4IF           .EQ  $0000
TMR5IF           .EQ  $0001
TMR6IF           .EQ  $0002
TMR7IF           .EQ  $0003
TMR8IF           .EQ  $0004
TMR10IF          .EQ  $0005
TMR12IF          .EQ  $0006
TMR7GIF          .EQ  $0007


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ECCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007

CCP1Y            .EQ  $0004
CCP1X            .EQ  $0005


;----- ECCP1DEL Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006


;----- PWM1CON Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006


;----- ECCP1AS Bits -----------------------------------------------------
ECCP1ASE         .EQ  $0007

PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003
ECCP1AS0         .EQ  $0004
ECCP1AS1         .EQ  $0005
ECCP1AS2         .EQ  $0006


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
VNCFG            .EQ  $0003

CHSN0            .EQ  $0000
CHSN1            .EQ  $0001
CHSN2            .EQ  $0002
VCFG0            .EQ  $0004
VCFG1            .EQ  $0005
TRIGSEL0         .EQ  $0006
TRIGSEL1         .EQ  $0007


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

DONE             .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

GO               .EQ  $0001

NOT_DONE         .EQ  $0001


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


;----- SSPCON2 Bits -----------------------------------------------------
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


;----- SSP1CON1 Bits -----------------------------------------------------
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



;----- SSP1STAT Bits -----------------------------------------------------
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


;----- SSP1ADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007



;----- SSPADD Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007



;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
RD16             .EQ  $0001
NOT_T1SYNC       .EQ  $0002
SOSCEN           .EQ  $0003

T1CKPS0          .EQ  $0004
T1CKPS1          .EQ  $0005
TMR1CS0          .EQ  $0006
TMR1CS1          .EQ  $0007


;----- RCON Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_PD           .EQ  $0002
NOT_TO           .EQ  $0003
NOT_RI           .EQ  $0004
NOT_CM           .EQ  $0005
SBOREN           .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
CM               .EQ  $0005


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000
ULPSINK          .EQ  $0001
ULPEN            .EQ  $0002
SRETEN           .EQ  $0004
ULPLVL           .EQ  $0005
REGSLP           .EQ  $0007

SWDTE            .EQ  $0000


;----- IPR5 Bits -----------------------------------------------------
TMR4IP           .EQ  $0000
TMR5IP           .EQ  $0001
TMR6IP           .EQ  $0002
TMR7IP           .EQ  $0003
TMR8IP           .EQ  $0004
TMR10IP          .EQ  $0005
TMR12IP          .EQ  $0006
TMR7GIP          .EQ  $0007


;----- OSCCON Bits -----------------------------------------------------
HFIOFS           .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IRCF0            .EQ  $0004
IRCF1            .EQ  $0005
IRCF2            .EQ  $0006


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T0SE             .EQ  $0004
T0CS             .EQ  $0005
T08BIT           .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004


;----- INTCON3 Bits -----------------------------------------------------
INT1IF           .EQ  $0000
INT2IF           .EQ  $0001
INT3IF           .EQ  $0002
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT3IE           .EQ  $0005
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT3F            .EQ  $0002
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT3E            .EQ  $0005
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
INT3IP           .EQ  $0001
TMR0IP           .EQ  $0002
INTEDG3          .EQ  $0003
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

INT3P            .EQ  $0001
T0IP             .EQ  $0002
RBPU             .EQ  $0007


;----- INTCON Bits -----------------------------------------------------
RBIF             .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
RBIE             .EQ  $0003
INT0IE           .EQ  $0004
TMR0IE           .EQ  $0005
PEIE_GIEL        .EQ  $0006
GIE_GIEH         .EQ  $0007

INT0F            .EQ  $0001
T0IF             .EQ  $0002
INT0E            .EQ  $0004
T0IE             .EQ  $0005
PEIE             .EQ  $0006
GIE              .EQ  $0007

GIEL             .EQ  $0006
GIEH             .EQ  $0007


;----- STKPTR Bits -----------------------------------------------------
STKUNF           .EQ  $0006
STKFUL           .EQ  $0007

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004
STKOVF           .EQ  $0007



;==========================================================================
;
;       RAM Definitions
;
;==========================================================================

_MAXRAM          .EQ  $0FFF

;==========================================================================
;
;   IMPORTANT: For the PIC18 devices, the __CONFIG directive has been
;              superseded by the CONFIG directive.  The following settings
;              are available for this device.
;
;   VREG Sleep Enable bit:
;     RETEN = OFF          Disabled - Controlled by SRETEN bit
;     RETEN = ON           Enabled
;
;   LF-INTOSC Low-power Enable bit:
;     INTOSCSEL = LOW      LF-INTOSC in Low-power mode during Sleep
;     INTOSCSEL = HIGH     LF-INTOSC in High-power mode during Sleep
;
;   SOSC Power Selection and mode Configuration bits:
;     SOSCSEL = LOW        Low Power SOSC circuit selected
;     SOSCSEL = DIG        Digital (SCLKI) mode
;     SOSCSEL = HIGH       High Power SOSC circuit selected
;
;   Extended Instruction Set:
;     XINST = OFF          Disabled
;     XINST = ON           Enabled
;
;   Oscillator:
;     FOSC = LP            LP oscillator
;     FOSC = XT            XT oscillator
;     FOSC = HS2           HS oscillator (High power, 16 MHz - 25 MHz)
;     FOSC = HS1           HS oscillator (Medium power, 4 MHz - 16 MHz)
;     FOSC = EC3IO         EC oscillator, CLKOUT function on OSC2 (High power, 16 MHz - 64 MHz)
;     FOSC = EC3           EC oscillator (High power, 16 MHz - 64 MHz)
;     FOSC = RC            External RC oscillator, CLKOUT function on OSC2
;     FOSC = RCIO          External RC oscillator
;     FOSC = INTIO2        Internal RC oscillator
;     FOSC = INTIO1        Internal RC oscillator, CLKOUT function on OSC2
;     FOSC = EC2IO         EC oscillator, CLKOUT function on OSC2 (Medium power, 160 kHz - 16 MHz)
;     FOSC = EC2           EC oscillator (Medium power, 160 kHz -  16 MHz)
;     FOSC = EC1IO         EC oscillator, CLKOUT function on OSC2 (Low power, DC - 160 kHz)
;     FOSC = EC1           EC oscillator (Low power, DC - 160 kHz)
;
;   PLL x4 Enable bit:
;     PLLCFG = OFF         Disabled
;     PLLCFG = ON          Enabled
;
;   Fail-Safe Clock Monitor:
;     FCMEN = OFF          Disabled
;     FCMEN = ON           Enabled
;
;   Internal External Oscillator Switch Over Mode:
;     IESO = OFF           Disabled
;     IESO = ON            Enabled
;
;   Power Up Timer:
;     PWRTEN = ON          Enabled
;     PWRTEN = OFF         Disabled
;
;   Brown Out Detect:
;     BOREN = OFF          Disabled in hardware, SBOREN disabled
;     BOREN = ON           Controlled with SBOREN bit
;     BOREN = NOSLP        Enabled while active, disabled in SLEEP, SBOREN disabled
;     BOREN = SBORDIS      Enabled in hardware, SBOREN disabled
;
;   Brown-out Reset Voltage bits:
;     BORV = 0             3.0V
;     BORV = 1             2.7V
;     BORV = 2             2.0V
;     BORV = 3             1.8V
;
;   BORMV Power level:
;     BORPWR = LOW         BORMV set to low power level
;     BORPWR = MEDIUM      BORMV set to medium power level
;     BORPWR = HIGH        BORMV set to high power level
;     BORPWR = ZPBORMV     ZPBORMV instead of BORMV is selected
;
;   Watchdog Timer:
;     WDTEN = OFF          WDT disabled in hardware; SWDTEN bit disabled
;     WDTEN = NOSLP        WDT enabled only while device is active and disabled in Sleep mode; SWDTEN bit disabled
;     WDTEN = ON           WDT controlled by SWDTEN bit setting
;     WDTEN = SWDTDIS      WDT enabled in hardware; SWDTEN bit disabled
;
;   Watchdog Postscaler:
;     WDTPS = 1            1:1
;     WDTPS = 2            1:2
;     WDTPS = 4            1:4
;     WDTPS = 8            1:8
;     WDTPS = 16           1:16
;     WDTPS = 32           1:32
;     WDTPS = 64           1:64
;     WDTPS = 128          1:128
;     WDTPS = 256          1:256
;     WDTPS = 512          1:512
;     WDTPS = 1024         1:1024
;     WDTPS = 2048         1:2048
;     WDTPS = 4096         1:4096
;     WDTPS = 8192         1:8192
;     WDTPS = 16384        1:16384
;     WDTPS = 32768        1:32768
;     WDTPS = 65536        1:65536
;     WDTPS = 131072       1:131072
;     WDTPS = 262144       1:262144
;     WDTPS = 524288       1:524288
;     WDTPS = 1048576      1:1048576
;
;   RTCC Clock Select:
;     RTCOSC = INTOSCREF   RTCC uses INTRC
;     RTCOSC = SOSCREF     RTCC uses SOSC
;
;   CCP2 Mux:
;     CCP2MX = PORTBE      RE7-Microcontroller Mode/RB3-All other modes
;     CCP2MX = PORTC       RC1
;
;   MSSP address masking:
;     MSSPMSK = MSK5       5 bit address masking mode
;     MSSPMSK = MSK7       7 Bit address masking mode
;
;   Master Clear Enable:
;     MCLRE = OFF          MCLR Disabled, RG5 Enabled
;     MCLRE = ON           MCLR Enabled, RG5 Disabled
;
;   Stack Overflow Reset:
;     STVREN = OFF         Disabled
;     STVREN = ON          Enabled
;
;   Boot Block Size:
;     BBSIZ = BB1K         1K word Boot Block size
;     BBSIZ = BB2K         2K word Boot Block size
;
;   Background Debug:
;     DEBUG = ON           Enabled
;     DEBUG = OFF          Disabled
;
;   Code Protect 00800-03FFF:
;     CP0 = ON             Enabled
;     CP0 = OFF            Disabled
;
;   Code Protect 04000-07FFF:
;     CP1 = ON             Enabled
;     CP1 = OFF            Disabled
;
;   Code Protect 08000-0BFFF:
;     CP2 = ON             Enabled
;     CP2 = OFF            Disabled
;
;   Code Protect 0C000-0FFFF:
;     CP3 = ON             Enabled
;     CP3 = OFF            Disabled
;
;   Code Protect 10000-13FFF:
;     CP4 = ON             Enabled
;     CP4 = OFF            Disabled
;
;   Code Protect 14000-17FFF:
;     CP5 = ON             Enabled
;     CP5 = OFF            Disabled
;
;   Code Protect 18000-1BFFF:
;     CP6 = ON             Enabled
;     CP6 = OFF            Disabled
;
;   Code Protect 1C000-1FFFF:
;     CP7 = ON             Enabled
;     CP7 = OFF            Disabled
;
;   Code Protect Boot:
;     CPB = ON             Enabled
;     CPB = OFF            Disabled
;
;   Data EE Read Protect:
;     CPD = ON             Enabled
;     CPD = OFF            Disabled
;
;   Table Write Protect 00800-03FFF:
;     WRT0 = ON            Enabled
;     WRT0 = OFF           Disabled
;
;   Table Write Protect 04000-07FFF:
;     WRT1 = ON            Enabled
;     WRT1 = OFF           Disabled
;
;   Table Write Protect 08000-0BFFF:
;     WRT2 = ON            Enabled
;     WRT2 = OFF           Disabled
;
;   Table Write Protect 0C000-0FFFF:
;     WRT3 = ON            Enabled
;     WRT3 = OFF           Disabled
;
;   Table Write Protect 10000-13FFF:
;     WRT4 = ON            Enabled
;     WRT4 = OFF           Disabled
;
;   Table Write Protect 14000-17FFF:
;     WRT5 = ON            Enabled
;     WRT5 = OFF           Disabled
;
;   Table Write Protect 18000-1BFFF:
;     WRT6 = ON            Enabled
;     WRT6 = OFF           Disabled
;
;   Table Write Protect 1C000-1FFFF:
;     WRT7 = ON            Enabled
;     WRT7 = OFF           Disabled
;
;   Config. Write Protect:
;     WRTC = ON            Enabled
;     WRTC = OFF           Disabled
;
;   Table Write Protect Boot:
;     WRTB = ON            Enabled
;     WRTB = OFF           Disabled
;
;   Data EE Write Protect:
;     WRTD = ON            Enabled
;     WRTD = OFF           Disabled
;
;   Table Read Protect 00800-03FFF:
;     EBRT0 = ON           Enabled
;     EBRT0 = OFF          Disabled
;
;   Table Read Protect 04000-07FFF:
;     EBRT1 = ON           Enabled
;     EBRT1 = OFF          Disabled
;
;   Table Read Protect 08000-0BFFF:
;     EBRT2 = ON           Enabled
;     EBRT2 = OFF          Disabled
;
;   Table Read Protect 0C000-0FFFF:
;     EBRT3 = ON           Enabled
;     EBRT3 = OFF          Disabled
;
;   Table Read Protect 10000-13FFF:
;     EBRT4 = ON           Enabled
;     EBRT4 = OFF          Disabled
;
;   Table Read Protect 14000-17FFF:
;     EBRT5 = ON           Enabled
;     EBRT5 = OFF          Disabled
;
;   Table Read Protect 18000-1BFFF:
;     EBRT6 = ON           Enabled
;     EBRT6 = OFF          Disabled
;
;   Table Read Protect 1C000-1FFFF:
;     EBRT7 = ON           Enabled
;     EBRT7 = OFF          Disabled
;
;   Table Read Protect Boot:
;     EBRTB = ON           Enabled
;     EBRTB = OFF          Disabled
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1L        300000h
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
;   CONFIG3L        300004h
;   CONFIG3H        300005h
;   CONFIG4L        300006h
;   CONFIG5L        300008h
;   CONFIG5H        300009h
;   CONFIG6L        30000Ah
;   CONFIG6H        30000Bh
;   CONFIG7L        30000Ch
;   CONFIG7H        30000Dh
;
;==========================================================================

; The following is an assignment of address values for all of the
; configuration registers for the purpose of table reads
_CONFIG1L       .EQ  $300000
_CONFIG1H       .EQ  $300001
_CONFIG2L       .EQ  $300002
_CONFIG2H       .EQ  $300003
_CONFIG3L       .EQ  $300004
_CONFIG3H       .EQ  $300005
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B
_CONFIG7L       .EQ  $30000C
_CONFIG7H       .EQ  $30000D

;----- CONFIG1L Options --------------------------------------------------
_RETEN_OFF_1L        .EQ  $FE  Disabled - Controlled by SRETEN bit
_RETEN_ON_1L         .EQ  $FF  Enabled

_INTOSCSEL_LOW_1L    .EQ  $FB  LF-INTOSC in Low-power mode during Sleep
_INTOSCSEL_HIGH_1L   .EQ  $FF  LF-INTOSC in High-power mode during Sleep

_SOSCSEL_LOW_1L      .EQ  $EF  Low Power SOSC circuit selected
_SOSCSEL_DIG_1L      .EQ  $F7  Digital (SCLKI) mode
_SOSCSEL_HIGH_1L     .EQ  $FF  High Power SOSC circuit selected

_XINST_OFF_1L        .EQ  $BF  Disabled
_XINST_ON_1L         .EQ  $FF  Enabled

;----- CONFIG1H Options --------------------------------------------------
_FOSC_LP_1H          .EQ  $F0  LP oscillator
_FOSC_XT_1H          .EQ  $F1  XT oscillator
_FOSC_HS2_1H         .EQ  $F2  HS oscillator (High power, 16 MHz - 25 MHz)
_FOSC_HS1_1H         .EQ  $F3  HS oscillator (Medium power, 4 MHz - 16 MHz)
_FOSC_EC3IO_1H       .EQ  $F4  EC oscillator, CLKOUT function on OSC2 (High power, 16 MHz - 64 MHz)
_FOSC_EC3_1H         .EQ  $F5  EC oscillator (High power, 16 MHz - 64 MHz)
_FOSC_RC_1H          .EQ  $F6  External RC oscillator, CLKOUT function on OSC2
_FOSC_RCIO_1H        .EQ  $F7  External RC oscillator
_FOSC_INTIO2_1H      .EQ  $F8  Internal RC oscillator
_FOSC_INTIO1_1H      .EQ  $F9  Internal RC oscillator, CLKOUT function on OSC2
_FOSC_EC2IO_1H       .EQ  $FA  EC oscillator, CLKOUT function on OSC2 (Medium power, 160 kHz - 16 MHz)
_FOSC_EC2_1H         .EQ  $FB  EC oscillator (Medium power, 160 kHz -  16 MHz)
_FOSC_EC1IO_1H       .EQ  $FC  EC oscillator, CLKOUT function on OSC2 (Low power, DC - 160 kHz)
_FOSC_EC1_1H         .EQ  $FD  EC oscillator (Low power, DC - 160 kHz)

_PLLCFG_OFF_1H       .EQ  $EF  Disabled
_PLLCFG_ON_1H        .EQ  $FF  Enabled

_FCMEN_OFF_1H        .EQ  $BF  Disabled
_FCMEN_ON_1H         .EQ  $FF  Enabled

_IESO_OFF_1H         .EQ  $7F  Disabled
_IESO_ON_1H          .EQ  $FF  Enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRTEN_ON_2L        .EQ  $FE  Enabled
_PWRTEN_OFF_2L       .EQ  $FF  Disabled

_BOREN_OFF_2L        .EQ  $F9  Disabled in hardware, SBOREN disabled
_BOREN_ON_2L         .EQ  $FB  Controlled with SBOREN bit
_BOREN_NOSLP_2L      .EQ  $FD  Enabled while active, disabled in SLEEP, SBOREN disabled
_BOREN_SBORDIS_2L    .EQ  $FF  Enabled in hardware, SBOREN disabled

_BORV_0_2L           .EQ  $E7  3.0V
_BORV_1_2L           .EQ  $EF  2.7V
_BORV_2_2L           .EQ  $F7  2.0V
_BORV_3_2L           .EQ  $FF  1.8V

_BORPWR_LOW_2L       .EQ  $9F  BORMV set to low power level
_BORPWR_MEDIUM_2L    .EQ  $BF  BORMV set to medium power level
_BORPWR_HIGH_2L      .EQ  $DF  BORMV set to high power level
_BORPWR_ZPBORMV_2L   .EQ  $FF  ZPBORMV instead of BORMV is selected

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        .EQ  $FC  WDT disabled in hardware; SWDTEN bit disabled
_WDTEN_NOSLP_2H      .EQ  $FD  WDT enabled only while device is active and disabled in Sleep mode; SWDTEN bit disabled
_WDTEN_ON_2H         .EQ  $FE  WDT controlled by SWDTEN bit setting
_WDTEN_SWDTDIS_2H    .EQ  $FF  WDT enabled in hardware; SWDTEN bit disabled

_WDTPS_1_2H          .EQ  $83  1:1
_WDTPS_2_2H          .EQ  $87  1:2
_WDTPS_4_2H          .EQ  $8B  1:4
_WDTPS_8_2H          .EQ  $8F  1:8
_WDTPS_16_2H         .EQ  $93  1:16
_WDTPS_32_2H         .EQ  $97  1:32
_WDTPS_64_2H         .EQ  $9B  1:64
_WDTPS_128_2H        .EQ  $9F  1:128
_WDTPS_256_2H        .EQ  $A3  1:256
_WDTPS_512_2H        .EQ  $A7  1:512
_WDTPS_1024_2H       .EQ  $AB  1:1024
_WDTPS_2048_2H       .EQ  $AF  1:2048
_WDTPS_4096_2H       .EQ  $B3  1:4096
_WDTPS_8192_2H       .EQ  $B7  1:8192
_WDTPS_16384_2H      .EQ  $BB  1:16384
_WDTPS_32768_2H      .EQ  $BF  1:32768
_WDTPS_65536_2H      .EQ  $C3  1:65536
_WDTPS_131072_2H     .EQ  $C7  1:131072
_WDTPS_262144_2H     .EQ  $CB  1:262144
_WDTPS_524288_2H     .EQ  $CF  1:524288
_WDTPS_1048576_2H    .EQ  $FF  1:1048576

;----- CONFIG3L Options --------------------------------------------------
_RTCOSC_INTOSCREF_3L .EQ  $FE  RTCC uses INTRC
_RTCOSC_SOSCREF_3L   .EQ  $FF  RTCC uses SOSC

;----- CONFIG3H Options --------------------------------------------------
_CCP2MX_PORTBE_3H    .EQ  $FE  RE7-Microcontroller Mode/RB3-All other modes
_CCP2MX_PORTC_3H     .EQ  $FF  RC1

_MSSPMSK_MSK5_3H     .EQ  $F7  5 bit address masking mode
_MSSPMSK_MSK7_3H     .EQ  $FF  7 Bit address masking mode

_MCLRE_OFF_3H        .EQ  $7F  MCLR Disabled, RG5 Enabled
_MCLRE_ON_3H         .EQ  $FF  MCLR Enabled, RG5 Disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Disabled
_STVREN_ON_4L        .EQ  $FF  Enabled

_BBSIZ_BB1K_4L       .EQ  $EF  1K word Boot Block size
_BBSIZ_BB2K_4L       .EQ  $FF  2K word Boot Block size

_DEBUG_ON_4L         .EQ  $7F  Enabled
_DEBUG_OFF_4L        .EQ  $FF  Disabled

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Enabled
_CP0_OFF_5L          .EQ  $FF  Disabled

_CP1_ON_5L           .EQ  $FD  Enabled
_CP1_OFF_5L          .EQ  $FF  Disabled

_CP2_ON_5L           .EQ  $FB  Enabled
_CP2_OFF_5L          .EQ  $FF  Disabled

_CP3_ON_5L           .EQ  $F7  Enabled
_CP3_OFF_5L          .EQ  $FF  Disabled

_CP4_ON_5L           .EQ  $EF  Enabled
_CP4_OFF_5L          .EQ  $FF  Disabled

_CP5_ON_5L           .EQ  $DF  Enabled
_CP5_OFF_5L          .EQ  $FF  Disabled

_CP6_ON_5L           .EQ  $BF  Enabled
_CP6_OFF_5L          .EQ  $FF  Disabled

_CP7_ON_5L           .EQ  $7F  Enabled
_CP7_OFF_5L          .EQ  $FF  Disabled

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Enabled
_CPB_OFF_5H          .EQ  $FF  Disabled

_CPD_ON_5H           .EQ  $7F  Enabled
_CPD_OFF_5H          .EQ  $FF  Disabled

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Enabled
_WRT0_OFF_6L         .EQ  $FF  Disabled

_WRT1_ON_6L          .EQ  $FD  Enabled
_WRT1_OFF_6L         .EQ  $FF  Disabled

_WRT2_ON_6L          .EQ  $FB  Enabled
_WRT2_OFF_6L         .EQ  $FF  Disabled

_WRT3_ON_6L          .EQ  $F7  Enabled
_WRT3_OFF_6L         .EQ  $FF  Disabled

_WRT4_ON_6L          .EQ  $EF  Enabled
_WRT4_OFF_6L         .EQ  $FF  Disabled

_WRT5_ON_6L          .EQ  $DF  Enabled
_WRT5_OFF_6L         .EQ  $FF  Disabled

_WRT6_ON_6L          .EQ  $BF  Enabled
_WRT6_OFF_6L         .EQ  $FF  Disabled

_WRT7_ON_6L          .EQ  $7F  Enabled
_WRT7_OFF_6L         .EQ  $FF  Disabled

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Enabled
_WRTC_OFF_6H         .EQ  $FF  Disabled

_WRTB_ON_6H          .EQ  $BF  Enabled
_WRTB_OFF_6H         .EQ  $FF  Disabled

_WRTD_ON_6H          .EQ  $7F  Enabled
_WRTD_OFF_6H         .EQ  $FF  Disabled

;----- CONFIG7L Options --------------------------------------------------
_EBRT0_ON_7L         .EQ  $FE  Enabled
_EBRT0_OFF_7L        .EQ  $FF  Disabled

_EBRT1_ON_7L         .EQ  $FD  Enabled
_EBRT1_OFF_7L        .EQ  $FF  Disabled

_EBRT2_ON_7L         .EQ  $FB  Enabled
_EBRT2_OFF_7L        .EQ  $FF  Disabled

_EBRT3_ON_7L         .EQ  $F7  Enabled
_EBRT3_OFF_7L        .EQ  $FF  Disabled

_EBRT4_ON_7L         .EQ  $EF  Enabled
_EBRT4_OFF_7L        .EQ  $FF  Disabled

_EBRT5_ON_7L         .EQ  $DF  Enabled
_EBRT5_OFF_7L        .EQ  $FF  Disabled

_EBRT6_ON_7L         .EQ  $BF  Enabled
_EBRT6_OFF_7L        .EQ  $FF  Disabled

_EBRT7_ON_7L         .EQ  $7F  Enabled
_EBRT7_OFF_7L        .EQ  $FF  Disabled

;----- CONFIG7H Options --------------------------------------------------
_EBRTB_ON_7H         .EQ  $BF  Enabled
_EBRTB_OFF_7H        .EQ  $FF  Disabled


;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF

;----- IDLOC Equates --------------------------------------------------
_IDLOC0          .EQ  $200000
_IDLOC1          .EQ  $200001
_IDLOC2          .EQ  $200002
_IDLOC3          .EQ  $200003
_IDLOC4          .EQ  $200004
_IDLOC5          .EQ  $200005
_IDLOC6          .EQ  $200006
_IDLOC7          .EQ  $200007
