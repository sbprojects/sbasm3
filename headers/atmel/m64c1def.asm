;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m64C1def.asm"
;* Title             : Register/Bit Definitions for the ATmega64C1
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega64C1
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
; device ATmega64C1

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x96
SIGNATURE_002	= 0x86

                .CR     avr
                .FA     enhanced128k
				.MS		$8000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
CANMSG	= 0xfa	; MEMORY MAPPED
CANSTMH	= 0xf9	; MEMORY MAPPED
CANSTML	= 0xf8	; MEMORY MAPPED
CANIDM1	= 0xf7	; MEMORY MAPPED
CANIDM2	= 0xf6	; MEMORY MAPPED
CANIDM3	= 0xf5	; MEMORY MAPPED
CANIDM4	= 0xf4	; MEMORY MAPPED
CANIDT1	= 0xf3	; MEMORY MAPPED
CANIDT2	= 0xf2	; MEMORY MAPPED
CANIDT3	= 0xf1	; MEMORY MAPPED
CANIDT4	= 0xf0	; MEMORY MAPPED
CANCDMOB	= 0xef	; MEMORY MAPPED
CANSTMOB	= 0xee	; MEMORY MAPPED
CANPAGE	= 0xed	; MEMORY MAPPED
CANHPMOB	= 0xec	; MEMORY MAPPED
CANREC	= 0xeb	; MEMORY MAPPED
CANTEC	= 0xea	; MEMORY MAPPED
CANTTCH	= 0xe9	; MEMORY MAPPED
CANTTCL	= 0xe8	; MEMORY MAPPED
CANTIMH	= 0xe7	; MEMORY MAPPED
CANTIML	= 0xe6	; MEMORY MAPPED
CANTCON	= 0xe5	; MEMORY MAPPED
CANBT3	= 0xe4	; MEMORY MAPPED
CANBT2	= 0xe3	; MEMORY MAPPED
CANBT1	= 0xe2	; MEMORY MAPPED
CANSIT1	= 0xe1	; MEMORY MAPPED
CANSIT2	= 0xe0	; MEMORY MAPPED
CANIE1	= 0xdf	; MEMORY MAPPED
CANIE2	= 0xde	; MEMORY MAPPED
CANEN1	= 0xdd	; MEMORY MAPPED
CANEN2	= 0xdc	; MEMORY MAPPED
CANGIE	= 0xdb	; MEMORY MAPPED
CANGIT	= 0xda	; MEMORY MAPPED
CANGSTA	= 0xd9	; MEMORY MAPPED
CANGCON	= 0xd8	; MEMORY MAPPED
LINDAT	= 0xd2	; MEMORY MAPPED
LINSEL	= 0xd1	; MEMORY MAPPED
LINIDR	= 0xd0	; MEMORY MAPPED
LINDLR	= 0xcf	; MEMORY MAPPED
LINBRRH	= 0xce	; MEMORY MAPPED
LINBRRL	= 0xcd	; MEMORY MAPPED
LINBTR	= 0xcc	; MEMORY MAPPED
LINERR	= 0xcb	; MEMORY MAPPED
LINENIR	= 0xca	; MEMORY MAPPED
LINSIR	= 0xc9	; MEMORY MAPPED
LINCR	= 0xc8	; MEMORY MAPPED
AC3CON	= 0x97	; MEMORY MAPPED
AC2CON	= 0x96	; MEMORY MAPPED
AC1CON	= 0x95	; MEMORY MAPPED
AC0CON	= 0x94	; MEMORY MAPPED
DACH	= 0x92	; MEMORY MAPPED
DACL	= 0x91	; MEMORY MAPPED
DACON	= 0x90	; MEMORY MAPPED
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
ADMUX	= 0x7c	; MEMORY MAPPED
ADCSRB	= 0x7b	; MEMORY MAPPED
ADCSRA	= 0x7a	; MEMORY MAPPED
ADCH	= 0x79	; MEMORY MAPPED
ADCL	= 0x78	; MEMORY MAPPED
AMP2CSR	= 0x77	; MEMORY MAPPED
AMP1CSR	= 0x76	; MEMORY MAPPED
AMP0CSR	= 0x75	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK3	= 0x6d	; MEMORY MAPPED
PCMSK2	= 0x6c	; MEMORY MAPPED
PCMSK1	= 0x6b	; MEMORY MAPPED
PCMSK0	= 0x6a	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
OSCCAL	= 0x66	; MEMORY MAPPED
PRR	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
SPMCSR	= 0x37
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
DWDR	= 0x31
ACSR	= 0x30
SPDR	= 0x2e
SPSR	= 0x2d
SPCR	= 0x2c
PLLCSR	= 0x29
OCR0B	= 0x28
OCR0A	= 0x27
TCNT0	= 0x26
TCCR0B	= 0x25
TCCR0A	= 0x24
GTCCR	= 0x23
EEARL	= 0x21
EEARH	= 0x22
EEDR	= 0x20
EECR	= 0x1f
GPIOR0	= 0x1e
EIMSK	= 0x1d
EIFR	= 0x1c
PCIFR	= 0x1b
GPIOR2	= 0x1a
GPIOR1	= 0x19
TIFR1	= 0x16
TIFR0	= 0x15
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


; ***** BIT DEFINITIONS **************************************************

; ***** PORTB ************************
; PORTB - Port B Data Register
PORTB0	= 0	; Port B Data Register bit 0
PB0	= 0	; For compatibility
PORTB1	= 1	; Port B Data Register bit 1
PB1	= 1	; For compatibility
PORTB2	= 2	; Port B Data Register bit 2
PB2	= 2	; For compatibility
PORTB3	= 3	; Port B Data Register bit 3
PB3	= 3	; For compatibility
PORTB4	= 4	; Port B Data Register bit 4
PB4	= 4	; For compatibility
PORTB5	= 5	; Port B Data Register bit 5
PB5	= 5	; For compatibility
PORTB6	= 6	; Port B Data Register bit 6
PB6	= 6	; For compatibility
PORTB7	= 7	; Port B Data Register bit 7
PB7	= 7	; For compatibility

; DDRB - Port B Data Direction Register
DDB0	= 0	; Port B Data Direction Register bit 0
DDB1	= 1	; Port B Data Direction Register bit 1
DDB2	= 2	; Port B Data Direction Register bit 2
DDB3	= 3	; Port B Data Direction Register bit 3
DDB4	= 4	; Port B Data Direction Register bit 4
DDB5	= 5	; Port B Data Direction Register bit 5
DDB6	= 6	; Port B Data Direction Register bit 6
DDB7	= 7	; Port B Data Direction Register bit 7

; PINB - Port B Input Pins
PINB0	= 0	; Port B Input Pins bit 0
PINB1	= 1	; Port B Input Pins bit 1
PINB2	= 2	; Port B Input Pins bit 2
PINB3	= 3	; Port B Input Pins bit 3
PINB4	= 4	; Port B Input Pins bit 4
PINB5	= 5	; Port B Input Pins bit 5
PINB6	= 6	; Port B Input Pins bit 6
PINB7	= 7	; Port B Input Pins bit 7


; ***** PORTC ************************
; PORTC - Port C Data Register
PORTC0	= 0	; Port C Data Register bit 0
PC0	= 0	; For compatibility
PORTC1	= 1	; Port C Data Register bit 1
PC1	= 1	; For compatibility
PORTC2	= 2	; Port C Data Register bit 2
PC2	= 2	; For compatibility
PORTC3	= 3	; Port C Data Register bit 3
PC3	= 3	; For compatibility
PORTC4	= 4	; Port C Data Register bit 4
PC4	= 4	; For compatibility
PORTC5	= 5	; Port C Data Register bit 5
PC5	= 5	; For compatibility
PORTC6	= 6	; Port C Data Register bit 6
PC6	= 6	; For compatibility
PORTC7	= 7	; Port C Data Register bit 7
PC7	= 7	; For compatibility

; DDRC - Port C Data Direction Register
DDC0	= 0	; Port C Data Direction Register bit 0
DDC1	= 1	; Port C Data Direction Register bit 1
DDC2	= 2	; Port C Data Direction Register bit 2
DDC3	= 3	; Port C Data Direction Register bit 3
DDC4	= 4	; Port C Data Direction Register bit 4
DDC5	= 5	; Port C Data Direction Register bit 5
DDC6	= 6	; Port C Data Direction Register bit 6
DDC7	= 7	; Port C Data Direction Register bit 7

; PINC - Port C Input Pins
PINC0	= 0	; Port C Input Pins bit 0
PINC1	= 1	; Port C Input Pins bit 1
PINC2	= 2	; Port C Input Pins bit 2
PINC3	= 3	; Port C Input Pins bit 3
PINC4	= 4	; Port C Input Pins bit 4
PINC5	= 5	; Port C Input Pins bit 5
PINC6	= 6	; Port C Input Pins bit 6
PINC7	= 7	; Port C Input Pins bit 7


; ***** PORTD ************************
; PORTD - Port D Data Register
PORTD0	= 0	; Port D Data Register bit 0
PD0	= 0	; For compatibility
PORTD1	= 1	; Port D Data Register bit 1
PD1	= 1	; For compatibility
PORTD2	= 2	; Port D Data Register bit 2
PD2	= 2	; For compatibility
PORTD3	= 3	; Port D Data Register bit 3
PD3	= 3	; For compatibility
PORTD4	= 4	; Port D Data Register bit 4
PD4	= 4	; For compatibility
PORTD5	= 5	; Port D Data Register bit 5
PD5	= 5	; For compatibility
PORTD6	= 6	; Port D Data Register bit 6
PD6	= 6	; For compatibility
PORTD7	= 7	; Port D Data Register bit 7
PD7	= 7	; For compatibility

; DDRD - Port D Data Direction Register
DDD0	= 0	; Port D Data Direction Register bit 0
DDD1	= 1	; Port D Data Direction Register bit 1
DDD2	= 2	; Port D Data Direction Register bit 2
DDD3	= 3	; Port D Data Direction Register bit 3
DDD4	= 4	; Port D Data Direction Register bit 4
DDD5	= 5	; Port D Data Direction Register bit 5
DDD6	= 6	; Port D Data Direction Register bit 6
DDD7	= 7	; Port D Data Direction Register bit 7

; PIND - Port D Input Pins
PIND0	= 0	; Port D Input Pins bit 0
PIND1	= 1	; Port D Input Pins bit 1
PIND2	= 2	; Port D Input Pins bit 2
PIND3	= 3	; Port D Input Pins bit 3
PIND4	= 4	; Port D Input Pins bit 4
PIND5	= 5	; Port D Input Pins bit 5
PIND6	= 6	; Port D Input Pins bit 6
PIND7	= 7	; Port D Input Pins bit 7


; ***** CAN **************************
; CANGCON - CAN General Control Register
SWRES	= 0	; Software Reset Request
ENASTB	= 1	; Enable / Standby
TEST	= 2	; Test Mode
LISTEN	= 3	; Listening Mode
SYNTTC	= 4	; Synchronization of TTC
TTC	= 5	; Time Trigger Communication
OVRQ	= 6	; Overload Frame Request
ABRQ	= 7	; Abort Request

; CANGSTA - CAN General Status Register
ERRP	= 0	; Error Passive Mode
BOFF	= 1	; Bus Off Mode
ENFG	= 2	; Enable Flag
RXBSY	= 3	; Receiver Busy
TXBSY	= 4	; Transmitter Busy
OVFG	= 6	; Overload Frame Flag

; CANGIT - CAN General Interrupt Register Flags
AERG	= 0	; Ackknowledgement Error General Flag
FERG	= 1	; Form Error General Flag
CERG	= 2	; CRC Error General Flag
SERG	= 3	; Stuff Error General Flag
BXOK	= 4	; Burst Receive Interrupt Flag
OVRTIM	= 5	; Overrun CAN Timer Flag
BOFFIT	= 6	; Bus Off Interrupt Flag
CANIT	= 7	; General Interrupt Flag

; CANGIE - CAN General Interrupt Enable Register
ENOVRT	= 0	; Enable CAN Timer Overrun Interrupt
ENERG	= 1	; Enable General Error Interrupt
ENBX	= 2	; Enable Burst Receive Interrupt
ENERR	= 3	; Enable MOb Error Interrupt
ENTX	= 4	; Enable Transmitt Interrupt
ENRX	= 5	; Enable Receive Interrupt
ENBOFF	= 6	; Enable Bus Off Interrupt
ENIT	= 7	; Enable all Interrupts

; CANEN2 - Enable MOb Register 2
ENMOB0	= 0	; Enable MOb 0
ENMOB1	= 1	; Enable MOb 1
ENMOB2	= 2	; Enable MOb 2
ENMOB3	= 3	; Enable MOb 3
ENMOB4	= 4	; Enable MOb 4
ENMOB5	= 5	; Enable MOb 5

; CANEN1 - Enable MOb Register 1(empty)

; CANIE2 - Enable Interrupt MOb Register 2
IEMOB0	= 0	; Interrupt Enable  MOb 0
IEMOB1	= 1	; Interrupt Enable  MOb 1
IEMOB2	= 2	; Interrupt Enable  MOb 2
IEMOB3	= 3	; Interrupt Enable  MOb 3
IEMOB4	= 4	; Interrupt Enable  MOb 4
IEMOB5	= 5	; Interrupt Enable  MOb 5

; CANIE1 - Enable Interrupt MOb Register 1 (empty)

; CANSIT2 - CAN Status Interrupt MOb Register 2
SIT0	= 0	; Status of Interrupt MOb 0
SIT1	= 1	; Status of Interrupt MOb 1
SIT2	= 2	; Status of Interrupt MOb 2
SIT3	= 3	; Status of Interrupt MOb 3
SIT4	= 4	; Status of Interrupt MOb 4
SIT5	= 5	; Status of Interrupt MOb 5

; CANSIT1 - CAN Status Interrupt MOb Register 1 (empty)

; CANBT1 - CAN Bit Timing Register 1
BRP0	= 1	; Baud Rate Prescaler bit 0
BRP1	= 2	; Baud Rate Prescaler bit 1
BRP2	= 3	; Baud Rate Prescaler bit 2
BRP3	= 4	; Baud Rate Prescaler bit 3
BRP4	= 5	; Baud Rate Prescaler bit 4
BRP5	= 6	; Baud Rate Prescaler bit 5

; CANBT2 - CAN Bit Timing Register 2
PRS0	= 1	; Propagation Time Segment bit 0
PRS1	= 2	; Propagation Time Segment bit 1
PRS2	= 3	; Propagation Time Segment bit 2
SJW0	= 5	; Re-Sync Jump Width bit 0
SJW1	= 6	; Re-Sync Jump Width bit 1

; CANBT3 - CAN Bit Timing Register 3
SMP	= 0	; Sample Type
PHS10	= 1	; Phase Segment 1 bit 0
PHS11	= 2	; Phase Segment 1 bit 1
PHS12	= 3	; Phase Segment 1 bit 2
PHS20	= 4	; Phase Segment 2 bit 0
PHS21	= 5	; Phase Segment 2 bit 1
PHS22	= 6	; Phase Segment 2 bit 2

; CANTCON - Timer Control Register
TPRSC0	= 0	; CAN Timer Prescaler bit 0
TPRSC1	= 1	; CAN Timer Prescaler bit 1
TPRSC2	= 2	; CAN Timer Prescaler bit 2
TPRSC3	= 3	; CAN Timer Prescaler bit 3
TPRSC4	= 4	; CAN Timer Prescaler bit 4
TPRSC5	= 5	; CAN Timer Prescaler bit 5
TPRSC6	= 6	; CAN Timer Prescaler bit 6
TPRSC7	= 7	; CAN Timer Prescaler bit 7

; CANTIML - Timer Register Low
CANTIM0	= 0	; CAN Timer Count bit 0
CANTIM1	= 1	; CAN Timer Count bit 1
CANTIM2	= 2	; CAN Timer Count bit 2
CANTIM3	= 3	; CAN Timer Count bit 3
CANTIM4	= 4	; CAN Timer Count bit 4
CANTIM5	= 5	; CAN Timer Count bit 5
CANTIM6	= 6	; CAN Timer Count bit 6
CANTIM7	= 7	; CAN Timer Count bit 7

; CANTIMH - Timer Register High
CANTIM8	= 0	; CAN Timer Count bit 8
CANTIM9	= 1	; CAN Timer Count bit 9
CANTIM10	= 2	; CAN Timer Count bit 10
CANTIM11	= 3	; CAN Timer Count bit 11
CANTIM12	= 4	; CAN Timer Count bit 12
CANTIM13	= 5	; CAN Timer Count bit 13
CANTIM14	= 6	; CAN Timer Count bit 14
CANTIM15	= 7	; CAN Timer Count bit 15

; CANTTCL - TTC Timer Register Low
TIMTCC0	= 0	; TTC Timer Count bit 0
TIMTCC1	= 1	; TTC Timer Count bit 1
TIMTCC2	= 2	; TTC Timer Count bit 2
TIMTCC3	= 3	; TTC Timer Count bit 3
TIMTCC4	= 4	; TTC Timer Count bit 4
TIMTCC5	= 5	; TTC Timer Count bit 5
TIMTCC6	= 6	; TTC Timer Count bit 6
TIMTCC7	= 7	; TTC Timer Count bit 7

; CANTTCH - TTC Timer Register High
TIMTCC8	= 0	; TTC Timer Count bit 8
TIMTCC9	= 1	; TTC Timer Count bit 9
TIMTCC10	= 2	; TTC Timer Count bit 10
TIMTCC11	= 3	; TTC Timer Count bit 11
TIMTCC12	= 4	; TTC Timer Count bit 12
TIMTCC13	= 5	; TTC Timer Count bit 13
TIMTCC14	= 6	; TTC Timer Count bit 14
TIMTCC15	= 7	; TTC Timer Count bit 15

; CANTEC - Transmit Error Counter Register
TEC0	= 0	; Transmit Error Count bit 0
TEC1	= 1	; Transmit Error Count bit 1
TEC2	= 2	; Transmit Error Count bit 2
TEC3	= 3	; Transmit Error Count bit 3
TEC4	= 4	; Transmit Error Count bit 4
TEC5	= 5	; Transmit Error Count bit 5
TEC6	= 6	; Transmit Error Count bit 6
TEC7	= 7	; Transmit Error Count bit 7

; CANREC - Receive Error Counter Register
REC0	= 0	; Receive Error Count bit 0
REC1	= 1	; Receive Error Count bit 1
REC2	= 2	; Receive Error Count bit 2
REC3	= 3	; Receive Error Count bit 3
REC4	= 4	; Receive Error Count bit 4
REC5	= 5	; Receive Error Count bit 5
REC6	= 6	; Receive Error Count bit 6
REC7	= 7	; Receive Error Count bit 7

; CANHPMOB - Highest Priority MOb Register
CGP0	= 0	; CAN General Purpose bit 0
CGP1	= 1	; CAN General Purpose bit 1
CGP2	= 2	; CAN General Purpose bit 2
CGP3	= 3	; CAN General Purpose bit 3
HPMOB0	= 4	; Highest Priority MOb Number bit 0
HPMOB1	= 5	; Highest Priority MOb Number bit 1
HPMOB2	= 6	; Highest Priority MOb Number bit 2
HPMOB3	= 7	; Highest Priority MOb Number bit 3

; CANPAGE - Page MOb Register
INDX0	= 0	; Data Buffer Index bit 0
INDX1	= 1	; Data Buffer Index bit 1
INDX2	= 2	; Data Buffer Index bit 2
AINC	= 3	; MOb Data Buffer Auto Increment (Active Low)
MOBNB0	= 4	; MOb Number bit 0
MOBNB1	= 5	; MOb Number bit 1
MOBNB2	= 6	; MOb Number bit 2
MOBNB3	= 7	; MOb Number bit 3

; CANSTMOB - MOb Status Register
AERR	= 0	; Ackknowledgement Error on MOb
FERR	= 1	; Form Error on MOb
CERR	= 2	; CRC Error on MOb
SERR	= 3	; Stuff Error on MOb
BERR	= 4	; Bit Error on MOb
RXOK	= 5	; Receive OK on MOb
TXOK	= 6	; Transmit OK on MOb
DLCW	= 7	; Data Length Code Warning on MOb

; CANCDMOB - MOb Control and DLC Register
DLC0	= 0	; Data Length Code bit 0
DLC1	= 1	; Data Length Code bit 1
DLC2	= 2	; Data Length Code bit 2
DLC3	= 3	; Data Length Code bit 3
IDE	= 4	; Identifier Extension
RPLV	= 5	; Reply Valid
CONMOB0	= 6	; MOb Config bit 0
CONMOB1	= 7	; MOb Config bit 1

; CANIDT4 - Identifier Tag Register 4
RB0TAG	= 0	; 
RB1TAG	= 1	; 
RTRTAG	= 2	; 
IDT0	= 3	; 
IDT1	= 4	; 
IDT2	= 5	; 
IDT3	= 6	; 
IDT4	= 7	; 

; CANIDT3 - Identifier Tag Register 3
IDT5	= 0	; 
IDT6	= 1	; 
IDT7	= 2	; 
IDT8	= 3	; 
IDT9	= 4	; 
IDT10	= 5	; 
IDT11	= 6	; 
IDT12	= 7	; 

; CANIDT2 - Identifier Tag Register 2
IDT13	= 0	; 
IDT14	= 1	; 
IDT15	= 2	; 
IDT16	= 3	; 
IDT17	= 4	; 
IDT18	= 5	; 
IDT19	= 6	; 
IDT20	= 7	; 

; CANIDT1 - Identifier Tag Register 1
IDT21	= 0	; 
IDT22	= 1	; 
IDT23	= 2	; 
IDT24	= 3	; 
IDT25	= 4	; 
IDT26	= 5	; 
IDT27	= 6	; 
IDT28	= 7	; 

; CANIDM4 - Identifier Mask Register 4
IDEMSK	= 0	; 
RTRMSK	= 2	; 
IDMSK0	= 3	; 
IDMSK1	= 4	; 
IDMSK2	= 5	; 
IDMSK3	= 6	; 
IDMSK4	= 7	; 

; CANIDM3 - Identifier Mask Register 3
IDMSK5	= 0	; 
IDMSK6	= 1	; 
IDMSK7	= 2	; 
IDMSK8	= 3	; 
IDMSK9	= 4	; 
IDMSK10	= 5	; 
IDMSK11	= 6	; 
IDMSK12	= 7	; 

; CANIDM2 - Identifier Mask Register 2
IDMSK13	= 0	; 
IDMSK14	= 1	; 
IDMSK15	= 2	; 
IDMSK16	= 3	; 
IDMSK17	= 4	; 
IDMSK18	= 5	; 
IDMSK19	= 6	; 
IDMSK20	= 7	; 

; CANIDM1 - Identifier Mask Register 1
IDMSK21	= 0	; 
IDMSK22	= 1	; 
IDMSK23	= 2	; 
IDMSK24	= 3	; 
IDMSK25	= 4	; 
IDMSK26	= 5	; 
IDMSK27	= 6	; 
IDMSK28	= 7	; 

; CANSTML - Time Stamp Register Low
TIMSTM0	= 0	; CAN Timer Count bit 0
TIMSTM1	= 1	; CAN Timer Count bit 1
TIMSTM2	= 2	; CAN Timer Count bit 2
TIMSTM3	= 3	; CAN Timer Count bit 3
TIMSTM4	= 4	; CAN Timer Count bit 4
TIMSTM5	= 5	; CAN Timer Count bit 5
TIMSTM6	= 6	; CAN Timer Count bit 6
TIMSTM7	= 7	; CAN Timer Count bit 7

; CANSTMH - Time Stamp Register High
TIMSTM8	= 0	; CAN Timer Count bit 0
TIMSTM9	= 1	; CAN Timer Count bit 9
TIMSTM10	= 2	; CAN Timer Count bit 10
TIMSTM11	= 3	; CAN Timer Count bit 11
TIMSTM12	= 4	; CAN Timer Count bit 12
TIMSTM13	= 5	; CAN Timer Count bit 13
TIMSTM14	= 6	; CAN Timer Count bit 14
TIMSTM15	= 7	; CAN Timer Count bit 15

; CANMSG - Message Data Register
MSG0	= 0	; Message Data bit 0
MSG1	= 1	; Message Data bit 1
MSG2	= 2	; Message Data bit 2
MSG3	= 3	; Message Data bit 3
MSG4	= 4	; Message Data bit 4
MSG5	= 5	; Message Data bit 5
MSG6	= 6	; Message Data bit 6
MSG7	= 7	; Message Data bit 7


; ***** ANALOG_COMPARATOR ************
; AC0CON - Analog Comparator 0 Control Register
AC0M0	= 0	; Analog Comparator 0 Multiplexer Register
AC0M1	= 1	; Analog Comparator 0 Multiplexer Regsiter
AC0M2	= 2	; Analog Comparator 0 Multiplexer Register
ACCKSEL	= 3	; Analog Comparator Clock Select
AC0IS0	= 4	; Analog Comparator 0 Interrupt Select Bit 0
AC0IS1	= 5	; Analog Comparator 0  Interrupt Select Bit 1
AC0IE	= 6	; Analog Comparator 0 Interrupt Enable Bit
AC0EN	= 7	; Analog Comparator 0 Enable Bit

; AC1CON - Analog Comparator 1 Control Register
AC1M0	= 0	; Analog Comparator 1 Multiplexer Register
AC1M1	= 1	; Analog Comparator 1 Multiplexer Regsiter
AC1M2	= 2	; Analog Comparator 1 Multiplexer Register
AC1ICE	= 3	; Analog Comparator 1 Interrupt Capture Enable Bit
AC1IS0	= 4	; Analog Comparator 1 Interrupt Select Bit
AC1IS1	= 5	; Analog Comparator 1  Interrupt Select Bit
AC1IE	= 6	; Analog Comparator 1 Interrupt Enable Bit
AC1EN	= 7	; Analog Comparator 1 Enable Bit

; AC2CON - Analog Comparator 2 Control Register
AC2M0	= 0	; Analog Comparator 2 Multiplexer Register
AC2M1	= 1	; Analog Comparator 2 Multiplexer Regsiter
AC2M2	= 2	; Analog Comparator 2 Multiplexer Register
AC2IS0	= 4	; Analog Comparator 2 Interrupt Select Bit
AC2IS1	= 5	; Analog Comparator 2  Interrupt Select Bit
AC2IE	= 6	; Analog Comparator 2 Interrupt Enable Bit
AC2EN	= 7	; Analog Comparator 2 Enable Bit

; AC3CON - Analog Comparator 3 Control Register
AC3M0	= 0	; Analog Comparator 3 Multiplexer Register
AC3M1	= 1	; Analog Comparator 3 Multiplexer Regsiter
AC3M2	= 2	; Analog Comparator 3 Multiplexer Register
AC3IS0	= 4	; Analog Comparator 3 Interrupt Select Bit
AC3IS1	= 5	; Analog Comparator 3  Interrupt Select Bit
AC3IE	= 6	; Analog Comparator 3 Interrupt Enable Bit
AC3EN	= 7	; Analog Comparator 3 Enable Bit

; ACSR - Analog Comparator Status Register
AC0O	= 0	; Analog Comparator 0 Output Bit
AC1O	= 1	; Analog Comparator 1 Output Bit
AC2O	= 2	; Analog Comparator 2 Output Bit
AC3O	= 3	; Analog Comparator 3 Output Bit
AC0IF	= 4	; Analog Comparator 0 Interrupt Flag Bit
AC1IF	= 5	; Analog Comparator 1  Interrupt Flag Bit
AC2IF	= 6	; Analog Comparator 2 Interrupt Flag Bit
AC3IF	= 7	; Analog Comparator 3 Interrupt Flag Bit


; ***** DA_CONVERTER *****************
; DACH - DAC Data Register High Byte
DACH0	= 0	; DAC Data Register High Byte Bit 0
DACH1	= 1	; DAC Data Register High Byte Bit 1
DACH2	= 2	; DAC Data Register High Byte Bit 2
DACH3	= 3	; DAC Data Register High Byte Bit 3
DACH4	= 4	; DAC Data Register High Byte Bit 4
DACH5	= 5	; DAC Data Register High Byte Bit 5
DACH6	= 6	; DAC Data Register High Byte Bit 6
DACH7	= 7	; DAC Data Register High Byte Bit 7

; DACL - DAC Data Register Low Byte
DACL0	= 0	; DAC Data Register Low Byte Bit 0
DACL1	= 1	; DAC Data Register Low Byte Bit 1
DACL2	= 2	; DAC Data Register Low Byte Bit 2
DACL3	= 3	; DAC Data Register Low Byte Bit 3
DACL4	= 4	; DAC Data Register Low Byte Bit 4
DACL5	= 5	; DAC Data Register Low Byte Bit 5
DACL6	= 6	; DAC Data Register Low Byte Bit 6
DACL7	= 7	; DAC Data Register Low Byte Bit 7

; DACON - DAC Control Register
DAEN	= 0	; DAC Enable Bit
DALA	= 2	; DAC Left Adjust
DATS0	= 4	; DAC Trigger Selection Bit 0
DATS1	= 5	; DAC Trigger Selection Bit 1
DATS2	= 6	; DAC Trigger Selection Bit 2
DAATE	= 7	; DAC Auto Trigger Enable Bit


; ***** CPU **************************
; SPMCSR - Store Program Memory Control Register
SPMCR	= SPMCSR	; For compatibility
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
BLBSET	= 3	; Boot Lock Bit Set
RWWSRE	= 4	; Read While Write section read enable
ASRE	= RWWSRE	; For compatibility
SIGRD	= 5	; Signature Row Read
RWWSB	= 6	; Read While Write Section Busy
ASB	= RWWSB	; For compatibility
SPMIE	= 7	; SPM Interrupt Enable

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
PUD	= 4	; Pull-up disable
SPIPS	= 7	; SPI Pin Select

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6

; CLKPR - 
CLKPS0	= 0	; 
CLKPS1	= 1	; 
CLKPS2	= 2	; 
CLKPS3	= 3	; 
CLKPCE	= 7	; 

; SMCR - Sleep Mode Control Register
SE	= 0	; Sleep Enable
SM0	= 1	; Sleep Mode Select bit 0
SM1	= 2	; Sleep Mode Select bit 1
SM2	= 3	; Sleep Mode Select bit 2

; GPIOR2 - General Purpose IO Register 2
GPIOR20	= 0	; General Purpose IO Register 2 bit 0
GPIOR21	= 1	; General Purpose IO Register 2 bit 1
GPIOR22	= 2	; General Purpose IO Register 2 bit 2
GPIOR23	= 3	; General Purpose IO Register 2 bit 3
GPIOR24	= 4	; General Purpose IO Register 2 bit 4
GPIOR25	= 5	; General Purpose IO Register 2 bit 5
GPIOR26	= 6	; General Purpose IO Register 2 bit 6
GPIOR27	= 7	; General Purpose IO Register 2 bit 7

; GPIOR1 - General Purpose IO Register 1
GPIOR10	= 0	; General Purpose IO Register 1 bit 0
GPIOR11	= 1	; General Purpose IO Register 1 bit 1
GPIOR12	= 2	; General Purpose IO Register 1 bit 2
GPIOR13	= 3	; General Purpose IO Register 1 bit 3
GPIOR14	= 4	; General Purpose IO Register 1 bit 4
GPIOR15	= 5	; General Purpose IO Register 1 bit 5
GPIOR16	= 6	; General Purpose IO Register 1 bit 6
GPIOR17	= 7	; General Purpose IO Register 1 bit 7

; GPIOR0 - General Purpose IO Register 0
GPIOR00	= 0	; General Purpose IO Register 0 bit 0
GPIOR01	= 1	; General Purpose IO Register 0 bit 1
GPIOR02	= 2	; General Purpose IO Register 0 bit 2
GPIOR03	= 3	; General Purpose IO Register 0 bit 3
GPIOR04	= 4	; General Purpose IO Register 0 bit 4
GPIOR05	= 5	; General Purpose IO Register 0 bit 5
GPIOR06	= 6	; General Purpose IO Register 0 bit 6
GPIOR07	= 7	; General Purpose IO Register 0 bit 7

; PLLCSR - PLL Control And Status Register
PLOCK	= 0	; PLL Lock Detector
PLLE	= 1	; PLL Enable
PLLF	= 2	; PLL Factor

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRLIN	= 1	; Power Reduction LIN UART
PRSPI	= 2	; Power Reduction Serial Peripheral Interface
PRTIM0	= 3	; Power Reduction Timer/Counter0
PRTIM1	= 4	; Power Reduction Timer/Counter1
PRPSC	= 5	; Power Reduction PSC
PRCAN	= 6	; Power Reduction CAN


; ***** PORTE ************************
; PORTE - Port E Data Register
PORTE0	= 0	; 
PE0	= 0	; For compatibility
PORTE1	= 1	; 
PE1	= 1	; For compatibility
PORTE2	= 2	; 
PE2	= 2	; For compatibility

; DDRE - Port E Data Direction Register
DDE0	= 0	; 
DDE1	= 1	; 
DDE2	= 2	; 

; PINE - Port E Input Pins
PINE0	= 0	; 
PINE1	= 1	; 
PINE2	= 2	; 


; ***** TIMER_COUNTER_0 **************
; TIMSK0 - Timer/Counter0 Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2	; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Timer/Counter0 Output Compare Flag 0A
OCF0B	= 2	; Timer/Counter0 Output Compare Flag 0B

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0	; Waveform Generation Mode
WGM01	= 1	; Waveform Generation Mode
COM0B0	= 4	; Compare Output Mode, Fast PWm
COM0B1	= 5	; Compare Output Mode, Fast PWm
COM0A0	= 6	; Compare Output Mode, Phase Correct PWM Mode
COM0A1	= 7	; Compare Output Mode, Phase Correct PWM Mode

; TCCR0B - Timer/Counter Control Register B
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
WGM02	= 3	; 
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare A

; TCNT0 - Timer/Counter0
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A_0	= 0	; 
OCR0A_1	= 1	; 
OCR0A_2	= 2	; 
OCR0A_3	= 3	; 
OCR0A_4	= 4	; 
OCR0A_5	= 5	; 
OCR0A_6	= 6	; 
OCR0A_7	= 7	; 

; OCR0B - Timer/Counter0 Output Compare Register
OCR0B_0	= 0	; 
OCR0B_1	= 1	; 
OCR0B_2	= 2	; 
OCR0B_3	= 3	; 
OCR0B_4	= 4	; 
OCR0B_5	= 5	; 
OCR0B_6	= 6	; 
OCR0B_7	= 7	; 

; GTCCR - General Timer/Counter Control Register
PSR10	= 0	; Prescaler Reset Timer/Counter1 and Timer/Counter0
ICPSEL1	= 6	; Timer1 Input Capture Selection Bit
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_1 **************
; TIMSK1 - Timer/Counter Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output CompareA Match Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output CompareB Match Interrupt Enable
ICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Output Compare Flag 1A
OCF1B	= 2	; Output Compare Flag 1B
ICF1	= 5	; Input Capture Flag 1

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode
WGM11	= 1	; Waveform Generation Mode
COM1B0	= 4	; Compare Output Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Comparet Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Prescaler source of Timer/Counter 1
CS11	= 1	; Prescaler source of Timer/Counter 1
CS12	= 2	; Prescaler source of Timer/Counter 1
WGM12	= 3	; Waveform Generation Mode
WGM13	= 4	; Waveform Generation Mode
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6	; 
FOC1A	= 7	; 

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0	; Prescaler Reset Timer/Counter1 and Timer/Counter0
;TSM	= 7	; Timer/Counter Synchronization Mode


; ***** AD_CONVERTER *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0	; Analog Channel and Gain Selection Bits
MUX1	= 1	; Analog Channel and Gain Selection Bits
MUX2	= 2	; Analog Channel and Gain Selection Bits
MUX3	= 3	; Analog Channel and Gain Selection Bits
MUX4	= 4	; Analog Channel and Gain Selection Bits
ADLAR	= 5	; Left Adjust Result
REFS0	= 6	; Reference Selection Bit 0
REFS1	= 7	; Reference Selection Bit 1

; ADCSRA - The ADC Control and Status register
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC Auto Trigger Enable
ADSC	= 6	; ADC Start Conversion
ADEN	= 7	; ADC Enable

; ADCH - ADC Data Register High Byte
ADCH0	= 0	; ADC Data Register High Byte Bit 0
ADCH1	= 1	; ADC Data Register High Byte Bit 1
ADCH2	= 2	; ADC Data Register High Byte Bit 2
ADCH3	= 3	; ADC Data Register High Byte Bit 3
ADCH4	= 4	; ADC Data Register High Byte Bit 4
ADCH5	= 5	; ADC Data Register High Byte Bit 5
ADCH6	= 6	; ADC Data Register High Byte Bit 6
ADCH7	= 7	; ADC Data Register High Byte Bit 7

; ADCL - ADC Data Register Low Byte
ADCL0	= 0	; ADC Data Register Low Byte Bit 0
ADCL1	= 1	; ADC Data Register Low Byte Bit 1
ADCL2	= 2	; ADC Data Register Low Byte Bit 2
ADCL3	= 3	; ADC Data Register Low Byte Bit 3
ADCL4	= 4	; ADC Data Register Low Byte Bit 4
ADCL5	= 5	; ADC Data Register Low Byte Bit 5
ADCL6	= 6	; ADC Data Register Low Byte Bit 6
ADCL7	= 7	; ADC Data Register Low Byte Bit 7

; ADCSRB - ADC Control and Status Register B
ADTS0	= 0	; ADC Auto Trigger Source 0
ADTS1	= 1	; ADC Auto Trigger Source 1
ADTS2	= 2	; ADC Auto Trigger Source 2
ADTS3	= 3	; ADC Auto Trigger Source 3
AREFEN	= 5	; Analog Reference pin Enable
ISRCEN	= 6	; Current Source Enable
ADHSM	= 7	; ADC High Speed Mode

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; ADC0 Digital input Disable
ADC1D	= 1	; ADC1 Digital input Disable
ADC2D	= 2	; ADC2 Digital input Disable
ADC3D	= 3	; ADC3 Digital input Disable
ADC4D	= 4	; ADC4 Digital input Disable
ADC5D	= 5	; ADC5 Digital input Disable
ADC6D	= 6	; ADC6 Digital input Disable
ADC7D	= 7	; ADC7 Digital input Disable

; DIDR1 - Digital Input Disable Register 0
ADC8D	= 0	; ADC8 Pin Digital input Disable
ADC9D	= 1	; ADC9 Pin Digital input Disable
ADC10D	= 2	; ADC10 Pin Digital input Disable
AMP0ND	= 3	; AMP0N Pin Digital input Disable
AMP0PD	= 4	; AMP0P Pin Digital input Disable
ACMP0D	= 5	; ACMP0 Pin Digital input Disable
AMP2PD	= 6	; AMP2P Pin Digital input Disable

; AMP0CSR - 
AMP0TS0	= 0	; 
AMP0TS1	= 1	; 
AMP0TS2	= 2	; 
AMPCMP0	= 3	; Amplifier 0 - Comparator 0 Connection
AMP0G0	= 4	; 
AMP0G1	= 5	; 
AMP0IS	= 6	; 
AMP0EN	= 7	; 

; AMP1CSR - 
AMP1TS0	= 0	; 
AMP1TS1	= 1	; 
AMP1TS2	= 2	; 
AMPCMP1	= 3	; Amplifier 1 - Comparator 1 Connection
AMP1G0	= 4	; 
AMP1G1	= 5	; 
AMP1IS	= 6	; 
AMP1EN	= 7	; 

; AMP2CSR - 
AMP2TS0	= 0	; 
AMP2TS1	= 1	; 
AMP2TS2	= 2	; 
AMPCMP2	= 3	; Amplifier 2 - Comparator 2 Connection
AMP2G0	= 4	; 
AMP2G1	= 5	; 
AMP2IS	= 6	; 
AMP2EN	= 7	; 


; ***** LINUART **********************
; LINCR - LIN Control Register
LCMD0	= 0	; LIN Command and Mode bit 0
LCMD1	= 1	; LIN Command and Mode bit 1
LCMD2	= 2	; LIN Command and Mode bit 2
LENA	= 3	; LIN or UART Enable
LCONF0	= 4	; LIN Configuration bit 0
LCONF1	= 5	; LIN Configuration bit 1
LIN13	= 6	; LIN Standard
LSWRES	= 7	; Software Reset

; LINSIR - LIN Status and Interrupt Register
LRXOK	= 0	; Receive Performed Interrupt
LTXOK	= 1	; Transmit Performed Interrupt
LIDOK	= 2	; Identifier Interrupt
LERR	= 3	; Error Interrupt
LBUSY	= 4	; Busy Signal
LIDST0	= 5	; Identifier Status bit 0
LIDST1	= 6	; Identifier Status bit 1
LIDST2	= 7	; Identifier Status bit 2

; LINENIR - LIN Enable Interrupt Register
LENRXOK	= 0	; Enable Receive Performed Interrupt
LENTXOK	= 1	; Enable Transmit Performed Interrupt
LENIDOK	= 2	; Enable Identifier Interrupt
LENERR	= 3	; Enable Error Interrupt

; LINERR - LIN Error Register
LBERR	= 0	; Bit Error Flag
LCERR	= 1	; Checksum Error Flag
LPERR	= 2	; Parity Error Flag
LSERR	= 3	; Synchronization Error Flag
LFERR	= 4	; Framing Error Flag
LOVERR	= 5	; Overrun Error Flag
LTOERR	= 6	; Frame Time Out Error Flag
LABORT	= 7	; Abort Flag

; LINBTR - LIN Bit Timing Register
LBT0	= 0	; LIN Bit Timing bit 0
LBT1	= 1	; LIN Bit Timing bit 1
LBT2	= 2	; LIN Bit Timing bit 2
LBT3	= 3	; LIN Bit Timing bit 3
LBT4	= 4	; LIN Bit Timing bit 4
LBT5	= 5	; LIN Bit Timing bit 5
LDISR	= 7	; Disable Bit Timing Resynchronization

; LINBRRL - LIN Baud Rate Low Register
LDIV0	= 0	; 
LDIV1	= 1	; 
LDIV2	= 2	; 
LDIV3	= 3	; 
LDIV4	= 4	; 
LDIV5	= 5	; 
LDIV6	= 6	; 
LDIV7	= 7	; 

; LINBRRH - LIN Baud Rate High Register
LDIV8	= 0	; 
LDIV9	= 1	; 
LDIV10	= 2	; 
LDIV11	= 3	; 

; LINDLR - LIN Data Length Register
LRXDL0	= 0	; LIN Receive Data Length bit 0
LRXDL1	= 1	; LIN Receive Data Length bit 1
LRXDL2	= 2	; LIN Receive Data Length bit 2
LRXDL3	= 3	; LIN Receive Data Length bit 3
LTXDL0	= 4	; LIN Transmit Data Length bit 0
LTXDL1	= 5	; LIN Transmit Data Length bit 1
LTXDL2	= 6	; LIN Transmit Data Length bit 2
LTXDL3	= 7	; LIN Transmit Data Length bit 3

; LINIDR - LIN Identifier Register
LID0	= 0	; Identifier bit 0
LID1	= 1	; Identifier bit 1
LID2	= 2	; Identifier bit 2
LID3	= 3	; Identifier bit 3
LID4	= 4	; Identifier bit 4 or Data Length bit 0
LID5	= 5	; Identifier bit 5 or Data Length bit 1
LP0	= 6	; Parity bit 0
LP1	= 7	; Parity bit 1

; LINSEL - LIN Data Buffer Selection Register
LINDX0	= 0	; FIFO LIN Data Buffer Index bit 0
LINDX1	= 1	; FIFO LIN Data Buffer Index bit 1
LINDX2	= 2	; FIFO LIN Data Buffer Index bit 2
LAINC	= 3	; Auto Increment of Data Buffer Index (Active Low)

; LINDAT - LIN Data Register
LDATA0	= 0	; 
LDATA1	= 1	; 
LDATA2	= 2	; 
LDATA3	= 3	; 
LDATA4	= 4	; 
LDATA5	= 5	; 
LDATA6	= 6	; 
LDATA7	= 7	; 


; ***** SPI **************************
; SPDR - SPI Data Register
SPDR0	= 0	; SPI Data Register bit 0
SPDR1	= 1	; SPI Data Register bit 1
SPDR2	= 2	; SPI Data Register bit 2
SPDR3	= 3	; SPI Data Register bit 3
SPDR4	= 4	; SPI Data Register bit 4
SPDR5	= 5	; SPI Data Register bit 5
SPDR6	= 6	; SPI Data Register bit 6
SPDR7	= 7	; SPI Data Register bit 7

; SPSR - SPI Status Register
SPI2X	= 0	; Double SPI Speed Bit
WCOL	= 6	; Write Collision Flag
SPIF	= 7	; SPI Interrupt Flag

; SPCR - SPI Control Register
SPR0	= 0	; SPI Clock Rate Select 0
SPR1	= 1	; SPI Clock Rate Select 1
CPHA	= 2	; Clock Phase
CPOL	= 3	; Clock polarity
MSTR	= 4	; Master/Slave Select
DORD	= 5	; Data Order
SPE	= 6	; SPI Enable
SPIE	= 7	; SPI Interrupt Enable


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


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register
ISC00	= 0	; External Interrupt Sense Control 0 Bit 0
ISC01	= 1	; External Interrupt Sense Control 0 Bit 1
ISC10	= 2	; External Interrupt Sense Control 1 Bit 0
ISC11	= 3	; External Interrupt Sense Control 1 Bit 1
ISC20	= 4	; External Interrupt Sense Control Bit
ISC21	= 5	; External Interrupt Sense Control Bit
ISC30	= 6	; External Interrupt Sense Control Bit
ISC31	= 7	; External Interrupt Sense Control Bit

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request 0 Enable
INT1	= 1	; External Interrupt Request 1 Enable
INT2	= 2	; External Interrupt Request 2 Enable
INT3	= 3	; External Interrupt Request 3 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag 0
INTF1	= 1	; External Interrupt Flag 1
INTF2	= 2	; External Interrupt Flag 2
INTF3	= 3	; External Interrupt Flag 3

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable 0
PCIE1	= 1	; Pin Change Interrupt Enable 1
PCIE2	= 2	; Pin Change Interrupt Enable 2
PCIE3	= 3	; Pin Change Interrupt Enable 3

; PCMSK3 - Pin Change Mask Register 3
PCINT24	= 0	; Pin Change Enable Mask 24
PCINT25	= 1	; Pin Change Enable Mask 25
PCINT26	= 2	; Pin Change Enable Mask 26

; PCMSK2 - Pin Change Mask Register 2
PCINT16	= 0	; Pin Change Enable Mask 16
PCINT17	= 1	; Pin Change Enable Mask 17
PCINT18	= 2	; Pin Change Enable Mask 18
PCINT19	= 3	; Pin Change Enable Mask 19
PCINT20	= 4	; Pin Change Enable Mask 20
PCINT21	= 5	; Pin Change Enable Mask 21
PCINT22	= 6	; Pin Change Enable Mask 22
PCINT23	= 7	; Pin Change Enable Mask 23

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0	; Pin Change Enable Mask 8
PCINT9	= 1	; Pin Change Enable Mask 9
PCINT10	= 2	; Pin Change Enable Mask 10
PCINT11	= 3	; Pin Change Enable Mask 11
PCINT12	= 4	; Pin Change Enable Mask 12
PCINT13	= 5	; Pin Change Enable Mask 13
PCINT14	= 6	; Pin Change Enable Mask 14
PCINT15	= 7	; Pin Change Enable Mask 15

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3
PCINT4	= 4	; Pin Change Enable Mask 4
PCINT5	= 5	; Pin Change Enable Mask 5
PCINT6	= 6	; Pin Change Enable Mask 6
PCINT7	= 7	; Pin Change Enable Mask 7

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0
PCIF1	= 1	; Pin Change Interrupt Flag 1
PCIF2	= 2	; Pin Change Interrupt Flag 2
PCIF3	= 3	; Pin Change Interrupt Flag 3


; ***** EEPROM ***********************
; EEDR - EEPROM Data Register
EEDR0	= 0	; EEPROM Data Register bit 0
EEDR1	= 1	; EEPROM Data Register bit 1
EEDR2	= 2	; EEPROM Data Register bit 2
EEDR3	= 3	; EEPROM Data Register bit 3
EEDR4	= 4	; EEPROM Data Register bit 4
EEDR5	= 5	; EEPROM Data Register bit 5
EEDR6	= 6	; EEPROM Data Register bit 6
EEDR7	= 7	; EEPROM Data Register bit 7

; EECR - EEPROM Control Register
EERE	= 0	; EEPROM Read Enable
EEWE	= 1	; EEPROM Write Enable
EEPE	= EEWE	; For compatibility
EEMWE	= 2	; EEPROM Master Write Enable
EEMPE	= EEMWE	; For compatibility
EERIE	= 3	; EEProm Ready Interrupt Enable
EEPM0	= 4	; 
EEPM1	= 5	; 



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
CKOUT	= 6	; Oscillator output option
CKDIV8	= 7	; Divide clock by 8

; HIGH fuse bits
BOOTRST	= 0	; Select Reset Vector
BOOTSZ0	= 1	; Select Boot Size
BOOTSZ1	= 2	; Select Boot Size
EESAVE	= 3	; EEPROM memory is preserved through chip erase
WDTON	= 4	; Watchdog timer always on
SPIEN	= 5	; Enable Serial programming and Data Downloading
DWEN	= 6	; DebugWIRE Enable
RSTDISBL	= 7	; External Reset Disable

; EXTENDED fuse bits
BODLEVEL0	= 0	; Brown-out Detector Trigger Level
BODLEVEL1	= 1	; Brown-out Detector Trigger Level
BODLEVEL2	= 2	; Brown-out Detector Trigger Level
PSCRVB	= 3	; PSC Outputs xB Reset Value
PSCRVA	= 4	; PSC Outputs xA Reset Value
PSCRB	= 5	; PSC Reset Behavior



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x7fff	; Note: Word address
IOEND	= 0x00ff
SRAM_START	= 0x0100
SRAM_SIZE	= 4096
RAMEND	= 0x10ff
XRAMEND	= 0x0000
E2END	= 0x07ff
EEPROMEND	= 0x07ff
EEADRBITS	= 11



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x7000
NRWW_STOP_ADDR	= 0x7fff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x6fff
PAGESIZE	= 128
FIRSTBOOTSTART	= 0x7e00
SECONDBOOTSTART	= 0x7c00
THIRDBOOTSTART	= 0x7800
FOURTHBOOTSTART	= 0x7000
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
ACI0addr	= 0x0002	; Analog Comparator 0
ACI1addr	= 0x0004	; Analog Comparator 1
ACI2addr	= 0x0006	; Analog Comparator 2
ACI3addr	= 0x0008	; Analog Comparator 3
PSC_FAULTaddr	= 0x000a	; PSC Fault
PSC_ECaddr	= 0x000c	; PSC End of Cycle
INT0addr	= 0x000e	; External Interrupt Request 0
INT1addr	= 0x0010	; External Interrupt Request 1
INT2addr	= 0x0012	; External Interrupt Request 2
INT3addr	= 0x0014	; External Interrupt Request 3
ICP1addr	= 0x0016	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0018	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x001a	; Timer/Counter1 Compare Match B
OVF1addr	= 0x001c	; Timer1/Counter1 Overflow
OC0Aaddr	= 0x001e	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x0020	; Timer/Counter0 Compare Match B
OVF0addr	= 0x0022	; Timer/Counter0 Overflow
CAN_INTaddr	= 0x0024	; CAN MOB, Burst, General Errors
CAN_TOVFaddr	= 0x0026	; CAN Timer Overflow
LIN_TCaddr	= 0x0028	; LIN Transfer Complete
LIN_ERRaddr	= 0x002a	; LIN Error
PCI0addr	= 0x002c	; Pin Change Interrupt Request 0
PCI1addr	= 0x002e	; Pin Change Interrupt Request 1
PCI2addr	= 0x0030	; Pin Change Interrupt Request 2
PCI3addr	= 0x0032	; Pin Change Interrupt Request 3
SPIaddr	= 0x0034	; SPI Serial Transfer Complete
ADCCaddr	= 0x0036	; ADC Conversion Complete
WDTaddr	= 0x0038	; Watchdog Time-Out Interrupt
ERDYaddr	= 0x003a	; EEPROM Ready
SPMRaddr	= 0x003c	; Store Program Memory Read

INT_VECTORS_SIZE	= 62	; size in words


; ***** END OF FILE ******************************************************
