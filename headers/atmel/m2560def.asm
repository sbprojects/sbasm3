;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m2560def.asm"
;* Title             : Register/Bit Definitions for the ATmega2560
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega2560
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
; device ATmega2560

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x98
SIGNATURE_002	= 0x01

                .CR     avr
                .FA     enhanced4m
				.MS		$20000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
UDR3	= 0x136	; MEMORY MAPPED
UBRR3L	= 0x134	; MEMORY MAPPED
UBRR3H	= 0x135	; MEMORY MAPPED
UCSR3C	= 0x132	; MEMORY MAPPED
UCSR3B	= 0x131	; MEMORY MAPPED
UCSR3A	= 0x130	; MEMORY MAPPED
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
UDR2	= 0xd6	; MEMORY MAPPED
UBRR2L	= 0xd4	; MEMORY MAPPED
UBRR2H	= 0xd5	; MEMORY MAPPED
UCSR2C	= 0xd2	; MEMORY MAPPED
UCSR2B	= 0xd1	; MEMORY MAPPED
UCSR2A	= 0xd0	; MEMORY MAPPED
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
XMCRB	= 0x75	; MEMORY MAPPED
XMCRA	= 0x74	; MEMORY MAPPED
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
OSCCAL	= 0x66	; MEMORY MAPPED
PRR1	= 0x65	; MEMORY MAPPED
PRR0	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
EIND	= 0x3c
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
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
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
; UDR0 - USART I/O Data Register
UDR0_0	= 0	; USART I/O Data Register bit 0
UDR0_1	= 1	; USART I/O Data Register bit 1
UDR0_2	= 2	; USART I/O Data Register bit 2
UDR0_3	= 3	; USART I/O Data Register bit 3
UDR0_4	= 4	; USART I/O Data Register bit 4
UDR0_5	= 5	; USART I/O Data Register bit 5
UDR0_6	= 6	; USART I/O Data Register bit 6
UDR0_7	= 7	; USART I/O Data Register bit 7

; UCSR0A - USART Control and Status Register A
MPCM0	= 0	; Multi-processor Communication Mode
U2X0	= 1	; Double the USART transmission speed
UPE0	= 2	; Parity Error
DOR0	= 3	; Data overRun
FE0	= 4	; Framing Error
UDRE0	= 5	; USART Data Register Empty
TXC0	= 6	; USART Transmitt Complete
RXC0	= 7	; USART Receive Complete

; UCSR0B - USART Control and Status Register B
TXB80	= 0	; Transmit Data Bit 8
RXB80	= 1	; Receive Data Bit 8
UCSZ02	= 2	; Character Size
TXEN0	= 3	; Transmitter Enable
RXEN0	= 4	; Receiver Enable
UDRIE0	= 5	; USART Data register Empty Interrupt Enable
TXCIE0	= 6	; TX Complete Interrupt Enable
RXCIE0	= 7	; RX Complete Interrupt Enable

; UCSR0C - USART Control and Status Register C
UCPOL0	= 0	; Clock Polarity
UCSZ00	= 1	; Character Size
UCPHA0	= UCSZ00	; For compatibility
UCSZ01	= 2	; Character Size
UDORD0	= UCSZ01	; For compatibility
USBS0	= 3	; Stop Bit Select
UPM00	= 4	; Parity Mode Bit 0
UPM01	= 5	; Parity Mode Bit 1
UMSEL00	= 6	; USART Mode Select
UMSEL0	= UMSEL00	; For compatibility
UMSEL01	= 7	; USART Mode Select
UMSEL1	= UMSEL01	; For compatibility

; UBRR0H - USART Baud Rate Register High Byte
UBRR8	= 0	; USART Baud Rate Register bit 8
UBRR9	= 1	; USART Baud Rate Register bit 9
UBRR10	= 2	; USART Baud Rate Register bit 10
UBRR11	= 3	; USART Baud Rate Register bit 11

; UBRR0L - USART Baud Rate Register Low Byte
_UBRR0	= 0	; USART Baud Rate Register bit 0
_UBRR1	= 1	; USART Baud Rate Register bit 1
UBRR2	= 2	; USART Baud Rate Register bit 2
UBRR3	= 3	; USART Baud Rate Register bit 3
UBRR4	= 4	; USART Baud Rate Register bit 4
UBRR5	= 5	; USART Baud Rate Register bit 5
UBRR6	= 6	; USART Baud Rate Register bit 6
UBRR7	= 7	; USART Baud Rate Register bit 7


; ***** TWI **************************
; TWAMR - TWI (Slave) Address Mask Register
TWAM0	= 1	; 
TWAMR0	= TWAM0	; For compatibility
TWAM1	= 2	; 
TWAMR1	= TWAM1	; For compatibility
TWAM2	= 3	; 
TWAMR2	= TWAM2	; For compatibility
TWAM3	= 4	; 
TWAMR3	= TWAM3	; For compatibility
TWAM4	= 5	; 
TWAMR4	= TWAM4	; For compatibility
TWAM5	= 6	; 
TWAMR5	= TWAM5	; For compatibility
TWAM6	= 7	; 
TWAMR6	= TWAM6	; For compatibility

; TWBR - TWI Bit Rate register
TWBR0	= 0	; 
TWBR1	= 1	; 
TWBR2	= 2	; 
TWBR3	= 3	; 
TWBR4	= 4	; 
TWBR5	= 5	; 
TWBR6	= 6	; 
TWBR7	= 7	; 

; TWCR - TWI Control Register
TWIE	= 0	; TWI Interrupt Enable
TWEN	= 2	; TWI Enable Bit
TWWC	= 3	; TWI Write Collition Flag
TWSTO	= 4	; TWI Stop Condition Bit
TWSTA	= 5	; TWI Start Condition Bit
TWEA	= 6	; TWI Enable Acknowledge Bit
TWINT	= 7	; TWI Interrupt Flag

; TWSR - TWI Status Register
TWPS0	= 0	; TWI Prescaler
TWPS1	= 1	; TWI Prescaler
TWS3	= 3	; TWI Status
TWS4	= 4	; TWI Status
TWS5	= 5	; TWI Status
TWS6	= 6	; TWI Status
TWS7	= 7	; TWI Status

; TWDR - TWI Data register
TWD0	= 0	; TWI Data Register Bit 0
TWD1	= 1	; TWI Data Register Bit 1
TWD2	= 2	; TWI Data Register Bit 2
TWD3	= 3	; TWI Data Register Bit 3
TWD4	= 4	; TWI Data Register Bit 4
TWD5	= 5	; TWI Data Register Bit 5
TWD6	= 6	; TWI Data Register Bit 6
TWD7	= 7	; TWI Data Register Bit 7

; TWAR - TWI (Slave) Address register
TWGCE	= 0	; TWI General Call Recognition Enable Bit
TWA0	= 1	; TWI (Slave) Address register Bit 0
TWA1	= 2	; TWI (Slave) Address register Bit 1
TWA2	= 3	; TWI (Slave) Address register Bit 2
TWA3	= 4	; TWI (Slave) Address register Bit 3
TWA4	= 5	; TWI (Slave) Address register Bit 4
TWA5	= 6	; TWI (Slave) Address register Bit 5
TWA6	= 7	; TWI (Slave) Address register Bit 6


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


; ***** PORTA ************************
; PORTA - Port A Data Register
PORTA0	= 0	; Port A Data Register bit 0
PA0	= 0	; For compatibility
PORTA1	= 1	; Port A Data Register bit 1
PA1	= 1	; For compatibility
PORTA2	= 2	; Port A Data Register bit 2
PA2	= 2	; For compatibility
PORTA3	= 3	; Port A Data Register bit 3
PA3	= 3	; For compatibility
PORTA4	= 4	; Port A Data Register bit 4
PA4	= 4	; For compatibility
PORTA5	= 5	; Port A Data Register bit 5
PA5	= 5	; For compatibility
PORTA6	= 6	; Port A Data Register bit 6
PA6	= 6	; For compatibility
PORTA7	= 7	; Port A Data Register bit 7
PA7	= 7	; For compatibility

; DDRA - Port A Data Direction Register
DDA0	= 0	; Data Direction Register, Port A, bit 0
DDA1	= 1	; Data Direction Register, Port A, bit 1
DDA2	= 2	; Data Direction Register, Port A, bit 2
DDA3	= 3	; Data Direction Register, Port A, bit 3
DDA4	= 4	; Data Direction Register, Port A, bit 4
DDA5	= 5	; Data Direction Register, Port A, bit 5
DDA6	= 6	; Data Direction Register, Port A, bit 6
DDA7	= 7	; Data Direction Register, Port A, bit 7

; PINA - Port A Input Pins
PINA0	= 0	; Input Pins, Port A bit 0
PINA1	= 1	; Input Pins, Port A bit 1
PINA2	= 2	; Input Pins, Port A bit 2
PINA3	= 3	; Input Pins, Port A bit 3
PINA4	= 4	; Input Pins, Port A bit 4
PINA5	= 5	; Input Pins, Port A bit 5
PINA6	= 6	; Input Pins, Port A bit 6
PINA7	= 7	; Input Pins, Port A bit 7


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


; ***** PORTE ************************
; PORTE - Data Register, Port E
PORTE0	= 0	; 
PE0	= 0	; For compatibility
PORTE1	= 1	; 
PE1	= 1	; For compatibility
PORTE2	= 2	; 
PE2	= 2	; For compatibility
PORTE3	= 3	; 
PE3	= 3	; For compatibility
PORTE4	= 4	; 
PE4	= 4	; For compatibility
PORTE5	= 5	; 
PE5	= 5	; For compatibility
PORTE6	= 6	; 
PE6	= 6	; For compatibility
PORTE7	= 7	; 
PE7	= 7	; For compatibility

; DDRE - Data Direction Register, Port E
DDE0	= 0	; 
DDE1	= 1	; 
DDE2	= 2	; 
DDE3	= 3	; 
DDE4	= 4	; 
DDE5	= 5	; 
DDE6	= 6	; 
DDE7	= 7	; 

; PINE - Input Pins, Port E
PINE0	= 0	; 
PINE1	= 1	; 
PINE2	= 2	; 
PINE3	= 3	; 
PINE4	= 4	; 
PINE5	= 5	; 
PINE6	= 6	; 
PINE7	= 7	; 


; ***** PORTF ************************
; PORTF - Data Register, Port F
PORTF0	= 0	; 
PF0	= 0	; For compatibility
PORTF1	= 1	; 
PF1	= 1	; For compatibility
PORTF2	= 2	; 
PF2	= 2	; For compatibility
PORTF3	= 3	; 
PF3	= 3	; For compatibility
PORTF4	= 4	; 
PF4	= 4	; For compatibility
PORTF5	= 5	; 
PF5	= 5	; For compatibility
PORTF6	= 6	; 
PF6	= 6	; For compatibility
PORTF7	= 7	; 
PF7	= 7	; For compatibility

; DDRF - Data Direction Register, Port F
DDF0	= 0	; 
DDF1	= 1	; 
DDF2	= 2	; 
DDF3	= 3	; 
DDF4	= 4	; 
DDF5	= 5	; 
DDF6	= 6	; 
DDF7	= 7	; 

; PINF - Input Pins, Port F
PINF0	= 0	; 
PINF1	= 1	; 
PINF2	= 2	; 
PINF3	= 3	; 
PINF4	= 4	; 
PINF5	= 5	; 
PINF6	= 6	; 
PINF7	= 7	; 


; ***** PORTG ************************
; PORTG - Data Register, Port G
PORTG0	= 0	; 
PG0	= 0	; For compatibility
PORTG1	= 1	; 
PG1	= 1	; For compatibility
PORTG2	= 2	; 
PG2	= 2	; For compatibility
PORTG3	= 3	; 
PG3	= 3	; For compatibility
PORTG4	= 4	; 
PG4	= 4	; For compatibility
PORTG5	= 5	; 
PG5	= 5	; For compatibility

; DDRG - Data Direction Register, Port G
DDG0	= 0	; 
DDG1	= 1	; 
DDG2	= 2	; 
DDG3	= 3	; 
DDG4	= 4	; 
DDG5	= 5	; 

; PING - Input Pins, Port G
PING0	= 0	; 
PING1	= 1	; 
PING2	= 2	; 
PING3	= 3	; 
PING4	= 4	; 
PING5	= 5	; 


; ***** PORTH ************************
; PORTH - PORT H Data Register
PORTH0	= 0	; PORT H Data Register bit 0
PH0	= 0	; For compatibility
PORTH1	= 1	; PORT H Data Register bit 1
PH1	= 1	; For compatibility
PORTH2	= 2	; PORT H Data Register bit 2
PH2	= 2	; For compatibility
PORTH3	= 3	; PORT H Data Register bit 3
PH3	= 3	; For compatibility
PORTH4	= 4	; PORT H Data Register bit 4
PH4	= 4	; For compatibility
PORTH5	= 5	; PORT H Data Register bit 5
PH5	= 5	; For compatibility
PORTH6	= 6	; PORT H Data Register bit 6
PH6	= 6	; For compatibility
PORTH7	= 7	; PORT H Data Register bit 7
PH7	= 7	; For compatibility

; DDRH - PORT H Data Direction Register
DDH0	= 0	; PORT H Data Direction Register bit 0
DDH1	= 1	; PORT H Data Direction Register bit 1
DDH2	= 2	; PORT H Data Direction Register bit 2
DDH3	= 3	; PORT H Data Direction Register bit 3
DDH4	= 4	; PORT H Data Direction Register bit 4
DDH5	= 5	; PORT H Data Direction Register bit 5
DDH6	= 6	; PORT H Data Direction Register bit 6
DDH7	= 7	; PORT H Data Direction Register bit 7

; PINH - PORT H Input Pins
PINH0	= 0	; PORT H Input Pins bit 0
PINH1	= 1	; PORT H Input Pins bit 1
PINH2	= 2	; PORT H Input Pins bit 2
PINH3	= 3	; PORT H Input Pins bit 3
PINH4	= 4	; PORT H Input Pins bit 4
PINH5	= 5	; PORT H Input Pins bit 5
PINH6	= 6	; PORT H Input Pins bit 6
PINH7	= 7	; PORT H Input Pins bit 7


; ***** PORTJ ************************
; PORTJ - PORT J Data Register
PORTJ0	= 0	; PORT J Data Register bit 0
PJ0	= 0	; For compatibility
PORTJ1	= 1	; PORT J Data Register bit 1
PJ1	= 1	; For compatibility
PORTJ2	= 2	; PORT J Data Register bit 2
PJ2	= 2	; For compatibility
PORTJ3	= 3	; PORT J Data Register bit 3
PJ3	= 3	; For compatibility
PORTJ4	= 4	; PORT J Data Register bit 4
PJ4	= 4	; For compatibility
PORTJ5	= 5	; PORT J Data Register bit 5
PJ5	= 5	; For compatibility
PORTJ6	= 6	; PORT J Data Register bit 6
PJ6	= 6	; For compatibility
PORTJ7	= 7	; PORT J Data Register bit 7
PJ7	= 7	; For compatibility

; DDRJ - PORT J Data Direction Register
DDJ0	= 0	; PORT J Data Direction Register bit 0
DDJ1	= 1	; PORT J Data Direction Register bit 1
DDJ2	= 2	; PORT J Data Direction Register bit 2
DDJ3	= 3	; PORT J Data Direction Register bit 3
DDJ4	= 4	; PORT J Data Direction Register bit 4
DDJ5	= 5	; PORT J Data Direction Register bit 5
DDJ6	= 6	; PORT J Data Direction Register bit 6
DDJ7	= 7	; PORT J Data Direction Register bit 7

; PINJ - PORT J Input Pins
PINJ0	= 0	; PORT J Input Pins bit 0
PINJ1	= 1	; PORT J Input Pins bit 1
PINJ2	= 2	; PORT J Input Pins bit 2
PINJ3	= 3	; PORT J Input Pins bit 3
PINJ4	= 4	; PORT J Input Pins bit 4
PINJ5	= 5	; PORT J Input Pins bit 5
PINJ6	= 6	; PORT J Input Pins bit 6
PINJ7	= 7	; PORT J Input Pins bit 7


; ***** PORTK ************************
; PORTK - PORT K Data Register
PORTK0	= 0	; PORT K Data Register bit 0
PK0	= 0	; For compatibility
PORTK1	= 1	; PORT K Data Register bit 1
PK1	= 1	; For compatibility
PORTK2	= 2	; PORT K Data Register bit 2
PK2	= 2	; For compatibility
PORTK3	= 3	; PORT K Data Register bit 3
PK3	= 3	; For compatibility
PORTK4	= 4	; PORT K Data Register bit 4
PK4	= 4	; For compatibility
PORTK5	= 5	; PORT K Data Register bit 5
PK5	= 5	; For compatibility
PORTK6	= 6	; PORT K Data Register bit 6
PK6	= 6	; For compatibility
PORTK7	= 7	; PORT K Data Register bit 7
PK7	= 7	; For compatibility

; DDRK - PORT K Data Direction Register
DDK0	= 0	; PORT K Data Direction Register bit 0
DDK1	= 1	; PORT K Data Direction Register bit 1
DDK2	= 2	; PORT K Data Direction Register bit 2
DDK3	= 3	; PORT K Data Direction Register bit 3
DDK4	= 4	; PORT K Data Direction Register bit 4
DDK5	= 5	; PORT K Data Direction Register bit 5
DDK6	= 6	; PORT K Data Direction Register bit 6
DDK7	= 7	; PORT K Data Direction Register bit 7

; PINK - PORT K Input Pins
PINK0	= 0	; PORT K Input Pins bit 0
PINK1	= 1	; PORT K Input Pins bit 1
PINK2	= 2	; PORT K Input Pins bit 2
PINK3	= 3	; PORT K Input Pins bit 3
PINK4	= 4	; PORT K Input Pins bit 4
PINK5	= 5	; PORT K Input Pins bit 5
PINK6	= 6	; PORT K Input Pins bit 6
PINK7	= 7	; PORT K Input Pins bit 7


; ***** PORTL ************************
; PORTL - PORT L Data Register
PORTL0	= 0	; PORT L Data Register bit 0
PL0	= 0	; For compatibility
PORTL1	= 1	; PORT L Data Register bit 1
PL1	= 1	; For compatibility
PORTL2	= 2	; PORT L Data Register bit 2
PL2	= 2	; For compatibility
PORTL3	= 3	; PORT L Data Register bit 3
PL3	= 3	; For compatibility
PORTL4	= 4	; PORT L Data Register bit 4
PL4	= 4	; For compatibility
PORTL5	= 5	; PORT L Data Register bit 5
PL5	= 5	; For compatibility
PORTL6	= 6	; PORT L Data Register bit 6
PL6	= 6	; For compatibility
PORTL7	= 7	; PORT L Data Register bit 7
PL7	= 7	; For compatibility

; DDRL - PORT L Data Direction Register
DDL0	= 0	; PORT L Data Direction Register bit 0
DDL1	= 1	; PORT L Data Direction Register bit 1
DDL2	= 2	; PORT L Data Direction Register bit 2
DDL3	= 3	; PORT L Data Direction Register bit 3
DDL4	= 4	; PORT L Data Direction Register bit 4
DDL5	= 5	; PORT L Data Direction Register bit 5
DDL6	= 6	; PORT L Data Direction Register bit 6
DDL7	= 7	; PORT L Data Direction Register bit 7

; PINL - PORT L Input Pins
PINL0	= 0	; PORT L Input Pins bit 0
PINL1	= 1	; PORT L Input Pins bit 1
PINL2	= 2	; PORT L Input Pins bit 2
PINL3	= 3	; PORT L Input Pins bit 3
PINL4	= 4	; PORT L Input Pins bit 4
PINL5	= 5	; PORT L Input Pins bit 5
PINL6	= 6	; PORT L Input Pins bit 6
PINL7	= 7	; PORT L Input Pins bit 7


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
PSRSYNC	= 0	; Prescaler Reset Timer/Counter1 and Timer/Counter0
PSR10	= PSRSYNC	; For compatibility
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_2 **************
; TIMSK2 - Timer/Counter Interrupt Mask register
TOIE2	= 0	; Timer/Counter2 Overflow Interrupt Enable
TOIE2A	= TOIE2	; For compatibility
OCIE2A	= 1	; Timer/Counter2 Output Compare Match A Interrupt Enable
OCIE2B	= 2	; Timer/Counter2 Output Compare Match B Interrupt Enable

; TIFR2 - Timer/Counter Interrupt Flag Register
TOV2	= 0	; Timer/Counter2 Overflow Flag
OCF2A	= 1	; Output Compare Flag 2A
OCF2B	= 2	; Output Compare Flag 2B

; TCCR2A - Timer/Counter2 Control Register A
WGM20	= 0	; Waveform Genration Mode
WGM21	= 1	; Waveform Genration Mode
COM2B0	= 4	; Compare Output Mode bit 0
COM2B1	= 5	; Compare Output Mode bit 1
COM2A0	= 6	; Compare Output Mode bit 1
COM2A1	= 7	; Compare Output Mode bit 1

; TCCR2B - Timer/Counter2 Control Register B
CS20	= 0	; Clock Select bit 0
CS21	= 1	; Clock Select bit 1
CS22	= 2	; Clock Select bit 2
WGM22	= 3	; Waveform Generation Mode
FOC2B	= 6	; Force Output Compare B
FOC2A	= 7	; Force Output Compare A

; TCNT2 - Timer/Counter2
TCNT2_0	= 0	; Timer/Counter 2 bit 0
TCNT2_1	= 1	; Timer/Counter 2 bit 1
TCNT2_2	= 2	; Timer/Counter 2 bit 2
TCNT2_3	= 3	; Timer/Counter 2 bit 3
TCNT2_4	= 4	; Timer/Counter 2 bit 4
TCNT2_5	= 5	; Timer/Counter 2 bit 5
TCNT2_6	= 6	; Timer/Counter 2 bit 6
TCNT2_7	= 7	; Timer/Counter 2 bit 7

; OCR2A - Timer/Counter2 Output Compare Register A
OCR2A_0	= 0	; Timer/Counter2 Output Compare Register Bit 0
OCR2A_1	= 1	; Timer/Counter2 Output Compare Register Bit 1
OCR2A_2	= 2	; Timer/Counter2 Output Compare Register Bit 2
OCR2A_3	= 3	; Timer/Counter2 Output Compare Register Bit 3
OCR2A_4	= 4	; Timer/Counter2 Output Compare Register Bit 4
OCR2A_5	= 5	; Timer/Counter2 Output Compare Register Bit 5
OCR2A_6	= 6	; Timer/Counter2 Output Compare Register Bit 6
OCR2A_7	= 7	; Timer/Counter2 Output Compare Register Bit 7

; OCR2B - Timer/Counter2 Output Compare Register B
OCR2B_0	= 0	; Timer/Counter2 Output Compare Register Bit 0
OCR2B_1	= 1	; Timer/Counter2 Output Compare Register Bit 1
OCR2B_2	= 2	; Timer/Counter2 Output Compare Register Bit 2
OCR2B_3	= 3	; Timer/Counter2 Output Compare Register Bit 3
OCR2B_4	= 4	; Timer/Counter2 Output Compare Register Bit 4
OCR2B_5	= 5	; Timer/Counter2 Output Compare Register Bit 5
OCR2B_6	= 6	; Timer/Counter2 Output Compare Register Bit 6
OCR2B_7	= 7	; Timer/Counter2 Output Compare Register Bit 7

; ASSR - Asynchronous Status Register
TCR2BUB	= 0	; Timer/Counter Control Register2 Update Busy
TCR2AUB	= 1	; Timer/Counter Control Register2 Update Busy
OCR2BUB	= 2	; Output Compare Register 2 Update Busy
OCR2AUB	= 3	; Output Compare Register2 Update Busy
TCN2UB	= 4	; Timer/Counter2 Update Busy
AS2	= 5	; Asynchronous Timer/Counter2
EXCLK	= 6	; Enable External Clock Input

; GTCCR - General Timer Counter Control register
PSRASY	= 1	; Prescaler Reset Timer/Counter2
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


; ***** USART1 ***********************
; UDR1 - USART I/O Data Register
UDR1_0	= 0	; USART I/O Data Register bit 0
UDR1_1	= 1	; USART I/O Data Register bit 1
UDR1_2	= 2	; USART I/O Data Register bit 2
UDR1_3	= 3	; USART I/O Data Register bit 3
UDR1_4	= 4	; USART I/O Data Register bit 4
UDR1_5	= 5	; USART I/O Data Register bit 5
UDR1_6	= 6	; USART I/O Data Register bit 6
UDR1_7	= 7	; USART I/O Data Register bit 7

; UCSR1A - USART Control and Status Register A
MPCM1	= 0	; Multi-processor Communication Mode
U2X1	= 1	; Double the USART transmission speed
UPE1	= 2	; Parity Error
DOR1	= 3	; Data overRun
FE1	= 4	; Framing Error
UDRE1	= 5	; USART Data Register Empty
TXC1	= 6	; USART Transmitt Complete
RXC1	= 7	; USART Receive Complete

; UCSR1B - USART Control and Status Register B
TXB81	= 0	; Transmit Data Bit 8
RXB81	= 1	; Receive Data Bit 8
UCSZ12	= 2	; Character Size
TXEN1	= 3	; Transmitter Enable
RXEN1	= 4	; Receiver Enable
UDRIE1	= 5	; USART Data register Empty Interrupt Enable
TXCIE1	= 6	; TX Complete Interrupt Enable
RXCIE1	= 7	; RX Complete Interrupt Enable

; UCSR1C - USART Control and Status Register C
UCPOL1	= 0	; Clock Polarity
UCSZ10	= 1	; Character Size
UCPHA1	= UCSZ10	; For compatibility
UCSZ11	= 2	; Character Size
UDORD1	= UCSZ11	; For compatibility
USBS1	= 3	; Stop Bit Select
UPM10	= 4	; Parity Mode Bit 0
UPM11	= 5	; Parity Mode Bit 1
UMSEL10	= 6	; USART Mode Select
UMSEL11	= 7	; USART Mode Select

; UBRR1H - USART Baud Rate Register High Byte
UBRR_8	= 0	; USART Baud Rate Register bit 8
UBRR_9	= 1	; USART Baud Rate Register bit 9
UBRR_10	= 2	; USART Baud Rate Register bit 10
UBRR_11	= 3	; USART Baud Rate Register bit 11

; UBRR1L - USART Baud Rate Register Low Byte
UBRR_0	= 0	; USART Baud Rate Register bit 0
UBRR_1	= 1	; USART Baud Rate Register bit 1
UBRR_2	= 2	; USART Baud Rate Register bit 2
UBRR_3	= 3	; USART Baud Rate Register bit 3
UBRR_4	= 4	; USART Baud Rate Register bit 4
UBRR_5	= 5	; USART Baud Rate Register bit 5
UBRR_6	= 6	; USART Baud Rate Register bit 6
UBRR_7	= 7	; USART Baud Rate Register bit 7


; ***** EEPROM ***********************
; EEARH - EEPROM Address Register Low Byte
EEAR8	= 0	; EEPROM Read/Write Access Bit 8
EEAR9	= 1	; EEPROM Read/Write Access Bit 9
EEAR10	= 2	; EEPROM Read/Write Access Bit 10
EEAR11	= 3	; EEPROM Read/Write Access Bit 11

; EEARL - EEPROM Address Register Low Byte
EEAR0	= 0	; EEPROM Read/Write Access Bit 0
EEAR1	= 1	; EEPROM Read/Write Access Bit 1
EEAR2	= 2	; EEPROM Read/Write Access Bit 2
EEAR3	= 3	; EEPROM Read/Write Access Bit 3
EEAR4	= 4	; EEPROM Read/Write Access Bit 4
EEAR5	= 5	; EEPROM Read/Write Access Bit 5
EEAR6	= 6	; EEPROM Read/Write Access Bit 6
EEAR7	= 7	; EEPROM Read/Write Access Bit 7

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
EEPE	= 1	; EEPROM Write Enable
EEMPE	= 2	; EEPROM Master Write Enable
EERIE	= 3	; EEPROM Ready Interrupt Enable
EEPM0	= 4	; EEPROM Programming Mode Bit 0
EEPM1	= 5	; EEPROM Programming Mode Bit 1


; ***** TIMER_COUNTER_5 **************
; TIMSK5 - Timer/Counter5 Interrupt Mask Register
TOIE5	= 0	; Timer/Counter5 Overflow Interrupt Enable
OCIE5A	= 1	; Timer/Counter5 Output Compare A Match Interrupt Enable
OCIE5B	= 2	; Timer/Counter5 Output Compare B Match Interrupt Enable
OCIE5C	= 3	; Timer/Counter5 Output Compare C Match Interrupt Enable
ICIE5	= 5	; Timer/Counter5 Input Capture Interrupt Enable

; TIFR5 - Timer/Counter5 Interrupt Flag register
TOV5	= 0	; Timer/Counter5 Overflow Flag
OCF5A	= 1	; Output Compare Flag 5A
OCF5B	= 2	; Output Compare Flag 5B
OCF5C	= 3	; Output Compare Flag 5C
ICF5	= 5	; Input Capture Flag 5

; TCCR5A - Timer/Counter5 Control Register A
WGM50	= 0	; Waveform Generation Mode
WGM51	= 1	; Waveform Generation Mode
COM5C0	= 2	; Compare Output Mode 5C, bit 0
COM5C1	= 3	; Compare Output Mode 5C, bit 1
COM5B0	= 4	; Compare Output Mode 5B, bit 0
COM5B1	= 5	; Compare Output Mode 5B, bit 1
COM5A0	= 6	; Compare Output Mode 5A, bit 0
COM5A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR5B - Timer/Counter5 Control Register B
CS50	= 0	; Prescaler source of Timer/Counter 5
CS51	= 1	; Prescaler source of Timer/Counter 5
CS52	= 2	; Prescaler source of Timer/Counter 5
WGM52	= 3	; Waveform Generation Mode
WGM53	= 4	; Waveform Generation Mode
ICES5	= 6	; Input Capture 5 Edge Select
ICNC5	= 7	; Input Capture 5 Noise Canceler

; TCCR5C - Timer/Counter 5 Control Register C
FOC5C	= 5	; Force Output Compare 5C
FOC5B	= 6	; Force Output Compare 5B
FOC5A	= 7	; Force Output Compare 5A

; ICR5H - Timer/Counter5 Input Capture Register High Byte
ICR5H0	= 0	; Timer/Counter5 Input Capture Register High Byte bit 0
ICR5H1	= 1	; Timer/Counter5 Input Capture Register High Byte bit 1
ICR5H2	= 2	; Timer/Counter5 Input Capture Register High Byte bit 2
ICR5H3	= 3	; Timer/Counter5 Input Capture Register High Byte bit 3
ICR5H4	= 4	; Timer/Counter5 Input Capture Register High Byte bit 4
ICR5H5	= 5	; Timer/Counter5 Input Capture Register High Byte bit 5
ICR5H6	= 6	; Timer/Counter5 Input Capture Register High Byte bit 6
ICR5H7	= 7	; Timer/Counter5 Input Capture Register High Byte bit 7

; ICR5L - Timer/Counter5 Input Capture Register Low Byte
ICR5L0	= 0	; Timer/Counter5 Input Capture Register Low Byte bit 0
ICR5L1	= 1	; Timer/Counter5 Input Capture Register Low Byte bit 1
ICR5L2	= 2	; Timer/Counter5 Input Capture Register Low Byte bit 2
ICR5L3	= 3	; Timer/Counter5 Input Capture Register Low Byte bit 3
ICR5L4	= 4	; Timer/Counter5 Input Capture Register Low Byte bit 4
ICR5L5	= 5	; Timer/Counter5 Input Capture Register Low Byte bit 5
ICR5L6	= 6	; Timer/Counter5 Input Capture Register Low Byte bit 6
ICR5L7	= 7	; Timer/Counter5 Input Capture Register Low Byte bit 7


; ***** TIMER_COUNTER_4 **************
; TIMSK4 - Timer/Counter4 Interrupt Mask Register
TOIE4	= 0	; Timer/Counter4 Overflow Interrupt Enable
OCIE4A	= 1	; Timer/Counter4 Output Compare A Match Interrupt Enable
OCIE4B	= 2	; Timer/Counter4 Output Compare B Match Interrupt Enable
OCIE4C	= 3	; Timer/Counter4 Output Compare C Match Interrupt Enable
ICIE4	= 5	; Timer/Counter4 Input Capture Interrupt Enable

; TIFR4 - Timer/Counter4 Interrupt Flag register
TOV4	= 0	; Timer/Counter4 Overflow Flag
OCF4A	= 1	; Output Compare Flag 4A
OCF4B	= 2	; Output Compare Flag 4B
OCF4C	= 3	; Output Compare Flag 4C
ICF4	= 5	; Input Capture Flag 4

; TCCR4A - Timer/Counter4 Control Register A
WGM40	= 0	; Waveform Generation Mode
WGM41	= 1	; Waveform Generation Mode
COM4C0	= 2	; Compare Output Mode 4C, bit 0
COM4C1	= 3	; Compare Output Mode 4C, bit 1
COM4B0	= 4	; Compare Output Mode 4B, bit 0
COM4B1	= 5	; Compare Output Mode 4B, bit 1
COM4A0	= 6	; Compare Output Mode 4A, bit 0
COM4A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR4B - Timer/Counter4 Control Register B
CS40	= 0	; Prescaler source of Timer/Counter 4
CS41	= 1	; Prescaler source of Timer/Counter 4
CS42	= 2	; Prescaler source of Timer/Counter 4
WGM42	= 3	; Waveform Generation Mode
WGM43	= 4	; Waveform Generation Mode
ICES4	= 6	; Input Capture 4 Edge Select
ICNC4	= 7	; Input Capture 4 Noise Canceler

; TCCR4C - Timer/Counter 4 Control Register C
FOC4C	= 5	; Force Output Compare 4C
FOC4B	= 6	; Force Output Compare 4B
FOC4A	= 7	; Force Output Compare 4A


; ***** TIMER_COUNTER_3 **************
; TIMSK3 - Timer/Counter3 Interrupt Mask Register
TOIE3	= 0	; Timer/Counter3 Overflow Interrupt Enable
OCIE3A	= 1	; Timer/Counter3 Output Compare A Match Interrupt Enable
OCIE3B	= 2	; Timer/Counter3 Output Compare B Match Interrupt Enable
OCIE3C	= 3	; Timer/Counter3 Output Compare C Match Interrupt Enable
ICIE3	= 5	; Timer/Counter3 Input Capture Interrupt Enable

; TIFR3 - Timer/Counter3 Interrupt Flag register
TOV3	= 0	; Timer/Counter3 Overflow Flag
OCF3A	= 1	; Output Compare Flag 3A
OCF3B	= 2	; Output Compare Flag 3B
OCF3C	= 3	; Output Compare Flag 3C
ICF3	= 5	; Input Capture Flag 3

; TCCR3A - Timer/Counter3 Control Register A
WGM30	= 0	; Waveform Generation Mode
WGM31	= 1	; Waveform Generation Mode
COM3C0	= 2	; Compare Output Mode 3C, bit 0
COM3C1	= 3	; Compare Output Mode 3C, bit 1
COM3B0	= 4	; Compare Output Mode 3B, bit 0
COM3B1	= 5	; Compare Output Mode 3B, bit 1
COM3A0	= 6	; Compare Output Mode 3A, bit 0
COM3A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR3B - Timer/Counter3 Control Register B
CS30	= 0	; Prescaler source of Timer/Counter 3
CS31	= 1	; Prescaler source of Timer/Counter 3
CS32	= 2	; Prescaler source of Timer/Counter 3
WGM32	= 3	; Waveform Generation Mode
WGM33	= 4	; Waveform Generation Mode
ICES3	= 6	; Input Capture 3 Edge Select
ICNC3	= 7	; Input Capture 3 Noise Canceler

; TCCR3C - Timer/Counter 3 Control Register C
FOC3C	= 5	; Force Output Compare 3C
FOC3B	= 6	; Force Output Compare 3B
FOC3A	= 7	; Force Output Compare 3A


; ***** TIMER_COUNTER_1 **************
; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output Compare B Match Interrupt Enable
OCIE1C	= 3	; Timer/Counter1 Output Compare C Match Interrupt Enable
ICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter1 Interrupt Flag register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Output Compare Flag 1A
OCF1B	= 2	; Output Compare Flag 1B
OCF1C	= 3	; Output Compare Flag 1C
ICF1	= 5	; Input Capture Flag 1

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode
WGM11	= 1	; Waveform Generation Mode
COM1C0	= 2	; Compare Output Mode 1C, bit 0
COM1C1	= 3	; Compare Output Mode 1C, bit 1
COM1B0	= 4	; Compare Output Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Compare Output Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Prescaler source of Timer/Counter 1
CS11	= 1	; Prescaler source of Timer/Counter 1
CS12	= 2	; Prescaler source of Timer/Counter 1
WGM12	= 3	; Waveform Generation Mode
WGM13	= 4	; Waveform Generation Mode
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter 1 Control Register C
FOC1C	= 5	; Force Output Compare 1C
FOC1B	= 6	; Force Output Compare 1B
FOC1A	= 7	; Force Output Compare 1A


; ***** JTAG *************************
; OCDR - On-Chip Debug Related Register in I/O Memory
OCDR0	= 0	; On-Chip Debug Register Bit 0
OCDR1	= 1	; On-Chip Debug Register Bit 1
OCDR2	= 2	; On-Chip Debug Register Bit 2
OCDR3	= 3	; On-Chip Debug Register Bit 3
OCDR4	= 4	; On-Chip Debug Register Bit 4
OCDR5	= 5	; On-Chip Debug Register Bit 5
OCDR6	= 6	; On-Chip Debug Register Bit 6
OCDR7	= 7	; On-Chip Debug Register Bit 7
IDRD	= OCDR7	; For compatibility

; MCUCR - MCU Control Register
JTD	= 7	; JTAG Interface Disable

; MCUSR - MCU Status Register
JTRF	= 4	; JTAG Reset Flag


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register A
ISC00	= 0	; External Interrupt Sense Control Bit
ISC01	= 1	; External Interrupt Sense Control Bit
ISC10	= 2	; External Interrupt Sense Control Bit
ISC11	= 3	; External Interrupt Sense Control Bit
ISC20	= 4	; External Interrupt Sense Control Bit
ISC21	= 5	; External Interrupt Sense Control Bit
ISC30	= 6	; External Interrupt Sense Control Bit
ISC31	= 7	; External Interrupt Sense Control Bit

; EICRB - External Interrupt Control Register B
ISC40	= 0	; External Interrupt 7-4 Sense Control Bit
ISC41	= 1	; External Interrupt 7-4 Sense Control Bit
ISC50	= 2	; External Interrupt 7-4 Sense Control Bit
ISC51	= 3	; External Interrupt 7-4 Sense Control Bit
ISC60	= 4	; External Interrupt 7-4 Sense Control Bit
ISC61	= 5	; External Interrupt 7-4 Sense Control Bit
ISC70	= 6	; External Interrupt 7-4 Sense Control Bit
ISC71	= 7	; External Interrupt 7-4 Sense Control Bit

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request 0 Enable
INT1	= 1	; External Interrupt Request 1 Enable
INT2	= 2	; External Interrupt Request 2 Enable
INT3	= 3	; External Interrupt Request 3 Enable
INT4	= 4	; External Interrupt Request 4 Enable
INT5	= 5	; External Interrupt Request 5 Enable
INT6	= 6	; External Interrupt Request 6 Enable
INT7	= 7	; External Interrupt Request 7 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag 0
INTF1	= 1	; External Interrupt Flag 1
INTF2	= 2	; External Interrupt Flag 2
INTF3	= 3	; External Interrupt Flag 3
INTF4	= 4	; External Interrupt Flag 4
INTF5	= 5	; External Interrupt Flag 5
INTF6	= 6	; External Interrupt Flag 6
INTF7	= 7	; External Interrupt Flag 7

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable 0
PCIE1	= 1	; Pin Change Interrupt Enable 1
PCIE2	= 2	; Pin Change Interrupt Enable 2

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0
PCIF1	= 1	; Pin Change Interrupt Flag 1
PCIF2	= 2	; Pin Change Interrupt Flag 2

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
PUD	= 4	; Pull-up disable
;JTD	= 7	; JTAG Interface Disable

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
;JTRF	= 4	; JTAG Reset Flag

; XMCRA - External Memory Control Register A
SRW00	= 0	; Wait state select bit lower page
SRW01	= 1	; Wait state select bit lower page
SRW10	= 2	; Wait state select bit upper page
SRW11	= 3	; Wait state select bit upper page
SRL0	= 4	; Wait state page limit
SRL1	= 5	; Wait state page limit
SRL2	= 6	; Wait state page limit
SRE	= 7	; External SRAM Enable

; XMCRB - External Memory Control Register B
XMM0	= 0	; External Memory High Mask
XMM1	= 1	; External Memory High Mask
XMM2	= 2	; External Memory High Mask
XMBK	= 7	; External Memory Bus Keeper Enable

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

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

; RAMPZ - RAM Page Z Select Register
RAMPZ0	= 0	; RAM Page Z Select Register Bit 0
RAMPZ1	= 1	; RAM Page Z Select Register Bit 1

; EIND - Extended Indirect Register
EIND0	= 0	; Bit 0

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

; PRR1 - Power Reduction Register1
PRUSART1	= 0	; Power Reduction USART1
PRUSART2	= 1	; Power Reduction USART2
PRUSART3	= 2	; Power Reduction USART3
PRTIM3	= 3	; Power Reduction Timer/Counter3
PRTIM4	= 4	; Power Reduction Timer/Counter4
PRTIM5	= 5	; Power Reduction Timer/Counter5

; PRR0 - Power Reduction Register0
PRADC	= 0	; Power Reduction ADC
PRUSART0	= 1	; Power Reduction USART
PRSPI	= 2	; Power Reduction Serial Peripheral Interface
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRTIM0	= 5	; Power Reduction Timer/Counter0
PRTIM2	= 6	; Power Reduction Timer/Counter2
PRTWI	= 7	; Power Reduction TWI


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

; ADCSRA - The ADC Control and Status register A
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC  Auto Trigger Enable
ADSC	= 6	; ADC Start Conversion
ADEN	= 7	; ADC Enable

; ADCSRB - The ADC Control and Status register B
ADTS0	= 0	; ADC Auto Trigger Source bit 0
ADTS1	= 1	; ADC Auto Trigger Source bit 1
ADTS2	= 2	; ADC Auto Trigger Source bit 2
MUX5	= 3	; Analog Channel and Gain Selection Bits
;ACME	= 6	; 

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

; DIDR0 - Digital Input Disable Register
ADC0D	= 0	; 
ADC1D	= 1	; 
ADC2D	= 2	; 
ADC3D	= 3	; 
ADC4D	= 4	; 
ADC5D	= 5	; 
ADC6D	= 6	; 
ADC7D	= 7	; 

; DIDR2 - Digital Input Disable Register
ADC8D	= 0	; 
ADC9D	= 1	; 
ADC10D	= 2	; 
ADC11D	= 3	; 
ADC12D	= 4	; 
ADC13D	= 5	; 
ADC14D	= 6	; 
ADC15D	= 7	; 


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
BLBSET	= 3	; Boot Lock Bit Set
RWWSRE	= 4	; Read While Write section read enable
SIGRD	= 5	; Signature Row Read
RWWSB	= 6	; Read While Write Section Busy
SPMIE	= 7	; SPM Interrupt Enable


; ***** USART2 ***********************
; UDR2 - USART I/O Data Register
UDR2_0	= 0	; USART I/O Data Register bit 0
UDR2_1	= 1	; USART I/O Data Register bit 1
UDR2_2	= 2	; USART I/O Data Register bit 2
UDR2_3	= 3	; USART I/O Data Register bit 3
UDR2_4	= 4	; USART I/O Data Register bit 4
UDR2_5	= 5	; USART I/O Data Register bit 5
UDR2_6	= 6	; USART I/O Data Register bit 6
UDR2_7	= 7	; USART I/O Data Register bit 7

; UCSR2A - USART Control and Status Register A
MPCM2	= 0	; Multi-processor Communication Mode
U2X2	= 1	; Double the USART transmission speed
UPE2	= 2	; Parity Error
DOR2	= 3	; Data overRun
FE2	= 4	; Framing Error
UDRE2	= 5	; USART Data Register Empty
TXC2	= 6	; USART Transmitt Complete
RXC2	= 7	; USART Receive Complete

; UCSR2B - USART Control and Status Register B
TXB82	= 0	; Transmit Data Bit 8
RXB82	= 1	; Receive Data Bit 8
UCSZ22	= 2	; Character Size
TXEN2	= 3	; Transmitter Enable
RXEN2	= 4	; Receiver Enable
UDRIE2	= 5	; USART Data register Empty Interrupt Enable
TXCIE2	= 6	; TX Complete Interrupt Enable
RXCIE2	= 7	; RX Complete Interrupt Enable

; UCSR2C - USART Control and Status Register C
UCPOL2	= 0	; Clock Polarity
UCSZ20	= 1	; Character Size
UCSZ21	= 2	; Character Size
USBS2	= 3	; Stop Bit Select
UPM20	= 4	; Parity Mode Bit 0
UPM21	= 5	; Parity Mode Bit 1
UMSEL20	= 6	; USART Mode Select
UMSEL21	= 7	; USART Mode Select

; UBRR2H - USART Baud Rate Register High Byte
;UBRR8	= 0	; USART Baud Rate Register bit 8
;UBRR9	= 1	; USART Baud Rate Register bit 9
;UBRR10	= 2	; USART Baud Rate Register bit 10
;UBRR11	= 3	; USART Baud Rate Register bit 11

; UBRR2L - USART Baud Rate Register Low Byte
UBRR0	= 0	; USART Baud Rate Register bit 0
UBRR1	= 1	; USART Baud Rate Register bit 1
;UBRR2	= 2	; USART Baud Rate Register bit 2
;UBRR3	= 3	; USART Baud Rate Register bit 3
;UBRR4	= 4	; USART Baud Rate Register bit 4
;UBRR5	= 5	; USART Baud Rate Register bit 5
;UBRR6	= 6	; USART Baud Rate Register bit 6
;UBRR7	= 7	; USART Baud Rate Register bit 7


; ***** USART3 ***********************
; UDR3 - USART I/O Data Register
UDR3_0	= 0	; USART I/O Data Register bit 0
UDR3_1	= 1	; USART I/O Data Register bit 1
UDR3_2	= 2	; USART I/O Data Register bit 2
UDR3_3	= 3	; USART I/O Data Register bit 3
UDR3_4	= 4	; USART I/O Data Register bit 4
UDR3_5	= 5	; USART I/O Data Register bit 5
UDR3_6	= 6	; USART I/O Data Register bit 6
UDR3_7	= 7	; USART I/O Data Register bit 7

; UCSR3A - USART Control and Status Register A
MPCM3	= 0	; Multi-processor Communication Mode
U2X3	= 1	; Double the USART transmission speed
UPE3	= 2	; Parity Error
DOR3	= 3	; Data overRun
FE3	= 4	; Framing Error
UDRE3	= 5	; USART Data Register Empty
TXC3	= 6	; USART Transmitt Complete
RXC3	= 7	; USART Receive Complete

; UCSR3B - USART Control and Status Register B
TXB83	= 0	; Transmit Data Bit 8
RXB83	= 1	; Receive Data Bit 8
UCSZ32	= 2	; Character Size
TXEN3	= 3	; Transmitter Enable
RXEN3	= 4	; Receiver Enable
UDRIE3	= 5	; USART Data register Empty Interrupt Enable
TXCIE3	= 6	; TX Complete Interrupt Enable
RXCIE3	= 7	; RX Complete Interrupt Enable

; UCSR3C - USART Control and Status Register C
UCPOL3	= 0	; Clock Polarity
UCSZ30	= 1	; Character Size
UCSZ31	= 2	; Character Size
USBS3	= 3	; Stop Bit Select
UPM30	= 4	; Parity Mode Bit 0
UPM31	= 5	; Parity Mode Bit 1
UMSEL30	= 6	; USART Mode Select
UMSEL31	= 7	; USART Mode Select

; UBRR3H - USART Baud Rate Register High Byte
;UBRR8	= 0	; USART Baud Rate Register bit 8
;UBRR9	= 1	; USART Baud Rate Register bit 9
;UBRR10	= 2	; USART Baud Rate Register bit 10
;UBRR11	= 3	; USART Baud Rate Register bit 11

; UBRR3L - USART Baud Rate Register Low Byte
;UBRR0	= 0	; USART Baud Rate Register bit 0
;UBRR1	= 1	; USART Baud Rate Register bit 1
;UBRR2	= 2	; USART Baud Rate Register bit 2
;UBRR3	= 3	; USART Baud Rate Register bit 3
;UBRR4	= 4	; USART Baud Rate Register bit 4
;UBRR5	= 5	; USART Baud Rate Register bit 5
;UBRR6	= 6	; USART Baud Rate Register bit 6
;UBRR7	= 7	; USART Baud Rate Register bit 7



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
FLASHEND	= 0x1ffff	; Note: Word address
IOEND	= 0x01ff
SRAM_START	= 0x0200
SRAM_SIZE	= 8192
RAMEND	= 0x21ff
XRAMEND	= 0xffff
E2END	= 0x0fff
EEPROMEND	= 0x0fff
EEADRBITS	= 12



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x1f000
NRWW_STOP_ADDR	= 0x1ffff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x1efff
PAGESIZE	= 128
FIRSTBOOTSTART	= 0x1fe00
SECONDBOOTSTART	= 0x1fc00
THIRDBOOTSTART	= 0x1f800
FOURTHBOOTSTART	= 0x1f000
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

INT_VECTORS_SIZE	= 114	; size in words


; ***** END OF FILE ******************************************************
