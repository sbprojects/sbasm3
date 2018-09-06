;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : m644RFR2def.inc
;* Title             : Register/Bit Definitions for the ATmega644RFR2
;* Created           : 2016-09-18 20:43
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATmega644RFR2
;*
;* DESCRIPTION
;* When including this file in the assembly program file, all I/O register
;* names and I/O register bit names appearing in the data book can be used.
;* In addition, the six registers forming the three data pointers X, Y and
;* Z have been assigned names XL - ZH. Highest RAM address for Internal
;* SRAM is also defined
;*
;*************************************************************************




; ***** SPECIFY DEVICE ***************************************************
; device	ATmega644RFR2

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0xA6
SIGNATURE_002	= 0x03

                .CR     avr
                .FA     enhanced128k
				.MS		$8000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED" are extended I/O ports
; and cannot be used with IN/OUT instructions
TRXFBEND	= 0x1FF ; MEMORY MAPPED
TRXFBST	= 0x180 ; MEMORY MAPPED
TST_RX_LENGTH	= 0x17B ; MEMORY MAPPED
TST_CTRL_DIGI	= 0x176 ; MEMORY MAPPED
CSMA_BE	= 0x16F ; MEMORY MAPPED
CSMA_SEED_1	= 0x16E ; MEMORY MAPPED
CSMA_SEED_0	= 0x16D ; MEMORY MAPPED
XAH_CTRL_0	= 0x16C ; MEMORY MAPPED
IEEE_ADDR_7	= 0x16B ; MEMORY MAPPED
IEEE_ADDR_6	= 0x16A ; MEMORY MAPPED
IEEE_ADDR_5	= 0x169 ; MEMORY MAPPED
IEEE_ADDR_4	= 0x168 ; MEMORY MAPPED
IEEE_ADDR_3	= 0x167 ; MEMORY MAPPED
IEEE_ADDR_2	= 0x166 ; MEMORY MAPPED
IEEE_ADDR_1	= 0x165 ; MEMORY MAPPED
IEEE_ADDR_0	= 0x164 ; MEMORY MAPPED
PAN_ID_1	= 0x163 ; MEMORY MAPPED
PAN_ID_0	= 0x162 ; MEMORY MAPPED
SHORT_ADDR_1	= 0x161 ; MEMORY MAPPED
SHORT_ADDR_0	= 0x160 ; MEMORY MAPPED
MAN_ID_1	= 0x15F ; MEMORY MAPPED
MAN_ID_0	= 0x15E ; MEMORY MAPPED
VERSION_NUM	= 0x15D ; MEMORY MAPPED
PART_NUM	= 0x15C ; MEMORY MAPPED
PLL_DCU	= 0x15B ; MEMORY MAPPED
PLL_CF	= 0x15A ; MEMORY MAPPED
FTN_CTRL	= 0x158 ; MEMORY MAPPED
XAH_CTRL_1	= 0x157 ; MEMORY MAPPED
TRX_RPC	= 0x156 ; MEMORY MAPPED
RX_SYN	= 0x155 ; MEMORY MAPPED
CC_CTRL_1	= 0x154 ; MEMORY MAPPED
CC_CTRL_0	= 0x153 ; MEMORY MAPPED
XOSC_CTRL	= 0x152 ; MEMORY MAPPED
BATMON	= 0x151 ; MEMORY MAPPED
VREG_CTRL	= 0x150 ; MEMORY MAPPED
IRQ_STATUS	= 0x14F ; MEMORY MAPPED
IRQ_MASK	= 0x14E ; MEMORY MAPPED
ANT_DIV	= 0x14D ; MEMORY MAPPED
TRX_CTRL_2	= 0x14C ; MEMORY MAPPED
SFD_VALUE	= 0x14B ; MEMORY MAPPED
RX_CTRL	= 0x14A ; MEMORY MAPPED
CCA_THRES	= 0x149 ; MEMORY MAPPED
PHY_CC_CCA	= 0x148 ; MEMORY MAPPED
PHY_ED_LEVEL	= 0x147 ; MEMORY MAPPED
PHY_RSSI	= 0x146 ; MEMORY MAPPED
PHY_TX_PWR	= 0x145 ; MEMORY MAPPED
TRX_CTRL_1	= 0x144 ; MEMORY MAPPED
TRX_CTRL_0	= 0x143 ; MEMORY MAPPED
TRX_STATE	= 0x142 ; MEMORY MAPPED
TRX_STATUS	= 0x141 ; MEMORY MAPPED
AES_KEY	= 0x13F ; MEMORY MAPPED
AES_STATE	= 0x13E ; MEMORY MAPPED
AES_STATUS	= 0x13D ; MEMORY MAPPED
AES_CTRL	= 0x13C ; MEMORY MAPPED
TRXPR	= 0x139 ; MEMORY MAPPED
PARCR	= 0x138 ; MEMORY MAPPED
DPDS1	= 0x137 ; MEMORY MAPPED
DPDS0	= 0x136 ; MEMORY MAPPED
DRTRAM0	= 0x135 ; MEMORY MAPPED
DRTRAM1	= 0x134 ; MEMORY MAPPED
DRTRAM2	= 0x133 ; MEMORY MAPPED
DRTRAM3	= 0x132 ; MEMORY MAPPED
LLDRH	= 0x131 ; MEMORY MAPPED
LLDRL	= 0x130 ; MEMORY MAPPED
LLCR	= 0x12F ; MEMORY MAPPED
OCR5CH	= 0x12D ; MEMORY MAPPED
OCR5CL	= 0x12C ; MEMORY MAPPED
OCR5BH	= 0x12B ; MEMORY MAPPED
OCR5BL	= 0x12A ; MEMORY MAPPED
OCR5AH	= 0x129 ; MEMORY MAPPED
OCR5AL	= 0x128 ; MEMORY MAPPED
ICR5H	= 0x127 ; MEMORY MAPPED
ICR5L	= 0x126 ; MEMORY MAPPED
TCNT5H	= 0x125 ; MEMORY MAPPED
TCNT5L	= 0x124 ; MEMORY MAPPED
TCCR5C	= 0x122 ; MEMORY MAPPED
TCCR5B	= 0x121 ; MEMORY MAPPED
TCCR5A	= 0x120 ; MEMORY MAPPED
MAFPA3H	= 0x11D ; MEMORY MAPPED
MAFPA3L	= 0x11C ; MEMORY MAPPED
MAFSA3H	= 0x11B ; MEMORY MAPPED
MAFSA3L	= 0x11A ; MEMORY MAPPED
MAFPA2H	= 0x119 ; MEMORY MAPPED
MAFPA2L	= 0x118 ; MEMORY MAPPED
MAFSA2H	= 0x117 ; MEMORY MAPPED
MAFSA2L	= 0x116 ; MEMORY MAPPED
MAFPA1H	= 0x115 ; MEMORY MAPPED
MAFPA1L	= 0x114 ; MEMORY MAPPED
MAFSA1H	= 0x113 ; MEMORY MAPPED
MAFSA1L	= 0x112 ; MEMORY MAPPED
MAFPA0H	= 0x111 ; MEMORY MAPPED
MAFPA0L	= 0x110 ; MEMORY MAPPED
MAFSA0H	= 0x10F ; MEMORY MAPPED
MAFSA0L	= 0x10E ; MEMORY MAPPED
MAFCR1	= 0x10D ; MEMORY MAPPED
MAFCR0	= 0x10C ; MEMORY MAPPED
SCTSTRHH	= 0xFC ; MEMORY MAPPED
SCTSTRHL	= 0xFB ; MEMORY MAPPED
SCTSTRLH	= 0xFA ; MEMORY MAPPED
SCTSTRLL	= 0xF9 ; MEMORY MAPPED
SCOCR1HH	= 0xF8 ; MEMORY MAPPED
SCOCR1HL	= 0xF7 ; MEMORY MAPPED
SCOCR1LH	= 0xF6 ; MEMORY MAPPED
SCOCR1LL	= 0xF5 ; MEMORY MAPPED
SCOCR2HH	= 0xF4 ; MEMORY MAPPED
SCOCR2HL	= 0xF3 ; MEMORY MAPPED
SCOCR2LH	= 0xF2 ; MEMORY MAPPED
SCOCR2LL	= 0xF1 ; MEMORY MAPPED
SCOCR3HH	= 0xF0 ; MEMORY MAPPED
SCOCR3HL	= 0xEF ; MEMORY MAPPED
SCOCR3LH	= 0xEE ; MEMORY MAPPED
SCOCR3LL	= 0xED ; MEMORY MAPPED
SCTSRHH	= 0xEC ; MEMORY MAPPED
SCTSRHL	= 0xEB ; MEMORY MAPPED
SCTSRLH	= 0xEA ; MEMORY MAPPED
SCTSRLL	= 0xE9 ; MEMORY MAPPED
SCBTSRHH	= 0xE8 ; MEMORY MAPPED
SCBTSRHL	= 0xE7 ; MEMORY MAPPED
SCBTSRLH	= 0xE6 ; MEMORY MAPPED
SCBTSRLL	= 0xE5 ; MEMORY MAPPED
SCCNTHH	= 0xE4 ; MEMORY MAPPED
SCCNTHL	= 0xE3 ; MEMORY MAPPED
SCCNTLH	= 0xE2 ; MEMORY MAPPED
SCCNTLL	= 0xE1 ; MEMORY MAPPED
SCIRQS	= 0xE0 ; MEMORY MAPPED
SCIRQM	= 0xDF ; MEMORY MAPPED
SCSR	= 0xDE ; MEMORY MAPPED
SCCR1	= 0xDD ; MEMORY MAPPED
SCCR0	= 0xDC ; MEMORY MAPPED
SCCSR	= 0xDB ; MEMORY MAPPED
SCRSTRHH	= 0xDA ; MEMORY MAPPED
SCRSTRHL	= 0xD9 ; MEMORY MAPPED
SCRSTRLH	= 0xD8 ; MEMORY MAPPED
SCRSTRLL	= 0xD7 ; MEMORY MAPPED
UDR1	= 0xCE ; MEMORY MAPPED
UBRR1H	= 0xCD ; MEMORY MAPPED
UBRR1L	= 0xCC ; MEMORY MAPPED
UCSR1C	= 0xCA ; MEMORY MAPPED
UCSR1B	= 0xC9 ; MEMORY MAPPED
UCSR1A	= 0xC8 ; MEMORY MAPPED
UDR0	= 0xC6 ; MEMORY MAPPED
UBRR0H	= 0xC5 ; MEMORY MAPPED
UBRR0L	= 0xC4 ; MEMORY MAPPED
UCSR0C	= 0xC2 ; MEMORY MAPPED
UCSR0B	= 0xC1 ; MEMORY MAPPED
UCSR0A	= 0xC0 ; MEMORY MAPPED
IRQ_STATUS1	= 0xBF ; MEMORY MAPPED
IRQ_MASK1	= 0xBE ; MEMORY MAPPED
TWAMR	= 0xBD ; MEMORY MAPPED
TWCR	= 0xBC ; MEMORY MAPPED
TWDR	= 0xBB ; MEMORY MAPPED
TWAR	= 0xBA ; MEMORY MAPPED
TWSR	= 0xB9 ; MEMORY MAPPED
TWBR	= 0xB8 ; MEMORY MAPPED
ASSR	= 0xB6 ; MEMORY MAPPED
OCR2B	= 0xB4 ; MEMORY MAPPED
OCR2A	= 0xB3 ; MEMORY MAPPED
TCNT2	= 0xB2 ; MEMORY MAPPED
TCCR2B	= 0xB1 ; MEMORY MAPPED
TCCR2A	= 0xB0 ; MEMORY MAPPED
OCR4CH	= 0xAD ; MEMORY MAPPED
OCR4CL	= 0xAC ; MEMORY MAPPED
OCR4BH	= 0xAB ; MEMORY MAPPED
OCR4BL	= 0xAA ; MEMORY MAPPED
OCR4AH	= 0xA9 ; MEMORY MAPPED
OCR4AL	= 0xA8 ; MEMORY MAPPED
ICR4H	= 0xA7 ; MEMORY MAPPED
ICR4L	= 0xA6 ; MEMORY MAPPED
TCNT4H	= 0xA5 ; MEMORY MAPPED
TCNT4L	= 0xA4 ; MEMORY MAPPED
TCCR4C	= 0xA2 ; MEMORY MAPPED
TCCR4B	= 0xA1 ; MEMORY MAPPED
TCCR4A	= 0xA0 ; MEMORY MAPPED
OCR3CH	= 0x9D ; MEMORY MAPPED
OCR3CL	= 0x9C ; MEMORY MAPPED
OCR3BH	= 0x9B ; MEMORY MAPPED
OCR3BL	= 0x9A ; MEMORY MAPPED
OCR3AH	= 0x99 ; MEMORY MAPPED
OCR3AL	= 0x98 ; MEMORY MAPPED
ICR3H	= 0x97 ; MEMORY MAPPED
ICR3L	= 0x96 ; MEMORY MAPPED
TCNT3H	= 0x95 ; MEMORY MAPPED
TCNT3L	= 0x94 ; MEMORY MAPPED
TCCR3C	= 0x92 ; MEMORY MAPPED
TCCR3B	= 0x91 ; MEMORY MAPPED
TCCR3A	= 0x90 ; MEMORY MAPPED
OCR1CH	= 0x8D ; MEMORY MAPPED
OCR1CL	= 0x8C ; MEMORY MAPPED
OCR1BH	= 0x8B ; MEMORY MAPPED
OCR1BL	= 0x8A ; MEMORY MAPPED
OCR1AH	= 0x89 ; MEMORY MAPPED
OCR1AL	= 0x88 ; MEMORY MAPPED
ICR1H	= 0x87 ; MEMORY MAPPED
ICR1L	= 0x86 ; MEMORY MAPPED
TCNT1H	= 0x85 ; MEMORY MAPPED
TCNT1L	= 0x84 ; MEMORY MAPPED
TCCR1C	= 0x82 ; MEMORY MAPPED
TCCR1B	= 0x81 ; MEMORY MAPPED
TCCR1A	= 0x80 ; MEMORY MAPPED
DIDR1	= 0x7F ; MEMORY MAPPED
DIDR0	= 0x7E ; MEMORY MAPPED
DIDR2	= 0x7D ; MEMORY MAPPED
ADMUX	= 0x7C ; MEMORY MAPPED
ADCSRB	= 0x7B ; MEMORY MAPPED
ADCSRA	= 0x7A ; MEMORY MAPPED
ADCH	= 0x79 ; MEMORY MAPPED
ADCL	= 0x78 ; MEMORY MAPPED
ADCSRC	= 0x77 ; MEMORY MAPPED
NEMCR	= 0x75 ; MEMORY MAPPED
TIMSK5	= 0x73 ; MEMORY MAPPED
TIMSK4	= 0x72 ; MEMORY MAPPED
TIMSK3	= 0x71 ; MEMORY MAPPED
TIMSK2	= 0x70 ; MEMORY MAPPED
TIMSK1	= 0x6F ; MEMORY MAPPED
TIMSK0	= 0x6E ; MEMORY MAPPED
PCMSK2	= 0x6D ; MEMORY MAPPED
PCMSK1	= 0x6C ; MEMORY MAPPED
PCMSK0	= 0x6B ; MEMORY MAPPED
EICRB	= 0x6A ; MEMORY MAPPED
EICRA	= 0x69 ; MEMORY MAPPED
PCICR	= 0x68 ; MEMORY MAPPED
BGCR	= 0x67 ; MEMORY MAPPED
OSCCAL	= 0x66 ; MEMORY MAPPED
PRR1	= 0x65 ; MEMORY MAPPED
PRR0	= 0x64 ; MEMORY MAPPED
PRR2	= 0x63 ; MEMORY MAPPED
CLKPR	= 0x61 ; MEMORY MAPPED
WDTCSR	= 0x60 ; MEMORY MAPPED
SREG	= 0x3F ; 
SPH	= 0x3E ; 
SPL	= 0x3D ; 
SPMCSR	= 0x37 ; 
MCUCR	= 0x35 ; 
MCUSR	= 0x34 ; 
SMCR	= 0x33 ; 
OCDR	= 0x31 ; 
ACSR	= 0x30 ; 
SPDR	= 0x2E ; 
SPSR	= 0x2D ; 
SPCR	= 0x2C ; 
GPIOR2	= 0x2B ; 
GPIOR1	= 0x2A ; 
OCR0B	= 0x28 ; 
OCR0A	= 0x27 ; 
TCNT0	= 0x26 ; 
TCCR0B	= 0x25 ; 
TCCR0A	= 0x24 ; 
GTCCR	= 0x23 ; 
EEARH	= 0x22 ; 
EEARL	= 0x21 ; 
EEDR	= 0x20 ; 
EECR	= 0x1F ; 
GPIOR0	= 0x1E ; 
EIMSK	= 0x1D ; 
EIFR	= 0x1C ; 
PCIFR	= 0x1B ; 
TIFR5	= 0x1A ; 
TIFR4	= 0x19 ; 
TIFR3	= 0x18 ; 
TIFR2	= 0x17 ; 
TIFR1	= 0x16 ; 
TIFR0	= 0x15 ; 
PORTG	= 0x14 ; 
DDRG	= 0x13 ; 
PING	= 0x12 ; 
PORTF	= 0x11 ; 
DDRF	= 0x10 ; 
PINF	= 0x0F ; 
PORTE	= 0x0E ; 
DDRE	= 0x0D ; 
PINE	= 0x0C ; 
PORTD	= 0x0B ; 
DDRD	= 0x0A ; 
PIND	= 0x09 ; 
PORTC	= 0x08 ; 
DDRC	= 0x07 ; 
PINC	= 0x06 ; 
PORTB	= 0x05 ; 
DDRB	= 0x04 ; 
PINB	= 0x03 ; 
PORTA	= 0x02 ; 
DDRA	= 0x01 ; 
PINA	= 0x00 ; 


; ***** BIT DEFINITIONS **************************************************

; ***** AC *****************
; ADCSRB - ADC Control and Status Register B
ACME	= 6 ; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0 ; Analog Comparator Interrupt Mode Select
ACIS1	= 1 ; Analog Comparator Interrupt Mode Select
ACIC	= 2 ; Analog Comparator Input Capture Enable
ACIE	= 3 ; Analog Comparator Interrupt Enable
ACI	= 4 ; Analog Comparator Interrupt Flag
ACO	= 5 ; Analog Compare Output
ACBG	= 6 ; Analog Comparator Bandgap Select
ACD	= 7 ; Analog Comparator Disable

; DIDR1 - Digital Input Disable Register 1
AIN0D	= 0 ; AIN0 Digital Input Disable
AIN1D	= 1 ; AIN1 Digital Input Disable


; ***** USART0 *****************
; UDR0 - USART0 I/O Data Register
UDR00	= 0 ; USART0 I/O Data Register Bit 0
UDR01	= 1 ; USART0 I/O Data Register Bit 1
UDR02	= 2 ; USART0 I/O Data Register Bit 2
UDR03	= 3 ; USART0 I/O Data Register Bit 3
UDR04	= 4 ; USART0 I/O Data Register Bit 4
UDR05	= 5 ; USART0 I/O Data Register Bit 5
UDR06	= 6 ; USART0 I/O Data Register Bit 6
UDR07	= 7 ; USART0 I/O Data Register Bit 7

; UCSR0A - USART0 Control and Status Register A
MPCM0	= 0 ; Multi-processor Communication Mode
U2X0	= 1 ; Double the USART Transmission Speed
UPE0	= 2 ; USART Parity Error
DOR0	= 3 ; Data OverRun
FE0	= 4 ; Frame Error
UDRE0	= 5 ; USART Data Register Empty
TXC0	= 6 ; USART Transmit Complete
RXC0	= 7 ; USART Receive Complete

; UCSR0B - USART0 Control and Status Register B
TXB80	= 0 ; Transmit Data Bit 8
RXB80	= 1 ; Receive Data Bit 8
UCSZ02	= 2 ; Character Size
TXEN0	= 3 ; Transmitter Enable
RXEN0	= 4 ; Receiver Enable
UDRIE0	= 5 ; USART Data Register Empty Interrupt Enable
TXCIE0	= 6 ; TX Complete Interrupt Enable
RXCIE0	= 7 ; RX Complete Interrupt Enable

; UCSR0C - USART0 Control and Status Register C
UCPOL0	= 0 ; Clock Polarity
UCSZ00	= 1 ; Character Size
UCSZ01	= 2 ; Character Size
USBS0	= 3 ; Stop Bit Select
UPM00	= 4 ; Parity Mode
UPM01	= 5 ; Parity Mode
UMSEL00	= 6 ; USART Mode Select
UMSEL01	= 7 ; USART Mode Select

; UBRR0 - USART0 Baud Rate Register  Bytes
UBRR0H0	= 0 ; USART0 Baud Rate Register  Bytes High Bit 8
UBRR0H1	= 1 ; USART0 Baud Rate Register  Bytes High Bit 9
UBRR0H2	= 2 ; USART0 Baud Rate Register  Bytes High Bit 10
UBRR0H3	= 3 ; USART0 Baud Rate Register  Bytes High Bit 11
UBRR0H4	= 4 ; USART0 Baud Rate Register  Bytes High Bit 12
UBRR0H5	= 5 ; USART0 Baud Rate Register  Bytes High Bit 13
UBRR0H6	= 6 ; USART0 Baud Rate Register  Bytes High Bit 14
UBRR0H7	= 7 ; USART0 Baud Rate Register  Bytes High Bit 15

UBRR0L0	= 0 ; USART0 Baud Rate Register  Bytes Low Bit 0
UBRR0L1	= 1 ; USART0 Baud Rate Register  Bytes Low Bit 1
UBRR0L2	= 2 ; USART0 Baud Rate Register  Bytes Low Bit 2
UBRR0L3	= 3 ; USART0 Baud Rate Register  Bytes Low Bit 3
UBRR0L4	= 4 ; USART0 Baud Rate Register  Bytes Low Bit 4
UBRR0L5	= 5 ; USART0 Baud Rate Register  Bytes Low Bit 5
UBRR0L6	= 6 ; USART0 Baud Rate Register  Bytes Low Bit 6
UBRR0L7	= 7 ; USART0 Baud Rate Register  Bytes Low Bit 7


; ***** USART1 *****************
; UDR1 - USART1 I/O Data Register
UDR10	= 0 ; USART1 I/O Data Register Bit 0
UDR11	= 1 ; USART1 I/O Data Register Bit 1
UDR12	= 2 ; USART1 I/O Data Register Bit 2
UDR13	= 3 ; USART1 I/O Data Register Bit 3
UDR14	= 4 ; USART1 I/O Data Register Bit 4
UDR15	= 5 ; USART1 I/O Data Register Bit 5
UDR16	= 6 ; USART1 I/O Data Register Bit 6
UDR17	= 7 ; USART1 I/O Data Register Bit 7

; UCSR1A - USART1 Control and Status Register A
MPCM1	= 0 ; Multi-processor Communication Mode
U2X1	= 1 ; Double the USART Transmission Speed
UPE1	= 2 ; USART Parity Error
DOR1	= 3 ; Data OverRun
FE1	= 4 ; Frame Error
UDRE1	= 5 ; USART Data Register Empty
TXC1	= 6 ; USART Transmit Complete
RXC1	= 7 ; USART Receive Complete

; UCSR1B - USART1 Control and Status Register B
TXB81	= 0 ; Transmit Data Bit 8
RXB81	= 1 ; Receive Data Bit 8
UCSZ12	= 2 ; Character Size
TXEN1	= 3 ; Transmitter Enable
RXEN1	= 4 ; Receiver Enable
UDRIE1	= 5 ; USART Data Register Empty Interrupt Enable
TXCIE1	= 6 ; TX Complete Interrupt Enable
RXCIE1	= 7 ; RX Complete Interrupt Enable

; UCSR1C - USART1 Control and Status Register C
UCPOL1	= 0 ; Clock Polarity
UCSZ10	= 1 ; Character Size
UCSZ11	= 2 ; Character Size
USBS1	= 3 ; Stop Bit Select
UPM10	= 4 ; Parity Mode
UPM11	= 5 ; Parity Mode
UMSEL10	= 6 ; USART Mode Select
UMSEL11	= 7 ; USART Mode Select

; UBRR1 - USART1 Baud Rate Register  Bytes
UBRR1H0	= 0 ; USART1 Baud Rate Register  Bytes High Bit 8
UBRR1H1	= 1 ; USART1 Baud Rate Register  Bytes High Bit 9
UBRR1H2	= 2 ; USART1 Baud Rate Register  Bytes High Bit 10
UBRR1H3	= 3 ; USART1 Baud Rate Register  Bytes High Bit 11
UBRR1H4	= 4 ; USART1 Baud Rate Register  Bytes High Bit 12
UBRR1H5	= 5 ; USART1 Baud Rate Register  Bytes High Bit 13
UBRR1H6	= 6 ; USART1 Baud Rate Register  Bytes High Bit 14
UBRR1H7	= 7 ; USART1 Baud Rate Register  Bytes High Bit 15

UBRR1L0	= 0 ; USART1 Baud Rate Register  Bytes Low Bit 0
UBRR1L1	= 1 ; USART1 Baud Rate Register  Bytes Low Bit 1
UBRR1L2	= 2 ; USART1 Baud Rate Register  Bytes Low Bit 2
UBRR1L3	= 3 ; USART1 Baud Rate Register  Bytes Low Bit 3
UBRR1L4	= 4 ; USART1 Baud Rate Register  Bytes Low Bit 4
UBRR1L5	= 5 ; USART1 Baud Rate Register  Bytes Low Bit 5
UBRR1L6	= 6 ; USART1 Baud Rate Register  Bytes Low Bit 6
UBRR1L7	= 7 ; USART1 Baud Rate Register  Bytes Low Bit 7


; ***** TWI *****************
; TWAMR - TWI (Slave) Address Mask Register
Res	= 0 ; Reserved Bit
TWAM0	= 1 ; TWI Address Mask
TWAM1	= 2 ; TWI Address Mask
TWAM2	= 3 ; TWI Address Mask
TWAM3	= 4 ; TWI Address Mask
TWAM4	= 5 ; TWI Address Mask
TWAM5	= 6 ; TWI Address Mask
TWAM6	= 7 ; TWI Address Mask

; TWBR - TWI Bit Rate Register
TWBR0	= 0 ; TWI Bit Rate Register Bit 0
TWBR1	= 1 ; TWI Bit Rate Register Bit 1
TWBR2	= 2 ; TWI Bit Rate Register Bit 2
TWBR3	= 3 ; TWI Bit Rate Register Bit 3
TWBR4	= 4 ; TWI Bit Rate Register Bit 4
TWBR5	= 5 ; TWI Bit Rate Register Bit 5
TWBR6	= 6 ; TWI Bit Rate Register Bit 6
TWBR7	= 7 ; TWI Bit Rate Register Bit 7

; TWCR - TWI Control Register
TWIE	= 0 ; TWI Interrupt Enable
TWEN	= 2 ; TWI Enable Bit
TWWC	= 3 ; TWI Write Collision Flag
TWSTO	= 4 ; TWI STOP Condition Bit
TWSTA	= 5 ; TWI START Condition Bit
TWEA	= 6 ; TWI Enable Acknowledge Bit
TWINT	= 7 ; TWI Interrupt Flag

; TWSR - TWI Status Register
TWPS0	= 0 ; TWI Prescaler Bits
TWPS1	= 1 ; TWI Prescaler Bits
TWS3	= 3 ; TWI Status
TWS4	= 4 ; TWI Status
TWS5	= 5 ; TWI Status
TWS6	= 6 ; TWI Status
TWS7	= 7 ; TWI Status

; TWDR - TWI Data Register
TWDR0	= 0 ; TWI Data Register Bit 0
TWDR1	= 1 ; TWI Data Register Bit 1
TWDR2	= 2 ; TWI Data Register Bit 2
TWDR3	= 3 ; TWI Data Register Bit 3
TWDR4	= 4 ; TWI Data Register Bit 4
TWDR5	= 5 ; TWI Data Register Bit 5
TWDR6	= 6 ; TWI Data Register Bit 6
TWDR7	= 7 ; TWI Data Register Bit 7

; TWAR - TWI (Slave) Address Register
TWGCE	= 0 ; TWI General Call Recognition Enable Bit
TWA0	= 1 ; TWI (Slave) Address
TWA1	= 2 ; TWI (Slave) Address
TWA2	= 3 ; TWI (Slave) Address
TWA3	= 4 ; TWI (Slave) Address
TWA4	= 5 ; TWI (Slave) Address
TWA5	= 6 ; TWI (Slave) Address
TWA6	= 7 ; TWI (Slave) Address


; ***** SPI *****************
; SPCR - SPI Control Register
SPR0	= 0 ; SPI Clock Rate Select 1 and 0
SPR1	= 1 ; SPI Clock Rate Select 1 and 0
CPHA	= 2 ; Clock Phase
CPOL	= 3 ; Clock polarity
MSTR	= 4 ; Master/Slave Select
DORD	= 5 ; Data Order
SPE	= 6 ; SPI Enable
SPIE	= 7 ; SPI Interrupt Enable

; SPSR - SPI Status Register
SPI2X	= 0 ; Double SPI Speed Bit
WCOL	= 6 ; Write Collision Flag
SPIF	= 7 ; SPI Interrupt Flag

; SPDR - SPI Data Register
SPDR0	= 0 ; SPI Data Register Bit 0
SPDR1	= 1 ; SPI Data Register Bit 1
SPDR2	= 2 ; SPI Data Register Bit 2
SPDR3	= 3 ; SPI Data Register Bit 3
SPDR4	= 4 ; SPI Data Register Bit 4
SPDR5	= 5 ; SPI Data Register Bit 5
SPDR6	= 6 ; SPI Data Register Bit 6
SPDR7	= 7 ; SPI Data Register Bit 7


; ***** USART0_SPI *****************
; UCSR0A - USART0 MSPIM Control and Status Register A

; UCSR0B - USART0 MSPIM Control and Status Register B

; UCSR0C - USART0 MSPIM Control and Status Register C
UCPHA0	= 1 ; Clock Phase
UDORD0	= 2 ; Data Order


; ***** USART1_SPI *****************
; UCSR1A - USART1 MSPIM Control and Status Register A

; UCSR1B - USART1 MSPIM Control and Status Register B

; UCSR1C - USART1 MSPIM Control and Status Register C
UCPHA1	= 1 ; Clock Phase
UDORD1	= 2 ; Data Order


; ***** PORTA *****************
; PORTA - Port A Data Register
PORTA0	= 0 ; Port A Data Register Bit 0
PORTA1	= 1 ; Port A Data Register Bit 1
PORTA2	= 2 ; Port A Data Register Bit 2
PORTA3	= 3 ; Port A Data Register Bit 3
PORTA4	= 4 ; Port A Data Register Bit 4
PORTA5	= 5 ; Port A Data Register Bit 5
PORTA6	= 6 ; Port A Data Register Bit 6
PORTA7	= 7 ; Port A Data Register Bit 7

; DDRA - Port A Data Direction Register
DDRA0	= 0 ; Port A Data Direction Register Bit 0
DDRA1	= 1 ; Port A Data Direction Register Bit 1
DDRA2	= 2 ; Port A Data Direction Register Bit 2
DDRA3	= 3 ; Port A Data Direction Register Bit 3
DDRA4	= 4 ; Port A Data Direction Register Bit 4
DDRA5	= 5 ; Port A Data Direction Register Bit 5
DDRA6	= 6 ; Port A Data Direction Register Bit 6
DDRA7	= 7 ; Port A Data Direction Register Bit 7

; PINA - Port A Input Pins Address
PINA0	= 0 ; Port A Input Pins Address Bit 0
PINA1	= 1 ; Port A Input Pins Address Bit 1
PINA2	= 2 ; Port A Input Pins Address Bit 2
PINA3	= 3 ; Port A Input Pins Address Bit 3
PINA4	= 4 ; Port A Input Pins Address Bit 4
PINA5	= 5 ; Port A Input Pins Address Bit 5
PINA6	= 6 ; Port A Input Pins Address Bit 6
PINA7	= 7 ; Port A Input Pins Address Bit 7


; ***** PORTB *****************
; PORTB - Port B Data Register
PORTB0	= 0 ; Port B Data Register Bit 0
PORTB1	= 1 ; Port B Data Register Bit 1
PORTB2	= 2 ; Port B Data Register Bit 2
PORTB3	= 3 ; Port B Data Register Bit 3
PORTB4	= 4 ; Port B Data Register Bit 4
PORTB5	= 5 ; Port B Data Register Bit 5
PORTB6	= 6 ; Port B Data Register Bit 6
PORTB7	= 7 ; Port B Data Register Bit 7

; DDRB - Port B Data Direction Register
DDRB0	= 0 ; Port B Data Direction Register Bit 0
DDRB1	= 1 ; Port B Data Direction Register Bit 1
DDRB2	= 2 ; Port B Data Direction Register Bit 2
DDRB3	= 3 ; Port B Data Direction Register Bit 3
DDRB4	= 4 ; Port B Data Direction Register Bit 4
DDRB5	= 5 ; Port B Data Direction Register Bit 5
DDRB6	= 6 ; Port B Data Direction Register Bit 6
DDRB7	= 7 ; Port B Data Direction Register Bit 7

; PINB - Port B Input Pins Address
PINB0	= 0 ; Port B Input Pins Address Bit 0
PINB1	= 1 ; Port B Input Pins Address Bit 1
PINB2	= 2 ; Port B Input Pins Address Bit 2
PINB3	= 3 ; Port B Input Pins Address Bit 3
PINB4	= 4 ; Port B Input Pins Address Bit 4
PINB5	= 5 ; Port B Input Pins Address Bit 5
PINB6	= 6 ; Port B Input Pins Address Bit 6
PINB7	= 7 ; Port B Input Pins Address Bit 7


; ***** PORTC *****************
; PORTC - Port C Data Register
PORTC0	= 0 ; Port C Data Register Bit 0
PORTC1	= 1 ; Port C Data Register Bit 1
PORTC2	= 2 ; Port C Data Register Bit 2
PORTC3	= 3 ; Port C Data Register Bit 3
PORTC4	= 4 ; Port C Data Register Bit 4
PORTC5	= 5 ; Port C Data Register Bit 5
PORTC6	= 6 ; Port C Data Register Bit 6
PORTC7	= 7 ; Port C Data Register Bit 7

; DDRC - Port C Data Direction Register
DDRC0	= 0 ; Port C Data Direction Register Bit 0
DDRC1	= 1 ; Port C Data Direction Register Bit 1
DDRC2	= 2 ; Port C Data Direction Register Bit 2
DDRC3	= 3 ; Port C Data Direction Register Bit 3
DDRC4	= 4 ; Port C Data Direction Register Bit 4
DDRC5	= 5 ; Port C Data Direction Register Bit 5
DDRC6	= 6 ; Port C Data Direction Register Bit 6
DDRC7	= 7 ; Port C Data Direction Register Bit 7

; PINC - Port C Input Pins Address
PINC0	= 0 ; Port C Input Pins Address Bit 0
PINC1	= 1 ; Port C Input Pins Address Bit 1
PINC2	= 2 ; Port C Input Pins Address Bit 2
PINC3	= 3 ; Port C Input Pins Address Bit 3
PINC4	= 4 ; Port C Input Pins Address Bit 4
PINC5	= 5 ; Port C Input Pins Address Bit 5
PINC6	= 6 ; Port C Input Pins Address Bit 6
PINC7	= 7 ; Port C Input Pins Address Bit 7


; ***** PORTD *****************
; PORTD - Port D Data Register
PORTD0	= 0 ; Port D Data Register Bit 0
PORTD1	= 1 ; Port D Data Register Bit 1
PORTD2	= 2 ; Port D Data Register Bit 2
PORTD3	= 3 ; Port D Data Register Bit 3
PORTD4	= 4 ; Port D Data Register Bit 4
PORTD5	= 5 ; Port D Data Register Bit 5
PORTD6	= 6 ; Port D Data Register Bit 6
PORTD7	= 7 ; Port D Data Register Bit 7

; DDRD - Port D Data Direction Register
DDRD0	= 0 ; Port D Data Direction Register Bit 0
DDRD1	= 1 ; Port D Data Direction Register Bit 1
DDRD2	= 2 ; Port D Data Direction Register Bit 2
DDRD3	= 3 ; Port D Data Direction Register Bit 3
DDRD4	= 4 ; Port D Data Direction Register Bit 4
DDRD5	= 5 ; Port D Data Direction Register Bit 5
DDRD6	= 6 ; Port D Data Direction Register Bit 6
DDRD7	= 7 ; Port D Data Direction Register Bit 7

; PIND - Port D Input Pins Address
PIND0	= 0 ; Port D Input Pins Address Bit 0
PIND1	= 1 ; Port D Input Pins Address Bit 1
PIND2	= 2 ; Port D Input Pins Address Bit 2
PIND3	= 3 ; Port D Input Pins Address Bit 3
PIND4	= 4 ; Port D Input Pins Address Bit 4
PIND5	= 5 ; Port D Input Pins Address Bit 5
PIND6	= 6 ; Port D Input Pins Address Bit 6
PIND7	= 7 ; Port D Input Pins Address Bit 7


; ***** PORTE *****************
; PORTE - Port E Data Register
PORTE0	= 0 ; Port E Data Register Bit 0
PORTE1	= 1 ; Port E Data Register Bit 1
PORTE2	= 2 ; Port E Data Register Bit 2
PORTE3	= 3 ; Port E Data Register Bit 3
PORTE4	= 4 ; Port E Data Register Bit 4
PORTE5	= 5 ; Port E Data Register Bit 5
PORTE6	= 6 ; Port E Data Register Bit 6
PORTE7	= 7 ; Port E Data Register Bit 7

; DDRE - Port E Data Direction Register
DDRE0	= 0 ; Port E Data Direction Register Bit 0
DDRE1	= 1 ; Port E Data Direction Register Bit 1
DDRE2	= 2 ; Port E Data Direction Register Bit 2
DDRE3	= 3 ; Port E Data Direction Register Bit 3
DDRE4	= 4 ; Port E Data Direction Register Bit 4
DDRE5	= 5 ; Port E Data Direction Register Bit 5
DDRE6	= 6 ; Port E Data Direction Register Bit 6
DDRE7	= 7 ; Port E Data Direction Register Bit 7

; PINE - Port E Input Pins Address
PINE0	= 0 ; Port E Input Pins Address Bit 0
PINE1	= 1 ; Port E Input Pins Address Bit 1
PINE2	= 2 ; Port E Input Pins Address Bit 2
PINE3	= 3 ; Port E Input Pins Address Bit 3
PINE4	= 4 ; Port E Input Pins Address Bit 4
PINE5	= 5 ; Port E Input Pins Address Bit 5
PINE6	= 6 ; Port E Input Pins Address Bit 6
PINE7	= 7 ; Port E Input Pins Address Bit 7


; ***** PORTF *****************
; PORTF - Port F Data Register
PORTF0	= 0 ; Port F Data Register Bit 0
PORTF1	= 1 ; Port F Data Register Bit 1
PORTF2	= 2 ; Port F Data Register Bit 2
PORTF3	= 3 ; Port F Data Register Bit 3
PORTF4	= 4 ; Port F Data Register Bit 4
PORTF5	= 5 ; Port F Data Register Bit 5
PORTF6	= 6 ; Port F Data Register Bit 6
PORTF7	= 7 ; Port F Data Register Bit 7

; DDRF - Port F Data Direction Register
DDRF0	= 0 ; Port F Data Direction Register Bit 0
DDRF1	= 1 ; Port F Data Direction Register Bit 1
DDRF2	= 2 ; Port F Data Direction Register Bit 2
DDRF3	= 3 ; Port F Data Direction Register Bit 3
DDRF4	= 4 ; Port F Data Direction Register Bit 4
DDRF5	= 5 ; Port F Data Direction Register Bit 5
DDRF6	= 6 ; Port F Data Direction Register Bit 6
DDRF7	= 7 ; Port F Data Direction Register Bit 7

; PINF - Port F Input Pins Address
PINF0	= 0 ; Port F Input Pins Address Bit 0
PINF1	= 1 ; Port F Input Pins Address Bit 1
PINF2	= 2 ; Port F Input Pins Address Bit 2
PINF3	= 3 ; Port F Input Pins Address Bit 3
PINF4	= 4 ; Port F Input Pins Address Bit 4
PINF5	= 5 ; Port F Input Pins Address Bit 5
PINF6	= 6 ; Port F Input Pins Address Bit 6
PINF7	= 7 ; Port F Input Pins Address Bit 7


; ***** PORTG *****************
; PORTG - Port G Data Register
PORTG0	= 0 ; Port G Data Register Bit 0
PORTG1	= 1 ; Port G Data Register Bit 1
PORTG2	= 2 ; Port G Data Register Bit 2
PORTG3	= 3 ; Port G Data Register Bit 3
PORTG4	= 4 ; Port G Data Register Bit 4
PORTG5	= 5 ; Port G Data Register Bit 5
PORTG6	= 6 ; Port G Data Register Bit 6
PORTG7	= 7 ; Port G Data Register Bit 7

; DDRG - Port G Data Direction Register
DDRG0	= 0 ; Port G Data Direction Register Bit 0
DDRG1	= 1 ; Port G Data Direction Register Bit 1
DDRG2	= 2 ; Port G Data Direction Register Bit 2
DDRG3	= 3 ; Port G Data Direction Register Bit 3
DDRG4	= 4 ; Port G Data Direction Register Bit 4
DDRG5	= 5 ; Port G Data Direction Register Bit 5
DDRG6	= 6 ; Port G Data Direction Register Bit 6
DDRG7	= 7 ; Port G Data Direction Register Bit 7

; PING - Port G Input Pins Address
PING0	= 0 ; Port G Input Pins Address Bit 0
PING1	= 1 ; Port G Input Pins Address Bit 1
PING2	= 2 ; Port G Input Pins Address Bit 2
PING3	= 3 ; Port G Input Pins Address Bit 3
PING4	= 4 ; Port G Input Pins Address Bit 4
PING5	= 5 ; Port G Input Pins Address Bit 5
PING6	= 6 ; Port G Input Pins Address Bit 6
PING7	= 7 ; Port G Input Pins Address Bit 7


; ***** TC0 *****************
; OCR0B - Timer/Counter0 Output Compare Register B
OCR0B0	= 0 ; Timer/Counter0 Output Compare Register B Bit 0
OCR0B1	= 1 ; Timer/Counter0 Output Compare Register B Bit 1
OCR0B2	= 2 ; Timer/Counter0 Output Compare Register B Bit 2
OCR0B3	= 3 ; Timer/Counter0 Output Compare Register B Bit 3
OCR0B4	= 4 ; Timer/Counter0 Output Compare Register B Bit 4
OCR0B5	= 5 ; Timer/Counter0 Output Compare Register B Bit 5
OCR0B6	= 6 ; Timer/Counter0 Output Compare Register B Bit 6
OCR0B7	= 7 ; Timer/Counter0 Output Compare Register B Bit 7

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A0	= 0 ; Timer/Counter0 Output Compare Register Bit 0
OCR0A1	= 1 ; Timer/Counter0 Output Compare Register Bit 1
OCR0A2	= 2 ; Timer/Counter0 Output Compare Register Bit 2
OCR0A3	= 3 ; Timer/Counter0 Output Compare Register Bit 3
OCR0A4	= 4 ; Timer/Counter0 Output Compare Register Bit 4
OCR0A5	= 5 ; Timer/Counter0 Output Compare Register Bit 5
OCR0A6	= 6 ; Timer/Counter0 Output Compare Register Bit 6
OCR0A7	= 7 ; Timer/Counter0 Output Compare Register Bit 7

; TCNT0 - Timer/Counter0 Register
TCNT00	= 0 ; Timer/Counter0 Register Bit 0
TCNT01	= 1 ; Timer/Counter0 Register Bit 1
TCNT02	= 2 ; Timer/Counter0 Register Bit 2
TCNT03	= 3 ; Timer/Counter0 Register Bit 3
TCNT04	= 4 ; Timer/Counter0 Register Bit 4
TCNT05	= 5 ; Timer/Counter0 Register Bit 5
TCNT06	= 6 ; Timer/Counter0 Register Bit 6
TCNT07	= 7 ; Timer/Counter0 Register Bit 7

; TCCR0B - Timer/Counter0 Control Register B
CS00	= 0 ; Clock Select
CS01	= 1 ; Clock Select
CS02	= 2 ; Clock Select
WGM02	= 3 ; 
Res0	= 4 ; Reserved Bit
Res1	= 5 ; Reserved Bit
FOC0B	= 6 ; Force Output Compare B
FOC0A	= 7 ; Force Output Compare A

; TCCR0A - Timer/Counter0 Control Register A
WGM00	= 0 ; Waveform Generation Mode
WGM01	= 1 ; Waveform Generation Mode
COM0B0	= 4 ; Compare Match Output B Mode
COM0B1	= 5 ; Compare Match Output B Mode
COM0A0	= 6 ; Compare Match Output A Mode
COM0A1	= 7 ; Compare Match Output A Mode

; TIMSK0 - Timer/Counter0 Interrupt Mask Register
TOIE0	= 0 ; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1 ; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2 ; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag Register
TOV0	= 0 ; Timer/Counter0 Overflow Flag
OCF0A	= 1 ; Timer/Counter0 Output Compare A Match Flag
OCF0B	= 2 ; Timer/Counter0 Output Compare B Match Flag

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0 ; Prescaler Reset for Synchronous Timer/Counters
PSRASY	= 1 ; Prescaler Reset Timer/Counter2
TSM	= 7 ; Timer/Counter Synchronization Mode


; ***** TC2 *****************
; TIMSK2 - Timer/Counter Interrupt Mask register
TOIE2	= 0 ; Timer/Counter2 Overflow Interrupt Enable
OCIE2A	= 1 ; Timer/Counter2 Output Compare Match A Interrupt Enable
OCIE2B	= 2 ; Timer/Counter2 Output Compare Match B Interrupt Enable
Res2	= 5 ; Reserved Bit
Res3	= 6 ; Reserved Bit
Res4	= 7 ; Reserved Bit

; TIFR2 - Timer/Counter Interrupt Flag Register
TOV2	= 0 ; Timer/Counter2 Overflow Flag
OCF2A	= 1 ; Output Compare Flag 2 A
OCF2B	= 2 ; Output Compare Flag 2 B

; TCCR2A - Timer/Counter2 Control Register A
WGM20	= 0 ; Waveform Generation Mode
WGM21	= 1 ; Waveform Generation Mode
COM2B0	= 4 ; Compare Match Output B Mode
COM2B1	= 5 ; Compare Match Output B Mode
COM2A0	= 6 ; Compare Match Output A Mode
COM2A1	= 7 ; Compare Match Output A Mode

; TCCR2B - Timer/Counter2 Control Register B
CS20	= 0 ; Clock Select
CS21	= 1 ; Clock Select
CS22	= 2 ; Clock Select
WGM22	= 3 ; Waveform Generation Mode
FOC2B	= 6 ; Force Output Compare B
FOC2A	= 7 ; Force Output Compare A

; TCNT2 - Timer/Counter2
TCNT20	= 0 ; Timer/Counter2 Bit 0
TCNT21	= 1 ; Timer/Counter2 Bit 1
TCNT22	= 2 ; Timer/Counter2 Bit 2
TCNT23	= 3 ; Timer/Counter2 Bit 3
TCNT24	= 4 ; Timer/Counter2 Bit 4
TCNT25	= 5 ; Timer/Counter2 Bit 5
TCNT26	= 6 ; Timer/Counter2 Bit 6
TCNT27	= 7 ; Timer/Counter2 Bit 7

; OCR2B - Timer/Counter2 Output Compare Register B
OCR2B0	= 0 ; Timer/Counter2 Output Compare Register B Bit 0
OCR2B1	= 1 ; Timer/Counter2 Output Compare Register B Bit 1
OCR2B2	= 2 ; Timer/Counter2 Output Compare Register B Bit 2
OCR2B3	= 3 ; Timer/Counter2 Output Compare Register B Bit 3
OCR2B4	= 4 ; Timer/Counter2 Output Compare Register B Bit 4
OCR2B5	= 5 ; Timer/Counter2 Output Compare Register B Bit 5
OCR2B6	= 6 ; Timer/Counter2 Output Compare Register B Bit 6
OCR2B7	= 7 ; Timer/Counter2 Output Compare Register B Bit 7

; OCR2A - Timer/Counter2 Output Compare Register A
OCR2A0	= 0 ; Timer/Counter2 Output Compare Register A Bit 0
OCR2A1	= 1 ; Timer/Counter2 Output Compare Register A Bit 1
OCR2A2	= 2 ; Timer/Counter2 Output Compare Register A Bit 2
OCR2A3	= 3 ; Timer/Counter2 Output Compare Register A Bit 3
OCR2A4	= 4 ; Timer/Counter2 Output Compare Register A Bit 4
OCR2A5	= 5 ; Timer/Counter2 Output Compare Register A Bit 5
OCR2A6	= 6 ; Timer/Counter2 Output Compare Register A Bit 6
OCR2A7	= 7 ; Timer/Counter2 Output Compare Register A Bit 7

; ASSR - Asynchronous Status Register
TCR2BUB	= 0 ; Timer/Counter2 Control Register B Update Busy
TCR2AUB	= 1 ; Timer/Counter2 Control Register A Update Busy
OCR2BUB	= 2 ; Timer/Counter2 Output Compare Register B Update Busy
OCR2AUB	= 3 ; Timer/Counter2 Output Compare Register A Update Busy
TCN2UB	= 4 ; Timer/Counter2 Update Busy
AS2	= 5 ; Timer/Counter2 Asynchronous Mode
EXCLK	= 6 ; Enable External Clock Input
EXCLKAMR	= 7 ; Enable External Clock Input for AMR

; GTCCR - General Timer Counter Control register


; ***** WDT *****************
; WDTCSR - Watchdog Timer Control Register
WDE	= 3 ; Watch Dog Enable
WDCE	= 4 ; Watchdog Change Enable
WDP0	= 0 ; Watchdog Timer Prescaler Bits
WDP1	= 1 ; Watchdog Timer Prescaler Bits
WDP2	= 2 ; Watchdog Timer Prescaler Bits
WDP3	= 5 ; Watchdog Timer Prescaler Bits
WDIE	= 6 ; Watchdog Timeout Interrupt Enable
WDIF	= 7 ; Watchdog Timeout Interrupt Flag


; ***** TC5 *****************
; TCCR5A - Timer/Counter5 Control Register A
WGM50	= 0 ; Waveform Generation Mode
WGM51	= 1 ; Waveform Generation Mode
COM5C0	= 2 ; Compare Output Mode for Channel C
COM5C1	= 3 ; Compare Output Mode for Channel C
COM5B0	= 4 ; Compare Output Mode for Channel B
COM5B1	= 5 ; Compare Output Mode for Channel B
COM5A0	= 6 ; Compare Output Mode for Channel A
COM5A1	= 7 ; Compare Output Mode for Channel A

; TCCR5B - Timer/Counter5 Control Register B
CS50	= 0 ; Clock Select
CS51	= 1 ; Clock Select
CS52	= 2 ; Clock Select
WGM52	= 3 ; Waveform Generation Mode
WGM53	= 4 ; Waveform Generation Mode
ICES5	= 6 ; Input Capture 5 Edge Select
ICNC5	= 7 ; Input Capture 5 Noise Canceller

; TCCR5C - Timer/Counter5 Control Register C
FOC5C	= 5 ; Force Output Compare for Channel C
FOC5B	= 6 ; Force Output Compare for Channel B
FOC5A	= 7 ; Force Output Compare for Channel A

; TCNT5 - Timer/Counter5  Bytes
TCNT5H0	= 0 ; Timer/Counter5  Bytes High Bit 8
TCNT5H1	= 1 ; Timer/Counter5  Bytes High Bit 9
TCNT5H2	= 2 ; Timer/Counter5  Bytes High Bit 10
TCNT5H3	= 3 ; Timer/Counter5  Bytes High Bit 11
TCNT5H4	= 4 ; Timer/Counter5  Bytes High Bit 12
TCNT5H5	= 5 ; Timer/Counter5  Bytes High Bit 13
TCNT5H6	= 6 ; Timer/Counter5  Bytes High Bit 14
TCNT5H7	= 7 ; Timer/Counter5  Bytes High Bit 15

TCNT5L0	= 0 ; Timer/Counter5  Bytes Low Bit 0
TCNT5L1	= 1 ; Timer/Counter5  Bytes Low Bit 1
TCNT5L2	= 2 ; Timer/Counter5  Bytes Low Bit 2
TCNT5L3	= 3 ; Timer/Counter5  Bytes Low Bit 3
TCNT5L4	= 4 ; Timer/Counter5  Bytes Low Bit 4
TCNT5L5	= 5 ; Timer/Counter5  Bytes Low Bit 5
TCNT5L6	= 6 ; Timer/Counter5  Bytes Low Bit 6
TCNT5L7	= 7 ; Timer/Counter5  Bytes Low Bit 7

; OCR5A - Timer/Counter5 Output Compare Register A  Bytes
OCR5AH0	= 0 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 8
OCR5AH1	= 1 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 9
OCR5AH2	= 2 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 10
OCR5AH3	= 3 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 11
OCR5AH4	= 4 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 12
OCR5AH5	= 5 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 13
OCR5AH6	= 6 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 14
OCR5AH7	= 7 ; Timer/Counter5 Output Compare Register A  Bytes High Bit 15

OCR5AL0	= 0 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 0
OCR5AL1	= 1 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 1
OCR5AL2	= 2 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 2
OCR5AL3	= 3 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 3
OCR5AL4	= 4 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 4
OCR5AL5	= 5 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 5
OCR5AL6	= 6 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 6
OCR5AL7	= 7 ; Timer/Counter5 Output Compare Register A  Bytes Low Bit 7

; OCR5B - Timer/Counter5 Output Compare Register B  Bytes
OCR5BH0	= 0 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 8
OCR5BH1	= 1 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 9
OCR5BH2	= 2 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 10
OCR5BH3	= 3 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 11
OCR5BH4	= 4 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 12
OCR5BH5	= 5 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 13
OCR5BH6	= 6 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 14
OCR5BH7	= 7 ; Timer/Counter5 Output Compare Register B  Bytes High Bit 15

OCR5BL0	= 0 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 0
OCR5BL1	= 1 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 1
OCR5BL2	= 2 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 2
OCR5BL3	= 3 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 3
OCR5BL4	= 4 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 4
OCR5BL5	= 5 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 5
OCR5BL6	= 6 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 6
OCR5BL7	= 7 ; Timer/Counter5 Output Compare Register B  Bytes Low Bit 7

; OCR5C - Timer/Counter5 Output Compare Register C  Bytes
OCR5CH0	= 0 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 8
OCR5CH1	= 1 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 9
OCR5CH2	= 2 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 10
OCR5CH3	= 3 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 11
OCR5CH4	= 4 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 12
OCR5CH5	= 5 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 13
OCR5CH6	= 6 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 14
OCR5CH7	= 7 ; Timer/Counter5 Output Compare Register C  Bytes High Bit 15

OCR5CL0	= 0 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 0
OCR5CL1	= 1 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 1
OCR5CL2	= 2 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 2
OCR5CL3	= 3 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 3
OCR5CL4	= 4 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 4
OCR5CL5	= 5 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 5
OCR5CL6	= 6 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 6
OCR5CL7	= 7 ; Timer/Counter5 Output Compare Register C  Bytes Low Bit 7

; ICR5 - Timer/Counter5 Input Capture Register  Bytes
ICR5H0	= 0 ; Timer/Counter5 Input Capture Register  Bytes High Bit 8
ICR5H1	= 1 ; Timer/Counter5 Input Capture Register  Bytes High Bit 9
ICR5H2	= 2 ; Timer/Counter5 Input Capture Register  Bytes High Bit 10
ICR5H3	= 3 ; Timer/Counter5 Input Capture Register  Bytes High Bit 11
ICR5H4	= 4 ; Timer/Counter5 Input Capture Register  Bytes High Bit 12
ICR5H5	= 5 ; Timer/Counter5 Input Capture Register  Bytes High Bit 13
ICR5H6	= 6 ; Timer/Counter5 Input Capture Register  Bytes High Bit 14
ICR5H7	= 7 ; Timer/Counter5 Input Capture Register  Bytes High Bit 15

ICR5L0	= 0 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 0
ICR5L1	= 1 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 1
ICR5L2	= 2 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 2
ICR5L3	= 3 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 3
ICR5L4	= 4 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 4
ICR5L5	= 5 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 5
ICR5L6	= 6 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 6
ICR5L7	= 7 ; Timer/Counter5 Input Capture Register  Bytes Low Bit 7

; TIMSK5 - Timer/Counter5 Interrupt Mask Register
TOIE5	= 0 ; Timer/Counter5 Overflow Interrupt Enable
OCIE5A	= 1 ; Timer/Counter5 Output Compare A Match Interrupt Enable
OCIE5B	= 2 ; Timer/Counter5 Output Compare B Match Interrupt Enable
OCIE5C	= 3 ; Timer/Counter5 Output Compare C Match Interrupt Enable
ICIE5	= 5 ; Timer/Counter5 Input Capture Interrupt Enable

; TIFR5 - Timer/Counter5 Interrupt Flag Register
TOV5	= 0 ; Timer/Counter5 Overflow Flag
OCF5A	= 1 ; Timer/Counter5 Output Compare A Match Flag
OCF5B	= 2 ; Timer/Counter5 Output Compare B Match Flag
OCF5C	= 3 ; Timer/Counter5 Output Compare C Match Flag
ICF5	= 5 ; Timer/Counter5 Input Capture Flag


; ***** TC4 *****************
; TCCR4A - Timer/Counter4 Control Register A
WGM40	= 0 ; Waveform Generation Mode
WGM41	= 1 ; Waveform Generation Mode
COM4C0	= 2 ; Compare Output Mode for Channel C
COM4C1	= 3 ; Compare Output Mode for Channel C
COM4B0	= 4 ; Compare Output Mode for Channel B
COM4B1	= 5 ; Compare Output Mode for Channel B
COM4A0	= 6 ; Compare Output Mode for Channel A
COM4A1	= 7 ; Compare Output Mode for Channel A

; TCCR4B - Timer/Counter4 Control Register B
CS40	= 0 ; Clock Select
CS41	= 1 ; Clock Select
CS42	= 2 ; Clock Select
WGM42	= 3 ; Waveform Generation Mode
WGM43	= 4 ; Waveform Generation Mode
ICES4	= 6 ; Input Capture 4 Edge Select
ICNC4	= 7 ; Input Capture 4 Noise Canceller

; TCCR4C - Timer/Counter4 Control Register C
FOC4C	= 5 ; Force Output Compare for Channel C
FOC4B	= 6 ; Force Output Compare for Channel B
FOC4A	= 7 ; Force Output Compare for Channel A

; TCNT4 - Timer/Counter4  Bytes
TCNT4H0	= 0 ; Timer/Counter4  Bytes High Bit 8
TCNT4H1	= 1 ; Timer/Counter4  Bytes High Bit 9
TCNT4H2	= 2 ; Timer/Counter4  Bytes High Bit 10
TCNT4H3	= 3 ; Timer/Counter4  Bytes High Bit 11
TCNT4H4	= 4 ; Timer/Counter4  Bytes High Bit 12
TCNT4H5	= 5 ; Timer/Counter4  Bytes High Bit 13
TCNT4H6	= 6 ; Timer/Counter4  Bytes High Bit 14
TCNT4H7	= 7 ; Timer/Counter4  Bytes High Bit 15

TCNT4L0	= 0 ; Timer/Counter4  Bytes Low Bit 0
TCNT4L1	= 1 ; Timer/Counter4  Bytes Low Bit 1
TCNT4L2	= 2 ; Timer/Counter4  Bytes Low Bit 2
TCNT4L3	= 3 ; Timer/Counter4  Bytes Low Bit 3
TCNT4L4	= 4 ; Timer/Counter4  Bytes Low Bit 4
TCNT4L5	= 5 ; Timer/Counter4  Bytes Low Bit 5
TCNT4L6	= 6 ; Timer/Counter4  Bytes Low Bit 6
TCNT4L7	= 7 ; Timer/Counter4  Bytes Low Bit 7

; OCR4A - Timer/Counter4 Output Compare Register A  Bytes
OCR4AH0	= 0 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 8
OCR4AH1	= 1 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 9
OCR4AH2	= 2 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 10
OCR4AH3	= 3 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 11
OCR4AH4	= 4 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 12
OCR4AH5	= 5 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 13
OCR4AH6	= 6 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 14
OCR4AH7	= 7 ; Timer/Counter4 Output Compare Register A  Bytes High Bit 15

OCR4AL0	= 0 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 0
OCR4AL1	= 1 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 1
OCR4AL2	= 2 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 2
OCR4AL3	= 3 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 3
OCR4AL4	= 4 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 4
OCR4AL5	= 5 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 5
OCR4AL6	= 6 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 6
OCR4AL7	= 7 ; Timer/Counter4 Output Compare Register A  Bytes Low Bit 7

; OCR4B - Timer/Counter4 Output Compare Register B  Bytes
OCR4BH0	= 0 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 8
OCR4BH1	= 1 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 9
OCR4BH2	= 2 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 10
OCR4BH3	= 3 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 11
OCR4BH4	= 4 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 12
OCR4BH5	= 5 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 13
OCR4BH6	= 6 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 14
OCR4BH7	= 7 ; Timer/Counter4 Output Compare Register B  Bytes High Bit 15

OCR4BL0	= 0 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 0
OCR4BL1	= 1 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 1
OCR4BL2	= 2 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 2
OCR4BL3	= 3 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 3
OCR4BL4	= 4 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 4
OCR4BL5	= 5 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 5
OCR4BL6	= 6 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 6
OCR4BL7	= 7 ; Timer/Counter4 Output Compare Register B  Bytes Low Bit 7

; OCR4C - Timer/Counter4 Output Compare Register C  Bytes
OCR4CH0	= 0 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 8
OCR4CH1	= 1 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 9
OCR4CH2	= 2 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 10
OCR4CH3	= 3 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 11
OCR4CH4	= 4 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 12
OCR4CH5	= 5 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 13
OCR4CH6	= 6 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 14
OCR4CH7	= 7 ; Timer/Counter4 Output Compare Register C  Bytes High Bit 15

OCR4CL0	= 0 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 0
OCR4CL1	= 1 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 1
OCR4CL2	= 2 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 2
OCR4CL3	= 3 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 3
OCR4CL4	= 4 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 4
OCR4CL5	= 5 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 5
OCR4CL6	= 6 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 6
OCR4CL7	= 7 ; Timer/Counter4 Output Compare Register C  Bytes Low Bit 7

; ICR4 - Timer/Counter4 Input Capture Register  Bytes
ICR4H0	= 0 ; Timer/Counter4 Input Capture Register  Bytes High Bit 8
ICR4H1	= 1 ; Timer/Counter4 Input Capture Register  Bytes High Bit 9
ICR4H2	= 2 ; Timer/Counter4 Input Capture Register  Bytes High Bit 10
ICR4H3	= 3 ; Timer/Counter4 Input Capture Register  Bytes High Bit 11
ICR4H4	= 4 ; Timer/Counter4 Input Capture Register  Bytes High Bit 12
ICR4H5	= 5 ; Timer/Counter4 Input Capture Register  Bytes High Bit 13
ICR4H6	= 6 ; Timer/Counter4 Input Capture Register  Bytes High Bit 14
ICR4H7	= 7 ; Timer/Counter4 Input Capture Register  Bytes High Bit 15

ICR4L0	= 0 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 0
ICR4L1	= 1 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 1
ICR4L2	= 2 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 2
ICR4L3	= 3 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 3
ICR4L4	= 4 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 4
ICR4L5	= 5 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 5
ICR4L6	= 6 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 6
ICR4L7	= 7 ; Timer/Counter4 Input Capture Register  Bytes Low Bit 7

; TIMSK4 - Timer/Counter4 Interrupt Mask Register
TOIE4	= 0 ; Timer/Counter4 Overflow Interrupt Enable
OCIE4A	= 1 ; Timer/Counter4 Output Compare A Match Interrupt Enable
OCIE4B	= 2 ; Timer/Counter4 Output Compare B Match Interrupt Enable
OCIE4C	= 3 ; Timer/Counter4 Output Compare C Match Interrupt Enable
ICIE4	= 5 ; Timer/Counter4 Input Capture Interrupt Enable

; TIFR4 - Timer/Counter4 Interrupt Flag Register
TOV4	= 0 ; Timer/Counter4 Overflow Flag
OCF4A	= 1 ; Timer/Counter4 Output Compare A Match Flag
OCF4B	= 2 ; Timer/Counter4 Output Compare B Match Flag
OCF4C	= 3 ; Timer/Counter4 Output Compare C Match Flag
ICF4	= 5 ; Timer/Counter4 Input Capture Flag


; ***** TC3 *****************
; TCCR3A - Timer/Counter3 Control Register A
WGM30	= 0 ; Waveform Generation Mode
WGM31	= 1 ; Waveform Generation Mode
COM3C0	= 2 ; Compare Output Mode for Channel C
COM3C1	= 3 ; Compare Output Mode for Channel C
COM3B0	= 4 ; Compare Output Mode for Channel B
COM3B1	= 5 ; Compare Output Mode for Channel B
COM3A0	= 6 ; Compare Output Mode for Channel A
COM3A1	= 7 ; Compare Output Mode for Channel A

; TCCR3B - Timer/Counter3 Control Register B
CS30	= 0 ; Clock Select
CS31	= 1 ; Clock Select
CS32	= 2 ; Clock Select
WGM32	= 3 ; Waveform Generation Mode
WGM33	= 4 ; Waveform Generation Mode
ICES3	= 6 ; Input Capture 3 Edge Select
ICNC3	= 7 ; Input Capture 3 Noise Canceller

; TCCR3C - Timer/Counter3 Control Register C
FOC3C	= 5 ; Force Output Compare for Channel C
FOC3B	= 6 ; Force Output Compare for Channel B
FOC3A	= 7 ; Force Output Compare for Channel A

; TCNT3 - Timer/Counter3  Bytes
TCNT3H0	= 0 ; Timer/Counter3  Bytes High Bit 8
TCNT3H1	= 1 ; Timer/Counter3  Bytes High Bit 9
TCNT3H2	= 2 ; Timer/Counter3  Bytes High Bit 10
TCNT3H3	= 3 ; Timer/Counter3  Bytes High Bit 11
TCNT3H4	= 4 ; Timer/Counter3  Bytes High Bit 12
TCNT3H5	= 5 ; Timer/Counter3  Bytes High Bit 13
TCNT3H6	= 6 ; Timer/Counter3  Bytes High Bit 14
TCNT3H7	= 7 ; Timer/Counter3  Bytes High Bit 15

TCNT3L0	= 0 ; Timer/Counter3  Bytes Low Bit 0
TCNT3L1	= 1 ; Timer/Counter3  Bytes Low Bit 1
TCNT3L2	= 2 ; Timer/Counter3  Bytes Low Bit 2
TCNT3L3	= 3 ; Timer/Counter3  Bytes Low Bit 3
TCNT3L4	= 4 ; Timer/Counter3  Bytes Low Bit 4
TCNT3L5	= 5 ; Timer/Counter3  Bytes Low Bit 5
TCNT3L6	= 6 ; Timer/Counter3  Bytes Low Bit 6
TCNT3L7	= 7 ; Timer/Counter3  Bytes Low Bit 7

; OCR3A - Timer/Counter3 Output Compare Register A  Bytes
OCR3AH0	= 0 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 8
OCR3AH1	= 1 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 9
OCR3AH2	= 2 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 10
OCR3AH3	= 3 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 11
OCR3AH4	= 4 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 12
OCR3AH5	= 5 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 13
OCR3AH6	= 6 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 14
OCR3AH7	= 7 ; Timer/Counter3 Output Compare Register A  Bytes High Bit 15

OCR3AL0	= 0 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 0
OCR3AL1	= 1 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 1
OCR3AL2	= 2 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 2
OCR3AL3	= 3 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 3
OCR3AL4	= 4 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 4
OCR3AL5	= 5 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 5
OCR3AL6	= 6 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 6
OCR3AL7	= 7 ; Timer/Counter3 Output Compare Register A  Bytes Low Bit 7

; OCR3B - Timer/Counter3 Output Compare Register B  Bytes
OCR3BH0	= 0 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 8
OCR3BH1	= 1 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 9
OCR3BH2	= 2 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 10
OCR3BH3	= 3 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 11
OCR3BH4	= 4 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 12
OCR3BH5	= 5 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 13
OCR3BH6	= 6 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 14
OCR3BH7	= 7 ; Timer/Counter3 Output Compare Register B  Bytes High Bit 15

OCR3BL0	= 0 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 0
OCR3BL1	= 1 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 1
OCR3BL2	= 2 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 2
OCR3BL3	= 3 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 3
OCR3BL4	= 4 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 4
OCR3BL5	= 5 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 5
OCR3BL6	= 6 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 6
OCR3BL7	= 7 ; Timer/Counter3 Output Compare Register B  Bytes Low Bit 7

; OCR3C - Timer/Counter3 Output Compare Register C  Bytes
OCR3CH0	= 0 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 8
OCR3CH1	= 1 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 9
OCR3CH2	= 2 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 10
OCR3CH3	= 3 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 11
OCR3CH4	= 4 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 12
OCR3CH5	= 5 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 13
OCR3CH6	= 6 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 14
OCR3CH7	= 7 ; Timer/Counter3 Output Compare Register C  Bytes High Bit 15

OCR3CL0	= 0 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 0
OCR3CL1	= 1 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 1
OCR3CL2	= 2 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 2
OCR3CL3	= 3 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 3
OCR3CL4	= 4 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 4
OCR3CL5	= 5 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 5
OCR3CL6	= 6 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 6
OCR3CL7	= 7 ; Timer/Counter3 Output Compare Register C  Bytes Low Bit 7

; ICR3 - Timer/Counter3 Input Capture Register  Bytes
ICR3H0	= 0 ; Timer/Counter3 Input Capture Register  Bytes High Bit 8
ICR3H1	= 1 ; Timer/Counter3 Input Capture Register  Bytes High Bit 9
ICR3H2	= 2 ; Timer/Counter3 Input Capture Register  Bytes High Bit 10
ICR3H3	= 3 ; Timer/Counter3 Input Capture Register  Bytes High Bit 11
ICR3H4	= 4 ; Timer/Counter3 Input Capture Register  Bytes High Bit 12
ICR3H5	= 5 ; Timer/Counter3 Input Capture Register  Bytes High Bit 13
ICR3H6	= 6 ; Timer/Counter3 Input Capture Register  Bytes High Bit 14
ICR3H7	= 7 ; Timer/Counter3 Input Capture Register  Bytes High Bit 15

ICR3L0	= 0 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 0
ICR3L1	= 1 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 1
ICR3L2	= 2 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 2
ICR3L3	= 3 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 3
ICR3L4	= 4 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 4
ICR3L5	= 5 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 5
ICR3L6	= 6 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 6
ICR3L7	= 7 ; Timer/Counter3 Input Capture Register  Bytes Low Bit 7

; TIMSK3 - Timer/Counter3 Interrupt Mask Register
TOIE3	= 0 ; Timer/Counter3 Overflow Interrupt Enable
OCIE3A	= 1 ; Timer/Counter3 Output Compare A Match Interrupt Enable
OCIE3B	= 2 ; Timer/Counter3 Output Compare B Match Interrupt Enable
OCIE3C	= 3 ; Timer/Counter3 Output Compare C Match Interrupt Enable
ICIE3	= 5 ; Timer/Counter3 Input Capture Interrupt Enable

; TIFR3 - Timer/Counter3 Interrupt Flag Register
TOV3	= 0 ; Timer/Counter3 Overflow Flag
OCF3A	= 1 ; Timer/Counter3 Output Compare A Match Flag
OCF3B	= 2 ; Timer/Counter3 Output Compare B Match Flag
OCF3C	= 3 ; Timer/Counter3 Output Compare C Match Flag
ICF3	= 5 ; Timer/Counter3 Input Capture Flag


; ***** TC1 *****************
; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0 ; Waveform Generation Mode
WGM11	= 1 ; Waveform Generation Mode
COM1C0	= 2 ; Compare Output Mode for Channel C
COM1C1	= 3 ; Compare Output Mode for Channel C
COM1B0	= 4 ; Compare Output Mode for Channel B
COM1B1	= 5 ; Compare Output Mode for Channel B
COM1A0	= 6 ; Compare Output Mode for Channel A
COM1A1	= 7 ; Compare Output Mode for Channel A

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0 ; Clock Select
CS11	= 1 ; Clock Select
CS12	= 2 ; Clock Select
WGM12	= 3 ; Waveform Generation Mode
WGM13	= 4 ; Waveform Generation Mode
ICES1	= 6 ; Input Capture 1 Edge Select
ICNC1	= 7 ; Input Capture 1 Noise Canceller

; TCCR1C - Timer/Counter1 Control Register C
FOC1C	= 5 ; Force Output Compare for Channel C
FOC1B	= 6 ; Force Output Compare for Channel B
FOC1A	= 7 ; Force Output Compare for Channel A

; TCNT1 - Timer/Counter1  Bytes
TCNT1H0	= 0 ; Timer/Counter1  Bytes High Bit 8
TCNT1H1	= 1 ; Timer/Counter1  Bytes High Bit 9
TCNT1H2	= 2 ; Timer/Counter1  Bytes High Bit 10
TCNT1H3	= 3 ; Timer/Counter1  Bytes High Bit 11
TCNT1H4	= 4 ; Timer/Counter1  Bytes High Bit 12
TCNT1H5	= 5 ; Timer/Counter1  Bytes High Bit 13
TCNT1H6	= 6 ; Timer/Counter1  Bytes High Bit 14
TCNT1H7	= 7 ; Timer/Counter1  Bytes High Bit 15

TCNT1L0	= 0 ; Timer/Counter1  Bytes Low Bit 0
TCNT1L1	= 1 ; Timer/Counter1  Bytes Low Bit 1
TCNT1L2	= 2 ; Timer/Counter1  Bytes Low Bit 2
TCNT1L3	= 3 ; Timer/Counter1  Bytes Low Bit 3
TCNT1L4	= 4 ; Timer/Counter1  Bytes Low Bit 4
TCNT1L5	= 5 ; Timer/Counter1  Bytes Low Bit 5
TCNT1L6	= 6 ; Timer/Counter1  Bytes Low Bit 6
TCNT1L7	= 7 ; Timer/Counter1  Bytes Low Bit 7

; OCR1A - Timer/Counter1 Output Compare Register A  Bytes
OCR1AH0	= 0 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 8
OCR1AH1	= 1 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 9
OCR1AH2	= 2 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 10
OCR1AH3	= 3 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 11
OCR1AH4	= 4 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 12
OCR1AH5	= 5 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 13
OCR1AH6	= 6 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 14
OCR1AH7	= 7 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 15

OCR1AL0	= 0 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 0
OCR1AL1	= 1 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 1
OCR1AL2	= 2 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 2
OCR1AL3	= 3 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 3
OCR1AL4	= 4 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 4
OCR1AL5	= 5 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 5
OCR1AL6	= 6 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 6
OCR1AL7	= 7 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 7

; OCR1B - Timer/Counter1 Output Compare Register B  Bytes
OCR1BH0	= 0 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 8
OCR1BH1	= 1 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 9
OCR1BH2	= 2 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 10
OCR1BH3	= 3 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 11
OCR1BH4	= 4 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 12
OCR1BH5	= 5 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 13
OCR1BH6	= 6 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 14
OCR1BH7	= 7 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 15

OCR1BL0	= 0 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 0
OCR1BL1	= 1 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 1
OCR1BL2	= 2 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 2
OCR1BL3	= 3 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 3
OCR1BL4	= 4 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 4
OCR1BL5	= 5 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 5
OCR1BL6	= 6 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 6
OCR1BL7	= 7 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 7

; OCR1C - Timer/Counter1 Output Compare Register C  Bytes
OCR1CH0	= 0 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 8
OCR1CH1	= 1 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 9
OCR1CH2	= 2 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 10
OCR1CH3	= 3 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 11
OCR1CH4	= 4 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 12
OCR1CH5	= 5 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 13
OCR1CH6	= 6 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 14
OCR1CH7	= 7 ; Timer/Counter1 Output Compare Register C  Bytes High Bit 15

OCR1CL0	= 0 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 0
OCR1CL1	= 1 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 1
OCR1CL2	= 2 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 2
OCR1CL3	= 3 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 3
OCR1CL4	= 4 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 4
OCR1CL5	= 5 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 5
OCR1CL6	= 6 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 6
OCR1CL7	= 7 ; Timer/Counter1 Output Compare Register C  Bytes Low Bit 7

; ICR1 - Timer/Counter1 Input Capture Register  Bytes
ICR1H0	= 0 ; Timer/Counter1 Input Capture Register  Bytes High Bit 8
ICR1H1	= 1 ; Timer/Counter1 Input Capture Register  Bytes High Bit 9
ICR1H2	= 2 ; Timer/Counter1 Input Capture Register  Bytes High Bit 10
ICR1H3	= 3 ; Timer/Counter1 Input Capture Register  Bytes High Bit 11
ICR1H4	= 4 ; Timer/Counter1 Input Capture Register  Bytes High Bit 12
ICR1H5	= 5 ; Timer/Counter1 Input Capture Register  Bytes High Bit 13
ICR1H6	= 6 ; Timer/Counter1 Input Capture Register  Bytes High Bit 14
ICR1H7	= 7 ; Timer/Counter1 Input Capture Register  Bytes High Bit 15

ICR1L0	= 0 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 0
ICR1L1	= 1 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 1
ICR1L2	= 2 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 2
ICR1L3	= 3 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 3
ICR1L4	= 4 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 4
ICR1L5	= 5 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 5
ICR1L6	= 6 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 6
ICR1L7	= 7 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 7

; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0 ; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1 ; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2 ; Timer/Counter1 Output Compare B Match Interrupt Enable
OCIE1C	= 3 ; Timer/Counter1 Output Compare C Match Interrupt Enable
ICIE1	= 5 ; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter1 Interrupt Flag Register
TOV1	= 0 ; Timer/Counter1 Overflow Flag
OCF1A	= 1 ; Timer/Counter1 Output Compare A Match Flag
OCF1B	= 2 ; Timer/Counter1 Output Compare B Match Flag
OCF1C	= 3 ; Timer/Counter1 Output Compare C Match Flag
ICF1	= 5 ; Timer/Counter1 Input Capture Flag


; ***** TRX24 *****************
; PARCR - Power Amplifier Ramp up/down Control Register
PARUFI	= 0 ; Power Amplifier Ramp Up Frequency Inversion
PARDFI	= 1 ; Power Amplifier Ramp Down Frequency Inversion
PALTU0	= 2 ; ext. PA Ramp Up Lead Time
PALTU1	= 3 ; ext. PA Ramp Up Lead Time
PALTU2	= 4 ; ext. PA Ramp Up Lead Time
PALTD0	= 5 ; ext. PA Ramp Down Lead Time
PALTD1	= 6 ; ext. PA Ramp Down Lead Time
PALTD2	= 7 ; ext. PA Ramp Down Lead Time

; MAFSA0L - Transceiver MAC Short Address Register for Frame Filter 0 (Low Byte)
MAFSA0L0	= 0 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L1	= 1 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L2	= 2 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L3	= 3 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L4	= 4 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L5	= 5 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L6	= 6 ; MAC Short Address low Byte for Frame Filter 0
MAFSA0L7	= 7 ; MAC Short Address low Byte for Frame Filter 0

; MAFSA0H - Transceiver MAC Short Address Register for Frame Filter 0 (High Byte)
MAFSA0H0	= 0 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H1	= 1 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H2	= 2 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H3	= 3 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H4	= 4 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H5	= 5 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H6	= 6 ; MAC Short Address high Byte for Frame Filter 0
MAFSA0H7	= 7 ; MAC Short Address high Byte for Frame Filter 0

; MAFPA0L - Transceiver Personal Area Network ID Register for Frame Filter 0 (Low Byte)
MAFPA0L0	= 0 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L1	= 1 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L2	= 2 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L3	= 3 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L4	= 4 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L5	= 5 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L6	= 6 ; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L7	= 7 ; MAC Personal Area Network ID low Byte for Frame Filter 0

; MAFPA0H - Transceiver Personal Area Network ID Register for Frame Filter 0 (High Byte)
MAFPA0H0	= 0 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H1	= 1 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H2	= 2 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H3	= 3 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H4	= 4 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H5	= 5 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H6	= 6 ; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H7	= 7 ; MAC Personal Area Network ID high Byte for Frame Filter 0

; MAFSA1L - Transceiver MAC Short Address Register for Frame Filter 1 (Low Byte)
MAFSA1L0	= 0 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L1	= 1 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L2	= 2 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L3	= 3 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L4	= 4 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L5	= 5 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L6	= 6 ; MAC Short Address low Byte for Frame Filter 1
MAFSA1L7	= 7 ; MAC Short Address low Byte for Frame Filter 1

; MAFSA1H - Transceiver MAC Short Address Register for Frame Filter 1 (High Byte)
MAFSA1H0	= 0 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H1	= 1 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H2	= 2 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H3	= 3 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H4	= 4 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H5	= 5 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H6	= 6 ; MAC Short Address high Byte for Frame Filter 1
MAFSA1H7	= 7 ; MAC Short Address high Byte for Frame Filter 1

; MAFPA1L - Transceiver Personal Area Network ID Register for Frame Filter 1 (Low Byte)
MAFPA1L0	= 0 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L1	= 1 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L2	= 2 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L3	= 3 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L4	= 4 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L5	= 5 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L6	= 6 ; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L7	= 7 ; MAC Personal Area Network ID low Byte for Frame Filter 1

; MAFPA1H - Transceiver Personal Area Network ID Register for Frame Filter 1 (High Byte)
MAFPA1H0	= 0 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H1	= 1 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H2	= 2 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H3	= 3 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H4	= 4 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H5	= 5 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H6	= 6 ; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H7	= 7 ; MAC Personal Area Network ID high Byte for Frame Filter 1

; MAFSA2L - Transceiver MAC Short Address Register for Frame Filter 2 (Low Byte)
MAFSA2L0	= 0 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L1	= 1 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L2	= 2 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L3	= 3 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L4	= 4 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L5	= 5 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L6	= 6 ; MAC Short Address low Byte for Frame Filter 2
MAFSA2L7	= 7 ; MAC Short Address low Byte for Frame Filter 2

; MAFSA2H - Transceiver MAC Short Address Register for Frame Filter 2 (High Byte)
MAFSA2H0	= 0 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H1	= 1 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H2	= 2 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H3	= 3 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H4	= 4 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H5	= 5 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H6	= 6 ; MAC Short Address high Byte for Frame Filter 2
MAFSA2H7	= 7 ; MAC Short Address high Byte for Frame Filter 2

; MAFPA2L - Transceiver Personal Area Network ID Register for Frame Filter 2 (Low Byte)
MAFPA2L0	= 0 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L1	= 1 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L2	= 2 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L3	= 3 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L4	= 4 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L5	= 5 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L6	= 6 ; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L7	= 7 ; MAC Personal Area Network ID low Byte for Frame Filter 2

; MAFPA2H - Transceiver Personal Area Network ID Register for Frame Filter 2 (High Byte)
MAFPA2H0	= 0 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H1	= 1 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H2	= 2 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H3	= 3 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H4	= 4 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H5	= 5 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H6	= 6 ; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H7	= 7 ; MAC Personal Area Network ID high Byte for Frame Filter 2

; MAFSA3L - Transceiver MAC Short Address Register for Frame Filter 3 (Low Byte)
MAFSA3L0	= 0 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L1	= 1 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L2	= 2 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L3	= 3 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L4	= 4 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L5	= 5 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L6	= 6 ; MAC Short Address low Byte for Frame Filter 3
MAFSA3L7	= 7 ; MAC Short Address low Byte for Frame Filter 3

; MAFSA3H - Transceiver MAC Short Address Register for Frame Filter 3 (High Byte)
MAFSA3H0	= 0 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H1	= 1 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H2	= 2 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H3	= 3 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H4	= 4 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H5	= 5 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H6	= 6 ; MAC Short Address high Byte for Frame Filter 3
MAFSA3H7	= 7 ; MAC Short Address high Byte for Frame Filter 3

; MAFPA3L - Transceiver Personal Area Network ID Register for Frame Filter 3 (Low Byte)
MAFPA3L0	= 0 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L1	= 1 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L2	= 2 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L3	= 3 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L4	= 4 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L5	= 5 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L6	= 6 ; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L7	= 7 ; MAC Personal Area Network ID low Byte for Frame Filter 3

; MAFPA3H - Transceiver Personal Area Network ID Register for Frame Filter 3 (High Byte)
MAFPA3H0	= 0 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H1	= 1 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H2	= 2 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H3	= 3 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H4	= 4 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H5	= 5 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H6	= 6 ; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H7	= 7 ; MAC Personal Area Network ID high Byte for Frame Filter 3

; MAFCR0 - Multiple Address Filter Configuration Register 0
MAF0EN	= 0 ; Multiple Address Filter 0 Enable
MAF1EN	= 1 ; Multiple Address Filter 1 Enable
MAF2EN	= 2 ; Multiple Address Filter 2 Enable
MAF3EN	= 3 ; Multiple Address Filter 3 Enable

; MAFCR1 - Multiple Address Filter Configuration Register 1
AACK_0_I_AM_COORD	= 0 ; Enable PAN Coordinator mode for address filter 0.
AACK_0_SET_PD	= 1 ; Set Data Pending bit for address filter 0.
AACK_1_I_AM_COORD	= 2 ; Enable PAN Coordinator mode for address filter 1.
AACK_1_SET_PD	= 3 ; Set Data Pending bit for address filter 1.
AACK_2_I_AM_COORD	= 4 ; Enable PAN Coordinator mode for address filter 2.
AACK_2_SET_PD	= 5 ; Set Data Pending bit for address filter 2.
AACK_3_I_AM_COORD	= 6 ; Enable PAN Coordinator mode for address filter 3.
AACK_3_SET_PD	= 7 ; Set Data Pending bit for address filter 3.

; AES_CTRL - AES Control Register
AES_IM	= 2 ; AES Interrupt Enable
AES_DIR	= 3 ; Set AES Operation Direction
AES_MODE	= 5 ; Set AES Operation Mode
AES_REQUEST	= 7 ; Request AES Operation.

; AES_STATUS - AES Status Register
AES_DONE	= 0 ; AES Operation Finished with Success
AES_ER	= 7 ; AES Operation Finished with Error

; AES_STATE - AES Plain and Cipher Text Buffer Register
AES_STATE0	= 0 ; AES Plain and Cipher Text Buffer
AES_STATE1	= 1 ; AES Plain and Cipher Text Buffer
AES_STATE2	= 2 ; AES Plain and Cipher Text Buffer
AES_STATE3	= 3 ; AES Plain and Cipher Text Buffer
AES_STATE4	= 4 ; AES Plain and Cipher Text Buffer
AES_STATE5	= 5 ; AES Plain and Cipher Text Buffer
AES_STATE6	= 6 ; AES Plain and Cipher Text Buffer
AES_STATE7	= 7 ; AES Plain and Cipher Text Buffer

; AES_KEY - AES Encryption and Decryption Key Buffer Register
AES_KEY0	= 0 ; AES Encryption/Decryption Key Buffer
AES_KEY1	= 1 ; AES Encryption/Decryption Key Buffer
AES_KEY2	= 2 ; AES Encryption/Decryption Key Buffer
AES_KEY3	= 3 ; AES Encryption/Decryption Key Buffer
AES_KEY4	= 4 ; AES Encryption/Decryption Key Buffer
AES_KEY5	= 5 ; AES Encryption/Decryption Key Buffer
AES_KEY6	= 6 ; AES Encryption/Decryption Key Buffer
AES_KEY7	= 7 ; AES Encryption/Decryption Key Buffer

; TRX_STATUS - Transceiver Status Register
TRX_STATUS0	= 0 ; Transceiver Main Status
TRX_STATUS1	= 1 ; Transceiver Main Status
TRX_STATUS2	= 2 ; Transceiver Main Status
TRX_STATUS3	= 3 ; Transceiver Main Status
TRX_STATUS4	= 4 ; Transceiver Main Status
TST_STATUS	= 5 ; Test mode status
CCA_STATUS	= 6 ; CCA Status Result
CCA_DONE	= 7 ; CCA Algorithm Status

; TRX_STATE - Transceiver State Control Register
TRX_CMD0	= 0 ; State Control Command
TRX_CMD1	= 1 ; State Control Command
TRX_CMD2	= 2 ; State Control Command
TRX_CMD3	= 3 ; State Control Command
TRX_CMD4	= 4 ; State Control Command
TRAC_STATUS0	= 5 ; Transaction Status
TRAC_STATUS1	= 6 ; Transaction Status
TRAC_STATUS2	= 7 ; Transaction Status

; TRX_CTRL_0 - Reserved
PMU_IF_INV	= 4 ; PMU IF Inverse
PMU_START	= 5 ; Start of Phase Measurement Unit
PMU_EN	= 6 ; Enable Phase Measurement Unit
Res7	= 7 ; Reserved

; TRX_CTRL_1 - Transceiver Control Register 1
PLL_TX_FLT	= 4 ; Enable PLL TX filter
TX_AUTO_CRC_ON	= 5 ; Enable Automatic CRC Calculation
IRQ_2_EXT_EN	= 6 ; Connect Frame Start IRQ to TC1
PA_EXT_EN	= 7 ; External PA support enable

; PHY_TX_PWR - Transceiver Transmit Power Control Register
TX_PWR0	= 0 ; Transmit Power Setting
TX_PWR1	= 1 ; Transmit Power Setting
TX_PWR2	= 2 ; Transmit Power Setting
TX_PWR3	= 3 ; Transmit Power Setting

; PHY_RSSI - Receiver Signal Strength Indicator Register
RSSI0	= 0 ; Receiver Signal Strength Indicator
RSSI1	= 1 ; Receiver Signal Strength Indicator
RSSI2	= 2 ; Receiver Signal Strength Indicator
RSSI3	= 3 ; Receiver Signal Strength Indicator
RSSI4	= 4 ; Receiver Signal Strength Indicator
RND_VALUE0	= 5 ; Random Value
RND_VALUE1	= 6 ; Random Value
RX_CRC_VALID	= 7 ; Received Frame CRC Status

; PHY_ED_LEVEL - Transceiver Energy Detection Level Register
ED_LEVEL0	= 0 ; Energy Detection Level
ED_LEVEL1	= 1 ; Energy Detection Level
ED_LEVEL2	= 2 ; Energy Detection Level
ED_LEVEL3	= 3 ; Energy Detection Level
ED_LEVEL4	= 4 ; Energy Detection Level
ED_LEVEL5	= 5 ; Energy Detection Level
ED_LEVEL6	= 6 ; Energy Detection Level
ED_LEVEL7	= 7 ; Energy Detection Level

; PHY_CC_CCA - Transceiver Clear Channel Assessment (CCA) Control Register
CHANNEL0	= 0 ; RX/TX Channel Selection
CHANNEL1	= 1 ; RX/TX Channel Selection
CHANNEL2	= 2 ; RX/TX Channel Selection
CHANNEL3	= 3 ; RX/TX Channel Selection
CHANNEL4	= 4 ; RX/TX Channel Selection
CCA_MODE0	= 5 ; Select CCA Measurement Mode
CCA_MODE1	= 6 ; Select CCA Measurement Mode
CCA_REQUEST	= 7 ; Manual CCA Measurement Request

; CCA_THRES - Transceiver CCA Threshold Setting Register
CCA_ED_THRES0	= 0 ; ED Threshold Level for CCA Measurement
CCA_ED_THRES1	= 1 ; ED Threshold Level for CCA Measurement
CCA_ED_THRES2	= 2 ; ED Threshold Level for CCA Measurement
CCA_ED_THRES3	= 3 ; ED Threshold Level for CCA Measurement
CCA_CS_THRES0	= 4 ; CS Threshold Level for CCA Measurement
CCA_CS_THRES1	= 5 ; CS Threshold Level for CCA Measurement
CCA_CS_THRES2	= 6 ; CS Threshold Level for CCA Measurement
CCA_CS_THRES3	= 7 ; CS Threshold Level for CCA Measurement

; RX_CTRL - Transceiver Receive Control Register
PDT_THRES0	= 0 ; Receiver Sensitivity Control
PDT_THRES1	= 1 ; Receiver Sensitivity Control
PDT_THRES2	= 2 ; Receiver Sensitivity Control
PDT_THRES3	= 3 ; Receiver Sensitivity Control

; SFD_VALUE - Start of Frame Delimiter Value Register
SFD_VALUE0	= 0 ; Start of Frame Delimiter Value
SFD_VALUE1	= 1 ; Start of Frame Delimiter Value
SFD_VALUE2	= 2 ; Start of Frame Delimiter Value
SFD_VALUE3	= 3 ; Start of Frame Delimiter Value
SFD_VALUE4	= 4 ; Start of Frame Delimiter Value
SFD_VALUE5	= 5 ; Start of Frame Delimiter Value
SFD_VALUE6	= 6 ; Start of Frame Delimiter Value
SFD_VALUE7	= 7 ; Start of Frame Delimiter Value

; TRX_CTRL_2 - Transceiver Control Register 2
OQPSK_DATA_RATE0	= 0 ; Data Rate Selection
OQPSK_DATA_RATE1	= 1 ; Data Rate Selection
RX_SAFE_MODE	= 7 ; RX Safe Mode

; ANT_DIV - Antenna Diversity Control Register
ANT_CTRL0	= 0 ; Static Antenna Diversity Switch Control
ANT_CTRL1	= 1 ; Static Antenna Diversity Switch Control
ANT_EXT_SW_EN	= 2 ; Enable External Antenna Switch Control
ANT_DIV_EN	= 3 ; Enable Antenna Diversity
ANT_SEL	= 7 ; Antenna Diversity Antenna Status

; IRQ_MASK - Transceiver Interrupt Enable Register
PLL_LOCK_EN	= 0 ; PLL Lock Interrupt Enable
PLL_UNLOCK_EN	= 1 ; PLL Unlock Interrupt Enable
RX_START_EN	= 2 ; RX_START Interrupt Enable
RX_END_EN	= 3 ; RX_END Interrupt Enable
CCA_ED_DONE_EN	= 4 ; End of ED Measurement Interrupt Enable
AMI_EN	= 5 ; Address Match Interrupt Enable
TX_END_EN	= 6 ; TX_END Interrupt Enable
AWAKE_EN	= 7 ; Awake Interrupt Enable

; IRQ_STATUS - Transceiver Interrupt Status Register
PLL_LOCK	= 0 ; PLL Lock Interrupt Status
PLL_UNLOCK	= 1 ; PLL Unlock Interrupt Status
RX_START	= 2 ; RX_START Interrupt Status
RX_END	= 3 ; RX_END Interrupt Status
CCA_ED_DONE	= 4 ; End of ED Measurement Interrupt Status
AMI	= 5 ; Address Match Interrupt Status
TX_END	= 6 ; TX_END Interrupt Status
AWAKE	= 7 ; Awake Interrupt Status

; IRQ_MASK1 - Transceiver Interrupt Enable Register 1
TX_START_EN	= 0 ; Transmit Start Interrupt enable
MAF_0_AMI_EN	= 1 ; Address Match Interrupt enable Address filter 0
MAF_1_AMI_EN	= 2 ; Address Match Interrupt enable Address filter 1
MAF_2_AMI_EN	= 3 ; Address Match Interrupt enable Address filter 2
MAF_3_AMI_EN	= 4 ; Address Match Interrupt enable Address filter 3

; IRQ_STATUS1 - Transceiver Interrupt Status Register 1
TX_START	= 0 ; Transmit Start Interrupt Status
MAF_0_AMI	= 1 ; Address Match Interrupt Status Address filter 0
MAF_1_AMI	= 2 ; Address Match Interrupt Status Address filter 1
MAF_2_AMI	= 3 ; Address Match Interrupt Status Address filter 2
MAF_3_AMI	= 4 ; Address Match Interrupt Status Address filter 3

; VREG_CTRL - Voltage Regulator Control and Status Register
DVDD_OK	= 2 ; DVDD Supply Voltage Valid
DVREG_EXT	= 3 ; Use External DVDD Regulator
AVDD_OK	= 6 ; AVDD Supply Voltage Valid
AVREG_EXT	= 7 ; Use External AVDD Regulator

; BATMON - Battery Monitor Control and Status Register
BATMON_VTH0	= 0 ; Battery Monitor Threshold Voltage
BATMON_VTH1	= 1 ; Battery Monitor Threshold Voltage
BATMON_VTH2	= 2 ; Battery Monitor Threshold Voltage
BATMON_VTH3	= 3 ; Battery Monitor Threshold Voltage
BATMON_HR	= 4 ; Battery Monitor Voltage Range
BATMON_OK	= 5 ; Battery Monitor Status
BAT_LOW_EN	= 6 ; Battery Monitor Interrupt Enable
BAT_LOW	= 7 ; Battery Monitor Interrupt Status

; XOSC_CTRL - Crystal Oscillator Control Register
XTAL_TRIM0	= 0 ; Crystal Oscillator Load Capacitance Trimming
XTAL_TRIM1	= 1 ; Crystal Oscillator Load Capacitance Trimming
XTAL_TRIM2	= 2 ; Crystal Oscillator Load Capacitance Trimming
XTAL_TRIM3	= 3 ; Crystal Oscillator Load Capacitance Trimming
XTAL_MODE0	= 4 ; Crystal Oscillator Operating Mode
XTAL_MODE1	= 5 ; Crystal Oscillator Operating Mode
XTAL_MODE2	= 6 ; Crystal Oscillator Operating Mode
XTAL_MODE3	= 7 ; Crystal Oscillator Operating Mode

; CC_CTRL_0 - Channel Control Register 0
CC_NUMBER0	= 0 ; Channel Number
CC_NUMBER1	= 1 ; Channel Number
CC_NUMBER2	= 2 ; Channel Number
CC_NUMBER3	= 3 ; Channel Number
CC_NUMBER4	= 4 ; Channel Number
CC_NUMBER5	= 5 ; Channel Number
CC_NUMBER6	= 6 ; Channel Number
CC_NUMBER7	= 7 ; Channel Number

; CC_CTRL_1 - Channel Control Register 1
CC_BAND0	= 0 ; Channel Band
CC_BAND1	= 1 ; Channel Band
CC_BAND2	= 2 ; Channel Band
CC_BAND3	= 3 ; Channel Band

; RX_SYN - Transceiver Receiver Sensitivity Control Register
RX_PDT_LEVEL0	= 0 ; Reduce Receiver Sensitivity
RX_PDT_LEVEL1	= 1 ; Reduce Receiver Sensitivity
RX_PDT_LEVEL2	= 2 ; Reduce Receiver Sensitivity
RX_PDT_LEVEL3	= 3 ; Reduce Receiver Sensitivity
RX_OVERRIDE	= 6 ; Receiver Override Function
RX_PDT_DIS	= 7 ; Prevent Frame Reception

; TRX_RPC - Transceiver Reduced Power Consumption Control
XAH_RPC_EN	= 0 ; Smart Receiving in Extended Operating Modes Enable
IPAN_RPC_EN	= 1 ; Smart Receiving Mode IPAN Handling Enable
PLL_RPC_EN	= 3 ; PLL Smart Receiving Mode Enable
PDT_RPC_EN	= 4 ; Smart Receiving Mode Reduced Sensitivity Enable
RX_RPC_EN	= 5 ; Reciver Smart Receiving Mode Enable
RX_RPC_CTRL0	= 6 ; Smart Receiving Mode Timing
RX_RPC_CTRL1	= 7 ; Smart Receiving Mode Timing

; XAH_CTRL_1 - Transceiver Acknowledgment Frame Control Register 1
AACK_PROM_MODE	= 1 ; Enable Promiscuous Mode
AACK_ACK_TIME	= 2 ; Reduce Acknowledgment Time
AACK_UPLD_RES_FT	= 4 ; Process Reserved Frames
AACK_FLTR_RES_FT	= 5 ; Filter Reserved Frames

; FTN_CTRL - Transceiver Filter Tuning Control Register
FTN_START	= 7 ; Start Calibration Loop of Filter Tuning Network

; PLL_CF - Transceiver Center Frequency Calibration Control Register
PLL_CF_START	= 7 ; Start Center Frequency Calibration

; PLL_DCU - Transceiver Delay Cell Calibration Control Register
PLL_DCU_START	= 7 ; Start Delay Cell Calibration

; PART_NUM - Device Identification Register (Part Number)
PART_NUM0	= 0 ; Part Number
PART_NUM1	= 1 ; Part Number
PART_NUM2	= 2 ; Part Number
PART_NUM3	= 3 ; Part Number
PART_NUM4	= 4 ; Part Number
PART_NUM5	= 5 ; Part Number
PART_NUM6	= 6 ; Part Number
PART_NUM7	= 7 ; Part Number

; VERSION_NUM - Device Identification Register (Version Number)
VERSION_NUM0	= 0 ; Version Number
VERSION_NUM1	= 1 ; Version Number
VERSION_NUM2	= 2 ; Version Number
VERSION_NUM3	= 3 ; Version Number
VERSION_NUM4	= 4 ; Version Number
VERSION_NUM5	= 5 ; Version Number
VERSION_NUM6	= 6 ; Version Number
VERSION_NUM7	= 7 ; Version Number

; MAN_ID_0 - Device Identification Register (Manufacture ID Low Byte)
MAN_ID_00	= 0 ; Manufacturer ID (Low Byte)
MAN_ID_01	= 1 ; Manufacturer ID (Low Byte)
MAN_ID_02	= 2 ; Manufacturer ID (Low Byte)
MAN_ID_03	= 3 ; Manufacturer ID (Low Byte)
MAN_ID_04	= 4 ; Manufacturer ID (Low Byte)
MAN_ID_05	= 5 ; Manufacturer ID (Low Byte)
MAN_ID_06	= 6 ; Manufacturer ID (Low Byte)
MAN_ID_07	= 7 ; Manufacturer ID (Low Byte)

; MAN_ID_1 - Device Identification Register (Manufacture ID High Byte)
MAN_ID_10	= 0 ; Manufacturer ID (High Byte)
MAN_ID_11	= 1 ; Manufacturer ID (High Byte)
MAN_ID_12	= 2 ; Manufacturer ID (High Byte)
MAN_ID_13	= 3 ; Manufacturer ID (High Byte)
MAN_ID_14	= 4 ; Manufacturer ID (High Byte)
MAN_ID_15	= 5 ; Manufacturer ID (High Byte)
MAN_ID_16	= 6 ; Manufacturer ID (High Byte)
MAN_ID_17	= 7 ; Manufacturer ID (High Byte)

; SHORT_ADDR_0 - Transceiver MAC Short Address Register (Low Byte)
SHORT_ADDR_00	= 0 ; MAC Short Address
SHORT_ADDR_01	= 1 ; MAC Short Address
SHORT_ADDR_02	= 2 ; MAC Short Address
SHORT_ADDR_03	= 3 ; MAC Short Address
SHORT_ADDR_04	= 4 ; MAC Short Address
SHORT_ADDR_05	= 5 ; MAC Short Address
SHORT_ADDR_06	= 6 ; MAC Short Address
SHORT_ADDR_07	= 7 ; MAC Short Address

; SHORT_ADDR_1 - Transceiver MAC Short Address Register (High Byte)
SHORT_ADDR_10	= 0 ; MAC Short Address
SHORT_ADDR_11	= 1 ; MAC Short Address
SHORT_ADDR_12	= 2 ; MAC Short Address
SHORT_ADDR_13	= 3 ; MAC Short Address
SHORT_ADDR_14	= 4 ; MAC Short Address
SHORT_ADDR_15	= 5 ; MAC Short Address
SHORT_ADDR_16	= 6 ; MAC Short Address
SHORT_ADDR_17	= 7 ; MAC Short Address

; PAN_ID_0 - Transceiver Personal Area Network ID Register (Low Byte)
PAN_ID_00	= 0 ; MAC Personal Area Network ID
PAN_ID_01	= 1 ; MAC Personal Area Network ID
PAN_ID_02	= 2 ; MAC Personal Area Network ID
PAN_ID_03	= 3 ; MAC Personal Area Network ID
PAN_ID_04	= 4 ; MAC Personal Area Network ID
PAN_ID_05	= 5 ; MAC Personal Area Network ID
PAN_ID_06	= 6 ; MAC Personal Area Network ID
PAN_ID_07	= 7 ; MAC Personal Area Network ID

; PAN_ID_1 - Transceiver Personal Area Network ID Register (High Byte)
PAN_ID_10	= 0 ; MAC Personal Area Network ID
PAN_ID_11	= 1 ; MAC Personal Area Network ID
PAN_ID_12	= 2 ; MAC Personal Area Network ID
PAN_ID_13	= 3 ; MAC Personal Area Network ID
PAN_ID_14	= 4 ; MAC Personal Area Network ID
PAN_ID_15	= 5 ; MAC Personal Area Network ID
PAN_ID_16	= 6 ; MAC Personal Area Network ID
PAN_ID_17	= 7 ; MAC Personal Area Network ID

; IEEE_ADDR_0 - Transceiver MAC IEEE Address Register 0
IEEE_ADDR_00	= 0 ; MAC IEEE Address
IEEE_ADDR_01	= 1 ; MAC IEEE Address
IEEE_ADDR_02	= 2 ; MAC IEEE Address
IEEE_ADDR_03	= 3 ; MAC IEEE Address
IEEE_ADDR_04	= 4 ; MAC IEEE Address
IEEE_ADDR_05	= 5 ; MAC IEEE Address
IEEE_ADDR_06	= 6 ; MAC IEEE Address
IEEE_ADDR_07	= 7 ; MAC IEEE Address

; IEEE_ADDR_1 - Transceiver MAC IEEE Address Register 1
IEEE_ADDR_10	= 0 ; MAC IEEE Address
IEEE_ADDR_11	= 1 ; MAC IEEE Address
IEEE_ADDR_12	= 2 ; MAC IEEE Address
IEEE_ADDR_13	= 3 ; MAC IEEE Address
IEEE_ADDR_14	= 4 ; MAC IEEE Address
IEEE_ADDR_15	= 5 ; MAC IEEE Address
IEEE_ADDR_16	= 6 ; MAC IEEE Address
IEEE_ADDR_17	= 7 ; MAC IEEE Address

; IEEE_ADDR_2 - Transceiver MAC IEEE Address Register 2
IEEE_ADDR_20	= 0 ; MAC IEEE Address
IEEE_ADDR_21	= 1 ; MAC IEEE Address
IEEE_ADDR_22	= 2 ; MAC IEEE Address
IEEE_ADDR_23	= 3 ; MAC IEEE Address
IEEE_ADDR_24	= 4 ; MAC IEEE Address
IEEE_ADDR_25	= 5 ; MAC IEEE Address
IEEE_ADDR_26	= 6 ; MAC IEEE Address
IEEE_ADDR_27	= 7 ; MAC IEEE Address

; IEEE_ADDR_3 - Transceiver MAC IEEE Address Register 3
IEEE_ADDR_30	= 0 ; MAC IEEE Address
IEEE_ADDR_31	= 1 ; MAC IEEE Address
IEEE_ADDR_32	= 2 ; MAC IEEE Address
IEEE_ADDR_33	= 3 ; MAC IEEE Address
IEEE_ADDR_34	= 4 ; MAC IEEE Address
IEEE_ADDR_35	= 5 ; MAC IEEE Address
IEEE_ADDR_36	= 6 ; MAC IEEE Address
IEEE_ADDR_37	= 7 ; MAC IEEE Address

; IEEE_ADDR_4 - Transceiver MAC IEEE Address Register 4
IEEE_ADDR_40	= 0 ; MAC IEEE Address
IEEE_ADDR_41	= 1 ; MAC IEEE Address
IEEE_ADDR_42	= 2 ; MAC IEEE Address
IEEE_ADDR_43	= 3 ; MAC IEEE Address
IEEE_ADDR_44	= 4 ; MAC IEEE Address
IEEE_ADDR_45	= 5 ; MAC IEEE Address
IEEE_ADDR_46	= 6 ; MAC IEEE Address
IEEE_ADDR_47	= 7 ; MAC IEEE Address

; IEEE_ADDR_5 - Transceiver MAC IEEE Address Register 5
IEEE_ADDR_50	= 0 ; MAC IEEE Address
IEEE_ADDR_51	= 1 ; MAC IEEE Address
IEEE_ADDR_52	= 2 ; MAC IEEE Address
IEEE_ADDR_53	= 3 ; MAC IEEE Address
IEEE_ADDR_54	= 4 ; MAC IEEE Address
IEEE_ADDR_55	= 5 ; MAC IEEE Address
IEEE_ADDR_56	= 6 ; MAC IEEE Address
IEEE_ADDR_57	= 7 ; MAC IEEE Address

; IEEE_ADDR_6 - Transceiver MAC IEEE Address Register 6
IEEE_ADDR_60	= 0 ; MAC IEEE Address
IEEE_ADDR_61	= 1 ; MAC IEEE Address
IEEE_ADDR_62	= 2 ; MAC IEEE Address
IEEE_ADDR_63	= 3 ; MAC IEEE Address
IEEE_ADDR_64	= 4 ; MAC IEEE Address
IEEE_ADDR_65	= 5 ; MAC IEEE Address
IEEE_ADDR_66	= 6 ; MAC IEEE Address
IEEE_ADDR_67	= 7 ; MAC IEEE Address

; IEEE_ADDR_7 - Transceiver MAC IEEE Address Register 7
IEEE_ADDR_70	= 0 ; MAC IEEE Address
IEEE_ADDR_71	= 1 ; MAC IEEE Address
IEEE_ADDR_72	= 2 ; MAC IEEE Address
IEEE_ADDR_73	= 3 ; MAC IEEE Address
IEEE_ADDR_74	= 4 ; MAC IEEE Address
IEEE_ADDR_75	= 5 ; MAC IEEE Address
IEEE_ADDR_76	= 6 ; MAC IEEE Address
IEEE_ADDR_77	= 7 ; MAC IEEE Address

; XAH_CTRL_0 - Transceiver Extended Operating Mode Control Register
SLOTTED_OPERATION	= 0 ; Set Slotted Acknowledgment
MAX_CSMA_RETRIES0	= 1 ; Maximum Number of CSMA-CA Procedure Repetition Attempts
MAX_CSMA_RETRIES1	= 2 ; Maximum Number of CSMA-CA Procedure Repetition Attempts
MAX_CSMA_RETRIES2	= 3 ; Maximum Number of CSMA-CA Procedure Repetition Attempts
MAX_FRAME_RETRIES0	= 4 ; Maximum Number of Frame Re-transmission Attempts
MAX_FRAME_RETRIES1	= 5 ; Maximum Number of Frame Re-transmission Attempts
MAX_FRAME_RETRIES2	= 6 ; Maximum Number of Frame Re-transmission Attempts
MAX_FRAME_RETRIES3	= 7 ; Maximum Number of Frame Re-transmission Attempts

; CSMA_SEED_0 - Transceiver CSMA-CA Random Number Generator Seed Register
CSMA_SEED_00	= 0 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_01	= 1 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_02	= 2 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_03	= 3 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_04	= 4 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_05	= 5 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_06	= 6 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_07	= 7 ; Seed Value for CSMA Random Number Generator

; CSMA_SEED_1 - Transceiver Acknowledgment Frame Control Register 2
CSMA_SEED_10	= 0 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_11	= 1 ; Seed Value for CSMA Random Number Generator
CSMA_SEED_12	= 2 ; Seed Value for CSMA Random Number Generator
AACK_I_AM_COORD	= 3 ; Set Personal Area Network Coordinator
AACK_DIS_ACK	= 4 ; Disable Acknowledgment Frame Transmission
AACK_SET_PD	= 5 ; Set Frame Pending Sub-field
AACK_FVN_MODE0	= 6 ; Acknowledgment Frame Filter Mode
AACK_FVN_MODE1	= 7 ; Acknowledgment Frame Filter Mode

; CSMA_BE - Transceiver CSMA-CA Back-off Exponent Control Register
MIN_BE0	= 0 ; Minimum Back-off Exponent
MIN_BE1	= 1 ; Minimum Back-off Exponent
MIN_BE2	= 2 ; Minimum Back-off Exponent
MIN_BE3	= 3 ; Minimum Back-off Exponent
MAX_BE0	= 4 ; Maximum Back-off Exponent
MAX_BE1	= 5 ; Maximum Back-off Exponent
MAX_BE2	= 6 ; Maximum Back-off Exponent
MAX_BE3	= 7 ; Maximum Back-off Exponent

; TST_CTRL_DIGI - Transceiver Digital Test Control Register
TST_CTRL_DIG0	= 0 ; Digital Test Controller Register
TST_CTRL_DIG1	= 1 ; Digital Test Controller Register
TST_CTRL_DIG2	= 2 ; Digital Test Controller Register
TST_CTRL_DIG3	= 3 ; Digital Test Controller Register

; TST_RX_LENGTH - Transceiver Received Frame Length Register
RX_LENGTH0	= 0 ; Received Frame Length
RX_LENGTH1	= 1 ; Received Frame Length
RX_LENGTH2	= 2 ; Received Frame Length
RX_LENGTH3	= 3 ; Received Frame Length
RX_LENGTH4	= 4 ; Received Frame Length
RX_LENGTH5	= 5 ; Received Frame Length
RX_LENGTH6	= 6 ; Received Frame Length
RX_LENGTH7	= 7 ; Received Frame Length

; TRXFBST - Start of frame buffer
TRXFBST0	= 0 ; Start of frame buffer Bit 0
TRXFBST1	= 1 ; Start of frame buffer Bit 1
TRXFBST2	= 2 ; Start of frame buffer Bit 2
TRXFBST3	= 3 ; Start of frame buffer Bit 3
TRXFBST4	= 4 ; Start of frame buffer Bit 4
TRXFBST5	= 5 ; Start of frame buffer Bit 5
TRXFBST6	= 6 ; Start of frame buffer Bit 6
TRXFBST7	= 7 ; Start of frame buffer Bit 7

; TRXFBEND - End of frame buffer
TRXFBEND0	= 0 ; End of frame buffer Bit 0
TRXFBEND1	= 1 ; End of frame buffer Bit 1
TRXFBEND2	= 2 ; End of frame buffer Bit 2
TRXFBEND3	= 3 ; End of frame buffer Bit 3
TRXFBEND4	= 4 ; End of frame buffer Bit 4
TRXFBEND5	= 5 ; End of frame buffer Bit 5
TRXFBEND6	= 6 ; End of frame buffer Bit 6
TRXFBEND7	= 7 ; End of frame buffer Bit 7


; ***** SYMCNT *****************
; SCTSTRHH - Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH0	= 0 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH1	= 1 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH2	= 2 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH3	= 3 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH4	= 4 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH5	= 5 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH6	= 6 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH7	= 7 ; Symbol Counter Transmit Frame Timestamp Register HH-Byte

; SCTSTRHL - Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL0	= 0 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL1	= 1 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL2	= 2 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL3	= 3 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL4	= 4 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL5	= 5 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL6	= 6 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL7	= 7 ; Symbol Counter Transmit Frame Timestamp Register HL-Byte

; SCTSTRLH - Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH0	= 0 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH1	= 1 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH2	= 2 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH3	= 3 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH4	= 4 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH5	= 5 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH6	= 6 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH7	= 7 ; Symbol Counter Transmit Frame Timestamp Register LH-Byte

; SCTSTRLL - Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL0	= 0 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL1	= 1 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL2	= 2 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL3	= 3 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL4	= 4 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL5	= 5 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL6	= 6 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL7	= 7 ; Symbol Counter Transmit Frame Timestamp Register LL-Byte

; SCOCR1HH - Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH0	= 0 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH1	= 1 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH2	= 2 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH3	= 3 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH4	= 4 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH5	= 5 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH6	= 6 ; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH7	= 7 ; Symbol Counter Output Compare Register 1 HH-Byte

; SCOCR1HL - Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL0	= 0 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL1	= 1 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL2	= 2 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL3	= 3 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL4	= 4 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL5	= 5 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL6	= 6 ; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL7	= 7 ; Symbol Counter Output Compare Register 1 HL-Byte

; SCOCR1LH - Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH0	= 0 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH1	= 1 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH2	= 2 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH3	= 3 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH4	= 4 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH5	= 5 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH6	= 6 ; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH7	= 7 ; Symbol Counter Output Compare Register 1 LH-Byte

; SCOCR1LL - Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL0	= 0 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL1	= 1 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL2	= 2 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL3	= 3 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL4	= 4 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL5	= 5 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL6	= 6 ; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL7	= 7 ; Symbol Counter Output Compare Register 1 LL-Byte

; SCOCR2HH - Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH0	= 0 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH1	= 1 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH2	= 2 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH3	= 3 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH4	= 4 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH5	= 5 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH6	= 6 ; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH7	= 7 ; Symbol Counter Output Compare Register 2 HH-Byte

; SCOCR2HL - Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL0	= 0 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL1	= 1 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL2	= 2 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL3	= 3 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL4	= 4 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL5	= 5 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL6	= 6 ; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL7	= 7 ; Symbol Counter Output Compare Register 2 HL-Byte

; SCOCR2LH - Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH0	= 0 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH1	= 1 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH2	= 2 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH3	= 3 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH4	= 4 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH5	= 5 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH6	= 6 ; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH7	= 7 ; Symbol Counter Output Compare Register 2 LH-Byte

; SCOCR2LL - Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL0	= 0 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL1	= 1 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL2	= 2 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL3	= 3 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL4	= 4 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL5	= 5 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL6	= 6 ; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL7	= 7 ; Symbol Counter Output Compare Register 2 LL-Byte

; SCOCR3HH - Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH0	= 0 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH1	= 1 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH2	= 2 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH3	= 3 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH4	= 4 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH5	= 5 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH6	= 6 ; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH7	= 7 ; Symbol Counter Output Compare Register 3 HH-Byte

; SCOCR3HL - Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL0	= 0 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL1	= 1 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL2	= 2 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL3	= 3 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL4	= 4 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL5	= 5 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL6	= 6 ; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL7	= 7 ; Symbol Counter Output Compare Register 3 HL-Byte

; SCOCR3LH - Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH0	= 0 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH1	= 1 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH2	= 2 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH3	= 3 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH4	= 4 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH5	= 5 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH6	= 6 ; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH7	= 7 ; Symbol Counter Output Compare Register 3 LH-Byte

; SCOCR3LL - Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL0	= 0 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL1	= 1 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL2	= 2 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL3	= 3 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL4	= 4 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL5	= 5 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL6	= 6 ; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL7	= 7 ; Symbol Counter Output Compare Register 3 LL-Byte

; SCTSRHH - Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH0	= 0 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH1	= 1 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH2	= 2 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH3	= 3 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH4	= 4 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH5	= 5 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH6	= 6 ; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH7	= 7 ; Symbol Counter Frame Timestamp Register HH-Byte

; SCTSRHL - Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL0	= 0 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL1	= 1 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL2	= 2 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL3	= 3 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL4	= 4 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL5	= 5 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL6	= 6 ; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL7	= 7 ; Symbol Counter Frame Timestamp Register HL-Byte

; SCTSRLH - Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH0	= 0 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH1	= 1 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH2	= 2 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH3	= 3 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH4	= 4 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH5	= 5 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH6	= 6 ; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH7	= 7 ; Symbol Counter Frame Timestamp Register LH-Byte

; SCTSRLL - Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL0	= 0 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL1	= 1 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL2	= 2 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL3	= 3 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL4	= 4 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL5	= 5 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL6	= 6 ; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL7	= 7 ; Symbol Counter Frame Timestamp Register LL-Byte

; SCBTSRHH - Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH0	= 0 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH1	= 1 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH2	= 2 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH3	= 3 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH4	= 4 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH5	= 5 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH6	= 6 ; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH7	= 7 ; Symbol Counter Beacon Timestamp Register HH-Byte

; SCBTSRHL - Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL0	= 0 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL1	= 1 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL2	= 2 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL3	= 3 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL4	= 4 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL5	= 5 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL6	= 6 ; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL7	= 7 ; Symbol Counter Beacon Timestamp Register HL-Byte

; SCBTSRLH - Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH0	= 0 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH1	= 1 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH2	= 2 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH3	= 3 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH4	= 4 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH5	= 5 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH6	= 6 ; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH7	= 7 ; Symbol Counter Beacon Timestamp Register LH-Byte

; SCBTSRLL - Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL0	= 0 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL1	= 1 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL2	= 2 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL3	= 3 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL4	= 4 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL5	= 5 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL6	= 6 ; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL7	= 7 ; Symbol Counter Beacon Timestamp Register LL-Byte

; SCCNTHH - Symbol Counter Register HH-Byte
SCCNTHH0	= 0 ; Symbol Counter Register HH-Byte
SCCNTHH1	= 1 ; Symbol Counter Register HH-Byte
SCCNTHH2	= 2 ; Symbol Counter Register HH-Byte
SCCNTHH3	= 3 ; Symbol Counter Register HH-Byte
SCCNTHH4	= 4 ; Symbol Counter Register HH-Byte
SCCNTHH5	= 5 ; Symbol Counter Register HH-Byte
SCCNTHH6	= 6 ; Symbol Counter Register HH-Byte
SCCNTHH7	= 7 ; Symbol Counter Register HH-Byte

; SCCNTHL - Symbol Counter Register HL-Byte
SCCNTHL0	= 0 ; Symbol Counter Register HL-Byte
SCCNTHL1	= 1 ; Symbol Counter Register HL-Byte
SCCNTHL2	= 2 ; Symbol Counter Register HL-Byte
SCCNTHL3	= 3 ; Symbol Counter Register HL-Byte
SCCNTHL4	= 4 ; Symbol Counter Register HL-Byte
SCCNTHL5	= 5 ; Symbol Counter Register HL-Byte
SCCNTHL6	= 6 ; Symbol Counter Register HL-Byte
SCCNTHL7	= 7 ; Symbol Counter Register HL-Byte

; SCCNTLH - Symbol Counter Register LH-Byte
SCCNTLH0	= 0 ; Symbol Counter Register LH-Byte
SCCNTLH1	= 1 ; Symbol Counter Register LH-Byte
SCCNTLH2	= 2 ; Symbol Counter Register LH-Byte
SCCNTLH3	= 3 ; Symbol Counter Register LH-Byte
SCCNTLH4	= 4 ; Symbol Counter Register LH-Byte
SCCNTLH5	= 5 ; Symbol Counter Register LH-Byte
SCCNTLH6	= 6 ; Symbol Counter Register LH-Byte
SCCNTLH7	= 7 ; Symbol Counter Register LH-Byte

; SCCNTLL - Symbol Counter Register LL-Byte
SCCNTLL0	= 0 ; Symbol Counter Register LL-Byte
SCCNTLL1	= 1 ; Symbol Counter Register LL-Byte
SCCNTLL2	= 2 ; Symbol Counter Register LL-Byte
SCCNTLL3	= 3 ; Symbol Counter Register LL-Byte
SCCNTLL4	= 4 ; Symbol Counter Register LL-Byte
SCCNTLL5	= 5 ; Symbol Counter Register LL-Byte
SCCNTLL6	= 6 ; Symbol Counter Register LL-Byte
SCCNTLL7	= 7 ; Symbol Counter Register LL-Byte

; SCIRQS - Symbol Counter Interrupt Status Register
IRQSCP1	= 0 ; Compare Unit 3 Compare Match IRQ
IRQSCP2	= 1 ; Compare Unit 3 Compare Match IRQ
IRQSCP3	= 2 ; Compare Unit 3 Compare Match IRQ
IRQSOF	= 3 ; Symbol Counter Overflow IRQ
IRQSBO	= 4 ; Backoff Slot Counter IRQ

; SCIRQM - Symbol Counter Interrupt Mask Register
IRQMCP1	= 0 ; Symbol Counter Compare Match 3 IRQ enable
IRQMCP2	= 1 ; Symbol Counter Compare Match 3 IRQ enable
IRQMCP3	= 2 ; Symbol Counter Compare Match 3 IRQ enable
IRQMOF	= 3 ; Symbol Counter Overflow IRQ enable
IRQMBO	= 4 ; Backoff Slot Counter IRQ enable

; SCSR - Symbol Counter Status Register
SCBSY	= 0 ; Symbol Counter busy
Res5	= 6 ; Reserved Bit
Res6	= 7 ; Reserved Bit

; SCCR1 - Symbol Counter Control Register 1
SCENBO	= 0 ; Backoff Slot Counter enable
SCEECLK	= 1 ; Enable External Clock Source on PG2
SCCKDIV0	= 2 ; Clock divider for synchronous clock source (16MHz Transceiver Clock)
SCCKDIV1	= 3 ; Clock divider for synchronous clock source (16MHz Transceiver Clock)
SCCKDIV2	= 4 ; Clock divider for synchronous clock source (16MHz Transceiver Clock)
SCBTSM	= 5 ; Symbol Counter Beacon Timestamp Mask Register

; SCCR0 - Symbol Counter Control Register 0
SCCMP1	= 0 ; Symbol Counter Compare Unit 3 Mode select
SCCMP2	= 1 ; Symbol Counter Compare Unit 3 Mode select
SCCMP3	= 2 ; Symbol Counter Compare Unit 3 Mode select
SCTSE	= 3 ; Symbol Counter Automatic Timestamping enable
SCCKSEL	= 4 ; Symbol Counter Clock Source select
SCEN	= 5 ; Symbol Counter enable
SCMBTS	= 6 ; Manual Beacon Timestamp
SCRES	= 7 ; Symbol Counter Synchronization

; SCCSR - Symbol Counter Compare Source Register
SCCS10	= 0 ; Symbol Counter Compare Source select register for Compare Units
SCCS11	= 1 ; Symbol Counter Compare Source select register for Compare Units
SCCS20	= 2 ; Symbol Counter Compare Source select register for Compare Unit 2
SCCS21	= 3 ; Symbol Counter Compare Source select register for Compare Unit 2
SCCS30	= 4 ; Symbol Counter Compare Source select register for Compare Unit 3
SCCS31	= 5 ; Symbol Counter Compare Source select register for Compare Unit 3

; SCRSTRHH - Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH0	= 0 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH1	= 1 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH2	= 2 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH3	= 3 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH4	= 4 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH5	= 5 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH6	= 6 ; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH7	= 7 ; Symbol Counter Received Frame Timestamp Register HH-Byte

; SCRSTRHL - Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL0	= 0 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL1	= 1 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL2	= 2 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL3	= 3 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL4	= 4 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL5	= 5 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL6	= 6 ; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL7	= 7 ; Symbol Counter Received Frame Timestamp Register HL-Byte

; SCRSTRLH - Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH0	= 0 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH1	= 1 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH2	= 2 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH3	= 3 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH4	= 4 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH5	= 5 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH6	= 6 ; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH7	= 7 ; Symbol Counter Received Frame Timestamp Register LH-Byte

; SCRSTRLL - Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL0	= 0 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL1	= 1 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL2	= 2 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL3	= 3 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL4	= 4 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL5	= 5 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL6	= 6 ; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL7	= 7 ; Symbol Counter Received Frame Timestamp Register LL-Byte


; ***** EEPROM *****************
; EEAR - EEPROM Address Register  Bytes
EEARH0	= 0 ; EEPROM Address Register  Bytes High Bit 8
EEARH1	= 1 ; EEPROM Address Register  Bytes High Bit 9
EEARH2	= 2 ; EEPROM Address Register  Bytes High Bit 10
EEARH3	= 3 ; EEPROM Address Register  Bytes High Bit 11
EEARH4	= 4 ; EEPROM Address Register  Bytes High Bit 12
EEARH5	= 5 ; EEPROM Address Register  Bytes High Bit 13
EEARH6	= 6 ; EEPROM Address Register  Bytes High Bit 14
EEARH7	= 7 ; EEPROM Address Register  Bytes High Bit 15

EEARL0	= 0 ; EEPROM Address Register  Bytes Low Bit 0
EEARL1	= 1 ; EEPROM Address Register  Bytes Low Bit 1
EEARL2	= 2 ; EEPROM Address Register  Bytes Low Bit 2
EEARL3	= 3 ; EEPROM Address Register  Bytes Low Bit 3
EEARL4	= 4 ; EEPROM Address Register  Bytes Low Bit 4
EEARL5	= 5 ; EEPROM Address Register  Bytes Low Bit 5
EEARL6	= 6 ; EEPROM Address Register  Bytes Low Bit 6
EEARL7	= 7 ; EEPROM Address Register  Bytes Low Bit 7

; EEDR - EEPROM Data Register
EEDR0	= 0 ; EEPROM Data Register Bit 0
EEDR1	= 1 ; EEPROM Data Register Bit 1
EEDR2	= 2 ; EEPROM Data Register Bit 2
EEDR3	= 3 ; EEPROM Data Register Bit 3
EEDR4	= 4 ; EEPROM Data Register Bit 4
EEDR5	= 5 ; EEPROM Data Register Bit 5
EEDR6	= 6 ; EEPROM Data Register Bit 6
EEDR7	= 7 ; EEPROM Data Register Bit 7

; EECR - EEPROM Control Register
EERE	= 0 ; EEPROM Read Enable
EEPE	= 1 ; EEPROM Programming Enable
EEMPE	= 2 ; EEPROM Master Write Enable
EERIE	= 3 ; EEPROM Ready Interrupt Enable
EEPM0	= 4 ; EEPROM Programming Mode
EEPM1	= 5 ; EEPROM Programming Mode


; ***** JTAG *****************
; OCDR - On-Chip Debug Register
OCDR0	= 0 ; On-Chip Debug Register Data
OCDR1	= 1 ; On-Chip Debug Register Data
OCDR2	= 2 ; On-Chip Debug Register Data
OCDR3	= 3 ; On-Chip Debug Register Data
OCDR4	= 4 ; On-Chip Debug Register Data
OCDR5	= 5 ; On-Chip Debug Register Data
OCDR6	= 6 ; On-Chip Debug Register Data
OCDR7	= 7 ; On-Chip Debug Register Data

; MCUCR - MCU Control Register
JTD	= 7 ; JTAG Interface Disable

; MCUSR - MCU Status Register
JTRF	= 4 ; JTAG Reset Flag


; ***** EXINT *****************
; EICRA - External Interrupt Control Register A
ISC00	= 0 ; External Interrupt 0 Sense Control Bit
ISC01	= 1 ; External Interrupt 0 Sense Control Bit
ISC10	= 2 ; External Interrupt 1 Sense Control Bit
ISC11	= 3 ; External Interrupt 1 Sense Control Bit
ISC20	= 4 ; External Interrupt 2 Sense Control Bit
ISC21	= 5 ; External Interrupt 2 Sense Control Bit
ISC30	= 6 ; External Interrupt 3 Sense Control Bit
ISC31	= 7 ; External Interrupt 3 Sense Control Bit

; EICRB - External Interrupt Control Register B
ISC40	= 0 ; External Interrupt 4 Sense Control Bit
ISC41	= 1 ; External Interrupt 4 Sense Control Bit
ISC50	= 2 ; External Interrupt 5 Sense Control Bit
ISC51	= 3 ; External Interrupt 5 Sense Control Bit
ISC60	= 4 ; External Interrupt 6 Sense Control Bit
ISC61	= 5 ; External Interrupt 6 Sense Control Bit
ISC70	= 6 ; External Interrupt 7 Sense Control Bit
ISC71	= 7 ; External Interrupt 7 Sense Control Bit

; EIMSK - External Interrupt Mask Register
INT0	= 0 ; External Interrupt Request Enable
INT1	= 1 ; External Interrupt Request Enable
INT2	= 2 ; External Interrupt Request Enable
INT3	= 3 ; External Interrupt Request Enable
INT4	= 4 ; External Interrupt Request Enable
INT5	= 5 ; External Interrupt Request Enable
INT6	= 6 ; External Interrupt Request Enable
INT7	= 7 ; External Interrupt Request Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0 ; External Interrupt Flag
INTF1	= 1 ; External Interrupt Flag
INTF2	= 2 ; External Interrupt Flag
INTF3	= 3 ; External Interrupt Flag
INTF4	= 4 ; External Interrupt Flag
INTF5	= 5 ; External Interrupt Flag
INTF6	= 6 ; External Interrupt Flag
INTF7	= 7 ; External Interrupt Flag

; PCMSK2 - Pin Change Mask Register 2
PCINT16	= 0 ; Pin Change Enable Mask
PCINT17	= 1 ; Pin Change Enable Mask
PCINT18	= 2 ; Pin Change Enable Mask
PCINT19	= 3 ; Pin Change Enable Mask
PCINT20	= 4 ; Pin Change Enable Mask
PCINT21	= 5 ; Pin Change Enable Mask
PCINT22	= 6 ; Pin Change Enable Mask
PCINT23	= 7 ; Pin Change Enable Mask

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0 ; Pin Change Enable Mask
PCINT9	= 1 ; Pin Change Enable Mask
PCINT10	= 2 ; Pin Change Enable Mask
PCINT11	= 3 ; Pin Change Enable Mask
PCINT12	= 4 ; Pin Change Enable Mask
PCINT13	= 5 ; Pin Change Enable Mask
PCINT14	= 6 ; Pin Change Enable Mask
PCINT15	= 7 ; Pin Change Enable Mask

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0 ; Pin Change Enable Mask
PCINT1	= 1 ; Pin Change Enable Mask
PCINT2	= 2 ; Pin Change Enable Mask
PCINT3	= 3 ; Pin Change Enable Mask
PCINT4	= 4 ; Pin Change Enable Mask
PCINT5	= 5 ; Pin Change Enable Mask
PCINT6	= 6 ; Pin Change Enable Mask
PCINT7	= 7 ; Pin Change Enable Mask

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0 ; Pin Change Interrupt Flags
PCIF1	= 1 ; Pin Change Interrupt Flags
PCIF2	= 2 ; Pin Change Interrupt Flags

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0 ; Pin Change Interrupt Enables
PCIE1	= 1 ; Pin Change Interrupt Enables
PCIE2	= 2 ; Pin Change Interrupt Enables


; ***** ADC *****************
; ADMUX - The ADC Multiplexer Selection Register
MUX0	= 0 ; Analog Channel and Gain Selection Bits
MUX1	= 1 ; Analog Channel and Gain Selection Bits
MUX2	= 2 ; Analog Channel and Gain Selection Bits
MUX3	= 3 ; Analog Channel and Gain Selection Bits
MUX4	= 4 ; Analog Channel and Gain Selection Bits
ADLAR	= 5 ; ADC Left Adjust Result
REFS0	= 6 ; Reference Selection Bits
REFS1	= 7 ; Reference Selection Bits

; ADC - ADC Data Register  Bytes
ADCH0	= 0 ; ADC Data Register  Bytes High Bit 8
ADCH1	= 1 ; ADC Data Register  Bytes High Bit 9
ADCH2	= 2 ; ADC Data Register  Bytes High Bit 10
ADCH3	= 3 ; ADC Data Register  Bytes High Bit 11
ADCH4	= 4 ; ADC Data Register  Bytes High Bit 12
ADCH5	= 5 ; ADC Data Register  Bytes High Bit 13
ADCH6	= 6 ; ADC Data Register  Bytes High Bit 14
ADCH7	= 7 ; ADC Data Register  Bytes High Bit 15

ADCL0	= 0 ; ADC Data Register  Bytes Low Bit 0
ADCL1	= 1 ; ADC Data Register  Bytes Low Bit 1
ADCL2	= 2 ; ADC Data Register  Bytes Low Bit 2
ADCL3	= 3 ; ADC Data Register  Bytes Low Bit 3
ADCL4	= 4 ; ADC Data Register  Bytes Low Bit 4
ADCL5	= 5 ; ADC Data Register  Bytes Low Bit 5
ADCL6	= 6 ; ADC Data Register  Bytes Low Bit 6
ADCL7	= 7 ; ADC Data Register  Bytes Low Bit 7

; ADCSRA - The ADC Control and Status Register A
ADPS0	= 0 ; ADC  Prescaler Select Bits
ADPS1	= 1 ; ADC  Prescaler Select Bits
ADPS2	= 2 ; ADC  Prescaler Select Bits
ADIE	= 3 ; ADC Interrupt Enable
ADIF	= 4 ; ADC Interrupt Flag
ADATE	= 5 ; ADC Auto Trigger Enable
ADSC	= 6 ; ADC Start Conversion
ADEN	= 7 ; ADC Enable

; ADCSRB - The ADC Control and Status Register B
ADTS0	= 0 ; ADC Auto Trigger Source
ADTS1	= 1 ; ADC Auto Trigger Source
ADTS2	= 2 ; ADC Auto Trigger Source
MUX5	= 3 ; Analog Channel and Gain Selection Bits
ACCH	= 4 ; Analog Channel Change
REFOK	= 5 ; Reference Voltage OK
AVDDOK	= 7 ; AVDD Supply Voltage OK

; ADCSRC - The ADC Control and Status Register C
ADSUT0	= 0 ; ADC Start-up Time
ADSUT1	= 1 ; ADC Start-up Time
ADSUT2	= 2 ; ADC Start-up Time
ADSUT3	= 3 ; ADC Start-up Time
ADSUT4	= 4 ; ADC Start-up Time
ADTHT0	= 6 ; ADC Track-and-Hold Time
ADTHT1	= 7 ; ADC Track-and-Hold Time

; DIDR2 - Digital Input Disable Register 2
ADC8D	= 0 ; Reserved Bits
ADC9D	= 1 ; Reserved Bits
ADC10D	= 2 ; Reserved Bits
ADC11D	= 3 ; Reserved Bits
ADC12D	= 4 ; Reserved Bits
ADC13D	= 5 ; Reserved Bits
ADC14D	= 6 ; Reserved Bits
ADC15D	= 7 ; Reserved Bits

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0 ; Disable ADC7:0 Digital Input
ADC1D	= 1 ; Disable ADC7:0 Digital Input
ADC2D	= 2 ; Disable ADC7:0 Digital Input
ADC3D	= 3 ; Disable ADC7:0 Digital Input
ADC4D	= 4 ; Disable ADC7:0 Digital Input
ADC5D	= 5 ; Disable ADC7:0 Digital Input
ADC6D	= 6 ; Disable ADC7:0 Digital Input
ADC7D	= 7 ; Disable ADC7:0 Digital Input


; ***** BOOT_LOAD *****************
; SPMCSR - Store Program Memory Control Register
SPMEN	= 0 ; Store Program Memory Enable
PGERS	= 1 ; Page Erase
PGWRT	= 2 ; Page Write
BLBSET	= 3 ; Boot Lock Bit Set
RWWSRE	= 4 ; Read While Write Section Read Enable
SIGRD	= 5 ; Signature Row Read
RWWSB	= 6 ; Read While Write Section Busy
SPMIE	= 7 ; SPM Interrupt Enable


; ***** CPU *****************
; SREG - Status Register
SREG_C	= 0 ; Carry Flag
SREG_Z	= 1 ; Zero Flag
SREG_N	= 2 ; Negative Flag
SREG_V	= 3 ; Two's Complement Overflow Flag
SREG_S	= 4 ; Sign Bit
SREG_H	= 5 ; Half Carry Flag
SREG_T	= 6 ; Bit Copy Storage
SREG_I	= 7 ; Global Interrupt Enable

; SP - Stack Pointer 
SPH0	= 0 ; Stack Pointer  High Bit 8
SPH1	= 1 ; Stack Pointer  High Bit 9
SPH2	= 2 ; Stack Pointer  High Bit 10
SPH3	= 3 ; Stack Pointer  High Bit 11
SPH4	= 4 ; Stack Pointer  High Bit 12
SPH5	= 5 ; Stack Pointer  High Bit 13
SPH6	= 6 ; Stack Pointer  High Bit 14
SPH7	= 7 ; Stack Pointer  High Bit 15

SPL0	= 0 ; Stack Pointer  Low Bit 0
SPL1	= 1 ; Stack Pointer  Low Bit 1
SPL2	= 2 ; Stack Pointer  Low Bit 2
SPL3	= 3 ; Stack Pointer  Low Bit 3
SPL4	= 4 ; Stack Pointer  Low Bit 4
SPL5	= 5 ; Stack Pointer  Low Bit 5
SPL6	= 6 ; Stack Pointer  Low Bit 6
SPL7	= 7 ; Stack Pointer  Low Bit 7

; MCUCR - MCU Control Register
IVCE	= 0 ; Interrupt Vector Change Enable
IVSEL	= 1 ; Interrupt Vector Select
PUD	= 4 ; Pull-up Disable

; MCUSR - MCU Status Register
PORF	= 0 ; Power-on Reset Flag
EXTRF	= 1 ; External Reset Flag
BORF	= 2 ; Brown-out Reset Flag
WDRF	= 3 ; Watchdog Reset Flag

; OSCCAL - Oscillator Calibration Value
CAL0	= 0 ; Oscillator Calibration Tuning Value
CAL1	= 1 ; Oscillator Calibration Tuning Value
CAL2	= 2 ; Oscillator Calibration Tuning Value
CAL3	= 3 ; Oscillator Calibration Tuning Value
CAL4	= 4 ; Oscillator Calibration Tuning Value
CAL5	= 5 ; Oscillator Calibration Tuning Value
CAL6	= 6 ; Oscillator Calibration Tuning Value
CAL7	= 7 ; Oscillator Calibration Tuning Value

; CLKPR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPS2	= 2 ; Clock Prescaler Select Bits
CLKPS3	= 3 ; Clock Prescaler Select Bits
CLKPCE	= 7 ; Clock Prescaler Change Enable

; SMCR - Sleep Mode Control Register
SE	= 0 ; Sleep Enable
SM0	= 1 ; Sleep Mode Select bits
SM1	= 2 ; Sleep Mode Select bits
SM2	= 3 ; Sleep Mode Select bits

; GPIOR2 - General Purpose I/O Register 2
GPIOR20	= 0 ; General Purpose I/O Register 2 Value
GPIOR21	= 1 ; General Purpose I/O Register 2 Value
GPIOR22	= 2 ; General Purpose I/O Register 2 Value
GPIOR23	= 3 ; General Purpose I/O Register 2 Value
GPIOR24	= 4 ; General Purpose I/O Register 2 Value
GPIOR25	= 5 ; General Purpose I/O Register 2 Value
GPIOR26	= 6 ; General Purpose I/O Register 2 Value
GPIOR27	= 7 ; General Purpose I/O Register 2 Value

; GPIOR1 - General Purpose IO Register 1
GPIOR10	= 0 ; General Purpose I/O Register 1 Value
GPIOR11	= 1 ; General Purpose I/O Register 1 Value
GPIOR12	= 2 ; General Purpose I/O Register 1 Value
GPIOR13	= 3 ; General Purpose I/O Register 1 Value
GPIOR14	= 4 ; General Purpose I/O Register 1 Value
GPIOR15	= 5 ; General Purpose I/O Register 1 Value
GPIOR16	= 6 ; General Purpose I/O Register 1 Value
GPIOR17	= 7 ; General Purpose I/O Register 1 Value

; GPIOR0 - General Purpose IO Register 0
GPIOR00	= 0 ; General Purpose I/O Register 0 Value
GPIOR01	= 1 ; General Purpose I/O Register 0 Value
GPIOR02	= 2 ; General Purpose I/O Register 0 Value
GPIOR03	= 3 ; General Purpose I/O Register 0 Value
GPIOR04	= 4 ; General Purpose I/O Register 0 Value
GPIOR05	= 5 ; General Purpose I/O Register 0 Value
GPIOR06	= 6 ; General Purpose I/O Register 0 Value
GPIOR07	= 7 ; General Purpose I/O Register 0 Value

; PRR2 - Power Reduction Register 2
PRRAM0	= 0 ; Power Reduction SRAM0
PRRAM1	= 1 ; Power Reduction SRAM1
PRRAM2	= 2 ; Power Reduction SRAM2
PRRAM3	= 3 ; Power Reduction SRAM3

; PRR1 - Power Reduction Register 1
PRUSART1	= 0 ; Power Reduction USART1
PRTIM3	= 3 ; Power Reduction Timer/Counter3
PRTIM4	= 4 ; Power Reduction Timer/Counter4
PRTIM5	= 5 ; Power Reduction Timer/Counter5
PRTRX24	= 6 ; Power Reduction Transceiver

; PRR0 - Power Reduction Register0
PRADC	= 0 ; Power Reduction ADC
PRUSART0	= 1 ; Power Reduction USART
PRSPI	= 2 ; Power Reduction Serial Peripheral Interface
PRTIM1	= 3 ; Power Reduction Timer/Counter1
PRPGA	= 4 ; Power Reduction PGA
PRTIM0	= 5 ; Power Reduction Timer/Counter0
PRTIM2	= 6 ; Power Reduction Timer/Counter2
PRTWI	= 7 ; Power Reduction TWI


; ***** FLASH *****************
; NEMCR - Flash Extended-Mode Control-Register
AEAM0	= 4 ; Address for Extended Address Mode of Extra Rows
AEAM1	= 5 ; Address for Extended Address Mode of Extra Rows
ENEAM	= 6 ; Enable Extended Address Mode for Extra Rows

; BGCR - Reference Voltage Calibration Register
BGCAL0	= 0 ; Coarse Calibration Bits
BGCAL1	= 1 ; Coarse Calibration Bits
BGCAL2	= 2 ; Coarse Calibration Bits
BGCAL_FINE0	= 3 ; Fine Calibration Bits
BGCAL_FINE1	= 4 ; Fine Calibration Bits
BGCAL_FINE2	= 5 ; Fine Calibration Bits
BGCAL_FINE3	= 6 ; Fine Calibration Bits


; ***** PWRCTRL *****************
; TRXPR - Transceiver Pin Register
TRXRST	= 0 ; Force Transceiver Reset
SLPTR	= 1 ; Multi-purpose Transceiver Control Bit

; DRTRAM0 - Data Retention Configuration Register #0
ENDRT	= 4 ; Enable SRAM Data Retention
DRTSWOK	= 5 ; DRT Switch OK

; DRTRAM1 - Data Retention Configuration Register #1

; DRTRAM2 - Data Retention Configuration Register #2

; DRTRAM3 - Data Retention Configuration Register #3

; LLDRL - Low Leakage Voltage Regulator Data Register (Low-Byte)
LLDRL0	= 0 ; Low-Byte Data Register Bits
LLDRL1	= 1 ; Low-Byte Data Register Bits
LLDRL2	= 2 ; Low-Byte Data Register Bits
LLDRL3	= 3 ; Low-Byte Data Register Bits

; LLDRH - Low Leakage Voltage Regulator Data Register (High-Byte)
LLDRH0	= 0 ; High-Byte Data Register Bits
LLDRH1	= 1 ; High-Byte Data Register Bits
LLDRH2	= 2 ; High-Byte Data Register Bits
LLDRH3	= 3 ; High-Byte Data Register Bits
LLDRH4	= 4 ; High-Byte Data Register Bits

; LLCR - Low Leakage Voltage Regulator Control Register
LLENCAL	= 0 ; Enable Automatic Calibration
LLSHORT	= 1 ; Short Lower Calibration Circuit
LLTCO	= 2 ; Temperature Coefficient of Current Source
LLCAL	= 3 ; Calibration Active
LLCOMP	= 4 ; Comparator Output
LLDONE	= 5 ; Calibration Done

; DPDS0 - Port Driver Strength Register 0
PBDRV0	= 0 ; Driver Strength Port B
PBDRV1	= 1 ; Driver Strength Port B
PDDRV0	= 2 ; Driver Strength Port D
PDDRV1	= 3 ; Driver Strength Port D
PEDRV0	= 4 ; Driver Strength Port E
PEDRV1	= 5 ; Driver Strength Port E
PFDRV0	= 6 ; Driver Strength Port F
PFDRV1	= 7 ; Driver Strength Port F

; DPDS1 - Port Driver Strength Register 1
PGDRV0	= 0 ; Driver Strength Port G
PGDRV1	= 1 ; Driver Strength Port G

; MCUCR - MCU Control Register


; ***** FUSE *****************
; EXTENDED - 
BODLEVEL0	= 0 ; Brown-out Detector trigger level
BODLEVEL1	= 1 ; Brown-out Detector trigger level
BODLEVEL2	= 2 ; Brown-out Detector trigger level

; HIGH - 
BOOTRST	= 0 ; Boot Reset vector Enabled
BOOTSZ0	= 1 ; Select Boot Size
BOOTSZ1	= 2 ; Select Boot Size
EESAVE	= 3 ; Preserve EEPROM through the Chip Erase cycle
WDTON	= 4 ; Watchdog timer always on
SPIEN	= 5 ; Serial program downloading (SPI) enabled
JTAGEN	= 6 ; JTAG Interface Enabled
OCDEN	= 7 ; On-Chip Debug Enabled

; LOW - 
CKSEL_SUT0	= 0 ; Select Clock Source : Start-up time
CKSEL_SUT1	= 1 ; Select Clock Source : Start-up time
CKSEL_SUT2	= 2 ; Select Clock Source : Start-up time
CKSEL_SUT3	= 3 ; Select Clock Source : Start-up time
CKSEL_SUT4	= 4 ; Select Clock Source : Start-up time
CKSEL_SUT5	= 5 ; Select Clock Source : Start-up time
CKOUT	= 6 ; Clock output on PORTE7
CKDIV8	= 7 ; Divide clock by 8 internally


; ***** LOCKBIT *****************
; LOCKBIT - 
LB1	= 0 ; Memory Lock
LB2	= 1 ; Memory Lock
BLB01	= 2 ; Boot Loader Protection Mode
BLB02	= 3 ; Boot Loader Protection Mode
BLB11	= 4 ; Boot Loader Protection Mode
BLB12	= 5 ; Boot Loader Protection Mode

; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30

; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHSTART	= 0x0000 ; Note: Word address
FLASHEND	= 0x7FFF ; Note: Word address
FLASHPAGESIZE	= 0x0100 ;

BOOTSECTION1START	= 0x7E00 ; Note: Word address
BOOTSECTION1END	= 0x7FFF ; Note: Word address
BOOTSECTION1PAGESIZE	= 0x0100 ;

BOOTSECTION2START	= 0x7C00 ; Note: Word address
BOOTSECTION2END	= 0x7FFF ; Note: Word address
BOOTSECTION2PAGESIZE	= 0x0100 ;

BOOTSECTION3START	= 0x7800 ; Note: Word address
BOOTSECTION3END	= 0x7FFF ; Note: Word address
BOOTSECTION3PAGESIZE	= 0x0100 ;

BOOTSECTION4START	= 0x7000 ; Note: Word address
BOOTSECTION4END	= 0x7FFF ; Note: Word address
BOOTSECTION4PAGESIZE	= 0x0100 ;

IOEND	= 0x01FF

SRAM_START	= 0x0200
SRAM_SIZE	= 8192
RAMEND	= 0x21FF

E2END	= 0x07FF
EEPROMEND	= 0x07FF
EEADRBITS	= 11

XRAMEND	= 0x0000



; ***** BOOTLOADER DECLARATIONS ******************************************
PAGESIZE	= 0x0100 ;

FIRSTBOOTSTART	= 0xFC00 ; Note: Word address
FIRSTBOOTPAGESIZE	= 0x0100 ;
FIRSTBOOTEND	= 0x0000 ; Note: Word address

SECONDBOOTSTART	= 0xF800 ; Note: Word address
SECONDBOOTPAGESIZE	= 0x0100 ;
SECONDBOOTEND	= 0x0000 ; Note: Word address

THIRDBOOTSTART	= 0xF000 ; Note: Word address
THIRDBOOTPAGESIZE	= 0x0100 ;
THIRDBOOTEND	= 0x0000 ; Note: Word address

FOURTHBOOTSTART	= 0xE000 ; Note: Word address
FOURTHBOOTPAGESIZE	= 0x0100 ;
FOURTHBOOTEND	= 0x0000 ; Note: Word address

SMALLBOOTSTART	= FIRSTBOOTSTART ;
LARGEBOOTSTART	= FOURTHBOOTSTART ;
; ***** INTERRUPT VECTORS ************************************************
INT0addr	 = 0x0002 ; External Interrupt Request 0
INT1addr	 = 0x0004 ; External Interrupt Request 1
INT2addr	 = 0x0006 ; External Interrupt Request 2
INT3addr	 = 0x0008 ; External Interrupt Request 3
INT4addr	 = 0x000A ; External Interrupt Request 4
INT5addr	 = 0x000C ; External Interrupt Request 5
INT6addr	 = 0x000E ; External Interrupt Request 6
INT7addr	 = 0x0010 ; External Interrupt Request 7
PCINT0addr	 = 0x0012 ; Pin Change Interrupt Request 0
PCINT1addr	 = 0x0014 ; Pin Change Interrupt Request 1
PCINT2addr	 = 0x0016 ; Pin Change Interrupt Request 2
WDTaddr	 = 0x0018 ; Watchdog Time-out Interrupt
TIMER2_COMPAaddr	 = 0x001A ; Timer/Counter2 Compare Match A
TIMER2_COMPBaddr	 = 0x001C ; Timer/Counter2 Compare Match B
TIMER2_OVFaddr	 = 0x001E ; Timer/Counter2 Overflow
TIMER1_CAPTaddr	 = 0x0020 ; Timer/Counter1 Capture Event
TIMER1_COMPAaddr	 = 0x0022 ; Timer/Counter1 Compare Match A
TIMER1_COMPBaddr	 = 0x0024 ; Timer/Counter1 Compare Match B
TIMER1_COMPCaddr	 = 0x0026 ; Timer/Counter1 Compare Match C
TIMER1_OVFaddr	 = 0x0028 ; Timer/Counter1 Overflow
TIMER0_COMPAaddr	 = 0x002A ; Timer/Counter0 Compare Match A
TIMER0_COMPBaddr	 = 0x002C ; Timer/Counter0 Compare Match B
TIMER0_OVFaddr	 = 0x002E ; Timer/Counter0 Overflow
SPI_STCaddr	 = 0x0030 ; SPI Serial Transfer Complete
USART0_RXaddr	 = 0x0032 ; USART0, Rx Complete
USART0_UDREaddr	 = 0x0034 ; USART0 Data register Empty
USART0_TXaddr	 = 0x0036 ; USART0, Tx Complete
ANALOG_COMPaddr	 = 0x0038 ; Analog Comparator
ADCaddr	 = 0x003A ; ADC Conversion Complete
EE_READYaddr	 = 0x003C ; EEPROM Ready
TIMER3_CAPTaddr	 = 0x003E ; Timer/Counter3 Capture Event
TIMER3_COMPAaddr	 = 0x0040 ; Timer/Counter3 Compare Match A
TIMER3_COMPBaddr	 = 0x0042 ; Timer/Counter3 Compare Match B
TIMER3_COMPCaddr	 = 0x0044 ; Timer/Counter3 Compare Match C
TIMER3_OVFaddr	 = 0x0046 ; Timer/Counter3 Overflow
USART1_RXaddr	 = 0x0048 ; USART1, Rx Complete
USART1_UDREaddr	 = 0x004A ; USART1 Data register Empty
USART1_TXaddr	 = 0x004C ; USART1, Tx Complete
TWIaddr	 = 0x004E ; 2-wire Serial Interface
SPM_READYaddr	 = 0x0050 ; Store Program Memory Read
TIMER4_CAPTaddr	 = 0x0052 ; Timer/Counter4 Capture Event
TIMER4_COMPAaddr	 = 0x0054 ; Timer/Counter4 Compare Match A
TIMER4_COMPBaddr	 = 0x0056 ; Timer/Counter4 Compare Match B
TIMER4_COMPCaddr	 = 0x0058 ; Timer/Counter4 Compare Match C
TIMER4_OVFaddr	 = 0x005A ; Timer/Counter4 Overflow
TIMER5_CAPTaddr	 = 0x005C ; Timer/Counter5 Capture Event
TIMER5_COMPAaddr	 = 0x005E ; Timer/Counter5 Compare Match A
TIMER5_COMPBaddr	 = 0x0060 ; Timer/Counter5 Compare Match B
TIMER5_COMPCaddr	 = 0x0062 ; Timer/Counter5 Compare Match C
TIMER5_OVFaddr	 = 0x0064 ; Timer/Counter5 Overflow
TRX24_PLL_LOCKaddr	 = 0x0072 ; TRX24 - PLL lock interrupt
TRX24_PLL_UNLOCKaddr	 = 0x0074 ; TRX24 - PLL unlock interrupt
TRX24_RX_STARTaddr	 = 0x0076 ; TRX24 - Receive start interrupt
TRX24_RX_ENDaddr	 = 0x0078 ; TRX24 - RX_END interrupt
TRX24_CCA_ED_DONEaddr	 = 0x007A ; TRX24 - CCA/ED done interrupt
TRX24_XAH_AMIaddr	 = 0x007C ; TRX24 - XAH - AMI
TRX24_TX_ENDaddr	 = 0x007E ; TRX24 - TX_END interrupt
TRX24_AWAKEaddr	 = 0x0080 ; TRX24 AWAKE - tranceiver is reaching state TRX_OFF
SCNT_CMP1addr	 = 0x0082 ; Symbol counter - compare match 1 interrupt
SCNT_CMP2addr	 = 0x0084 ; Symbol counter - compare match 2 interrupt
SCNT_CMP3addr	 = 0x0086 ; Symbol counter - compare match 3 interrupt
SCNT_OVFLaddr	 = 0x0088 ; Symbol counter - overflow interrupt
SCNT_BACKOFFaddr	 = 0x008A ; Symbol counter - backoff interrupt
AES_READYaddr	 = 0x008C ; AES engine ready interrupt
BAT_LOWaddr	 = 0x008E ; Battery monitor indicates supply voltage below threshold
TRX24_TX_STARTaddr	 = 0x0090 ; TRX24 TX start interrupt
TRX24_AMI0addr	 = 0x0092 ; Address match interrupt of address filter 0
TRX24_AMI1addr	 = 0x0094 ; Address match interrupt of address filter 1
TRX24_AMI2addr	 = 0x0096 ; Address match interrupt of address filter 2
TRX24_AMI3addr	 = 0x0098 ; Address match interrupt of address filter 3

INT_VECTORS_SIZE	= 154 ; size in words


; ***** END OF FILE ******************************************************



