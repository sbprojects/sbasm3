;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18F25K40 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F25K40 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   16384

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
PPSLOCK          .EQ  $0EA0
INT0PPS          .EQ  $0EA1
INT1PPS          .EQ  $0EA2
INT2PPS          .EQ  $0EA3
T0CKIPPS         .EQ  $0EA4
T1CKIPPS         .EQ  $0EA5
T1GPPS           .EQ  $0EA6
T3CKIPPS         .EQ  $0EA7
T3GPPS           .EQ  $0EA8
T5CKIPPS         .EQ  $0EA9
T5GPPS           .EQ  $0EAA
T2INPPS          .EQ  $0EAB
T4INPPS          .EQ  $0EAC
T6INPPS          .EQ  $0EAD
ADACTPPS         .EQ  $0EAE
CCP1PPS          .EQ  $0EAF
CCP2PPS          .EQ  $0EB0
CWG1PPS          .EQ  $0EB1
CWGINPPS         .EQ  $0EB1
MDCARLPPS        .EQ  $0EB2
MDCARHPPS        .EQ  $0EB3
MDSRCPPS         .EQ  $0EB4
RXPPS            .EQ  $0EB5
TXPPS            .EQ  $0EB6
SSP1CLKPPS       .EQ  $0EB7
SSPCLKPPS        .EQ  $0EB7
SSP1DATPPS       .EQ  $0EB8
SSPDATPPS        .EQ  $0EB8
SSP1SSPPS        .EQ  $0EB9
SSPSSPPS         .EQ  $0EB9
IPR0             .EQ  $0EBA
IPR1             .EQ  $0EBB
IPR2             .EQ  $0EBC
IPR3             .EQ  $0EBD
IPR4             .EQ  $0EBE
IPR5             .EQ  $0EBF
IPR6             .EQ  $0EC0
IPR7             .EQ  $0EC1
PIE0             .EQ  $0EC2
PIE1             .EQ  $0EC3
PIE2             .EQ  $0EC4
PIE3             .EQ  $0EC5
PIE4             .EQ  $0EC6
PIE5             .EQ  $0EC7
PIE6             .EQ  $0EC8
PIE7             .EQ  $0EC9
PIR0             .EQ  $0ECA
PIR1             .EQ  $0ECB
PIR2             .EQ  $0ECC
PIR3             .EQ  $0ECD
PIR4             .EQ  $0ECE
PIR5             .EQ  $0ECF
PIR6             .EQ  $0ED0
PIR7             .EQ  $0ED1
WDTCON0          .EQ  $0ED2
WDTCON1          .EQ  $0ED3
WDTPSL           .EQ  $0ED4
WDTPSH           .EQ  $0ED5
WDTTMR           .EQ  $0ED6
CPUDOZE          .EQ  $0ED7
OSCCON1          .EQ  $0ED8
OSCCON2          .EQ  $0ED9
OSCCON3          .EQ  $0EDA
OSCSTAT          .EQ  $0EDB
OSCSTAT1         .EQ  $0EDB
OSCEN            .EQ  $0EDC
OSCTUNE          .EQ  $0EDD
OSCFRQ           .EQ  $0EDE
VREGCON          .EQ  $0EDF
BORCON           .EQ  $0EE0
PMD0             .EQ  $0EE1
PMD1             .EQ  $0EE2
PMD2             .EQ  $0EE3
PMD3             .EQ  $0EE4
PMD4             .EQ  $0EE5
PMD5             .EQ  $0EE6
RA0PPS           .EQ  $0EE7
RA1PPS           .EQ  $0EE8
RA2PPS           .EQ  $0EE9
RA3PPS           .EQ  $0EEA
RA4PPS           .EQ  $0EEB
RA5PPS           .EQ  $0EEC
RA6PPS           .EQ  $0EED
RA7PPS           .EQ  $0EEE
RB0PPS           .EQ  $0EEF
RB1PPS           .EQ  $0EF0
RB2PPS           .EQ  $0EF1
RB3PPS           .EQ  $0EF2
RB4PPS           .EQ  $0EF3
RB5PPS           .EQ  $0EF4
RB6PPS           .EQ  $0EF5
RB7PPS           .EQ  $0EF6
RC0PPS           .EQ  $0EF7
RC1PPS           .EQ  $0EF8
RC2PPS           .EQ  $0EF9
RC3PPS           .EQ  $0EFA
RC4PPS           .EQ  $0EFB
RC5PPS           .EQ  $0EFC
RC6PPS           .EQ  $0EFD
RC7PPS           .EQ  $0EFE
IOCAF            .EQ  $0F0A
IOCAN            .EQ  $0F0B
IOCAP            .EQ  $0F0C
INLVLA           .EQ  $0F0D
SLRCONA          .EQ  $0F0E
ODCONA           .EQ  $0F0F
WPUA             .EQ  $0F10
ANSELA           .EQ  $0F11
IOCBF            .EQ  $0F12
IOCBN            .EQ  $0F13
IOCBP            .EQ  $0F14
INLVLB           .EQ  $0F15
SLRCONB          .EQ  $0F16
ODCONB           .EQ  $0F17
WPUB             .EQ  $0F18
ANSELB           .EQ  $0F19
IOCCF            .EQ  $0F1A
IOCCN            .EQ  $0F1B
IOCCP            .EQ  $0F1C
INLVLC           .EQ  $0F1D
SLRCONC          .EQ  $0F1E
ODCONC           .EQ  $0F1F
WPUC             .EQ  $0F20
ANSELC           .EQ  $0F21
IOCEF            .EQ  $0F27
IOCEN            .EQ  $0F28
IOCEP            .EQ  $0F29
INLVLE           .EQ  $0F2A
WPUE             .EQ  $0F2D
HLVDCON0         .EQ  $0F2F
HLVDCON1         .EQ  $0F30
FVRCON           .EQ  $0F31
ZCDCON           .EQ  $0F32
DAC1CON0         .EQ  $0F33
DAC1CON1         .EQ  $0F34
CM2CON0          .EQ  $0F35
CM2CON1          .EQ  $0F36
CM2NCH           .EQ  $0F37
CM2PCH           .EQ  $0F38
CM1CON0          .EQ  $0F39
CM1CON1          .EQ  $0F3A
CM1NCH           .EQ  $0F3B
CM1PCH           .EQ  $0F3C
CMOUT            .EQ  $0F3D
CLKRCON          .EQ  $0F3E
CLKRCLK          .EQ  $0F3F
CWG1CLKCON       .EQ  $0F40
CWG1ISM          .EQ  $0F41
CWG1DBR          .EQ  $0F42
CWG1DBF          .EQ  $0F43
CWG1CON0         .EQ  $0F44
CWG1CON1         .EQ  $0F45
CWG1AS0          .EQ  $0F46
CWG1AS1          .EQ  $0F47
CWG1STR          .EQ  $0F48
SCANLADR         .EQ  $0F49
SCANLADRL        .EQ  $0F49
SCANLADRH        .EQ  $0F4A
SCANLADRU        .EQ  $0F4B
SCANHADR         .EQ  $0F4C
SCANHADRL        .EQ  $0F4C
SCANHADRH        .EQ  $0F4D
SCANHADRU        .EQ  $0F4E
SCANCON0         .EQ  $0F4F
SCANTRIG         .EQ  $0F50
MDCON0           .EQ  $0F51
MDCON1           .EQ  $0F52
MDSRC            .EQ  $0F53
MDCARL           .EQ  $0F54
MDCARH           .EQ  $0F55
ADACT            .EQ  $0F56
ADCLK            .EQ  $0F57
ADREF            .EQ  $0F58
ADCON1           .EQ  $0F59
ADCON2           .EQ  $0F5A
ADCON3           .EQ  $0F5B
ADACQ            .EQ  $0F5C
ADCAP            .EQ  $0F5D
ADPRE            .EQ  $0F5E
ADPCH            .EQ  $0F5F
ADCON0           .EQ  $0F60
ADPREV           .EQ  $0F61
ADPREVL          .EQ  $0F61
ADPREVH          .EQ  $0F62
ADRES            .EQ  $0F63
ADRESL           .EQ  $0F63
ADRESH           .EQ  $0F64
ADSTAT           .EQ  $0F65
ADRPT            .EQ  $0F66
ADCNT            .EQ  $0F67
ADSTPT           .EQ  $0F68
ADSTPTL          .EQ  $0F68
ADSTPTH          .EQ  $0F69
ADLTH            .EQ  $0F6A
ADLTHL           .EQ  $0F6A
ADLTHH           .EQ  $0F6B
ADUTH            .EQ  $0F6C
ADUTHL           .EQ  $0F6C
ADUTHH           .EQ  $0F6D
ADERR            .EQ  $0F6E
ADERRL           .EQ  $0F6E
ADERRH           .EQ  $0F6F
ADACC            .EQ  $0F70
ADACCL           .EQ  $0F70
ADACCH           .EQ  $0F71
ADFLTR           .EQ  $0F72
ADFLTRL          .EQ  $0F72
ADFLTRH          .EQ  $0F73
CRCDATA          .EQ  $0F74
CRCDATL          .EQ  $0F74
CRCDATH          .EQ  $0F75
CRCACC           .EQ  $0F76
CRCACCL          .EQ  $0F76
CRCACCH          .EQ  $0F77
CRCSHFT          .EQ  $0F78
CRCSHIFTL        .EQ  $0F78
CRCSHIFTH        .EQ  $0F79
CRCXOR           .EQ  $0F7A
CRCXORL          .EQ  $0F7A
CRCXORH          .EQ  $0F7B
CRCCON0          .EQ  $0F7C
CRCCON1          .EQ  $0F7D
NVMADR           .EQ  $0F7E
NVMADRL          .EQ  $0F7E
NVMDAT           .EQ  $0F80
NVMCON1          .EQ  $0F81
NVMCON2          .EQ  $0F82
LATA             .EQ  $0F83
LATB             .EQ  $0F84
LATC             .EQ  $0F85
DDRA             .EQ  $0F88
TRISA            .EQ  $0F88
DDRB             .EQ  $0F89
TRISB            .EQ  $0F89
DDRC             .EQ  $0F8A
TRISC            .EQ  $0F8A
PORTA            .EQ  $0F8D
PORTB            .EQ  $0F8E
PORTC            .EQ  $0F8F
PORTE            .EQ  $0F91
SSP1BUF          .EQ  $0F92
SSP1ADD          .EQ  $0F93
SSP1MSK          .EQ  $0F94
SSP1STAT         .EQ  $0F95
SSP1CON1         .EQ  $0F96
SSP1CON2         .EQ  $0F97
SSP1CON3         .EQ  $0F98
RC1REG           .EQ  $0F99
RCREG            .EQ  $0F99
RCREG1           .EQ  $0F99
TX1REG           .EQ  $0F9A
TXREG            .EQ  $0F9A
TXREG1           .EQ  $0F9A
SP1BRG           .EQ  $0F9B
SP1BRGL          .EQ  $0F9B
SPBRG            .EQ  $0F9B
SPBRG1           .EQ  $0F9B
SPBRGL           .EQ  $0F9B
SP1BRGH          .EQ  $0F9C
SPBRGH           .EQ  $0F9C
SPBRGH1          .EQ  $0F9C
RC1STA           .EQ  $0F9D
RCSTA            .EQ  $0F9D
RCSTA1           .EQ  $0F9D
TX1STA           .EQ  $0F9E
TXSTA            .EQ  $0F9E
TXSTA1           .EQ  $0F9E
BAUD1CON         .EQ  $0F9F
BAUDCON          .EQ  $0F9F
BAUDCON1         .EQ  $0F9F
BAUDCTL          .EQ  $0F9F
BAUDCTL1         .EQ  $0F9F
PWM4DCL          .EQ  $0FA0
PWM4DCH          .EQ  $0FA1
PWM4CON          .EQ  $0FA2
PWM3DCL          .EQ  $0FA3
PWM3DCH          .EQ  $0FA4
PWM3CON          .EQ  $0FA5
CCPR2            .EQ  $0FA6
CCPR2L           .EQ  $0FA6
CCPR2H           .EQ  $0FA7
CCP2CON          .EQ  $0FA8
CCP2CAP          .EQ  $0FA9
CCPR1            .EQ  $0FAA
CCPR1L           .EQ  $0FAA
CCPR1H           .EQ  $0FAB
CCP1CON          .EQ  $0FAC
CCP1CAP          .EQ  $0FAD
CCPTMRS          .EQ  $0FAE
T6TMR            .EQ  $0FAF
TMR6             .EQ  $0FAF
PR6              .EQ  $0FB0
T6PR             .EQ  $0FB0
T6CON            .EQ  $0FB1
T6HLT            .EQ  $0FB2
T6CLKCON         .EQ  $0FB3
T6RST            .EQ  $0FB4
T4TMR            .EQ  $0FB5
TMR4             .EQ  $0FB5
PR4              .EQ  $0FB6
T4PR             .EQ  $0FB6
T4CON            .EQ  $0FB7
T4HLT            .EQ  $0FB8
T4CLKCON         .EQ  $0FB9
T4RST            .EQ  $0FBA
T2TMR            .EQ  $0FBB
TMR2             .EQ  $0FBB
PR2              .EQ  $0FBC
T2PR             .EQ  $0FBC
T2CON            .EQ  $0FBD
T2HLT            .EQ  $0FBE
T2CLKCON         .EQ  $0FBF
T2RST            .EQ  $0FC0
TMR5L            .EQ  $0FC1
TMR5H            .EQ  $0FC2
T5CON            .EQ  $0FC3
PR5              .EQ  $0FC4
T5GCON           .EQ  $0FC4
T5GATE           .EQ  $0FC5
TMR5GATE         .EQ  $0FC5
T5CLK            .EQ  $0FC6
TMR5CLK          .EQ  $0FC6
TMR3L            .EQ  $0FC7
TMR3H            .EQ  $0FC8
T3CON            .EQ  $0FC9
PR3              .EQ  $0FCA
T3GCON           .EQ  $0FCA
T3GATE           .EQ  $0FCB
TMR3GATE         .EQ  $0FCB
T3CLK            .EQ  $0FCC
TMR3CLK          .EQ  $0FCC
TMR1L            .EQ  $0FCD
TMR1H            .EQ  $0FCE
T1CON            .EQ  $0FCF
PR1              .EQ  $0FD0
T1GCON           .EQ  $0FD0
T1GATE           .EQ  $0FD1
TMR1GATE         .EQ  $0FD1
T1CLK            .EQ  $0FD2
TMR1CLK          .EQ  $0FD2
TMR0             .EQ  $0FD3
TMR0L            .EQ  $0FD3
PR0              .EQ  $0FD4
TMR0H            .EQ  $0FD4
T0CON0           .EQ  $0FD5
T0CON1           .EQ  $0FD6
PCON0            .EQ  $0FD7
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

;----- PPSLOCK Bits -----------------------------------------------------
PPSLOCKED        .EQ  $0000


;----- INT0PPS Bits -----------------------------------------------------
INT0PPS0         .EQ  $0000
INT0PPS1         .EQ  $0001
INT0PPS2         .EQ  $0002
INT0PPS3         .EQ  $0003
INT0PPS4         .EQ  $0004


;----- INT1PPS Bits -----------------------------------------------------
INT1PPS0         .EQ  $0000
INT1PPS1         .EQ  $0001
INT1PPS2         .EQ  $0002
INT1PPS3         .EQ  $0003
INT1PPS4         .EQ  $0004


;----- INT2PPS Bits -----------------------------------------------------
INT2PPS0         .EQ  $0000
INT2PPS1         .EQ  $0001
INT2PPS2         .EQ  $0002
INT2PPS3         .EQ  $0003
INT2PPS4         .EQ  $0004


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


;----- T2INPPS Bits -----------------------------------------------------
T2INPPS0         .EQ  $0000
T2INPPS1         .EQ  $0001
T2INPPS2         .EQ  $0002
T2INPPS3         .EQ  $0003
T2INPPS4         .EQ  $0004


;----- T4INPPS Bits -----------------------------------------------------
T4INPPS0         .EQ  $0000
T4INPPS1         .EQ  $0001
T4INPPS2         .EQ  $0002
T4INPPS3         .EQ  $0003
T4INPPS4         .EQ  $0004


;----- T6INPPS Bits -----------------------------------------------------
T6INPPS0         .EQ  $0000
T6INPPS1         .EQ  $0001
T6INPPS2         .EQ  $0002
T6INPPS3         .EQ  $0003
T6INPPS4         .EQ  $0004


;----- ADACTPPS Bits -----------------------------------------------------
ADACTPPS0        .EQ  $0000
ADACTPPS1        .EQ  $0001
ADACTPPS2        .EQ  $0002
ADACTPPS3        .EQ  $0003
ADACTPPS4        .EQ  $0004


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
CWGINPPS0        .EQ  $0000
CWGINPPS1        .EQ  $0001
CWGINPPS2        .EQ  $0002
CWGINPPS3        .EQ  $0003
CWGINPPS4        .EQ  $0004


CWG1INPPS0       .EQ  $0000
CWG1INPPS1       .EQ  $0001
CWG1INPPS2       .EQ  $0002
CWG1INPPS3       .EQ  $0003
CWG1INPPS4       .EQ  $0004


;----- CWGINPPS Bits -----------------------------------------------------
CWGINPPS0        .EQ  $0000
CWGINPPS1        .EQ  $0001
CWGINPPS2        .EQ  $0002
CWGINPPS3        .EQ  $0003
CWGINPPS4        .EQ  $0004


CWG1INPPS0       .EQ  $0000
CWG1INPPS1       .EQ  $0001
CWG1INPPS2       .EQ  $0002
CWG1INPPS3       .EQ  $0003
CWG1INPPS4       .EQ  $0004


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


;----- SSP1CLKPPS Bits -----------------------------------------------------
SSPCLKPPS0       .EQ  $0000
SSPCLKPPS1       .EQ  $0001
SSPCLKPPS2       .EQ  $0002
SSPCLKPPS3       .EQ  $0003
SSPCLKPPS4       .EQ  $0004


SSP1CLKPPS0      .EQ  $0000
SSP1CLKPPS1      .EQ  $0001
SSP1CLKPPS2      .EQ  $0002
SSP1CLKPPS3      .EQ  $0003
SSP1CLKPPS4      .EQ  $0004


;----- SSPCLKPPS Bits -----------------------------------------------------
SSPCLKPPS0       .EQ  $0000
SSPCLKPPS1       .EQ  $0001
SSPCLKPPS2       .EQ  $0002
SSPCLKPPS3       .EQ  $0003
SSPCLKPPS4       .EQ  $0004


SSP1CLKPPS0      .EQ  $0000
SSP1CLKPPS1      .EQ  $0001
SSP1CLKPPS2      .EQ  $0002
SSP1CLKPPS3      .EQ  $0003
SSP1CLKPPS4      .EQ  $0004


;----- SSP1DATPPS Bits -----------------------------------------------------
SSPDATPPS0       .EQ  $0000
SSPDATPPS1       .EQ  $0001
SSPDATPPS2       .EQ  $0002
SSPDATPPS3       .EQ  $0003
SSPDATPPS4       .EQ  $0004


SSP1DATPPS0      .EQ  $0000
SSP1DATPPS1      .EQ  $0001
SSP1DATPPS2      .EQ  $0002
SSP1DATPPS3      .EQ  $0003
SSP1DATPPS4      .EQ  $0004


;----- SSPDATPPS Bits -----------------------------------------------------
SSPDATPPS0       .EQ  $0000
SSPDATPPS1       .EQ  $0001
SSPDATPPS2       .EQ  $0002
SSPDATPPS3       .EQ  $0003
SSPDATPPS4       .EQ  $0004


SSP1DATPPS0      .EQ  $0000
SSP1DATPPS1      .EQ  $0001
SSP1DATPPS2      .EQ  $0002
SSP1DATPPS3      .EQ  $0003
SSP1DATPPS4      .EQ  $0004


;----- SSP1SSPPS Bits -----------------------------------------------------
SSPSSPPS0        .EQ  $0000
SSPSSPPS1        .EQ  $0001
SSPSSPPS2        .EQ  $0002
SSPSSPPS3        .EQ  $0003
SSPSSPPS4        .EQ  $0004


SSP1SSPPS0       .EQ  $0000
SSP1SSPPS1       .EQ  $0001
SSP1SSPPS2       .EQ  $0002
SSP1SSPPS3       .EQ  $0003
SSP1SSPPS4       .EQ  $0004


;----- SSPSSPPS Bits -----------------------------------------------------
SSPSSPPS0        .EQ  $0000
SSPSSPPS1        .EQ  $0001
SSPSSPPS2        .EQ  $0002
SSPSSPPS3        .EQ  $0003
SSPSSPPS4        .EQ  $0004


SSP1SSPPS0       .EQ  $0000
SSP1SSPPS1       .EQ  $0001
SSP1SSPPS2       .EQ  $0002
SSP1SSPPS3       .EQ  $0003
SSP1SSPPS4       .EQ  $0004


;----- IPR0 Bits -----------------------------------------------------
INT0IP           .EQ  $0000
INT1IP           .EQ  $0001
INT2IP           .EQ  $0002
IOCIP            .EQ  $0004
TMR0IP           .EQ  $0005


;----- IPR1 Bits -----------------------------------------------------
ADIP             .EQ  $0000
ADTIP            .EQ  $0001
CSWIP            .EQ  $0006
OSCFIP           .EQ  $0007


;----- IPR2 Bits -----------------------------------------------------
C1IP             .EQ  $0000
C2IP             .EQ  $0001
ZCDIP            .EQ  $0006
HLVDIP           .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
SSPIP            .EQ  $0000
BCLIP            .EQ  $0001
TXIP             .EQ  $0004
RCIP             .EQ  $0005

SSP1IP           .EQ  $0000
BCL1IP           .EQ  $0001


;----- IPR4 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
TMR3IP           .EQ  $0002
TMR4IP           .EQ  $0003
TMR5IP           .EQ  $0004
TMR6IP           .EQ  $0005


;----- IPR5 Bits -----------------------------------------------------
TMR1GIP          .EQ  $0000
TMR3GIP          .EQ  $0001
TMR5GIP          .EQ  $0002


;----- IPR6 Bits -----------------------------------------------------
CCP1IP           .EQ  $0000
CCP2IP           .EQ  $0001


;----- IPR7 Bits -----------------------------------------------------
CWGIP            .EQ  $0000
NVMIP            .EQ  $0005
CRCIP            .EQ  $0006
SCANIP           .EQ  $0007

CWG1IP           .EQ  $0000


;----- PIE0 Bits -----------------------------------------------------
INT0IE           .EQ  $0000
INT1IE           .EQ  $0001
INT2IE           .EQ  $0002
IOCIE            .EQ  $0004
TMR0IE           .EQ  $0005


;----- PIE1 Bits -----------------------------------------------------
ADIE             .EQ  $0000
ADTIE            .EQ  $0001
CSWIE            .EQ  $0006
OSCFIE           .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
C1IE             .EQ  $0000
C2IE             .EQ  $0001
ZCDIE            .EQ  $0006
HLVDIE           .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
SSPIE            .EQ  $0000
BCLIE            .EQ  $0001
TXIE             .EQ  $0004
RCIE             .EQ  $0005

SSP1IE           .EQ  $0000
BCL1IE           .EQ  $0001


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


;----- PIE6 Bits -----------------------------------------------------
CCP1IE           .EQ  $0000
CCP2IE           .EQ  $0001


;----- PIE7 Bits -----------------------------------------------------
CWGIE            .EQ  $0000
NVMIE            .EQ  $0005
CRCIE            .EQ  $0006
SCANIE           .EQ  $0007

CWG1IE           .EQ  $0000


;----- PIR0 Bits -----------------------------------------------------
INT0IF           .EQ  $0000
INT1IF           .EQ  $0001
INT2IF           .EQ  $0002
IOCIF            .EQ  $0004
TMR0IF           .EQ  $0005


;----- PIR1 Bits -----------------------------------------------------
ADIF             .EQ  $0000
ADTIF            .EQ  $0001
CSWIF            .EQ  $0006
OSCFIF           .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
C1IF             .EQ  $0000
C2IF             .EQ  $0001
ZCDIF            .EQ  $0006
HLVDIF           .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
SSPIF            .EQ  $0000
BCLIF            .EQ  $0001
TXIF             .EQ  $0004
RCIF             .EQ  $0005

SSP1IF           .EQ  $0000
BCL1IF           .EQ  $0001


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


;----- PIR6 Bits -----------------------------------------------------
CCP1IF           .EQ  $0000
CCP2IF           .EQ  $0001


;----- PIR7 Bits -----------------------------------------------------
CWGIF            .EQ  $0000
NVMIF            .EQ  $0005
CRCIF            .EQ  $0006
SCANIF           .EQ  $0007

CWG1IF           .EQ  $0000


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


;----- CPUDOZE Bits -----------------------------------------------------
DOE              .EQ  $0004
ROI              .EQ  $0005
DOZEN            .EQ  $0006
IDLEN            .EQ  $0007

DOZE0            .EQ  $0000
DOZE1            .EQ  $0001
DOZE2            .EQ  $0002


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


;----- OSCSTAT1 Bits -----------------------------------------------------
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
TUN0             .EQ  $0000
TUN1             .EQ  $0001
TUN2             .EQ  $0002
TUN3             .EQ  $0003
TUN4             .EQ  $0004
TUN5             .EQ  $0005


;----- OSCFRQ Bits -----------------------------------------------------
FRQ0             .EQ  $0000
FRQ1             .EQ  $0001
FRQ2             .EQ  $0002
FRQ3             .EQ  $0003


;----- VREGCON Bits -----------------------------------------------------
VREGPM0          .EQ  $0000
VREGPM1          .EQ  $0001


;----- BORCON Bits -----------------------------------------------------
BORRDY           .EQ  $0000
SBOREN           .EQ  $0007


;----- PMD0 Bits -----------------------------------------------------
IOCMD            .EQ  $0000
CLKRMD           .EQ  $0001
NVMMD            .EQ  $0002
SCANMD           .EQ  $0003
CRCMD            .EQ  $0004
HLVDMD           .EQ  $0005
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


;----- PMD2 Bits -----------------------------------------------------
ZCDMD            .EQ  $0000
CMP1MD           .EQ  $0001
CMP2MD           .EQ  $0002
ADCMD            .EQ  $0005
DACMD            .EQ  $0006


;----- PMD3 Bits -----------------------------------------------------
CCP1MD           .EQ  $0000
CCP2MD           .EQ  $0001
PWM3MD           .EQ  $0002
PWM4MD           .EQ  $0003


;----- PMD4 Bits -----------------------------------------------------
CWGMD            .EQ  $0000
MSSP1MD          .EQ  $0004
UART1MD          .EQ  $0006

CWG1MD           .EQ  $0000


;----- PMD5 Bits -----------------------------------------------------
DSMMD            .EQ  $0000


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


;----- RA3PPS Bits -----------------------------------------------------
RA3PPS0          .EQ  $0000
RA3PPS1          .EQ  $0001
RA3PPS2          .EQ  $0002
RA3PPS3          .EQ  $0003
RA3PPS4          .EQ  $0004


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


;----- RA6PPS Bits -----------------------------------------------------
RA6PPS0          .EQ  $0000
RA6PPS1          .EQ  $0001
RA6PPS2          .EQ  $0002
RA6PPS3          .EQ  $0003
RA6PPS4          .EQ  $0004


;----- RA7PPS Bits -----------------------------------------------------
RA7PPS0          .EQ  $0000
RA7PPS1          .EQ  $0001
RA7PPS2          .EQ  $0002
RA7PPS3          .EQ  $0003
RA7PPS4          .EQ  $0004


;----- RB0PPS Bits -----------------------------------------------------
RB0PPS0          .EQ  $0000
RB0PPS1          .EQ  $0001
RB0PPS2          .EQ  $0002
RB0PPS3          .EQ  $0003
RB0PPS4          .EQ  $0004


;----- RB1PPS Bits -----------------------------------------------------
RB1PPS0          .EQ  $0000
RB1PPS1          .EQ  $0001
RB1PPS2          .EQ  $0002
RB1PPS3          .EQ  $0003
RB1PPS4          .EQ  $0004


;----- RB2PPS Bits -----------------------------------------------------
RB2PPS0          .EQ  $0000
RB2PPS1          .EQ  $0001
RB2PPS2          .EQ  $0002
RB2PPS3          .EQ  $0003
RB2PPS4          .EQ  $0004


;----- RB3PPS Bits -----------------------------------------------------
RB3PPS0          .EQ  $0000
RB3PPS1          .EQ  $0001
RB3PPS2          .EQ  $0002
RB3PPS3          .EQ  $0003
RB3PPS4          .EQ  $0004


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


;----- IOCAF Bits -----------------------------------------------------
IOCAF0           .EQ  $0000
IOCAF1           .EQ  $0001
IOCAF2           .EQ  $0002
IOCAF3           .EQ  $0003
IOCAF4           .EQ  $0004
IOCAF5           .EQ  $0005
IOCAF6           .EQ  $0006
IOCAF7           .EQ  $0007


;----- IOCAN Bits -----------------------------------------------------
IOCAN0           .EQ  $0000
IOCAN1           .EQ  $0001
IOCAN2           .EQ  $0002
IOCAN3           .EQ  $0003
IOCAN4           .EQ  $0004
IOCAN5           .EQ  $0005
IOCAN6           .EQ  $0006
IOCAN7           .EQ  $0007


;----- IOCAP Bits -----------------------------------------------------
IOCAP0           .EQ  $0000
IOCAP1           .EQ  $0001
IOCAP2           .EQ  $0002
IOCAP3           .EQ  $0003
IOCAP4           .EQ  $0004
IOCAP5           .EQ  $0005
IOCAP6           .EQ  $0006
IOCAP7           .EQ  $0007


;----- INLVLA Bits -----------------------------------------------------
INLVLA0          .EQ  $0000
INLVLA1          .EQ  $0001
INLVLA2          .EQ  $0002
INLVLA3          .EQ  $0003
INLVLA4          .EQ  $0004
INLVLA5          .EQ  $0005
INLVLA6          .EQ  $0006
INLVLA7          .EQ  $0007


;----- SLRCONA Bits -----------------------------------------------------
SLRA0            .EQ  $0000
SLRA1            .EQ  $0001
SLRA2            .EQ  $0002
SLRA3            .EQ  $0003
SLRA4            .EQ  $0004
SLRA5            .EQ  $0005
SLRA6            .EQ  $0006
SLRA7            .EQ  $0007


;----- ODCONA Bits -----------------------------------------------------
ODCA0            .EQ  $0000
ODCA1            .EQ  $0001
ODCA2            .EQ  $0002
ODCA3            .EQ  $0003
ODCA4            .EQ  $0004
ODCA5            .EQ  $0005
ODCA6            .EQ  $0006
ODCA7            .EQ  $0007


;----- WPUA Bits -----------------------------------------------------
WPUA0            .EQ  $0000
WPUA1            .EQ  $0001
WPUA2            .EQ  $0002
WPUA3            .EQ  $0003
WPUA4            .EQ  $0004
WPUA5            .EQ  $0005
WPUA6            .EQ  $0006
WPUA7            .EQ  $0007


;----- ANSELA Bits -----------------------------------------------------
ANSELA0          .EQ  $0000
ANSELA1          .EQ  $0001
ANSELA2          .EQ  $0002
ANSELA3          .EQ  $0003
ANSELA4          .EQ  $0004
ANSELA5          .EQ  $0005
ANSELA6          .EQ  $0006
ANSELA7          .EQ  $0007


;----- IOCBF Bits -----------------------------------------------------
IOCBF0           .EQ  $0000
IOCBF1           .EQ  $0001
IOCBF2           .EQ  $0002
IOCBF3           .EQ  $0003
IOCBF4           .EQ  $0004
IOCBF5           .EQ  $0005
IOCBF6           .EQ  $0006
IOCBF7           .EQ  $0007


;----- IOCBN Bits -----------------------------------------------------
IOCBN0           .EQ  $0000
IOCBN1           .EQ  $0001
IOCBN2           .EQ  $0002
IOCBN3           .EQ  $0003
IOCBN4           .EQ  $0004
IOCBN5           .EQ  $0005
IOCBN6           .EQ  $0006
IOCBN7           .EQ  $0007


;----- IOCBP Bits -----------------------------------------------------
IOCBP0           .EQ  $0000
IOCBP1           .EQ  $0001
IOCBP2           .EQ  $0002
IOCBP3           .EQ  $0003
IOCBP4           .EQ  $0004
IOCBP5           .EQ  $0005
IOCBP6           .EQ  $0006
IOCBP7           .EQ  $0007


;----- INLVLB Bits -----------------------------------------------------
INLVLB0          .EQ  $0000
INLVLB1          .EQ  $0001
INLVLB2          .EQ  $0002
INLVLB3          .EQ  $0003
INLVLB4          .EQ  $0004
INLVLB5          .EQ  $0005
INLVLB6          .EQ  $0006
INLVLB7          .EQ  $0007


;----- SLRCONB Bits -----------------------------------------------------
SLRB0            .EQ  $0000
SLRB1            .EQ  $0001
SLRB2            .EQ  $0002
SLRB3            .EQ  $0003
SLRB4            .EQ  $0004
SLRB5            .EQ  $0005
SLRB6            .EQ  $0006
SLRB7            .EQ  $0007


;----- ODCONB Bits -----------------------------------------------------
ODCB0            .EQ  $0000
ODCB1            .EQ  $0001
ODCB2            .EQ  $0002
ODCB3            .EQ  $0003
ODCB4            .EQ  $0004
ODCB5            .EQ  $0005
ODCB6            .EQ  $0006
ODCB7            .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- ANSELB Bits -----------------------------------------------------
ANSELB0          .EQ  $0000
ANSELB1          .EQ  $0001
ANSELB2          .EQ  $0002
ANSELB3          .EQ  $0003
ANSELB4          .EQ  $0004
ANSELB5          .EQ  $0005
ANSELB6          .EQ  $0006
ANSELB7          .EQ  $0007


;----- IOCCF Bits -----------------------------------------------------
IOCCF0           .EQ  $0000
IOCCF1           .EQ  $0001
IOCCF2           .EQ  $0002
IOCCF3           .EQ  $0003
IOCCF4           .EQ  $0004
IOCCF5           .EQ  $0005
IOCCF6           .EQ  $0006
IOCCF7           .EQ  $0007


;----- IOCCN Bits -----------------------------------------------------
IOCCN0           .EQ  $0000
IOCCN1           .EQ  $0001
IOCCN2           .EQ  $0002
IOCCN3           .EQ  $0003
IOCCN4           .EQ  $0004
IOCCN5           .EQ  $0005
IOCCN6           .EQ  $0006
IOCCN7           .EQ  $0007


;----- IOCCP Bits -----------------------------------------------------
IOCCP0           .EQ  $0000
IOCCP1           .EQ  $0001
IOCCP2           .EQ  $0002
IOCCP3           .EQ  $0003
IOCCP4           .EQ  $0004
IOCCP5           .EQ  $0005
IOCCP6           .EQ  $0006
IOCCP7           .EQ  $0007


;----- INLVLC Bits -----------------------------------------------------
INLVLC0          .EQ  $0000
INLVLC1          .EQ  $0001
INLVLC2          .EQ  $0002
INLVLC3          .EQ  $0003
INLVLC4          .EQ  $0004
INLVLC5          .EQ  $0005
INLVLC6          .EQ  $0006
INLVLC7          .EQ  $0007


;----- SLRCONC Bits -----------------------------------------------------
SLRC0            .EQ  $0000
SLRC1            .EQ  $0001
SLRC2            .EQ  $0002
SLRC3            .EQ  $0003
SLRC4            .EQ  $0004
SLRC5            .EQ  $0005
SLRC6            .EQ  $0006
SLRC7            .EQ  $0007


;----- ODCONC Bits -----------------------------------------------------
ODCC0            .EQ  $0000
ODCC1            .EQ  $0001
ODCC2            .EQ  $0002
ODCC3            .EQ  $0003
ODCC4            .EQ  $0004
ODCC5            .EQ  $0005
ODCC6            .EQ  $0006
ODCC7            .EQ  $0007


;----- WPUC Bits -----------------------------------------------------
WPUC0            .EQ  $0000
WPUC1            .EQ  $0001
WPUC2            .EQ  $0002
WPUC3            .EQ  $0003
WPUC4            .EQ  $0004
WPUC5            .EQ  $0005
WPUC6            .EQ  $0006
WPUC7            .EQ  $0007


;----- ANSELC Bits -----------------------------------------------------
ANSELC0          .EQ  $0000
ANSELC1          .EQ  $0001
ANSELC2          .EQ  $0002
ANSELC3          .EQ  $0003
ANSELC4          .EQ  $0004
ANSELC5          .EQ  $0005
ANSELC6          .EQ  $0006
ANSELC7          .EQ  $0007


;----- IOCEF Bits -----------------------------------------------------
IOCEF3           .EQ  $0003


;----- IOCEN Bits -----------------------------------------------------
IOCEN3           .EQ  $0003


;----- IOCEP Bits -----------------------------------------------------
IOCEP3           .EQ  $0003


;----- INLVLE Bits -----------------------------------------------------
INLVLE3          .EQ  $0003


;----- WPUE Bits -----------------------------------------------------
WPUE3            .EQ  $0003


;----- HLVDCON0 Bits -----------------------------------------------------
INTL             .EQ  $0000
INTH             .EQ  $0001
RDY              .EQ  $0004
OUT_HLVDCON0     .EQ  $0005
EN               .EQ  $0007

HLVDINTL         .EQ  $0000
HLVDINTH         .EQ  $0001
HLVDRDY          .EQ  $0004
HLVDOUT          .EQ  $0005
HLVDEN           .EQ  $0007


;----- HLVDCON1 Bits -----------------------------------------------------
SEL0             .EQ  $0000
SEL1             .EQ  $0001
SEL2             .EQ  $0002
SEL3             .EQ  $0003

HLVDSEL0         .EQ  $0000
HLVDSEL1         .EQ  $0001
HLVDSEL2         .EQ  $0002
HLVDSEL3         .EQ  $0003


;----- FVRCON Bits -----------------------------------------------------
TSRNG            .EQ  $0004
TSEN             .EQ  $0005
FVRRDY           .EQ  $0006
FVREN            .EQ  $0007

ADFVR0           .EQ  $0000
ADFVR1           .EQ  $0001
CDAFVR0          .EQ  $0002
CDAFVR1          .EQ  $0003


;----- ZCDCON Bits -----------------------------------------------------
ZCDINTN          .EQ  $0000
ZCDINTP          .EQ  $0001
ZCDPOL           .EQ  $0004
ZCDOUT           .EQ  $0005
ZCDSEN           .EQ  $0007


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


;----- CM2CON0 Bits -----------------------------------------------------
SYNC_CM2CON0     .EQ  $0000
HYS              .EQ  $0001
POL              .EQ  $0004
OUT_CM2CON0      .EQ  $0006
EN               .EQ  $0007

C2SYNC           .EQ  $0000
C2HYS            .EQ  $0001
C2POL            .EQ  $0004
C2OUT            .EQ  $0006
C2EN             .EQ  $0007


;----- CM2CON1 Bits -----------------------------------------------------
INTN             .EQ  $0000
INTP             .EQ  $0001

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


;----- CM1CON0 Bits -----------------------------------------------------
SYNC_CM1CON0     .EQ  $0000
HYS              .EQ  $0001
POL              .EQ  $0004
OUT_CM1CON0      .EQ  $0006
EN               .EQ  $0007

C1SYNC           .EQ  $0000
C1HYS            .EQ  $0001
C1POL            .EQ  $0004
C1OUT            .EQ  $0006
C1EN             .EQ  $0007


;----- CM1CON1 Bits -----------------------------------------------------
INTN             .EQ  $0000
INTP             .EQ  $0001

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


;----- CMOUT Bits -----------------------------------------------------
MC1OUT           .EQ  $0000
MC2OUT           .EQ  $0001


;----- CLKRCON Bits -----------------------------------------------------
EN               .EQ  $0007

CLKRDIV0         .EQ  $0000
CLKRDIV1         .EQ  $0001
CLKRDIV2         .EQ  $0002
CLKRDC0          .EQ  $0003
CLKRDC1          .EQ  $0004
CLKREN           .EQ  $0007

DIV0             .EQ  $0000
DIV1             .EQ  $0001
DIV2             .EQ  $0002
DC0_CLKRCON      .EQ  $0003
DC1_CLKRCON      .EQ  $0004


;----- CLKRCLK Bits -----------------------------------------------------
CLKRCLK0         .EQ  $0000
CLKRCLK1         .EQ  $0001
CLKRCLK2         .EQ  $0002

CLK0             .EQ  $0000
CLK1             .EQ  $0001
CLK2             .EQ  $0002


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


;----- SCANLADRU Bits -----------------------------------------------------
LADR16           .EQ  $0000
LADR17           .EQ  $0001
LADR18           .EQ  $0002
LADR19           .EQ  $0003
LADR20           .EQ  $0004
LADR21           .EQ  $0005


SCANLADR16       .EQ  $0000
SCANLADR17       .EQ  $0001
SCANLADR18       .EQ  $0002
SCANLADR19       .EQ  $0003
SCANLADR20       .EQ  $0004
SCANLADR21       .EQ  $0005


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


;----- SCANHADRU Bits -----------------------------------------------------
HADR16           .EQ  $0000
HADR17           .EQ  $0001
HADR18           .EQ  $0002
HADR19           .EQ  $0003
HADR20           .EQ  $0004
HADR21           .EQ  $0005


SCANHADR16       .EQ  $0000
SCANHADR17       .EQ  $0001
SCANHADR18       .EQ  $0002
SCANHADR19       .EQ  $0003
SCANHADR20       .EQ  $0004
SCANHADR21       .EQ  $0005


;----- SCANCON0 Bits -----------------------------------------------------
INTM             .EQ  $0003
INVALID          .EQ  $0004
BUSY             .EQ  $0005
GO_SCANCON0      .EQ  $0006
EN               .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001

SCANINTM         .EQ  $0003
SCANINVALID      .EQ  $0004
SCANBUSY         .EQ  $0005
SCANGO           .EQ  $0006
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


;----- MDCON0 Bits -----------------------------------------------------
BIT              .EQ  $0000
OPOL             .EQ  $0004
OUT_MDCON0       .EQ  $0005
EN               .EQ  $0007

MDBIT            .EQ  $0000
MDOPOL           .EQ  $0004
MDOUT            .EQ  $0005
MDEN             .EQ  $0007


;----- MDCON1 Bits -----------------------------------------------------
CLSYNC           .EQ  $0000
CLPOL            .EQ  $0001
CHSYNC           .EQ  $0004
CHPOL            .EQ  $0005

MDCLSYNC         .EQ  $0000
MDCLPOL          .EQ  $0001
MDCHSYNC         .EQ  $0004
MDCHPOL          .EQ  $0005


;----- MDSRC Bits -----------------------------------------------------
SRCS0            .EQ  $0000
SRCS1            .EQ  $0001
SRCS2            .EQ  $0002
SRCS3            .EQ  $0003


MDSRCS0          .EQ  $0000
MDSRCS1          .EQ  $0001
MDSRCS2          .EQ  $0002
MDSRCS3          .EQ  $0003


;----- MDCARL Bits -----------------------------------------------------
CLS0             .EQ  $0000
CLS1             .EQ  $0001
CLS2             .EQ  $0002


MDCLS0           .EQ  $0000
MDCLS1           .EQ  $0001
MDCLS2           .EQ  $0002


;----- MDCARH Bits -----------------------------------------------------
CHS0             .EQ  $0000
CHS1             .EQ  $0001
CHS2             .EQ  $0002


MDCHS0           .EQ  $0000
MDCHS1           .EQ  $0001
MDCHS2           .EQ  $0002


;----- ADACT Bits -----------------------------------------------------
ADACT0           .EQ  $0000
ADACT1           .EQ  $0001
ADACT2           .EQ  $0002
ADACT3           .EQ  $0003
ADACT4           .EQ  $0004


;----- ADCLK Bits -----------------------------------------------------
ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ADCS3            .EQ  $0003
ADCS4            .EQ  $0004
ADCS5            .EQ  $0005


;----- ADREF Bits -----------------------------------------------------
ADNREF           .EQ  $0004

ADPREF0          .EQ  $0000
ADPREF1          .EQ  $0001


;----- ADCON1 Bits -----------------------------------------------------
ADDSEN           .EQ  $0000
ADGPOL           .EQ  $0005
ADIPEN           .EQ  $0006
ADPPOL           .EQ  $0007

NVCFG0           .EQ  $0000
NVCFG1           .EQ  $0001
PVCFG0           .EQ  $0002
PVCFG1           .EQ  $0003


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
ADSOI            .EQ  $0003

ADTMD0           .EQ  $0000
ADTMD1           .EQ  $0001
ADTMD2           .EQ  $0002
ADCALC0          .EQ  $0004
ADCALC1          .EQ  $0005
ADCALC2          .EQ  $0006


;----- ADACQ Bits -----------------------------------------------------
ADACQ0           .EQ  $0000
ADACQ1           .EQ  $0001
ADACQ2           .EQ  $0002
ADACQ3           .EQ  $0003
ADACQ4           .EQ  $0004
ADACQ5           .EQ  $0005
ADACQ6           .EQ  $0006
ADACQ7           .EQ  $0007


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


;----- ADPCH Bits -----------------------------------------------------
ADPCH0           .EQ  $0000
ADPCH1           .EQ  $0001
ADPCH2           .EQ  $0002
ADPCH3           .EQ  $0003
ADPCH4           .EQ  $0004
ADPCH5           .EQ  $0005


;----- ADCON0 Bits -----------------------------------------------------
ADGO             .EQ  $0000
ADFM             .EQ  $0002
ADCS             .EQ  $0004
ADCONT           .EQ  $0006
ADON             .EQ  $0007

GO_ADCON0        .EQ  $0000
ADFM0            .EQ  $0002

DONE             .EQ  $0000

GO_NOT_DONE      .EQ  $0000


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


;----- ADRESL Bits -----------------------------------------------------
ADRES0           .EQ  $0000
ADRES1           .EQ  $0001
ADRES2           .EQ  $0002
ADRES3           .EQ  $0003
ADRES4           .EQ  $0004
ADRES5           .EQ  $0005
ADRES6           .EQ  $0006
ADRES7           .EQ  $0007


;----- ADRESH Bits -----------------------------------------------------
ADRES8           .EQ  $0000
ADRES9           .EQ  $0001
ADRES10          .EQ  $0002
ADRES11          .EQ  $0003
ADRES12          .EQ  $0004
ADRES13          .EQ  $0005
ADRES14          .EQ  $0006
ADRES15          .EQ  $0007


;----- ADSTAT Bits -----------------------------------------------------
ADMATH           .EQ  $0004
ADLTHR           .EQ  $0005
ADUTHR           .EQ  $0006
ADAOV            .EQ  $0007

ADSTAT0          .EQ  $0000
ADSTAT1          .EQ  $0001
ADSTAT2          .EQ  $0002


;----- ADRPT Bits -----------------------------------------------------
ADRPT0           .EQ  $0000
ADRPT1           .EQ  $0001
ADRPT2           .EQ  $0002
ADRPT3           .EQ  $0003
ADRPT4           .EQ  $0004
ADRPT5           .EQ  $0005
ADRPT6           .EQ  $0006
ADRPT7           .EQ  $0007


;----- ADCNT Bits -----------------------------------------------------
ADCNT0           .EQ  $0000
ADCNT1           .EQ  $0001
ADCNT2           .EQ  $0002
ADCNT3           .EQ  $0003
ADCNT4           .EQ  $0004
ADCNT5           .EQ  $0005
ADCNT6           .EQ  $0006
ADCNT7           .EQ  $0007


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


;----- NVMADR Bits -----------------------------------------------------
ADR0             .EQ  $0000
ADR1             .EQ  $0001
ADR2             .EQ  $0002
ADR3             .EQ  $0003
ADR4             .EQ  $0004
ADR5             .EQ  $0005
ADR6             .EQ  $0006
ADR7             .EQ  $0007

NVMADR0          .EQ  $0000
NVMADR1          .EQ  $0001
NVMADR2          .EQ  $0002
NVMADR3          .EQ  $0003
NVMADR4          .EQ  $0004
NVMADR5          .EQ  $0005
NVMADR6          .EQ  $0006
NVMADR7          .EQ  $0007


;----- NVMADRL Bits -----------------------------------------------------
ADR0             .EQ  $0000
ADR1             .EQ  $0001
ADR2             .EQ  $0002
ADR3             .EQ  $0003
ADR4             .EQ  $0004
ADR5             .EQ  $0005
ADR6             .EQ  $0006
ADR7             .EQ  $0007

NVMADR0          .EQ  $0000
NVMADR1          .EQ  $0001
NVMADR2          .EQ  $0002
NVMADR3          .EQ  $0003
NVMADR4          .EQ  $0004
NVMADR5          .EQ  $0005
NVMADR6          .EQ  $0006
NVMADR7          .EQ  $0007


;----- NVMDAT Bits -----------------------------------------------------
NVMDAT0          .EQ  $0000
NVMDAT1          .EQ  $0001
NVMDAT2          .EQ  $0002
NVMDAT3          .EQ  $0003
NVMDAT4          .EQ  $0004
NVMDAT5          .EQ  $0005
NVMDAT6          .EQ  $0006
NVMDAT7          .EQ  $0007


;----- NVMCON1 Bits -----------------------------------------------------
RD               .EQ  $0000
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004

NVMREG0          .EQ  $0006
NVMREG1          .EQ  $0007


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


;----- PWM4DCL Bits -----------------------------------------------------
DC0_PWM4DCL      .EQ  $0006
DC1_PWM4DCL      .EQ  $0007

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
POL              .EQ  $0004
OUT_PWM4CON      .EQ  $0005
EN               .EQ  $0007

PWM4POL          .EQ  $0004
PWM4OUT          .EQ  $0005
PWM4EN           .EQ  $0007


;----- PWM3DCL Bits -----------------------------------------------------
DC0_PWM3DCL      .EQ  $0006
DC1_PWM3DCL      .EQ  $0007

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
POL              .EQ  $0004
OUT_PWM3CON      .EQ  $0005
EN               .EQ  $0007

PWM3POL          .EQ  $0004
PWM3OUT          .EQ  $0005
PWM3EN           .EQ  $0007


;----- CCP2CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP2CON      .EQ  $0005
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


CCP2CTS0         .EQ  $0000
CCP2CTS1         .EQ  $0001


;----- CCP1CON Bits -----------------------------------------------------
FMT              .EQ  $0004
OUT_CCP1CON      .EQ  $0005
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


CCP1CTS0         .EQ  $0000
CCP1CTS1         .EQ  $0001


;----- CCPTMRS Bits -----------------------------------------------------
C1TSEL0          .EQ  $0000
C1TSEL1          .EQ  $0001
C2TSEL0          .EQ  $0002
C2TSEL1          .EQ  $0003
P3TSEL0          .EQ  $0004
P3TSEL1          .EQ  $0005
P4TSEL0          .EQ  $0006
P4TSEL1          .EQ  $0007


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


T6RSEL0          .EQ  $0000
T6RSEL1          .EQ  $0001
T6RSEL2          .EQ  $0002
T6RSEL3          .EQ  $0003


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


T4RSEL0          .EQ  $0000
T4RSEL1          .EQ  $0001
T4RSEL2          .EQ  $0002
T4RSEL3          .EQ  $0003


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


T2RSEL0          .EQ  $0000
T2RSEL1          .EQ  $0001
T2RSEL2          .EQ  $0002
T2RSEL3          .EQ  $0003


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

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001
T5GSS2           .EQ  $0002
T5GSS3           .EQ  $0003


;----- TMR5GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003

T5GSS0           .EQ  $0000
T5GSS1           .EQ  $0001
T5GSS2           .EQ  $0002
T5GSS3           .EQ  $0003


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

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GSS2           .EQ  $0002
T3GSS3           .EQ  $0003


;----- TMR3GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003

T3GSS0           .EQ  $0000
T3GSS1           .EQ  $0001
T3GSS2           .EQ  $0002
T3GSS3           .EQ  $0003


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

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GSS2           .EQ  $0002
T1GSS3           .EQ  $0003


;----- TMR1GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003

T1GSS0           .EQ  $0000
T1GSS1           .EQ  $0001
T1GSS2           .EQ  $0002
T1GSS3           .EQ  $0003


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



;----- PCON0 Bits -----------------------------------------------------
NOT_BOR          .EQ  $0000
NOT_POR          .EQ  $0001
NOT_RI           .EQ  $0002
NOT_RMCLR        .EQ  $0003
NOT_RWDT         .EQ  $0004
NOT_WDTWV        .EQ  $0005
STKUNF           .EQ  $0006
STKOVF           .EQ  $0007

BOR              .EQ  $0000
POR              .EQ  $0001
RI               .EQ  $0002
RMCLR            .EQ  $0003
RWDT             .EQ  $0004
WDTWV            .EQ  $0005


;----- STATUS Bits -----------------------------------------------------
C                .EQ  $0000
DC               .EQ  $0001
Z                .EQ  $0002
OV               .EQ  $0003
N                .EQ  $0004
NOT_PD           .EQ  $0005
NOT_TO           .EQ  $0006

PD               .EQ  $0005
TO               .EQ  $0006


;----- INTCON Bits -----------------------------------------------------
INT0EDG          .EQ  $0000
INT1EDG          .EQ  $0001
INT2EDG          .EQ  $0002
IPEN             .EQ  $0005
PEIE_GIEL        .EQ  $0006
GIE_GIEH         .EQ  $0007

PEIE             .EQ  $0006
GIE              .EQ  $0007

GIEL             .EQ  $0006
GIEH             .EQ  $0007


;----- STKPTR Bits -----------------------------------------------------
STKPTR0          .EQ  $0000
STKPTR1          .EQ  $0001
STKPTR2          .EQ  $0002
STKPTR3          .EQ  $0003
STKPTR4          .EQ  $0004
STKPTR5          .EQ  $0005

SP0              .EQ  $0000
SP1              .EQ  $0001
SP2              .EQ  $0002
SP3              .EQ  $0003
SP4              .EQ  $0004
SP5              .EQ  $0005



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
;   :
;     FEXTOSC = LP         LP (crystal oscillator) optimized for 32.768 kHz; PFM set to low power
;     FEXTOSC = XT         XT (crystal oscillator) above 100 kHz, below 8 MHz; PFM set to medium power
;     FEXTOSC = HS         HS (crystal oscillator) above 8 MHz; PFM set to high power
;     FEXTOSC = RESERVED   Reserved (DO NOT USE)
;     FEXTOSC = OFF        Oscillator not enabled
;     FEXTOSC = ECL        EC (external clock) below 100 kHz; PFM set to low power
;     FEXTOSC = ECM        EC (external clock) for 500 kHz to 8 MHz; PFM set to medium power
;     FEXTOSC = ECH        EC (external clock) above 8 MHz; PFM set to high power
;
;   :
;     RSTOSC = HFINTOSC_64MHZHFINTOSC with HFFRQ = 64 MHz and CDIV = 1:1
;     RSTOSC = RESERVED_1  Reserved
;     RSTOSC = EXTOSC_4PLL EXTOSC with 4x PLL, with EXTOSC operating per FEXTOSC bits
;     RSTOSC = RESERVED_2  Reserved
;     RSTOSC = SOSC        Secondary Oscillator
;     RSTOSC = LFINTOSC    Low-Frequency Oscillator
;     RSTOSC = HFINTOSC_1MHZHFINTOSC with HFFRQ = 4 MHz and CDIV = 4:1
;     RSTOSC = EXTOSC      EXTOSC operating per FEXTOSC bits (device manufacturing default)
;
;   :
;     CLKOUTEN = ON        CLKOUT function is enabled
;     CLKOUTEN = OFF       CLKOUT function is disabled
;
;   :
;     CSWEN = OFF          The NOSC and NDIV bits cannot be changed by user software
;     CSWEN = ON           Writing to NOSC and NDIV is allowed
;
;   Fail-Safe Clock Monitor Enable bit:
;     FCMEN = OFF          Fail-Safe Clock Monitor disabled
;     FCMEN = ON           Fail-Safe Clock Monitor enabled
;
;   :
;     MCLRE = INTMCLR      If LVP = 0, MCLR pin function is port defined function; If LVP =1, RE3 pin fuction is MCLR
;     MCLRE = EXTMCLR      If LVP = 0, MCLR pin is MCLR; If LVP = 1, RE3 pin function is MCLR
;
;   Power-up Timer Enable bit:
;     PWRTE = ON           Power up timer enabled
;     PWRTE = OFF          Power up timer disabled
;
;   :
;     LPBOREN = ON         ULPBOR enabled
;     LPBOREN = OFF        ULPBOR disabled
;
;   Brown-out Reset Enable bits:
;     BOREN = OFF          Brown-out Reset disabled
;     BOREN = ON           Brown-out Reset enabled according to SBOREN
;     BOREN = NOSLP        Brown-out Reset enabled while running, disabled in Sleep; SBOREN is ignored
;     BOREN = SBORDIS      Brown-out Reset enabled , SBOREN bit is ignored
;
;   Brown Out Reset Voltage selection bits:
;     BORV = VBOR_285      Brown-out Reset Voltage (VBOR) set to 2.85V
;     BORV = VBOR_270      Brown-out Reset Voltage (VBOR) set to 2.70V
;     BORV = VBOR_245      Brown-out Reset Voltage (VBOR) set to 2.45V
;     BORV = VBOR_2P45     Brown-out Reset Voltage (VBOR) set to 2.45V
;
;   ZCD Disable bit:
;     ZCD = ON             ZCD always enabled
;     ZCD = OFF            ZCD disabled. ZCD can be enabled by setting the ZCDSEN bit of ZCDCON
;
;   PPSLOCK bit One-Way Set Enable bit:
;     PPS1WAY = OFF        PPSLOCK bit can be set and cleared repeatedly (subject to the unlock sequence)
;     PPS1WAY = ON         PPSLOCK bit can be cleared and set only once; PPS registers remain locked after one clear/set cycle
;
;   Stack Full/Underflow Reset Enable bit:
;     STVREN = OFF         Stack full/underflow will not cause Reset
;     STVREN = ON          Stack full/underflow will cause Reset
;
;   Debugger Enable bit:
;     DEBUG = ON           Background debugger enabled
;     DEBUG = OFF          Background debugger disabled
;
;   Extended Instruction Set Enable bit:
;     XINST = ON           Extended Instruction Set and Indexed Addressing Mode enabled
;     XINST = OFF          Extended Instruction Set and Indexed Addressing Mode disabled
;
;   :
;     WDTCPS = WDTCPS_0    Divider ratio 1:32
;     WDTCPS = WDTCPS_1    Divider ratio 1:64
;     WDTCPS = WDTCPS_2    Divider ratio 1:128
;     WDTCPS = WDTCPS_3    Divider ratio 1:256
;     WDTCPS = WDTCPS_4    Divider ratio 1:512
;     WDTCPS = WDTCPS_5    Divider ratio 1:1024
;     WDTCPS = WDTCPS_6    Divider ratio 1:2048
;     WDTCPS = WDTCPS_7    Divider ratio 1:4096
;     WDTCPS = WDTCPS_8    Divider ratio 1:8192
;     WDTCPS = WDTCPS_9    Divider ratio 1:16384
;     WDTCPS = WDTCPS_10   Divider ratio 1:32768
;     WDTCPS = WDTCPS_11   Divider ratio 1:65536
;     WDTCPS = WDTCPS_12   Divider ratio 1:131072
;     WDTCPS = WDTCPS_13   Divider ratio 1:262144
;     WDTCPS = WDTCPS_14   Divider ratio 1:524299
;     WDTCPS = WDTCPS_15   Divider ratio 1:1048576
;     WDTCPS = WDTCPS_16   Divider ratio 1:2097152
;     WDTCPS = WDTCPS_17   Divider ratio 1:4194304
;     WDTCPS = WDTCPS_18   Divider ratio 1:8388608
;     WDTCPS = WDTCPS_19   Divider ratio 1:32
;     WDTCPS = WDTCPS_20   Divider ratio 1:32
;     WDTCPS = WDTCPS_21   Divider ratio 1:32
;     WDTCPS = WDTCPS_22   Divider ratio 1:32
;     WDTCPS = WDTCPS_23   Divider ratio 1:32
;     WDTCPS = WDTCPS_24   Divider ratio 1:32
;     WDTCPS = WDTCPS_25   Divider ratio 1:32
;     WDTCPS = WDTCPS_26   Divider ratio 1:32
;     WDTCPS = WDTCPS_27   Divider ratio 1:32
;     WDTCPS = WDTCPS_28   Divider ratio 1:32
;     WDTCPS = WDTCPS_29   Divider ratio 1:32
;     WDTCPS = WDTCPS_30   Divider ratio 1:32
;     WDTCPS = WDTCPS_31   Divider ratio 1:65536  software control of WDTPS
;
;   WDT operating mode:
;     WDTE = OFF           WDT Disabled
;     WDTE = SWDTEN        WDT enabled/disabled by SWDTEN bit
;     WDTE = NSLEEP        WDT enabled while sleep=0, suspended when sleep=1
;     WDTE = ON            WDT enabled regardless of sleep
;
;   WDT Window Select bits:
;     WDTCWS = WDTCWS_0    window delay = 87.5  no software control; keyed access required
;     WDTCWS = WDTCWS_1    window delay = 75 percent of time; no software control; keyed access required
;     WDTCWS = WDTCWS_2    window delay = 62.5 percent of time; no software control; keyed access required
;     WDTCWS = WDTCWS_3    window delay = 50 percent of time; no software control; keyed access required
;     WDTCWS = WDTCWS_4    window delay = 37.5 percent of time; no software control; keyed access required
;     WDTCWS = WDTCWS_5    window delay = 25 percent of time; no software control; keyed access required
;     WDTCWS = WDTCWS_6    window always open (100%); no software control; keyed access required
;     WDTCWS = WDTCWS_7    window always open (100%); software control; keyed access not required
;
;   WDT input clock selector:
;     WDTCCS = LFINTOSC    WDT reference clock is the 31.0 kHz LFINTOSC
;     WDTCCS = HFINTOSC    WDT reference clock is the 31.2kHz HFINTOSC output
;     WDTCCS = SC          Software Control
;
;   Write Protection Block 0:
;     WRT0 = ON            Block 0 (000800-001FFFh) write-protected
;     WRT0 = OFF           Block 0 (000800-001FFFh) not write-protected
;
;   Write Protection Block 1:
;     WRT1 = ON            Block 1 (002000-003FFFh) write-protected
;     WRT1 = OFF           Block 1 (002000-003FFFh) not write-protected
;
;   Write Protection Block 2:
;     WRT2 = ON            Block 2 (004000-005FFFh) write-protected
;     WRT2 = OFF           Block 2 (004000-005FFFh) not write-protected
;
;   Write Protection Block 3:
;     WRT3 = ON            Block 3 (006000-007FFFh) write-protected
;     WRT3 = OFF           Block 3 (006000-007FFFh) not write-protected
;
;   Configuration Register Write Protection bit:
;     WRTC = ON            Configuration registers (300000-30000Bh) write-protected
;     WRTC = OFF           Configuration registers (300000-30000Bh) not write-protected
;
;   Boot Block Write Protection bit:
;     WRTB = ON            Boot Block (000000-0007FFh) write-protected
;     WRTB = OFF           Boot Block (000000-0007FFh) not write-protected
;
;   Data EEPROM Write Protection bit:
;     WRTD = ON            Data EEPROM write-protected
;     WRTD = OFF           Data EEPROM not write-protected
;
;   :
;     SCANE = OFF          Scanner module is NOT available for use, SCANMD bit is ignored
;     SCANE = ON           Scanner module is available for use, SCANMD bit can control the module
;
;   Low Voltage Programming Enable bit:
;     LVP = OFF            HV on MCLR/VPP must be used for programming
;     LVP = ON             Low voltage programming enabled. MCLR/VPP pin function is MCLR. MCLRE configuration bit is ignored
;
;   UserNVM Program Memory Code Protection bit:
;     CP = ON              UserNVM code protection enabled
;     CP = OFF             UserNVM code protection disabled
;
;   DataNVM Memory Code Protection bit:
;     CPD = ON             DataNVM code protection enabled
;     CPD = OFF            DataNVM code protection disabled
;
;   Table Read Protection Block 0:
;     EBTR0 = ON           Block 0 (000800-003FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000800-003FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 1:
;     EBTR1 = ON           Block 1 (004000-007FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (004000-007FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 2:
;     EBTR2 = ON           Block 2 (004000-005FFFh) protected from table reads executed in other blocks
;     EBTR2 = OFF          Block 2 (004000-005FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 3:
;     EBTR3 = ON           Block 3 (006000-007FFFh) protected from table reads executed in other blocks
;     EBTR3 = OFF          Block 3 (006000-007FFFh) not protected from table reads executed in other blocks
;
;   Boot Block Table Read Protection bit:
;     EBTRB = ON           Boot Block (000000-0007FFh) protected from table reads executed in other blocks
;     EBTRB = OFF          Boot Block (000000-0007FFh) not protected from table reads executed in other blocks
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
;   CONFIG4H        300007h
;   CONFIG5L        300008h
;   CONFIG5H        300009h
;   CONFIG6L        30000Ah
;   CONFIG6H        30000Bh
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
_CONFIG4H       .EQ  $300007
_CONFIG5L       .EQ  $300008
_CONFIG5H       .EQ  $300009
_CONFIG6L       .EQ  $30000A
_CONFIG6H       .EQ  $30000B

;----- CONFIG1L Options --------------------------------------------------
_FEXTOSC_LP_1L       .EQ  $F8  LP (crystal oscillator) optimized for 32.768 kHz; PFM set to low power
_FEXTOSC_XT_1L       .EQ  $F9  XT (crystal oscillator) above 100 kHz, below 8 MHz; PFM set to medium power
_FEXTOSC_HS_1L       .EQ  $FA  HS (crystal oscillator) above 8 MHz; PFM set to high power
_FEXTOSC_RESERVED_1L .EQ  $FB  Reserved (DO NOT USE)
_FEXTOSC_OFF_1L      .EQ  $FC  Oscillator not enabled
_FEXTOSC_ECL_1L      .EQ  $FD  EC (external clock) below 100 kHz; PFM set to low power
_FEXTOSC_ECM_1L      .EQ  $FE  EC (external clock) for 500 kHz to 8 MHz; PFM set to medium power
_FEXTOSC_ECH_1L      .EQ  $FF  EC (external clock) above 8 MHz; PFM set to high power

_RSTOSC_HFINTOSC_64MHZ_1L .EQ  $8F  HFINTOSC with HFFRQ = 64 MHz and CDIV = 1:1
_RSTOSC_RESERVED_1_1L .EQ  $9F  Reserved
_RSTOSC_EXTOSC_4PLL_1L .EQ  $AF  EXTOSC with 4x PLL, with EXTOSC operating per FEXTOSC bits
_RSTOSC_RESERVED_2_1L .EQ  $BF  Reserved
_RSTOSC_SOSC_1L      .EQ  $CF  Secondary Oscillator
_RSTOSC_LFINTOSC_1L  .EQ  $DF  Low-Frequency Oscillator
_RSTOSC_HFINTOSC_1MHZ_1L .EQ  $EF  HFINTOSC with HFFRQ = 4 MHz and CDIV = 4:1
_RSTOSC_EXTOSC_1L    .EQ  $FF  EXTOSC operating per FEXTOSC bits (device manufacturing default)

;----- CONFIG1H Options --------------------------------------------------
_CLKOUTEN_ON_1H      .EQ  $FE  CLKOUT function is enabled
_CLKOUTEN_OFF_1H     .EQ  $FF  CLKOUT function is disabled

_CSWEN_OFF_1H        .EQ  $F7  The NOSC and NDIV bits cannot be changed by user software
_CSWEN_ON_1H         .EQ  $FF  Writing to NOSC and NDIV is allowed

_FCMEN_OFF_1H        .EQ  $DF  Fail-Safe Clock Monitor disabled
_FCMEN_ON_1H         .EQ  $FF  Fail-Safe Clock Monitor enabled

;----- CONFIG2L Options --------------------------------------------------
_MCLRE_INTMCLR_2L    .EQ  $FE  If LVP = 0, MCLR pin function is port defined function; If LVP =1, RE3 pin fuction is MCLR
_MCLRE_EXTMCLR_2L    .EQ  $FF  If LVP = 0, MCLR pin is MCLR; If LVP = 1, RE3 pin function is MCLR

_PWRTE_ON_2L         .EQ  $FD  Power up timer enabled
_PWRTE_OFF_2L        .EQ  $FF  Power up timer disabled

_LPBOREN_ON_2L       .EQ  $DF  ULPBOR enabled
_LPBOREN_OFF_2L      .EQ  $FF  ULPBOR disabled

_BOREN_OFF_2L        .EQ  $3F  Brown-out Reset disabled
_BOREN_ON_2L         .EQ  $7F  Brown-out Reset enabled according to SBOREN
_BOREN_NOSLP_2L      .EQ  $BF  Brown-out Reset enabled while running, disabled in Sleep; SBOREN is ignored
_BOREN_SBORDIS_2L    .EQ  $FF  Brown-out Reset enabled , SBOREN bit is ignored

;----- CONFIG2H Options --------------------------------------------------
_BORV_VBOR_285_2H    .EQ  $FC  Brown-out Reset Voltage (VBOR) set to 2.85V
_BORV_VBOR_270_2H    .EQ  $FD  Brown-out Reset Voltage (VBOR) set to 2.70V
_BORV_VBOR_245_2H    .EQ  $FE  Brown-out Reset Voltage (VBOR) set to 2.45V
_BORV_VBOR_2P45_2H   .EQ  $FF  Brown-out Reset Voltage (VBOR) set to 2.45V

_ZCD_ON_2H           .EQ  $FB  ZCD always enabled
_ZCD_OFF_2H          .EQ  $FF  ZCD disabled. ZCD can be enabled by setting the ZCDSEN bit of ZCDCON

_PPS1WAY_OFF_2H      .EQ  $F7  PPSLOCK bit can be set and cleared repeatedly (subject to the unlock sequence)
_PPS1WAY_ON_2H       .EQ  $FF  PPSLOCK bit can be cleared and set only once; PPS registers remain locked after one clear/set cycle

_STVREN_OFF_2H       .EQ  $EF  Stack full/underflow will not cause Reset
_STVREN_ON_2H        .EQ  $FF  Stack full/underflow will cause Reset

_DEBUG_ON_2H         .EQ  $DF  Background debugger enabled
_DEBUG_OFF_2H        .EQ  $FF  Background debugger disabled

_XINST_ON_2H         .EQ  $7F  Extended Instruction Set and Indexed Addressing Mode enabled
_XINST_OFF_2H        .EQ  $FF  Extended Instruction Set and Indexed Addressing Mode disabled

;----- CONFIG3L Options --------------------------------------------------
_WDTCPS_WDTCPS_0_3L  .EQ  $E0  Divider ratio 1:32
_WDTCPS_WDTCPS_1_3L  .EQ  $E1  Divider ratio 1:64
_WDTCPS_WDTCPS_2_3L  .EQ  $E2  Divider ratio 1:128
_WDTCPS_WDTCPS_3_3L  .EQ  $E3  Divider ratio 1:256
_WDTCPS_WDTCPS_4_3L  .EQ  $E4  Divider ratio 1:512
_WDTCPS_WDTCPS_5_3L  .EQ  $E5  Divider ratio 1:1024
_WDTCPS_WDTCPS_6_3L  .EQ  $E6  Divider ratio 1:2048
_WDTCPS_WDTCPS_7_3L  .EQ  $E7  Divider ratio 1:4096
_WDTCPS_WDTCPS_8_3L  .EQ  $E8  Divider ratio 1:8192
_WDTCPS_WDTCPS_9_3L  .EQ  $E9  Divider ratio 1:16384
_WDTCPS_WDTCPS_10_3L .EQ  $EA  Divider ratio 1:32768
_WDTCPS_WDTCPS_11_3L .EQ  $EB  Divider ratio 1:65536
_WDTCPS_WDTCPS_12_3L .EQ  $EC  Divider ratio 1:131072
_WDTCPS_WDTCPS_13_3L .EQ  $ED  Divider ratio 1:262144
_WDTCPS_WDTCPS_14_3L .EQ  $EE  Divider ratio 1:524299
_WDTCPS_WDTCPS_15_3L .EQ  $EF  Divider ratio 1:1048576
_WDTCPS_WDTCPS_16_3L .EQ  $F0  Divider ratio 1:2097152
_WDTCPS_WDTCPS_17_3L .EQ  $F1  Divider ratio 1:4194304
_WDTCPS_WDTCPS_18_3L .EQ  $F2  Divider ratio 1:8388608
_WDTCPS_WDTCPS_19_3L .EQ  $F3  Divider ratio 1:32
_WDTCPS_WDTCPS_20_3L .EQ  $F4  Divider ratio 1:32
_WDTCPS_WDTCPS_21_3L .EQ  $F5  Divider ratio 1:32
_WDTCPS_WDTCPS_22_3L .EQ  $F6  Divider ratio 1:32
_WDTCPS_WDTCPS_23_3L .EQ  $F7  Divider ratio 1:32
_WDTCPS_WDTCPS_24_3L .EQ  $F8  Divider ratio 1:32
_WDTCPS_WDTCPS_25_3L .EQ  $F9  Divider ratio 1:32
_WDTCPS_WDTCPS_26_3L .EQ  $FA  Divider ratio 1:32
_WDTCPS_WDTCPS_27_3L .EQ  $FB  Divider ratio 1:32
_WDTCPS_WDTCPS_28_3L .EQ  $FC  Divider ratio 1:32
_WDTCPS_WDTCPS_29_3L .EQ  $FD  Divider ratio 1:32
_WDTCPS_WDTCPS_30_3L .EQ  $FE  Divider ratio 1:32
_WDTCPS_WDTCPS_31_3L .EQ  $FF  Divider ratio 1:65536  software control of WDTPS

_WDTE_OFF_3L         .EQ  $9F  WDT Disabled
_WDTE_SWDTEN_3L      .EQ  $BF  WDT enabled/disabled by SWDTEN bit
_WDTE_NSLEEP_3L      .EQ  $DF  WDT enabled while sleep=0, suspended when sleep=1
_WDTE_ON_3L          .EQ  $FF  WDT enabled regardless of sleep

;----- CONFIG3H Options --------------------------------------------------
_WDTCWS_WDTCWS_0_3H  .EQ  $F8  window delay = 87.5  no software control; keyed access required
_WDTCWS_WDTCWS_1_3H  .EQ  $F9  window delay = 75 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_2_3H  .EQ  $FA  window delay = 62.5 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_3_3H  .EQ  $FB  window delay = 50 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_4_3H  .EQ  $FC  window delay = 37.5 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_5_3H  .EQ  $FD  window delay = 25 percent of time; no software control; keyed access required
_WDTCWS_WDTCWS_6_3H  .EQ  $FE  window always open (100%); no software control; keyed access required
_WDTCWS_WDTCWS_7_3H  .EQ  $FF  window always open (100%); software control; keyed access not required

_WDTCCS_LFINTOSC_3H  .EQ  $C7  WDT reference clock is the 31.0 kHz LFINTOSC
_WDTCCS_HFINTOSC_3H  .EQ  $CF  WDT reference clock is the 31.2kHz HFINTOSC output
_WDTCCS_SC_3H        .EQ  $FF  Software Control

;----- CONFIG4L Options --------------------------------------------------
_WRT0_ON_4L          .EQ  $FE  Block 0 (000800-001FFFh) write-protected
_WRT0_OFF_4L         .EQ  $FF  Block 0 (000800-001FFFh) not write-protected

_WRT1_ON_4L          .EQ  $FD  Block 1 (002000-003FFFh) write-protected
_WRT1_OFF_4L         .EQ  $FF  Block 1 (002000-003FFFh) not write-protected

_WRT2_ON_4L          .EQ  $FB  Block 2 (004000-005FFFh) write-protected
_WRT2_OFF_4L         .EQ  $FF  Block 2 (004000-005FFFh) not write-protected

_WRT3_ON_4L          .EQ  $F7  Block 3 (006000-007FFFh) write-protected
_WRT3_OFF_4L         .EQ  $FF  Block 3 (006000-007FFFh) not write-protected

;----- CONFIG4H Options --------------------------------------------------
_WRTC_ON_4H          .EQ  $FE  Configuration registers (300000-30000Bh) write-protected
_WRTC_OFF_4H         .EQ  $FF  Configuration registers (300000-30000Bh) not write-protected

_WRTB_ON_4H          .EQ  $FD  Boot Block (000000-0007FFh) write-protected
_WRTB_OFF_4H         .EQ  $FF  Boot Block (000000-0007FFh) not write-protected

_WRTD_ON_4H          .EQ  $FB  Data EEPROM write-protected
_WRTD_OFF_4H         .EQ  $FF  Data EEPROM not write-protected

_SCANE_OFF_4H        .EQ  $EF  Scanner module is NOT available for use, SCANMD bit is ignored
_SCANE_ON_4H         .EQ  $FF  Scanner module is available for use, SCANMD bit can control the module

_LVP_OFF_4H          .EQ  $DF  HV on MCLR/VPP must be used for programming
_LVP_ON_4H           .EQ  $FF  Low voltage programming enabled. MCLR/VPP pin function is MCLR. MCLRE configuration bit is ignored

;----- CONFIG5L Options --------------------------------------------------
_CP_ON_5L            .EQ  $FE  UserNVM code protection enabled
_CP_OFF_5L           .EQ  $FF  UserNVM code protection disabled

_CPD_ON_5L           .EQ  $FD  DataNVM code protection enabled
_CPD_OFF_5L          .EQ  $FF  DataNVM code protection disabled

;----- CONFIG5H Options --------------------------------------------------
;----- CONFIG6L Options --------------------------------------------------
_EBTR0_ON_6L         .EQ  $FE  Block 0 (000800-003FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_6L        .EQ  $FF  Block 0 (000800-003FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_6L         .EQ  $FD  Block 1 (004000-007FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_6L        .EQ  $FF  Block 1 (004000-007FFFh) not protected from table reads executed in other blocks

_EBTR2_ON_6L         .EQ  $FB  Block 2 (004000-005FFFh) protected from table reads executed in other blocks
_EBTR2_OFF_6L        .EQ  $FF  Block 2 (004000-005FFFh) not protected from table reads executed in other blocks

_EBTR3_ON_6L         .EQ  $F7  Block 3 (006000-007FFFh) protected from table reads executed in other blocks
_EBTR3_OFF_6L        .EQ  $FF  Block 3 (006000-007FFFh) not protected from table reads executed in other blocks

;----- CONFIG6H Options --------------------------------------------------
_EBTRB_ON_6H         .EQ  $FD  Boot Block (000000-0007FFh) protected from table reads executed in other blocks
_EBTRB_OFF_6H        .EQ  $FF  Boot Block (000000-0007FFh) not protected from table reads executed in other blocks


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
_IDLOC8          .EQ  $200008
_IDLOC9          .EQ  $200009
_IDLOC10         .EQ  $20000A
_IDLOC11         .EQ  $20000B
_IDLOC12         .EQ  $20000C
_IDLOC13         .EQ  $20000D
_IDLOC14         .EQ  $20000E
_IDLOC15         .EQ  $20000F
