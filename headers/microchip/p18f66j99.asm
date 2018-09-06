;==========================================================================
; Build date : Mar 21 2016
;  MPASM PIC18F66J99 processor include
;
;  (c) Copyright 1999-2016 Microchip Technology, All rights reserved
;==========================================================================

;==========================================================================
;  This header file defines configurations, registers, and other useful
;  bits of information for the PIC18F66J99 microcontroller.  These names
;  are taken to match the data sheets as closely as possible.
;==========================================================================

;==========================================================================
;
;       Select cross overlay
;
;==========================================================================

                  .CR   pic16
                  .MS   49152

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
UEP0             .EQ  $0DFF
UEP1             .EQ  $0E00
UEP2             .EQ  $0E01
UEP3             .EQ  $0E02
UEP4             .EQ  $0E03
UEP5             .EQ  $0E04
UEP6             .EQ  $0E05
UEP7             .EQ  $0E06
UEP8             .EQ  $0E07
UEP9             .EQ  $0E08
UEP10            .EQ  $0E09
UEP11            .EQ  $0E0A
UEP12            .EQ  $0E0B
UEP13            .EQ  $0E0C
UEP14            .EQ  $0E0D
UEP15            .EQ  $0E0E
UEIE             .EQ  $0E0F
UIE              .EQ  $0E10
UCFG             .EQ  $0E11
RPOR0_1          .EQ  $0E12
RPOR2_3          .EQ  $0E13
RPOR4_5          .EQ  $0E14
RPOR6_7          .EQ  $0E15
RPOR8_9          .EQ  $0E16
RPOR10_11        .EQ  $0E17
RPOR12_13        .EQ  $0E18
RPOR14_15        .EQ  $0E19
RPOR16_17        .EQ  $0E1A
RPOR18_19        .EQ  $0E1B
RPOR20_21        .EQ  $0E1C
RPOR22_23        .EQ  $0E1D
RPOR24_25        .EQ  $0E1E
RPOR26_27        .EQ  $0E1F
RPOR28_29        .EQ  $0E20
RPOR30_31        .EQ  $0E21
RPOR32_33        .EQ  $0E22
RPOR34_35        .EQ  $0E23
RPOR36_37        .EQ  $0E24
RPOR38_39        .EQ  $0E25
RPOR40_41        .EQ  $0E26
RPOR42_43        .EQ  $0E27
RPOR44_45        .EQ  $0E28
RPOR46           .EQ  $0E29
RPINR0_1         .EQ  $0E2A
RPINR2_3         .EQ  $0E2B
RPINR4_5         .EQ  $0E2C
RPINR6_7         .EQ  $0E2D
RPINR8_9         .EQ  $0E2E
RPINR10_11       .EQ  $0E2F
RPINR12_13       .EQ  $0E30
RPINR14_15       .EQ  $0E31
RPINR16_17       .EQ  $0E32
RPINR18_19       .EQ  $0E33
RPINR20_21       .EQ  $0E34
RPINR22_23       .EQ  $0E35
RPINR24_25       .EQ  $0E36
RPINR26_27       .EQ  $0E37
RPINR28_29       .EQ  $0E38
RPINR30_31       .EQ  $0E39
RPINR32_33       .EQ  $0E3A
RPINR34_35       .EQ  $0E3B
RPINR36_37       .EQ  $0E3C
RPINR38_39       .EQ  $0E3D
RPINR40_41       .EQ  $0E3E
RPINR42_43       .EQ  $0E3F
RPINR44_45       .EQ  $0E40
RPINR46_47       .EQ  $0E41
RPINR48_49       .EQ  $0E42
RPINR50_51       .EQ  $0E43
RPINR52_53       .EQ  $0E44
ANCON3           .EQ  $0E45
ANCON2           .EQ  $0E46
ANCON1           .EQ  $0E47
ADCBUF1          .EQ  $0E48
ADCBUF1L         .EQ  $0E48
ADCBUF1H         .EQ  $0E49
ADCBUF2          .EQ  $0E4A
ADCBUF2L         .EQ  $0E4A
ADCBUF2H         .EQ  $0E4B
ADCBUF3          .EQ  $0E4C
ADCBUF3L         .EQ  $0E4C
ADCBUF3H         .EQ  $0E4D
ADCBUF4          .EQ  $0E4E
ADCBUF4L         .EQ  $0E4E
ADCBUF4H         .EQ  $0E4F
ADCBUF5          .EQ  $0E50
ADCBUF5L         .EQ  $0E50
ADCBUF5H         .EQ  $0E51
ADCBUF6          .EQ  $0E52
ADCBUF6L         .EQ  $0E52
ADCBUF6H         .EQ  $0E53
ADCBUF7          .EQ  $0E54
ADCBUF7L         .EQ  $0E54
ADCBUF7H         .EQ  $0E55
ADCBUF8          .EQ  $0E56
ADCBUF8L         .EQ  $0E56
ADCBUF8H         .EQ  $0E57
ADCBUF9          .EQ  $0E58
ADCBUF9L         .EQ  $0E58
ADCBUF9H         .EQ  $0E59
ADCBUF10         .EQ  $0E5A
ADCBUF10L        .EQ  $0E5A
ADCBUF10H        .EQ  $0E5B
ADCBUF11         .EQ  $0E5C
ADCBUF11L        .EQ  $0E5C
ADCBUF11H        .EQ  $0E5D
ADCBUF12         .EQ  $0E5E
ADCBUF12L        .EQ  $0E5E
ADCBUF12H        .EQ  $0E5F
ADCBUF13         .EQ  $0E60
ADCBUF13L        .EQ  $0E60
ADCBUF13H        .EQ  $0E61
ADCBUF14         .EQ  $0E62
ADCBUF14L        .EQ  $0E62
ADCBUF14H        .EQ  $0E63
ADCBUF15         .EQ  $0E64
ADCBUF15L        .EQ  $0E64
ADCBUF15H        .EQ  $0E65
ADCBUF16         .EQ  $0E66
ADCBUF16L        .EQ  $0E66
ADCBUF16H        .EQ  $0E67
ADCBUF17         .EQ  $0E68
ADCBUF17L        .EQ  $0E68
ADCBUF17H        .EQ  $0E69
ADCBUF18         .EQ  $0E6A
ADCBUF18L        .EQ  $0E6A
ADCBUF18H        .EQ  $0E6B
ADCBUF19         .EQ  $0E6C
ADCBUF19L        .EQ  $0E6C
ADCBUF19H        .EQ  $0E6D
ADCBUF20         .EQ  $0E6E
ADCBUF20L        .EQ  $0E6E
ADCBUF20H        .EQ  $0E6F
ADCBUF21         .EQ  $0E70
ADCBUF21L        .EQ  $0E70
ADCBUF21H        .EQ  $0E71
ADCBUF22         .EQ  $0E72
ADCBUF22L        .EQ  $0E72
ADCBUF22H        .EQ  $0E73
ADCBUF23         .EQ  $0E74
ADCBUF23L        .EQ  $0E74
ADCBUF23H        .EQ  $0E75
ADCBUF24         .EQ  $0E76
ADCBUF24L        .EQ  $0E76
ADCBUF24H        .EQ  $0E77
ADCBUF25         .EQ  $0E78
ADCBUF25L        .EQ  $0E78
ADCBUF25H        .EQ  $0E79
ADCTMUEN0L       .EQ  $0E7A
ADCTMUEN0H       .EQ  $0E7B
ADCTMUEN1L       .EQ  $0E7C
ADCTMUEN1H       .EQ  $0E7D
ADCHIT0L         .EQ  $0E7E
ADCHIT0H         .EQ  $0E7F
ADCHIT1L         .EQ  $0E80
ADCHIT1H         .EQ  $0E81
ADCSS0L          .EQ  $0E82
ADCSS0H          .EQ  $0E83
ADCSS1L          .EQ  $0E84
ADCSS1H          .EQ  $0E85
ADCHS0L          .EQ  $0E86
ADCHS0H          .EQ  $0E87
ADCON5L          .EQ  $0E88
ADCON5H          .EQ  $0E89
ADCON3L          .EQ  $0E8A
ADCON3H          .EQ  $0E8B
ADCON2L          .EQ  $0E8C
ADCON2H          .EQ  $0E8D
LCDDATA0         .EQ  $0E8E
LCDDATA1         .EQ  $0E8F
LCDDATA2         .EQ  $0E90
LCDDATA3         .EQ  $0E91
LCDDATA4         .EQ  $0E92
LCDDATA5         .EQ  $0E93
LCDDATA6         .EQ  $0E94
LCDDATA7         .EQ  $0E95
LCDDATA8         .EQ  $0E96
LCDDATA9         .EQ  $0E97
LCDDATA10        .EQ  $0E98
LCDDATA11        .EQ  $0E99
LCDDATA12        .EQ  $0E9A
LCDDATA13        .EQ  $0E9B
LCDDATA14        .EQ  $0E9C
LCDDATA15        .EQ  $0E9D
LCDDATA16        .EQ  $0E9E
LCDDATA17        .EQ  $0E9F
LCDDATA18        .EQ  $0EA0
LCDDATA19        .EQ  $0EA1
LCDDATA20        .EQ  $0EA2
LCDDATA21        .EQ  $0EA3
LCDDATA22        .EQ  $0EA4
LCDDATA23        .EQ  $0EA5
LCDDATA24        .EQ  $0EA6
LCDDATA25        .EQ  $0EA7
LCDDATA26        .EQ  $0EA8
LCDDATA27        .EQ  $0EA9
LCDDATA28        .EQ  $0EAA
LCDDATA29        .EQ  $0EAB
LCDDATA30        .EQ  $0EAC
LCDDATA31        .EQ  $0EAD
LCDDATA32        .EQ  $0EAE
LCDDATA33        .EQ  $0EAF
LCDDATA34        .EQ  $0EB0
LCDDATA35        .EQ  $0EB1
LCDDATA36        .EQ  $0EB2
LCDDATA37        .EQ  $0EB3
LCDDATA38        .EQ  $0EB4
LCDDATA39        .EQ  $0EB5
LCDDATA40        .EQ  $0EB6
LCDDATA41        .EQ  $0EB7
LCDDATA42        .EQ  $0EB8
LCDDATA43        .EQ  $0EB9
LCDDATA44        .EQ  $0EBA
LCDDATA45        .EQ  $0EBB
LCDDATA46        .EQ  $0EBC
LCDDATA47        .EQ  $0EBD
LCDDATA48        .EQ  $0EBE
LCDDATA49        .EQ  $0EBF
LCDDATA50        .EQ  $0EC0
LCDDATA51        .EQ  $0EC1
LCDDATA52        .EQ  $0EC2
LCDDATA53        .EQ  $0EC3
LCDDATA54        .EQ  $0EC4
LCDDATA55        .EQ  $0EC5
LCDDATA56        .EQ  $0EC6
LCDDATA57        .EQ  $0EC7
LCDDATA58        .EQ  $0EC8
LCDDATA59        .EQ  $0EC9
LCDDATA60        .EQ  $0ECA
LCDDATA61        .EQ  $0ECB
LCDDATA62        .EQ  $0ECC
LCDDATA63        .EQ  $0ECD
LCDSE0           .EQ  $0ECE
LCDSE1           .EQ  $0ECF
LCDSE2           .EQ  $0ED0
LCDSE3           .EQ  $0ED1
LCDSE4           .EQ  $0ED2
LCDSE5           .EQ  $0ED3
LCDSE6           .EQ  $0ED4
LCDSE7           .EQ  $0ED5
LCDRL            .EQ  $0ED6
LCDREF           .EQ  $0ED7
LCDREG           .EQ  $0ED8
LCDCON           .EQ  $0ED9
LCDPS            .EQ  $0EDA
REFO2CON3        .EQ  $0EDB
REFO2CON2        .EQ  $0EDC
REFO2CON1        .EQ  $0EDD
REFO2CON         .EQ  $0EDE
REFO1CON3        .EQ  $0EDF
REFO1CON2        .EQ  $0EE0
REFO1CON1        .EQ  $0EE1
REFO1CON         .EQ  $0EE2
ODCON2           .EQ  $0EEA
ODCON1           .EQ  $0EEB
MDCARL           .EQ  $0EEC
MDCARH           .EQ  $0EED
MDSRC            .EQ  $0EEE
MDCON            .EQ  $0EEF
PMD4             .EQ  $0EF0
PMD3             .EQ  $0EF1
PMD2             .EQ  $0EF2
PMD1             .EQ  $0EF3
PMD0             .EQ  $0EF4
CTMUCON4         .EQ  $0EF5
CTMUCON3         .EQ  $0EF6
CTMUCON2         .EQ  $0EF7
CTMUCON1         .EQ  $0EF8
TXREG4           .EQ  $0EF9
RCREG4           .EQ  $0EFA
SPBRG4           .EQ  $0EFB
SPBRGH4          .EQ  $0EFC
BAUDCON4         .EQ  $0EFD
TXSTA4           .EQ  $0EFE
RCSTA4           .EQ  $0EFF
DMACON2          .EQ  $0F00
ANCFG            .EQ  $0F01
SSP2ADD          .EQ  $0F02
SSP2BUF          .EQ  $0F03
T4CON            .EQ  $0F04
PR4              .EQ  $0F05
TMR4             .EQ  $0F06
CCP7CON          .EQ  $0F07
CCPR7            .EQ  $0F08
CCPR7L           .EQ  $0F08
CCPR7H           .EQ  $0F09
CCP6CON          .EQ  $0F0A
CCPR6            .EQ  $0F0B
CCPR6L           .EQ  $0F0B
CCPR6H           .EQ  $0F0C
CCP5CON          .EQ  $0F0D
CCPR5            .EQ  $0F0E
CCPR5L           .EQ  $0F0E
CCPR5H           .EQ  $0F0F
CCP4CON          .EQ  $0F10
CCPR4            .EQ  $0F11
CCPR4L           .EQ  $0F11
CCPR4H           .EQ  $0F12
T5GCON           .EQ  $0F13
T5CON            .EQ  $0F14
TMR5             .EQ  $0F15
TMR5L            .EQ  $0F15
TMR5H            .EQ  $0F16
SSP2MSK          .EQ  $0F17
SSP2CON2         .EQ  $0F18
SSP2CON1         .EQ  $0F19
SSP2STAT         .EQ  $0F1A
PSTR3CON         .EQ  $0F1B
PSTR2CON         .EQ  $0F1C
TXREG2           .EQ  $0F1D
RCREG2           .EQ  $0F1E
SPBRG2           .EQ  $0F1F
SPBRGH2          .EQ  $0F20
DSGPR3           .EQ  $0F21
DSGPR2           .EQ  $0F22
DSGPR1           .EQ  $0F23
DSGPR0           .EQ  $0F24
DSWAKEH          .EQ  $0F25
DSWAKEL          .EQ  $0F26
DSCONH           .EQ  $0F27
DSCONL           .EQ  $0F28
TXREG3           .EQ  $0F29
RCREG3           .EQ  $0F2A
SPBRG3           .EQ  $0F2B
SPBRGH3          .EQ  $0F2C
BAUDCON3         .EQ  $0F2D
TXSTA3           .EQ  $0F2E
RCSTA3           .EQ  $0F2F
SPBRGH           .EQ  $0F30
SPBRGH1          .EQ  $0F30
BAUDCON2         .EQ  $0F31
TXSTA2           .EQ  $0F32
RCSTA2           .EQ  $0F33
CCPTMRS2         .EQ  $0F34
CCPTMRS1         .EQ  $0F35
CCPTMRS0         .EQ  $0F36
CM3CON           .EQ  $0F37
CM2CON           .EQ  $0F38
SSP2CON3         .EQ  $0F39
T8CON            .EQ  $0F3A
PR8              .EQ  $0F3B
TMR8             .EQ  $0F3C
T6CON            .EQ  $0F3D
PR6              .EQ  $0F3E
TMR6             .EQ  $0F3F
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
ECCP3AS          .EQ  $0F4D
CCP2CON          .EQ  $0F4E
CCPR2            .EQ  $0F4F
CCPR2L           .EQ  $0F4F
CCPR2H           .EQ  $0F50
ECCP2DEL         .EQ  $0F51
ECCP2AS          .EQ  $0F52
CM1CON           .EQ  $0F53
PADCFG1          .EQ  $0F54
IOCN             .EQ  $0F55
IOCP             .EQ  $0F56
RTCCON2          .EQ  $0F57
ALRMVALL         .EQ  $0F58
ALRMVALH         .EQ  $0F59
ALRMRPT          .EQ  $0F5A
ALRMCFG          .EQ  $0F5B
RTCVALL          .EQ  $0F5C
RTCVALH          .EQ  $0F5D
RTCCAL           .EQ  $0F5E
RTCCON1          .EQ  $0F5F
DMACON1          .EQ  $0F60
PIE6             .EQ  $0F61
WPUB             .EQ  $0F62
ACTCON           .EQ  $0F63
OSCCON4          .EQ  $0F64
OSCCON3          .EQ  $0F65
OSCCON2          .EQ  $0F66
BAUDCON          .EQ  $0F67
BAUDCON1         .EQ  $0F67
SSP1MSK          .EQ  $0F68
SSP1CON3         .EQ  $0F69
TXBUF            .EQ  $0F6A
DMABCH           .EQ  $0F6B
DMABCL           .EQ  $0F6C
RXADDRH          .EQ  $0F6D
RXADDRL          .EQ  $0F6E
TXADDRH          .EQ  $0F6F
TXADDRL          .EQ  $0F70
PORTVP           .EQ  $0F71
LATVP            .EQ  $0F72
TRISVP           .EQ  $0F73
UADDR            .EQ  $0F74
UCON             .EQ  $0F75
USTAT            .EQ  $0F76
UEIR             .EQ  $0F77
UIR              .EQ  $0F78
UFRM             .EQ  $0F79
UFRMH            .EQ  $0F79
UFRML            .EQ  $0F7A
RCON4            .EQ  $0F7B
RCON3            .EQ  $0F7C
RCON2            .EQ  $0F7D
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
PSPCON           .EQ  $0FA7
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
PIE4             .EQ  $0FB4
PIR4             .EQ  $0FB5
IPR4             .EQ  $0FB6
PIE5             .EQ  $0FB7
PIR5             .EQ  $0FB8
CCP1CON          .EQ  $0FB9
CCPR1            .EQ  $0FBA
CCPR1L           .EQ  $0FBA
CCPR1H           .EQ  $0FBB
ECCP1DEL         .EQ  $0FBC
ECCP1AS          .EQ  $0FBD
CVRCONL          .EQ  $0FBE
CVRCONH          .EQ  $0FBF
ADCON1L          .EQ  $0FC0
ADCON1H          .EQ  $0FC1
ADCBUF0          .EQ  $0FC2
ADCBUF0L         .EQ  $0FC2
ADCBUF0H         .EQ  $0FC3
CMSTAT           .EQ  $0FC4
SSP1CON2         .EQ  $0FC5
SSP1CON1         .EQ  $0FC6
SSP1STAT         .EQ  $0FC7
SSP1ADD          .EQ  $0FC8
SSP1BUF          .EQ  $0FC9
T2CON            .EQ  $0FCA
PR2              .EQ  $0FCB
TMR2             .EQ  $0FCC
T1CON            .EQ  $0FCD
TMR1             .EQ  $0FCE
TMR1L            .EQ  $0FCE
TMR1H            .EQ  $0FCF
RCON             .EQ  $0FD0
IOCF             .EQ  $0FD1
IPR5             .EQ  $0FD2
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

;----- UEP0 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP1 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP2 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP3 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP4 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP5 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP6 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP7 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP8 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP9 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP10 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP11 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP12 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP13 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP14 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEP15 Bits -----------------------------------------------------
EPSTALL          .EQ  $0000
EPINEN           .EQ  $0001
EPOUTEN          .EQ  $0002
EPCONDIS         .EQ  $0003
EPHSHK           .EQ  $0004


;----- UEIE Bits -----------------------------------------------------
PIDEE            .EQ  $0000
CRC5EE           .EQ  $0001
CRC16EE          .EQ  $0002
DFN8EE           .EQ  $0003
BTOEE            .EQ  $0004
BTSEE            .EQ  $0007


;----- UIE Bits -----------------------------------------------------
URSTIE           .EQ  $0000
UERRIE           .EQ  $0001
ACTVIE           .EQ  $0002
TRNIE            .EQ  $0003
IDLEIE           .EQ  $0004
STALLIE          .EQ  $0005
SOFIE            .EQ  $0006


;----- UCFG Bits -----------------------------------------------------
PPB0             .EQ  $0000
PPB1             .EQ  $0001
FSEN             .EQ  $0002
UTRDIS           .EQ  $0003
UPUEN            .EQ  $0004
UOEMON           .EQ  $0006
UTEYE            .EQ  $0007


;----- RPOR0_1 Bits -----------------------------------------------------
RPO0R0           .EQ  $0000
RPO0R1           .EQ  $0001
RPO0R2           .EQ  $0002
RPO0R3           .EQ  $0003
RPO1R0           .EQ  $0004
RPO1R1           .EQ  $0005
RPO1R2           .EQ  $0006
RPO1R3           .EQ  $0007


;----- RPOR2_3 Bits -----------------------------------------------------
RPO2R0           .EQ  $0000
RPO2R1           .EQ  $0001
RPO2R2           .EQ  $0002
RPO2R3           .EQ  $0003
RPO3R0           .EQ  $0004
RPO3R1           .EQ  $0005
RPO3R2           .EQ  $0006
RPO3R3           .EQ  $0007


;----- RPOR4_5 Bits -----------------------------------------------------
RPO4R0           .EQ  $0000
RPO4R1           .EQ  $0001
RPO4R2           .EQ  $0002
RPO4R3           .EQ  $0003
RPO5R0           .EQ  $0004
RPO5R1           .EQ  $0005
RPO5R2           .EQ  $0006
RPO5R3           .EQ  $0007


;----- RPOR6_7 Bits -----------------------------------------------------
RPO6R0           .EQ  $0000
RPO6R1           .EQ  $0001
RPO6R2           .EQ  $0002
RPO6R3           .EQ  $0003
RPO7R0           .EQ  $0004
RPO7R1           .EQ  $0005
RPO7R2           .EQ  $0006
RPO7R3           .EQ  $0007


;----- RPOR8_9 Bits -----------------------------------------------------
RPO8R0           .EQ  $0000
RPO8R1           .EQ  $0001
RPO8R2           .EQ  $0002
RPO8R3           .EQ  $0003
RPO9R0           .EQ  $0004
RPO9R1           .EQ  $0005
RPO9R2           .EQ  $0006
RPO9R3           .EQ  $0007


;----- RPOR10_11 Bits -----------------------------------------------------
RPO10R0          .EQ  $0000
RPO10R1          .EQ  $0001
RPO10R2          .EQ  $0002
RPO10R3          .EQ  $0003
RPO11R0          .EQ  $0004
RPO11R1          .EQ  $0005
RPO11R2          .EQ  $0006
RPO11R3          .EQ  $0007


;----- RPOR12_13 Bits -----------------------------------------------------
RPO12R0          .EQ  $0000
RPO12R1          .EQ  $0001
RPO12R2          .EQ  $0002
RPO12R3          .EQ  $0003
RPO13R0          .EQ  $0004
RPO13R1          .EQ  $0005
RPO13R2          .EQ  $0006
RPO13R3          .EQ  $0007


;----- RPOR14_15 Bits -----------------------------------------------------
RPO14R0          .EQ  $0000
RPO14R1          .EQ  $0001
RPO14R2          .EQ  $0002
RPO14R3          .EQ  $0003
RPO15R0          .EQ  $0004
RPO15R1          .EQ  $0005
RPO15R2          .EQ  $0006
RPO15R3          .EQ  $0007


;----- RPOR16_17 Bits -----------------------------------------------------
RPO16R0          .EQ  $0000
RPO16R1          .EQ  $0001
RPO16R2          .EQ  $0002
RPO16R3          .EQ  $0003
RPO17R0          .EQ  $0004
RPO17R1          .EQ  $0005
RPO17R2          .EQ  $0006
RPO17R3          .EQ  $0007


;----- RPOR18_19 Bits -----------------------------------------------------
RPO18R0          .EQ  $0000
RPO18R1          .EQ  $0001
RPO18R2          .EQ  $0002
RPO18R3          .EQ  $0003
RPO19R0          .EQ  $0004
RPO19R1          .EQ  $0005
RPO19R2          .EQ  $0006
RPO19R3          .EQ  $0007


;----- RPOR20_21 Bits -----------------------------------------------------
RPO20R0          .EQ  $0000
RPO20R1          .EQ  $0001
RPO20R2          .EQ  $0002
RPO20R3          .EQ  $0003
RPO21R0          .EQ  $0004
RPO21R1          .EQ  $0005
RPO21R2          .EQ  $0006
RPO21R3          .EQ  $0007


;----- RPOR22_23 Bits -----------------------------------------------------
RPO22R0          .EQ  $0000
RPO22R1          .EQ  $0001
RPO22R2          .EQ  $0002
RPO22R3          .EQ  $0003
RPO23R0          .EQ  $0004
RPO23R1          .EQ  $0005
RPO23R2          .EQ  $0006
RPO23R3          .EQ  $0007


;----- RPOR24_25 Bits -----------------------------------------------------
RPO24R0          .EQ  $0000
RPO24R1          .EQ  $0001
RPO24R2          .EQ  $0002
RPO24R3          .EQ  $0003
RPO25R0          .EQ  $0004
RPO25R1          .EQ  $0005
RPO25R2          .EQ  $0006
RPO25R3          .EQ  $0007


;----- RPOR26_27 Bits -----------------------------------------------------
RPO26R0          .EQ  $0000
RPO26R1          .EQ  $0001
RPO26R2          .EQ  $0002
RPO26R3          .EQ  $0003
RPO27R0          .EQ  $0004
RPO27R1          .EQ  $0005
RPO27R2          .EQ  $0006
RPO27R3          .EQ  $0007


;----- RPOR28_29 Bits -----------------------------------------------------
RPO28R0          .EQ  $0000
RPO28R1          .EQ  $0001
RPO28R2          .EQ  $0002
RPO28R3          .EQ  $0003
RPO29R0          .EQ  $0004
RPO29R1          .EQ  $0005
RPO29R2          .EQ  $0006
RPO29R3          .EQ  $0007


;----- RPOR30_31 Bits -----------------------------------------------------
RPO30R0          .EQ  $0000
RPO30R1          .EQ  $0001
RPO30R2          .EQ  $0002
RPO30R3          .EQ  $0003
RPO31R0          .EQ  $0004
RPO31R1          .EQ  $0005
RPO31R2          .EQ  $0006
RPO31R3          .EQ  $0007


;----- RPOR32_33 Bits -----------------------------------------------------
RPO32R0          .EQ  $0000
RPO32R1          .EQ  $0001
RPO32R2          .EQ  $0002
RPO32R3          .EQ  $0003
RPO33R0          .EQ  $0004
RPO33R1          .EQ  $0005
RPO33R2          .EQ  $0006
RPO33R3          .EQ  $0007


;----- RPOR34_35 Bits -----------------------------------------------------
RPO34R0          .EQ  $0000
RPO34R1          .EQ  $0001
RPO34R2          .EQ  $0002
RPO34R3          .EQ  $0003
RPO35R0          .EQ  $0004
RPO35R1          .EQ  $0005
RPO35R2          .EQ  $0006
RPO35R3          .EQ  $0007


;----- RPOR36_37 Bits -----------------------------------------------------
RPO36R0          .EQ  $0000
RPO36R1          .EQ  $0001
RPO36R2          .EQ  $0002
RPO36R3          .EQ  $0003
RPO37R0          .EQ  $0004
RPO37R1          .EQ  $0005
RPO37R2          .EQ  $0006
RPO37R3          .EQ  $0007


;----- RPOR38_39 Bits -----------------------------------------------------
RPO38R0          .EQ  $0000
RPO38R1          .EQ  $0001
RPO38R2          .EQ  $0002
RPO38R3          .EQ  $0003
RPO39R0          .EQ  $0004
RPO39R1          .EQ  $0005
RPO39R2          .EQ  $0006
RPO39R3          .EQ  $0007


;----- RPOR40_41 Bits -----------------------------------------------------
RPO40R0          .EQ  $0000
RPO40R1          .EQ  $0001
RPO40R2          .EQ  $0002
RPO40R3          .EQ  $0003
RPO41R0          .EQ  $0004
RPO41R1          .EQ  $0005
RPO41R2          .EQ  $0006
RPO41R3          .EQ  $0007


;----- RPOR42_43 Bits -----------------------------------------------------
RPO42R0          .EQ  $0000
RPO42R1          .EQ  $0001
RPO42R2          .EQ  $0002
RPO42R3          .EQ  $0003
RPO43R0          .EQ  $0004
RPO43R1          .EQ  $0005
RPO43R2          .EQ  $0006
RPO43R3          .EQ  $0007


;----- RPOR44_45 Bits -----------------------------------------------------
RPO44R0          .EQ  $0000
RPO44R1          .EQ  $0001
RPO44R2          .EQ  $0002
RPO44R3          .EQ  $0003
RPO45R0          .EQ  $0004
RPO45R1          .EQ  $0005
RPO45R2          .EQ  $0006
RPO45R3          .EQ  $0007


;----- RPOR46 Bits -----------------------------------------------------
RPO46R0          .EQ  $0000
RPO46R1          .EQ  $0001
RPO46R2          .EQ  $0002
RPO46R3          .EQ  $0003


;----- RPINR0_1 Bits -----------------------------------------------------
U1RXR0           .EQ  $0000
U1RXR1           .EQ  $0001
U1RXR2           .EQ  $0002
U1RXR3           .EQ  $0003
U1TXR0           .EQ  $0004
U1TXR1           .EQ  $0005
U1TXR2           .EQ  $0006
U1TXR3           .EQ  $0007


;----- RPINR2_3 Bits -----------------------------------------------------
U2RXR0           .EQ  $0000
U2RXR1           .EQ  $0001
U2RXR2           .EQ  $0002
U2RXR3           .EQ  $0003
U2TXR0           .EQ  $0004
U2TXR1           .EQ  $0005
U2TXR2           .EQ  $0006
U2TXR3           .EQ  $0007


;----- RPINR4_5 Bits -----------------------------------------------------
U3RXR0           .EQ  $0000
U3RXR1           .EQ  $0001
U3RXR2           .EQ  $0002
U3RXR3           .EQ  $0003
U3TXR0           .EQ  $0004
U3TXR1           .EQ  $0005
U3TXR2           .EQ  $0006
U3TXR3           .EQ  $0007


;----- RPINR6_7 Bits -----------------------------------------------------
U4RXR0           .EQ  $0000
U4RXR1           .EQ  $0001
U4RXR2           .EQ  $0002
U4RXR3           .EQ  $0003
U4TXR0           .EQ  $0004
U4TXR1           .EQ  $0005
U4TXR2           .EQ  $0006
U4TXR3           .EQ  $0007


;----- RPINR8_9 Bits -----------------------------------------------------
SCK1R0           .EQ  $0000
SCK1R1           .EQ  $0001
SCK1R2           .EQ  $0002
SCK1R3           .EQ  $0003
SDI1R0           .EQ  $0004
SDI1R1           .EQ  $0005
SDI1R2           .EQ  $0006
SDI1R3           .EQ  $0007


;----- RPINR10_11 Bits -----------------------------------------------------
SS1R0            .EQ  $0000
SS1R1            .EQ  $0001
SS1R2            .EQ  $0002
SS1R3            .EQ  $0003
SCK2R0           .EQ  $0004
SCK2R1           .EQ  $0005
SCK2R2           .EQ  $0006
SCK2R3           .EQ  $0007


;----- RPINR12_13 Bits -----------------------------------------------------
SDI2R0           .EQ  $0000
SDI2R1           .EQ  $0001
SDI2R2           .EQ  $0002
SDI2R3           .EQ  $0003
SS2R0            .EQ  $0004
SS2R1            .EQ  $0005
SS2R2            .EQ  $0006
SS2R3            .EQ  $0007


;----- RPINR14_15 Bits -----------------------------------------------------
FLT0R0           .EQ  $0000
FLT0R1           .EQ  $0001
FLT0R2           .EQ  $0002
FLT0R3           .EQ  $0003
ECCP1R0          .EQ  $0004
ECCP1R1          .EQ  $0005
ECCP1R2          .EQ  $0006
ECCP1R3          .EQ  $0007


;----- RPINR16_17 Bits -----------------------------------------------------
ECCP2R0          .EQ  $0000
ECCP2R1          .EQ  $0001
ECCP2R2          .EQ  $0002
ECCP2R3          .EQ  $0003
ECCP3R0          .EQ  $0004
ECCP3R1          .EQ  $0005
ECCP3R2          .EQ  $0006
ECCP3R3          .EQ  $0007


;----- RPINR18_19 Bits -----------------------------------------------------
IOC0R0           .EQ  $0000
IOC0R1           .EQ  $0001
IOC0R2           .EQ  $0002
IOC0R3           .EQ  $0003
IOC1R0           .EQ  $0004
IOC1R1           .EQ  $0005
IOC1R2           .EQ  $0006
IOC1R3           .EQ  $0007


;----- RPINR20_21 Bits -----------------------------------------------------
IOC2R0           .EQ  $0000
IOC2R1           .EQ  $0001
IOC2R2           .EQ  $0002
IOC2R3           .EQ  $0003
IOC3R0           .EQ  $0004
IOC3R1           .EQ  $0005
IOC3R2           .EQ  $0006
IOC3R3           .EQ  $0007


;----- RPINR22_23 Bits -----------------------------------------------------
IOC4R0           .EQ  $0000
IOC4R1           .EQ  $0001
IOC4R2           .EQ  $0002
IOC4R3           .EQ  $0003
IOC5R0           .EQ  $0004
IOC5R1           .EQ  $0005
IOC5R2           .EQ  $0006
IOC5R3           .EQ  $0007


;----- RPINR24_25 Bits -----------------------------------------------------
IOC6R0           .EQ  $0000
IOC6R1           .EQ  $0001
IOC6R2           .EQ  $0002
IOC6R3           .EQ  $0003
IOC7R0           .EQ  $0004
IOC7R1           .EQ  $0005
IOC7R2           .EQ  $0006
IOC7R3           .EQ  $0007


;----- RPINR26_27 Bits -----------------------------------------------------
INT1R0           .EQ  $0000
INT1R1           .EQ  $0001
INT1R2           .EQ  $0002
INT1R3           .EQ  $0003
INT2R0           .EQ  $0004
INT2R1           .EQ  $0005
INT2R2           .EQ  $0006
INT2R3           .EQ  $0007


;----- RPINR28_29 Bits -----------------------------------------------------
INT3R0           .EQ  $0000
INT3R1           .EQ  $0001
INT3R2           .EQ  $0002
INT3R3           .EQ  $0003
MDMINR0          .EQ  $0004
MDMINR1          .EQ  $0005
MDMINR2          .EQ  $0006
MDMINR3          .EQ  $0007


;----- RPINR30_31 Bits -----------------------------------------------------
MDCIN1R0         .EQ  $0000
MDCIN1R1         .EQ  $0001
MDCIN1R2         .EQ  $0002
MDCIN1R3         .EQ  $0003
MDCIN2R0         .EQ  $0004
MDCIN2R1         .EQ  $0005
MDCIN2R2         .EQ  $0006
MDCIN2R3         .EQ  $0007


;----- RPINR32_33 Bits -----------------------------------------------------
CCP4R0           .EQ  $0000
CCP4R1           .EQ  $0001
CCP4R2           .EQ  $0002
CCP4R3           .EQ  $0003
CCP5R0           .EQ  $0004
CCP5R1           .EQ  $0005
CCP5R2           .EQ  $0006
CCP5R3           .EQ  $0007


;----- RPINR34_35 Bits -----------------------------------------------------
CCP6R0           .EQ  $0000
CCP6R1           .EQ  $0001
CCP6R2           .EQ  $0002
CCP6R3           .EQ  $0003
CCP7R0           .EQ  $0004
CCP7R1           .EQ  $0005
CCP7R2           .EQ  $0006
CCP7R3           .EQ  $0007


;----- RPINR36_37 Bits -----------------------------------------------------
CCP8R0           .EQ  $0000
CCP8R1           .EQ  $0001
CCP8R2           .EQ  $0002
CCP8R3           .EQ  $0003
CCP9R0           .EQ  $0004
CCP9R1           .EQ  $0005
CCP9R2           .EQ  $0006
CCP9R3           .EQ  $0007


;----- RPINR38_39 Bits -----------------------------------------------------
CCP10R0          .EQ  $0000
CCP10R1          .EQ  $0001
CCP10R2          .EQ  $0002
CCP10R3          .EQ  $0003
T0CKIR0          .EQ  $0004
T0CKIR1          .EQ  $0005
T0CKIR2          .EQ  $0006
T0CKIR3          .EQ  $0007


;----- RPINR40_41 Bits -----------------------------------------------------
T1GR0            .EQ  $0000
T1GR1            .EQ  $0001
T1GR2            .EQ  $0002
T1GR3            .EQ  $0003
T1CKIR0          .EQ  $0004
T1CKIR1          .EQ  $0005
T1CKIR2          .EQ  $0006
T1CKIR3          .EQ  $0007


;----- RPINR42_43 Bits -----------------------------------------------------
T3GR0            .EQ  $0000
T3GR1            .EQ  $0001
T3GR2            .EQ  $0002
T3GR3            .EQ  $0003
T3CKIR0          .EQ  $0004
T3CKIR1          .EQ  $0005
T3CKIR2          .EQ  $0006
T3CKIR3          .EQ  $0007


;----- RPINR44_45 Bits -----------------------------------------------------
T5GR0            .EQ  $0000
T5GR1            .EQ  $0001
T5GR2            .EQ  $0002
T5GR3            .EQ  $0003
T5CKIR0          .EQ  $0004
T5CKIR1          .EQ  $0005
T5CKIR2          .EQ  $0006
T5CKIR3          .EQ  $0007


;----- RPINR46_47 Bits -----------------------------------------------------
PBIO0R0          .EQ  $0000
PBIO0R1          .EQ  $0001
PBIO0R2          .EQ  $0002
PBIO0R3          .EQ  $0003
PBIO1R0          .EQ  $0004
PBIO1R1          .EQ  $0005
PBIO1R2          .EQ  $0006
PBIO1R3          .EQ  $0007


;----- RPINR48_49 Bits -----------------------------------------------------
PBIO2R0          .EQ  $0000
PBIO2R1          .EQ  $0001
PBIO2R2          .EQ  $0002
PBIO2R3          .EQ  $0003
PBIO3R0          .EQ  $0004
PBIO3R1          .EQ  $0005
PBIO3R2          .EQ  $0006
PBIO3R3          .EQ  $0007


;----- RPINR50_51 Bits -----------------------------------------------------
PBIO4R0          .EQ  $0000
PBIO4R1          .EQ  $0001
PBIO4R2          .EQ  $0002
PBIO4R3          .EQ  $0003
PBIO5R0          .EQ  $0004
PBIO5R1          .EQ  $0005
PBIO5R2          .EQ  $0006
PBIO5R3          .EQ  $0007


;----- RPINR52_53 Bits -----------------------------------------------------
PBIO6R0          .EQ  $0000
PBIO6R1          .EQ  $0001
PBIO6R2          .EQ  $0002
PBIO6R3          .EQ  $0003
PBIO7R0          .EQ  $0004
PBIO7R1          .EQ  $0005
PBIO7R2          .EQ  $0006
PBIO7R3          .EQ  $0007


;----- ANCON3 Bits -----------------------------------------------------
ANSEL16          .EQ  $0000
ANSEL17          .EQ  $0001
ANSEL18          .EQ  $0002
ANSEL19          .EQ  $0003
ANSEL20          .EQ  $0004
ANSEL21          .EQ  $0005
ANSEL22          .EQ  $0006
ANSEL23          .EQ  $0007


;----- ANCON2 Bits -----------------------------------------------------
ANSEL8           .EQ  $0000
ANSEL9           .EQ  $0001
ANSEL10          .EQ  $0002
ANSEL11          .EQ  $0003
ANSEL12          .EQ  $0004
ANSEL13          .EQ  $0005
ANSEL14          .EQ  $0006
ANSEL15          .EQ  $0007


;----- ANCON1 Bits -----------------------------------------------------
ANSEL0           .EQ  $0000
ANSEL1           .EQ  $0001
ANSEL2           .EQ  $0002
ANSEL3           .EQ  $0003
ANSEL4           .EQ  $0004
ANSEL5           .EQ  $0005
ANSEL6           .EQ  $0006
ANSEL7           .EQ  $0007


;----- ADCTMUEN0L Bits -----------------------------------------------------
CTMUEN0          .EQ  $0000
CTMUEN1          .EQ  $0001
CTMUEN2          .EQ  $0002
CTMUEN3          .EQ  $0003
CTMUEN4          .EQ  $0004
CTMUEN5          .EQ  $0005
CTMUEN6          .EQ  $0006
CTMUEN7          .EQ  $0007


;----- ADCTMUEN0H Bits -----------------------------------------------------
CTMUEN8          .EQ  $0000
CTMUEN9          .EQ  $0001
CTMUEN10         .EQ  $0002
CTMUEN11         .EQ  $0003
CTMUEN12         .EQ  $0004
CTMUEN13         .EQ  $0005
CTMUEN14         .EQ  $0006
CTMUEN15         .EQ  $0007


;----- ADCTMUEN1L Bits -----------------------------------------------------
CTUMEN16         .EQ  $0000
CTUMEN17         .EQ  $0001
CTUMEN18         .EQ  $0002
CTUMEN19         .EQ  $0003
CTMUEN20         .EQ  $0004
CTMUEN21         .EQ  $0005
CTMUEN22         .EQ  $0006
CTMUEN23         .EQ  $0007


;----- ADCTMUEN1H Bits -----------------------------------------------------
CTUMEN24         .EQ  $0000
CTUMEN25         .EQ  $0001
CTUMEN26         .EQ  $0002
CTUMEN27         .EQ  $0003
CTUMEN28         .EQ  $0004
CTUMEN29         .EQ  $0005
CTMUEN30         .EQ  $0006


;----- ADCHIT0L Bits -----------------------------------------------------
CHH0             .EQ  $0000
CHH1             .EQ  $0001
CHH2             .EQ  $0002
CHH3             .EQ  $0003
CHH4             .EQ  $0004
CHH5             .EQ  $0005
CHH6             .EQ  $0006
CHH7             .EQ  $0007


;----- ADCHIT0H Bits -----------------------------------------------------
CHH8             .EQ  $0000
CHH9             .EQ  $0001
CHH10            .EQ  $0002
CHH11            .EQ  $0003
CHH12            .EQ  $0004
CHH13            .EQ  $0005
CHH14            .EQ  $0006
CHH15            .EQ  $0007


;----- ADCHIT1L Bits -----------------------------------------------------
CHH16            .EQ  $0000
CHH17            .EQ  $0001
CHH18            .EQ  $0002
CHH19            .EQ  $0003
CHH20            .EQ  $0004
CHH21            .EQ  $0005
CHH22            .EQ  $0006
CHH23            .EQ  $0007


;----- ADCHIT1H Bits -----------------------------------------------------
CHH24            .EQ  $0000
CHH25            .EQ  $0001
CHH26            .EQ  $0002
CHH27            .EQ  $0003
CHH28            .EQ  $0004
CHH29            .EQ  $0005
CHH30            .EQ  $0006


;----- ADCSS0L Bits -----------------------------------------------------
CSS0             .EQ  $0000
CSS1             .EQ  $0001
CSS2             .EQ  $0002
CSS3             .EQ  $0003
CSS4             .EQ  $0004
CSS5             .EQ  $0005
CSS6             .EQ  $0006
CSS7             .EQ  $0007


;----- ADCSS0H Bits -----------------------------------------------------
CSS8             .EQ  $0000
CSS9             .EQ  $0001
CSS10            .EQ  $0002
CSS11            .EQ  $0003
CSS12            .EQ  $0004
CSS13            .EQ  $0005
CSS14            .EQ  $0006
CSS15            .EQ  $0007


;----- ADCSS1L Bits -----------------------------------------------------
CSS16            .EQ  $0000
CSS17            .EQ  $0001
CSS18            .EQ  $0002
CSS19            .EQ  $0003
CSS20            .EQ  $0004
CSS21            .EQ  $0005
CSS22            .EQ  $0006
CSS23            .EQ  $0007


;----- ADCSS1H Bits -----------------------------------------------------
CSS24            .EQ  $0000
CSS25            .EQ  $0001
CSS26            .EQ  $0002
CSS27            .EQ  $0003
CSS28            .EQ  $0004
CSS29            .EQ  $0005
CSS30            .EQ  $0006


;----- ADCHS0L Bits -----------------------------------------------------
CH0SA0           .EQ  $0000
CH0SA1           .EQ  $0001
CH0SA2           .EQ  $0002
CH0SA3           .EQ  $0003
CH0SA4           .EQ  $0004
CH0NA0           .EQ  $0005
CH0NA1           .EQ  $0006
CH0NA2           .EQ  $0007


;----- ADCHS0H Bits -----------------------------------------------------
CH0SB0           .EQ  $0000
CH0SB1           .EQ  $0001
CH0SB2           .EQ  $0002
CH0SB3           .EQ  $0003
CH0SB4           .EQ  $0004
CH0NB0           .EQ  $0005
CH0NB1           .EQ  $0006
CH0NB2           .EQ  $0007


;----- ADCON5L Bits -----------------------------------------------------
CM0              .EQ  $0000
CM1              .EQ  $0001
WM0              .EQ  $0002
WM1              .EQ  $0003


;----- ADCON5H Bits -----------------------------------------------------
CTMUREQ          .EQ  $0005
LPENA            .EQ  $0006
ASENA            .EQ  $0007

ASINTMD0         .EQ  $0000
ASINTMD1         .EQ  $0001


;----- ADCON3L Bits -----------------------------------------------------
ADCS0            .EQ  $0000
ADCS1            .EQ  $0001
ADCS2            .EQ  $0002
ADCS3            .EQ  $0003
ADCS4            .EQ  $0004
ADCS5            .EQ  $0005
ADCS6            .EQ  $0006
ADCS7            .EQ  $0007


;----- ADCON3H Bits -----------------------------------------------------
PUMPEN           .EQ  $0005
EXTSAM           .EQ  $0006
ADRC             .EQ  $0007

SAMC0            .EQ  $0000
SAMC1            .EQ  $0001
SAMC2            .EQ  $0002
SAMC3            .EQ  $0003
SAMC4            .EQ  $0004


;----- ADCON2L Bits -----------------------------------------------------
ALTS             .EQ  $0000
BUFM             .EQ  $0001
BUFS             .EQ  $0007

SMPI0            .EQ  $0002
SMPI1            .EQ  $0003
SMPI2            .EQ  $0004
SMPI3            .EQ  $0005
SMPI4            .EQ  $0006


;----- ADCON2H Bits -----------------------------------------------------
CSCNA            .EQ  $0002
BUFREGEN         .EQ  $0003
OFFCAL           .EQ  $0004
NVCFG0           .EQ  $0005

PVCFG0           .EQ  $0006
PVCFG1           .EQ  $0007


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
S33C0            .EQ  $0001
S34C0            .EQ  $0002
S35C0            .EQ  $0003
S36C0            .EQ  $0004
S37C0            .EQ  $0005
S38C0            .EQ  $0006
S39C0            .EQ  $0007


;----- LCDDATA5 Bits -----------------------------------------------------
S40C0            .EQ  $0000
S41C0            .EQ  $0001
S42C0            .EQ  $0002
S43C0            .EQ  $0003
S44C0            .EQ  $0004
S45C0            .EQ  $0005
S46C0            .EQ  $0006
S47C0            .EQ  $0007


;----- LCDDATA6 Bits -----------------------------------------------------
S48C0            .EQ  $0000
S49C0            .EQ  $0001
S50C0            .EQ  $0002
S51C0            .EQ  $0003
S52C0            .EQ  $0004
S53C0            .EQ  $0005
S54C0            .EQ  $0006
S55C0            .EQ  $0007


;----- LCDDATA7 Bits -----------------------------------------------------
S56C0            .EQ  $0000
S57C0            .EQ  $0001
S58C0            .EQ  $0002
S59C0            .EQ  $0003
S60C0            .EQ  $0004
S61C0            .EQ  $0005
S62C0            .EQ  $0006
S63C0            .EQ  $0007


;----- LCDDATA8 Bits -----------------------------------------------------
S00C1            .EQ  $0000
S01C1            .EQ  $0001
S02C1            .EQ  $0002
S03C1            .EQ  $0003
S04C1            .EQ  $0004
S05C1            .EQ  $0005
S06C1            .EQ  $0006
S07C1            .EQ  $0007


;----- LCDDATA9 Bits -----------------------------------------------------
S08C1            .EQ  $0000
S09C1            .EQ  $0001
S10C1            .EQ  $0002
S11C1            .EQ  $0003
S12C1            .EQ  $0004
S13C1            .EQ  $0005
S14C1            .EQ  $0006
S15C1            .EQ  $0007


;----- LCDDATA10 Bits -----------------------------------------------------
S16C1            .EQ  $0000
S17C1            .EQ  $0001
S18C1            .EQ  $0002
S19C1            .EQ  $0003
S20C1            .EQ  $0004
S21C1            .EQ  $0005
S22C1            .EQ  $0006
S23C1            .EQ  $0007


;----- LCDDATA11 Bits -----------------------------------------------------
S24C1            .EQ  $0000
S25C1            .EQ  $0001
S26C1            .EQ  $0002
S27C1            .EQ  $0003
S28C1            .EQ  $0004
S29C1            .EQ  $0005
S30C1            .EQ  $0006
S31C1            .EQ  $0007


;----- LCDDATA12 Bits -----------------------------------------------------
S32C1            .EQ  $0000
S33C1            .EQ  $0001
S34C1            .EQ  $0002
S35C1            .EQ  $0003
S36C1            .EQ  $0004
S37C1            .EQ  $0005
S38C1            .EQ  $0006
S39C1            .EQ  $0007


;----- LCDDATA13 Bits -----------------------------------------------------
S40C1            .EQ  $0000
S41C1            .EQ  $0001
S42C1            .EQ  $0002
S43C1            .EQ  $0003
S44C1            .EQ  $0004
S45C1            .EQ  $0005
S46C1            .EQ  $0006
S47C1            .EQ  $0007


;----- LCDDATA14 Bits -----------------------------------------------------
S48C1            .EQ  $0000
S49C1            .EQ  $0001
S50C1            .EQ  $0002
S51C1            .EQ  $0003
S52C1            .EQ  $0004
S53C1            .EQ  $0005
S54C1            .EQ  $0006
S55C1            .EQ  $0007


;----- LCDDATA15 Bits -----------------------------------------------------
S56C1            .EQ  $0000
S57C1            .EQ  $0001
S58C1            .EQ  $0002
S59C1            .EQ  $0003
S60C1            .EQ  $0004
S61C1            .EQ  $0005
S62C1            .EQ  $0006
S63C1            .EQ  $0007


;----- LCDDATA16 Bits -----------------------------------------------------
S00C2            .EQ  $0000
S01C2            .EQ  $0001
S02C2            .EQ  $0002
S03C2            .EQ  $0003
S04C2            .EQ  $0004
S05C2            .EQ  $0005
S06C2            .EQ  $0006
S07C2            .EQ  $0007


;----- LCDDATA17 Bits -----------------------------------------------------
S08C2            .EQ  $0000
S09C2            .EQ  $0001
S10C2            .EQ  $0002
S11C2            .EQ  $0003
S12C2            .EQ  $0004
S13C2            .EQ  $0005
S14C2            .EQ  $0006
S15C2            .EQ  $0007


;----- LCDDATA18 Bits -----------------------------------------------------
S16C2            .EQ  $0000
S17C2            .EQ  $0001
S18C2            .EQ  $0002
S19C2            .EQ  $0003
S20C2            .EQ  $0004
S21C2            .EQ  $0005
S22C2            .EQ  $0006
S23C2            .EQ  $0007


;----- LCDDATA19 Bits -----------------------------------------------------
S24C2            .EQ  $0000
S25C2            .EQ  $0001
S26C2            .EQ  $0002
S27C2            .EQ  $0003
S28C2            .EQ  $0004
S29C2            .EQ  $0005
S30C2            .EQ  $0006
S31C2            .EQ  $0007


;----- LCDDATA20 Bits -----------------------------------------------------
S32C2            .EQ  $0000
S33C2            .EQ  $0001
S34C2            .EQ  $0002
S35C2            .EQ  $0003
S36C2            .EQ  $0004
S37C2            .EQ  $0005
S38C2            .EQ  $0006
S39C2            .EQ  $0007


;----- LCDDATA21 Bits -----------------------------------------------------
S40C2            .EQ  $0000
S41C2            .EQ  $0001
S42C2            .EQ  $0002
S43C2            .EQ  $0003
S44C2            .EQ  $0004
S45C2            .EQ  $0005
S46C2            .EQ  $0006
S47C2            .EQ  $0007


;----- LCDDATA22 Bits -----------------------------------------------------
S48C2            .EQ  $0000
S49C2            .EQ  $0001
S50C2            .EQ  $0002
S51C2            .EQ  $0003
S52C2            .EQ  $0004
S53C2            .EQ  $0005
S54C2            .EQ  $0006
S55C2            .EQ  $0007


;----- LCDDATA23 Bits -----------------------------------------------------
S56C2            .EQ  $0000
S57C2            .EQ  $0001
S58C2            .EQ  $0002
S59C2            .EQ  $0003
S60C2            .EQ  $0004
S61C2            .EQ  $0005
S62C2            .EQ  $0006
S63C2            .EQ  $0007


;----- LCDDATA24 Bits -----------------------------------------------------
S00C3            .EQ  $0000
S01C3            .EQ  $0001
S02C3            .EQ  $0002
S03C3            .EQ  $0003
S04C3            .EQ  $0004
S05C3            .EQ  $0005
S06C3            .EQ  $0006
S07C3            .EQ  $0007


;----- LCDDATA25 Bits -----------------------------------------------------
S08C3            .EQ  $0000
S09C3            .EQ  $0001
S10C3            .EQ  $0002
S11C3            .EQ  $0003
S12C3            .EQ  $0004
S13C3            .EQ  $0005
S14C3            .EQ  $0006
S15C3            .EQ  $0007


;----- LCDDATA26 Bits -----------------------------------------------------
S16C3            .EQ  $0000
S17C3            .EQ  $0001
S18C3            .EQ  $0002
S19C3            .EQ  $0003
S20C3            .EQ  $0004
S21C3            .EQ  $0005
S22C3            .EQ  $0006
S23C3            .EQ  $0007


;----- LCDDATA27 Bits -----------------------------------------------------
S24C3            .EQ  $0000
S25C3            .EQ  $0001
S26C3            .EQ  $0002
S27C3            .EQ  $0003
S28C3            .EQ  $0004
S29C3            .EQ  $0005
S30C3            .EQ  $0006
S31C3            .EQ  $0007


;----- LCDDATA28 Bits -----------------------------------------------------
S32C3            .EQ  $0000
S33C3            .EQ  $0001
S34C3            .EQ  $0002
S35C3            .EQ  $0003
S36C3            .EQ  $0004
S37C3            .EQ  $0005
S38C3            .EQ  $0006
S39C3            .EQ  $0007


;----- LCDDATA29 Bits -----------------------------------------------------
S40C3            .EQ  $0000
S41C3            .EQ  $0001
S42C3            .EQ  $0002
S43C3            .EQ  $0003
S44C3            .EQ  $0004
S45C3            .EQ  $0005
S46C3            .EQ  $0006
S47C3            .EQ  $0007


;----- LCDDATA30 Bits -----------------------------------------------------
S48C3            .EQ  $0000
S49C3            .EQ  $0001
S50C3            .EQ  $0002
S51C3            .EQ  $0003
S52C3            .EQ  $0004
S53C3            .EQ  $0005
S54C3            .EQ  $0006
S55C3            .EQ  $0007


;----- LCDDATA31 Bits -----------------------------------------------------
S56C3            .EQ  $0000
S57C3            .EQ  $0001
S58C3            .EQ  $0002
S59C3            .EQ  $0003
S60C3            .EQ  $0004
S61C3            .EQ  $0005
S62C3            .EQ  $0006
S63C3            .EQ  $0007


;----- LCDDATA32 Bits -----------------------------------------------------
S00C4            .EQ  $0000
S01C4            .EQ  $0001
S02C4            .EQ  $0002
S03C4            .EQ  $0003
S04C4            .EQ  $0004
S05C4            .EQ  $0005
S06C4            .EQ  $0006
S07C4            .EQ  $0007


;----- LCDDATA33 Bits -----------------------------------------------------
S08C4            .EQ  $0000
S09C4            .EQ  $0001
S10C4            .EQ  $0002
S11C4            .EQ  $0003
S12C4            .EQ  $0004
S13C4            .EQ  $0005
S14C4            .EQ  $0006
S15C4            .EQ  $0007


;----- LCDDATA34 Bits -----------------------------------------------------
S16C4            .EQ  $0000
S17C4            .EQ  $0001
S18C4            .EQ  $0002
S19C4            .EQ  $0003
S20C4            .EQ  $0004
S21C4            .EQ  $0005
S22C4            .EQ  $0006
S23C4            .EQ  $0007


;----- LCDDATA35 Bits -----------------------------------------------------
S24C4            .EQ  $0000
S25C4            .EQ  $0001
S26C4            .EQ  $0002
S27C4            .EQ  $0003
S28C4            .EQ  $0004
S29C4            .EQ  $0005
S30C4            .EQ  $0006
S31C4            .EQ  $0007


;----- LCDDATA36 Bits -----------------------------------------------------
S32C4            .EQ  $0000
S33C4            .EQ  $0001
S34C4            .EQ  $0002
S35C4            .EQ  $0003
S36C4            .EQ  $0004
S37C4            .EQ  $0005
S38C4            .EQ  $0006
S39C4            .EQ  $0007


;----- LCDDATA37 Bits -----------------------------------------------------
S40C4            .EQ  $0000
S41C4            .EQ  $0001
S42C4            .EQ  $0002
S43C4            .EQ  $0003
S44C4            .EQ  $0004
S45C4            .EQ  $0005
S46C4            .EQ  $0006
S47C4            .EQ  $0007


;----- LCDDATA38 Bits -----------------------------------------------------
S48C4            .EQ  $0000
S49C4            .EQ  $0001
S50C4            .EQ  $0002
S51C4            .EQ  $0003
S52C4            .EQ  $0004
S53C4            .EQ  $0005
S54C4            .EQ  $0006
S55C4            .EQ  $0007


;----- LCDDATA39 Bits -----------------------------------------------------
S56C4            .EQ  $0000
S57C4            .EQ  $0001
S58C4            .EQ  $0002
S59C4            .EQ  $0003
S60C4            .EQ  $0004
S61C4            .EQ  $0005
S62C4            .EQ  $0006
S63C4            .EQ  $0007


;----- LCDDATA40 Bits -----------------------------------------------------
S00C5            .EQ  $0000
S01C5            .EQ  $0001
S02C5            .EQ  $0002
S03C5            .EQ  $0003
S04C5            .EQ  $0004
S05C5            .EQ  $0005
S06C5            .EQ  $0006
S07C5            .EQ  $0007


;----- LCDDATA41 Bits -----------------------------------------------------
S08C5            .EQ  $0000
S09C5            .EQ  $0001
S10C5            .EQ  $0002
S11C5            .EQ  $0003
S12C5            .EQ  $0004
S13C5            .EQ  $0005
S14C5            .EQ  $0006
S15C5            .EQ  $0007


;----- LCDDATA42 Bits -----------------------------------------------------
S16C5            .EQ  $0000
S17C5            .EQ  $0001
S18C5            .EQ  $0002
S19C5            .EQ  $0003
S20C5            .EQ  $0004
S21C5            .EQ  $0005
S22C5            .EQ  $0006
S23C5            .EQ  $0007


;----- LCDDATA43 Bits -----------------------------------------------------
S24C5            .EQ  $0000
S25C5            .EQ  $0001
S26C5            .EQ  $0002
S27C5            .EQ  $0003
S28C5            .EQ  $0004
S29C5            .EQ  $0005
S30C5            .EQ  $0006
S31C5            .EQ  $0007


;----- LCDDATA44 Bits -----------------------------------------------------
S32C5            .EQ  $0000
S33C5            .EQ  $0001
S34C5            .EQ  $0002
S35C5            .EQ  $0003
S36C5            .EQ  $0004
S37C5            .EQ  $0005
S38C5            .EQ  $0006
S39C5            .EQ  $0007


;----- LCDDATA45 Bits -----------------------------------------------------
S40C5            .EQ  $0000
S41C5            .EQ  $0001
S42C5            .EQ  $0002
S43C5            .EQ  $0003
S44C5            .EQ  $0004
S45C5            .EQ  $0005
S46C5            .EQ  $0006
S47C5            .EQ  $0007


;----- LCDDATA46 Bits -----------------------------------------------------
S48C5            .EQ  $0000
S49C5            .EQ  $0001
S50C5            .EQ  $0002
S51C5            .EQ  $0003
S52C5            .EQ  $0004
S53C5            .EQ  $0005
S54C5            .EQ  $0006
S55C5            .EQ  $0007


;----- LCDDATA47 Bits -----------------------------------------------------
S56C5            .EQ  $0000
S57C5            .EQ  $0001
S58C5            .EQ  $0002
S59C5            .EQ  $0003
S60C5            .EQ  $0004
S61C5            .EQ  $0005
S62C5            .EQ  $0006
S63C5            .EQ  $0007


;----- LCDDATA48 Bits -----------------------------------------------------
S00C6            .EQ  $0000
S01C6            .EQ  $0001
S02C6            .EQ  $0002
S03C6            .EQ  $0003
S04C6            .EQ  $0004
S05C6            .EQ  $0005
S06C6            .EQ  $0006
S07C6            .EQ  $0007


;----- LCDDATA49 Bits -----------------------------------------------------
S08C6            .EQ  $0000
S09C6            .EQ  $0001
S10C6            .EQ  $0002
S11C6            .EQ  $0003
S12C6            .EQ  $0004
S13C6            .EQ  $0005
S14C6            .EQ  $0006
S15C6            .EQ  $0007


;----- LCDDATA50 Bits -----------------------------------------------------
S16C6            .EQ  $0000
S17C6            .EQ  $0001
S18C6            .EQ  $0002
S19C6            .EQ  $0003
S20C6            .EQ  $0004
S21C6            .EQ  $0005
S22C6            .EQ  $0006
S23C6            .EQ  $0007


;----- LCDDATA51 Bits -----------------------------------------------------
S24C6            .EQ  $0000
S25C6            .EQ  $0001
S26C6            .EQ  $0002
S27C6            .EQ  $0003
S28C6            .EQ  $0004
S29C6            .EQ  $0005
S30C6            .EQ  $0006
S31C6            .EQ  $0007


;----- LCDDATA52 Bits -----------------------------------------------------
S32C6            .EQ  $0000
S33C6            .EQ  $0001
S34C6            .EQ  $0002
S35C6            .EQ  $0003
S36C6            .EQ  $0004
S37C6            .EQ  $0005
S38C6            .EQ  $0006
S39C6            .EQ  $0007


;----- LCDDATA53 Bits -----------------------------------------------------
S40C6            .EQ  $0000
S41C6            .EQ  $0001
S42C6            .EQ  $0002
S43C6            .EQ  $0003
S44C6            .EQ  $0004
S45C6            .EQ  $0005
S46C6            .EQ  $0006
S47C6            .EQ  $0007


;----- LCDDATA54 Bits -----------------------------------------------------
S48C6            .EQ  $0000
S49C6            .EQ  $0001
S50C6            .EQ  $0002
S51C6            .EQ  $0003
S52C6            .EQ  $0004
S53C6            .EQ  $0005
S54C6            .EQ  $0006
S55C6            .EQ  $0007


;----- LCDDATA55 Bits -----------------------------------------------------
S56C6            .EQ  $0000
S57C6            .EQ  $0001
S58C6            .EQ  $0002
S59C6            .EQ  $0003
S60C6            .EQ  $0004
S61C6            .EQ  $0005
S62C6            .EQ  $0006
S63C6            .EQ  $0007


;----- LCDDATA56 Bits -----------------------------------------------------
S00C7            .EQ  $0000
S01C7            .EQ  $0001
S02C7            .EQ  $0002
S03C7            .EQ  $0003
S04C7            .EQ  $0004
S05C7            .EQ  $0005
S06C7            .EQ  $0006
S07C7            .EQ  $0007


;----- LCDDATA57 Bits -----------------------------------------------------
S08C7            .EQ  $0000
S09C7            .EQ  $0001
S10C7            .EQ  $0002
S11C7            .EQ  $0003
S12C7            .EQ  $0004
S13C7            .EQ  $0005
S14C7            .EQ  $0006
S15C7            .EQ  $0007


;----- LCDDATA58 Bits -----------------------------------------------------
S16C7            .EQ  $0000
S17C7            .EQ  $0001
S18C7            .EQ  $0002
S19C7            .EQ  $0003
S20C7            .EQ  $0004
S21C7            .EQ  $0005
S22C7            .EQ  $0006
S23C7            .EQ  $0007


;----- LCDDATA59 Bits -----------------------------------------------------
S24C7            .EQ  $0000
S25C7            .EQ  $0001
S26C7            .EQ  $0002
S27C7            .EQ  $0003
S28C7            .EQ  $0004
S29C7            .EQ  $0005
S30C7            .EQ  $0006
S31C7            .EQ  $0007


;----- LCDDATA60 Bits -----------------------------------------------------
S32C7            .EQ  $0000
S33C7            .EQ  $0001
S34C7            .EQ  $0002
S35C7            .EQ  $0003
S36C7            .EQ  $0004
S37C7            .EQ  $0005
S38C7            .EQ  $0006
S39C7            .EQ  $0007


;----- LCDDATA61 Bits -----------------------------------------------------
S40C7            .EQ  $0000
S41C7            .EQ  $0001
S42C7            .EQ  $0002
S43C7            .EQ  $0003
S44C7            .EQ  $0004
S45C7            .EQ  $0005
S46C7            .EQ  $0006
S47C7            .EQ  $0007


;----- LCDDATA62 Bits -----------------------------------------------------
S48C7            .EQ  $0000
S49C7            .EQ  $0001
S50C7            .EQ  $0002
S51C7            .EQ  $0003
S52C7            .EQ  $0004
S53C7            .EQ  $0005
S54C7            .EQ  $0006
S55C7            .EQ  $0007


;----- LCDDATA63 Bits -----------------------------------------------------
S56C7            .EQ  $0000
S57C7            .EQ  $0001
S58C7            .EQ  $0002
S59C7            .EQ  $0003
S60C7            .EQ  $0004
S61C7            .EQ  $0005
S62C7            .EQ  $0006
S63C7            .EQ  $0007


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
SE33             .EQ  $0001
SE34             .EQ  $0002
SE35             .EQ  $0003
SE36             .EQ  $0004
SE37             .EQ  $0005
SE38             .EQ  $0006
SE39             .EQ  $0007


;----- LCDSE5 Bits -----------------------------------------------------
SE40             .EQ  $0000
SE41             .EQ  $0001
SE42             .EQ  $0002
SE43             .EQ  $0003
SE44             .EQ  $0004
SE45             .EQ  $0005
SE46             .EQ  $0006
SE47             .EQ  $0007


;----- LCDSE6 Bits -----------------------------------------------------
SE48             .EQ  $0000
SE49             .EQ  $0001
SE50             .EQ  $0002
SE51             .EQ  $0003
SE52             .EQ  $0004
SE53             .EQ  $0005
SE54             .EQ  $0006
SE55             .EQ  $0007


;----- LCDSE7 Bits -----------------------------------------------------
SE56             .EQ  $0000
SE57             .EQ  $0001
SE58             .EQ  $0002
SE59             .EQ  $0003
SE60             .EQ  $0004
SE61             .EQ  $0005
SE62             .EQ  $0006
SE63             .EQ  $0007


;----- LCDRL Bits -----------------------------------------------------
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
LCDIRE           .EQ  $0007

LCDCST0          .EQ  $0003
LCDCST1          .EQ  $0004
LCDCST2          .EQ  $0005


;----- LCDREG Bits -----------------------------------------------------
MODE13           .EQ  $0002
CPEN             .EQ  $0007

CLKSEL0          .EQ  $0000
CLKSEL1          .EQ  $0001
BIAS0            .EQ  $0003
BIAS1            .EQ  $0004
BIAS2            .EQ  $0005


;----- LCDCON Bits -----------------------------------------------------
WERR             .EQ  $0005
SLPEN            .EQ  $0006
LCDEN            .EQ  $0007

LMUX0            .EQ  $0000
LMUX1            .EQ  $0001
LMUX2            .EQ  $0002
CS0              .EQ  $0003
CS1              .EQ  $0004


;----- LCDPS Bits -----------------------------------------------------
WA               .EQ  $0004
LCDA             .EQ  $0005
BIASMD           .EQ  $0006
WFT              .EQ  $0007

LP0              .EQ  $0000
LP1              .EQ  $0001
LP2              .EQ  $0002
LP3              .EQ  $0003


;----- REFO2CON3 Bits -----------------------------------------------------
RODIV8           .EQ  $0000
RODIV9           .EQ  $0001
RODIV10          .EQ  $0002
RODIV11          .EQ  $0003
RODIV12          .EQ  $0004
RODIV13          .EQ  $0005
RODIV14          .EQ  $0006


;----- REFO2CON2 Bits -----------------------------------------------------
RODIV0           .EQ  $0000
RODIV1           .EQ  $0001
RODIV2           .EQ  $0002
RODIV3           .EQ  $0003
RODIV4           .EQ  $0004
RODIV5           .EQ  $0005
RODIV6           .EQ  $0006
RODIV7           .EQ  $0007


;----- REFO2CON1 Bits -----------------------------------------------------
ROSEL0           .EQ  $0000
ROSEL1           .EQ  $0001
ROSEL2           .EQ  $0002
ROSEL3           .EQ  $0003


;----- REFO2CON Bits -----------------------------------------------------
ACTIVE           .EQ  $0000
DIVSWEN          .EQ  $0001
ROSSLP           .EQ  $0003
ROOE             .EQ  $0004
ROSIDL           .EQ  $0005
ROON             .EQ  $0007


;----- REFO1CON3 Bits -----------------------------------------------------
RODIV8           .EQ  $0000
RODIV9           .EQ  $0001
RODIV10          .EQ  $0002
RODIV11          .EQ  $0003
RODIV12          .EQ  $0004
RODIV13          .EQ  $0005
RODIV14          .EQ  $0006


;----- REFO1CON2 Bits -----------------------------------------------------
RODIV0           .EQ  $0000
RODIV1           .EQ  $0001
RODIV2           .EQ  $0002
RODIV3           .EQ  $0003
RODIV4           .EQ  $0004
RODIV5           .EQ  $0005
RODIV6           .EQ  $0006
RODIV7           .EQ  $0007


;----- REFO1CON1 Bits -----------------------------------------------------
ROSEL0           .EQ  $0000
ROSEL1           .EQ  $0001
ROSEL2           .EQ  $0002
ROSEL3           .EQ  $0003


;----- REFO1CON Bits -----------------------------------------------------
ACTIVE           .EQ  $0000
DIVSWEN          .EQ  $0001
ROSSLP           .EQ  $0003
ROOE             .EQ  $0004
ROSIDL           .EQ  $0005
ROON             .EQ  $0007


;----- ODCON2 Bits -----------------------------------------------------
ECCP3OD          .EQ  $0000
CCP4OD           .EQ  $0001
CCP5OD           .EQ  $0002
CCP6OD           .EQ  $0003
CCP7OD           .EQ  $0004
CCP8OD           .EQ  $0005
CCP9OD           .EQ  $0006
CCP10OD          .EQ  $0007


;----- ODCON1 Bits -----------------------------------------------------
SSP1OD           .EQ  $0000
SSP2OD           .EQ  $0001
USART1OD         .EQ  $0002
USART2OD         .EQ  $0003
USART3OD         .EQ  $0004
USART4OD         .EQ  $0005
ECCP1OD          .EQ  $0006
ECCP2OD          .EQ  $0007


;----- MDCARL Bits -----------------------------------------------------
MDCLSYNC         .EQ  $0005
MDCLPOL          .EQ  $0006
MDCLODIS         .EQ  $0007

MDCL0            .EQ  $0000
MDCL1            .EQ  $0001
MDCL2            .EQ  $0002
MDCL3            .EQ  $0003


;----- MDCARH Bits -----------------------------------------------------
MDCHSYNC         .EQ  $0005
MDCHPOL          .EQ  $0006
MDCHODIS         .EQ  $0007

MDCH0            .EQ  $0000
MDCH1            .EQ  $0001
MDCH2            .EQ  $0002
MDCH3            .EQ  $0003


;----- MDSRC Bits -----------------------------------------------------
MDSODIS          .EQ  $0007

MDSRC0           .EQ  $0000
MDSRC1           .EQ  $0001
MDSRC2           .EQ  $0002
MDSRC3           .EQ  $0003


;----- MDCON Bits -----------------------------------------------------
MDBIT            .EQ  $0000
MDO              .EQ  $0003
MDOPOL           .EQ  $0004
MDSLR            .EQ  $0005
MDOE             .EQ  $0006
MDEN             .EQ  $0007


;----- PMD4 Bits -----------------------------------------------------
EMBMD            .EQ  $0000
LVDMD            .EQ  $0002
IOCMD            .EQ  $0003
USBMD            .EQ  $0004
CMP3MD           .EQ  $0005
CMP2MD           .EQ  $0006
CMP1MD           .EQ  $0007


;----- PMD3 Bits -----------------------------------------------------
REFO2MD          .EQ  $0000
REFO1MD          .EQ  $0001
PSPMD            .EQ  $0002
LCDMD            .EQ  $0003
RTCCMD           .EQ  $0004
ADCMD            .EQ  $0005
CTMUMD           .EQ  $0006
MODMD            .EQ  $0007

TXMMD            .EQ  $0007


;----- PMD2 Bits -----------------------------------------------------
TMR0MD           .EQ  $0000
TMR1MD           .EQ  $0001
TMR2MD           .EQ  $0002
TMR3MD           .EQ  $0003
TMR4MD           .EQ  $0004
TMR5MD           .EQ  $0005
TMR6MD           .EQ  $0006
TMR8MD           .EQ  $0007


;----- PMD1 Bits -----------------------------------------------------
SSP1MD           .EQ  $0000
SSP2MD           .EQ  $0001
UART1MD          .EQ  $0002
UART2MD          .EQ  $0003
UART3MD          .EQ  $0004
UART4MD          .EQ  $0005
ECCP1MD          .EQ  $0006
ECCP2MD          .EQ  $0007


;----- PMD0 Bits -----------------------------------------------------
ECCP3MD          .EQ  $0000
CCP4MD           .EQ  $0001
CCP5MD           .EQ  $0002
CCP6MD           .EQ  $0003
CCP7MD           .EQ  $0004
CCP8MD           .EQ  $0005
CCP9MD           .EQ  $0006
CCP10MD          .EQ  $0007


;----- CTMUCON4 Bits -----------------------------------------------------
EDG1STAT         .EQ  $0000
EDG2STAT         .EQ  $0001
EDG1POL          .EQ  $0006
EDG1EN           .EQ  $0007

EDG1SEL0         .EQ  $0002
EDG1SEL1         .EQ  $0003
EDG1SEL2         .EQ  $0004
EDG1SEL3         .EQ  $0005


;----- CTMUCON3 Bits -----------------------------------------------------
EDG2POL          .EQ  $0006
EDG2EN           .EQ  $0007

EDG2SEL0         .EQ  $0002
EDG2SEL1         .EQ  $0003
EDG2SEL2         .EQ  $0004
EDG2SEL3         .EQ  $0005


;----- CTMUCON2 Bits -----------------------------------------------------
IRNG0            .EQ  $0000
IRNG1            .EQ  $0001
ITRIM0           .EQ  $0002
ITRIM1           .EQ  $0003
ITRIM2           .EQ  $0004
ITRIM3           .EQ  $0005
ITRIM4           .EQ  $0006
ITRIM5           .EQ  $0007


;----- CTMUCON1 Bits -----------------------------------------------------
CTTRIG           .EQ  $0000
IDISSEN          .EQ  $0001
EDGSEQEN         .EQ  $0002
EDGEN            .EQ  $0003
TGEN             .EQ  $0004
CTMUSIDL         .EQ  $0005
CTMUEN           .EQ  $0007


;----- SPBRG4 Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


;----- SPBRGH4 Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- BAUDCON4 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
IREN             .EQ  $0002
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- TXSTA4 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- RCSTA4 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- DMACON2 Bits -----------------------------------------------------
INTLVL0          .EQ  $0000
INTLVL1          .EQ  $0001
INTLVL2          .EQ  $0002
INTLVL3          .EQ  $0003
DLYCYC0          .EQ  $0004
DLYCYC1          .EQ  $0005
DLYCYC2          .EQ  $0006
DLYCYC3          .EQ  $0007


;----- ANCFG Bits -----------------------------------------------------
VBGEN            .EQ  $0000
VBG2EN           .EQ  $0001
VBG6EN           .EQ  $0002


;----- T4CON Bits -----------------------------------------------------
TMR4ON           .EQ  $0002

T4CKPS0          .EQ  $0000
T4CKPS1          .EQ  $0001
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


;----- SPBRG2 Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


;----- SPBRGH2 Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- DSWAKEH Bits -----------------------------------------------------
DSINT0           .EQ  $0000


;----- DSWAKEL Bits -----------------------------------------------------
DSPOR            .EQ  $0000
DSICD            .EQ  $0001
DSMCLR           .EQ  $0002
DSRTC            .EQ  $0003
DSWDT            .EQ  $0004
DSULP            .EQ  $0005
BOR_DSWAKEL      .EQ  $0006
DSFLT            .EQ  $0007


;----- DSCONH Bits -----------------------------------------------------
RTCWDIS          .EQ  $0000
DSEN             .EQ  $0007


;----- DSCONL Bits -----------------------------------------------------
RELEASE          .EQ  $0000
DSBOR            .EQ  $0001
ULPWDIS          .EQ  $0002


;----- SPBRG3 Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


;----- SPBRGH3 Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- BAUDCON3 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
IREN             .EQ  $0002
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007


;----- TXSTA3 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- RCSTA3 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- SPBRGH Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- SPBRGH1 Bits -----------------------------------------------------
BRG8             .EQ  $0000
BRG9             .EQ  $0001
BRG10            .EQ  $0002
BRG11            .EQ  $0003
BRG12            .EQ  $0004
BRG13            .EQ  $0005
BRG14            .EQ  $0006
BRG15            .EQ  $0007


;----- BAUDCON2 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
IREN             .EQ  $0002
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


;----- RCSTA2 Bits -----------------------------------------------------
RX9D             .EQ  $0000
OERR             .EQ  $0001
FERR             .EQ  $0002
ADDEN            .EQ  $0003
CREN             .EQ  $0004
SREN             .EQ  $0005
RX9              .EQ  $0006
SPEN             .EQ  $0007


;----- CCPTMRS2 Bits -----------------------------------------------------
C9TSEL           .EQ  $0002
C10TSEL          .EQ  $0004

C8TSEL0          .EQ  $0000
C8TSEL1          .EQ  $0001
C9TSEL0          .EQ  $0002
C10TSEL0         .EQ  $0004


;----- CCPTMRS1 Bits -----------------------------------------------------
C5TSEL           .EQ  $0002
C6TSEL           .EQ  $0004

C4TSEL0          .EQ  $0000
C4TSEL1          .EQ  $0001
C5TSEL0          .EQ  $0002
C6TSEL0          .EQ  $0004
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


;----- CM2CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- SSP2CON3 Bits -----------------------------------------------------
DHEN             .EQ  $0000
AHEN             .EQ  $0001
SBCDE            .EQ  $0002
SDAHT            .EQ  $0003
BOEN             .EQ  $0004
SCIE             .EQ  $0005
PCIE             .EQ  $0006
ACKTIM           .EQ  $0007


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


;----- ECCP2DEL Bits -----------------------------------------------------
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


;----- CM1CON Bits -----------------------------------------------------
CREF             .EQ  $0002
CPOL             .EQ  $0005
COE              .EQ  $0006
CON              .EQ  $0007

CCH0             .EQ  $0000
CCH1             .EQ  $0001
EVPOL0           .EQ  $0003
EVPOL1           .EQ  $0004


;----- PADCFG1 Bits -----------------------------------------------------
RLPU             .EQ  $0000
RKPU             .EQ  $0001
RJPU             .EQ  $0002
RHPU             .EQ  $0003
RGPU             .EQ  $0004
RFPU             .EQ  $0005
REPU             .EQ  $0006
RDPU             .EQ  $0007


;----- IOCN Bits -----------------------------------------------------
IOCN0            .EQ  $0000
IOCN1            .EQ  $0001
IOCN2            .EQ  $0002
IOCN3            .EQ  $0003
IOCN4            .EQ  $0004
IOCN5            .EQ  $0005
IOCN6            .EQ  $0006
IOCN7            .EQ  $0007


;----- IOCP Bits -----------------------------------------------------
IOCP0            .EQ  $0000
IOCP1            .EQ  $0001
IOCP2            .EQ  $0002
IOCP3            .EQ  $0003
IOCP4            .EQ  $0004
IOCP5            .EQ  $0005
IOCP6            .EQ  $0006
IOCP7            .EQ  $0007


;----- RTCCON2 Bits -----------------------------------------------------
PWCSPRE          .EQ  $0004
PWCCPRE          .EQ  $0005
PWCPOL           .EQ  $0006
PWCEN            .EQ  $0007

RTCSECSEL0       .EQ  $0000
RTCSECSEL1       .EQ  $0001
RTCCLKSEL0       .EQ  $0002
RTCCLKSEL1       .EQ  $0003


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


;----- RTCCAL Bits -----------------------------------------------------
CAL0             .EQ  $0000
CAL1             .EQ  $0001
CAL2             .EQ  $0002
CAL3             .EQ  $0003
CAL4             .EQ  $0004
CAL5             .EQ  $0005
CAL6             .EQ  $0006
CAL7             .EQ  $0007


;----- RTCCON1 Bits -----------------------------------------------------
RTCOE            .EQ  $0002
HALFSEC          .EQ  $0003
RTCSYNC          .EQ  $0004
RTCWREN          .EQ  $0005
RTCEN            .EQ  $0007

RTCPTR0          .EQ  $0000
RTCPTR1          .EQ  $0001


;----- DMACON1 Bits -----------------------------------------------------
DMAEN            .EQ  $0000
DLYINTEN         .EQ  $0001
RXINC            .EQ  $0004
TXINC            .EQ  $0005

DUPLEX0          .EQ  $0002
DUPLEX1          .EQ  $0003
SSCON0           .EQ  $0006
SSCON1           .EQ  $0007


;----- PIE6 Bits -----------------------------------------------------
CMP1IE           .EQ  $0000
CMP2IE           .EQ  $0001
CMP3IE           .EQ  $0002
TX3IE            .EQ  $0004
RC3IE            .EQ  $0005
TX4IE            .EQ  $0006
RC4IE            .EQ  $0007


;----- WPUB Bits -----------------------------------------------------
WPUB0            .EQ  $0000
WPUB1            .EQ  $0001
WPUB2            .EQ  $0002
WPUB3            .EQ  $0003
WPUB4            .EQ  $0004
WPUB5            .EQ  $0005
WPUB6            .EQ  $0006
WPUB7            .EQ  $0007


;----- ACTCON Bits -----------------------------------------------------
ACTORSPOL        .EQ  $0000
ACTORS           .EQ  $0001
ACTLOCKPOL       .EQ  $0002
ACTLOCK          .EQ  $0003
ACTSRC           .EQ  $0004
ACTSIDL          .EQ  $0005
ACTEN            .EQ  $0007


;----- OSCCON4 Bits -----------------------------------------------------
PLLEN            .EQ  $0005

CPDIV0           .EQ  $0006
CPDIV1           .EQ  $0007


;----- OSCCON3 Bits -----------------------------------------------------
IRCF0            .EQ  $0000
IRCF1            .EQ  $0001
IRCF2            .EQ  $0002


;----- OSCCON2 Bits -----------------------------------------------------
SOSCGO           .EQ  $0001
POSCEN           .EQ  $0002
CF               .EQ  $0003
LOCK             .EQ  $0005
IOLOCK           .EQ  $0006
CLKLOCK          .EQ  $0007


;----- BAUDCON Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
IREN             .EQ  $0002
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

CKTXP            .EQ  $0004
DTRXP            .EQ  $0005

SCKP             .EQ  $0004
RCMT             .EQ  $0006


;----- BAUDCON1 Bits -----------------------------------------------------
ABDEN            .EQ  $0000
WUE              .EQ  $0001
IREN             .EQ  $0002
BRG16            .EQ  $0003
TXCKP            .EQ  $0004
RXDTP            .EQ  $0005
RCIDL            .EQ  $0006
ABDOVF           .EQ  $0007

CKTXP            .EQ  $0004
DTRXP            .EQ  $0005

SCKP             .EQ  $0004
RCMT             .EQ  $0006


;----- SSP1MSK Bits -----------------------------------------------------
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


;----- TXBUF Bits -----------------------------------------------------
TXBUF0           .EQ  $0000
TXBUF1           .EQ  $0001
TXBUF2           .EQ  $0002
TXBUF3           .EQ  $0003
TXBUF4           .EQ  $0004
TXBUF5           .EQ  $0005
TXBUF6           .EQ  $0006
TXBUF7           .EQ  $0007


;----- DMABCH Bits -----------------------------------------------------
BC8              .EQ  $0000
BC9              .EQ  $0001


;----- DMABCL Bits -----------------------------------------------------
BC0              .EQ  $0000
BC1              .EQ  $0001
BC2              .EQ  $0002
BC3              .EQ  $0003
BC4              .EQ  $0004
BC5              .EQ  $0005
BC6              .EQ  $0006
BC7              .EQ  $0007


;----- RXADDRH Bits -----------------------------------------------------
RXADDR8          .EQ  $0000
RXADDR9          .EQ  $0001
RXADDR10         .EQ  $0002
RXADDR11         .EQ  $0003


;----- RXADDRL Bits -----------------------------------------------------
RXADDR0          .EQ  $0000
RXADDR1          .EQ  $0001
RXADDR2          .EQ  $0002
RXADDR3          .EQ  $0003
RXADDR4          .EQ  $0004
RXADDR5          .EQ  $0005
RXADDR6          .EQ  $0006
RXADDR7          .EQ  $0007


;----- TXADDRH Bits -----------------------------------------------------
TXADDR8          .EQ  $0000
TXADDR9          .EQ  $0001
TXADDR10         .EQ  $0002
TXADDR11         .EQ  $0003


;----- TXADDRL Bits -----------------------------------------------------
TXADDR0          .EQ  $0000
TXADDR1          .EQ  $0001
TXADDR2          .EQ  $0002
TXADDR3          .EQ  $0003
TXADDR4          .EQ  $0004
TXADDR5          .EQ  $0005
TXADDR6          .EQ  $0006
TXADDR7          .EQ  $0007


;----- PORTVP Bits -----------------------------------------------------
RVP0             .EQ  $0000
RVP1             .EQ  $0001
RVP2             .EQ  $0002
RVP3             .EQ  $0003
RVP4             .EQ  $0004
RVP5             .EQ  $0005
RVP6             .EQ  $0006
RVP7             .EQ  $0007


;----- LATVP Bits -----------------------------------------------------
LATVP0           .EQ  $0000
LATVP1           .EQ  $0001
LATVP2           .EQ  $0002
LATVP3           .EQ  $0003
LATVP4           .EQ  $0004
LATVP5           .EQ  $0005
LATVP6           .EQ  $0006
LATVP7           .EQ  $0007


;----- TRISVP Bits -----------------------------------------------------
TRISVP0          .EQ  $0000
TRISVP1          .EQ  $0001
TRISVP2          .EQ  $0002
TRISVP3          .EQ  $0003
TRISVP4          .EQ  $0004
TRISVP5          .EQ  $0005
TRISVP6          .EQ  $0006
TRISVP7          .EQ  $0007


;----- UADDR Bits -----------------------------------------------------
ADDR0            .EQ  $0000
ADDR1            .EQ  $0001
ADDR2            .EQ  $0002
ADDR3            .EQ  $0003
ADDR4            .EQ  $0004
ADDR5            .EQ  $0005
ADDR6            .EQ  $0006


;----- UCON Bits -----------------------------------------------------
SUSPND           .EQ  $0001
RESUME           .EQ  $0002
USBEN            .EQ  $0003
PKTDIS           .EQ  $0004
SE0              .EQ  $0005
PPBRST           .EQ  $0006


;----- USTAT Bits -----------------------------------------------------
PPBI             .EQ  $0001
DIR              .EQ  $0002

ENDP0            .EQ  $0003
ENDP1            .EQ  $0004
ENDP2            .EQ  $0005
ENDP3            .EQ  $0006


;----- UEIR Bits -----------------------------------------------------
PIDEF            .EQ  $0000
CRC5EF           .EQ  $0001
CRC16EF          .EQ  $0002
DFN8EF           .EQ  $0003
BTOEF            .EQ  $0004
BTSEF            .EQ  $0007


;----- UIR Bits -----------------------------------------------------
URSTIF           .EQ  $0000
UERRIF           .EQ  $0001
ACTVIF           .EQ  $0002
TRNIF            .EQ  $0003
IDLEIF           .EQ  $0004
STALLIF          .EQ  $0005
SOFIF            .EQ  $0006


;----- UFRMH Bits -----------------------------------------------------
FRM8             .EQ  $0000
FRM9             .EQ  $0001
FRM10            .EQ  $0002


;----- UFRML Bits -----------------------------------------------------
FRM0             .EQ  $0000
FRM1             .EQ  $0001
FRM2             .EQ  $0002
FRM3             .EQ  $0003
FRM4             .EQ  $0004
FRM5             .EQ  $0005
FRM6             .EQ  $0006
FRM7             .EQ  $0007


;----- RCON4 Bits -----------------------------------------------------
PMSLP            .EQ  $0000
DPSLP            .EQ  $0002
SRETEN           .EQ  $0004


;----- RCON3 Bits -----------------------------------------------------
VBAT             .EQ  $0000
VBPOR            .EQ  $0001
VDDPOR           .EQ  $0002
VDDBOR           .EQ  $0003
STKERR           .EQ  $0007


;----- RCON2 Bits -----------------------------------------------------
SWDTEN           .EQ  $0005
EXTR             .EQ  $0007


;----- EECON1 Bits -----------------------------------------------------
WR               .EQ  $0001
WREN             .EQ  $0002
WRERR            .EQ  $0003
FREE             .EQ  $0004
WWPROG           .EQ  $0005


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
PSPIE            .EQ  $0007


;----- PIR1 Bits -----------------------------------------------------
TMR1IF           .EQ  $0000
TMR2IF           .EQ  $0001
TMR1GIF          .EQ  $0002
SSP1IF           .EQ  $0003
TX1IF            .EQ  $0004
RC1IF            .EQ  $0005
ADIF             .EQ  $0006
PSPIF            .EQ  $0007


;----- IPR1 Bits -----------------------------------------------------
TMR1IP           .EQ  $0000
TMR2IP           .EQ  $0001
TMR1GIP          .EQ  $0002
SSP1IP           .EQ  $0003
TX1IP            .EQ  $0004
RC1IP            .EQ  $0005
ADIP             .EQ  $0006
PSPIP            .EQ  $0007


;----- PIE2 Bits -----------------------------------------------------
TMR3GIE          .EQ  $0000
TMR3IE           .EQ  $0001
HLVDIE           .EQ  $0002
BCL1IE           .EQ  $0003
USBIE            .EQ  $0004
BCL2IE           .EQ  $0005
SSP2IE           .EQ  $0006
OSCFIE           .EQ  $0007


;----- PIR2 Bits -----------------------------------------------------
TMR3GIF          .EQ  $0000
TMR3IF           .EQ  $0001
HLVDIF           .EQ  $0002
BCL1IF           .EQ  $0003
USBIF            .EQ  $0004
BCL2IF           .EQ  $0005
SSP2IF           .EQ  $0006
OSCFIF           .EQ  $0007

LVDIF            .EQ  $0002


;----- IPR2 Bits -----------------------------------------------------
TMR3GIP          .EQ  $0000
TMR3IP           .EQ  $0001
HLVDIP           .EQ  $0002
BCL1IP           .EQ  $0003
USBIP            .EQ  $0004
BCL2IP           .EQ  $0005
SSP2IP           .EQ  $0006
OSCFIP           .EQ  $0007


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
TX3IF            .EQ  $0004
RC3IF            .EQ  $0005
TX4IF            .EQ  $0006
RC4IF            .EQ  $0007


;----- PSPCON Bits -----------------------------------------------------
PSPMODE          .EQ  $0004
IBOV             .EQ  $0005
OBF              .EQ  $0006
IBF              .EQ  $0007


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
TX3IP            .EQ  $0004
RC3IP            .EQ  $0005
TX4IP            .EQ  $0006
RC4IP            .EQ  $0007


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

ADEN             .EQ  $0003


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


;----- TXSTA Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- TXSTA1 Bits -----------------------------------------------------
TX9D             .EQ  $0000
TRMT             .EQ  $0001
BRGH             .EQ  $0002
SENDB            .EQ  $0003
SYNC             .EQ  $0004
TXEN             .EQ  $0005
TX9              .EQ  $0006
CSRC             .EQ  $0007


;----- SPBRG Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


;----- SPBRG1 Bits -----------------------------------------------------
BRG0             .EQ  $0000
BRG1             .EQ  $0001
BRG2             .EQ  $0002
BRG3             .EQ  $0003
BRG4             .EQ  $0004
BRG5             .EQ  $0005
BRG6             .EQ  $0006
BRG7             .EQ  $0007


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


;----- PIE4 Bits -----------------------------------------------------
ECCP3IE          .EQ  $0000
CCP4IE           .EQ  $0001
CCP5IE           .EQ  $0002
CCP6IE           .EQ  $0003
CCP7IE           .EQ  $0004
CCP8IE           .EQ  $0005
CCP9IE           .EQ  $0006
CCP10IE          .EQ  $0007


;----- PIR4 Bits -----------------------------------------------------
ECCP3IF          .EQ  $0000
CCP4IF           .EQ  $0001
CCP5IF           .EQ  $0002
CCP6IF           .EQ  $0003
CCP7IF           .EQ  $0004
CCP8IF           .EQ  $0005
CCP9IF           .EQ  $0006
CCP10IF          .EQ  $0007


;----- IPR4 Bits -----------------------------------------------------
ECCP3IP          .EQ  $0000
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
TMR8IE           .EQ  $0004
ACTLOCKIE        .EQ  $0005
ACTORSIE         .EQ  $0006


;----- PIR5 Bits -----------------------------------------------------
TMR4IF           .EQ  $0000
TMR5IF           .EQ  $0001
TMR6IF           .EQ  $0002
TMR8IF           .EQ  $0004
ACTLOCKIF        .EQ  $0005
ACTORSIF         .EQ  $0006


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


;----- ECCP1DEL Bits -----------------------------------------------------
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


;----- CVRCONL Bits -----------------------------------------------------
CVRNSS           .EQ  $0000
CVROE            .EQ  $0006
CVREN            .EQ  $0007

CVRPSS0          .EQ  $0004
CVRPSS1          .EQ  $0005


;----- CVRCONH Bits -----------------------------------------------------
CVR0             .EQ  $0000
CVR1             .EQ  $0001
CVR2             .EQ  $0002
CVR3             .EQ  $0003
CVR4             .EQ  $0004


;----- ADCON1L Bits -----------------------------------------------------
DONE             .EQ  $0000
SAMP             .EQ  $0001
ASAM             .EQ  $0002

SSRC0            .EQ  $0004
SSRC1            .EQ  $0005
SSRC2            .EQ  $0006
SSRC3            .EQ  $0007


;----- ADCON1H Bits -----------------------------------------------------
MODE12           .EQ  $0002
ADON             .EQ  $0007

FORM0            .EQ  $0000
FORM1            .EQ  $0001


;----- CMSTAT Bits -----------------------------------------------------
C1OUT            .EQ  $0000
C2OUT            .EQ  $0001
C3OUT            .EQ  $0002


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


;----- SSP1CON1 Bits -----------------------------------------------------
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
IPEN             .EQ  $0007

BOR_RCON         .EQ  $0000
POR              .EQ  $0001
PD               .EQ  $0002
TO               .EQ  $0003
RI               .EQ  $0004
CM               .EQ  $0005


;----- IOCF Bits -----------------------------------------------------
IOCF0            .EQ  $0000
IOCF1            .EQ  $0001
IOCF2            .EQ  $0002
IOCF3            .EQ  $0003
IOCF4            .EQ  $0004
IOCF5            .EQ  $0005
IOCF6            .EQ  $0006
IOCF7            .EQ  $0007


;----- IPR5 Bits -----------------------------------------------------
TMR4IP           .EQ  $0000
TMR5IP           .EQ  $0001
TMR6IP           .EQ  $0002
TMR8IP           .EQ  $0004
ACTLOCKIP        .EQ  $0005
ACTORSIP         .EQ  $0006


;----- OSCCON Bits -----------------------------------------------------
IDLEN            .EQ  $0007

NOSC0            .EQ  $0000
NOSC1            .EQ  $0001
NOSC2            .EQ  $0002
COSC0            .EQ  $0004
COSC1            .EQ  $0005
COSC2            .EQ  $0006


;----- T0CON Bits -----------------------------------------------------
PSA              .EQ  $0003
T08BIT           .EQ  $0006
TMR0ON           .EQ  $0007

T0PS0            .EQ  $0000
T0PS1            .EQ  $0001
T0PS2            .EQ  $0002
T0CS0            .EQ  $0004
T0CS1            .EQ  $0005


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
IOCIP            .EQ  $0000
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
IOCIF            .EQ  $0000
INT0IF           .EQ  $0001
TMR0IF           .EQ  $0002
IOCIE            .EQ  $0003
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
;   Stack Overflow/Underflow Reset:
;     STVREN = OFF         Disabled
;     STVREN = ON          Enabled
;
;   Extended Instruction Set:
;     XINST = OFF          Disabled
;     XINST = ON           Enabled
;
;   Brown-Out Reset Enable:
;     BOREN = OFF          Disabled in hardware
;     BOREN = ON           Controlled with SBOREN bit, disabled in Deep Sleep
;
;   Brown-out Reset Voltage:
;     BORV = 0             2.0V
;     BORV = 1             1.8V
;
;   Code Protect:
;     CP0 = ON             Program memory is code-protected
;     CP0 = OFF            Program memory is not code-protected
;
;   Oscillator:
;     FOSC = FRC           Fast RC Oscillator (FRC)
;     FOSC = FRCPLL        Fast RC Oscillator with PLL module (FRCPLL)
;     FOSC = PRI           Primary Oscillator (XT, HS, EC)
;     FOSC = PRIPLL        Primary Oscillator with PLL module (XTPLL,HSPLL,ECPLL)
;     FOSC = SOSC          Secondary Oscillator (SOSC)
;     FOSC = LPRC          Low-Power RC Oscillator (LPRC)
;     FOSC = FRC500KHZ     Fast RC Oscillator divided by 16 (500 kHz)
;     FOSC = FRCDIV        Fast RC Oscillator with Postscaler (FRCDIV)
;
;   T1OSC/SOSC Power Selection Bits:
;     SOSCSEL = DIG        Digital (SCLKI) mode
;     SOSCSEL = LOW        Low Power T1OSC/SOSC circuit selected
;
;   Clock Out Enable Bit:
;     CLKOEN = OFF         CLKO output disabled on the RA6 pin
;     CLKOEN = ON          CLKO output enabled on the RA6 pin
;
;   Internal External Oscillator Switch Over Mode:
;     IESO = OFF           Disabled
;     IESO = ON            Enabled
;
;   PLL Frequency Multiplier Select bits:
;     PLLDIV = NODIV       96 MHz PLL selected; No divide - Oscillator used directly (4 MHz input)
;     PLLDIV = DIV2        96 MHz PLL selected; Oscillator divided by 2 (8 MHz input)
;     PLLDIV = DIV3        96 MHz PLL selected; Oscillator divided by 3 (12 MHz input)
;     PLLDIV = DIV4        96 MHz PLL selected; Oscillator divided by 4 (16 MHz input)
;     PLLDIV = DIV5        96 MHz PLL selected; Oscillator divided by 5 (20 MHz input)
;     PLLDIV = DIV6        96 MHz PLL selected; Oscillator divided by 6 (24 MHz input)
;     PLLDIV = DIV10       96 MHz PLL selected; Oscillator divided by 10 (40 MHz input)
;     PLLDIV = DIV12       96 MHz PLL selected; Oscillator divided by 12 (48 MHz input)
;     PLLDIV = RESERVED    RESERVED
;     PLLDIV = RESERVED    RESERVED
;     PLLDIV = RESERVED    RESERVED
;     PLLDIV = RESERVED    RESERVED
;     PLLDIV = PLL4X       4x PLL selected
;     PLLDIV = PLL6X       6x PLL selected
;     PLLDIV = PLL8X       8x PLL selected
;     PLLDIV = NOPLL       No PLL used - PLLGO bit not available to user
;
;   Primary Oscillator Select:
;     POSCMD = EC          External clock mode selected
;     POSCMD = MS          MS oscillator mode selected(3.5 MHz -10 MHz)
;     POSCMD = HS          HS oscillator mode selected(10 MHz - 40 MHz)
;     POSCMD = NONE        Primary oscillator disabled
;
;   Clock Switching and Monitor Selection Configuration bits:
;     FSCM = CSECME        Clock switching is enabled, fail safe clock monitor is enabled
;     FSCM = CSECMD        Clock switching is enabled, fail safe clock monitor is disabled
;     FSCM = CSDCMD        Clock switching is disabled, fail safe clock monitor is disabled
;
;   Write/Erase Protect Page Start/End Boundary:
;     WPFP = WPFP0         Write Protect Program Flash Page 0
;     WPFP = WPFP1         Write Protect Program Flash Page 1
;     WPFP = WPFP2         Write Protect Program Flash Page 2
;     WPFP = WPFP3         Write Protect Program Flash Page 3
;     WPFP = WPFP4         Write Protect Program Flash Page 4
;     WPFP = WPFP5         Write Protect Program Flash Page 5
;     WPFP = WPFP6         Write Protect Program Flash Page 6
;     WPFP = WPFP7         Write Protect Program Flash Page 7
;     WPFP = WPFP8         Write Protect Program Flash Page 8
;     WPFP = WPFP9         Write Protect Program Flash Page 9
;     WPFP = WPFP10        Write Protect Program Flash Page 10
;     WPFP = WPFP11        Write Protect Program Flash Page 11
;     WPFP = WPFP12        Write Protect Program Flash Page 12
;     WPFP = WPFP13        Write Protect Program Flash Page 13
;     WPFP = WPFP14        Write Protect Program Flash Page 14
;     WPFP = WPFP15        Write Protect Program Flash Page 15
;     WPFP = WPFP16        Write Protect Program Flash Page 16
;     WPFP = WPFP17        Write Protect Program Flash Page 17
;     WPFP = WPFP18        Write Protect Program Flash Page 18
;     WPFP = WPFP19        Write Protect Program Flash Page 19
;     WPFP = WPFP20        Write Protect Program Flash Page 20
;     WPFP = WPFP21        Write Protect Program Flash Page 21
;     WPFP = WPFP22        Write Protect Program Flash Page 22
;     WPFP = WPFP23        Write Protect Program Flash Page 23
;     WPFP = WPFP24        Write Protect Program Flash Page 24
;     WPFP = WPFP25        Write Protect Program Flash Page 25
;     WPFP = WPFP26        Write Protect Program Flash Page 26
;     WPFP = WPFP27        Write Protect Program Flash Page 27
;     WPFP = WPFP28        Write Protect Program Flash Page 28
;     WPFP = WPFP29        Write Protect Program Flash Page 29
;     WPFP = WPFP30        Write Protect Program Flash Page 30
;     WPFP = WPFP31        Write Protect Program Flash Page 31
;     WPFP = WPFP32        Write Protect Program Flash Page 32
;     WPFP = WPFP33        Write Protect Program Flash Page 33
;     WPFP = WPFP34        Write Protect Program Flash Page 34
;     WPFP = WPFP35        Write Protect Program Flash Page 35
;     WPFP = WPFP36        Write Protect Program Flash Page 36
;     WPFP = WPFP37        Write Protect Program Flash Page 37
;     WPFP = WPFP38        Write Protect Program Flash Page 38
;     WPFP = WPFP39        Write Protect Program Flash Page 39
;     WPFP = WPFP40        Write Protect Program Flash Page 40
;     WPFP = WPFP41        Write Protect Program Flash Page 41
;     WPFP = WPFP42        Write Protect Program Flash Page 42
;     WPFP = WPFP43        Write Protect Program Flash Page 43
;     WPFP = WPFP44        Write Protect Program Flash Page 44
;     WPFP = WPFP45        Write Protect Program Flash Page 45
;     WPFP = WPFP46        Write Protect Program Flash Page 46
;     WPFP = WPFP47        Write Protect Program Flash Page 47
;     WPFP = WPFP48        Write Protect Program Flash Page 48
;     WPFP = WPFP49        Write Protect Program Flash Page 49
;     WPFP = WPFP50        Write Protect Program Flash Page 50
;     WPFP = WPFP51        Write Protect Program Flash Page 51
;     WPFP = WPFP52        Write Protect Program Flash Page 52
;     WPFP = WPFP53        Write Protect Program Flash Page 53
;     WPFP = WPFP54        Write Protect Program Flash Page 54
;     WPFP = WPFP55        Write Protect Program Flash Page 55
;     WPFP = WPFP56        Write Protect Program Flash Page 56
;     WPFP = WPFP57        Write Protect Program Flash Page 57
;     WPFP = WPFP58        Write Protect Program Flash Page 58
;     WPFP = WPFP59        Write Protect Program Flash Page 59
;     WPFP = WPFP60        Write Protect Program Flash Page 60
;     WPFP = WPFP61        Write Protect Program Flash Page 61
;     WPFP = WPFP62        Write Protect Program Flash Page 62
;     WPFP = WPFP63        Write Protect Program Flash Page 63
;     WPFP = WPFP64        Write Protect Program Flash Page 64
;     WPFP = WPFP65        Write Protect Program Flash Page 65
;     WPFP = WPFP66        Write Protect Program Flash Page 66
;     WPFP = WPFP67        Write Protect Program Flash Page 67
;     WPFP = WPFP68        Write Protect Program Flash Page 68
;     WPFP = WPFP69        Write Protect Program Flash Page 69
;     WPFP = WPFP70        Write Protect Program Flash Page 70
;     WPFP = WPFP71        Write Protect Program Flash Page 71
;     WPFP = WPFP72        Write Protect Program Flash Page 72
;     WPFP = WPFP73        Write Protect Program Flash Page 73
;     WPFP = WPFP74        Write Protect Program Flash Page 74
;     WPFP = WPFP75        Write Protect Program Flash Page 75
;     WPFP = WPFP76        Write Protect Program Flash Page 76
;     WPFP = WPFP77        Write Protect Program Flash Page 77
;     WPFP = WPFP78        Write Protect Program Flash Page 78
;     WPFP = WPFP79        Write Protect Program Flash Page 79
;     WPFP = WPFP80        Write Protect Program Flash Page 80
;     WPFP = WPFP81        Write Protect Program Flash Page 81
;     WPFP = WPFP82        Write Protect Program Flash Page 82
;     WPFP = WPFP83        Write Protect Program Flash Page 83
;     WPFP = WPFP84        Write Protect Program Flash Page 84
;     WPFP = WPFP85        Write Protect Program Flash Page 85
;     WPFP = WPFP86        Write Protect Program Flash Page 86
;     WPFP = WPFP87        Write Protect Program Flash Page 87
;     WPFP = WPFP88        Write Protect Program Flash Page 88
;     WPFP = WPFP89        Write Protect Program Flash Page 89
;     WPFP = WPFP90        Write Protect Program Flash Page 90
;     WPFP = WPFP91        Write Protect Program Flash Page 91
;     WPFP = WPFP92        Write Protect Program Flash Page 92
;     WPFP = WPFP93        Write Protect Program Flash Page 93
;     WPFP = WPFP94        Write Protect Program Flash Page 94
;     WPFP = WPFP95        Write Protect Program Flash Page 95
;     WPFP = WPFP96        Write Protect Program Flash Page 96
;     WPFP = WPFP97        Write Protect Program Flash Page 97
;     WPFP = WPFP98        Write Protect Program Flash Page 98
;     WPFP = WPFP99        Write Protect Program Flash Page 99
;     WPFP = WPFP100       Write Protect Program Flash Page 100
;     WPFP = WPFP101       Write Protect Program Flash Page 101
;     WPFP = WPFP102       Write Protect Program Flash Page 102
;     WPFP = WPFP103       Write Protect Program Flash Page 103
;     WPFP = WPFP104       Write Protect Program Flash Page 104
;     WPFP = WPFP105       Write Protect Program Flash Page 105
;     WPFP = WPFP106       Write Protect Program Flash Page 106
;     WPFP = WPFP107       Write Protect Program Flash Page 107
;     WPFP = WPFP108       Write Protect Program Flash Page 108
;     WPFP = WPFP109       Write Protect Program Flash Page 109
;     WPFP = WPFP110       Write Protect Program Flash Page 110
;     WPFP = WPFP111       Write Protect Program Flash Page 111
;     WPFP = WPFP112       Write Protect Program Flash Page 112
;     WPFP = WPFP113       Write Protect Program Flash Page 113
;     WPFP = WPFP114       Write Protect Program Flash Page 114
;     WPFP = WPFP115       Write Protect Program Flash Page 115
;     WPFP = WPFP116       Write Protect Program Flash Page 116
;     WPFP = WPFP117       Write Protect Program Flash Page 117
;     WPFP = WPFP118       Write Protect Program Flash Page 118
;     WPFP = WPFP119       Write Protect Program Flash Page 119
;     WPFP = WPFP120       Write Protect Program Flash Page 120
;     WPFP = WPFP121       Write Protect Program Flash Page 121
;     WPFP = WPFP122       Write Protect Program Flash Page 122
;     WPFP = WPFP123       Write Protect Program Flash Page 123
;     WPFP = WPFP124       Write Protect Program Flash Page 124
;     WPFP = WPFP125       Write Protect Program Flash Page 125
;     WPFP = WPFP126       Write Protect Program Flash Page 126
;     WPFP = WPFP127       Write Protect Program Flash Page 127
;     WPFP = WPFP128       Write Protect Program Flash Page 128
;     WPFP = WPFP129       Write Protect Program Flash Page 129
;     WPFP = WPFP130       Write Protect Program Flash Page 130
;     WPFP = WPFP131       Write Protect Program Flash Page 131
;     WPFP = WPFP132       Write Protect Program Flash Page 132
;     WPFP = WPFP133       Write Protect Program Flash Page 133
;     WPFP = WPFP134       Write Protect Program Flash Page 134
;     WPFP = WPFP135       Write Protect Program Flash Page 135
;     WPFP = WPFP136       Write Protect Program Flash Page 136
;     WPFP = WPFP137       Write Protect Program Flash Page 137
;     WPFP = WPFP138       Write Protect Program Flash Page 138
;     WPFP = WPFP139       Write Protect Program Flash Page 139
;     WPFP = WPFP140       Write Protect Program Flash Page 140
;     WPFP = WPFP141       Write Protect Program Flash Page 141
;     WPFP = WPFP142       Write Protect Program Flash Page 142
;     WPFP = WPFP143       Write Protect Program Flash Page 143
;     WPFP = WPFP144       Write Protect Program Flash Page 144
;     WPFP = WPFP145       Write Protect Program Flash Page 145
;     WPFP = WPFP146       Write Protect Program Flash Page 146
;     WPFP = WPFP147       Write Protect Program Flash Page 147
;     WPFP = WPFP148       Write Protect Program Flash Page 148
;     WPFP = WPFP149       Write Protect Program Flash Page 149
;     WPFP = WPFP150       Write Protect Program Flash Page 150
;     WPFP = WPFP151       Write Protect Program Flash Page 151
;     WPFP = WPFP152       Write Protect Program Flash Page 152
;     WPFP = WPFP153       Write Protect Program Flash Page 153
;     WPFP = WPFP154       Write Protect Program Flash Page 154
;     WPFP = WPFP155       Write Protect Program Flash Page 155
;     WPFP = WPFP156       Write Protect Program Flash Page 156
;     WPFP = WPFP157       Write Protect Program Flash Page 157
;     WPFP = WPFP158       Write Protect Program Flash Page 158
;     WPFP = WPFP159       Write Protect Program Flash Page 159
;     WPFP = WPFP160       Write Protect Program Flash Page 160
;     WPFP = WPFP161       Write Protect Program Flash Page 161
;     WPFP = WPFP162       Write Protect Program Flash Page 162
;     WPFP = WPFP163       Write Protect Program Flash Page 163
;     WPFP = WPFP164       Write Protect Program Flash Page 164
;     WPFP = WPFP165       Write Protect Program Flash Page 165
;     WPFP = WPFP166       Write Protect Program Flash Page 166
;     WPFP = WPFP167       Write Protect Program Flash Page 167
;     WPFP = WPFP168       Write Protect Program Flash Page 168
;     WPFP = WPFP169       Write Protect Program Flash Page 169
;     WPFP = WPFP170       Write Protect Program Flash Page 170
;     WPFP = WPFP171       Write Protect Program Flash Page 171
;     WPFP = WPFP172       Write Protect Program Flash Page 172
;     WPFP = WPFP173       Write Protect Program Flash Page 173
;     WPFP = WPFP174       Write Protect Program Flash Page 174
;     WPFP = WPFP175       Write Protect Program Flash Page 175
;     WPFP = WPFP176       Write Protect Program Flash Page 176
;     WPFP = WPFP177       Write Protect Program Flash Page 177
;     WPFP = WPFP178       Write Protect Program Flash Page 178
;     WPFP = WPFP179       Write Protect Program Flash Page 179
;     WPFP = WPFP180       Write Protect Program Flash Page 180
;     WPFP = WPFP181       Write Protect Program Flash Page 181
;     WPFP = WPFP182       Write Protect Program Flash Page 182
;     WPFP = WPFP183       Write Protect Program Flash Page 183
;     WPFP = WPFP184       Write Protect Program Flash Page 184
;     WPFP = WPFP185       Write Protect Program Flash Page 185
;     WPFP = WPFP186       Write Protect Program Flash Page 186
;     WPFP = WPFP187       Write Protect Program Flash Page 187
;     WPFP = WPFP188       Write Protect Program Flash Page 188
;     WPFP = WPFP189       Write Protect Program Flash Page 189
;     WPFP = WPFP190       Write Protect Program Flash Page 190
;     WPFP = WPFP191       Write Protect Program Flash Page 191
;     WPFP = WPFP192       Write Protect Program Flash Page 192
;     WPFP = WPFP193       Write Protect Program Flash Page 193
;     WPFP = WPFP194       Write Protect Program Flash Page 194
;     WPFP = WPFP195       Write Protect Program Flash Page 195
;     WPFP = WPFP196       Write Protect Program Flash Page 196
;     WPFP = WPFP197       Write Protect Program Flash Page 197
;     WPFP = WPFP198       Write Protect Program Flash Page 198
;     WPFP = WPFP199       Write Protect Program Flash Page 199
;     WPFP = WPFP200       Write Protect Program Flash Page 200
;     WPFP = WPFP201       Write Protect Program Flash Page 201
;     WPFP = WPFP202       Write Protect Program Flash Page 202
;     WPFP = WPFP203       Write Protect Program Flash Page 203
;     WPFP = WPFP204       Write Protect Program Flash Page 204
;     WPFP = WPFP205       Write Protect Program Flash Page 205
;     WPFP = WPFP206       Write Protect Program Flash Page 206
;     WPFP = WPFP207       Write Protect Program Flash Page 207
;     WPFP = WPFP208       Write Protect Program Flash Page 208
;     WPFP = WPFP209       Write Protect Program Flash Page 209
;     WPFP = WPFP210       Write Protect Program Flash Page 210
;     WPFP = WPFP211       Write Protect Program Flash Page 211
;     WPFP = WPFP212       Write Protect Program Flash Page 212
;     WPFP = WPFP213       Write Protect Program Flash Page 213
;     WPFP = WPFP214       Write Protect Program Flash Page 214
;     WPFP = WPFP215       Write Protect Program Flash Page 215
;     WPFP = WPFP216       Write Protect Program Flash Page 216
;     WPFP = WPFP217       Write Protect Program Flash Page 217
;     WPFP = WPFP218       Write Protect Program Flash Page 218
;     WPFP = WPFP219       Write Protect Program Flash Page 219
;     WPFP = WPFP220       Write Protect Program Flash Page 220
;     WPFP = WPFP221       Write Protect Program Flash Page 221
;     WPFP = WPFP222       Write Protect Program Flash Page 222
;     WPFP = WPFP223       Write Protect Program Flash Page 223
;     WPFP = WPFP224       Write Protect Program Flash Page 224
;     WPFP = WPFP225       Write Protect Program Flash Page 225
;     WPFP = WPFP226       Write Protect Program Flash Page 226
;     WPFP = WPFP227       Write Protect Program Flash Page 227
;     WPFP = WPFP228       Write Protect Program Flash Page 228
;     WPFP = WPFP229       Write Protect Program Flash Page 229
;     WPFP = WPFP230       Write Protect Program Flash Page 230
;     WPFP = WPFP231       Write Protect Program Flash Page 231
;     WPFP = WPFP232       Write Protect Program Flash Page 232
;     WPFP = WPFP233       Write Protect Program Flash Page 233
;     WPFP = WPFP234       Write Protect Program Flash Page 234
;     WPFP = WPFP235       Write Protect Program Flash Page 235
;     WPFP = WPFP236       Write Protect Program Flash Page 236
;     WPFP = WPFP237       Write Protect Program Flash Page 237
;     WPFP = WPFP238       Write Protect Program Flash Page 238
;     WPFP = WPFP239       Write Protect Program Flash Page 239
;     WPFP = WPFP240       Write Protect Program Flash Page 240
;     WPFP = WPFP241       Write Protect Program Flash Page 241
;     WPFP = WPFP242       Write Protect Program Flash Page 242
;     WPFP = WPFP243       Write Protect Program Flash Page 243
;     WPFP = WPFP244       Write Protect Program Flash Page 244
;     WPFP = WPFP245       Write Protect Program Flash Page 245
;     WPFP = WPFP246       Write Protect Program Flash Page 246
;     WPFP = WPFP247       Write Protect Program Flash Page 247
;     WPFP = WPFP248       Write Protect Program Flash Page 248
;     WPFP = WPFP249       Write Protect Program Flash Page 249
;     WPFP = WPFP250       Write Protect Program Flash Page 250
;     WPFP = WPFP251       Write Protect Program Flash Page 251
;     WPFP = WPFP252       Write Protect Program Flash Page 252
;     WPFP = WPFP253       Write Protect Program Flash Page 253
;     WPFP = WPFP254       Write Protect Program Flash Page 254
;     WPFP = WPFP255       Write Protect Program Flash Page 255
;
;   Segment Write Protection Disable:
;     WPDIS = WPEN         Enabled
;     WPDIS = WPDIS        Disabled
;
;   Segment Write Protection End Page Select:
;     WPEND = WPSTARTMEM   write Protect from page 0 to WPFP
;     WPEND = WPENDMEM     Write Protect from WPFP to the last page of memory
;
;   Write Protect Configuration Page Select:
;     WPCFG = WPCFGEN      Enabled
;     WPCFG = WPCFGDIS     Disabled
;
;   TMR5 Gate Select bit:
;     T5GSEL = T3G         TMR5 Gate is driven by the T3G input
;     T5GSEL = T5G         TMR5 Gate is driven by the T5G input
;
;   CxINA Gate Select bit:
;     CINASEL = RA5        C1INA and C3INA are all re-mapped to pin RA5
;     CINASEL = DEFAULT    C1INA and C3INA are on their default pin locations
;
;   IOLOCK One-Way Set Enable bit:
;     IOL1WAY = OFF        the IOLOCK bit can be set and cleared using the unlock sequence
;     IOL1WAY = ON         Once set, the IOLOCK bit cannot be cleared
;
;   USB Low Speed Clock Select bit:
;     LS48MHZ = SYSX1      Divide-by-1 (System clock must be 6 MHz)
;     LS48MHZ = SYSX2      Divide-by-2 (System clock must be 12 MHz)
;
;   MSSP2 7-Bit Address Masking Mode Enable bit:
;     MSSPMSK2 = MSK5      5 Bit address masking mode
;     MSSPMSK2 = MSK7      7 Bit address masking mode
;
;   MSSP1 7-Bit Address Masking Mode Enable bit:
;     MSSPMSK1 = MSK5      5 bit address masking mode
;     MSSPMSK1 = MSK7      7 Bit address masking mode
;
;   Watch Dog Timer Window:
;     WDTWIN = PS75_0      Watch Dog Timer Window Width is 75 percent
;     WDTWIN = PS50_0      Watch Dog Timer Window Width is 50 percent
;     WDTWIN = PS37_5      Watch Dog Timer Window Width is 37.5 percent
;     WDTWIN = PS25_0      Watch Dog Timer Window Width is 25 percent
;
;   Watch Dog Timer Clock Source:
;     WDTCLK = SYS         Use FOSC/4 when system clock is not INTOSC/LPRC and device is not in Sleep; otherwise, use INTOSC/LPRC
;     WDTCLK = SOSC        Always use SOSC
;     WDTCLK = LPRC        Always use INTOSC/LPRC
;     WDTCLK = FRC         Use FRC when WINDIS = 0, system clock is not INTOSC/LPRC and device is not in Sleep; otherwise, use INTOSC/LPRC
;
;   Watchdog Timer Postscale:
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
;   Watchdog Timer Enable:
;     WDTEN = OFF          WDT disabled in hardware; SWDTEN bit disabled
;     WDTEN = NOSLP        WDT enabled only while device is active and disabled in Sleep mode; SWDTEN bit disabled
;     WDTEN = ON           WDT controlled by SWDTEN bit setting
;     WDTEN = SWDTDIS      WDT enabled in hardware; SWDTEN bit disabled
;
;   Windowed Watchdog Timer Disable:
;     WINDIS = WDTWIN      Windowed WDT enabled
;     WINDIS = WDTSTD      Standard WDT selected; windowed WDT disabled
;
;   WDT Prescaler:
;     WPSA = 32            WDT prescaler ratio of 1:32
;     WPSA = 128           WDT prescaler ratio of 1:128
;
;   Retention Voltage Regulator Control Enable:
;     RETEN = ON           Retention controlled by SRETEN during Sleep
;     RETEN = OFF          Retention not available
;
;   VBAT BOR Enable:
;     VBTBOR = OFF         VBAT BOR is disabled
;     VBTBOR = ON          VBAT BOR is enabled
;
;   Deep Sleep BOR Enable:
;     DSBOREN = OFF        BOR disabled in Deep Sleep (does not affect operation in non-Deep Sleep modes)
;     DSBOREN = ON         BOR enabled in Deep Sleep
;
;   DSEN Bit Enable bit:
;     DSBITEN = OFF        Deep Sleep operation is always disabled
;     DSBITEN = ON         Deep Sleep is controlled by the register bit DSEN
;
;   Deep Sleep Watchdog Timer Postscale Select:
;     DSWDTPS = DSWDTPS0   1:32 (1 mS)
;     DSWDTPS = DSWDTPS1   1:64 (2.1 mS)
;     DSWDTPS = DSWDTPS2   1:128 (4.1 mS)
;     DSWDTPS = DSWDTPS3   1: 256 (8.3 mS)
;     DSWDTPS = DSWDTPS4   1:512 (16.5 mS)
;     DSWDTPS = DSWDTPS5   1:1024 (33 mS)
;     DSWDTPS = DSWDTPS6   1:2048 (66.1 mS)
;     DSWDTPS = DSWDTPS7   1:4096 (132.1 mS)
;     DSWDTPS = DSWDTPS8   1:8192 (264.3 mS)
;     DSWDTPS = DSWDTPS9   1:16384 (528.5 mS)
;     DSWDTPS = DSWDTPSA   1:32768 (1.057 Secs)
;     DSWDTPS = DSWDTPSB   1:65536 (2.114 Secs)
;     DSWDTPS = DSWDTPSC   1:131072 (4.228 Secs)
;     DSWDTPS = DSWDTPSD   1:262114 (8.456 Secs)
;     DSWDTPS = DSWDTPSE   1:524288 (16.912 Secs)
;     DSWDTPS = DSWDTPSF   1:1048576 (33.825 Secs)
;     DSWDTPS = DSWDTPS10  1:2097152 (67.7 Secs)
;     DSWDTPS = DSWDTPS11  1:4194304 (135.3 Secs)
;     DSWDTPS = DSWDTPS12  1:8388608 (4.5 Minutes)
;     DSWDTPS = DSWDTPS13  1:16777216 (9 Minutes)
;     DSWDTPS = DSWDTPS14  1:33554432 (18 Minutes)
;     DSWDTPS = DSWDTPS15  1:67108864 (36.1 Minutes)
;     DSWDTPS = DSWDTPS16  1:134217728 (72.2 Minutes)
;     DSWDTPS = DSWDTPS17  1:268435456 (2.4 Hours)
;     DSWDTPS = DSWDTPS18  1:536870912 (4.8 Hours)
;     DSWDTPS = DSWDTPS19  1:1073741824 (9.6 Hours)
;     DSWDTPS = DSWDTPS1A  1:2147483648 (19.2 Hours)
;     DSWDTPS = DSWDTPS1B  1:4294967296 (38.5 Hours)
;     DSWDTPS = DSWDTPS1C  1:8589934592 (77 Hours)
;     DSWDTPS = DSWDTPS1D  1:17179869184 (6.4 Days)
;     DSWDTPS = DSWDTPS1E  1:34359738368 (12.8  Days)
;     DSWDTPS = DSWDTPS1F  1:68719476736 (25.7 Days)
;
;   Deep Sleep Watchdog Timer Enable:
;     DSWDTEN = OFF        DSWDT Disabled
;     DSWDTEN = ON         DSWDT Enabled
;
;   DSWDT Reference Clock Select:
;     DSWDTOSC = SOSC      DSWDT uses SOSC as reference clock
;     DSWDTOSC = LPRC      DSWDT uses LPRC as reference clock
;
;==========================================================================
;----- DEVID Equates --------------------------------------------------
_DEVID1          .EQ  $3FFFFE
_DEVID2          .EQ  $3FFFFF
