;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF43K22 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF43K22 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   4096

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
ANSELA           .EQ  $0F38
ANSELB           .EQ  $0F39
ANSELC           .EQ  $0F3A
ANSELD           .EQ  $0F3B
ANSELE           .EQ  $0F3C
PMD2             .EQ  $0F3D
PMD1             .EQ  $0F3E
PMD0             .EQ  $0F3F
DACCON1          .EQ  $0F40
VREFCON2         .EQ  $0F40
DACCON0          .EQ  $0F41
VREFCON1         .EQ  $0F41
FVRCON           .EQ  $0F42
VREFCON0         .EQ  $0F42
CTMUICON         .EQ  $0F43
CTMUICONH        .EQ  $0F43
CTMUCON1         .EQ  $0F44
CTMUCONL         .EQ  $0F44
CTMUCON0         .EQ  $0F45
CTMUCONH         .EQ  $0F45
SRCON1           .EQ  $0F46
SRCON0           .EQ  $0F47
CCPTMRS1         .EQ  $0F48
CCPTMRS0         .EQ  $0F49
T6CON            .EQ  $0F4A
PR6              .EQ  $0F4B
TMR6             .EQ  $0F4C
T5GCON           .EQ  $0F4D
T5CON            .EQ  $0F4E
TMR5             .EQ  $0F4F
TMR5L            .EQ  $0F4F
TMR5H            .EQ  $0F50
T4CON            .EQ  $0F51
PR4              .EQ  $0F52
TMR4             .EQ  $0F53
CCP5CON          .EQ  $0F54
CCPR5            .EQ  $0F55
CCPR5L           .EQ  $0F55
CCPR5H           .EQ  $0F56
CCP4CON          .EQ  $0F57
CCPR4            .EQ  $0F58
CCPR4L           .EQ  $0F58
CCPR4H           .EQ  $0F59
PSTR3CON         .EQ  $0F5A
CCP3AS           .EQ  $0F5B
ECCP3AS          .EQ  $0F5B
PWM3CON          .EQ  $0F5C
CCP3CON          .EQ  $0F5D
CCPR3            .EQ  $0F5E
CCPR3L           .EQ  $0F5E
CCPR3H           .EQ  $0F5F
SLRCON           .EQ  $0F60
WPUB             .EQ  $0F61
IOCB             .EQ  $0F62
PSTR2CON         .EQ  $0F63
CCP2AS           .EQ  $0F64
ECCP2AS          .EQ  $0F64
PWM2CON          .EQ  $0F65
CCP2CON          .EQ  $0F66
CCPR2            .EQ  $0F67
CCPR2L           .EQ  $0F67
CCPR2H           .EQ  $0F68
SSP2CON3         .EQ  $0F69
SSP2MSK          .EQ  $0F6A
SSP2CON2         .EQ  $0F6B
SSP2CON1         .EQ  $0F6C
SSP2STAT         .EQ  $0F6D
SSP2ADD          .EQ  $0F6E
SSP2BUF          .EQ  $0F6F
BAUD2CON         .EQ  $0F70
BAUDCON2         .EQ  $0F70
RC2STA           .EQ  $0F71
RCSTA2           .EQ  $0F71
TX2STA           .EQ  $0F72
TXSTA2           .EQ  $0F72
TX2REG           .EQ  $0F73
TXREG2           .EQ  $0F73
RC2REG           .EQ  $0F74
RCREG2           .EQ  $0F74
SP2BRG           .EQ  $0F75
SPBRG2           .EQ  $0F75
SP2BRGH          .EQ  $0F76
SPBRGH2          .EQ  $0F76
CM12CON          .EQ  $0F77
CM2CON1          .EQ  $0F77
CM2CON           .EQ  $0F78
CM2CON0          .EQ  $0F78
CM1CON           .EQ  $0F79
CM1CON0          .EQ  $0F79
PIE4             .EQ  $0F7A
PIR4             .EQ  $0F7B
IPR4             .EQ  $0F7C
PIE5             .EQ  $0F7D
PIR5             .EQ  $0F7E
IPR5             .EQ  $0F7F
PORTA            .EQ  $0F80
PORTB            .EQ  $0F81
PORTC            .EQ  $0F82
PORTD            .EQ  $0F83
PORTE            .EQ  $0F84
LATA             .EQ  $0F89
LATB             .EQ  $0F8A
LATC             .EQ  $0F8B
LATD             .EQ  $0F8C
LATE             .EQ  $0F8D
DDRA             .EQ  $0F92
TRISA            .EQ  $0F92
DDRB             .EQ  $0F93
TRISB            .EQ  $0F93
DDRC             .EQ  $0F94
TRISC            .EQ  $0F94
DDRD             .EQ  $0F95
TRISD            .EQ  $0F95
DDRE             .EQ  $0F96
TRISE            .EQ  $0F96
OSCTUNE          .EQ  $0F9B
HLVDCON          .EQ  $0F9C
LVDCON           .EQ  $0F9C
PIE1             .EQ  $0F9D
PIR1             .EQ  $0F9E
IPR1             .EQ  $0F9F
PIE2             .EQ  $0FA0
PIR2             .EQ  $0FA1
IPR2             .EQ  $0FA2
PIE3             .EQ  $0FA3
PIR3             .EQ  $0FA4
IPR3             .EQ  $0FA5
EECON1           .EQ  $0FA6
EECON2           .EQ  $0FA7
EEDATA           .EQ  $0FA8
EEADR            .EQ  $0FA9
RC1STA           .EQ  $0FAB
RCSTA            .EQ  $0FAB
RCSTA1           .EQ  $0FAB
TX1STA           .EQ  $0FAC
TXSTA            .EQ  $0FAC
TXSTA1           .EQ  $0FAC
TX1REG           .EQ  $0FAD
TXREG            .EQ  $0FAD
TXREG1           .EQ  $0FAD
RC1REG           .EQ  $0FAE
RCREG            .EQ  $0FAE
RCREG1           .EQ  $0FAE
SP1BRG           .EQ  $0FAF
SPBRG            .EQ  $0FAF
SPBRG1           .EQ  $0FAF
SP1BRGH          .EQ  $0FB0
SPBRGH           .EQ  $0FB0
SPBRGH1          .EQ  $0FB0
T3CON            .EQ  $0FB1
TMR3             .EQ  $0FB2
TMR3L            .EQ  $0FB2
TMR3H            .EQ  $0FB3
T3GCON           .EQ  $0FB4
ECCP1AS          .EQ  $0FB6
ECCPAS           .EQ  $0FB6
PWM1CON          .EQ  $0FB7
PWMCON           .EQ  $0FB7
BAUD1CON         .EQ  $0FB8
BAUDCON          .EQ  $0FB8
BAUDCON1         .EQ  $0FB8
BAUDCTL          .EQ  $0FB8
PSTR1CON         .EQ  $0FB9
PSTRCON          .EQ  $0FB9
T2CON            .EQ  $0FBA
PR2              .EQ  $0FBB
TMR2             .EQ  $0FBC
CCP1CON          .EQ  $0FBD
CCPR1            .EQ  $0FBE
CCPR1L           .EQ  $0FBE
CCPR1H           .EQ  $0FBF
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
SSP1MSK          .EQ  $0FCA
SSPMSK           .EQ  $0FCA
SSP1CON3         .EQ  $0FCB
SSPCON3          .EQ  $0FCB
T1GCON           .EQ  $0FCC
T1CON            .EQ  $0FCD
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
WDTCON           .EQ  $0FD1
OSCCON2          .EQ  $0FD2
OSCCON           .EQ  $0FD3
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

;----- ANSELA Bits -----------------------------------------------------
ANSA0            .EQ  $0000
ANSA1            .EQ  $0001
ANSA2            .EQ  $0002
ANSA3            .EQ  $0003
ANSA5            .EQ  $0005


;----- ANSELB Bits -----------------------------------------------------
ANSB0            .EQ  $0000
ANSB1            .EQ  $0001
ANSB2            .EQ  $0002
ANSB3            .EQ  $0003
ANSB4            .EQ  $0004
ANSB5            .EQ  $0005


;----- ANSELC Bits -----------------------------------------------------
ANSC2            .EQ  $0002
ANSC3            .EQ  $0003
ANSC4            .EQ  $0004
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


;----- PMD2 Bits -----------------------------------------------------
ADCMD            .EQ  $0000
CMP1MD           .EQ  $0001
CMP2MD           .EQ  $0002
CTMUMD           .EQ  $0003


;----- PMD1 Bits -----------------------------------------------------
CCP1MD           .EQ  $0000
CCP2MD           .EQ  $0001
CCP3MD           .EQ  $0002
CCP4MD           .EQ  $0003
CCP5MD           .EQ  $0004
MSSP1MD          .EQ  $0006
MSSP2MD          .EQ  $0007


;----- PMD0 Bits -----------------------------------------------------
TMR1MD           .EQ  $0000
TMR2MD           .EQ  $0001
TMR3MD           .EQ  $0002
TMR4MD           .EQ  $0003
TMR5MD           .EQ  $0004
TMR6MD           .EQ  $0005
UART1MD          .EQ  $0006
UART2MD          .EQ  $0007


;----- DACCON1 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004


;----- VREFCON2 Bits -----------------------------------------------------
DACR0            .EQ  $0000
DACR1            .EQ  $0001
DACR2            .EQ  $0002
DACR3            .EQ  $0003
DACR4            .EQ  $0004


;----- DACCON0 Bits -----------------------------------------------------
DACNSS           .EQ  $0000
DACOE            .EQ  $0005
DACLPS           .EQ  $0006
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003


;----- VREFCON1 Bits -----------------------------------------------------
DACNSS           .EQ  $0000
DACOE            .EQ  $0005
DACLPS           .EQ  $0006
DACEN            .EQ  $0007

DACPSS0          .EQ  $0002
DACPSS1          .EQ  $0003


;----- FVRCON Bits -----------------------------------------------------
FVRST            .EQ  $0006
FVREN            .EQ  $0007

FVRS0            .EQ  $0004
FVRS1            .EQ  $0005


;----- VREFCON0 Bits -----------------------------------------------------
FVRST            .EQ  $0006
FVREN            .EQ  $0007

FVRS0            .EQ  $0004
FVRS1            .EQ  $0005


;----- CTMUICON Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


;----- CTMUICONH Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


;----- CTMUCON1 Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCONL Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0004
EDG2POL          .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG2SEL0         .EQ  $0005
EDG2SEL1         .EQ  $0006


;----- CTMUCON0 Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007


;----- CTMUCONH Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007


;----- SRCON1 Bits -----------------------------------------------------
SRRC1E           .EQ  $0000
SRRC2E           .EQ  $0001
SRRCKE           .EQ  $0002
SRRPE            .EQ  $0003
SRSC1E           .EQ  $0004
SRSC2E           .EQ  $0005
SRSCKE           .EQ  $0006
SRSPE            .EQ  $0007


;----- SRCON0 Bits -----------------------------------------------------
SRPR             .EQ  $0000
SRPS             .EQ  $0001
SRNQEN           .EQ  $0002
SRQEN            .EQ  $0003
SRLEN            .EQ  $0007

SRCLK0           .EQ  $0004
SRCLK1           .EQ  $0005
SRCLK2           .EQ  $0006


;----- CCPTMRS1 Bits -----------------------------------------------------
C4TSEL0          .EQ  $0000
C4TSEL1          .EQ  $0001
C5TSEL0          .EQ  $0002
C5TSEL1          .EQ  $0003


;----- CCPTMRS0 Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C2TSEL0          .EQ  $0003
C2TSEL1          .EQ  $0004
C3TSEL0          .EQ  $0006
C3TSEL1          .EQ  $0007


;----- T6CON Bits -----------------------------------------------------
TMR6ON           .EQ  $0002

T6CKPS0          .EQ  $0000
T6CKPS1          .EQ  $0001
T6OUTPS0         .EQ  $0003
T6OUTPS1         .EQ  $0004
T6OUTPS2         .EQ  $0005
T6OUTPS3         .EQ  $0006


;----- T5GCON Bits -----------------------------------------------------
T5GVAL           .EQ  $0002
T5GGO_NOT_DONE   .EQ  $0003
T5GSPM           .EQ  $0004
T5GTM            .EQ  $0005
T5GPOL           .EQ  $0006
TMR5GE           .EQ  $0007

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001
T5GGO            .EQ  $0003

T5G_DONE         .EQ  $0003


;----- T5CON Bits -----------------------------------------------------
TMR5ON           .EQ  $0000
T5RD16           .EQ  $0001
NOT_T5SYNC       .EQ  $0002
T5SOSCEN         .EQ  $0003

T5SYNC           .EQ  $0002
T5CKPS0          .EQ  $0004
T5CKPS1          .EQ  $0005
TMR5CS0          .EQ  $0006
TMR5CS1          .EQ  $0007


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
T4OUTPS0         .EQ  $0003
T4OUTPS1         .EQ  $0004
T4OUTPS2         .EQ  $0005
T4OUTPS3         .EQ  $0006


;----- CCP5CON Bits -----------------------------------------------------
CCP5M0           .EQ  $0000
CCP5M1           .EQ  $0001
CCP5M2           .EQ  $0002
CCP5M3           .EQ  $0003
DC5B0            .EQ  $0004
DC5B1            .EQ  $0005


;----- CCP4CON Bits -----------------------------------------------------
CCP4M0           .EQ  $0000
CCP4M1           .EQ  $0001
CCP4M2           .EQ  $0002
CCP4M3           .EQ  $0003
DC4B0            .EQ  $0004
DC4B1            .EQ  $0005


;----- PSTR3CON Bits -----------------------------------------------------
STR3A            .EQ  $0000
STR3B            .EQ  $0001
STR3C            .EQ  $0002
STR3D            .EQ  $0003
STR3SYNC         .EQ  $0004


;----- CCP3AS Bits -----------------------------------------------------
CCP3ASE          .EQ  $0007

P3SSBD0          .EQ  $0000
P3SSBD1          .EQ  $0001
P3SSAC0          .EQ  $0002
P3SSAC1          .EQ  $0003
CCP3AS0          .EQ  $0004
CCP3AS1          .EQ  $0005
CCP3AS2          .EQ  $0006


PSS3BD0          .EQ  $0000
PSS3BD1          .EQ  $0001
PSS3AC0          .EQ  $0002
PSS3AC1          .EQ  $0003


;----- ECCP3AS Bits -----------------------------------------------------
CCP3ASE          .EQ  $0007

P3SSBD0          .EQ  $0000
P3SSBD1          .EQ  $0001
P3SSAC0          .EQ  $0002
P3SSAC1          .EQ  $0003
CCP3AS0          .EQ  $0004
CCP3AS1          .EQ  $0005
CCP3AS2          .EQ  $0006


PSS3BD0          .EQ  $0000
PSS3BD1          .EQ  $0001
PSS3AC0          .EQ  $0002
PSS3AC1          .EQ  $0003


;----- PWM3CON Bits -----------------------------------------------------
P3RSEN           .EQ  $0007

P3DC0            .EQ  $0000
P3DC1            .EQ  $0001
P3DC2            .EQ  $0002
P3DC3            .EQ  $0003
P3DC4            .EQ  $0004
P3DC5            .EQ  $0005
P3DC6            .EQ  $0006


;----- CCP3CON Bits -----------------------------------------------------
CCP3M0           .EQ  $0000
CCP3M1           .EQ  $0001
CCP3M2           .EQ  $0002
CCP3M3           .EQ  $0003
DC3B0            .EQ  $0004
DC3B1            .EQ  $0005
P3M0             .EQ  $0006
P3M1             .EQ  $0007


;----- SLRCON Bits -----------------------------------------------------
SLRA             .EQ  $0000
SLRB             .EQ  $0001
SLRC             .EQ  $0002
SLRD             .EQ  $0003
SLRE             .EQ  $0004


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
IOCB4            .EQ  $0004
IOCB5            .EQ  $0005
IOCB6            .EQ  $0006
IOCB7            .EQ  $0007


;----- PSTR2CON Bits -----------------------------------------------------
STR2A            .EQ  $0000
STR2B            .EQ  $0001
STR2C            .EQ  $0002
STR2D            .EQ  $0003
STR2SYNC         .EQ  $0004


;----- CCP2AS Bits -----------------------------------------------------
CCP2ASE          .EQ  $0007

P2SSBD0          .EQ  $0000
P2SSBD1          .EQ  $0001
P2SSAC0          .EQ  $0002
P2SSAC1          .EQ  $0003
CCP2AS0          .EQ  $0004
CCP2AS1          .EQ  $0005
CCP2AS2          .EQ  $0006


PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003


;----- ECCP2AS Bits -----------------------------------------------------
CCP2ASE          .EQ  $0007

P2SSBD0          .EQ  $0000
P2SSBD1          .EQ  $0001
P2SSAC0          .EQ  $0002
P2SSAC1          .EQ  $0003
CCP2AS0          .EQ  $0004
CCP2AS1          .EQ  $0005
CCP2AS2          .EQ  $0006


PSS2BD0          .EQ  $0000
PSS2BD1          .EQ  $0001
PSS2AC0          .EQ  $0002
PSS2AC1          .EQ  $0003


;----- PWM2CON Bits -----------------------------------------------------
P2RSEN           .EQ  $0007

P2DC0            .EQ  $0000
P2DC1            .EQ  $0001
P2DC2            .EQ  $0002
P2DC3            .EQ  $0003
P2DC4            .EQ  $0004
P2DC5            .EQ  $0005
P2DC6            .EQ  $0006


;----- CCP2CON Bits -----------------------------------------------------
CCP2M0           .EQ  $0000
CCP2M1           .EQ  $0001
CCP2M2           .EQ  $0002
CCP2M3           .EQ  $0003
DC2B0            .EQ  $0004
DC2B1            .EQ  $0005
P2M0             .EQ  $0006
P2M1             .EQ  $0007


;----- SSP2CON3 Bits -----------------------------------------------------
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


;----- SSP2CON2 Bits -----------------------------------------------------
SEN              .EQ  $0000
RSEN             .EQ  $0001
PEN              .EQ  $0002
RCEN             .EQ  $0003
ACKEN            .EQ  $0004
ACKDT            .EQ  $0005
ACKSTAT          .EQ  $0006
GCEN             .EQ  $0007


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


NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005


;----- BAUD2CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- RC2STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003

RX9D2            .EQ  $0000
OERR2            .EQ  $0001
FERR2            .EQ  $0002
ADDEN2           .EQ  $0003
CREN2            .EQ  $0004
SREN2            .EQ  $0005
RX92             .EQ  $0006
SPEN2            .EQ  $0007


;----- TX2STA Bits -----------------------------------------------------
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


;----- CM12CON Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C1SYNC           .EQ  $0001
C2HYS            .EQ  $0002
C1HYS            .EQ  $0003
C2RSEL           .EQ  $0004
C1RSEL           .EQ  $0005
MC2OUT           .EQ  $0006
MC1OUT           .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
C2SYNC           .EQ  $0000
C1SYNC           .EQ  $0001
C2HYS            .EQ  $0002
C1HYS            .EQ  $0003
C2RSEL           .EQ  $0004
C1RSEL           .EQ  $0005
MC2OUT           .EQ  $0006
MC1OUT           .EQ  $0007


;----- CM2CON Bits -----------------------------------------------------
C2R              .EQ  $0002
C2SP             .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT_CM2CON     .EQ  $0006
C2ON             .EQ  $0007

C2CH0            .EQ  $0000
C2CH1            .EQ  $0001


;----- CM2CON0 Bits -----------------------------------------------------
C2R              .EQ  $0002
C2SP             .EQ  $0003
C2POL            .EQ  $0004
C2OE             .EQ  $0005
C2OUT_CM2CON0    .EQ  $0006
C2ON             .EQ  $0007

C2CH0            .EQ  $0000
C2CH1            .EQ  $0001


;----- CM1CON Bits -----------------------------------------------------
C1R              .EQ  $0002
C1SP             .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT_CM1CON     .EQ  $0006
C1ON             .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001


;----- CM1CON0 Bits -----------------------------------------------------
C1R              .EQ  $0002
C1SP             .EQ  $0003
C1POL            .EQ  $0004
C1OE             .EQ  $0005
C1OUT_CM1CON0    .EQ  $0006
C1ON             .EQ  $0007

C1CH0            .EQ  $0000
C1CH1            .EQ  $0001


;----- PIE4 Bits -----------------------------------------------------
CCP3IE           .EQ  $0000
CCP4IE           .EQ  $0001
CCP5IE           .EQ  $0002


;----- PIR4 Bits -----------------------------------------------------
CCP3IF           .EQ  $0000
CCP4IF           .EQ  $0001
CCP5IF           .EQ  $0002


;----- IPR4 Bits -----------------------------------------------------
CCP3IP           .EQ  $0000
CCP4IP           .EQ  $0001
CCP5IP           .EQ  $0002


;----- PIE5 Bits -----------------------------------------------------
TMR4IE           .EQ  $0000
TMR5IE           .EQ  $0001
TMR6IE           .EQ  $0002


;----- PIR5 Bits -----------------------------------------------------
TMR4IF           .EQ  $0000
TMR5IF           .EQ  $0001
TMR6IF           .EQ  $0002


;----- IPR5 Bits -----------------------------------------------------
TMR4IP           .EQ  $0000
TMR5IP           .EQ  $0001
TMR6IP           .EQ  $0002


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

C12IN0M          .EQ  $0000
C12IN1M          .EQ  $0001
C2INP            .EQ  $0002
C1INP            .EQ  $0003
C1OUT_PORTA      .EQ  $0004
C2OUT_PORTA      .EQ  $0005

C12IN0N          .EQ  $0000
C12IN1N          .EQ  $0001
VREFM            .EQ  $0002
VREFP            .EQ  $0003
T0CKI            .EQ  $0004
SS               .EQ  $0005

VREFN            .EQ  $0002
SRQ              .EQ  $0004
NOT_SS           .EQ  $0005

CVREF            .EQ  $0002
LVDIN            .EQ  $0005

DACOUT           .EQ  $0002
HLVDIN           .EQ  $0005

SS1              .EQ  $0005

NOT_SS1          .EQ  $0005

SRNQ             .EQ  $0005


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
CCP2_PORTB       .EQ  $0003
KBI0             .EQ  $0004
KBI1             .EQ  $0005
KBI2             .EQ  $0006
KBI3             .EQ  $0007

AN12             .EQ  $0000
AN10             .EQ  $0001
AN8              .EQ  $0002
AN9              .EQ  $0003
AN11             .EQ  $0004
AN13             .EQ  $0005
PGC              .EQ  $0006
PGD              .EQ  $0007

FLT0             .EQ  $0000
C12IN3M          .EQ  $0001
C12IN2M          .EQ  $0003
T5G              .EQ  $0004
T1G              .EQ  $0005

SRI              .EQ  $0000
C12IN3N          .EQ  $0001
C12IN2N          .EQ  $0003
CCP3_PORTB       .EQ  $0005

CTED1            .EQ  $0002
CTED2            .EQ  $0003
T3CKI_PORTB      .EQ  $0005

P2A_PORTB        .EQ  $0003
P3A_PORTB        .EQ  $0005


;----- PORTC Bits -----------------------------------------------------
RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007

T1OSO            .EQ  $0000
T1OSI            .EQ  $0001
T5CKI            .EQ  $0002
SCK              .EQ  $0003
SDI              .EQ  $0004
SDO              .EQ  $0005
TX               .EQ  $0006
RX               .EQ  $0007

P2B_PORTC        .EQ  $0000
P2A_PORTC        .EQ  $0001
P1A              .EQ  $0002
SCL              .EQ  $0003
SDA              .EQ  $0004
CK               .EQ  $0006
; DT is a reserved word
; DT               .EQ  $0007

T1CKI            .EQ  $0000
CCP2_PORTC       .EQ  $0001
CCP1             .EQ  $0002
SCK1             .EQ  $0003
SDI1             .EQ  $0004
SDO1             .EQ  $0005
TX1              .EQ  $0006
RX1              .EQ  $0007

T3CKI_PORTC      .EQ  $0000
CTPLS            .EQ  $0002
SCL1             .EQ  $0003
SDA1             .EQ  $0004
CK1              .EQ  $0006
DT1              .EQ  $0007

T3G              .EQ  $0000
AN14             .EQ  $0002
AN15             .EQ  $0003
AN16             .EQ  $0004
AN17             .EQ  $0005
AN18             .EQ  $0006
AN19             .EQ  $0007


;----- PORTD Bits -----------------------------------------------------
RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007

P2B_PORTD        .EQ  $0002
P2C              .EQ  $0003
P2D              .EQ  $0004
P1B              .EQ  $0005
P1C              .EQ  $0006
P1D              .EQ  $0007

CCP4             .EQ  $0001
TX2              .EQ  $0006
RX2              .EQ  $0007

SCK2             .EQ  $0000
SDI2             .EQ  $0001
NOT_SS2          .EQ  $0003
SDO2             .EQ  $0004
CK2              .EQ  $0006
DT2              .EQ  $0007

SCL2             .EQ  $0000
SDA2             .EQ  $0001
SS2              .EQ  $0003

AN20             .EQ  $0000
AN21             .EQ  $0001
AN22             .EQ  $0002
AN23             .EQ  $0003
AN24             .EQ  $0004
AN25             .EQ  $0005
AN26             .EQ  $0006
AN27             .EQ  $0007


;----- PORTE Bits -----------------------------------------------------
RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003

AN5              .EQ  $0000
AN6              .EQ  $0001
AN7              .EQ  $0002
MCLR             .EQ  $0003

P3A_PORTE        .EQ  $0000
P3B              .EQ  $0001
CCP5             .EQ  $0002
NOT_MCLR         .EQ  $0003

CCP3_PORTE       .EQ  $0000
VPP              .EQ  $0003


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


;----- DDRA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- TRISA Bits -----------------------------------------------------
TRISA0           .EQ  $0000
TRISA1           .EQ  $0001
TRISA2           .EQ  $0002
TRISA3           .EQ  $0003
TRISA4           .EQ  $0004
TRISA5           .EQ  $0005
TRISA6           .EQ  $0006
TRISA7           .EQ  $0007

RA0              .EQ  $0000
RA1              .EQ  $0001
RA2              .EQ  $0002
RA3              .EQ  $0003
RA4              .EQ  $0004
RA5              .EQ  $0005
RA6              .EQ  $0006
RA7              .EQ  $0007


;----- DDRB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- TRISB Bits -----------------------------------------------------
TRISB0           .EQ  $0000
TRISB1           .EQ  $0001
TRISB2           .EQ  $0002
TRISB3           .EQ  $0003
TRISB4           .EQ  $0004
TRISB5           .EQ  $0005
TRISB6           .EQ  $0006
TRISB7           .EQ  $0007

RB0              .EQ  $0000
RB1              .EQ  $0001
RB2              .EQ  $0002
RB3              .EQ  $0003
RB4              .EQ  $0004
RB5              .EQ  $0005
RB6              .EQ  $0006
RB7              .EQ  $0007


;----- DDRC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- TRISC Bits -----------------------------------------------------
TRISC0           .EQ  $0000
TRISC1           .EQ  $0001
TRISC2           .EQ  $0002
TRISC3           .EQ  $0003
TRISC4           .EQ  $0004
TRISC5           .EQ  $0005
TRISC6           .EQ  $0006
TRISC7           .EQ  $0007

RC0              .EQ  $0000
RC1              .EQ  $0001
RC2              .EQ  $0002
RC3              .EQ  $0003
RC4              .EQ  $0004
RC5              .EQ  $0005
RC6              .EQ  $0006
RC7              .EQ  $0007


;----- DDRD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- TRISD Bits -----------------------------------------------------
TRISD0           .EQ  $0000
TRISD1           .EQ  $0001
TRISD2           .EQ  $0002
TRISD3           .EQ  $0003
TRISD4           .EQ  $0004
TRISD5           .EQ  $0005
TRISD6           .EQ  $0006
TRISD7           .EQ  $0007

RD0              .EQ  $0000
RD1              .EQ  $0001
RD2              .EQ  $0002
RD3              .EQ  $0003
RD4              .EQ  $0004
RD5              .EQ  $0005
RD6              .EQ  $0006
RD7              .EQ  $0007


;----- DDRE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
WPUE3            .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
WPUE3            .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002


;----- OSCTUNE Bits -----------------------------------------------------
PLLEN            .EQ  $0006
INTSRC           .EQ  $0007

TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- HLVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
BGVST            .EQ  $0006
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004
IVRST            .EQ  $0005

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- LVDCON Bits -----------------------------------------------------
HLVDEN           .EQ  $0004
IRVST            .EQ  $0005
BGVST            .EQ  $0006
VDIRMAG          .EQ  $0007

HLVDL0           .EQ  $0000
HLVDL1           .EQ  $0001
HLVDL2           .EQ  $0002
HLVDL3           .EQ  $0003

LVDL0            .EQ  $0000
LVDL1            .EQ  $0001
LVDL2            .EQ  $0002
LVDL3            .EQ  $0003
LVDEN            .EQ  $0004
IVRST            .EQ  $0005

LVV0             .EQ  $0000
LVV1             .EQ  $0001
LVV2             .EQ  $0002
LVV3             .EQ  $0003
BGST             .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
CCP1IE           .EQ  $0002
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
CCP1IF           .EQ  $0002
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
CCP1IP           .EQ  $0002
SSP1IP           .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
ADIP             .EQ  $0006

SSPIP            .EQ  $0003
TXIP             .EQ  $0004
RCIP             .EQ  $0005


;----- PIE2 Bits -----------------------------------------------------
CCP2IE           .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCL1IE           .EQ  $0003
EEIE             .EQ  $0004
C2IE             .EQ  $0005
C1IE             .EQ  $0006
OSCFIE           .EQ  $0007

LVDIE            .EQ  $0002
BCLIE            .EQ  $0003


;----- PIR2 Bits -----------------------------------------------------
CCP2IF           .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCL1IF           .EQ  $0003
EEIF             .EQ  $0004
C2IF             .EQ  $0005
C1IF             .EQ  $0006
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002
BCLIF            .EQ  $0003


;----- IPR2 Bits -----------------------------------------------------
CCP2IP           .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCL1IP           .EQ  $0003
EEIP             .EQ  $0004
C2IP             .EQ  $0005
C1IP             .EQ  $0006
OSCFIP           .EQ  $0007

LVDIP            .EQ  $0002
BCLIP            .EQ  $0003


;----- PIE3 Bits -----------------------------------------------------
TMR1GIE          .EQ  $0000
TMR3GIE          .EQ  $0001
TMR5GIE          .EQ  $0002
CTMUIE           .EQ  $0003
TX2IE            .EQ  $0004
RC2IE            .EQ  $0005
BCL2IE           .EQ  $0006
SSP2IE           .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
TMR1GIF          .EQ  $0000
TMR3GIF          .EQ  $0001
TMR5GIF          .EQ  $0002
CTMUIF           .EQ  $0003
TX2IF            .EQ  $0004
RC2IF            .EQ  $0005
BCL2IF           .EQ  $0006
SSP2IF           .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
TMR1GIP          .EQ  $0000
TMR3GIP          .EQ  $0001
TMR5GIP          .EQ  $0002
CTMUIP           .EQ  $0003
TX2IP            .EQ  $0004
RC2IP            .EQ  $0005
BCL2IP           .EQ  $0006
SSP2IP           .EQ  $0007


;----- EECON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
CFGS             .EQ  $0006
EEPGD            .EQ  $0007


;----- EEADR Bits -----------------------------------------------------
EEADR0           .EQ  $0000
EEADR1           .EQ  $0001
EEADR2           .EQ  $0002
EEADR3           .EQ  $0003
EEADR4           .EQ  $0004
EEADR5           .EQ  $0005
EEADR6           .EQ  $0006
EEADR7           .EQ  $0007


;----- RC1STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- RCSTA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007

ADEN             .EQ  $0003

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

ADEN             .EQ  $0003

RX9D1            .EQ  $0000
OERR1            .EQ  $0001
FERR1            .EQ  $0002
ADDEN1           .EQ  $0003
CREN1            .EQ  $0004
SREN1            .EQ  $0005
RX91             .EQ  $0006
SPEN1            .EQ  $0007


;----- TX1STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007

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

TX9D1            .EQ  $0000
TRMT1            .EQ  $0001
BRGH1            .EQ  $0002
SENDB1           .EQ  $0003
SYNC1            .EQ  $0004
TXEN1            .EQ  $0005
TX91             .EQ  $0006
CSRC1            .EQ  $0007


;----- T3CON Bits -----------------------------------------------------
TMR3ON           .EQ  $0000
T3RD16           .EQ  $0001
NOT_T3SYNC       .EQ  $0002
T3SOSCEN         .EQ  $0003

T3OSCEN          .EQ  $0003
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
T3G_DONE         .EQ  $0003

T3GGO            .EQ  $0003


;----- ECCP1AS Bits -----------------------------------------------------
CCP1ASE          .EQ  $0007

P1SSBD0          .EQ  $0000
P1SSBD1          .EQ  $0001
P1SSAC0          .EQ  $0002
P1SSAC1          .EQ  $0003
CCP1AS0          .EQ  $0004
CCP1AS1          .EQ  $0005
CCP1AS2          .EQ  $0006


PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003

ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- ECCPAS Bits -----------------------------------------------------
CCP1ASE          .EQ  $0007

P1SSBD0          .EQ  $0000
P1SSBD1          .EQ  $0001
P1SSAC0          .EQ  $0002
P1SSAC1          .EQ  $0003
CCP1AS0          .EQ  $0004
CCP1AS1          .EQ  $0005
CCP1AS2          .EQ  $0006


PSS1BD0          .EQ  $0000
PSS1BD1          .EQ  $0001
PSS1AC0          .EQ  $0002
PSS1AC1          .EQ  $0003

ECCPASE          .EQ  $0007

PSSBD0           .EQ  $0000
PSSBD1           .EQ  $0001
PSSAC0           .EQ  $0002
PSSAC1           .EQ  $0003
ECCPAS0          .EQ  $0004
ECCPAS1          .EQ  $0005
ECCPAS2          .EQ  $0006


;----- PWM1CON Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006

PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006


;----- PWMCON Bits -----------------------------------------------------
P1RSEN           .EQ  $0007

P1DC0            .EQ  $0000
P1DC1            .EQ  $0001
P1DC2            .EQ  $0002
P1DC3            .EQ  $0003
P1DC4            .EQ  $0004
P1DC5            .EQ  $0005
P1DC6            .EQ  $0006

PRSEN            .EQ  $0007

PDC0             .EQ  $0000
PDC1             .EQ  $0001
PDC2             .EQ  $0002
PDC3             .EQ  $0003
PDC4             .EQ  $0004
PDC5             .EQ  $0005
PDC6             .EQ  $0006


;----- BAUD1CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- BAUDCTL Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
CKTXP            .EQ  $0004
DTRXP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

SCKP             .EQ  $0004


;----- PSTR1CON Bits -----------------------------------------------------
STR1A            .EQ  $0000
STR1B            .EQ  $0001
STR1C            .EQ  $0002
STR1D            .EQ  $0003
STR1SYNC         .EQ  $0004


;----- PSTRCON Bits -----------------------------------------------------
STR1A            .EQ  $0000
STR1B            .EQ  $0001
STR1C            .EQ  $0002
STR1D            .EQ  $0003
STR1SYNC         .EQ  $0004


;----- T2CON Bits -----------------------------------------------------
TMR2ON           .EQ  $0002

T2CKPS0          .EQ  $0000
T2CKPS1          .EQ  $0001
T2OUTPS0         .EQ  $0003
T2OUTPS1         .EQ  $0004
T2OUTPS2         .EQ  $0005
T2OUTPS3         .EQ  $0006


;----- CCP1CON Bits -----------------------------------------------------
CCP1M0           .EQ  $0000
CCP1M1           .EQ  $0001
CCP1M2           .EQ  $0002
CCP1M3           .EQ  $0003
DC1B0            .EQ  $0004
DC1B1            .EQ  $0005
P1M0             .EQ  $0006
P1M1             .EQ  $0007


;----- ADCON2 Bits -----------------------------------------------------
ADFM             .EQ  $0007

ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ACQT0            .EQ  $0003
ACQT1            .EQ  $0004
ACQT2            .EQ  $0005


;----- ADCON1 Bits -----------------------------------------------------
TRIGSEL          .EQ  $0007

NVCFG0           .EQ  $0000
NVCFG1           .EQ  $0001
PVCFG0           .EQ  $0002
PVCFG1           .EQ  $0003


;----- ADCON0 Bits -----------------------------------------------------
ADON             .EQ  $0000
GO_NOT_DONE      .EQ  $0001

GO               .EQ  $0001
CHS0             .EQ  $0002
CHS1             .EQ  $0003
CHS2             .EQ  $0004
CHS3             .EQ  $0005
CHS4             .EQ  $0006

DONE             .EQ  $0001

NOT_DONE         .EQ  $0001

GO_DONE          .EQ  $0001


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


;----- SSP1CON1 Bits -----------------------------------------------------
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


NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005


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


NOT_W            .EQ  $0002
NOT_A            .EQ  $0005

R_W              .EQ  $0002
D_A              .EQ  $0005

NOT_WRITE        .EQ  $0002
NOT_ADDRESS      .EQ  $0005


;----- SSP1MSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


;----- SSPMSK Bits -----------------------------------------------------
MSK0             .EQ  $0000
MSK1             .EQ  $0001
MSK2             .EQ  $0002
MSK3             .EQ  $0003
MSK4             .EQ  $0004
MSK5             .EQ  $0005
MSK6             .EQ  $0006
MSK7             .EQ  $0007


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


;----- T1GCON Bits -----------------------------------------------------
T1GVAL           .EQ  $0002
T1GGO_NOT_DONE   .EQ  $0003
T1GSPM           .EQ  $0004
T1GTM            .EQ  $0005
T1GPOL           .EQ  $0006
TMR1GE           .EQ  $0007

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1G_DONE         .EQ  $0003

T1GGO            .EQ  $0003


;----- T1CON Bits -----------------------------------------------------
TMR1ON           .EQ  $0000
T1RD16           .EQ  $0001
NOT_T1SYNC       .EQ  $0002
T1SOSCEN         .EQ  $0003

RD16             .EQ  $0001
T1SYNC           .EQ  $0002
T1OSCEN          .EQ  $0003
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
SBOREN           .EQ  $0006
IPEN             .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004


;----- WDTCON Bits -----------------------------------------------------
SWDTEN           .EQ  $0000

SWDTE            .EQ  $0000


;----- OSCCON2 Bits -----------------------------------------------------
LFIOFS           .EQ  $0000
MFIOFS           .EQ  $0001
PRISD            .EQ  $0002
SOSCGO           .EQ  $0003
MFIOSEL          .EQ  $0004
SOSCRUN          .EQ  $0006
PLLRDY           .EQ  $0007


;----- OSCCON Bits -----------------------------------------------------
HFIOFS           .EQ  $0002
OSTS             .EQ  $0003
IDLEN            .EQ  $0007

SCS0             .EQ  $0000
SCS1             .EQ  $0001
IOFS             .EQ  $0002
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
INT1IE           .EQ  $0003
INT2IE           .EQ  $0004
INT1IP           .EQ  $0006
INT2IP           .EQ  $0007

INT1F            .EQ  $0000
INT2F            .EQ  $0001
INT1E            .EQ  $0003
INT2E            .EQ  $0004
INT1P            .EQ  $0006
INT2P            .EQ  $0007


;----- INTCON2 Bits -----------------------------------------------------
RBIP             .EQ  $0000
TMR0IP           .EQ  $0002
INTEDG2          .EQ  $0004
INTEDG1          .EQ  $0005
INTEDG0          .EQ  $0006
NOT_RBPU         .EQ  $0007

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

STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
STKOVF           .EQ  $0007

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004



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
;   Oscillator Selection bits:
;     FOSC = LP            LP oscillator
;     FOSC = XT            XT oscillator
;     FOSC = HSHP          HS oscillator (high power > 16 MHz)
;     FOSC = HSMP          HS oscillator (medium power 4-16 MHz)
;     FOSC = ECHP          EC oscillator, CLKOUT function on OSC2 (high power, >16 MHz)
;     FOSC = ECHPIO6       EC oscillator (high power, >16 MHz)
;     FOSC = RC            External RC oscillator, CLKOUT function on OSC2
;     FOSC = RCIO6         External RC oscillator
;     FOSC = INTIO67       Internal oscillator block
;     FOSC = INTIO7        Internal oscillator block, CLKOUT function on OSC2
;     FOSC = ECMP          EC oscillator, CLKOUT function on OSC2 (medium power, 500 kHz-16 MHz)
;     FOSC = ECMPIO6       EC oscillator (medium power, 500 kHz-16 MHz)
;     FOSC = ECLP          EC oscillator, CLKOUT function on OSC2 (low power, <500 kHz)
;     FOSC = ECLPIO6       EC oscillator (low power, <500 kHz)
;
;   4X PLL Enable:
;     PLLCFG = OFF         Oscillator used directly
;     PLLCFG = ON          Oscillator multiplied by 4
;
;   Primary clock enable bit:
;     PRICLKEN = OFF       Primary clock can be disabled by software
;     PRICLKEN = ON        Primary clock is always enabled
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   Internal/External Oscillator Switchover bit:
;     IESO = OFF           Oscillator Switchover mode disabled
;     IESO = ON            Oscillator Switchover mode enabled
;
;   Power-up Timer Enable bit:
;     PWRTEN = ON          Power up timer enabled
;     PWRTEN = OFF         Power up timer disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled in hardware and software
;     BOREN = ON           Brown-out Reset enabled and controlled by software (SBOREN is enabled)
;     BOREN = NOSLP        Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
;     BOREN = SBORDIS      Brown-out Reset enabled in hardware only (SBOREN is disabled)
;
;   Brown Out Reset Voltage bits:
;     BORV = 285           VBOR set to 2.85 V nominal
;     BORV = 250           VBOR set to 2.50 V nominal
;     BORV = 220           VBOR set to 2.20 V nominal
;     BORV = 190           VBOR set to 1.90 V nominal
;
;   Watchdog Timer Enable bits:
;     WDTEN = OFF          Watch dog timer is always disabled. SWDTEN has no effect.
;     WDTEN = NOSLP        WDT is disabled in sleep, otherwise enabled. SWDTEN bit has no effect
;     WDTEN = SWON         WDT is controlled by SWDTEN bit of the WDTCON register
;     WDTEN = ON           WDT is always enabled. SWDTEN bit has no effect
;
;   Watchdog Timer Postscale Select bits:
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
;
;   CCP2 MUX bit:
;     CCP2MX = PORTB3      CCP2 input/output is multiplexed with RB3
;     CCP2MX = PORTC1      CCP2 input/output is multiplexed with RC1
;
;   PORTB A/D Enable bit:
;     PBADEN = OFF         PORTB<5:0> pins are configured as digital I/O on Reset
;     PBADEN = ON          PORTB<5:0> pins are configured as analog input channels on Reset
;
;   P3A/CCP3 Mux bit:
;     CCP3MX = PORTE0      P3A/CCP3 input/output is mulitplexed with RE0
;     CCP3MX = PORTB5      P3A/CCP3 input/output is multiplexed with RB5
;
;   HFINTOSC Fast Start-up:
;     HFOFST = OFF         HFINTOSC output and ready status are delayed by the oscillator stable status
;     HFOFST = ON          HFINTOSC output and ready status are not delayed by the oscillator stable status
;
;   Timer3 Clock input mux bit:
;     T3CMX = PORTB5       T3CKI is on RB5
;     T3CMX = PORTC0       T3CKI is on RC0
;
;   ECCP2 B output mux bit:
;     P2BMX = PORTC0       P2B is on RC0
;     P2BMX = PORTD2       P2B is on RD2
;
;   MCLR Pin Enable bit:
;     MCLRE = INTMCLR      RE3 input pin enabled; MCLR disabled
;     MCLRE = EXTMCLR      MCLR pin enabled, RE3 input pin disabled
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Single-Supply ICSP Enable bit:
;     LVP = OFF            Single-Supply ICSP disabled
;     LVP = ON             Single-Supply ICSP enabled if MCLRE is also 1
;
;   Extended Instruction Set Enable bit:
;     XINST = OFF          Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
;     XINST = ON           Instruction set extension and Indexed Addressing mode enabled
;
;   Background Debug:
;     DEBUG = ON           Enabled
;     DEBUG = OFF          Disabled
;
;   Code Protection Block 0:
;     CP0 = ON             Block 0 (000200-000FFFh) code-protected
;     CP0 = OFF            Block 0 (000200-000FFFh) not code-protected
;
;   Code Protection Block 1:
;     CP1 = ON             Block 1 (001000-001FFFh) code-protected
;     CP1 = OFF            Block 1 (001000-001FFFh) not code-protected
;
;   Boot Block Code Protection bit:
;     CPB = ON             Boot block (000000-0001FFh) code-protected
;     CPB = OFF            Boot block (000000-0001FFh) not code-protected
;
;   Data EEPROM Code Protection bit:
;     CPD = ON             Data EEPROM code-protected
;     CPD = OFF            Data EEPROM not code-protected
;
;   Write Protection Block 0:
;     WRT0 = ON            Block 0 (000200-000FFFh) write-protected
;     WRT0 = OFF           Block 0 (000200-000FFFh) not write-protected
;
;   Write Protection Block 1:
;     WRT1 = ON            Block 1 (001000-001FFFh) write-protected
;     WRT1 = OFF           Block 1 (001000-001FFFh) not write-protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers (300000-3000FFh) write-protected
;     WRTC = OFF           Configuration registers (300000-3000FFh) not write-protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot Block (000000-0001FFh) write-protected
;     WRTB = OFF           Boot Block (000000-0001FFh) not write-protected
;
;   Data EEPROM Write Protection bit:
;     WRTD = ON            Data EEPROM write-protected
;     WRTD = OFF           Data EEPROM not write-protected
;
;   Table Read Protection Block 0:
;     EBTR0 = ON           Block 0 (000200-000FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000200-000FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 1:
;     EBTR1 = ON           Block 1 (001000-001FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (001000-001FFFh) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot Block (000000-0001FFh) protected from table reads executed in other blocks
;     EBTRB = OFF          Boot Block (000000-0001FFh) not protected from table reads executed in other blocks
;
;==========================================================================
;==========================================================================
;
;       Configuration Bits
;
;   NAME            Address
;   CONFIG1H        300001h
;   CONFIG2L        300002h
;   CONFIG2H        300003h
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
_CONFIG1H       .EQ  $300001
_CONFIG2L       .EQ  $300002
_CONFIG2H       .EQ  $300003
_CONFIG3H       .EQ  $300005
_CONFIG4L       .EQ  $300006
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B
_CONFIG7L       .EQ  $30000C
_CONFIG7H       .EQ  $30000D

;----- CONFIG1H Options --------------------------------------------------
_FOSC_LP_1H          .EQ  $F0  LP oscillator
_FOSC_XT_1H          .EQ  $F1  XT oscillator
_FOSC_HSHP_1H        .EQ  $F2  HS oscillator (high power > 16 MHz)
_FOSC_HSMP_1H        .EQ  $F3  HS oscillator (medium power 4-16 MHz)
_FOSC_ECHP_1H        .EQ  $F4  EC oscillator, CLKOUT function on OSC2 (high power, >16 MHz)
_FOSC_ECHPIO6_1H     .EQ  $F5  EC oscillator (high power, >16 MHz)
_FOSC_RC_1H          .EQ  $F6  External RC oscillator, CLKOUT function on OSC2
_FOSC_RCIO6_1H       .EQ  $F7  External RC oscillator
_FOSC_INTIO67_1H     .EQ  $F8  Internal oscillator block
_FOSC_INTIO7_1H      .EQ  $F9  Internal oscillator block, CLKOUT function on OSC2
_FOSC_ECMP_1H        .EQ  $FA  EC oscillator, CLKOUT function on OSC2 (medium power, 500 kHz-16 MHz)
_FOSC_ECMPIO6_1H     .EQ  $FB  EC oscillator (medium power, 500 kHz-16 MHz)
_FOSC_ECLP_1H        .EQ  $FC  EC oscillator, CLKOUT function on OSC2 (low power, <500 kHz)
_FOSC_ECLPIO6_1H     .EQ  $FD  EC oscillator (low power, <500 kHz)

_PLLCFG_OFF_1H       .EQ  $EF  Oscillator used directly
_PLLCFG_ON_1H        .EQ  $FF  Oscillator multiplied by 4

_PRICLKEN_OFF_1H     .EQ  $DF  Primary clock can be disabled by software
_PRICLKEN_ON_1H      .EQ  $FF  Primary clock is always enabled

_FCMEN_OFF_1H        .EQ  $BF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

_IESO_OFF_1H         .EQ  $7F  Oscillator Switchover mode disabled
_IESO_ON_1H          .EQ  $FF  Oscillator Switchover mode enabled

;----- CONFIG2L Options --------------------------------------------------
_PWRTEN_ON_2L        .EQ  $FE  Power up timer enabled
_PWRTEN_OFF_2L       .EQ  $FF  Power up timer disabled

_BOREN_OFF_2L        .EQ  $F9  Brown-out Reset disabled in hardware and software
_BOREN_ON_2L         .EQ  $FB  Brown-out Reset enabled and controlled by software (SBOREN is enabled)
_BOREN_NOSLP_2L      .EQ  $FD  Brown-out Reset enabled in hardware only and disabled in Sleep mode (SBOREN is disabled)
_BOREN_SBORDIS_2L    .EQ  $FF  Brown-out Reset enabled in hardware only (SBOREN is disabled)

_BORV_285_2L         .EQ  $E7  VBOR set to 2.85 V nominal
_BORV_250_2L         .EQ  $EF  VBOR set to 2.50 V nominal
_BORV_220_2L         .EQ  $F7  VBOR set to 2.20 V nominal
_BORV_190_2L         .EQ  $FF  VBOR set to 1.90 V nominal

;----- CONFIG2H Options --------------------------------------------------
_WDTEN_OFF_2H        .EQ  $FC  Watch dog timer is always disabled. SWDTEN has no effect.
_WDTEN_NOSLP_2H      .EQ  $FD  WDT is disabled in sleep, otherwise enabled. SWDTEN bit has no effect
_WDTEN_SWON_2H       .EQ  $FE  WDT is controlled by SWDTEN bit of the WDTCON register
_WDTEN_ON_2H         .EQ  $FF  WDT is always enabled. SWDTEN bit has no effect

_WDTPS_1_2H          .EQ  $C3  1:1
_WDTPS_2_2H          .EQ  $C7  1:2
_WDTPS_4_2H          .EQ  $CB  1:4
_WDTPS_8_2H          .EQ  $CF  1:8
_WDTPS_16_2H         .EQ  $D3  1:16
_WDTPS_32_2H         .EQ  $D7  1:32
_WDTPS_64_2H         .EQ  $DB  1:64
_WDTPS_128_2H        .EQ  $DF  1:128
_WDTPS_256_2H        .EQ  $E3  1:256
_WDTPS_512_2H        .EQ  $E7  1:512
_WDTPS_1024_2H       .EQ  $EB  1:1024
_WDTPS_2048_2H       .EQ  $EF  1:2048
_WDTPS_4096_2H       .EQ  $F3  1:4096
_WDTPS_8192_2H       .EQ  $F7  1:8192
_WDTPS_16384_2H      .EQ  $FB  1:16384
_WDTPS_32768_2H      .EQ  $FF  1:32768

;----- CONFIG3H Options --------------------------------------------------
_CCP2MX_PORTB3_3H    .EQ  $FE  CCP2 input/output is multiplexed with RB3
_CCP2MX_PORTC1_3H    .EQ  $FF  CCP2 input/output is multiplexed with RC1

_PBADEN_OFF_3H       .EQ  $FD  PORTB<5:0> pins are configured as digital I/O on Reset
_PBADEN_ON_3H        .EQ  $FF  PORTB<5:0> pins are configured as analog input channels on Reset

_CCP3MX_PORTE0_3H    .EQ  $FB  P3A/CCP3 input/output is mulitplexed with RE0
_CCP3MX_PORTB5_3H    .EQ  $FF  P3A/CCP3 input/output is multiplexed with RB5

_HFOFST_OFF_3H       .EQ  $F7  HFINTOSC output and ready status are delayed by the oscillator stable status
_HFOFST_ON_3H        .EQ  $FF  HFINTOSC output and ready status are not delayed by the oscillator stable status

_T3CMX_PORTB5_3H     .EQ  $EF  T3CKI is on RB5
_T3CMX_PORTC0_3H     .EQ  $FF  T3CKI is on RC0

_P2BMX_PORTC0_3H     .EQ  $DF  P2B is on RC0
_P2BMX_PORTD2_3H     .EQ  $FF  P2B is on RD2

_MCLRE_INTMCLR_3H    .EQ  $7F  RE3 input pin enabled; MCLR disabled
_MCLRE_EXTMCLR_3H    .EQ  $FF  MCLR pin enabled, RE3 input pin disabled

;----- CONFIG4L Options --------------------------------------------------
_STVREN_OFF_4L       .EQ  $FE  Stack full/underflow will not cause Reset
_STVREN_ON_4L        .EQ  $FF  Stack full/underflow will cause Reset

_LVP_OFF_4L          .EQ  $FB  Single-Supply ICSP disabled
_LVP_ON_4L           .EQ  $FF  Single-Supply ICSP enabled if MCLRE is also 1

_XINST_OFF_4L        .EQ  $BF  Instruction set extension and Indexed Addressing mode disabled (Legacy mode)
_XINST_ON_4L         .EQ  $FF  Instruction set extension and Indexed Addressing mode enabled

_DEBUG_ON_4L         .EQ  $7F  Enabled
_DEBUG_OFF_4L        .EQ  $FF  Disabled

;----- CONFIG5L Options --------------------------------------------------
_CP0_ON_5L           .EQ  $FE  Block 0 (000200-000FFFh) code-protected
_CP0_OFF_5L          .EQ  $FF  Block 0 (000200-000FFFh) not code-protected

_CP1_ON_5L           .EQ  $FD  Block 1 (001000-001FFFh) code-protected
_CP1_OFF_5L          .EQ  $FF  Block 1 (001000-001FFFh) not code-protected

;----- CONFIG5H Options --------------------------------------------------
_CPB_ON_5H           .EQ  $BF  Boot block (000000-0001FFh) code-protected
_CPB_OFF_5H          .EQ  $FF  Boot block (000000-0001FFh) not code-protected

_CPD_ON_5H           .EQ  $7F  Data EEPROM code-protected
_CPD_OFF_5H          .EQ  $FF  Data EEPROM not code-protected

;----- CONFIG6L Options --------------------------------------------------
_WRT0_ON_6L          .EQ  $FE  Block 0 (000200-000FFFh) write-protected
_WRT0_OFF_6L         .EQ  $FF  Block 0 (000200-000FFFh) not write-protected

_WRT1_ON_6L          .EQ  $FD  Block 1 (001000-001FFFh) write-protected
_WRT1_OFF_6L         .EQ  $FF  Block 1 (001000-001FFFh) not write-protected

;----- CONFIG6H Options --------------------------------------------------
_WRTC_ON_6H          .EQ  $DF  Configuration registers (300000-3000FFh) write-protected
_WRTC_OFF_6H         .EQ  $FF  Configuration registers (300000-3000FFh) not write-protected

_WRTB_ON_6H          .EQ  $BF  Boot Block (000000-0001FFh) write-protected
_WRTB_OFF_6H         .EQ  $FF  Boot Block (000000-0001FFh) not write-protected

_WRTD_ON_6H          .EQ  $7F  Data EEPROM write-protected
_WRTD_OFF_6H         .EQ  $FF  Data EEPROM not write-protected

;----- CONFIG7L Options --------------------------------------------------
_EBTR0_ON_7L         .EQ  $FE  Block 0 (000200-000FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_7L        .EQ  $FF  Block 0 (000200-000FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_7L         .EQ  $FD  Block 1 (001000-001FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_7L        .EQ  $FF  Block 1 (001000-001FFFh) not protected from table reads executed in other blocks

;----- CONFIG7H Options --------------------------------------------------
_EBTRB_ON_7H         .EQ  $BF  Boot Block (000000-0001FFh) protected from table reads executed in other blocks
_EBTRB_OFF_7H        .EQ  $FF  Boot Block (000000-0001FFh) not protected from table reads executed in other blocks


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
