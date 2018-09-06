;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18LF65K40 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18LF65K40 microcontroller.  These names
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
PPSLOCK          .EQ  $0DEF
INT0PPS          .EQ  $0DF0
INT1PPS          .EQ  $0DF1
INT2PPS          .EQ  $0DF2
INT3PPS          .EQ  $0DF3
T0CKIPPS         .EQ  $0DF4
T1CKIPPS         .EQ  $0DF5
T1GPPS           .EQ  $0DF6
T3CKIPPS         .EQ  $0DF7
T3GPPS           .EQ  $0DF8
T5CKIPPS         .EQ  $0DF9
T5GPPS           .EQ  $0DFA
T7CKIPPS         .EQ  $0DFB
T7GPPS           .EQ  $0DFC
T2INPPS          .EQ  $0DFD
T4INPPS          .EQ  $0DFE
T6INPPS          .EQ  $0DFF
T8INPPS          .EQ  $0E00
ADACTPPS         .EQ  $0E01
CCP1PPS          .EQ  $0E02
CCP2PPS          .EQ  $0E03
CCP3PPS          .EQ  $0E04
CCP4PPS          .EQ  $0E05
CCP5PPS          .EQ  $0E06
SMT1WINPPS       .EQ  $0E07
SMT1SIGPPS       .EQ  $0E08
SMT2WINPPS       .EQ  $0E09
SMT2SIGPPS       .EQ  $0E0A
CWG1PPS          .EQ  $0E0B
CWGINPPS         .EQ  $0E0B
MDCARLPPS        .EQ  $0E0C
MDCARHPPS        .EQ  $0E0D
MDSRCPPS         .EQ  $0E0E
RX1PPS           .EQ  $0E0F
TX1PPS           .EQ  $0E10
RX2PPS           .EQ  $0E11
TX2PPS           .EQ  $0E12
RX3PPS           .EQ  $0E13
TX3PPS           .EQ  $0E14
RX4PPS           .EQ  $0E15
TX4PPS           .EQ  $0E16
RX5PPS           .EQ  $0E17
TX5PPS           .EQ  $0E18
SSP1CLKPPS       .EQ  $0E19
SSP1DATPPS       .EQ  $0E1A
SSP1SSPPS        .EQ  $0E1B
SSP2CLKPPS       .EQ  $0E1C
SSP2DATPPS       .EQ  $0E1D
SSP2SSPPS        .EQ  $0E1E
IPR0             .EQ  $0E1F
IPR1             .EQ  $0E20
IPR2             .EQ  $0E21
IPR3             .EQ  $0E22
IPR4             .EQ  $0E23
IPR5             .EQ  $0E24
IPR6             .EQ  $0E25
IPR7             .EQ  $0E26
IPR8             .EQ  $0E27
IPR9             .EQ  $0E28
PIE0             .EQ  $0E29
PIE1             .EQ  $0E2A
PIE2             .EQ  $0E2B
PIE3             .EQ  $0E2C
PIE4             .EQ  $0E2D
PIE5             .EQ  $0E2E
PIE6             .EQ  $0E2F
PIE7             .EQ  $0E30
PIE8             .EQ  $0E31
PIE9             .EQ  $0E32
PIR0             .EQ  $0E33
PIR1             .EQ  $0E34
PIR2             .EQ  $0E35
PIR3             .EQ  $0E36
PIR4             .EQ  $0E37
PIR5             .EQ  $0E38
PIR6             .EQ  $0E39
PIR7             .EQ  $0E3A
PIR8             .EQ  $0E3B
PIR9             .EQ  $0E3C
WDTCON0          .EQ  $0E3D
WDTCON1          .EQ  $0E3E
WDTL             .EQ  $0E3F
WDTPS            .EQ  $0E3F
WDTPSL           .EQ  $0E3F
WDTH             .EQ  $0E40
WDTPSH           .EQ  $0E40
WDTPSU           .EQ  $0E41
WDTU             .EQ  $0E41
CPUDOZE          .EQ  $0E42
OSCCON1          .EQ  $0E43
OSCCON2          .EQ  $0E44
OSCCON3          .EQ  $0E45
OSCSTAT          .EQ  $0E46
OSCSTAT1         .EQ  $0E46
OSCEN            .EQ  $0E47
OSCTUNE          .EQ  $0E48
OSCFRQ           .EQ  $0E49
BORCON           .EQ  $0E4B
PMD0             .EQ  $0E4C
PMD1             .EQ  $0E4D
PMD2             .EQ  $0E4E
PMD3             .EQ  $0E4F
PMD4             .EQ  $0E50
PMD5             .EQ  $0E51
RA0PPS           .EQ  $0E52
RA1PPS           .EQ  $0E53
RA2PPS           .EQ  $0E54
RA3PPS           .EQ  $0E55
RA4PPS           .EQ  $0E56
RA5PPS           .EQ  $0E57
RA6PPS           .EQ  $0E58
RA7PPS           .EQ  $0E59
RB0PPS           .EQ  $0E5A
RB1PPS           .EQ  $0E5B
RB2PPS           .EQ  $0E5C
RB3PPS           .EQ  $0E5D
RB4PPS           .EQ  $0E5E
RB5PPS           .EQ  $0E5F
RB6PPS           .EQ  $0E60
RB7PPS           .EQ  $0E61
RC0PPS           .EQ  $0E62
RC1PPS           .EQ  $0E63
RC2PPS           .EQ  $0E64
RC3PPS           .EQ  $0E65
RC4PPS           .EQ  $0E66
RC5PPS           .EQ  $0E67
RC6PPS           .EQ  $0E68
RC7PPS           .EQ  $0E69
RD0PPS           .EQ  $0E6A
RD1PPS           .EQ  $0E6B
RD2PPS           .EQ  $0E6C
RD3PPS           .EQ  $0E6D
RD4PPS           .EQ  $0E6E
RD5PPS           .EQ  $0E6F
RD6PPS           .EQ  $0E70
RD7PPS           .EQ  $0E71
RE0PPS           .EQ  $0E72
RE1PPS           .EQ  $0E73
RE2PPS           .EQ  $0E74
RE3PPS           .EQ  $0E75
RE4PPS           .EQ  $0E76
RE5PPS           .EQ  $0E77
RE6PPS           .EQ  $0E78
RE7PPS           .EQ  $0E79
RF0PPS           .EQ  $0E7A
RF1PPS           .EQ  $0E7B
RF2PPS           .EQ  $0E7C
RF3PPS           .EQ  $0E7D
RF4PPS           .EQ  $0E7E
RF5PPS           .EQ  $0E7F
RF6PPS           .EQ  $0E80
RF7PPS           .EQ  $0E81
RG0PPS           .EQ  $0E82
RG1PPS           .EQ  $0E83
RG2PPS           .EQ  $0E84
RG3PPS           .EQ  $0E85
RG4PPS           .EQ  $0E86
RG6PPS           .EQ  $0E88
RG7PPS           .EQ  $0E89
RH0PPS           .EQ  $0E8A
RH1PPS           .EQ  $0E8B
RH2PPS           .EQ  $0E8C
RH3PPS           .EQ  $0E8D
INLVLA           .EQ  $0E8E
SLRCONA          .EQ  $0E8F
ODCONA           .EQ  $0E90
WPUA             .EQ  $0E91
ANSELA           .EQ  $0E92
IOCBF            .EQ  $0E93
IOCBN            .EQ  $0E94
IOCBP            .EQ  $0E95
INLVLB           .EQ  $0E96
SLRCONB          .EQ  $0E97
ODCONB           .EQ  $0E98
WPUB             .EQ  $0E99
ANSELB           .EQ  $0E9A
IOCCF            .EQ  $0E9B
IOCCN            .EQ  $0E9C
IOCCP            .EQ  $0E9D
INLVLC           .EQ  $0E9E
SLRCONC          .EQ  $0E9F
ODCONC           .EQ  $0EA0
WPUC             .EQ  $0EA1
INLVLD           .EQ  $0EA3
SLRCOND          .EQ  $0EA4
ODCOND           .EQ  $0EA5
WPUD             .EQ  $0EA6
ANSELD           .EQ  $0EA7
IOCEF            .EQ  $0EA8
IOCEN            .EQ  $0EA9
IOCEP            .EQ  $0EAA
INLVLE           .EQ  $0EAB
SLRCONE          .EQ  $0EAC
ODCONE           .EQ  $0EAD
WPUE             .EQ  $0EAE
ANSELE           .EQ  $0EAF
INLVLF           .EQ  $0EB0
SLRCONF          .EQ  $0EB1
ODCONF           .EQ  $0EB2
WPUF             .EQ  $0EB3
ANSELF           .EQ  $0EB4
IOCGF            .EQ  $0EB5
IOCGN            .EQ  $0EB6
IOCGP            .EQ  $0EB7
INLVLG           .EQ  $0EB8
SLRCONG          .EQ  $0EB9
ODCONG           .EQ  $0EBA
WPUG             .EQ  $0EBB
ANSELG           .EQ  $0EBC
INLVLH           .EQ  $0EBD
SLRCONH          .EQ  $0EBE
ODCONH           .EQ  $0EBF
WPUH             .EQ  $0EC0
HLVDCON0         .EQ  $0EC2
HLVDCON1         .EQ  $0EC3
FVRCON           .EQ  $0EC4
ZCDCON           .EQ  $0EC5
DAC1CON0         .EQ  $0EC6
DAC1CON1         .EQ  $0EC7
CM3CON0          .EQ  $0EC8
CM3CON1          .EQ  $0EC9
CM3NCH           .EQ  $0ECA
CM3PCH           .EQ  $0ECB
CM2CON0          .EQ  $0ECC
CM2CON1          .EQ  $0ECD
CM2NCH           .EQ  $0ECE
CM2PCH           .EQ  $0ECF
CM1CON0          .EQ  $0ED0
CM1CON1          .EQ  $0ED1
CM1NCH           .EQ  $0ED2
CM1PCH           .EQ  $0ED3
CMOUT            .EQ  $0ED4
SSP2BUF          .EQ  $0ED5
SSP2ADD          .EQ  $0ED6
SSP2MSK          .EQ  $0ED7
SSP2STAT         .EQ  $0ED8
SSP2CON1         .EQ  $0ED9
SSP2CON2         .EQ  $0EDA
SSP2CON3         .EQ  $0EDB
RC5REG           .EQ  $0EDC
RCREG5           .EQ  $0EDC
TX5REG           .EQ  $0EDD
TXREG5           .EQ  $0EDD
SP5BRG           .EQ  $0EDE
SP5BRGL          .EQ  $0EDE
SPBRG5           .EQ  $0EDE
SP5BRGH          .EQ  $0EDF
SPBRGH5          .EQ  $0EDF
RC5STA           .EQ  $0EE0
RCSTA5           .EQ  $0EE0
TX5STA           .EQ  $0EE1
TXSTA5           .EQ  $0EE1
BAUD5CON         .EQ  $0EE2
BAUDCON5         .EQ  $0EE2
BAUDCTL5         .EQ  $0EE2
RC4REG           .EQ  $0EE3
RCREG4           .EQ  $0EE3
TX4REG           .EQ  $0EE4
TXREG4           .EQ  $0EE4
SP4BRG           .EQ  $0EE5
SP4BRGL          .EQ  $0EE5
SPBRG4           .EQ  $0EE5
SP4BRGH          .EQ  $0EE6
SPBRGH4          .EQ  $0EE6
RC4STA           .EQ  $0EE7
RCSTA4           .EQ  $0EE7
TX4STA           .EQ  $0EE8
TXSTA4           .EQ  $0EE8
BAUD4CON         .EQ  $0EE9
BAUDCON4         .EQ  $0EE9
BAUDCTL4         .EQ  $0EE9
RC3REG           .EQ  $0EEA
RCREG3           .EQ  $0EEA
TX3REG           .EQ  $0EEB
TXREG3           .EQ  $0EEB
SP3BRG           .EQ  $0EEC
SP3BRGL          .EQ  $0EEC
SPBRG3           .EQ  $0EEC
SP3BRGH          .EQ  $0EED
SPBRGH3          .EQ  $0EED
RC3STA           .EQ  $0EEE
RCSTA3           .EQ  $0EEE
TX3STA           .EQ  $0EEF
TXSTA3           .EQ  $0EEF
BAUD3CON         .EQ  $0EF0
BAUDCON3         .EQ  $0EF0
BAUDCTL3         .EQ  $0EF0
RC2REG           .EQ  $0EF1
RCREG2           .EQ  $0EF1
TX2REG           .EQ  $0EF2
TXREG2           .EQ  $0EF2
SP2BRG           .EQ  $0EF3
SP2BRGL          .EQ  $0EF3
SPBRG2           .EQ  $0EF3
SP2BRGH          .EQ  $0EF4
SPBRGH2          .EQ  $0EF4
RC2STA           .EQ  $0EF5
RCSTA2           .EQ  $0EF5
TX2STA           .EQ  $0EF6
TXSTA2           .EQ  $0EF6
BAUD2CON         .EQ  $0EF7
BAUDCON2         .EQ  $0EF7
BAUDCTL2         .EQ  $0EF7
SMT2TMR          .EQ  $0EF8
SMT2TMRL         .EQ  $0EF8
SMT2TMRH         .EQ  $0EF9
SMT2TMRU         .EQ  $0EFA
SMT2CPR          .EQ  $0EFB
SMT2CPRL         .EQ  $0EFB
SMT2CPRH         .EQ  $0EFC
SMT2CPRU         .EQ  $0EFD
SMT2CPW          .EQ  $0EFE
SMT2CPWL         .EQ  $0EFE
SMT2CPWH         .EQ  $0EFF
SMT2CPWU         .EQ  $0F00
SMT2PR           .EQ  $0F01
SMT2PRL          .EQ  $0F01
SMT2PRH          .EQ  $0F02
SMT2PRU          .EQ  $0F03
SMT2CON0         .EQ  $0F04
SMT2CON1         .EQ  $0F05
SMT2STAT         .EQ  $0F06
SMT2CLK          .EQ  $0F07
SMT2SIG          .EQ  $0F08
SMT2WIN          .EQ  $0F09
SMT1TMR          .EQ  $0F0A
SMT1TMRL         .EQ  $0F0A
SMT1TMRH         .EQ  $0F0B
SMT1TMRU         .EQ  $0F0C
SMT1CPR          .EQ  $0F0D
SMT1CPRL         .EQ  $0F0D
SMT1CPRH         .EQ  $0F0E
SMT1CPRU         .EQ  $0F0F
SMT1CPW          .EQ  $0F10
SMT1CPWL         .EQ  $0F10
SMT1CPWH         .EQ  $0F11
SMT1CPWU         .EQ  $0F12
SMT1PR           .EQ  $0F13
SMT1PRL          .EQ  $0F13
SMT1PRH          .EQ  $0F14
SMT1PRU          .EQ  $0F15
SMT1CON0         .EQ  $0F16
SMT1CON1         .EQ  $0F17
SMT1STAT         .EQ  $0F18
SMT1CLK          .EQ  $0F19
SMT1SIG          .EQ  $0F1A
SMT1WIN          .EQ  $0F1B
CCPR5            .EQ  $0F1C
CCPR5L           .EQ  $0F1C
CCPR5H           .EQ  $0F1D
CCP5CON          .EQ  $0F1E
CCP5CAP          .EQ  $0F1F
CCPR4            .EQ  $0F20
CCPR4L           .EQ  $0F20
CCPR4H           .EQ  $0F21
CCP4CON          .EQ  $0F22
CCP4CAP          .EQ  $0F23
CCPR3            .EQ  $0F24
CCPR3L           .EQ  $0F24
CCPR3H           .EQ  $0F25
CCP3CON          .EQ  $0F26
CCP3CAP          .EQ  $0F27
T8TMR            .EQ  $0F28
TMR8             .EQ  $0F28
PR8              .EQ  $0F29
T8PR             .EQ  $0F29
T8CON            .EQ  $0F2A
T8HLT            .EQ  $0F2B
T8CLKCON         .EQ  $0F2C
T8RST            .EQ  $0F2D
TMR7L            .EQ  $0F2E
TMR7H            .EQ  $0F2F
T7CON            .EQ  $0F30
PR7              .EQ  $0F31
T7GCON           .EQ  $0F31
T7GATE           .EQ  $0F32
TMR7GATE         .EQ  $0F32
T7CLK            .EQ  $0F33
TMR7CLK          .EQ  $0F33
CLKRCON          .EQ  $0F34
CLKRCLK          .EQ  $0F35
CWG1CLKCON       .EQ  $0F36
CWG1ISM          .EQ  $0F37
CWG1DBR          .EQ  $0F38
CWG1DBF          .EQ  $0F39
CWG1CON0         .EQ  $0F3A
CWG1CON1         .EQ  $0F3B
CWG1AS0          .EQ  $0F3C
CWG1AS1          .EQ  $0F3D
CWG1STR          .EQ  $0F3E
CRCDATA          .EQ  $0F3F
CRCDATL          .EQ  $0F3F
CRCDATH          .EQ  $0F40
CRCACC           .EQ  $0F41
CRCACCL          .EQ  $0F41
CRCACCH          .EQ  $0F42
CRCSHFT          .EQ  $0F43
CRCSHIFTL        .EQ  $0F43
CRCSHIFTH        .EQ  $0F44
CRCXOR           .EQ  $0F45
CRCXORL          .EQ  $0F45
CRCXORH          .EQ  $0F46
CRCCON0          .EQ  $0F47
CRCCON1          .EQ  $0F48
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
NVMADR           .EQ  $0F74
NVMADRL          .EQ  $0F74
NVMADRH          .EQ  $0F75
NVMDAT           .EQ  $0F76
NVMCON1          .EQ  $0F77
NVMCON2          .EQ  $0F78
LATA             .EQ  $0F79
LATB             .EQ  $0F7A
LATC             .EQ  $0F7B
LATD             .EQ  $0F7C
LATE             .EQ  $0F7D
LATF             .EQ  $0F7E
LATG             .EQ  $0F7F
LATH             .EQ  $0F80
DDRA             .EQ  $0F81
TRISA            .EQ  $0F81
DDRB             .EQ  $0F82
TRISB            .EQ  $0F82
DDRC             .EQ  $0F83
TRISC            .EQ  $0F83
DDRD             .EQ  $0F84
TRISD            .EQ  $0F84
DDRE             .EQ  $0F85
TRISE            .EQ  $0F85
TRISF            .EQ  $0F86
TRISG            .EQ  $0F87
TRISH            .EQ  $0F88
PORTA            .EQ  $0F89
PORTB            .EQ  $0F8A
PORTC            .EQ  $0F8B
PORTD            .EQ  $0F8C
PORTE            .EQ  $0F8D
PORTF            .EQ  $0F8E
PORTG            .EQ  $0F8F
PORTH            .EQ  $0F90
SSP1BUF          .EQ  $0F91
SSP1ADD          .EQ  $0F92
SSP1MSK          .EQ  $0F93
SSP1STAT         .EQ  $0F94
SSP1CON1         .EQ  $0F95
SSP1CON2         .EQ  $0F96
SSP1CON3         .EQ  $0F97
RC1REG           .EQ  $0F98
RCREG1           .EQ  $0F98
TX1REG           .EQ  $0F99
TXREG1           .EQ  $0F99
SP1BRG           .EQ  $0F9A
SP1BRGL          .EQ  $0F9A
SPBRG1           .EQ  $0F9A
SP1BRGH          .EQ  $0F9B
SPBRGH1          .EQ  $0F9B
RC1STA           .EQ  $0F9C
RCSTA1           .EQ  $0F9C
TX1STA           .EQ  $0F9D
TXSTA1           .EQ  $0F9D
BAUD1CON         .EQ  $0F9E
BAUDCON1         .EQ  $0F9E
BAUDCTL1         .EQ  $0F9E
PWM7DCL          .EQ  $0F9F
PWM7DCH          .EQ  $0FA0
PWM7CON          .EQ  $0FA1
PWM6DCL          .EQ  $0FA2
PWM6DCH          .EQ  $0FA3
PWM6CON          .EQ  $0FA4
CCPR2            .EQ  $0FA5
CCPR2L           .EQ  $0FA5
CCPR2H           .EQ  $0FA6
CCP2CON          .EQ  $0FA7
CCP2CAP          .EQ  $0FA8
CCPR1            .EQ  $0FA9
CCPR1L           .EQ  $0FA9
CCPR1H           .EQ  $0FAA
CCP1CON          .EQ  $0FAB
CCP1CAP          .EQ  $0FAC
CCPTMRS0         .EQ  $0FAD
CCPTMRS1         .EQ  $0FAE
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
INT0PPS5         .EQ  $0005


;----- INT1PPS Bits -----------------------------------------------------
INT1PPS0         .EQ  $0000
INT1PPS1         .EQ  $0001
INT1PPS2         .EQ  $0002
INT1PPS3         .EQ  $0003
INT1PPS4         .EQ  $0004
INT1PPS5         .EQ  $0005


;----- INT2PPS Bits -----------------------------------------------------
INT2PPS0         .EQ  $0000
INT2PPS1         .EQ  $0001
INT2PPS2         .EQ  $0002
INT2PPS3         .EQ  $0003
INT2PPS4         .EQ  $0004
INT2PPS5         .EQ  $0005


;----- INT3PPS Bits -----------------------------------------------------
INT3PPS0         .EQ  $0000
INT3PPS1         .EQ  $0001
INT3PPS2         .EQ  $0002
INT3PPS3         .EQ  $0003
INT3PPS4         .EQ  $0004
INT3PPS5         .EQ  $0005


;----- T0CKIPPS Bits -----------------------------------------------------
T0CKIPPS0        .EQ  $0000
T0CKIPPS1        .EQ  $0001
T0CKIPPS2        .EQ  $0002
T0CKIPPS3        .EQ  $0003
T0CKIPPS4        .EQ  $0004
T0CKIPPS5        .EQ  $0005


;----- T1CKIPPS Bits -----------------------------------------------------
T1CKIPPS0        .EQ  $0000
T1CKIPPS1        .EQ  $0001
T1CKIPPS2        .EQ  $0002
T1CKIPPS3        .EQ  $0003
T1CKIPPS4        .EQ  $0004
T1CKIPPS5        .EQ  $0005


;----- T1GPPS Bits -----------------------------------------------------
T1GPPS0          .EQ  $0000
T1GPPS1          .EQ  $0001
T1GPPS2          .EQ  $0002
T1GPPS3          .EQ  $0003
T1GPPS4          .EQ  $0004
T1GPPS5          .EQ  $0005


;----- T3CKIPPS Bits -----------------------------------------------------
T3CKIPPS0        .EQ  $0000
T3CKIPPS1        .EQ  $0001
T3CKIPPS2        .EQ  $0002
T3CKIPPS3        .EQ  $0003
T3CKIPPS4        .EQ  $0004
T3CKIPPS5        .EQ  $0005


;----- T3GPPS Bits -----------------------------------------------------
T3GPPS0          .EQ  $0000
T3GPPS1          .EQ  $0001
T3GPPS2          .EQ  $0002
T3GPPS3          .EQ  $0003
T3GPPS4          .EQ  $0004
T3GPPS5          .EQ  $0005


;----- T5CKIPPS Bits -----------------------------------------------------
T5CKIPPS0        .EQ  $0000
T5CKIPPS1        .EQ  $0001
T5CKIPPS2        .EQ  $0002
T5CKIPPS3        .EQ  $0003
T5CKIPPS4        .EQ  $0004
T5CKIPPS5        .EQ  $0005


;----- T5GPPS Bits -----------------------------------------------------
T5GPPS0          .EQ  $0000
T5GPPS1          .EQ  $0001
T5GPPS2          .EQ  $0002
T5GPPS3          .EQ  $0003
T5GPPS4          .EQ  $0004
T5GPPS5          .EQ  $0005


;----- T7CKIPPS Bits -----------------------------------------------------
T7CKIPPS0        .EQ  $0000
T7CKIPPS1        .EQ  $0001
T7CKIPPS2        .EQ  $0002
T7CKIPPS3        .EQ  $0003
T7CKIPPS4        .EQ  $0004
T7CKIPPS5        .EQ  $0005


;----- T7GPPS Bits -----------------------------------------------------
T7GPPS0          .EQ  $0000
T7GPPS1          .EQ  $0001
T7GPPS2          .EQ  $0002
T7GPPS3          .EQ  $0003
T7GPPS4          .EQ  $0004
T7GPPS5          .EQ  $0005


;----- T2INPPS Bits -----------------------------------------------------
T2INPPS0         .EQ  $0000
T2INPPS1         .EQ  $0001
T2INPPS2         .EQ  $0002
T2INPPS3         .EQ  $0003
T2INPPS4         .EQ  $0004
T2INPPS5         .EQ  $0005


;----- T4INPPS Bits -----------------------------------------------------
T4INPPS0         .EQ  $0000
T4INPPS1         .EQ  $0001
T4INPPS2         .EQ  $0002
T4INPPS3         .EQ  $0003
T4INPPS4         .EQ  $0004
T4INPPS5         .EQ  $0005


;----- T6INPPS Bits -----------------------------------------------------
T6INPPS0         .EQ  $0000
T6INPPS1         .EQ  $0001
T6INPPS2         .EQ  $0002
T6INPPS3         .EQ  $0003
T6INPPS4         .EQ  $0004
T6INPPS5         .EQ  $0005


;----- T8INPPS Bits -----------------------------------------------------
T8INPPS0         .EQ  $0000
T8INPPS1         .EQ  $0001
T8INPPS2         .EQ  $0002
T8INPPS3         .EQ  $0003
T8INPPS4         .EQ  $0004
T8INPPS5         .EQ  $0005


;----- ADACTPPS Bits -----------------------------------------------------
ADACTPPS0        .EQ  $0000
ADACTPPS1        .EQ  $0001
ADACTPPS2        .EQ  $0002
ADACTPPS3        .EQ  $0003
ADACTPPS4        .EQ  $0004
ADACTPPS5        .EQ  $0005


;----- CCP1PPS Bits -----------------------------------------------------
CCP1PPS0         .EQ  $0000
CCP1PPS1         .EQ  $0001
CCP1PPS2         .EQ  $0002
CCP1PPS3         .EQ  $0003
CCP1PPS4         .EQ  $0004
CCP1PPS5         .EQ  $0005


;----- CCP2PPS Bits -----------------------------------------------------
CCP2PPS0         .EQ  $0000
CCP2PPS1         .EQ  $0001
CCP2PPS2         .EQ  $0002
CCP2PPS3         .EQ  $0003
CCP2PPS4         .EQ  $0004
CCP2PPS5         .EQ  $0005


;----- CCP3PPS Bits -----------------------------------------------------
CCP3PPS0         .EQ  $0000
CCP3PPS1         .EQ  $0001
CCP3PPS2         .EQ  $0002
CCP3PPS3         .EQ  $0003
CCP3PPS4         .EQ  $0004
CCP3PPS5         .EQ  $0005


;----- CCP4PPS Bits -----------------------------------------------------
CCP4PPS0         .EQ  $0000
CCP4PPS1         .EQ  $0001
CCP4PPS2         .EQ  $0002
CCP4PPS3         .EQ  $0003
CCP4PPS4         .EQ  $0004
CCP4PPS5         .EQ  $0005


;----- CCP5PPS Bits -----------------------------------------------------
CCP5PPS0         .EQ  $0000
CCP5PPS1         .EQ  $0001
CCP5PPS2         .EQ  $0002
CCP5PPS3         .EQ  $0003
CCP5PPS4         .EQ  $0004
CCP5PPS5         .EQ  $0005


;----- SMT1WINPPS Bits -----------------------------------------------------
SMT1WINPPS0      .EQ  $0000
SMT1WINPPS1      .EQ  $0001
SMT1WINPPS2      .EQ  $0002
SMT1WINPPS3      .EQ  $0003
SMT1WINPPS4      .EQ  $0004
SMT1WINPPS5      .EQ  $0005


;----- SMT1SIGPPS Bits -----------------------------------------------------
SMT1SIGPPS0      .EQ  $0000
SMT1SIGPPS1      .EQ  $0001
SMT1SIGPPS2      .EQ  $0002
SMT1SIGPPS3      .EQ  $0003
SMT1SIGPPS4      .EQ  $0004
SMT1SIGPPS5      .EQ  $0005


;----- SMT2WINPPS Bits -----------------------------------------------------
SMT2WINPPS0      .EQ  $0000
SMT2WINPPS1      .EQ  $0001
SMT2WINPPS2      .EQ  $0002
SMT2WINPPS3      .EQ  $0003
SMT2WINPPS4      .EQ  $0004
SMT2WINPPS5      .EQ  $0005


;----- SMT2SIGPPS Bits -----------------------------------------------------
SMT2SIGPPS0      .EQ  $0000
SMT2SIGPPS1      .EQ  $0001
SMT2SIGPPS2      .EQ  $0002
SMT2SIGPPS3      .EQ  $0003
SMT2SIGPPS4      .EQ  $0004
SMT2SIGPPS5      .EQ  $0005


;----- CWG1PPS Bits -----------------------------------------------------
CWGINPPS0        .EQ  $0000
CWGINPPS1        .EQ  $0001
CWGINPPS2        .EQ  $0002
CWGINPPS3        .EQ  $0003
CWGINPPS4        .EQ  $0004
CWGINPPS5        .EQ  $0005


CWG1INPPS0       .EQ  $0000
CWG1INPPS1       .EQ  $0001
CWG1INPPS2       .EQ  $0002
CWG1INPPS3       .EQ  $0003
CWG1INPPS4       .EQ  $0004
CWG1INPPS5       .EQ  $0005


;----- CWGINPPS Bits -----------------------------------------------------
CWGINPPS0        .EQ  $0000
CWGINPPS1        .EQ  $0001
CWGINPPS2        .EQ  $0002
CWGINPPS3        .EQ  $0003
CWGINPPS4        .EQ  $0004
CWGINPPS5        .EQ  $0005


CWG1INPPS0       .EQ  $0000
CWG1INPPS1       .EQ  $0001
CWG1INPPS2       .EQ  $0002
CWG1INPPS3       .EQ  $0003
CWG1INPPS4       .EQ  $0004
CWG1INPPS5       .EQ  $0005


;----- MDCARLPPS Bits -----------------------------------------------------
MDCARLPPS0       .EQ  $0000
MDCARLPPS1       .EQ  $0001
MDCARLPPS2       .EQ  $0002
MDCARLPPS3       .EQ  $0003
MDCARLPPS4       .EQ  $0004
MDCARLPPS5       .EQ  $0005


;----- MDCARHPPS Bits -----------------------------------------------------
MDCARHPPS0       .EQ  $0000
MDCARHPPS1       .EQ  $0001
MDCARHPPS2       .EQ  $0002
MDCARHPPS3       .EQ  $0003
MDCARHPPS4       .EQ  $0004
MDCARHPPS5       .EQ  $0005


;----- MDSRCPPS Bits -----------------------------------------------------
MDSRCPPS0        .EQ  $0000
MDSRCPPS1        .EQ  $0001
MDSRCPPS2        .EQ  $0002
MDSRCPPS3        .EQ  $0003
MDSRCPPS4        .EQ  $0004
MDSRCPPS5        .EQ  $0005


;----- RX1PPS Bits -----------------------------------------------------
RX1PPS0          .EQ  $0000
RX1PPS1          .EQ  $0001
RX1PPS2          .EQ  $0002
RX1PPS3          .EQ  $0003
RX1PPS4          .EQ  $0004
RX1PPS5          .EQ  $0005


;----- TX1PPS Bits -----------------------------------------------------
TX1PPS0          .EQ  $0000
TX1PPS1          .EQ  $0001
TX1PPS2          .EQ  $0002
TX1PPS3          .EQ  $0003
TX1PPS4          .EQ  $0004
TX1PPS5          .EQ  $0005


;----- RX2PPS Bits -----------------------------------------------------
RX2PPS0          .EQ  $0000
RX2PPS1          .EQ  $0001
RX2PPS2          .EQ  $0002
RX2PPS3          .EQ  $0003
RX2PPS4          .EQ  $0004
RX2PPS5          .EQ  $0005


;----- TX2PPS Bits -----------------------------------------------------
TX2PPS0          .EQ  $0000
TX2PPS1          .EQ  $0001
TX2PPS2          .EQ  $0002
TX2PPS3          .EQ  $0003
TX2PPS4          .EQ  $0004
TX2PPS5          .EQ  $0005


;----- RX3PPS Bits -----------------------------------------------------
RX3PPS0          .EQ  $0000
RX3PPS1          .EQ  $0001
RX3PPS2          .EQ  $0002
RX3PPS3          .EQ  $0003
RX3PPS4          .EQ  $0004
RX3PPS5          .EQ  $0005


;----- TX3PPS Bits -----------------------------------------------------
TX3PPS0          .EQ  $0000
TX3PPS1          .EQ  $0001
TX3PPS2          .EQ  $0002
TX3PPS3          .EQ  $0003
TX3PPS4          .EQ  $0004
TX3PPS5          .EQ  $0005


;----- RX4PPS Bits -----------------------------------------------------
RX4PPS0          .EQ  $0000
RX4PPS1          .EQ  $0001
RX4PPS2          .EQ  $0002
RX4PPS3          .EQ  $0003
RX4PPS4          .EQ  $0004
RX4PPS5          .EQ  $0005


;----- TX4PPS Bits -----------------------------------------------------
TX4PPS0          .EQ  $0000
TX4PPS1          .EQ  $0001
TX4PPS2          .EQ  $0002
TX4PPS3          .EQ  $0003
TX4PPS4          .EQ  $0004
TX4PPS5          .EQ  $0005


;----- RX5PPS Bits -----------------------------------------------------
RX5PPS0          .EQ  $0000
RX5PPS1          .EQ  $0001
RX5PPS2          .EQ  $0002
RX5PPS3          .EQ  $0003
RX5PPS4          .EQ  $0004
RX5PPS5          .EQ  $0005


;----- TX5PPS Bits -----------------------------------------------------
TX5PPS0          .EQ  $0000
TX5PPS1          .EQ  $0001
TX5PPS2          .EQ  $0002
TX5PPS3          .EQ  $0003
TX5PPS4          .EQ  $0004
TX5PPS5          .EQ  $0005


;----- SSP1CLKPPS Bits -----------------------------------------------------
SSP1CLKPPS0      .EQ  $0000
SSP1CLKPPS1      .EQ  $0001
SSP1CLKPPS2      .EQ  $0002
SSP1CLKPPS3      .EQ  $0003
SSP1CLKPPS4      .EQ  $0004
SSP1CLKPPS5      .EQ  $0005


;----- SSP1DATPPS Bits -----------------------------------------------------
SSP1DATPPS0      .EQ  $0000
SSP1DATPPS1      .EQ  $0001
SSP1DATPPS2      .EQ  $0002
SSP1DATPPS3      .EQ  $0003
SSP1DATPPS4      .EQ  $0004
SSP1DATPPS5      .EQ  $0005


;----- SSP1SSPPS Bits -----------------------------------------------------
SSP1SSPPS0       .EQ  $0000
SSP1SSPPS1       .EQ  $0001
SSP1SSPPS2       .EQ  $0002
SSP1SSPPS3       .EQ  $0003
SSP1SSPPS4       .EQ  $0004
SSP1SSPPS5       .EQ  $0005


;----- SSP2CLKPPS Bits -----------------------------------------------------
SSP2CLKPPS0      .EQ  $0000
SSP2CLKPPS1      .EQ  $0001
SSP2CLKPPS2      .EQ  $0002
SSP2CLKPPS3      .EQ  $0003
SSP2CLKPPS4      .EQ  $0004
SSP2CLKPPS5      .EQ  $0005


;----- SSP2DATPPS Bits -----------------------------------------------------
SSP2DATPPS0      .EQ  $0000
SSP2DATPPS1      .EQ  $0001
SSP2DATPPS2      .EQ  $0002
SSP2DATPPS3      .EQ  $0003
SSP2DATPPS4      .EQ  $0004
SSP2DATPPS5      .EQ  $0005


;----- SSP2SSPPS Bits -----------------------------------------------------
SSP2SSPPS0       .EQ  $0000
SSP2SSPPS1       .EQ  $0001
SSP2SSPPS2       .EQ  $0002
SSP2SSPPS3       .EQ  $0003
SSP2SSPPS4       .EQ  $0004
SSP2SSPPS5       .EQ  $0005


;----- IPR0 Bits -----------------------------------------------------
INT0IP           .EQ  $0000
INT1IP           .EQ  $0001
INT2IP           .EQ  $0002
INT3IP           .EQ  $0003
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
C3IP             .EQ  $0002
ZCDIP            .EQ  $0006
HLVDIP           .EQ  $0007


;----- IPR3 Bits -----------------------------------------------------
SSP1IP           .EQ  $0000
BCL1IP           .EQ  $0001
SSP2IP           .EQ  $0002
BCL2IP           .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
TX2IP            .EQ  $0006
RC2IP            .EQ  $0007


;----- IPR4 Bits -----------------------------------------------------
TX3IP            .EQ  $0000
RC3IP            .EQ  $0001
TX4IP            .EQ  $0002
RC4IP            .EQ  $0003
TX5IP            .EQ  $0004
RC5IP            .EQ  $0005


;----- IPR5 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
TMR3IP           .EQ  $0002
TMR4IP           .EQ  $0003
TMR5IP           .EQ  $0004
TMR6IP           .EQ  $0005
TMR7IP           .EQ  $0006
TMR8IP           .EQ  $0007


;----- IPR6 Bits -----------------------------------------------------
TMR1GIP          .EQ  $0000
TMR3GIP          .EQ  $0001
TMR5GIP          .EQ  $0002
TMR7GIP          .EQ  $0003


;----- IPR7 Bits -----------------------------------------------------
CCP1IP           .EQ  $0000
CCP2IP           .EQ  $0001
CCP3IP           .EQ  $0002
CCP4IP           .EQ  $0003
CCP5IP           .EQ  $0004


;----- IPR8 Bits -----------------------------------------------------
CWG1IP           .EQ  $0000
NVMIP            .EQ  $0005
CRCIP            .EQ  $0006
SCANIP           .EQ  $0007


;----- IPR9 Bits -----------------------------------------------------
SMU1IP           .EQ  $0000
SMU1PRAIP        .EQ  $0001
SMU1PWAIP        .EQ  $0002
SMU2IP           .EQ  $0003
SMU2PRAIP        .EQ  $0004
SMU2PWAIP        .EQ  $0005


;----- PIE0 Bits -----------------------------------------------------
INT0IE           .EQ  $0000
INT1IE           .EQ  $0001
INT2IE           .EQ  $0002
INT3IE           .EQ  $0003
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
C3IE             .EQ  $0002
ZCDIE            .EQ  $0006
HLVDIE           .EQ  $0007


;----- PIE3 Bits -----------------------------------------------------
SSP1IE           .EQ  $0000
BCL1IE           .EQ  $0001
SSP2IE           .EQ  $0002
BCL2IE           .EQ  $0003
TX1IE            .EQ  $0004
RC1IE            .EQ  $0005
TX2IE            .EQ  $0006
RC2IE            .EQ  $0007


;----- PIE4 Bits -----------------------------------------------------
TX3IE            .EQ  $0000
RC3IE            .EQ  $0001
TX4IE            .EQ  $0002
RC4IE            .EQ  $0003
TX5IE            .EQ  $0004
RC5IE            .EQ  $0005


;----- PIE5 Bits -----------------------------------------------------
TMR1IE           .EQ  $0000
TMR2IE           .EQ  $0001
TMR3IE           .EQ  $0002
TMR4IE           .EQ  $0003
TMR5IE           .EQ  $0004
TMR6IE           .EQ  $0005
TMR7IE           .EQ  $0006
TMR8IE           .EQ  $0007


;----- PIE6 Bits -----------------------------------------------------
TMR1GIE          .EQ  $0000
TMR3GIE          .EQ  $0001
TMR5GIE          .EQ  $0002
TMR7GIE          .EQ  $0003


;----- PIE7 Bits -----------------------------------------------------
CCP1IE           .EQ  $0000
CCP2IE           .EQ  $0001
CCP3IE           .EQ  $0002
CCP4IE           .EQ  $0003
CCP5IE           .EQ  $0004


;----- PIE8 Bits -----------------------------------------------------
CWG1IE           .EQ  $0000
NVMIE            .EQ  $0005
CRCIE            .EQ  $0006
SCANIE           .EQ  $0007


;----- PIE9 Bits -----------------------------------------------------
SMU1IE           .EQ  $0000
SMU1PRAIE        .EQ  $0001
SMU1PWAIE        .EQ  $0002
SMU2IE           .EQ  $0003
SMU2PRAIE        .EQ  $0004
SMU2PWAIE        .EQ  $0005


;----- PIR0 Bits -----------------------------------------------------
INT0IF           .EQ  $0000
INT1IF           .EQ  $0001
INT2IF           .EQ  $0002
INT3IF           .EQ  $0003
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
C3IF             .EQ  $0002
ZCDIF            .EQ  $0006
HLVDIF           .EQ  $0007


;----- PIR3 Bits -----------------------------------------------------
SSP1IF           .EQ  $0000
BCL1IF           .EQ  $0001
SSP2IF           .EQ  $0002
BCL2IF           .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
TX2IF            .EQ  $0006
RC2IF            .EQ  $0007


;----- PIR4 Bits -----------------------------------------------------
TX3IF            .EQ  $0000
RC3IF            .EQ  $0001
TX4IF            .EQ  $0002
RC4IF            .EQ  $0003
TX5IF            .EQ  $0004
RC5IF            .EQ  $0005


;----- PIR5 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
TMR3IF           .EQ  $0002
TMR4IF           .EQ  $0003
TMR5IF           .EQ  $0004
TMR6IF           .EQ  $0005
TMR7IF           .EQ  $0006
TMR8IF           .EQ  $0007


;----- PIR6 Bits -----------------------------------------------------
TMR1GIF          .EQ  $0000
TMR3GIF          .EQ  $0001
TMR5GIF          .EQ  $0002
TMR7GIF          .EQ  $0003


;----- PIR7 Bits -----------------------------------------------------
CCP1IF           .EQ  $0000
CCP2IF           .EQ  $0001
CCP3IF           .EQ  $0002
CCP4IF           .EQ  $0003
CCP5IF           .EQ  $0004


;----- PIR8 Bits -----------------------------------------------------
NVMIF            .EQ  $0005
CRCIF            .EQ  $0006
SCANIF           .EQ  $0007


;----- PIR9 Bits -----------------------------------------------------
SMU1IF           .EQ  $0000
SMU1PRAIF        .EQ  $0001
SMU1PWAIF        .EQ  $0002
SMU2IF           .EQ  $0003
SMU2PRAIF        .EQ  $0004
SMU2PWAIF        .EQ  $0005


;----- WDTCON0 Bits -----------------------------------------------------
SEN              .EQ  $0000

SWDTEN           .EQ  $0000
PS0              .EQ  $0001
PS1              .EQ  $0002
PS2              .EQ  $0003
PS3              .EQ  $0004
PS4              .EQ  $0005

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
CS0_WDTCON1      .EQ  $0004
CS1_WDTCON1      .EQ  $0005
CS2_WDTCON1      .EQ  $0006


WDTWINDOW0       .EQ  $0000
WDTWINDOW1       .EQ  $0001
WDTWINDOW2       .EQ  $0002
WDTCS0           .EQ  $0004
WDTCS1           .EQ  $0005
WDTCS2           .EQ  $0006


;----- WDTL Bits -----------------------------------------------------
WDT0             .EQ  $0000
WDT1             .EQ  $0001
WDT2             .EQ  $0002
WDT3             .EQ  $0003
WDT4             .EQ  $0004
WDT5             .EQ  $0005
WDT6             .EQ  $0006
WDT7             .EQ  $0007


;----- WDTPSL Bits -----------------------------------------------------
WDT0             .EQ  $0000
WDT1             .EQ  $0001
WDT2             .EQ  $0002
WDT3             .EQ  $0003
WDT4             .EQ  $0004
WDT5             .EQ  $0005
WDT6             .EQ  $0006
WDT7             .EQ  $0007


;----- WDTH Bits -----------------------------------------------------
WDT8             .EQ  $0000
WDT9             .EQ  $0001
WDT10            .EQ  $0002
WDT11            .EQ  $0003
WDT12            .EQ  $0004
WDT13            .EQ  $0005
WDT14            .EQ  $0006
WDT15            .EQ  $0007


;----- WDTPSH Bits -----------------------------------------------------
WDT8             .EQ  $0000
WDT9             .EQ  $0001
WDT10            .EQ  $0002
WDT11            .EQ  $0003
WDT12            .EQ  $0004
WDT13            .EQ  $0005
WDT14            .EQ  $0006
WDT15            .EQ  $0007


;----- WDTPSU Bits -----------------------------------------------------
WDT16            .EQ  $0000
WDT17            .EQ  $0001
WDTSTATE         .EQ  $0002
WDT18            .EQ  $0003
WDT19            .EQ  $0004
WDT20            .EQ  $0005
WDT21            .EQ  $0006
WDT22            .EQ  $0007

PSCNT16          .EQ  $0000
PSCNT17          .EQ  $0001
PSCNT18          .EQ  $0002
PSCNT19          .EQ  $0003
PSCNT20          .EQ  $0004
PSCNT21          .EQ  $0005
PSCNT22          .EQ  $0006


WDTPSCNT16       .EQ  $0000
WDTPSCNT17       .EQ  $0001
WDTPSCNT18       .EQ  $0002
WDTPSCNT19       .EQ  $0003
WDTPSCNT20       .EQ  $0004
WDTPSCNT21       .EQ  $0005
WDTPSCNT22       .EQ  $0006


;----- WDTU Bits -----------------------------------------------------
WDT16            .EQ  $0000
WDT17            .EQ  $0001
WDTSTATE         .EQ  $0002
WDT18            .EQ  $0003
WDT19            .EQ  $0004
WDT20            .EQ  $0005
WDT21            .EQ  $0006
WDT22            .EQ  $0007

PSCNT16          .EQ  $0000
PSCNT17          .EQ  $0001
PSCNT18          .EQ  $0002
PSCNT19          .EQ  $0003
PSCNT20          .EQ  $0004
PSCNT21          .EQ  $0005
PSCNT22          .EQ  $0006


WDTPSCNT16       .EQ  $0000
WDTPSCNT17       .EQ  $0001
WDTPSCNT18       .EQ  $0002
WDTPSCNT19       .EQ  $0003
WDTPSCNT20       .EQ  $0004
WDTPSCNT21       .EQ  $0005
WDTPSCNT22       .EQ  $0006


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
TMR7MD           .EQ  $0007


;----- PMD2 Bits -----------------------------------------------------
TMR8MD           .EQ  $0000
SMU1MD           .EQ  $0001
SMU2MD           .EQ  $0002
DSMMD            .EQ  $0003
CWGMD            .EQ  $0005

CWG1MD           .EQ  $0005


;----- PMD3 Bits -----------------------------------------------------
ZCDMD            .EQ  $0000
CMP1MD           .EQ  $0001
CMP2MD           .EQ  $0002
CMP3MD           .EQ  $0003
ADCMD            .EQ  $0005
DACMD            .EQ  $0006


;----- PMD4 Bits -----------------------------------------------------
CCP1MD           .EQ  $0000
CCP2MD           .EQ  $0001
CCP3MD           .EQ  $0002
CCP4MD           .EQ  $0003
CCP5MD           .EQ  $0004
PWM6MD           .EQ  $0005
PWM7MD           .EQ  $0006


;----- PMD5 Bits -----------------------------------------------------
MSSP1MD          .EQ  $0000
MSSP2MD          .EQ  $0001
UART1MD          .EQ  $0002
UART2MD          .EQ  $0003
UART3MD          .EQ  $0004
UART4MD          .EQ  $0005
UART5MD          .EQ  $0006


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


;----- RE3PPS Bits -----------------------------------------------------
RE3PPS0          .EQ  $0000
RE3PPS1          .EQ  $0001
RE3PPS2          .EQ  $0002
RE3PPS3          .EQ  $0003
RE3PPS4          .EQ  $0004
RE3PPS5          .EQ  $0005


;----- RE4PPS Bits -----------------------------------------------------
RE4PPS0          .EQ  $0000
RE4PPS1          .EQ  $0001
RE4PPS2          .EQ  $0002
RE4PPS3          .EQ  $0003
RE4PPS4          .EQ  $0004
RE4PPS5          .EQ  $0005


;----- RE5PPS Bits -----------------------------------------------------
RE5PPS0          .EQ  $0000
RE5PPS1          .EQ  $0001
RE5PPS2          .EQ  $0002
RE5PPS3          .EQ  $0003
RE5PPS4          .EQ  $0004
RE5PPS5          .EQ  $0005


;----- RE6PPS Bits -----------------------------------------------------
RE6PPS0          .EQ  $0000
RE6PPS1          .EQ  $0001
RE6PPS2          .EQ  $0002
RE6PPS3          .EQ  $0003
RE6PPS4          .EQ  $0004
RE6PPS5          .EQ  $0005


;----- RE7PPS Bits -----------------------------------------------------
RE7PPS0          .EQ  $0000
RE7PPS1          .EQ  $0001
RE7PPS2          .EQ  $0002
RE7PPS3          .EQ  $0003
RE7PPS4          .EQ  $0004
RE7PPS5          .EQ  $0005


;----- RF0PPS Bits -----------------------------------------------------
RF0PPS0          .EQ  $0000
RF0PPS1          .EQ  $0001
RF0PPS2          .EQ  $0002
RF0PPS3          .EQ  $0003
RF0PPS4          .EQ  $0004
RF0PPS5          .EQ  $0005


;----- RF1PPS Bits -----------------------------------------------------
RF1PPS0          .EQ  $0000
RF1PPS1          .EQ  $0001
RF1PPS2          .EQ  $0002
RF1PPS3          .EQ  $0003
RF1PPS4          .EQ  $0004
RF1PPS5          .EQ  $0005


;----- RF2PPS Bits -----------------------------------------------------
RF2PPS0          .EQ  $0000
RF2PPS1          .EQ  $0001
RF2PPS2          .EQ  $0002
RF2PPS3          .EQ  $0003
RF2PPS4          .EQ  $0004
RF2PPS5          .EQ  $0005


;----- RF3PPS Bits -----------------------------------------------------
RF3PPS0          .EQ  $0000
RF3PPS1          .EQ  $0001
RF3PPS2          .EQ  $0002
RF3PPS3          .EQ  $0003
RF3PPS4          .EQ  $0004
RF3PPS5          .EQ  $0005


;----- RF4PPS Bits -----------------------------------------------------
RF4PPS0          .EQ  $0000
RF4PPS1          .EQ  $0001
RF4PPS2          .EQ  $0002
RF4PPS3          .EQ  $0003
RF4PPS4          .EQ  $0004
RF4PPS5          .EQ  $0005


;----- RF5PPS Bits -----------------------------------------------------
RF5PPS0          .EQ  $0000
RF5PPS1          .EQ  $0001
RF5PPS2          .EQ  $0002
RF5PPS3          .EQ  $0003
RF5PPS4          .EQ  $0004
RF5PPS5          .EQ  $0005


;----- RF6PPS Bits -----------------------------------------------------
RF6PPS0          .EQ  $0000
RF6PPS1          .EQ  $0001
RF6PPS2          .EQ  $0002
RF6PPS3          .EQ  $0003
RF6PPS4          .EQ  $0004
RF6PPS5          .EQ  $0005


;----- RF7PPS Bits -----------------------------------------------------
RF7PPS0          .EQ  $0000
RF7PPS1          .EQ  $0001
RF7PPS2          .EQ  $0002
RF7PPS3          .EQ  $0003
RF7PPS4          .EQ  $0004
RF7PPS5          .EQ  $0005


;----- RG0PPS Bits -----------------------------------------------------
RG0PPS0          .EQ  $0000
RG0PPS1          .EQ  $0001
RG0PPS2          .EQ  $0002
RG0PPS3          .EQ  $0003
RG0PPS4          .EQ  $0004
RG0PPS5          .EQ  $0005


;----- RG1PPS Bits -----------------------------------------------------
RG1PPS0          .EQ  $0000
RG1PPS1          .EQ  $0001
RG1PPS2          .EQ  $0002
RG1PPS3          .EQ  $0003
RG1PPS4          .EQ  $0004
RG1PPS5          .EQ  $0005


;----- RG2PPS Bits -----------------------------------------------------
RG2PPS0          .EQ  $0000
RG2PPS1          .EQ  $0001
RG2PPS2          .EQ  $0002
RG2PPS3          .EQ  $0003
RG2PPS4          .EQ  $0004
RG2PPS5          .EQ  $0005


;----- RG3PPS Bits -----------------------------------------------------
RG3PPS0          .EQ  $0000
RG3PPS1          .EQ  $0001
RG3PPS2          .EQ  $0002
RG3PPS3          .EQ  $0003
RG3PPS4          .EQ  $0004
RG3PPS5          .EQ  $0005


;----- RG4PPS Bits -----------------------------------------------------
RG4PPS0          .EQ  $0000
RG4PPS1          .EQ  $0001
RG4PPS2          .EQ  $0002
RG4PPS3          .EQ  $0003
RG4PPS4          .EQ  $0004
RG4PPS5          .EQ  $0005


;----- RG6PPS Bits -----------------------------------------------------
RG6PPS0          .EQ  $0000
RG6PPS1          .EQ  $0001
RG6PPS2          .EQ  $0002
RG6PPS3          .EQ  $0003
RG6PPS4          .EQ  $0004
RG6PPS5          .EQ  $0005


;----- RG7PPS Bits -----------------------------------------------------
RG7PPS0          .EQ  $0000
RG7PPS1          .EQ  $0001
RG7PPS2          .EQ  $0002
RG7PPS3          .EQ  $0003
RG7PPS4          .EQ  $0004
RG7PPS5          .EQ  $0005


;----- RH0PPS Bits -----------------------------------------------------
RH0PPS0          .EQ  $0000
RH0PPS1          .EQ  $0001
RH0PPS2          .EQ  $0002
RH0PPS3          .EQ  $0003
RH0PPS4          .EQ  $0004
RH0PPS5          .EQ  $0005


;----- RH1PPS Bits -----------------------------------------------------
RH1PPS0          .EQ  $0000
RH1PPS1          .EQ  $0001
RH1PPS2          .EQ  $0002
RH1PPS3          .EQ  $0003
RH1PPS4          .EQ  $0004
RH1PPS5          .EQ  $0005


;----- RH2PPS Bits -----------------------------------------------------
RH2PPS0          .EQ  $0000
RH2PPS1          .EQ  $0001
RH2PPS2          .EQ  $0002
RH2PPS3          .EQ  $0003
RH2PPS4          .EQ  $0004
RH2PPS5          .EQ  $0005


;----- RH3PPS Bits -----------------------------------------------------
RH3PPS0          .EQ  $0000
RH3PPS1          .EQ  $0001
RH3PPS2          .EQ  $0002
RH3PPS3          .EQ  $0003
RH3PPS4          .EQ  $0004
RH3PPS5          .EQ  $0005


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


;----- INLVLD Bits -----------------------------------------------------
INLVLD0          .EQ  $0000
INLVLD1          .EQ  $0001
INLVLD2          .EQ  $0002
INLVLD3          .EQ  $0003
INLVLD4          .EQ  $0004
INLVLD5          .EQ  $0005
INLVLD6          .EQ  $0006
INLVLD7          .EQ  $0007


;----- SLRCOND Bits -----------------------------------------------------
SLRD0            .EQ  $0000
SLRD1            .EQ  $0001
SLRD2            .EQ  $0002
SLRD3            .EQ  $0003
SLRD4            .EQ  $0004
SLRD5            .EQ  $0005
SLRD6            .EQ  $0006
SLRD7            .EQ  $0007


;----- ODCOND Bits -----------------------------------------------------
ODCD0            .EQ  $0000
ODCD1            .EQ  $0001
ODCD2            .EQ  $0002
ODCD3            .EQ  $0003
ODCD4            .EQ  $0004
ODCD5            .EQ  $0005
ODCD6            .EQ  $0006
ODCD7            .EQ  $0007


;----- WPUD Bits -----------------------------------------------------
WPUD0            .EQ  $0000
WPUD1            .EQ  $0001
WPUD2            .EQ  $0002
WPUD3            .EQ  $0003
WPUD4            .EQ  $0004
WPUD5            .EQ  $0005
WPUD6            .EQ  $0006
WPUD7            .EQ  $0007


;----- ANSELD Bits -----------------------------------------------------
ANSELD0          .EQ  $0000
ANSELD1          .EQ  $0001
ANSELD2          .EQ  $0002
ANSELD3          .EQ  $0003
ANSELD4          .EQ  $0004
ANSELD5          .EQ  $0005
ANSELD6          .EQ  $0006
ANSELD7          .EQ  $0007


;----- IOCEF Bits -----------------------------------------------------
IOCEF0           .EQ  $0000
IOCEF1           .EQ  $0001
IOCEF2           .EQ  $0002
IOCEF3           .EQ  $0003
IOCEF4           .EQ  $0004
IOCEF5           .EQ  $0005
IOCEF6           .EQ  $0006
IOCEF7           .EQ  $0007


;----- IOCEN Bits -----------------------------------------------------
IOCEN0           .EQ  $0000
IOCEN1           .EQ  $0001
IOCEN2           .EQ  $0002
IOCEN3           .EQ  $0003
IOCEN4           .EQ  $0004
IOCEN5           .EQ  $0005
IOCEN6           .EQ  $0006
IOCEN7           .EQ  $0007


;----- IOCEP Bits -----------------------------------------------------
IOCEP0           .EQ  $0000
IOCEP1           .EQ  $0001
IOCEP2           .EQ  $0002
IOCEP3           .EQ  $0003
IOCEP4           .EQ  $0004
IOCEP5           .EQ  $0005
IOCEP6           .EQ  $0006
IOCEP7           .EQ  $0007


;----- INLVLE Bits -----------------------------------------------------
INLVLE0          .EQ  $0000
INLVLE1          .EQ  $0001
INLVLE2          .EQ  $0002
INLVLE3          .EQ  $0003
INLVLE4          .EQ  $0004
INLVLE5          .EQ  $0005
INLVLE6          .EQ  $0006
INLVLE7          .EQ  $0007


;----- SLRCONE Bits -----------------------------------------------------
SLRE0            .EQ  $0000
SLRE1            .EQ  $0001
SLRE2            .EQ  $0002
SLRE3            .EQ  $0003
SLRE4            .EQ  $0004
SLRE5            .EQ  $0005
SLRE6            .EQ  $0006
SLRE7            .EQ  $0007


;----- ODCONE Bits -----------------------------------------------------
ODCE0            .EQ  $0000
ODCE1            .EQ  $0001
ODCE2            .EQ  $0002
ODCE3            .EQ  $0003
ODCE4            .EQ  $0004
ODCE5            .EQ  $0005
ODCE6            .EQ  $0006
ODCE7            .EQ  $0007


;----- WPUE Bits -----------------------------------------------------
WPUE0            .EQ  $0000
WPUE1            .EQ  $0001
WPUE2            .EQ  $0002
WPUE3            .EQ  $0003
WPUE4            .EQ  $0004
WPUE5            .EQ  $0005
WPUE6            .EQ  $0006
WPUE7            .EQ  $0007


;----- ANSELE Bits -----------------------------------------------------
ANSELE0          .EQ  $0000
ANSELE1          .EQ  $0001
ANSELE2          .EQ  $0002
ANSELE3          .EQ  $0003
ANSELE4          .EQ  $0004
ANSELE5          .EQ  $0005
ANSELE6          .EQ  $0006
ANSELE7          .EQ  $0007


;----- INLVLF Bits -----------------------------------------------------
INLVLF0          .EQ  $0000
INLVLF1          .EQ  $0001
INLVLF2          .EQ  $0002
INLVLF3          .EQ  $0003
INLVLF4          .EQ  $0004
INLVLF5          .EQ  $0005
INLVLF6          .EQ  $0006
INLVLF7          .EQ  $0007


;----- SLRCONF Bits -----------------------------------------------------
SLRF0            .EQ  $0000
SLRF1            .EQ  $0001
SLRF2            .EQ  $0002
SLRF3            .EQ  $0003
SLRF4            .EQ  $0004
SLRF5            .EQ  $0005
SLRF6            .EQ  $0006
SLRF7            .EQ  $0007


;----- ODCONF Bits -----------------------------------------------------
ODCF0            .EQ  $0000
ODCF1            .EQ  $0001
ODCF2            .EQ  $0002
ODCF3            .EQ  $0003
ODCF4            .EQ  $0004
ODCF5            .EQ  $0005
ODCF6            .EQ  $0006
ODCF7            .EQ  $0007


;----- WPUF Bits -----------------------------------------------------
WPUF0            .EQ  $0000
WPUF1            .EQ  $0001
WPUF2            .EQ  $0002
WPUF3            .EQ  $0003
WPUF4            .EQ  $0004
WPUF5            .EQ  $0005
WPUF6            .EQ  $0006
WPUF7            .EQ  $0007


;----- ANSELF Bits -----------------------------------------------------
ANSELF0          .EQ  $0000
ANSELF1          .EQ  $0001
ANSELF2          .EQ  $0002
ANSELF3          .EQ  $0003
ANSELF4          .EQ  $0004
ANSELF5          .EQ  $0005
ANSELF6          .EQ  $0006
ANSELF7          .EQ  $0007


;----- IOCGF Bits -----------------------------------------------------
IOCGF0           .EQ  $0000
IOCGF1           .EQ  $0001
IOCGF2           .EQ  $0002
IOCGF3           .EQ  $0003
IOCGF4           .EQ  $0004
IOCGF5           .EQ  $0005
IOCGF6           .EQ  $0006
IOCGF7           .EQ  $0007


;----- IOCGN Bits -----------------------------------------------------
IOCGN0           .EQ  $0000
IOCGN1           .EQ  $0001
IOCGN2           .EQ  $0002
IOCGN3           .EQ  $0003
IOCGN4           .EQ  $0004
IOCGN5           .EQ  $0005
IOCGN6           .EQ  $0006
IOCGN7           .EQ  $0007


;----- IOCGP Bits -----------------------------------------------------
IOCGP0           .EQ  $0000
IOCGP1           .EQ  $0001
IOCGP2           .EQ  $0002
IOCGP3           .EQ  $0003
IOCGP4           .EQ  $0004
IOCGP5           .EQ  $0005
IOCGP6           .EQ  $0006
IOCGP7           .EQ  $0007


;----- INLVLG Bits -----------------------------------------------------
INLVLG0          .EQ  $0000
INLVLG1          .EQ  $0001
INLVLG2          .EQ  $0002
INLVLG3          .EQ  $0003
INLVLG4          .EQ  $0004
INLVLG5          .EQ  $0005
INLVLG6          .EQ  $0006
INLVLG7          .EQ  $0007


;----- SLRCONG Bits -----------------------------------------------------
SLRG0            .EQ  $0000
SLRG1            .EQ  $0001
SLRG2            .EQ  $0002
SLRG3            .EQ  $0003
SLRG4            .EQ  $0004
SLRG5            .EQ  $0005
SLRG6            .EQ  $0006
SLRG7            .EQ  $0007


;----- ODCONG Bits -----------------------------------------------------
ODCG0            .EQ  $0000
ODCG1            .EQ  $0001
ODCG2            .EQ  $0002
ODCG3            .EQ  $0003
ODCG4            .EQ  $0004
ODCG5            .EQ  $0005
ODCG6            .EQ  $0006
ODCG7            .EQ  $0007


;----- WPUG Bits -----------------------------------------------------
WPUG0            .EQ  $0000
WPUG1            .EQ  $0001
WPUG2            .EQ  $0002
WPUG3            .EQ  $0003
WPUG4            .EQ  $0004
WPUG5            .EQ  $0005
WPUG6            .EQ  $0006
WPUG7            .EQ  $0007


;----- ANSELG Bits -----------------------------------------------------
ANSELG0          .EQ  $0000
ANSELG1          .EQ  $0001
ANSELG2          .EQ  $0002
ANSELG3          .EQ  $0003
ANSELG4          .EQ  $0004
ANSELG5          .EQ  $0005
ANSELG6          .EQ  $0006
ANSELG7          .EQ  $0007


;----- INLVLH Bits -----------------------------------------------------
INLVLH0          .EQ  $0000
INLVLH1          .EQ  $0001
INLVLH2          .EQ  $0002
INLVLH3          .EQ  $0003
INLVLH4          .EQ  $0004
INLVLH5          .EQ  $0005
INLVLH6          .EQ  $0006
INLVLH7          .EQ  $0007


;----- SLRCONH Bits -----------------------------------------------------
SLRH0            .EQ  $0000
SLRH1            .EQ  $0001
SLRH2            .EQ  $0002
SLRH3            .EQ  $0003
SLRH4            .EQ  $0004
SLRH5            .EQ  $0005
SLRH6            .EQ  $0006
SLRH7            .EQ  $0007


;----- ODCONH Bits -----------------------------------------------------
ODCH0            .EQ  $0000
ODCH1            .EQ  $0001
ODCH2            .EQ  $0002
ODCH3            .EQ  $0003
ODCH4            .EQ  $0004
ODCH5            .EQ  $0005
ODCH6            .EQ  $0006
ODCH7            .EQ  $0007


;----- WPUH Bits -----------------------------------------------------
WPUH0            .EQ  $0000
WPUH1            .EQ  $0001
WPUH2            .EQ  $0002
WPUH3            .EQ  $0003
WPUH4            .EQ  $0004
WPUH5            .EQ  $0005
WPUH6            .EQ  $0006
WPUH7            .EQ  $0007


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


;----- CM3CON0 Bits -----------------------------------------------------
SYNC_CM3CON0     .EQ  $0000
HYS              .EQ  $0001
POL              .EQ  $0004
OUT_CM3CON0      .EQ  $0006
EN               .EQ  $0007

C3SYNC           .EQ  $0000
C3HYS            .EQ  $0001
C3POL            .EQ  $0004
C3OUT            .EQ  $0006
C3EN             .EQ  $0007


;----- CM3CON1 Bits -----------------------------------------------------
INTN             .EQ  $0000
INTP             .EQ  $0001

C3INTN           .EQ  $0000
C3INTP           .EQ  $0001


;----- CM3NCH Bits -----------------------------------------------------
NCH0             .EQ  $0000
NCH1             .EQ  $0001
NCH2             .EQ  $0002

C3NCH0           .EQ  $0000
C3NCH1           .EQ  $0001
C3NCH2           .EQ  $0002


;----- CM3PCH Bits -----------------------------------------------------
PCH0             .EQ  $0000
PCH1             .EQ  $0001
PCH2             .EQ  $0002

C3PCH0           .EQ  $0000
C3PCH1           .EQ  $0001
C3PCH2           .EQ  $0002


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
MC3OUT           .EQ  $0002


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


;----- RC5STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA5 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX5STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TX5STA      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA5 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TXSTA5      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD5CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON5 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL5 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- RC4STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA4 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX4STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TX4STA      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA4 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TXSTA4      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD4CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON4 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL4 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- RC3STA Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- RCSTA3 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- TX3STA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TX3STA      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA3 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC_TXSTA3      .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- BAUD3CON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCON3 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- BAUDCTL3 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
BRG16            .EQ  $0003
SCKP             .EQ  $0004
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


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
CSEL3            .EQ  $0003
CSEL4            .EQ  $0004
CSEL5            .EQ  $0005
CSEL6            .EQ  $0006
CSEL7            .EQ  $0007


SMT2CSEL0        .EQ  $0000
SMT2CSEL1        .EQ  $0001
SMT2CSEL2        .EQ  $0002
SMT2CSEL3        .EQ  $0003
SMT2CSEL4        .EQ  $0004
SMT2CSEL5        .EQ  $0005
SMT2CSEL6        .EQ  $0006
SMT2CSEL7        .EQ  $0007


;----- SMT2SIG Bits -----------------------------------------------------
SSEL0            .EQ  $0000
SSEL1            .EQ  $0001
SSEL2            .EQ  $0002
SSEL3            .EQ  $0003
SSEL4            .EQ  $0004
SSEL5            .EQ  $0005
SSEL6            .EQ  $0006
SSEL7            .EQ  $0007


SMT2SSEL0        .EQ  $0000
SMT2SSEL1        .EQ  $0001
SMT2SSEL2        .EQ  $0002
SMT2SSEL3        .EQ  $0003
SMT2SSEL4        .EQ  $0004
SMT2SSEL5        .EQ  $0005
SMT2SSEL6        .EQ  $0006
SMT2SSEL7        .EQ  $0007


;----- SMT2WIN Bits -----------------------------------------------------
WSEL0            .EQ  $0000
WSEL1            .EQ  $0001
WSEL2            .EQ  $0002
WSEL3            .EQ  $0003
WSEL4            .EQ  $0004
WSEL5            .EQ  $0005
WSEL6            .EQ  $0006
WSEL7            .EQ  $0007


SMT2WSEL0        .EQ  $0000
SMT2WSEL1        .EQ  $0001
SMT2WSEL2        .EQ  $0002
SMT2WSEL3        .EQ  $0003
SMT2WSEL4        .EQ  $0004
SMT2WSEL5        .EQ  $0005
SMT2WSEL6        .EQ  $0006
SMT2WSEL7        .EQ  $0007


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
CSEL3            .EQ  $0003
CSEL4            .EQ  $0004
CSEL5            .EQ  $0005
CSEL6            .EQ  $0006
CSEL7            .EQ  $0007


SMT1CSEL0        .EQ  $0000
SMT1CSEL1        .EQ  $0001
SMT1CSEL2        .EQ  $0002
SMT1CSEL3        .EQ  $0003
SMT1CSEL4        .EQ  $0004
SMT1CSEL5        .EQ  $0005
SMT1CSEL6        .EQ  $0006
SMT1CSEL7        .EQ  $0007


;----- SMT1SIG Bits -----------------------------------------------------
SSEL0            .EQ  $0000
SSEL1            .EQ  $0001
SSEL2            .EQ  $0002
SSEL3            .EQ  $0003
SSEL4            .EQ  $0004
SSEL5            .EQ  $0005
SSEL6            .EQ  $0006
SSEL7            .EQ  $0007


SMT1SSEL0        .EQ  $0000
SMT1SSEL1        .EQ  $0001
SMT1SSEL2        .EQ  $0002
SMT1SSEL3        .EQ  $0003
SMT1SSEL4        .EQ  $0004
SMT1SSEL5        .EQ  $0005
SMT1SSEL6        .EQ  $0006
SMT1SSEL7        .EQ  $0007


;----- SMT1WIN Bits -----------------------------------------------------
WSEL0            .EQ  $0000
WSEL1            .EQ  $0001
WSEL2            .EQ  $0002
WSEL3            .EQ  $0003
WSEL4            .EQ  $0004
WSEL5            .EQ  $0005
WSEL6            .EQ  $0006
WSEL7            .EQ  $0007


SMT1WSEL0        .EQ  $0000
SMT1WSEL1        .EQ  $0001
SMT1WSEL2        .EQ  $0002
SMT1WSEL3        .EQ  $0003
SMT1WSEL4        .EQ  $0004
SMT1WSEL5        .EQ  $0005
SMT1WSEL6        .EQ  $0006
SMT1WSEL7        .EQ  $0007


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
CTS3             .EQ  $0003
CTS4             .EQ  $0004
CTS5             .EQ  $0005
CTS6             .EQ  $0006
CTS7             .EQ  $0007


CCP5CTS0         .EQ  $0000
CCP5CTS1         .EQ  $0001
CCP5CTS2         .EQ  $0002
CCP5CTS3         .EQ  $0003
CCP5CTS4         .EQ  $0004
CCP5CTS5         .EQ  $0005
CCP5CTS6         .EQ  $0006
CCP5CTS7         .EQ  $0007


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
CTS3             .EQ  $0003
CTS4             .EQ  $0004
CTS5             .EQ  $0005
CTS6             .EQ  $0006
CTS7             .EQ  $0007


CCP4CTS0         .EQ  $0000
CCP4CTS1         .EQ  $0001
CCP4CTS2         .EQ  $0002
CCP4CTS3         .EQ  $0003
CCP4CTS4         .EQ  $0004
CCP4CTS5         .EQ  $0005
CCP4CTS6         .EQ  $0006
CCP4CTS7         .EQ  $0007


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
CTS3             .EQ  $0003
CTS4             .EQ  $0004
CTS5             .EQ  $0005
CTS6             .EQ  $0006
CTS7             .EQ  $0007


CCP3CTS0         .EQ  $0000
CCP3CTS1         .EQ  $0001
CCP3CTS2         .EQ  $0002
CCP3CTS3         .EQ  $0003
CCP3CTS4         .EQ  $0004
CCP3CTS5         .EQ  $0005
CCP3CTS6         .EQ  $0006
CCP3CTS7         .EQ  $0007


;----- T8CON Bits -----------------------------------------------------
ON_T8CON         .EQ  $0007

OUTPS0           .EQ  $0000
OUTPS1           .EQ  $0001
OUTPS2           .EQ  $0002
OUTPS3           .EQ  $0003
CKPS0            .EQ  $0004
CKPS1            .EQ  $0005
CKPS2            .EQ  $0006

T8ON             .EQ  $0007

T8OUTPS0         .EQ  $0000
T8OUTPS1         .EQ  $0001
T8OUTPS2         .EQ  $0002
T8OUTPS3         .EQ  $0003
T8CKPS0          .EQ  $0004
T8CKPS1          .EQ  $0005
T8CKPS2          .EQ  $0006
TMR8ON           .EQ  $0007


;----- T8HLT Bits -----------------------------------------------------
CKSYNC           .EQ  $0005
CKPOL            .EQ  $0006
PSYNC            .EQ  $0007

MODE0            .EQ  $0000
MODE1            .EQ  $0001
MODE2            .EQ  $0002
MODE3            .EQ  $0003
MODE4            .EQ  $0004

T8CKSYNC         .EQ  $0005
T8CKPOL          .EQ  $0006
T8PSYNC          .EQ  $0007

T8MODE0          .EQ  $0000
T8MODE1          .EQ  $0001
T8MODE2          .EQ  $0002
T8MODE3          .EQ  $0003
T8MODE4          .EQ  $0004


;----- T8CLKCON Bits -----------------------------------------------------
CS0_T8CLKCON     .EQ  $0000
CS1_T8CLKCON     .EQ  $0001
CS2_T8CLKCON     .EQ  $0002
CS3              .EQ  $0003


T8CS0            .EQ  $0000
T8CS1            .EQ  $0001
T8CS2            .EQ  $0002
T8CS3            .EQ  $0003


;----- T8RST Bits -----------------------------------------------------
RSEL0            .EQ  $0000
RSEL1            .EQ  $0001
RSEL2            .EQ  $0002
RSEL3            .EQ  $0003


T8RSEL0          .EQ  $0000
T8RSEL1          .EQ  $0001
T8RSEL2          .EQ  $0002
T8RSEL3          .EQ  $0003


;----- TMR7L Bits -----------------------------------------------------
TMR7L0           .EQ  $0000
TMR7L1           .EQ  $0001
TMR7L2           .EQ  $0002
TMR7L3           .EQ  $0003
TMR7L4           .EQ  $0004
TMR7L5           .EQ  $0005
TMR7L6           .EQ  $0006
TMR7L7           .EQ  $0007



;----- TMR7H Bits -----------------------------------------------------
TMR7H0           .EQ  $0000
TMR7H1           .EQ  $0001
TMR7H2           .EQ  $0002
TMR7H3           .EQ  $0003
TMR7H4           .EQ  $0004
TMR7H5           .EQ  $0005
TMR7H6           .EQ  $0006
TMR7H7           .EQ  $0007



;----- T7CON Bits -----------------------------------------------------
ON_T7CON         .EQ  $0000
RD16             .EQ  $0001
NOT_SYNC         .EQ  $0002

TMR7ON           .EQ  $0000
T7RD16           .EQ  $0001
NOT_T7SYNC       .EQ  $0002
T7CKPS0          .EQ  $0004
T7CKPS1          .EQ  $0005

CKPS0            .EQ  $0004
CKPS1            .EQ  $0005


;----- PR7 Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T7GVAL           .EQ  $0002
T7GGO_NOT_DONE   .EQ  $0003
T7GSPM           .EQ  $0004
T7GTM            .EQ  $0005
T7GPOL           .EQ  $0006
T7GE             .EQ  $0007

T7GGO            .EQ  $0003


;----- T7GCON Bits -----------------------------------------------------
GVAL             .EQ  $0002
GGO_NOT_DONE     .EQ  $0003
GSPM             .EQ  $0004
GTM              .EQ  $0005
GPOL             .EQ  $0006
GE               .EQ  $0007

T7GVAL           .EQ  $0002
T7GGO_NOT_DONE   .EQ  $0003
T7GSPM           .EQ  $0004
T7GTM            .EQ  $0005
T7GPOL           .EQ  $0006
T7GE             .EQ  $0007

T7GGO            .EQ  $0003


;----- T7GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T7GSS0           .EQ  $0000
T7GSS1           .EQ  $0001
T7GSS2           .EQ  $0002
T7GSS3           .EQ  $0003
T7GSS4           .EQ  $0004


;----- TMR7GATE Bits -----------------------------------------------------
GSS0             .EQ  $0000
GSS1             .EQ  $0001
GSS2             .EQ  $0002
GSS3             .EQ  $0003
GSS4             .EQ  $0004

T7GSS0           .EQ  $0000
T7GSS1           .EQ  $0001
T7GSS2           .EQ  $0002
T7GSS3           .EQ  $0003
T7GSS4           .EQ  $0004


;----- T7CLK Bits -----------------------------------------------------
T7CS0            .EQ  $0000
T7CS1            .EQ  $0001
T7CS2            .EQ  $0002
T7CS3            .EQ  $0003

CS0_T7CLK        .EQ  $0000
CS1_T7CLK        .EQ  $0001
CS2_T7CLK        .EQ  $0002
CS3              .EQ  $0003


;----- TMR7CLK Bits -----------------------------------------------------
T7CS0            .EQ  $0000
T7CS1            .EQ  $0001
T7CS2            .EQ  $0002
T7CS3            .EQ  $0003

CS0_TMR7CLK      .EQ  $0000
CS1_TMR7CLK      .EQ  $0001
CS2_TMR7CLK      .EQ  $0002
CS3              .EQ  $0003


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
AS6E             .EQ  $0006
AS7E             .EQ  $0007


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


;----- NVMADRH Bits -----------------------------------------------------
NVMADR8          .EQ  $0000
NVMADR9          .EQ  $0001

ADR8             .EQ  $0000
ADR9             .EQ  $0001


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
LATF0            .EQ  $0000
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
LATG6            .EQ  $0006
LATG7            .EQ  $0007


;----- LATH Bits -----------------------------------------------------
LATH0            .EQ  $0000
LATH1            .EQ  $0001
LATH2            .EQ  $0002
LATH3            .EQ  $0003


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
TRISE3           .EQ  $0003
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- TRISE Bits -----------------------------------------------------
TRISE0           .EQ  $0000
TRISE1           .EQ  $0001
TRISE2           .EQ  $0002
TRISE3           .EQ  $0003
TRISE4           .EQ  $0004
TRISE5           .EQ  $0005
TRISE6           .EQ  $0006
TRISE7           .EQ  $0007

RE0              .EQ  $0000
RE1              .EQ  $0001
RE2              .EQ  $0002
RE3              .EQ  $0003
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


;----- TRISF Bits -----------------------------------------------------
TRISF0           .EQ  $0000
TRISF1           .EQ  $0001
TRISF2           .EQ  $0002
TRISF3           .EQ  $0003
TRISF4           .EQ  $0004
TRISF5           .EQ  $0005
TRISF6           .EQ  $0006
TRISF7           .EQ  $0007

RF0              .EQ  $0000
RF1              .EQ  $0001
RF2              .EQ  $0002
RF3              .EQ  $0003
RF4              .EQ  $0004
RF5              .EQ  $0005
RF6              .EQ  $0006
RF7              .EQ  $0007


;----- TRISG Bits -----------------------------------------------------
TRISG0           .EQ  $0000
TRISG1           .EQ  $0001
TRISG2           .EQ  $0002
TRISG3           .EQ  $0003
TRISG4           .EQ  $0004
TRISG6           .EQ  $0006
TRISG7           .EQ  $0007

RG0              .EQ  $0000
RG1              .EQ  $0001
RG2              .EQ  $0002
RG3              .EQ  $0003
RG4              .EQ  $0004
RG6              .EQ  $0006
RG7              .EQ  $0007


;----- TRISH Bits -----------------------------------------------------
TRISH0           .EQ  $0000
TRISH1           .EQ  $0001
TRISH2           .EQ  $0002
TRISH3           .EQ  $0003

RH0              .EQ  $0000
RH1              .EQ  $0001
RH2              .EQ  $0002
RH3              .EQ  $0003


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
RE4              .EQ  $0004
RE5              .EQ  $0005
RE6              .EQ  $0006
RE7              .EQ  $0007


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


;----- PORTH Bits -----------------------------------------------------
RH0              .EQ  $0000
RH1              .EQ  $0001
RH2              .EQ  $0002
RH3              .EQ  $0003


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


;----- BAUDCON1 Bits -----------------------------------------------------
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


;----- PWM7DCL Bits -----------------------------------------------------
DC0_PWM7DCL      .EQ  $0006
DC1_PWM7DCL      .EQ  $0007

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
POL              .EQ  $0004
OUT_PWM7CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM7POL          .EQ  $0004
PWM7OUT          .EQ  $0005
PWM7OE           .EQ  $0006
PWM7EN           .EQ  $0007


;----- PWM6DCL Bits -----------------------------------------------------
DC0_PWM6DCL      .EQ  $0006
DC1_PWM6DCL      .EQ  $0007

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
POL              .EQ  $0004
OUT_PWM6CON      .EQ  $0005
OE               .EQ  $0006
EN               .EQ  $0007

PWM6POL          .EQ  $0004
PWM6OUT          .EQ  $0005
PWM6OE           .EQ  $0006
PWM6EN           .EQ  $0007


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


;----- T6CON Bits -----------------------------------------------------
ON_T6CON         .EQ  $0007

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
CS0_T6CLKCON     .EQ  $0000
CS1_T6CLKCON     .EQ  $0001
CS2_T6CLKCON     .EQ  $0002
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


;----- T4CON Bits -----------------------------------------------------
ON_T4CON         .EQ  $0007

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
CS0_T4CLKCON     .EQ  $0000
CS1_T4CLKCON     .EQ  $0001
CS2_T4CLKCON     .EQ  $0002
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
CS0_T2CLKCON     .EQ  $0000
CS1_T2CLKCON     .EQ  $0001
CS2_T2CLKCON     .EQ  $0002
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

CS0_T5CLK        .EQ  $0000
CS1_T5CLK        .EQ  $0001
CS2_T5CLK        .EQ  $0002
CS3              .EQ  $0003


;----- TMR5CLK Bits -----------------------------------------------------
T5CS0            .EQ  $0000
T5CS1            .EQ  $0001
T5CS2            .EQ  $0002
T5CS3            .EQ  $0003

CS0_TMR5CLK      .EQ  $0000
CS1_TMR5CLK      .EQ  $0001
CS2_TMR5CLK      .EQ  $0002
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

CS0_T3CLK        .EQ  $0000
CS1_T3CLK        .EQ  $0001
CS2_T3CLK        .EQ  $0002
CS3              .EQ  $0003


;----- TMR3CLK Bits -----------------------------------------------------
T3CS0            .EQ  $0000
T3CS1            .EQ  $0001
T3CS2            .EQ  $0002
T3CS3            .EQ  $0003

CS0_TMR3CLK      .EQ  $0000
CS1_TMR3CLK      .EQ  $0001
CS2_TMR3CLK      .EQ  $0002
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

CS0_T1CLK        .EQ  $0000
CS1_T1CLK        .EQ  $0001
CS2_T1CLK        .EQ  $0002
CS3              .EQ  $0003


;----- TMR1CLK Bits -----------------------------------------------------
T1CS0            .EQ  $0000
T1CS1            .EQ  $0001
T1CS2            .EQ  $0002
T1CS3            .EQ  $0003

CS0_TMR1CLK      .EQ  $0000
CS1_TMR1CLK      .EQ  $0001
CS2_TMR1CLK      .EQ  $0002
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
INT3EDG          .EQ  $0003
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
;     RSTOSC = RESERVED    Reserved
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
;     BORV = VBOR_190      Brown-out Reset Voltage (VBOR) set to 1.90V
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
;     EBTR0 = ON           Block 0 (000800-001FFFh) protected from table reads executed in other blocks
;     EBTR0 = OFF          Block 0 (000800-001FFFh) not protected from table reads executed in other blocks
;
;   Table Read Protection Block 1:
;     EBTR1 = ON           Block 1 (002000-003FFFh) protected from table reads executed in other blocks
;     EBTR1 = OFF          Block 1 (002000-003FFFh) not protected from table reads executed in other blocks
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
_RSTOSC_RESERVED_1L  .EQ  $BF  Reserved
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
_BORV_VBOR_190_2H    .EQ  $FF  Brown-out Reset Voltage (VBOR) set to 1.90V

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
_EBTR0_ON_6L         .EQ  $FE  Block 0 (000800-001FFFh) protected from table reads executed in other blocks
_EBTR0_OFF_6L        .EQ  $FF  Block 0 (000800-001FFFh) not protected from table reads executed in other blocks

_EBTR1_ON_6L         .EQ  $FD  Block 1 (002000-003FFFh) protected from table reads executed in other blocks
_EBTR1_OFF_6L        .EQ  $FF  Block 1 (002000-003FFFh) not protected from table reads executed in other blocks

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
