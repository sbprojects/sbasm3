;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m128RFR2def.asm"
;* Title             : Register/Bit Definitions for the ATmega128RFR2
;* Date              : 2011-08-24
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega128RFR2
;* 
;* DESCRIPTION
;* When including this file in the assembly program file, all I/O register 
;* names and I/O register bit names appearing in the data book can be used.
;* In addition, the six registers forming the three data pointers X, Y and 
;* Z have been assigned names XL - ZH. Highest RAM address for Internal 
;* SRAM is also defined 
;* 
;* The Register names are represented by their hexadecimal address.
;* 
;* The Register Bit names are represented by their bit number (0-7).
;* 
;* Please observe the difference in using the bit names with instructions
;* such as "sbr"/"cbr" (set/clear bit in register) and "sbrs"/"sbrc"
;* (skip if bit in register set/cleared). The following example illustrates
;* this:
;* 
;* in    r16,PORTB             ;read PORTB latch
;* sbr   r16,1<<PB6)+1<<PB5) ;set PB6 and PB5 (use masks, not bit#)
;* out   PORTB,r16             ;output to PORTB
;* 
;* in    r16,TIFR              ;read the Timer Interrupt Flag Register
;* sbrc  r16,TOV0              ;test the overflow flag (use bit#)
;* rjmp  TOV0_is_set           ;jump if set
;* ...                         ;otherwise do something else
;*************************************************************************




; ***** SPECIFY DEVICE ***************************************************
; device ATmega128RFR2

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0xa7
SIGNATURE_002	= 0x02

                .CR     avr
                .FA     enhanced128k
				.MS		$10000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
TRXFBEND	= 0x1ff	; MEMORY MAPPED
TRXFBST	= 0x180	; MEMORY MAPPED
TST_RX_LENGTH	= 0x17b	; MEMORY MAPPED
TST_CTRL_DIGI	= 0x176	; MEMORY MAPPED
CSMA_BE	= 0x16f	; MEMORY MAPPED
CSMA_SEED_1	= 0x16e	; MEMORY MAPPED
CSMA_SEED_0	= 0x16d	; MEMORY MAPPED
XAH_CTRL_0	= 0x16c	; MEMORY MAPPED
IEEE_ADDR_7	= 0x16b	; MEMORY MAPPED
IEEE_ADDR_6	= 0x16a	; MEMORY MAPPED
IEEE_ADDR_5	= 0x169	; MEMORY MAPPED
IEEE_ADDR_4	= 0x168	; MEMORY MAPPED
IEEE_ADDR_3	= 0x167	; MEMORY MAPPED
IEEE_ADDR_2	= 0x166	; MEMORY MAPPED
IEEE_ADDR_1	= 0x165	; MEMORY MAPPED
IEEE_ADDR_0	= 0x164	; MEMORY MAPPED
PAN_ID_1	= 0x163	; MEMORY MAPPED
PAN_ID_0	= 0x162	; MEMORY MAPPED
SHORT_ADDR_1	= 0x161	; MEMORY MAPPED
SHORT_ADDR_0	= 0x160	; MEMORY MAPPED
MAN_ID_1	= 0x15f	; MEMORY MAPPED
MAN_ID_0	= 0x15e	; MEMORY MAPPED
VERSION_NUM	= 0x15d	; MEMORY MAPPED
PART_NUM	= 0x15c	; MEMORY MAPPED
PLL_DCU	= 0x15b	; MEMORY MAPPED
PLL_CF	= 0x15a	; MEMORY MAPPED
FTN_CTRL	= 0x158	; MEMORY MAPPED
XAH_CTRL_1	= 0x157	; MEMORY MAPPED
TRX_RPC	= 0x156	; MEMORY MAPPED
RX_SYN	= 0x155	; MEMORY MAPPED
CC_CTRL_1	= 0x154	; MEMORY MAPPED
CC_CTRL_0	= 0x153	; MEMORY MAPPED
XOSC_CTRL	= 0x152	; MEMORY MAPPED
BATMON	= 0x151	; MEMORY MAPPED
VREG_CTRL	= 0x150	; MEMORY MAPPED
IRQ_STATUS	= 0x14f	; MEMORY MAPPED
IRQ_MASK	= 0x14e	; MEMORY MAPPED
ANT_DIV	= 0x14d	; MEMORY MAPPED
TRX_CTRL_2	= 0x14c	; MEMORY MAPPED
SFD_VALUE	= 0x14b	; MEMORY MAPPED
RX_CTRL	= 0x14a	; MEMORY MAPPED
CCA_THRES	= 0x149	; MEMORY MAPPED
PHY_CC_CCA	= 0x148	; MEMORY MAPPED
PHY_ED_LEVEL	= 0x147	; MEMORY MAPPED
PHY_RSSI	= 0x146	; MEMORY MAPPED
PHY_TX_PWR	= 0x145	; MEMORY MAPPED
TRX_CTRL_1	= 0x144	; MEMORY MAPPED
TRX_CTRL_0	= 0x143	; MEMORY MAPPED
TRX_STATE	= 0x142	; MEMORY MAPPED
TRX_STATUS	= 0x141	; MEMORY MAPPED
AES_KEY	= 0x13f	; MEMORY MAPPED
AES_STATE	= 0x13e	; MEMORY MAPPED
AES_STATUS	= 0x13d	; MEMORY MAPPED
AES_CTRL	= 0x13c	; MEMORY MAPPED
TRXPR	= 0x139	; MEMORY MAPPED
PARCR	= 0x138	; MEMORY MAPPED
DPDS1	= 0x137	; MEMORY MAPPED
DPDS0	= 0x136	; MEMORY MAPPED
DRTRAM0	= 0x135	; MEMORY MAPPED
DRTRAM1	= 0x134	; MEMORY MAPPED
DRTRAM2	= 0x133	; MEMORY MAPPED
DRTRAM3	= 0x132	; MEMORY MAPPED
LLDRH	= 0x131	; MEMORY MAPPED
LLDRL	= 0x130	; MEMORY MAPPED
LLCR	= 0x12f	; MEMORY MAPPED
OCR5CL	= 0x12c	; MEMORY MAPPED
OCR5CH	= 0x12d	; MEMORY MAPPED
OCR5BL	= 0x12a	; MEMORY MAPPED
OCR5BH	= 0x12b	; MEMORY MAPPED
OCR5AL	= 0x128	; MEMORY MAPPED
OCR5AH	= 0x129	; MEMORY MAPPED
ICR5H	= 0x127	; MEMORY MAPPED
ICR5L	= 0x126	; MEMORY MAPPED
TCNT5L	= 0x124	; MEMORY MAPPED
TCNT5H	= 0x125	; MEMORY MAPPED
TCCR5C	= 0x122	; MEMORY MAPPED
TCCR5B	= 0x121	; MEMORY MAPPED
TCCR5A	= 0x120	; MEMORY MAPPED
MAFPA3H	= 0x11d	; MEMORY MAPPED
MAFPA3L	= 0x11c	; MEMORY MAPPED
MAFSA3H	= 0x11b	; MEMORY MAPPED
MAFSA3L	= 0x11a	; MEMORY MAPPED
MAFPA2H	= 0x119	; MEMORY MAPPED
MAFPA2L	= 0x118	; MEMORY MAPPED
MAFSA2H	= 0x117	; MEMORY MAPPED
MAFSA2L	= 0x116	; MEMORY MAPPED
MAFPA1H	= 0x115	; MEMORY MAPPED
MAFPA1L	= 0x114	; MEMORY MAPPED
MAFSA1H	= 0x113	; MEMORY MAPPED
MAFSA1L	= 0x112	; MEMORY MAPPED
MAFPA0H	= 0x111	; MEMORY MAPPED
MAFPA0L	= 0x110	; MEMORY MAPPED
MAFSA0H	= 0x10f	; MEMORY MAPPED
MAFSA0L	= 0x10e	; MEMORY MAPPED
MAFCR1	= 0x10d	; MEMORY MAPPED
MAFCR0	= 0x10c	; MEMORY MAPPED
PORTL	= 0x10b	; MEMORY MAPPED
DDRL	= 0x10a	; MEMORY MAPPED
PINL	= 0x109	; MEMORY MAPPED
PORTK	= 0x108	; MEMORY MAPPED
DDRK	= 0x107	; MEMORY MAPPED
PINK	= 0x106	; MEMORY MAPPED
PORTJ	= 0x105	; MEMORY MAPPED
DDRJ	= 0x104	; MEMORY MAPPED
PINJ	= 0x103	; MEMORY MAPPED
PORTH	= 0x102	; MEMORY MAPPED
DDRH	= 0x101	; MEMORY MAPPED
PINH	= 0x100	; MEMORY MAPPED
SCTSTRHH	= 0xfc	; MEMORY MAPPED
SCTSTRHL	= 0xfb	; MEMORY MAPPED
SCTSTRLH	= 0xfa	; MEMORY MAPPED
SCTSTRLL	= 0xf9	; MEMORY MAPPED
SCOCR1HH	= 0xf8	; MEMORY MAPPED
SCOCR1HL	= 0xf7	; MEMORY MAPPED
SCOCR1LH	= 0xf6	; MEMORY MAPPED
SCOCR1LL	= 0xf5	; MEMORY MAPPED
SCOCR2HH	= 0xf4	; MEMORY MAPPED
SCOCR2HL	= 0xf3	; MEMORY MAPPED
SCOCR2LH	= 0xf2	; MEMORY MAPPED
SCOCR2LL	= 0xf1	; MEMORY MAPPED
SCOCR3HH	= 0xf0	; MEMORY MAPPED
SCOCR3HL	= 0xef	; MEMORY MAPPED
SCOCR3LH	= 0xee	; MEMORY MAPPED
SCOCR3LL	= 0xed	; MEMORY MAPPED
SCTSRHH	= 0xec	; MEMORY MAPPED
SCTSRHL	= 0xeb	; MEMORY MAPPED
SCTSRLH	= 0xea	; MEMORY MAPPED
SCTSRLL	= 0xe9	; MEMORY MAPPED
SCBTSRHH	= 0xe8	; MEMORY MAPPED
SCBTSRHL	= 0xe7	; MEMORY MAPPED
SCBTSRLH	= 0xe6	; MEMORY MAPPED
SCBTSRLL	= 0xe5	; MEMORY MAPPED
SCCNTHH	= 0xe4	; MEMORY MAPPED
SCCNTHL	= 0xe3	; MEMORY MAPPED
SCCNTLH	= 0xe2	; MEMORY MAPPED
SCCNTLL	= 0xe1	; MEMORY MAPPED
SCIRQS	= 0xe0	; MEMORY MAPPED
SCIRQM	= 0xdf	; MEMORY MAPPED
SCSR	= 0xde	; MEMORY MAPPED
SCCR1	= 0xdd	; MEMORY MAPPED
SCCR0	= 0xdc	; MEMORY MAPPED
SCCSR	= 0xdb	; MEMORY MAPPED
SCRSTRHH	= 0xda	; MEMORY MAPPED
SCRSTRHL	= 0xd9	; MEMORY MAPPED
SCRSTRLH	= 0xd8	; MEMORY MAPPED
SCRSTRLL	= 0xd7	; MEMORY MAPPED
ATBR33	= 0xd1	; MEMORY MAPPED
ATBR18	= 0xd0	; MEMORY MAPPED
UDR1	= 0xce	; MEMORY MAPPED
UBRR1L	= 0xcc	; MEMORY MAPPED
UBRR1H	= 0xcd	; MEMORY MAPPED
UCSR1C	= 0xca	; MEMORY MAPPED
UCSR1B	= 0xc9	; MEMORY MAPPED
UCSR1A	= 0xc8	; MEMORY MAPPED
UDR0	= 0xc6	; MEMORY MAPPED
UBRR0L	= 0xc4	; MEMORY MAPPED
UBRR0H	= 0xc5	; MEMORY MAPPED
UCSR0C	= 0xc2	; MEMORY MAPPED
UCSR0B	= 0xc1	; MEMORY MAPPED
UCSR0A	= 0xc0	; MEMORY MAPPED
IRQ_STATUS1	= 0xbf	; MEMORY MAPPED
IRQ_MASK1	= 0xbe	; MEMORY MAPPED
TWAMR	= 0xbd	; MEMORY MAPPED
TWCR	= 0xbc	; MEMORY MAPPED
TWDR	= 0xbb	; MEMORY MAPPED
TWAR	= 0xba	; MEMORY MAPPED
TWSR	= 0xb9	; MEMORY MAPPED
TWBR	= 0xb8	; MEMORY MAPPED
ASSR	= 0xb6	; MEMORY MAPPED
OCR2B	= 0xb4	; MEMORY MAPPED
OCR2A	= 0xb3	; MEMORY MAPPED
TCNT2	= 0xb2	; MEMORY MAPPED
TCCR2B	= 0xb1	; MEMORY MAPPED
TCCR2A	= 0xb0	; MEMORY MAPPED
OCR4CL	= 0xac	; MEMORY MAPPED
OCR4CH	= 0xad	; MEMORY MAPPED
OCR4BL	= 0xaa	; MEMORY MAPPED
OCR4BH	= 0xab	; MEMORY MAPPED
OCR4AL	= 0xa8	; MEMORY MAPPED
OCR4AH	= 0xa9	; MEMORY MAPPED
ICR4L	= 0xa6	; MEMORY MAPPED
ICR4H	= 0xa7	; MEMORY MAPPED
TCNT4L	= 0xa4	; MEMORY MAPPED
TCNT4H	= 0xa5	; MEMORY MAPPED
TCCR4C	= 0xa2	; MEMORY MAPPED
TCCR4B	= 0xa1	; MEMORY MAPPED
TCCR4A	= 0xa0	; MEMORY MAPPED
OCR3CL	= 0x9c	; MEMORY MAPPED
OCR3CH	= 0x9d	; MEMORY MAPPED
OCR3BL	= 0x9a	; MEMORY MAPPED
OCR3BH	= 0x9b	; MEMORY MAPPED
OCR3AL	= 0x98	; MEMORY MAPPED
OCR3AH	= 0x99	; MEMORY MAPPED
ICR3L	= 0x96	; MEMORY MAPPED
ICR3H	= 0x97	; MEMORY MAPPED
TCNT3L	= 0x94	; MEMORY MAPPED
TCNT3H	= 0x95	; MEMORY MAPPED
TCCR3C	= 0x92	; MEMORY MAPPED
TCCR3B	= 0x91	; MEMORY MAPPED
TCCR3A	= 0x90	; MEMORY MAPPED
OCR1CL	= 0x8c	; MEMORY MAPPED
OCR1CH	= 0x8d	; MEMORY MAPPED
OCR1BL	= 0x8a	; MEMORY MAPPED
OCR1BH	= 0x8b	; MEMORY MAPPED
OCR1AL	= 0x88	; MEMORY MAPPED
OCR1AH	= 0x89	; MEMORY MAPPED
ICR1L	= 0x86	; MEMORY MAPPED
ICR1H	= 0x87	; MEMORY MAPPED
TCNT1L	= 0x84	; MEMORY MAPPED
TCNT1H	= 0x85	; MEMORY MAPPED
TCCR1C	= 0x82	; MEMORY MAPPED
TCCR1B	= 0x81	; MEMORY MAPPED
TCCR1A	= 0x80	; MEMORY MAPPED
DIDR1	= 0x7f	; MEMORY MAPPED
DIDR0	= 0x7e	; MEMORY MAPPED
DIDR2	= 0x7d	; MEMORY MAPPED
ADMUX	= 0x7c	; MEMORY MAPPED
ADCSRB	= 0x7b	; MEMORY MAPPED
ADCSRA	= 0x7a	; MEMORY MAPPED
ADCH	= 0x79	; MEMORY MAPPED
ADCL	= 0x78	; MEMORY MAPPED
ADCSRC	= 0x77	; MEMORY MAPPED
NEMCR	= 0x75	; MEMORY MAPPED
TIMSK5	= 0x73	; MEMORY MAPPED
TIMSK4	= 0x72	; MEMORY MAPPED
TIMSK3	= 0x71	; MEMORY MAPPED
TIMSK2	= 0x70	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK2	= 0x6d	; MEMORY MAPPED
PCMSK1	= 0x6c	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
EICRB	= 0x6a	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
BGCR	= 0x67	; MEMORY MAPPED
OSCCAL	= 0x66	; MEMORY MAPPED
PRR1	= 0x65	; MEMORY MAPPED
PRR0	= 0x64	; MEMORY MAPPED
PRR2	= 0x63	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
RAMPZ	= 0x3b
SPMCSR	= 0x37
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
OCDR	= 0x31
ACSR	= 0x30
SPDR	= 0x2e
SPSR	= 0x2d
SPCR	= 0x2c
GPIOR2	= 0x2b
GPIOR1	= 0x2a
OCR0B	= 0x28
OCR0A	= 0x27
TCNT0	= 0x26
TCCR0B	= 0x25
TCCR0A	= 0x24
GTCCR	= 0x23
EEARH	= 0x22
EEARL	= 0x21
EEDR	= 0x20
EECR	= 0x1f
GPIOR0	= 0x1e
EIMSK	= 0x1d
EIFR	= 0x1c
PCIFR	= 0x1b
TIFR5	= 0x1a
TIFR4	= 0x19
TIFR3	= 0x18
TIFR2	= 0x17
TIFR1	= 0x16
TIFR0	= 0x15
PORTG	= 0x14
DDRG	= 0x13
PING	= 0x12
PORTF	= 0x11
DDRF	= 0x10
PINF	= 0x0f
PORTE	= 0x0e
DDRE	= 0x0d
PINE	= 0x0c
PORTD	= 0x0b
DDRD	= 0x0a
PIND	= 0x09
PORTC	= 0x08
DDRC	= 0x07
PINC	= 0x06
PORTB	= 0x05
DDRB	= 0x04
PINB	= 0x03
PORTA	= 0x02
DDRA	= 0x01
PINA	= 0x00


; ***** BIT DEFINITIONS **************************************************

; ***** ANALOG_COMPARATOR ************
; ADCSRB - ADC Control and Status Register B
ACME	= 6	; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select
ACIS1	= 1	; Analog Comparator Interrupt Mode Select
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable

; DIDR1 - Digital Input Disable Register 1
AIN0D	= 0	; AIN0 Digital Input Disable
AIN1D	= 1	; AIN1 Digital Input Disable


; ***** USART0 ***********************
; UDR0 - USART0 I/O Data Register
UDR00	= 0	; USART I/O Data Register
UDR01	= 1	; USART I/O Data Register
UDR02	= 2	; USART I/O Data Register
UDR03	= 3	; USART I/O Data Register
UDR04	= 4	; USART I/O Data Register
UDR05	= 5	; USART I/O Data Register
UDR06	= 6	; USART I/O Data Register
UDR07	= 7	; USART I/O Data Register

; UCSR0A - USART0 Control and Status Register A
MPCM0	= 0	; Multi-processor Communication Mode
U2X0	= 1	; Double the USART Transmission Speed
UPE0	= 2	; USART Parity Error
DOR0	= 3	; Data OverRun
FE0	= 4	; Frame Error
UDRE0	= 5	; USART Data Register Empty
TXC0	= 6	; USART Transmit Complete
RXC0	= 7	; USART Receive Complete

; UCSR0B - USART0 Control and Status Register B
TXB80	= 0	; Transmit Data Bit 8
RXB80	= 1	; Receive Data Bit 8
UCSZ02	= 2	; Character Size
TXEN0	= 3	; Transmitter Enable
RXEN0	= 4	; Receiver Enable
UDRIE0	= 5	; USART Data Register Empty Interrupt Enable
TXCIE0	= 6	; TX Complete Interrupt Enable
RXCIE0	= 7	; RX Complete Interrupt Enable

; UCSR0C - USART0 Control and Status Register C
UCPOL0	= 0	; Clock Polarity
UCSZ00	= 1	; Character Size
UCPHA0	= UCSZ00	; For compatibility
UCSZ01	= 2	; Character Size
UDORD0	= UCSZ01	; For compatibility
USBS0	= 3	; Stop Bit Select
UPM00	= 4	; Parity Mode
UPM01	= 5	; Parity Mode
UMSEL00	= 6	; USART Mode Select
UMSEL0	= UMSEL00	; For compatibility
UMSEL01	= 7	; USART Mode Select
UMSEL1	= UMSEL01	; For compatibility

; UBRR0H - USART0 Baud Rate Register High Byte
UBRR8	= 0	; USART Baud Rate Register
UBRR9	= 1	; USART Baud Rate Register
UBRR10	= 2	; USART Baud Rate Register
UBRR11	= 3	; USART Baud Rate Register
Res0	= 4	; Reserved Bit
Res1	= 5	; Reserved Bit
Res2	= 6	; Reserved Bit
Res3	= 7	; Reserved Bit

; UBRR0L - USART0 Baud Rate Register Low Byte
UBRR0	= 0	; USART Baud Rate Register
UBRR1	= 1	; USART Baud Rate Register
UBRR2	= 2	; USART Baud Rate Register
UBRR3	= 3	; USART Baud Rate Register
UBRR4	= 4	; USART Baud Rate Register
UBRR5	= 5	; USART Baud Rate Register
UBRR6	= 6	; USART Baud Rate Register
UBRR7	= 7	; USART Baud Rate Register


; ***** USART1 ***********************
; UDR1 - USART1 I/O Data Register
UDR10	= 0	; USART I/O Data Register
UDR11	= 1	; USART I/O Data Register
UDR12	= 2	; USART I/O Data Register
UDR13	= 3	; USART I/O Data Register
UDR14	= 4	; USART I/O Data Register
UDR15	= 5	; USART I/O Data Register
UDR16	= 6	; USART I/O Data Register
UDR17	= 7	; USART I/O Data Register

; UCSR1A - USART1 Control and Status Register A
MPCM1	= 0	; Multi-processor Communication Mode
U2X1	= 1	; Double the USART Transmission Speed
UPE1	= 2	; USART Parity Error
DOR1	= 3	; Data OverRun
FE1	= 4	; Frame Error
UDRE1	= 5	; USART Data Register Empty
TXC1	= 6	; USART Transmit Complete
RXC1	= 7	; USART Receive Complete

; UCSR1B - USART1 Control and Status Register B
TXB81	= 0	; Transmit Data Bit 8
RXB81	= 1	; Receive Data Bit 8
UCSZ12	= 2	; Character Size
TXEN1	= 3	; Transmitter Enable
RXEN1	= 4	; Receiver Enable
UDRIE1	= 5	; USART Data Register Empty Interrupt Enable
TXCIE1	= 6	; TX Complete Interrupt Enable
RXCIE1	= 7	; RX Complete Interrupt Enable

; UCSR1C - USART1 Control and Status Register C
UCPOL1	= 0	; Clock Polarity
UCSZ10	= 1	; Character Size
UCPHA1	= UCSZ10	; For compatibility
UCSZ11	= 2	; Character Size
UDORD1	= UCSZ11	; For compatibility
USBS1	= 3	; Stop Bit Select
UPM10	= 4	; Parity Mode
UPM11	= 5	; Parity Mode
UMSEL10	= 6	; USART Mode Select
UMSEL11	= 7	; USART Mode Select

; UBRR1H - USART1 Baud Rate Register High Byte
;UBRR8	= 0	; USART Baud Rate Register
;UBRR9	= 1	; USART Baud Rate Register
;UBRR10	= 2	; USART Baud Rate Register
;UBRR11	= 3	; USART Baud Rate Register
;Res0	= 4	; Reserved Bit
;Res1	= 5	; Reserved Bit
;Res2	= 6	; Reserved Bit
;Res3	= 7	; Reserved Bit

; UBRR1L - USART1 Baud Rate Register Low Byte
;UBRR0	= 0	; USART Baud Rate Register
;UBRR1	= 1	; USART Baud Rate Register
;UBRR2	= 2	; USART Baud Rate Register
;UBRR3	= 3	; USART Baud Rate Register
;UBRR4	= 4	; USART Baud Rate Register
;UBRR5	= 5	; USART Baud Rate Register
;UBRR6	= 6	; USART Baud Rate Register
;UBRR7	= 7	; USART Baud Rate Register


; ***** TWI **************************
; TWAMR - TWI (Slave) Address Mask Register
Res	= 0	; Reserved Bit
TWAM0	= 1	; TWI Address Mask
TWAMR0	= TWAM0	; For compatibility
TWAM1	= 2	; TWI Address Mask
TWAMR1	= TWAM1	; For compatibility
TWAM2	= 3	; TWI Address Mask
TWAMR2	= TWAM2	; For compatibility
TWAM3	= 4	; TWI Address Mask
TWAMR3	= TWAM3	; For compatibility
TWAM4	= 5	; TWI Address Mask
TWAMR4	= TWAM4	; For compatibility
TWAM5	= 6	; TWI Address Mask
TWAMR5	= TWAM5	; For compatibility
TWAM6	= 7	; TWI Address Mask
TWAMR6	= TWAM6	; For compatibility

; TWBR - TWI Bit Rate Register
TWBR0	= 0	; TWI Bit Rate Register Value
TWBR1	= 1	; TWI Bit Rate Register Value
TWBR2	= 2	; TWI Bit Rate Register Value
TWBR3	= 3	; TWI Bit Rate Register Value
TWBR4	= 4	; TWI Bit Rate Register Value
TWBR5	= 5	; TWI Bit Rate Register Value
TWBR6	= 6	; TWI Bit Rate Register Value
TWBR7	= 7	; TWI Bit Rate Register Value

; TWCR - TWI Control Register
TWIE	= 0	; TWI Interrupt Enable
;Res	= 1	; Reserved Bit
TWEN	= 2	; TWI Enable Bit
TWWC	= 3	; TWI Write Collision Flag
TWSTO	= 4	; TWI STOP Condition Bit
TWSTA	= 5	; TWI START Condition Bit
TWEA	= 6	; TWI Enable Acknowledge Bit
TWINT	= 7	; TWI Interrupt Flag

; TWSR - TWI Status Register
TWPS0	= 0	; TWI Prescaler Bits
TWPS1	= 1	; TWI Prescaler Bits
;Res	= 2	; Reserved Bit
TWS3	= 3	; TWI Status
TWS4	= 4	; TWI Status
TWS5	= 5	; TWI Status
TWS6	= 6	; TWI Status
TWS7	= 7	; TWI Status

; TWDR - TWI Data Register
TWD0	= 0	; TWI Data Register Byte
TWD1	= 1	; TWI Data Register Byte
TWD2	= 2	; TWI Data Register Byte
TWD3	= 3	; TWI Data Register Byte
TWD4	= 4	; TWI Data Register Byte
TWD5	= 5	; TWI Data Register Byte
TWD6	= 6	; TWI Data Register Byte
TWD7	= 7	; TWI Data Register Byte

; TWAR - TWI (Slave) Address Register
TWGCE	= 0	; TWI General Call Recognition Enable Bit
TWA0	= 1	; TWI (Slave) Address
TWA1	= 2	; TWI (Slave) Address
TWA2	= 3	; TWI (Slave) Address
TWA3	= 4	; TWI (Slave) Address
TWA4	= 5	; TWI (Slave) Address
TWA5	= 6	; TWI (Slave) Address
TWA6	= 7	; TWI (Slave) Address


; ***** SPI **************************
; SPDR - SPI Data Register
SPDR0	= 0	; SPI Data Register
SPDR1	= 1	; SPI Data Register
SPDR2	= 2	; SPI Data Register
SPDR3	= 3	; SPI Data Register
SPDR4	= 4	; SPI Data Register
SPDR5	= 5	; SPI Data Register
SPDR6	= 6	; SPI Data Register
SPDR7	= 7	; SPI Data Register

; SPSR - SPI Status Register
SPI2X	= 0	; Double SPI Speed Bit
;Res0	= 1	; Reserved
;Res1	= 2	; Reserved
;Res2	= 3	; Reserved
;Res3	= 4	; Reserved
Res4	= 5	; Reserved
WCOL	= 6	; Write Collision Flag
SPIF	= 7	; SPI Interrupt Flag

; SPCR - SPI Control Register
SPR0	= 0	; SPI Clock Rate Select 1 and 0
SPR1	= 1	; SPI Clock Rate Select 1 and 0
CPHA	= 2	; Clock Phase
CPOL	= 3	; Clock polarity
MSTR	= 4	; Master/Slave Select
DORD	= 5	; Data Order
SPE	= 6	; SPI Enable
SPIE	= 7	; SPI Interrupt Enable


; ***** PORTA ************************
; PORTA - Port A Data Register
PORTA0	= 0	; Port A Data Register Value
PA0	= 0	; For compatibility
PORTA1	= 1	; Port A Data Register Value
PA1	= 1	; For compatibility
PORTA2	= 2	; Port A Data Register Value
PA2	= 2	; For compatibility
PORTA3	= 3	; Port A Data Register Value
PA3	= 3	; For compatibility
PORTA4	= 4	; Port A Data Register Value
PA4	= 4	; For compatibility
PORTA5	= 5	; Port A Data Register Value
PA5	= 5	; For compatibility
PORTA6	= 6	; Port A Data Register Value
PA6	= 6	; For compatibility
PORTA7	= 7	; Port A Data Register Value
PA7	= 7	; For compatibility

; DDRA - Port A Data Direction Register
DDA0	= 0	; Port A Data Direction Register Value
DDA1	= 1	; Port A Data Direction Register Value
DDA2	= 2	; Port A Data Direction Register Value
DDA3	= 3	; Port A Data Direction Register Value
DDA4	= 4	; Port A Data Direction Register Value
DDA5	= 5	; Port A Data Direction Register Value
DDA6	= 6	; Port A Data Direction Register Value
DDA7	= 7	; Port A Data Direction Register Value

; PINA - Port A Input Pins Address
PINA0	= 0	; Port A Input Pins
PINA1	= 1	; Port A Input Pins
PINA2	= 2	; Port A Input Pins
PINA3	= 3	; Port A Input Pins
PINA4	= 4	; Port A Input Pins
PINA5	= 5	; Port A Input Pins
PINA6	= 6	; Port A Input Pins
PINA7	= 7	; Port A Input Pins


; ***** PORTB ************************
; PORTB - Port B Data Register
PORTB0	= 0	; Port B Data Register Value
PB0	= 0	; For compatibility
PORTB1	= 1	; Port B Data Register Value
PB1	= 1	; For compatibility
PORTB2	= 2	; Port B Data Register Value
PB2	= 2	; For compatibility
PORTB3	= 3	; Port B Data Register Value
PB3	= 3	; For compatibility
PORTB4	= 4	; Port B Data Register Value
PB4	= 4	; For compatibility
PORTB5	= 5	; Port B Data Register Value
PB5	= 5	; For compatibility
PORTB6	= 6	; Port B Data Register Value
PB6	= 6	; For compatibility
PORTB7	= 7	; Port B Data Register Value
PB7	= 7	; For compatibility

; DDRB - Port B Data Direction Register
DDB0	= 0	; Port B Data Direction Register Value
DDB1	= 1	; Port B Data Direction Register Value
DDB2	= 2	; Port B Data Direction Register Value
DDB3	= 3	; Port B Data Direction Register Value
DDB4	= 4	; Port B Data Direction Register Value
DDB5	= 5	; Port B Data Direction Register Value
DDB6	= 6	; Port B Data Direction Register Value
DDB7	= 7	; Port B Data Direction Register Value

; PINB - Port B Input Pins Address
PINB0	= 0	; Port B Input Pins Value
PINB1	= 1	; Port B Input Pins Value
PINB2	= 2	; Port B Input Pins Value
PINB3	= 3	; Port B Input Pins Value
PINB4	= 4	; Port B Input Pins Value
PINB5	= 5	; Port B Input Pins Value
PINB6	= 6	; Port B Input Pins Value
PINB7	= 7	; Port B Input Pins Value


; ***** PORTC ************************
; PORTC - Port C Data Register
PORTC0	= 0	; Port C Data Register Value
PC0	= 0	; For compatibility
PORTC1	= 1	; Port C Data Register Value
PC1	= 1	; For compatibility
PORTC2	= 2	; Port C Data Register Value
PC2	= 2	; For compatibility
PORTC3	= 3	; Port C Data Register Value
PC3	= 3	; For compatibility
PORTC4	= 4	; Port C Data Register Value
PC4	= 4	; For compatibility
PORTC5	= 5	; Port C Data Register Value
PC5	= 5	; For compatibility
PORTC6	= 6	; Port C Data Register Value
PC6	= 6	; For compatibility
PORTC7	= 7	; Port C Data Register Value
PC7	= 7	; For compatibility

; DDRC - Port C Data Direction Register
DDC0	= 0	; Port C Data Direction Register Value
DDC1	= 1	; Port C Data Direction Register Value
DDC2	= 2	; Port C Data Direction Register Value
DDC3	= 3	; Port C Data Direction Register Value
DDC4	= 4	; Port C Data Direction Register Value
DDC5	= 5	; Port C Data Direction Register Value
DDC6	= 6	; Port C Data Direction Register Value
DDC7	= 7	; Port C Data Direction Register Value

; PINC - Port C Input Pins Address
PINC0	= 0	; Port C Input Pins
PINC1	= 1	; Port C Input Pins
PINC2	= 2	; Port C Input Pins
PINC3	= 3	; Port C Input Pins
PINC4	= 4	; Port C Input Pins
PINC5	= 5	; Port C Input Pins
PINC6	= 6	; Port C Input Pins
PINC7	= 7	; Port C Input Pins


; ***** PORTD ************************
; PORTD - Port D Data Register
PORTD0	= 0	; Port D Data Register Value
PD0	= 0	; For compatibility
PORTD1	= 1	; Port D Data Register Value
PD1	= 1	; For compatibility
PORTD2	= 2	; Port D Data Register Value
PD2	= 2	; For compatibility
PORTD3	= 3	; Port D Data Register Value
PD3	= 3	; For compatibility
PORTD4	= 4	; Port D Data Register Value
PD4	= 4	; For compatibility
PORTD5	= 5	; Port D Data Register Value
PD5	= 5	; For compatibility
PORTD6	= 6	; Port D Data Register Value
PD6	= 6	; For compatibility
PORTD7	= 7	; Port D Data Register Value
PD7	= 7	; For compatibility

; DDRD - Port D Data Direction Register
DDD0	= 0	; Port D Data Direction Register Value
DDD1	= 1	; Port D Data Direction Register Value
DDD2	= 2	; Port D Data Direction Register Value
DDD3	= 3	; Port D Data Direction Register Value
DDD4	= 4	; Port D Data Direction Register Value
DDD5	= 5	; Port D Data Direction Register Value
DDD6	= 6	; Port D Data Direction Register Value
DDD7	= 7	; Port D Data Direction Register Value

; PIND - Port D Input Pins Address
PIND0	= 0	; Port D Input Pins Value
PIND1	= 1	; Port D Input Pins Value
PIND2	= 2	; Port D Input Pins Value
PIND3	= 3	; Port D Input Pins Value
PIND4	= 4	; Port D Input Pins Value
PIND5	= 5	; Port D Input Pins Value
PIND6	= 6	; Port D Input Pins Value
PIND7	= 7	; Port D Input Pins Value


; ***** PORTE ************************
; PORTE - Port E Data Register
PORTE0	= 0	; Port E Data Register Value
PE0	= 0	; For compatibility
PORTE1	= 1	; Port E Data Register Value
PE1	= 1	; For compatibility
PORTE2	= 2	; Port E Data Register Value
PE2	= 2	; For compatibility
PORTE3	= 3	; Port E Data Register Value
PE3	= 3	; For compatibility
PORTE4	= 4	; Port E Data Register Value
PE4	= 4	; For compatibility
PORTE5	= 5	; Port E Data Register Value
PE5	= 5	; For compatibility
PORTE6	= 6	; Port E Data Register Value
PE6	= 6	; For compatibility
PORTE7	= 7	; Port E Data Register Value
PE7	= 7	; For compatibility

; DDRE - Port E Data Direction Register
DDE0	= 0	; Port E Data Direction Register Value
DDE1	= 1	; Port E Data Direction Register Value
DDE2	= 2	; Port E Data Direction Register Value
DDE3	= 3	; Port E Data Direction Register Value
DDE4	= 4	; Port E Data Direction Register Value
DDE5	= 5	; Port E Data Direction Register Value
DDE6	= 6	; Port E Data Direction Register Value
DDE7	= 7	; Port E Data Direction Register Value

; PINE - Port E Input Pins Address
PINE0	= 0	; Port E Input Pins Value
PINE1	= 1	; Port E Input Pins Value
PINE2	= 2	; Port E Input Pins Value
PINE3	= 3	; Port E Input Pins Value
PINE4	= 4	; Port E Input Pins Value
PINE5	= 5	; Port E Input Pins Value
PINE6	= 6	; Port E Input Pins Value
PINE7	= 7	; Port E Input Pins Value


; ***** PORTF ************************
; PORTF - Port F Data Register
PORTF0	= 0	; Port F Data Register Value
PF0	= 0	; For compatibility
PORTF1	= 1	; Port F Data Register Value
PF1	= 1	; For compatibility
PORTF2	= 2	; Port F Data Register Value
PF2	= 2	; For compatibility
PORTF3	= 3	; Port F Data Register Value
PF3	= 3	; For compatibility
PORTF4	= 4	; Port F Data Register Value
PF4	= 4	; For compatibility
PORTF5	= 5	; Port F Data Register Value
PF5	= 5	; For compatibility
PORTF6	= 6	; Port F Data Register Value
PF6	= 6	; For compatibility
PORTF7	= 7	; Port F Data Register Value
PF7	= 7	; For compatibility

; DDRF - Port F Data Direction Register
DDF0	= 0	; Port F Data Direction Register Value
DDF1	= 1	; Port F Data Direction Register Value
DDF2	= 2	; Port F Data Direction Register Value
DDF3	= 3	; Port F Data Direction Register Value
DDF4	= 4	; Port F Data Direction Register Value
DDF5	= 5	; Port F Data Direction Register Value
DDF6	= 6	; Port F Data Direction Register Value
DDF7	= 7	; Port F Data Direction Register Value

; PINF - Port F Input Pins Address
PINF0	= 0	; Port F Input Pins Value
PINF1	= 1	; Port F Input Pins Value
PINF2	= 2	; Port F Input Pins Value
PINF3	= 3	; Port F Input Pins Value
PINF4	= 4	; Port F Input Pins Value
PINF5	= 5	; Port F Input Pins Value
PINF6	= 6	; Port F Input Pins Value
PINF7	= 7	; Port F Input Pins Value


; ***** PORTG ************************
; PORTG - Port G Data Register
PORTG0	= 0	; Port G Data Register Value
PG0	= 0	; For compatibility
PORTG1	= 1	; Port G Data Register Value
PG1	= 1	; For compatibility
PORTG2	= 2	; Port G Data Register Value
PG2	= 2	; For compatibility
PORTG3	= 3	; Port G Data Register Value
PG3	= 3	; For compatibility
PORTG4	= 4	; Port G Data Register Value
PG4	= 4	; For compatibility
PORTG5	= 5	; Port G Data Register Value
PG5	= 5	; For compatibility
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; DDRG - Port G Data Direction Register
DDG0	= 0	; Port G Data Direction Register Value
DDG1	= 1	; Port G Data Direction Register Value
DDG2	= 2	; Port G Data Direction Register Value
DDG3	= 3	; Port G Data Direction Register Value
DDG4	= 4	; Port G Data Direction Register Value
DDG5	= 5	; Port G Data Direction Register Value
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; PING - Port G Input Pins Address
PING0	= 0	; Port G Input Pins Value
PING1	= 1	; Port G Input Pins Value
PING2	= 2	; Port G Input Pins Value
PING3	= 3	; Port G Input Pins Value
PING4	= 4	; Port G Input Pins Value
PING5	= 5	; Port G Input Pins Value
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit


; ***** TIMER_COUNTER_0 **************
; TIMSK0 - Timer/Counter0 Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2	; Timer/Counter0 Output Compare Match B Interrupt Enable
;Res0	= 3	; Reserved
;Res1	= 4	; Reserved
;Res2	= 5	; Reserved
;Res3	= 6	; Reserved
;Res4	= 7	; Reserved

; TIFR0 - Timer/Counter0 Interrupt Flag Register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Timer/Counter0 Output Compare A Match Flag
OCF0B	= 2	; Timer/Counter0 Output Compare B Match Flag
;Res0	= 3	; Reserved
;Res1	= 4	; Reserved
;Res2	= 5	; Reserved
;Res3	= 6	; Reserved
;Res4	= 7	; Reserved

; TCCR0A - Timer/Counter0 Control Register A
WGM00	= 0	; Waveform Generation Mode
WGM01	= 1	; Waveform Generation Mode
;Res0	= 2	; Reserved Bit
;Res1	= 3	; Reserved Bit
COM0B0	= 4	; Compare Match Output B Mode
COM0B1	= 5	; Compare Match Output B Mode
COM0A0	= 6	; Compare Match Output A Mode
COM0A1	= 7	; Compare Match Output A Mode

; TCCR0B - Timer/Counter0 Control Register B
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
WGM02	= 3	; 
;Res0	= 4	; Reserved Bit
;Res1	= 5	; Reserved Bit
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare A

; TCNT0 - Timer/Counter0 Register
TCNT0_0	= 0	; Timer/Counter0 Byte
TCNT0_1	= 1	; Timer/Counter0 Byte
TCNT0_2	= 2	; Timer/Counter0 Byte
TCNT0_3	= 3	; Timer/Counter0 Byte
TCNT0_4	= 4	; Timer/Counter0 Byte
TCNT0_5	= 5	; Timer/Counter0 Byte
TCNT0_6	= 6	; Timer/Counter0 Byte
TCNT0_7	= 7	; Timer/Counter0 Byte

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A_0	= 0	; Output Compare Register
OCR0A_1	= 1	; Output Compare Register
OCR0A_2	= 2	; Output Compare Register
OCR0A_3	= 3	; Output Compare Register
OCR0A_4	= 4	; Output Compare Register
OCR0A_5	= 5	; Output Compare Register
OCR0A_6	= 6	; Output Compare Register
OCR0A_7	= 7	; Output Compare Register

; OCR0B - Timer/Counter0 Output Compare Register B
OCR0B_0	= 0	; Output Compare Register
OCR0B_1	= 1	; Output Compare Register
OCR0B_2	= 2	; Output Compare Register
OCR0B_3	= 3	; Output Compare Register
OCR0B_4	= 4	; Output Compare Register
OCR0B_5	= 5	; Output Compare Register
OCR0B_6	= 6	; Output Compare Register
OCR0B_7	= 7	; Output Compare Register

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0	; Prescaler Reset for Synchronous Timer/Counters
PSR10	= PSRSYNC	; For compatibility
PSRASY	= 1	; Prescaler Reset Timer/Counter2
;Res0	= 2	; Reserved
;Res1	= 3	; Reserved
;Res2	= 4	; Reserved
;Res3	= 5	; Reserved
;Res4	= 6	; Reserved
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_2 **************
; TIMSK2 - Timer/Counter Interrupt Mask register
TOIE2	= 0	; Timer/Counter2 Overflow Interrupt Enable
TOIE2A	= TOIE2	; For compatibility
OCIE2A	= 1	; Timer/Counter2 Output Compare Match A Interrupt Enable
OCIE2B	= 2	; Timer/Counter2 Output Compare Match B Interrupt Enable
;Res0	= 3	; Reserved Bit
;Res1	= 4	; Reserved Bit
;Res2	= 5	; Reserved Bit
;Res3	= 6	; Reserved Bit
;Res4	= 7	; Reserved Bit

; TIFR2 - Timer/Counter Interrupt Flag Register
TOV2	= 0	; Timer/Counter2 Overflow Flag
OCF2A	= 1	; Output Compare Flag 2 A
OCF2B	= 2	; Output Compare Flag 2 B
;Res0	= 3	; Reserved Bit
;Res1	= 4	; Reserved Bit
;Res2	= 5	; Reserved Bit
;Res3	= 6	; Reserved Bit
;Res4	= 7	; Reserved Bit

; TCCR2A - Timer/Counter2 Control Register A
WGM20	= 0	; Waveform Generation Mode
WGM21	= 1	; Waveform Generation Mode
;Res0	= 2	; Reserved
;Res1	= 3	; Reserved
COM2B0	= 4	; Compare Match Output B Mode
COM2B1	= 5	; Compare Match Output B Mode
COM2A0	= 6	; Compare Match Output A Mode
COM2A1	= 7	; Compare Match Output A Mode

; TCCR2B - Timer/Counter2 Control Register B
CS20	= 0	; Clock Select
CS21	= 1	; Clock Select
CS22	= 2	; Clock Select
WGM22	= 3	; Waveform Generation Mode
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
FOC2B	= 6	; Force Output Compare B
FOC2A	= 7	; Force Output Compare A

; TCNT2 - Timer/Counter2
TCNT20	= 0	; Timer/Counter2 Byte
TCNT21	= 1	; Timer/Counter2 Byte
TCNT22	= 2	; Timer/Counter2 Byte
TCNT23	= 3	; Timer/Counter2 Byte
TCNT24	= 4	; Timer/Counter2 Byte
TCNT25	= 5	; Timer/Counter2 Byte
TCNT26	= 6	; Timer/Counter2 Byte
TCNT27	= 7	; Timer/Counter2 Byte

; OCR2A - Timer/Counter2 Output Compare Register A
OCR2A0	= 0	; Output Compare Register
OCR2A1	= 1	; Output Compare Register
OCR2A2	= 2	; Output Compare Register
OCR2A3	= 3	; Output Compare Register
OCR2A4	= 4	; Output Compare Register
OCR2A5	= 5	; Output Compare Register
OCR2A6	= 6	; Output Compare Register
OCR2A7	= 7	; Output Compare Register

; OCR2B - Timer/Counter2 Output Compare Register B
OCR2B0	= 0	; Output Compare Register
OCR2B1	= 1	; Output Compare Register
OCR2B2	= 2	; Output Compare Register
OCR2B3	= 3	; Output Compare Register
OCR2B4	= 4	; Output Compare Register
OCR2B5	= 5	; Output Compare Register
OCR2B6	= 6	; Output Compare Register
OCR2B7	= 7	; Output Compare Register

; ASSR - Asynchronous Status Register
TCR2BUB	= 0	; Timer/Counter2 Control Register B Update Busy
TCR2AUB	= 1	; Timer/Counter2 Control Register A Update Busy
OCR2BUB	= 2	; Timer/Counter2 Output Compare Register B Update Busy
OCR2AUB	= 3	; Timer/Counter2 Output Compare Register A Update Busy
TCN2UB	= 4	; Timer/Counter2 Update Busy
AS2	= 5	; Timer/Counter2 Asynchronous Mode
EXCLK	= 6	; Enable External Clock Input
EXCLKAMR	= 7	; Enable External Clock Input for AMR

; GTCCR - General Timer Counter Control register
;PSRASY	= 1	; Prescaler Reset Timer/Counter2
PSR2	= PSRASY	; For compatibility
;TSM	= 7	; Timer/Counter Synchronization Mode


; ***** WATCHDOG *********************
; WDTCSR - Watchdog Timer Control Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timeout Interrupt Enable
WDIF	= 7	; Watchdog Timeout Interrupt Flag


; ***** TIMER_COUNTER_5 **************
; TIMSK5 - Timer/Counter5 Interrupt Mask Register
TOIE5	= 0	; Timer/Counter5 Overflow Interrupt Enable
OCIE5A	= 1	; Timer/Counter5 Output Compare A Match Interrupt Enable
OCIE5B	= 2	; Timer/Counter5 Output Compare B Match Interrupt Enable
OCIE5C	= 3	; Timer/Counter5 Output Compare C Match Interrupt Enable
;Res	= 4	; Reserved Bit
ICIE5	= 5	; Timer/Counter5 Input Capture Interrupt Enable
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TIFR5 - Timer/Counter5 Interrupt Flag Register
TOV5	= 0	; Timer/Counter5 Overflow Flag
OCF5A	= 1	; Timer/Counter5 Output Compare A Match Flag
OCF5B	= 2	; Timer/Counter5 Output Compare B Match Flag
OCF5C	= 3	; Timer/Counter5 Output Compare C Match Flag
;Res	= 4	; Reserved Bit
ICF5	= 5	; Timer/Counter5 Input Capture Flag
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TCCR5A - Timer/Counter5 Control Register A
WGM50	= 0	; Waveform Generation Mode
WGM51	= 1	; Waveform Generation Mode
COM5C0	= 2	; Compare Output Mode for Channel C
COM5C1	= 3	; Compare Output Mode for Channel C
COM5B0	= 4	; Compare Output Mode for Channel B
COM5B1	= 5	; Compare Output Mode for Channel B
COM5A0	= 6	; Compare Output Mode for Channel A
COM5A1	= 7	; Compare Output Mode for Channel A

; TCCR5B - Timer/Counter5 Control Register B
CS50	= 0	; Clock Select
CS51	= 1	; Clock Select
CS52	= 2	; Clock Select
WGM52	= 3	; Waveform Generation Mode
WGM53	= 4	; Waveform Generation Mode
;Res	= 5	; Reserved Bit
ICES5	= 6	; Input Capture 5 Edge Select
ICNC5	= 7	; Input Capture 5 Noise Canceller

; TCCR5C - Timer/Counter5 Control Register C
;Res0	= 0	; Reserved
;Res1	= 1	; Reserved
;Res2	= 2	; Reserved
;Res3	= 3	; Reserved
;Res4	= 4	; Reserved
FOC5C	= 5	; Force Output Compare for Channel C
FOC5B	= 6	; Force Output Compare for Channel B
FOC5A	= 7	; Force Output Compare for Channel A

; ICR5H - Timer/Counter5 Input Capture Register High Byte
ICR5H0	= 0	; Timer/Counter5 Input Capture Register High Byte
ICR5H1	= 1	; Timer/Counter5 Input Capture Register High Byte
ICR5H2	= 2	; Timer/Counter5 Input Capture Register High Byte
ICR5H3	= 3	; Timer/Counter5 Input Capture Register High Byte
ICR5H4	= 4	; Timer/Counter5 Input Capture Register High Byte
ICR5H5	= 5	; Timer/Counter5 Input Capture Register High Byte
ICR5H6	= 6	; Timer/Counter5 Input Capture Register High Byte
ICR5H7	= 7	; Timer/Counter5 Input Capture Register High Byte

; ICR5L - Timer/Counter5 Input Capture Register Low Byte
ICR5L0	= 0	; Timer/Counter5 Input Capture Register Low Byte
ICR5L1	= 1	; Timer/Counter5 Input Capture Register Low Byte
ICR5L2	= 2	; Timer/Counter5 Input Capture Register Low Byte
ICR5L3	= 3	; Timer/Counter5 Input Capture Register Low Byte
ICR5L4	= 4	; Timer/Counter5 Input Capture Register Low Byte
ICR5L5	= 5	; Timer/Counter5 Input Capture Register Low Byte
ICR5L6	= 6	; Timer/Counter5 Input Capture Register Low Byte
ICR5L7	= 7	; Timer/Counter5 Input Capture Register Low Byte


; ***** TIMER_COUNTER_4 **************
; TIMSK4 - Timer/Counter4 Interrupt Mask Register
TOIE4	= 0	; Timer/Counter4 Overflow Interrupt Enable
OCIE4A	= 1	; Timer/Counter4 Output Compare A Match Interrupt Enable
OCIE4B	= 2	; Timer/Counter4 Output Compare B Match Interrupt Enable
OCIE4C	= 3	; Timer/Counter4 Output Compare C Match Interrupt Enable
;Res	= 4	; Reserved Bit
ICIE4	= 5	; Timer/Counter4 Input Capture Interrupt Enable
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TIFR4 - Timer/Counter4 Interrupt Flag Register
TOV4	= 0	; Timer/Counter4 Overflow Flag
OCF4A	= 1	; Timer/Counter4 Output Compare A Match Flag
OCF4B	= 2	; Timer/Counter4 Output Compare B Match Flag
OCF4C	= 3	; Timer/Counter4 Output Compare C Match Flag
;Res	= 4	; Reserved Bit
ICF4	= 5	; Timer/Counter4 Input Capture Flag
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TCCR4A - Timer/Counter4 Control Register A
WGM40	= 0	; Waveform Generation Mode
WGM41	= 1	; Waveform Generation Mode
COM4C0	= 2	; Compare Output Mode for Channel C
COM4C1	= 3	; Compare Output Mode for Channel C
COM4B0	= 4	; Compare Output Mode for Channel B
COM4B1	= 5	; Compare Output Mode for Channel B
COM4A0	= 6	; Compare Output Mode for Channel A
COM4A1	= 7	; Compare Output Mode for Channel A

; TCCR4B - Timer/Counter4 Control Register B
CS40	= 0	; Clock Select
CS41	= 1	; Clock Select
CS42	= 2	; Clock Select
WGM42	= 3	; Waveform Generation Mode
WGM43	= 4	; Waveform Generation Mode
;Res	= 5	; Reserved Bit
ICES4	= 6	; Input Capture 4 Edge Select
ICNC4	= 7	; Input Capture 4 Noise Canceller

; TCCR4C - Timer/Counter4 Control Register C
;Res0	= 0	; Reserved
;Res1	= 1	; Reserved
;Res2	= 2	; Reserved
;Res3	= 3	; Reserved
;Res4	= 4	; Reserved
FOC4C	= 5	; Force Output Compare for Channel C
FOC4B	= 6	; Force Output Compare for Channel B
FOC4A	= 7	; Force Output Compare for Channel A


; ***** TIMER_COUNTER_3 **************
; TIMSK3 - Timer/Counter3 Interrupt Mask Register
TOIE3	= 0	; Timer/Counter3 Overflow Interrupt Enable
OCIE3A	= 1	; Timer/Counter3 Output Compare A Match Interrupt Enable
OCIE3B	= 2	; Timer/Counter3 Output Compare B Match Interrupt Enable
OCIE3C	= 3	; Timer/Counter3 Output Compare C Match Interrupt Enable
;Res	= 4	; Reserved Bit
ICIE3	= 5	; Timer/Counter3 Input Capture Interrupt Enable
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TIFR3 - Timer/Counter3 Interrupt Flag Register
TOV3	= 0	; Timer/Counter3 Overflow Flag
OCF3A	= 1	; Timer/Counter3 Output Compare A Match Flag
OCF3B	= 2	; Timer/Counter3 Output Compare B Match Flag
OCF3C	= 3	; Timer/Counter3 Output Compare C Match Flag
;Res	= 4	; Reserved Bit
ICF3	= 5	; Timer/Counter3 Input Capture Flag
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TCCR3A - Timer/Counter3 Control Register A
WGM30	= 0	; Waveform Generation Mode
WGM31	= 1	; Waveform Generation Mode
COM3C0	= 2	; Compare Output Mode for Channel C
COM3C1	= 3	; Compare Output Mode for Channel C
COM3B0	= 4	; Compare Output Mode for Channel B
COM3B1	= 5	; Compare Output Mode for Channel B
COM3A0	= 6	; Compare Output Mode for Channel A
COM3A1	= 7	; Compare Output Mode for Channel A

; TCCR3B - Timer/Counter3 Control Register B
CS30	= 0	; Clock Select
CS31	= 1	; Clock Select
CS32	= 2	; Clock Select
WGM32	= 3	; Waveform Generation Mode
WGM33	= 4	; Waveform Generation Mode
;Res	= 5	; Reserved Bit
ICES3	= 6	; Input Capture 3 Edge Select
ICNC3	= 7	; Input Capture 3 Noise Canceller

; TCCR3C - Timer/Counter3 Control Register C
;Res0	= 0	; Reserved
;Res1	= 1	; Reserved
;Res2	= 2	; Reserved
;Res3	= 3	; Reserved
;Res4	= 4	; Reserved
FOC3C	= 5	; Force Output Compare for Channel C
FOC3B	= 6	; Force Output Compare for Channel B
FOC3A	= 7	; Force Output Compare for Channel A


; ***** TIMER_COUNTER_1 **************
; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output Compare B Match Interrupt Enable
OCIE1C	= 3	; Timer/Counter1 Output Compare C Match Interrupt Enable
;Res	= 4	; Reserved Bit
ICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TIFR1 - Timer/Counter1 Interrupt Flag Register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Timer/Counter1 Output Compare A Match Flag
OCF1B	= 2	; Timer/Counter1 Output Compare B Match Flag
OCF1C	= 3	; Timer/Counter1 Output Compare C Match Flag
;Res	= 4	; Reserved Bit
ICF1	= 5	; Timer/Counter1 Input Capture Flag
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode
WGM11	= 1	; Waveform Generation Mode
COM1C0	= 2	; Compare Output Mode for Channel C
COM1C1	= 3	; Compare Output Mode for Channel C
COM1B0	= 4	; Compare Output Mode for Channel B
COM1B1	= 5	; Compare Output Mode for Channel B
COM1A0	= 6	; Compare Output Mode for Channel A
COM1A1	= 7	; Compare Output Mode for Channel A

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select
CS11	= 1	; Clock Select
CS12	= 2	; Clock Select
WGM12	= 3	; Waveform Generation Mode
WGM13	= 4	; Waveform Generation Mode
;Res	= 5	; Reserved Bit
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceller

; TCCR1C - Timer/Counter1 Control Register C
;Res0	= 0	; Reserved
;Res1	= 1	; Reserved
;Res2	= 2	; Reserved
;Res3	= 3	; Reserved
;Res4	= 4	; Reserved
FOC1C	= 5	; Force Output Compare for Channel C
FOC1B	= 6	; Force Output Compare for Channel B
FOC1A	= 7	; Force Output Compare for Channel A


; ***** TRX24 ************************
; IRQ_MASK1 - Transceiver Interrupt Enable Register 1
TX_START_EN	= 0	; Transmit Start Interrupt enable
AMI0	= 1	; Address Match Interrupt enable Address filter 0
AMI1	= 2	; Address Match Interrupt enable Address filter 1
AMI2	= 3	; Address Match Interrupt enable Address filter 2
AMI3	= 4	; Address Match Interrupt enable Address filter 3
;Res0	= 5	; Reserved Bit
;Res1	= 6	; Reserved Bit
;Res2	= 7	; Reserved Bit

; IRQ_STATUS1 - Transceiver Interrupt Status Register 1
TX_START	= 0	; Transmit Start Interrupt Status
;AMI0	= 1	; Address Match Interrupt Status Address filter 0
;AMI1	= 2	; Address Match Interrupt Status Address filter 1
;AMI2	= 3	; Address Match Interrupt Status Address filter 2
;AMI3	= 4	; Address Match Interrupt Status Address filter 3
;Res0	= 5	; Reserved Bit
;Res1	= 6	; Reserved Bit
;Res2	= 7	; Reserved Bit

; MAFSA0L - Transceiver MAC Short Address Register for Frame Filter 0 (Low Byte)
MAFSA0L0	= 0	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L1	= 1	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L2	= 2	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L3	= 3	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L4	= 4	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L5	= 5	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L6	= 6	; MAC Short Address low Byte for Frame Filter 0
MAFSA0L7	= 7	; MAC Short Address low Byte for Frame Filter 0

; MAFSA0H - Transceiver MAC Short Address Register for Frame Filter 0 (High Byte)
MAFSA0H0	= 0	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H1	= 1	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H2	= 2	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H3	= 3	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H4	= 4	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H5	= 5	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H6	= 6	; MAC Short Address high Byte for Frame Filter 0
MAFSA0H7	= 7	; MAC Short Address high Byte for Frame Filter 0

; MAFPA0L - Transceiver Personal Area Network ID Register for Frame Filter 0 (Low Byte)
MAFPA0L0	= 0	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L1	= 1	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L2	= 2	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L3	= 3	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L4	= 4	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L5	= 5	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L6	= 6	; MAC Personal Area Network ID low Byte for Frame Filter 0
MAFPA0L7	= 7	; MAC Personal Area Network ID low Byte for Frame Filter 0

; MAFPA0H - Transceiver Personal Area Network ID Register for Frame Filter 0 (High Byte)
MAFPA0H0	= 0	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H1	= 1	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H2	= 2	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H3	= 3	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H4	= 4	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H5	= 5	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H6	= 6	; MAC Personal Area Network ID high Byte for Frame Filter 0
MAFPA0H7	= 7	; MAC Personal Area Network ID high Byte for Frame Filter 0

; MAFSA1L - Transceiver MAC Short Address Register for Frame Filter 1 (Low Byte)
MAFSA1L0	= 0	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L1	= 1	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L2	= 2	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L3	= 3	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L4	= 4	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L5	= 5	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L6	= 6	; MAC Short Address low Byte for Frame Filter 1
MAFSA1L7	= 7	; MAC Short Address low Byte for Frame Filter 1

; MAFSA1H - Transceiver MAC Short Address Register for Frame Filter 1 (High Byte)
MAFSA1H0	= 0	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H1	= 1	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H2	= 2	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H3	= 3	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H4	= 4	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H5	= 5	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H6	= 6	; MAC Short Address high Byte for Frame Filter 1
MAFSA1H7	= 7	; MAC Short Address high Byte for Frame Filter 1

; MAFPA1L - Transceiver Personal Area Network ID Register for Frame Filter 1 (Low Byte)
MAFPA1L0	= 0	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L1	= 1	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L2	= 2	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L3	= 3	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L4	= 4	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L5	= 5	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L6	= 6	; MAC Personal Area Network ID low Byte for Frame Filter 1
MAFPA1L7	= 7	; MAC Personal Area Network ID low Byte for Frame Filter 1

; MAFPA1H - Transceiver Personal Area Network ID Register for Frame Filter 1 (High Byte)
MAFPA1H0	= 0	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H1	= 1	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H2	= 2	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H3	= 3	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H4	= 4	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H5	= 5	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H6	= 6	; MAC Personal Area Network ID high Byte for Frame Filter 1
MAFPA1H7	= 7	; MAC Personal Area Network ID high Byte for Frame Filter 1

; MAFSA2L - Transceiver MAC Short Address Register for Frame Filter 2 (Low Byte)
MAFSA2L0	= 0	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L1	= 1	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L2	= 2	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L3	= 3	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L4	= 4	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L5	= 5	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L6	= 6	; MAC Short Address low Byte for Frame Filter 2
MAFSA2L7	= 7	; MAC Short Address low Byte for Frame Filter 2

; MAFSA2H - Transceiver MAC Short Address Register for Frame Filter 2 (High Byte)
MAFSA2H0	= 0	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H1	= 1	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H2	= 2	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H3	= 3	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H4	= 4	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H5	= 5	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H6	= 6	; MAC Short Address high Byte for Frame Filter 2
MAFSA2H7	= 7	; MAC Short Address high Byte for Frame Filter 2

; MAFPA2L - Transceiver Personal Area Network ID Register for Frame Filter 2 (Low Byte)
MAFPA2L0	= 0	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L1	= 1	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L2	= 2	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L3	= 3	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L4	= 4	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L5	= 5	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L6	= 6	; MAC Personal Area Network ID low Byte for Frame Filter 2
MAFPA2L7	= 7	; MAC Personal Area Network ID low Byte for Frame Filter 2

; MAFPA2H - Transceiver Personal Area Network ID Register for Frame Filter 2 (High Byte)
MAFPA2H0	= 0	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H1	= 1	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H2	= 2	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H3	= 3	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H4	= 4	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H5	= 5	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H6	= 6	; MAC Personal Area Network ID high Byte for Frame Filter 2
MAFPA2H7	= 7	; MAC Personal Area Network ID high Byte for Frame Filter 2

; MAFSA3L - Transceiver MAC Short Address Register for Frame Filter 3 (Low Byte)
MAFSA3L0	= 0	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L1	= 1	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L2	= 2	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L3	= 3	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L4	= 4	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L5	= 5	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L6	= 6	; MAC Short Address low Byte for Frame Filter 3
MAFSA3L7	= 7	; MAC Short Address low Byte for Frame Filter 3

; MAFSA3H - Transceiver MAC Short Address Register for Frame Filter 3 (High Byte)
MAFSA3H0	= 0	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H1	= 1	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H2	= 2	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H3	= 3	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H4	= 4	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H5	= 5	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H6	= 6	; MAC Short Address high Byte for Frame Filter 3
MAFSA3H7	= 7	; MAC Short Address high Byte for Frame Filter 3

; MAFPA3L - Transceiver Personal Area Network ID Register for Frame Filter 3 (Low Byte)
MAFPA3L0	= 0	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L1	= 1	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L2	= 2	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L3	= 3	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L4	= 4	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L5	= 5	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L6	= 6	; MAC Personal Area Network ID low Byte for Frame Filter 3
MAFPA3L7	= 7	; MAC Personal Area Network ID low Byte for Frame Filter 3

; MAFPA3H - Transceiver Personal Area Network ID Register for Frame Filter 3 (High Byte)
MAFPA3H0	= 0	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H1	= 1	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H2	= 2	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H3	= 3	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H4	= 4	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H5	= 5	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H6	= 6	; MAC Personal Area Network ID high Byte for Frame Filter 3
MAFPA3H7	= 7	; MAC Personal Area Network ID high Byte for Frame Filter 3

; MAFCR1 - Multiple Address Filter Configuration Register 1
AACK_0_I_AM_COORD	= 0	; Enable PAN Coordinator mode for address filter 0.
AACK_0_SET_PD	= 1	; Set Data Pending bit for address filter 0.
AACK_1_I_AM_COORD	= 2	; Enable PAN Coordinator mode for address filter 1.
AACK_1_SET_PD	= 3	; Set Data Pending bit for address filter 1.
AACK_2_I_AM_COORD	= 4	; Enable PAN Coordinator mode for address filter 2.
AACK_2_SET_PD	= 5	; Set Data Pending bit for address filter 2.
AACK_3_I_AM_COORD	= 6	; Enable PAN Coordinator mode for address filter 3.
AACK_3_SET_PD	= 7	; Set Data Pending bit for address filter 3.

; MAFCR0 - Multiple Address Filter Configuration Register 0
MAF0EN	= 0	; Multiple Address Filter 0 Enable
MAF1EN	= 1	; Multiple Address Filter 1 Enable
MAF2EN	= 2	; Multiple Address Filter 2 Enable
MAF3EN	= 3	; Multiple Address Filter 3 Enable
;Res0	= 4	; Reserved Bit
;Res1	= 5	; Reserved Bit
;Res2	= 6	; Reserved Bit
;Res3	= 7	; Reserved Bit

; PARCR - Power Amplifier Ramp up/down Control Register
PARUFI	= 0	; Power Amplifier Ramp Up Frequency Inversion
PARDFI	= 1	; Power Amplifier Ramp Down Frequency Inversion
PALTU0	= 2	; ext. PA Ramp Up Lead Time
PALTU1	= 3	; ext. PA Ramp Up Lead Time
PALTU2	= 4	; ext. PA Ramp Up Lead Time
PALTD0	= 5	; ext. PA Ramp Down Lead Time
PALTD1	= 6	; ext. PA Ramp Down Lead Time
PALTD2	= 7	; ext. PA Ramp Down Lead Time

; AES_CTRL - AES Control Register
;Res0	= 0	; Reserved Bit
;Res1	= 1	; Reserved Bit
AES_IM	= 2	; AES Interrupt Enable
AES_DIR	= 3	; Set AES Operation Direction
;Res	= 4	; Reserved Bit
AES_MODE	= 5	; Set AES Operation Mode
;Res	= 6	; Reserved Bit
AES_REQUEST	= 7	; Request AES Operation.

; AES_STATUS - AES Status Register
AES_DONE	= 0	; AES Operation Finished with Success
;Res0	= 1	; Reserved
;Res1	= 2	; Reserved
;Res2	= 3	; Reserved
;Res3	= 4	; Reserved
;Res4	= 5	; Reserved
Res5	= 6	; Reserved
AES_ER	= 7	; AES Operation Finished with Error

; AES_STATE - AES Plain and Cipher Text Buffer Register
AES_STATE0	= 0	; AES Plain and Cipher Text Buffer
AES_STATE1	= 1	; AES Plain and Cipher Text Buffer
AES_STATE2	= 2	; AES Plain and Cipher Text Buffer
AES_STATE3	= 3	; AES Plain and Cipher Text Buffer
AES_STATE4	= 4	; AES Plain and Cipher Text Buffer
AES_STATE5	= 5	; AES Plain and Cipher Text Buffer
AES_STATE6	= 6	; AES Plain and Cipher Text Buffer
AES_STATE7	= 7	; AES Plain and Cipher Text Buffer

; AES_KEY - AES Encryption and Decryption Key Buffer Register
AES_KEY0	= 0	; AES Encryption/Decryption Key Buffer
AES_KEY1	= 1	; AES Encryption/Decryption Key Buffer
AES_KEY2	= 2	; AES Encryption/Decryption Key Buffer
AES_KEY3	= 3	; AES Encryption/Decryption Key Buffer
AES_KEY4	= 4	; AES Encryption/Decryption Key Buffer
AES_KEY5	= 5	; AES Encryption/Decryption Key Buffer
AES_KEY6	= 6	; AES Encryption/Decryption Key Buffer
AES_KEY7	= 7	; AES Encryption/Decryption Key Buffer

; TRX_STATUS - Transceiver Status Register
TRX_STATUS0	= 0	; Transceiver Main Status
TRX_STATUS1	= 1	; Transceiver Main Status
TRX_STATUS2	= 2	; Transceiver Main Status
TRX_STATUS3	= 3	; Transceiver Main Status
TRX_STATUS4	= 4	; Transceiver Main Status
TST_STATUS	= 5	; Test mode status
CCA_STATUS	= 6	; CCA Status Result
CCA_DONE	= 7	; CCA Algorithm Status

; TRX_STATE - Transceiver State Control Register
TRX_CMD0	= 0	; State Control Command
TRX_CMD1	= 1	; State Control Command
TRX_CMD2	= 2	; State Control Command
TRX_CMD3	= 3	; State Control Command
TRX_CMD4	= 4	; State Control Command
TRAC_STATUS0	= 5	; Transaction Status
TRAC_STATUS1	= 6	; Transaction Status
TRAC_STATUS2	= 7	; Transaction Status

; TRX_CTRL_0 - Reserved
;Res0	= 0	; Reserved
;Res1	= 1	; Reserved
;Res2	= 2	; Reserved
;Res3	= 3	; Reserved
PMU_IF_INV	= 4	; PMU IF Inverse
PMU_START	= 5	; Start of Phase Measurement Unit
PMU_EN	= 6	; Enable Phase Measurement Unit
Res7	= 7	; Reserved

; TRX_CTRL_1 - Transceiver Control Register 1
;Res0	= 0	; Reserved
;Res1	= 1	; Reserved
;Res2	= 2	; Reserved
;Res3	= 3	; Reserved
PLL_TX_FLT	= 4	; Enable PLL TX filter
TX_AUTO_CRC_ON	= 5	; Enable Automatic CRC Calculation
IRQ_2_EXT_EN	= 6	; Connect Frame Start IRQ to TC1
PA_EXT_EN	= 7	; External PA support enable

; PHY_TX_PWR - Transceiver Transmit Power Control Register
TX_PWR0	= 0	; Transmit Power Setting
TX_PWR1	= 1	; Transmit Power Setting
TX_PWR2	= 2	; Transmit Power Setting
TX_PWR3	= 3	; Transmit Power Setting
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
;Res3	= 7	; Reserved

; PHY_RSSI - Receiver Signal Strength Indicator Register
RSSI0	= 0	; Receiver Signal Strength Indicator
RSSI1	= 1	; Receiver Signal Strength Indicator
RSSI2	= 2	; Receiver Signal Strength Indicator
RSSI3	= 3	; Receiver Signal Strength Indicator
RSSI4	= 4	; Receiver Signal Strength Indicator
RND_VALUE0	= 5	; Random Value
RND_VALUE1	= 6	; Random Value
RX_CRC_VALID	= 7	; Received Frame CRC Status

; PHY_ED_LEVEL - Transceiver Energy Detection Level Register
ED_LEVEL0	= 0	; Energy Detection Level
ED_LEVEL1	= 1	; Energy Detection Level
ED_LEVEL2	= 2	; Energy Detection Level
ED_LEVEL3	= 3	; Energy Detection Level
ED_LEVEL4	= 4	; Energy Detection Level
ED_LEVEL5	= 5	; Energy Detection Level
ED_LEVEL6	= 6	; Energy Detection Level
ED_LEVEL7	= 7	; Energy Detection Level

; PHY_CC_CCA - Transceiver Clear Channel Assessment (CCA) Control Register
CHANNEL0	= 0	; RX/TX Channel Selection
CHANNEL1	= 1	; RX/TX Channel Selection
CHANNEL2	= 2	; RX/TX Channel Selection
CHANNEL3	= 3	; RX/TX Channel Selection
CHANNEL4	= 4	; RX/TX Channel Selection
CCA_MODE0	= 5	; Select CCA Measurement Mode
CCA_MODE1	= 6	; Select CCA Measurement Mode
CCA_REQUEST	= 7	; Manual CCA Measurement Request

; CCA_THRES - Transceiver CCA Threshold Setting Register
CCA_ED_THRES0	= 0	; ED Threshold Level for CCA Measurement
CCA_ED_THRES1	= 1	; ED Threshold Level for CCA Measurement
CCA_ED_THRES2	= 2	; ED Threshold Level for CCA Measurement
CCA_ED_THRES3	= 3	; ED Threshold Level for CCA Measurement
CCA_CS_THRES0	= 4	; CS Threshold Level for CCA Measurement
CCA_CS_THRES1	= 5	; CS Threshold Level for CCA Measurement
CCA_CS_THRES2	= 6	; CS Threshold Level for CCA Measurement
CCA_CS_THRES3	= 7	; CS Threshold Level for CCA Measurement

; RX_CTRL - Transceiver Receive Control Register
PDT_THRES0	= 0	; Receiver Sensitivity Control
PDT_THRES1	= 1	; Receiver Sensitivity Control
PDT_THRES2	= 2	; Receiver Sensitivity Control
PDT_THRES3	= 3	; Receiver Sensitivity Control

; SFD_VALUE - Start of Frame Delimiter Value Register
SFD_VALUE0	= 0	; Start of Frame Delimiter Value
SFD_VALUE1	= 1	; Start of Frame Delimiter Value
SFD_VALUE2	= 2	; Start of Frame Delimiter Value
SFD_VALUE3	= 3	; Start of Frame Delimiter Value
SFD_VALUE4	= 4	; Start of Frame Delimiter Value
SFD_VALUE5	= 5	; Start of Frame Delimiter Value
SFD_VALUE6	= 6	; Start of Frame Delimiter Value
SFD_VALUE7	= 7	; Start of Frame Delimiter Value

; TRX_CTRL_2 - Transceiver Control Register 2
OQPSK_DATA_RATE0	= 0	; Data Rate Selection
OQPSK_DATA_RATE1	= 1	; Data Rate Selection
;Res0	= 2	; Reserved
;Res1	= 3	; Reserved
;Res2	= 4	; Reserved
;Res3	= 5	; Reserved
;Res4	= 6	; Reserved
RX_SAFE_MODE	= 7	; RX Safe Mode

; ANT_DIV - Antenna Diversity Control Register
ANT_CTRL0	= 0	; Static Antenna Diversity Switch Control
ANT_CTRL1	= 1	; Static Antenna Diversity Switch Control
ANT_EXT_SW_EN	= 2	; Enable External Antenna Switch Control
ANT_DIV_EN	= 3	; Enable Antenna Diversity
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
ANT_SEL	= 7	; Antenna Diversity Antenna Status

; IRQ_MASK - Transceiver Interrupt Enable Register
PLL_LOCK_EN	= 0	; PLL Lock Interrupt Enable
PLL_UNLOCK_EN	= 1	; PLL Unlock Interrupt Enable
RX_START_EN	= 2	; RX_START Interrupt Enable
RX_END_EN	= 3	; RX_END Interrupt Enable
CCA_ED_DONE_EN	= 4	; End of ED Measurement Interrupt Enable
AMI_EN	= 5	; Address Match Interrupt Enable
TX_END_EN	= 6	; TX_END Interrupt Enable
AWAKE_EN	= 7	; Awake Interrupt Enable

; IRQ_STATUS - Transceiver Interrupt Status Register
PLL_LOCK	= 0	; PLL Lock Interrupt Status
PLL_UNLOCK	= 1	; PLL Unlock Interrupt Status
RX_START	= 2	; RX_START Interrupt Status
RX_END	= 3	; RX_END Interrupt Status
CCA_ED_DONE	= 4	; End of ED Measurement Interrupt Status
AMI	= 5	; Address Match Interrupt Status
TX_END	= 6	; TX_END Interrupt Status
AWAKE	= 7	; Awake Interrupt Status

; VREG_CTRL - Voltage Regulator Control and Status Register
DVDD_OK	= 2	; DVDD Supply Voltage Valid
DVREG_EXT	= 3	; Use External DVDD Regulator
AVDD_OK	= 6	; AVDD Supply Voltage Valid
AVREG_EXT	= 7	; Use External AVDD Regulator

; BATMON - Battery Monitor Control and Status Register
BATMON_VTH0	= 0	; Battery Monitor Threshold Voltage
BATMON_VTH1	= 1	; Battery Monitor Threshold Voltage
BATMON_VTH2	= 2	; Battery Monitor Threshold Voltage
BATMON_VTH3	= 3	; Battery Monitor Threshold Voltage
BATMON_HR	= 4	; Battery Monitor Voltage Range
BATMON_OK	= 5	; Battery Monitor Status
BAT_LOW_EN	= 6	; Battery Monitor Interrupt Enable
BAT_LOW	= 7	; Battery Monitor Interrupt Status

; XOSC_CTRL - Crystal Oscillator Control Register
XTAL_TRIM0	= 0	; Crystal Oscillator Load Capacitance Trimming
XTAL_TRIM1	= 1	; Crystal Oscillator Load Capacitance Trimming
XTAL_TRIM2	= 2	; Crystal Oscillator Load Capacitance Trimming
XTAL_TRIM3	= 3	; Crystal Oscillator Load Capacitance Trimming
XTAL_MODE0	= 4	; Crystal Oscillator Operating Mode
XTAL_MODE1	= 5	; Crystal Oscillator Operating Mode
XTAL_MODE2	= 6	; Crystal Oscillator Operating Mode
XTAL_MODE3	= 7	; Crystal Oscillator Operating Mode

; CC_CTRL_0 - Channel Control Register 0
CC_NUMBER0	= 0	; Channel Number
CC_NUMBER1	= 1	; Channel Number
CC_NUMBER2	= 2	; Channel Number
CC_NUMBER3	= 3	; Channel Number
CC_NUMBER4	= 4	; Channel Number
CC_NUMBER5	= 5	; Channel Number
CC_NUMBER6	= 6	; Channel Number
CC_NUMBER7	= 7	; Channel Number

; CC_CTRL_1 - Channel Control Register 1
CC_BAND0	= 0	; Channel Band
CC_BAND1	= 1	; Channel Band
CC_BAND2	= 2	; Channel Band
CC_BAND3	= 3	; Channel Band

; RX_SYN - Transceiver Receiver Sensitivity Control Register
RX_PDT_LEVEL0	= 0	; Reduce Receiver Sensitivity
RX_PDT_LEVEL1	= 1	; Reduce Receiver Sensitivity
RX_PDT_LEVEL2	= 2	; Reduce Receiver Sensitivity
RX_PDT_LEVEL3	= 3	; Reduce Receiver Sensitivity
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
RX_OVERRIDE	= 6	; Receiver Override Function
RX_PDT_DIS	= 7	; Prevent Frame Reception

; TRX_RPC - Transceiver Reduced Power Consumption Control
XAH_RPC_EN	= 0	; Smart Receiving in Extended Operating Modes Enable
IPAN_RPC_EN	= 1	; Smart Receiving Mode IPAN Handling Enable
;Res0	= 2	; Reserved
PLL_RPC_EN	= 3	; PLL Smart Receiving Mode Enable
PDT_RPC_EN	= 4	; Smart Receiving Mode Reduced Sensitivity Enable
RX_RPC_EN	= 5	; Reciver Smart Receiving Mode Enable
RX_RPC_CTRL0	= 6	; Smart Receiving Mode Timing
RX_RPC_CTRL1	= 7	; Smart Receiving Mode Timing

; XAH_CTRL_1 - Transceiver Acknowledgment Frame Control Register 1
;Res	= 0	; Reserved Bit
AACK_PROM_MODE	= 1	; Enable Promiscuous Mode
AACK_ACK_TIME	= 2	; Reduce Acknowledgment Time
;Res	= 3	; Reserved Bit
AACK_UPLD_RES_FT	= 4	; Process Reserved Frames
AACK_FLTR_RES_FT	= 5	; Filter Reserved Frames
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; FTN_CTRL - Transceiver Filter Tuning Control Register
FTN_START	= 7	; Start Calibration Loop of Filter Tuning Network

; PLL_CF - Transceiver Center Frequency Calibration Control Register
PLL_CF_START	= 7	; Start Center Frequency Calibration

; PLL_DCU - Transceiver Delay Cell Calibration Control Register
PLL_DCU_START	= 7	; Start Delay Cell Calibration

; PART_NUM - Device Identification Register (Part Number)
PART_NUM0	= 0	; Part Number
PART_NUM1	= 1	; Part Number
PART_NUM2	= 2	; Part Number
PART_NUM3	= 3	; Part Number
PART_NUM4	= 4	; Part Number
PART_NUM5	= 5	; Part Number
PART_NUM6	= 6	; Part Number
PART_NUM7	= 7	; Part Number

; VERSION_NUM - Device Identification Register (Version Number)
VERSION_NUM0	= 0	; Version Number
VERSION_NUM1	= 1	; Version Number
VERSION_NUM2	= 2	; Version Number
VERSION_NUM3	= 3	; Version Number
VERSION_NUM4	= 4	; Version Number
VERSION_NUM5	= 5	; Version Number
VERSION_NUM6	= 6	; Version Number
VERSION_NUM7	= 7	; Version Number

; MAN_ID_0 - Device Identification Register (Manufacture ID Low Byte)
MAN_ID_00	= 0	; Manufacturer ID (Low Byte)
MAN_ID_01	= 1	; Manufacturer ID (Low Byte)
MAN_ID_02	= 2	; Manufacturer ID (Low Byte)
MAN_ID_03	= 3	; Manufacturer ID (Low Byte)
MAN_ID_04	= 4	; Manufacturer ID (Low Byte)
MAN_ID_05	= 5	; Manufacturer ID (Low Byte)
MAN_ID_06	= 6	; Manufacturer ID (Low Byte)
MAN_ID_07	= 7	; Manufacturer ID (Low Byte)

; MAN_ID_1 - Device Identification Register (Manufacture ID High Byte)
MAN_ID_10	= 0	; Manufacturer ID (High Byte)
MAN_ID_11	= 1	; Manufacturer ID (High Byte)
MAN_ID_12	= 2	; Manufacturer ID (High Byte)
MAN_ID_13	= 3	; Manufacturer ID (High Byte)
MAN_ID_14	= 4	; Manufacturer ID (High Byte)
MAN_ID_15	= 5	; Manufacturer ID (High Byte)
MAN_ID_16	= 6	; Manufacturer ID (High Byte)
MAN_ID_17	= 7	; Manufacturer ID (High Byte)

; SHORT_ADDR_0 - Transceiver MAC Short Address Register (Low Byte)
SHORT_ADDR_00	= 0	; MAC Short Address
SHORT_ADDR_01	= 1	; MAC Short Address
SHORT_ADDR_02	= 2	; MAC Short Address
SHORT_ADDR_03	= 3	; MAC Short Address
SHORT_ADDR_04	= 4	; MAC Short Address
SHORT_ADDR_05	= 5	; MAC Short Address
SHORT_ADDR_06	= 6	; MAC Short Address
SHORT_ADDR_07	= 7	; MAC Short Address

; SHORT_ADDR_1 - Transceiver MAC Short Address Register (High Byte)
SHORT_ADDR_10	= 0	; MAC Short Address
SHORT_ADDR_11	= 1	; MAC Short Address
SHORT_ADDR_12	= 2	; MAC Short Address
SHORT_ADDR_13	= 3	; MAC Short Address
SHORT_ADDR_14	= 4	; MAC Short Address
SHORT_ADDR_15	= 5	; MAC Short Address
SHORT_ADDR_16	= 6	; MAC Short Address
SHORT_ADDR_17	= 7	; MAC Short Address

; PAN_ID_0 - Transceiver Personal Area Network ID Register (Low Byte)
PAN_ID_00	= 0	; MAC Personal Area Network ID
PAN_ID_01	= 1	; MAC Personal Area Network ID
PAN_ID_02	= 2	; MAC Personal Area Network ID
PAN_ID_03	= 3	; MAC Personal Area Network ID
PAN_ID_04	= 4	; MAC Personal Area Network ID
PAN_ID_05	= 5	; MAC Personal Area Network ID
PAN_ID_06	= 6	; MAC Personal Area Network ID
PAN_ID_07	= 7	; MAC Personal Area Network ID

; PAN_ID_1 - Transceiver Personal Area Network ID Register (High Byte)
PAN_ID_10	= 0	; MAC Personal Area Network ID
PAN_ID_11	= 1	; MAC Personal Area Network ID
PAN_ID_12	= 2	; MAC Personal Area Network ID
PAN_ID_13	= 3	; MAC Personal Area Network ID
PAN_ID_14	= 4	; MAC Personal Area Network ID
PAN_ID_15	= 5	; MAC Personal Area Network ID
PAN_ID_16	= 6	; MAC Personal Area Network ID
PAN_ID_17	= 7	; MAC Personal Area Network ID

; IEEE_ADDR_0 - Transceiver MAC IEEE Address Register 0
IEEE_ADDR_00	= 0	; MAC IEEE Address
IEEE_ADDR_01	= 1	; MAC IEEE Address
IEEE_ADDR_02	= 2	; MAC IEEE Address
IEEE_ADDR_03	= 3	; MAC IEEE Address
IEEE_ADDR_04	= 4	; MAC IEEE Address
IEEE_ADDR_05	= 5	; MAC IEEE Address
IEEE_ADDR_06	= 6	; MAC IEEE Address
IEEE_ADDR_07	= 7	; MAC IEEE Address

; IEEE_ADDR_1 - Transceiver MAC IEEE Address Register 1
IEEE_ADDR_10	= 0	; MAC IEEE Address
IEEE_ADDR_11	= 1	; MAC IEEE Address
IEEE_ADDR_12	= 2	; MAC IEEE Address
IEEE_ADDR_13	= 3	; MAC IEEE Address
IEEE_ADDR_14	= 4	; MAC IEEE Address
IEEE_ADDR_15	= 5	; MAC IEEE Address
IEEE_ADDR_16	= 6	; MAC IEEE Address
IEEE_ADDR_17	= 7	; MAC IEEE Address

; IEEE_ADDR_2 - Transceiver MAC IEEE Address Register 2
IEEE_ADDR_20	= 0	; MAC IEEE Address
IEEE_ADDR_21	= 1	; MAC IEEE Address
IEEE_ADDR_22	= 2	; MAC IEEE Address
IEEE_ADDR_23	= 3	; MAC IEEE Address
IEEE_ADDR_24	= 4	; MAC IEEE Address
IEEE_ADDR_25	= 5	; MAC IEEE Address
IEEE_ADDR_26	= 6	; MAC IEEE Address
IEEE_ADDR_27	= 7	; MAC IEEE Address

; IEEE_ADDR_3 - Transceiver MAC IEEE Address Register 3
IEEE_ADDR_30	= 0	; MAC IEEE Address
IEEE_ADDR_31	= 1	; MAC IEEE Address
IEEE_ADDR_32	= 2	; MAC IEEE Address
IEEE_ADDR_33	= 3	; MAC IEEE Address
IEEE_ADDR_34	= 4	; MAC IEEE Address
IEEE_ADDR_35	= 5	; MAC IEEE Address
IEEE_ADDR_36	= 6	; MAC IEEE Address
IEEE_ADDR_37	= 7	; MAC IEEE Address

; IEEE_ADDR_4 - Transceiver MAC IEEE Address Register 4
IEEE_ADDR_40	= 0	; MAC IEEE Address
IEEE_ADDR_41	= 1	; MAC IEEE Address
IEEE_ADDR_42	= 2	; MAC IEEE Address
IEEE_ADDR_43	= 3	; MAC IEEE Address
IEEE_ADDR_44	= 4	; MAC IEEE Address
IEEE_ADDR_45	= 5	; MAC IEEE Address
IEEE_ADDR_46	= 6	; MAC IEEE Address
IEEE_ADDR_47	= 7	; MAC IEEE Address

; IEEE_ADDR_5 - Transceiver MAC IEEE Address Register 5
IEEE_ADDR_50	= 0	; MAC IEEE Address
IEEE_ADDR_51	= 1	; MAC IEEE Address
IEEE_ADDR_52	= 2	; MAC IEEE Address
IEEE_ADDR_53	= 3	; MAC IEEE Address
IEEE_ADDR_54	= 4	; MAC IEEE Address
IEEE_ADDR_55	= 5	; MAC IEEE Address
IEEE_ADDR_56	= 6	; MAC IEEE Address
IEEE_ADDR_57	= 7	; MAC IEEE Address

; IEEE_ADDR_6 - Transceiver MAC IEEE Address Register 6
IEEE_ADDR_60	= 0	; MAC IEEE Address
IEEE_ADDR_61	= 1	; MAC IEEE Address
IEEE_ADDR_62	= 2	; MAC IEEE Address
IEEE_ADDR_63	= 3	; MAC IEEE Address
IEEE_ADDR_64	= 4	; MAC IEEE Address
IEEE_ADDR_65	= 5	; MAC IEEE Address
IEEE_ADDR_66	= 6	; MAC IEEE Address
IEEE_ADDR_67	= 7	; MAC IEEE Address

; IEEE_ADDR_7 - Transceiver MAC IEEE Address Register 7
IEEE_ADDR_70	= 0	; MAC IEEE Address
IEEE_ADDR_71	= 1	; MAC IEEE Address
IEEE_ADDR_72	= 2	; MAC IEEE Address
IEEE_ADDR_73	= 3	; MAC IEEE Address
IEEE_ADDR_74	= 4	; MAC IEEE Address
IEEE_ADDR_75	= 5	; MAC IEEE Address
IEEE_ADDR_76	= 6	; MAC IEEE Address
IEEE_ADDR_77	= 7	; MAC IEEE Address

; XAH_CTRL_0 - Transceiver Extended Operating Mode Control Register
SLOTTED_OPERATION	= 0	; Set Slotted Acknowledgment
MAX_CSMA_RETRIES0	= 1	; Maximum Number of CSMA-CA Procedure Repetition Attempts
MAX_CSMA_RETRIES1	= 2	; Maximum Number of CSMA-CA Procedure Repetition Attempts
MAX_CSMA_RETRIES2	= 3	; Maximum Number of CSMA-CA Procedure Repetition Attempts
MAX_FRAME_RETRIES0	= 4	; Maximum Number of Frame Re-transmission Attempts
MAX_FRAME_RETRIES1	= 5	; Maximum Number of Frame Re-transmission Attempts
MAX_FRAME_RETRIES2	= 6	; Maximum Number of Frame Re-transmission Attempts
MAX_FRAME_RETRIES3	= 7	; Maximum Number of Frame Re-transmission Attempts

; CSMA_SEED_0 - Transceiver CSMA-CA Random Number Generator Seed Register
CSMA_SEED_00	= 0	; Seed Value for CSMA Random Number Generator
CSMA_SEED_01	= 1	; Seed Value for CSMA Random Number Generator
CSMA_SEED_02	= 2	; Seed Value for CSMA Random Number Generator
CSMA_SEED_03	= 3	; Seed Value for CSMA Random Number Generator
CSMA_SEED_04	= 4	; Seed Value for CSMA Random Number Generator
CSMA_SEED_05	= 5	; Seed Value for CSMA Random Number Generator
CSMA_SEED_06	= 6	; Seed Value for CSMA Random Number Generator
CSMA_SEED_07	= 7	; Seed Value for CSMA Random Number Generator

; CSMA_SEED_1 - Transceiver Acknowledgment Frame Control Register 2
CSMA_SEED_10	= 0	; Seed Value for CSMA Random Number Generator
CSMA_SEED_11	= 1	; Seed Value for CSMA Random Number Generator
CSMA_SEED_12	= 2	; Seed Value for CSMA Random Number Generator
AACK_I_AM_COORD	= 3	; Set Personal Area Network Coordinator
AACK_DIS_ACK	= 4	; Disable Acknowledgment Frame Transmission
AACK_SET_PD	= 5	; Set Frame Pending Sub-field
AACK_FVN_MODE0	= 6	; Acknowledgment Frame Filter Mode
AACK_FVN_MODE1	= 7	; Acknowledgment Frame Filter Mode

; CSMA_BE - Transceiver CSMA-CA Back-off Exponent Control Register
MIN_BE0	= 0	; Minimum Back-off Exponent
MIN_BE1	= 1	; Minimum Back-off Exponent
MIN_BE2	= 2	; Minimum Back-off Exponent
MIN_BE3	= 3	; Minimum Back-off Exponent
MAX_BE0	= 4	; Maximum Back-off Exponent
MAX_BE1	= 5	; Maximum Back-off Exponent
MAX_BE2	= 6	; Maximum Back-off Exponent
MAX_BE3	= 7	; Maximum Back-off Exponent

; TST_CTRL_DIGI - Transceiver Digital Test Control Register
TST_CTRL_DIG0	= 0	; Digital Test Controller Register
TST_CTRL_DIG1	= 1	; Digital Test Controller Register
TST_CTRL_DIG2	= 2	; Digital Test Controller Register
TST_CTRL_DIG3	= 3	; Digital Test Controller Register

; TST_RX_LENGTH - Transceiver Received Frame Length Register
RX_LENGTH0	= 0	; Received Frame Length
RX_LENGTH1	= 1	; Received Frame Length
RX_LENGTH2	= 2	; Received Frame Length
RX_LENGTH3	= 3	; Received Frame Length
RX_LENGTH4	= 4	; Received Frame Length
RX_LENGTH5	= 5	; Received Frame Length
RX_LENGTH6	= 6	; Received Frame Length
RX_LENGTH7	= 7	; Received Frame Length

; TRXFBST - Start of frame buffer
TRXFBST0	= 0	; Frame Buffer Start Byte
TRXFBST1	= 1	; Frame Buffer Start Byte
TRXFBST2	= 2	; Frame Buffer Start Byte
TRXFBST3	= 3	; Frame Buffer Start Byte
TRXFBST4	= 4	; Frame Buffer Start Byte
TRXFBST5	= 5	; Frame Buffer Start Byte
TRXFBST6	= 6	; Frame Buffer Start Byte
TRXFBST7	= 7	; Frame Buffer Start Byte

; TRXFBEND - End of frame buffer
TRXFBEND0	= 0	; Frame Buffer End Byte
TRXFBEND1	= 1	; Frame Buffer End Byte
TRXFBEND2	= 2	; Frame Buffer End Byte
TRXFBEND3	= 3	; Frame Buffer End Byte
TRXFBEND4	= 4	; Frame Buffer End Byte
TRXFBEND5	= 5	; Frame Buffer End Byte
TRXFBEND6	= 6	; Frame Buffer End Byte
TRXFBEND7	= 7	; Frame Buffer End Byte


; ***** SYMCNT ***********************
; SCTSTRHH - Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH0	= 0	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH1	= 1	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH2	= 2	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH3	= 3	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH4	= 4	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH5	= 5	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH6	= 6	; Symbol Counter Transmit Frame Timestamp Register HH-Byte
SCTSTRHH7	= 7	; Symbol Counter Transmit Frame Timestamp Register HH-Byte

; SCTSTRHL - Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL0	= 0	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL1	= 1	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL2	= 2	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL3	= 3	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL4	= 4	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL5	= 5	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL6	= 6	; Symbol Counter Transmit Frame Timestamp Register HL-Byte
SCTSTRHL7	= 7	; Symbol Counter Transmit Frame Timestamp Register HL-Byte

; SCTSTRLH - Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH0	= 0	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH1	= 1	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH2	= 2	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH3	= 3	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH4	= 4	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH5	= 5	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH6	= 6	; Symbol Counter Transmit Frame Timestamp Register LH-Byte
SCTSTRLH7	= 7	; Symbol Counter Transmit Frame Timestamp Register LH-Byte

; SCTSTRLL - Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL0	= 0	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL1	= 1	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL2	= 2	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL3	= 3	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL4	= 4	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL5	= 5	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL6	= 6	; Symbol Counter Transmit Frame Timestamp Register LL-Byte
SCTSTRLL7	= 7	; Symbol Counter Transmit Frame Timestamp Register LL-Byte

; SCOCR1HH - Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH0	= 0	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH1	= 1	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH2	= 2	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH3	= 3	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH4	= 4	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH5	= 5	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH6	= 6	; Symbol Counter Output Compare Register 1 HH-Byte
SCOCR1HH7	= 7	; Symbol Counter Output Compare Register 1 HH-Byte

; SCOCR1HL - Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL0	= 0	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL1	= 1	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL2	= 2	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL3	= 3	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL4	= 4	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL5	= 5	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL6	= 6	; Symbol Counter Output Compare Register 1 HL-Byte
SCOCR1HL7	= 7	; Symbol Counter Output Compare Register 1 HL-Byte

; SCOCR1LH - Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH0	= 0	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH1	= 1	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH2	= 2	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH3	= 3	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH4	= 4	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH5	= 5	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH6	= 6	; Symbol Counter Output Compare Register 1 LH-Byte
SCOCR1LH7	= 7	; Symbol Counter Output Compare Register 1 LH-Byte

; SCOCR1LL - Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL0	= 0	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL1	= 1	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL2	= 2	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL3	= 3	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL4	= 4	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL5	= 5	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL6	= 6	; Symbol Counter Output Compare Register 1 LL-Byte
SCOCR1LL7	= 7	; Symbol Counter Output Compare Register 1 LL-Byte

; SCOCR2HH - Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH0	= 0	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH1	= 1	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH2	= 2	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH3	= 3	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH4	= 4	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH5	= 5	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH6	= 6	; Symbol Counter Output Compare Register 2 HH-Byte
SCOCR2HH7	= 7	; Symbol Counter Output Compare Register 2 HH-Byte

; SCOCR2HL - Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL0	= 0	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL1	= 1	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL2	= 2	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL3	= 3	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL4	= 4	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL5	= 5	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL6	= 6	; Symbol Counter Output Compare Register 2 HL-Byte
SCOCR2HL7	= 7	; Symbol Counter Output Compare Register 2 HL-Byte

; SCOCR2LH - Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH0	= 0	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH1	= 1	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH2	= 2	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH3	= 3	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH4	= 4	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH5	= 5	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH6	= 6	; Symbol Counter Output Compare Register 2 LH-Byte
SCOCR2LH7	= 7	; Symbol Counter Output Compare Register 2 LH-Byte

; SCOCR2LL - Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL0	= 0	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL1	= 1	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL2	= 2	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL3	= 3	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL4	= 4	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL5	= 5	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL6	= 6	; Symbol Counter Output Compare Register 2 LL-Byte
SCOCR2LL7	= 7	; Symbol Counter Output Compare Register 2 LL-Byte

; SCOCR3HH - Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH0	= 0	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH1	= 1	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH2	= 2	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH3	= 3	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH4	= 4	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH5	= 5	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH6	= 6	; Symbol Counter Output Compare Register 3 HH-Byte
SCOCR3HH7	= 7	; Symbol Counter Output Compare Register 3 HH-Byte

; SCOCR3HL - Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL0	= 0	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL1	= 1	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL2	= 2	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL3	= 3	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL4	= 4	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL5	= 5	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL6	= 6	; Symbol Counter Output Compare Register 3 HL-Byte
SCOCR3HL7	= 7	; Symbol Counter Output Compare Register 3 HL-Byte

; SCOCR3LH - Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH0	= 0	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH1	= 1	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH2	= 2	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH3	= 3	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH4	= 4	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH5	= 5	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH6	= 6	; Symbol Counter Output Compare Register 3 LH-Byte
SCOCR3LH7	= 7	; Symbol Counter Output Compare Register 3 LH-Byte

; SCOCR3LL - Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL0	= 0	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL1	= 1	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL2	= 2	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL3	= 3	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL4	= 4	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL5	= 5	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL6	= 6	; Symbol Counter Output Compare Register 3 LL-Byte
SCOCR3LL7	= 7	; Symbol Counter Output Compare Register 3 LL-Byte

; SCTSRHH - Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH0	= 0	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH1	= 1	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH2	= 2	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH3	= 3	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH4	= 4	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH5	= 5	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH6	= 6	; Symbol Counter Frame Timestamp Register HH-Byte
SCTSRHH7	= 7	; Symbol Counter Frame Timestamp Register HH-Byte

; SCTSRHL - Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL0	= 0	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL1	= 1	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL2	= 2	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL3	= 3	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL4	= 4	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL5	= 5	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL6	= 6	; Symbol Counter Frame Timestamp Register HL-Byte
SCTSRHL7	= 7	; Symbol Counter Frame Timestamp Register HL-Byte

; SCTSRLH - Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH0	= 0	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH1	= 1	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH2	= 2	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH3	= 3	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH4	= 4	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH5	= 5	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH6	= 6	; Symbol Counter Frame Timestamp Register LH-Byte
SCTSRLH7	= 7	; Symbol Counter Frame Timestamp Register LH-Byte

; SCTSRLL - Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL0	= 0	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL1	= 1	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL2	= 2	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL3	= 3	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL4	= 4	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL5	= 5	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL6	= 6	; Symbol Counter Frame Timestamp Register LL-Byte
SCTSRLL7	= 7	; Symbol Counter Frame Timestamp Register LL-Byte

; SCBTSRHH - Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH0	= 0	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH1	= 1	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH2	= 2	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH3	= 3	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH4	= 4	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH5	= 5	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH6	= 6	; Symbol Counter Beacon Timestamp Register HH-Byte
SCBTSRHH7	= 7	; Symbol Counter Beacon Timestamp Register HH-Byte

; SCBTSRHL - Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL0	= 0	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL1	= 1	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL2	= 2	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL3	= 3	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL4	= 4	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL5	= 5	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL6	= 6	; Symbol Counter Beacon Timestamp Register HL-Byte
SCBTSRHL7	= 7	; Symbol Counter Beacon Timestamp Register HL-Byte

; SCBTSRLH - Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH0	= 0	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH1	= 1	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH2	= 2	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH3	= 3	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH4	= 4	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH5	= 5	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH6	= 6	; Symbol Counter Beacon Timestamp Register LH-Byte
SCBTSRLH7	= 7	; Symbol Counter Beacon Timestamp Register LH-Byte

; SCBTSRLL - Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL0	= 0	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL1	= 1	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL2	= 2	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL3	= 3	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL4	= 4	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL5	= 5	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL6	= 6	; Symbol Counter Beacon Timestamp Register LL-Byte
SCBTSRLL7	= 7	; Symbol Counter Beacon Timestamp Register LL-Byte

; SCCNTHH - Symbol Counter Register HH-Byte
SCCNTHH0	= 0	; Symbol Counter Register HH-Byte
SCCNTHH1	= 1	; Symbol Counter Register HH-Byte
SCCNTHH2	= 2	; Symbol Counter Register HH-Byte
SCCNTHH3	= 3	; Symbol Counter Register HH-Byte
SCCNTHH4	= 4	; Symbol Counter Register HH-Byte
SCCNTHH5	= 5	; Symbol Counter Register HH-Byte
SCCNTHH6	= 6	; Symbol Counter Register HH-Byte
SCCNTHH7	= 7	; Symbol Counter Register HH-Byte

; SCCNTHL - Symbol Counter Register HL-Byte
SCCNTHL0	= 0	; Symbol Counter Register HL-Byte
SCCNTHL1	= 1	; Symbol Counter Register HL-Byte
SCCNTHL2	= 2	; Symbol Counter Register HL-Byte
SCCNTHL3	= 3	; Symbol Counter Register HL-Byte
SCCNTHL4	= 4	; Symbol Counter Register HL-Byte
SCCNTHL5	= 5	; Symbol Counter Register HL-Byte
SCCNTHL6	= 6	; Symbol Counter Register HL-Byte
SCCNTHL7	= 7	; Symbol Counter Register HL-Byte

; SCCNTLH - Symbol Counter Register LH-Byte
SCCNTLH0	= 0	; Symbol Counter Register LH-Byte
SCCNTLH1	= 1	; Symbol Counter Register LH-Byte
SCCNTLH2	= 2	; Symbol Counter Register LH-Byte
SCCNTLH3	= 3	; Symbol Counter Register LH-Byte
SCCNTLH4	= 4	; Symbol Counter Register LH-Byte
SCCNTLH5	= 5	; Symbol Counter Register LH-Byte
SCCNTLH6	= 6	; Symbol Counter Register LH-Byte
SCCNTLH7	= 7	; Symbol Counter Register LH-Byte

; SCCNTLL - Symbol Counter Register LL-Byte
SCCNTLL0	= 0	; Symbol Counter Register LL-Byte
SCCNTLL1	= 1	; Symbol Counter Register LL-Byte
SCCNTLL2	= 2	; Symbol Counter Register LL-Byte
SCCNTLL3	= 3	; Symbol Counter Register LL-Byte
SCCNTLL4	= 4	; Symbol Counter Register LL-Byte
SCCNTLL5	= 5	; Symbol Counter Register LL-Byte
SCCNTLL6	= 6	; Symbol Counter Register LL-Byte
SCCNTLL7	= 7	; Symbol Counter Register LL-Byte

; SCCR0 - Symbol Counter Control Register 0
SCCMP1	= 0	; Symbol Counter Compare Unit 1 Mode select
SCCMP2	= 1	; Symbol Counter Compare Unit 2 Mode select
SCCMP3	= 2	; Symbol Counter Compare Unit 3 Mode select
SCTSE	= 3	; Symbol Counter Automatic Timestamping enable
SCCKSEL	= 4	; Symbol Counter Clock Source select
SCEN	= 5	; Symbol Counter enable
SCMBTS	= 6	; Manual Beacon Timestamp
SCRES	= 7	; Symbol Counter Synchronization

; SCCR1 - Symbol Counter Control Register 1
SCENBO	= 0	; Backoff Slot Counter enable
SCEECLK	= 1	; Enable External Clock Source on PG2
SCCKDIV0	= 2	; Clock divider for synchronous clock source (16MHz Transceiver Clock)
SCCKDIV1	= 3	; Clock divider for synchronous clock source (16MHz Transceiver Clock)
SCCKDIV2	= 4	; Clock divider for synchronous clock source (16MHz Transceiver Clock)
SCBTSM	= 5	; Symbol Counter Beacon Timestamp Mask Register
;Res5	= 6	; Reserved Bit
Res6	= 7	; Reserved Bit

; SCCSR - Symbol Counter Compare Source Register
SCCS10	= 0	; Symbol Counter Compare Source select register for Compare Unit 1
SCCS11	= 1	; Symbol Counter Compare Source select register for Compare Unit 1
SCCS20	= 2	; Symbol Counter Compare Source select register for Compare Unit 2
SCCS21	= 3	; Symbol Counter Compare Source select register for Compare Unit 2
SCCS30	= 4	; Symbol Counter Compare Source select register for Compare Unit 3
SCCS31	= 5	; Symbol Counter Compare Source select register for Compare Unit 3
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; SCSR - Symbol Counter Status Register
SCBSY	= 0	; Symbol Counter busy
;Res0	= 1	; Reserved Bit
;Res1	= 2	; Reserved Bit
;Res2	= 3	; Reserved Bit
;Res3	= 4	; Reserved Bit
;Res4	= 5	; Reserved Bit
;Res5	= 6	; Reserved Bit
;Res6	= 7	; Reserved Bit

; SCIRQS - Symbol Counter Interrupt Status Register
IRQSCP1	= 0	; Compare Unit 1 Compare Match IRQ
IRQSCP2	= 1	; Compare Unit 2 Compare Match IRQ
IRQSCP3	= 2	; Compare Unit 3 Compare Match IRQ
IRQSOF	= 3	; Symbol Counter Overflow IRQ
IRQSBO	= 4	; Backoff Slot Counter IRQ
;Res0	= 5	; Reserved Bit
;Res1	= 6	; Reserved Bit
;Res2	= 7	; Reserved Bit

; SCIRQM - Symbol Counter Interrupt Mask Register
IRQMCP1	= 0	; Symbol Counter Compare Match 1 IRQ enable
IRQMCP2	= 1	; Symbol Counter Compare Match 2 IRQ enable
IRQMCP3	= 2	; Symbol Counter Compare Match 3 IRQ enable
IRQMOF	= 3	; Symbol Counter Overflow IRQ enable
IRQMBO	= 4	; Backoff Slot Counter IRQ enable
;Res0	= 5	; Reserved Bit
;Res1	= 6	; Reserved Bit
;Res2	= 7	; Reserved Bit

; SCRSTRHH - Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH0	= 0	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH1	= 1	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH2	= 2	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH3	= 3	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH4	= 4	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH5	= 5	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH6	= 6	; Symbol Counter Received Frame Timestamp Register HH-Byte
SCRSTRHH7	= 7	; Symbol Counter Received Frame Timestamp Register HH-Byte

; SCRSTRHL - Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL0	= 0	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL1	= 1	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL2	= 2	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL3	= 3	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL4	= 4	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL5	= 5	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL6	= 6	; Symbol Counter Received Frame Timestamp Register HL-Byte
SCRSTRHL7	= 7	; Symbol Counter Received Frame Timestamp Register HL-Byte

; SCRSTRLH - Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH0	= 0	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH1	= 1	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH2	= 2	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH3	= 3	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH4	= 4	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH5	= 5	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH6	= 6	; Symbol Counter Received Frame Timestamp Register LH-Byte
SCRSTRLH7	= 7	; Symbol Counter Received Frame Timestamp Register LH-Byte

; SCRSTRLL - Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL0	= 0	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL1	= 1	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL2	= 2	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL3	= 3	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL4	= 4	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL5	= 5	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL6	= 6	; Symbol Counter Received Frame Timestamp Register LL-Byte
SCRSTRLL7	= 7	; Symbol Counter Received Frame Timestamp Register LL-Byte


; ***** EEPROM ***********************
; EEARH - EEPROM Address Register High Byte
EEAR8	= 0	; EEPROM Address
EEAR9	= 1	; EEPROM Address
EEAR10	= 2	; EEPROM Address
EEAR11	= 3	; EEPROM Address
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
;Res3	= 7	; Reserved

; EEARL - EEPROM Address Register Low Byte
EEAR0	= 0	; EEPROM Address
EEAR1	= 1	; EEPROM Address
EEAR2	= 2	; EEPROM Address
EEAR3	= 3	; EEPROM Address
EEAR4	= 4	; EEPROM Address
EEAR5	= 5	; EEPROM Address
EEAR6	= 6	; EEPROM Address
EEAR7	= 7	; EEPROM Address

; EEDR - EEPROM Data Register
EEDR0	= 0	; EEPROM Data
EEDR1	= 1	; EEPROM Data
EEDR2	= 2	; EEPROM Data
EEDR3	= 3	; EEPROM Data
EEDR4	= 4	; EEPROM Data
EEDR5	= 5	; EEPROM Data
EEDR6	= 6	; EEPROM Data
EEDR7	= 7	; EEPROM Data

; EECR - EEPROM Control Register
EERE	= 0	; EEPROM Read Enable
EEPE	= 1	; EEPROM Programming Enable
EEMPE	= 2	; EEPROM Master Write Enable
EERIE	= 3	; EEPROM Ready Interrupt Enable
EEPM0	= 4	; EEPROM Programming Mode
EEPM1	= 5	; EEPROM Programming Mode
;Res0	= 6	; Reserved
;Res1	= 7	; Reserved


; ***** JTAG *************************
; OCDR - On-Chip Debug Register
OCDR0	= 0	; On-Chip Debug Register Data
OCDR1	= 1	; On-Chip Debug Register Data
OCDR2	= 2	; On-Chip Debug Register Data
OCDR3	= 3	; On-Chip Debug Register Data
OCDR4	= 4	; On-Chip Debug Register Data
OCDR5	= 5	; On-Chip Debug Register Data
OCDR6	= 6	; On-Chip Debug Register Data
OCDR7	= 7	; On-Chip Debug Register Data
IDRD	= OCDR7	; For compatibility

; MCUCR - MCU Control Register
JTD	= 7	; JTAG Interface Disable

; MCUSR - MCU Status Register
JTRF	= 4	; JTAG Reset Flag


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register A
ISC00	= 0	; External Interrupt 0 Sense Control Bit
ISC01	= 1	; External Interrupt 0 Sense Control Bit
ISC10	= 2	; External Interrupt 1 Sense Control Bit
ISC11	= 3	; External Interrupt 1 Sense Control Bit
ISC20	= 4	; External Interrupt 2 Sense Control Bit
ISC21	= 5	; External Interrupt 2 Sense Control Bit
ISC30	= 6	; External Interrupt 3 Sense Control Bit
ISC31	= 7	; External Interrupt 3 Sense Control Bit

; EICRB - External Interrupt Control Register B
ISC40	= 0	; External Interrupt 4 Sense Control Bit
ISC41	= 1	; External Interrupt 4 Sense Control Bit
ISC50	= 2	; External Interrupt 5 Sense Control Bit
ISC51	= 3	; External Interrupt 5 Sense Control Bit
ISC60	= 4	; External Interrupt 6 Sense Control Bit
ISC61	= 5	; External Interrupt 6 Sense Control Bit
ISC70	= 6	; External Interrupt 7 Sense Control Bit
ISC71	= 7	; External Interrupt 7 Sense Control Bit

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request Enable
INT1	= 1	; External Interrupt Request Enable
INT2	= 2	; External Interrupt Request Enable
INT3	= 3	; External Interrupt Request Enable
INT4	= 4	; External Interrupt Request Enable
INT5	= 5	; External Interrupt Request Enable
INT6	= 6	; External Interrupt Request Enable
INT7	= 7	; External Interrupt Request Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag
INTF1	= 1	; External Interrupt Flag
INTF2	= 2	; External Interrupt Flag
INTF3	= 3	; External Interrupt Flag
INTF4	= 4	; External Interrupt Flag
INTF5	= 5	; External Interrupt Flag
INTF6	= 6	; External Interrupt Flag
INTF7	= 7	; External Interrupt Flag

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable 0
PCIE1	= 1	; Pin Change Interrupt Enable 1
PCIE2	= 2	; Pin Change Interrupt Enable 2
;Res0	= 3	; Reserved Bit
;Res1	= 4	; Reserved Bit
;Res2	= 5	; Reserved Bit
;Res3	= 6	; Reserved Bit
;Res4	= 7	; Reserved Bit

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0
PCIF1	= 1	; Pin Change Interrupt Flag 1
PCIF2	= 2	; Pin Change Interrupt Flag 2
;Res0	= 3	; Reserved Bit
;Res1	= 4	; Reserved Bit
;Res2	= 5	; Reserved Bit
;Res3	= 6	; Reserved Bit
;Res4	= 7	; Reserved Bit

; PCMSK2 - Pin Change Mask Register 2
PCINT16	= 0	; Pin Change Enable Mask
PCINT17	= 1	; Pin Change Enable Mask
PCINT18	= 2	; Pin Change Enable Mask
PCINT19	= 3	; Pin Change Enable Mask
PCINT20	= 4	; Pin Change Enable Mask
PCINT21	= 5	; Pin Change Enable Mask
PCINT22	= 6	; Pin Change Enable Mask
PCINT23	= 7	; Pin Change Enable Mask

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0	; Pin Change Enable Mask 8
PCINT9	= 1	; Pin Change Enable Mask
PCINT10	= 2	; Pin Change Enable Mask
PCINT11	= 3	; Pin Change Enable Mask
PCINT12	= 4	; Pin Change Enable Mask
PCINT13	= 5	; Pin Change Enable Mask
PCINT14	= 6	; Pin Change Enable Mask
PCINT15	= 7	; Pin Change Enable Mask

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask
PCINT1	= 1	; Pin Change Enable Mask
PCINT2	= 2	; Pin Change Enable Mask
PCINT3	= 3	; Pin Change Enable Mask
PCINT4	= 4	; Pin Change Enable Mask
PCINT5	= 5	; Pin Change Enable Mask
PCINT6	= 6	; Pin Change Enable Mask
PCINT7	= 7	; Pin Change Enable Mask


; ***** AD_CONVERTER *****************
; ADMUX - The ADC Multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bits
MUX1	= 1	; Analog Channel and Gain Selection Bits
MUX2	= 2	; Analog Channel and Gain Selection Bits
MUX3	= 3	; Analog Channel and Gain Selection Bits
MUX4	= 4	; Analog Channel and Gain Selection Bits
ADLAR	= 5	; ADC Left Adjust Result
REFS0	= 6	; Reference Selection Bits
REFS1	= 7	; Reference Selection Bits

; ADCSRA - The ADC Control and Status Register A
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC Auto Trigger Enable
ADSC	= 6	; ADC Start Conversion
ADEN	= 7	; ADC Enable

; ADCSRB - The ADC Control and Status Register B
ADTS0	= 0	; ADC Auto Trigger Source
ADTS1	= 1	; ADC Auto Trigger Source
ADTS2	= 2	; ADC Auto Trigger Source
MUX5	= 3	; Analog Channel and Gain Selection Bits
ACCH	= 4	; Analog Channel Change
REFOK	= 5	; Reference Voltage OK
;ACME	= 6	; Analog Comparator Multiplexer Enable
AVDDOK	= 7	; AVDD Supply Voltage OK

; ADCSRC - The ADC Control and Status Register C
ADSUT0	= 0	; ADC Start-up Time
ADSUT1	= 1	; ADC Start-up Time
ADSUT2	= 2	; ADC Start-up Time
ADSUT3	= 3	; ADC Start-up Time
ADSUT4	= 4	; ADC Start-up Time
;Res0	= 5	; Reserved
ADTHT0	= 6	; ADC Track-and-Hold Time
ADTHT1	= 7	; ADC Track-and-Hold Time

; ADCH - ADC Data Register High Byte
ADCH0	= 0	; ADC Data Register High Byte
ADCH1	= 1	; ADC Data Register High Byte
ADCH2	= 2	; ADC Data Register High Byte
ADCH3	= 3	; ADC Data Register High Byte
ADCH4	= 4	; ADC Data Register High Byte
ADCH5	= 5	; ADC Data Register High Byte
ADCH6	= 6	; ADC Data Register High Byte
ADCH7	= 7	; ADC Data Register High Byte

; ADCL - ADC Data Register Low Byte
ADCL0	= 0	; ADC Data Register Low Byte
ADCL1	= 1	; ADC Data Register Low Byte
ADCL2	= 2	; ADC Data Register Low Byte
ADCL3	= 3	; ADC Data Register Low Byte
ADCL4	= 4	; ADC Data Register Low Byte
ADCL5	= 5	; ADC Data Register Low Byte
ADCL6	= 6	; ADC Data Register Low Byte
ADCL7	= 7	; ADC Data Register Low Byte

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; Disable ADC7:0 Digital Input
ADC1D	= 1	; Disable ADC7:0 Digital Input
ADC2D	= 2	; Disable ADC7:0 Digital Input
ADC3D	= 3	; Disable ADC7:0 Digital Input
ADC4D	= 4	; Disable ADC7:0 Digital Input
ADC5D	= 5	; Disable ADC7:0 Digital Input
ADC6D	= 6	; Disable ADC7:0 Digital Input
ADC7D	= 7	; Disable ADC7:0 Digital Input

; DIDR2 - Digital Input Disable Register 2
ADC8D	= 0	; Reserved Bits
ADC9D	= 1	; Reserved Bits
ADC10D	= 2	; Reserved Bits
ADC11D	= 3	; Reserved Bits
ADC12D	= 4	; Reserved Bits
ADC13D	= 5	; Reserved Bits
ADC14D	= 6	; Reserved Bits
ADC15D	= 7	; Reserved Bits


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
BLBSET	= 3	; Boot Lock Bit Set
RWWSRE	= 4	; Read While Write Section Read Enable
SIGRD	= 5	; Signature Row Read
RWWSB	= 6	; Read While Write Section Busy
SPMIE	= 7	; SPM Interrupt Enable


; ***** CPU **************************
; SREG - Status Register
SREG_C	= 0	; Carry Flag
SREG_Z	= 1	; Zero Flag
SREG_N	= 2	; Negative Flag
SREG_V	= 3	; Two's Complement Overflow Flag
SREG_S	= 4	; Sign Bit
SREG_H	= 5	; Half Carry Flag
SREG_T	= 6	; Bit Copy Storage
SREG_I	= 7	; Global Interrupt Enable

; MCUCR - MCU Control Register
IVCE	= 0	; Interrupt Vector Change Enable
IVSEL	= 1	; Interrupt Vector Select
;Res0	= 2	; Reserved
;Res1	= 3	; Reserved
PUD	= 4	; Pull-up Disable
;Res0	= 5	; Reserved
;Res1	= 6	; Reserved
;JTD	= 7	; JTAG Interface Disable

; MCUSR - MCU Status Register
PORF	= 0	; Power-on Reset Flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
;JTRF	= 4	; JTAG Reset Flag
;Res0	= 5	; Reserved
;Res1	= 6	; Reserved
;Res2	= 7	; Reserved

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Tuning Value
CAL1	= 1	; Oscillator Calibration Tuning Value
CAL2	= 2	; Oscillator Calibration Tuning Value
CAL3	= 3	; Oscillator Calibration Tuning Value
CAL4	= 4	; Oscillator Calibration Tuning Value
CAL5	= 5	; Oscillator Calibration Tuning Value
CAL6	= 6	; Oscillator Calibration Tuning Value
CAL7	= 7	; Oscillator Calibration Tuning Value

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bits
CLKPS1	= 1	; Clock Prescaler Select Bits
CLKPS2	= 2	; Clock Prescaler Select Bits
CLKPS3	= 3	; Clock Prescaler Select Bits
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
CLKPCE	= 7	; Clock Prescaler Change Enable

; SMCR - Sleep Mode Control Register
SE	= 0	; Sleep Enable
SM0	= 1	; Sleep Mode Select bit 0
SM1	= 2	; Sleep Mode Select bit 1
SM2	= 3	; Sleep Mode Select bit 2
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
;Res3	= 7	; Reserved

; RAMPZ - Extended Z-pointer Register for ELPM/SPM
RAMPZ0	= 0	; Extended Z-Pointer Value
;Res0	= 1	; Reserved
;Res1	= 2	; Reserved
;Res2	= 3	; Reserved
;Res3	= 4	; Reserved
;Res4	= 5	; Reserved
;Res5	= 6	; Reserved
;Res6	= 7	; Reserved

; GPIOR2 - General Purpose I/O Register 2
GPIOR20	= 0	; General Purpose I/O Register 2 Value
GPIOR21	= 1	; General Purpose I/O Register 2 Value
GPIOR22	= 2	; General Purpose I/O Register 2 Value
GPIOR23	= 3	; General Purpose I/O Register 2 Value
GPIOR24	= 4	; General Purpose I/O Register 2 Value
GPIOR25	= 5	; General Purpose I/O Register 2 Value
GPIOR26	= 6	; General Purpose I/O Register 2 Value
GPIOR27	= 7	; General Purpose I/O Register 2 Value

; GPIOR1 - General Purpose IO Register 1
GPIOR10	= 0	; General Purpose I/O Register 1 Value
GPIOR11	= 1	; General Purpose I/O Register 1 Value
GPIOR12	= 2	; General Purpose I/O Register 1 Value
GPIOR13	= 3	; General Purpose I/O Register 1 Value
GPIOR14	= 4	; General Purpose I/O Register 1 Value
GPIOR15	= 5	; General Purpose I/O Register 1 Value
GPIOR16	= 6	; General Purpose I/O Register 1 Value
GPIOR17	= 7	; General Purpose I/O Register 1 Value

; GPIOR0 - General Purpose IO Register 0
GPIOR00	= 0	; General Purpose I/O Register 0 Value
GPIOR01	= 1	; General Purpose I/O Register 0 Value
GPIOR02	= 2	; General Purpose I/O Register 0 Value
GPIOR03	= 3	; General Purpose I/O Register 0 Value
GPIOR04	= 4	; General Purpose I/O Register 0 Value
GPIOR05	= 5	; General Purpose I/O Register 0 Value
GPIOR06	= 6	; General Purpose I/O Register 0 Value
GPIOR07	= 7	; General Purpose I/O Register 0 Value

; PRR2 - Power Reduction Register 2
PRRAM0	= 0	; Power Reduction SRAM 0
PRRAM1	= 1	; Power Reduction SRAM 1
PRRAM2	= 2	; Power Reduction SRAM 2
PRRAM3	= 3	; Power Reduction SRAM 3
;Res0	= 4	; Reserved Bit
;Res1	= 5	; Reserved Bit
;Res2	= 6	; Reserved Bit
;Res3	= 7	; Reserved Bit

; PRR1 - Power Reduction Register 1
PRUSART1	= 0	; Power Reduction USART1
PRTIM3	= 3	; Power Reduction Timer/Counter3
PRTIM4	= 4	; Power Reduction Timer/Counter4
PRTIM5	= 5	; Power Reduction Timer/Counter5
PRTRX24	= 6	; Power Reduction Transceiver
;Res	= 7	; Reserved Bit

; PRR0 - Power Reduction Register0
PRADC	= 0	; Power Reduction ADC
PRUSART0	= 1	; Power Reduction USART
PRSPI	= 2	; Power Reduction Serial Peripheral Interface
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRPGA	= 4	; Power Reduction PGA
PRTIM0	= 5	; Power Reduction Timer/Counter0
PRTIM2	= 6	; Power Reduction Timer/Counter2
PRTWI	= 7	; Power Reduction TWI


; ***** FLASH ************************
; NEMCR - Flash Extended-Mode Control-Register
AEAM0	= 4	; Address for Extended Address Mode of Extra Rows
AEAM1	= 5	; Address for Extended Address Mode of Extra Rows
ENEAM	= 6	; Enable Extended Address Mode for Extra Rows

; BGCR - Reference Voltage Calibration Register
BGCAL0	= 0	; Coarse Calibration Bits
BGCAL1	= 1	; Coarse Calibration Bits
BGCAL2	= 2	; Coarse Calibration Bits
BGCAL_FINE0	= 3	; Fine Calibration Bits
BGCAL_FINE1	= 4	; Fine Calibration Bits
BGCAL_FINE2	= 5	; Fine Calibration Bits
BGCAL_FINE3	= 6	; Fine Calibration Bits
;Res	= 7	; Reserved Bit


; ***** PWRCTRL **********************
; TRXPR - Transceiver Pin Register
TRXRST	= 0	; Force Transceiver Reset
SLPTR	= 1	; Multi-purpose Transceiver Control Bit
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
;Res3	= 7	; Reserved

; DRTRAM0 - Data Retention Configuration Register #0
ENDRT	= 4	; Enable SRAM Data Retention
DRTSWOK	= 5	; DRT Switch OK
;Res0	= 6	; Reserved
;Res1	= 7	; Reserved

; DRTRAM1 - Data Retention Configuration Register #1
;ENDRT	= 4	; Enable SRAM Data Retention
;DRTSWOK	= 5	; DRT Switch OK
;Res0	= 6	; Reserved
;Res1	= 7	; Reserved

; DRTRAM2 - Data Retention Configuration Register #2
;ENDRT	= 4	; Enable SRAM Data Retention
;DRTSWOK	= 5	; DRT Switch OK
;Res	= 6	; Reserved Bit

; DRTRAM3 - Data Retention Configuration Register #3
;ENDRT	= 4	; Enable SRAM Data Retention
;DRTSWOK	= 5	; DRT Switch OK
;Res0	= 6	; Reserved
;Res1	= 7	; Reserved

; LLDRL - Low Leakage Voltage Regulator Data Register (Low-Byte)
LLDRL0	= 0	; Low-Byte Data Register Bits
LLDRL1	= 1	; Low-Byte Data Register Bits
LLDRL2	= 2	; Low-Byte Data Register Bits
LLDRL3	= 3	; Low-Byte Data Register Bits
;Res0	= 4	; Reserved
;Res1	= 5	; Reserved
;Res2	= 6	; Reserved
;Res3	= 7	; Reserved

; LLDRH - Low Leakage Voltage Regulator Data Register (High-Byte)
LLDRH0	= 0	; High-Byte Data Register Bits
LLDRH1	= 1	; High-Byte Data Register Bits
LLDRH2	= 2	; High-Byte Data Register Bits
LLDRH3	= 3	; High-Byte Data Register Bits
LLDRH4	= 4	; High-Byte Data Register Bits
;Res0	= 5	; Reserved
;Res1	= 6	; Reserved
;Res2	= 7	; Reserved

; LLCR - Low Leakage Voltage Regulator Control Register
LLENCAL	= 0	; Enable Automatic Calibration
LLSHORT	= 1	; Short Lower Calibration Circuit
LLTCO	= 2	; Temperature Coefficient of Current Source
LLCAL	= 3	; Calibration Active
LLCOMP	= 4	; Comparator Output
LLDONE	= 5	; Calibration Done
;Res0	= 6	; Reserved Bit
;Res1	= 7	; Reserved Bit

; DPDS0 - Port Driver Strength Register 0
PBDRV0	= 0	; Driver Strength Port B
PBDRV1	= 1	; Driver Strength Port B
PDDRV0	= 2	; Driver Strength Port D
PDDRV1	= 3	; Driver Strength Port D
PEDRV0	= 4	; Driver Strength Port E
PEDRV1	= 5	; Driver Strength Port E
PFDRV0	= 6	; Driver Strength Port F
PFDRV1	= 7	; Driver Strength Port F

; DPDS1 - Port Driver Strength Register 1
PGDRV0	= 0	; Driver Strength Port G
PGDRV1	= 1	; Driver Strength Port G
;Res0	= 2	; Reserved
;Res1	= 3	; Reserved
;Res2	= 4	; Reserved
;Res3	= 5	; Reserved
;Res4	= 6	; Reserved
;Res5	= 7	; Reserved

; MCUCR - MCU Control Register
;PUD	= 4	; Pull-up Disable


; ***** USART0_SPI *******************
; UCSR0A - USART0 MSPIM Control and Status Register A
;UDRE0	= 5	; USART Data Register Empty
;TXC0	= 6	; USART Transmit Complete
;RXC0	= 7	; USART Receive Complete

; UCSR0B - USART0 MSPIM Control and Status Register B
;TXEN0	= 3	; Transmitter Enable
;RXEN0	= 4	; Receiver Enable
;UDRIE0	= 5	; USART Data Register Empty Interrupt Enable
;TXCIE0	= 6	; TX Complete Interrupt Enable
;RXCIE0	= 7	; RX Complete Interrupt Enable

; UCSR0C - USART0 MSPIM Control and Status Register C
;UCPOL0	= 0	; Clock Polarity
;UCPHA0	= 1	; Clock Phase
;UCSZ00	= UCPHA0	; For compatibility
;UDORD0	= 2	; Data Order
;UCSZ01	= UDORD0	; For compatibility


; ***** USART1_SPI *******************
; UCSR1A - USART1 MSPIM Control and Status Register A
;UDRE1	= 5	; USART Data Register Empty
;TXC1	= 6	; USART Transmit Complete
;RXC1	= 7	; USART Receive Complete

; UCSR1B - USART1 MSPIM Control and Status Register B
;TXEN1	= 3	; Transmitter Enable
;RXEN1	= 4	; Receiver Enable
;UDRIE1	= 5	; USART Data Register Empty Interrupt Enable
;TXCIE1	= 6	; TX Complete Interrupt Enable
;RXCIE1	= 7	; RX Complete Interrupt Enable

; UCSR1C - USART1 MSPIM Control and Status Register C
;UCPOL1	= 0	; Clock Polarity
;UCPHA1	= 1	; Clock Phase
;UCSZ10	= UCPHA1	; For compatibility
;UDORD1	= 2	; Data Order
;UCSZ11	= UDORD1	; For compatibility



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lock bit
LB2	= 1	; Lock bit
BLB01	= 2	; Boot Lock bit
BLB02	= 3	; Boot Lock bit
BLB11	= 4	; Boot lock bit
BLB12	= 5	; Boot lock bit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL0	= 0	; Select Clock Source
CKSEL1	= 1	; Select Clock Source
CKSEL2	= 2	; Select Clock Source
CKSEL3	= 3	; Select Clock Source
SUT0	= 4	; Select start-up time
SUT1	= 5	; Select start-up time
CKOUT	= 6	; Clock output
CKDIV8	= 7	; Divide clock by 8

; HIGH fuse bits
BOOTRST	= 0	; Select Reset Vector
BOOTSZ0	= 1	; Select Boot Size
BOOTSZ1	= 2	; Select Boot Size
EESAVE	= 3	; EEPROM memory is preserved through chip erase
WDTON	= 4	; Watchdog timer always on
SPIEN	= 5	; Enable Serial programming and Data Downloading
JTAGEN	= 6	; Enable JTAG
OCDEN	= 7	; Enable OCD

; EXTENDED fuse bits
BODLEVEL0	= 0	; Brown-out Detector trigger level
BODLEVEL1	= 1	; Brown-out Detector trigger level
BODLEVEL2	= 2	; Brown-out Detector trigger level



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0xffff	; Note: Word address
IOEND	= 0x01ff
SRAM_START	= 0x0200
SRAM_SIZE	= 16384
RAMEND	= 0x41ff
XRAMEND	= 0x0000
E2END	= 0x0fff
EEPROMEND	= 0x0fff
EEADRBITS	= 12



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0xf000
NRWW_STOP_ADDR	= 0xffff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0xefff
PAGESIZE	= 128
FIRSTBOOTSTART	= 0xfe00
SECONDBOOTSTART	= 0xfc00
THIRDBOOTSTART	= 0xf800
FOURTHBOOTSTART	= 0xf000
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0002	; External Interrupt Request 0
INT1addr	= 0x0004	; External Interrupt Request 1
INT2addr	= 0x0006	; External Interrupt Request 2
INT3addr	= 0x0008	; External Interrupt Request 3
INT4addr	= 0x000a	; External Interrupt Request 4
INT5addr	= 0x000c	; External Interrupt Request 5
INT6addr	= 0x000e	; External Interrupt Request 6
INT7addr	= 0x0010	; External Interrupt Request 7
PCI0addr	= 0x0012	; Pin Change Interrupt Request 0
PCI1addr	= 0x0014	; Pin Change Interrupt Request 1
PCI2addr	= 0x0016	; Pin Change Interrupt Request 2
WDTaddr	= 0x0018	; Watchdog Time-out Interrupt
OC2Aaddr	= 0x001a	; Timer/Counter2 Compare Match A
OC2Baddr	= 0x001c	; Timer/Counter2 Compare Match B
OVF2addr	= 0x001e	; Timer/Counter2 Overflow
ICP1addr	= 0x0020	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0022	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0024	; Timer/Counter1 Compare Match B
OC1Caddr	= 0x0026	; Timer/Counter1 Compare Match C
OVF1addr	= 0x0028	; Timer/Counter1 Overflow
OC0Aaddr	= 0x002a	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x002c	; Timer/Counter0 Compare Match B
OVF0addr	= 0x002e	; Timer/Counter0 Overflow
SPIaddr	= 0x0030	; SPI Serial Transfer Complete
URXC0addr	= 0x0032	; USART0, Rx Complete
UDRE0addr	= 0x0034	; USART0 Data register Empty
UTXC0addr	= 0x0036	; USART0, Tx Complete
ACIaddr	= 0x0038	; Analog Comparator
ADCCaddr	= 0x003a	; ADC Conversion Complete
ERDYaddr	= 0x003c	; EEPROM Ready
ICP3addr	= 0x003e	; Timer/Counter3 Capture Event
OC3Aaddr	= 0x0040	; Timer/Counter3 Compare Match A
OC3Baddr	= 0x0042	; Timer/Counter3 Compare Match B
OC3Caddr	= 0x0044	; Timer/Counter3 Compare Match C
OVF3addr	= 0x0046	; Timer/Counter3 Overflow
URXC1addr	= 0x0048	; USART1, Rx Complete
UDRE1addr	= 0x004a	; USART1 Data register Empty
UTXC1addr	= 0x004c	; USART1, Tx Complete
TWIaddr	= 0x004e	; 2-wire Serial Interface
SPMRaddr	= 0x0050	; Store Program Memory Read
ICP4addr	= 0x0052	; Timer/Counter4 Capture Event
OC4Aaddr	= 0x0054	; Timer/Counter4 Compare Match A
OC4Baddr	= 0x0056	; Timer/Counter4 Compare Match B
OC4Caddr	= 0x0058	; Timer/Counter4 Compare Match C
OVF4addr	= 0x005a	; Timer/Counter4 Overflow
ICP5addr	= 0x005c	; Timer/Counter5 Capture Event
OC5Aaddr	= 0x005e	; Timer/Counter5 Compare Match A
OC5Baddr	= 0x0060	; Timer/Counter5 Compare Match B
OC5Caddr	= 0x0062	; Timer/Counter5 Compare Match C
OVF5addr	= 0x0064	; Timer/Counter5 Overflow
URXC2addr	= 0x0066	; USART2, Rx Complete
UDRE2addr	= 0x0068	; USART2 Data register Empty
UTXC2addr	= 0x006a	; USART2, Tx Complete
URXC3addr	= 0x006c	; USART3, Rx Complete
UDRE3addr	= 0x006e	; USART3 Data register Empty
UTXC3addr	= 0x0070	; USART3, Tx Complete
TRX24_PLL_LOCKaddr	= 0x0072	; TRX24 - PLL lock interrupt
TRX24_PLL_UNLOCKaddr	= 0x0074	; TRX24 - PLL unlock interrupt
TRX24_RX_STARTaddr	= 0x0076	; TRX24 - Receive start interrupt
TRX24_RX_ENDaddr	= 0x0078	; TRX24 - RX_END interrupt
TRX24_CCA_ED_DONEaddr	= 0x007a	; TRX24 - CCA/ED done interrupt
TRX24_XAH_AMIaddr	= 0x007c	; TRX24 - XAH - AMI
TRX24_TX_ENDaddr	= 0x007e	; TRX24 - TX_END interrupt
TRX24_AWAKEaddr	= 0x0080	; TRX24 AWAKE - tranceiver is reaching state TRX_OFF
SCNT_CMP1addr	= 0x0082	; Symbol counter - compare match 1 interrupt
SCNT_CMP2addr	= 0x0084	; Symbol counter - compare match 2 interrupt
SCNT_CMP3addr	= 0x0086	; Symbol counter - compare match 3 interrupt
SCNT_OVFLaddr	= 0x0088	; Symbol counter - overflow interrupt
SCNT_BACKOFFaddr	= 0x008a	; Symbol counter - backoff interrupt
AES_READYaddr	= 0x008c	; AES engine ready interrupt
BAT_LOWaddr	= 0x008e	; Battery monitor indicates supply voltage below threshold
TRX24_TX_STARTaddr	= 0x0090	; TRX24 TX start interrupt
TRX24_AMI0addr	= 0x0092	; Address match interrupt of address filter 0
TRX24_AMI1addr	= 0x0094	; Address match interrupt of address filter 1
TRX24_AMI2addr	= 0x0096	; Address match interrupt of address filter 2
TRX24_AMI3addr	= 0x0098	; Address match interrupt of address filter 3

INT_VECTORS_SIZE	= 154	; size in words


; ***** END OF FILE ******************************************************
