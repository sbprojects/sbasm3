;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m64Adef.asm"
;* Title             : Register/Bit Definitions for the ATmega64A
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega64A
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
; device ATmega64A

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x96
SIGNATURE_002	= 0x02

                .CR     avr
                .FA     enhanced128k
				.MS		$8000


; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
UCSR1C	= 0x9d	; MEMORY MAPPED
UDR1	= 0x9c	; MEMORY MAPPED
UCSR1A	= 0x9b	; MEMORY MAPPED
UCSR1B	= 0x9a	; MEMORY MAPPED
UBRR1H	= 0x98	; MEMORY MAPPED
UBRR1L	= 0x99	; MEMORY MAPPED
UCSR0C	= 0x95	; MEMORY MAPPED
UBRR0H	= 0x90	; MEMORY MAPPED
ADCSRB	= 0x8e	; MEMORY MAPPED
TCCR3C	= 0x8c	; MEMORY MAPPED
TCCR3A	= 0x8b	; MEMORY MAPPED
TCCR3B	= 0x8a	; MEMORY MAPPED
TCNT3L	= 0x88	; MEMORY MAPPED
TCNT3H	= 0x89	; MEMORY MAPPED
OCR3AL	= 0x86	; MEMORY MAPPED
OCR3AH	= 0x87	; MEMORY MAPPED
OCR3BL	= 0x84	; MEMORY MAPPED
OCR3BH	= 0x85	; MEMORY MAPPED
OCR3CL	= 0x82	; MEMORY MAPPED
OCR3CH	= 0x83	; MEMORY MAPPED
ICR3L	= 0x80	; MEMORY MAPPED
ICR3H	= 0x81	; MEMORY MAPPED
ETIMSK	= 0x7d	; MEMORY MAPPED
ETIFR	= 0x7c	; MEMORY MAPPED
TCCR1C	= 0x7a	; MEMORY MAPPED
OCR1CL	= 0x78	; MEMORY MAPPED
OCR1CH	= 0x79	; MEMORY MAPPED
TWCR	= 0x74	; MEMORY MAPPED
TWDR	= 0x73	; MEMORY MAPPED
TWAR	= 0x72	; MEMORY MAPPED
TWSR	= 0x71	; MEMORY MAPPED
TWBR	= 0x70	; MEMORY MAPPED
OSCCAL	= 0x6f	; MEMORY MAPPED
XMCRA	= 0x6d	; MEMORY MAPPED
XMCRB	= 0x6c	; MEMORY MAPPED
EICRA	= 0x6a	; MEMORY MAPPED
SPMCSR	= 0x68	; MEMORY MAPPED
PORTG	= 0x65	; MEMORY MAPPED
DDRG	= 0x64	; MEMORY MAPPED
PING	= 0x63	; MEMORY MAPPED
PORTF	= 0x62	; MEMORY MAPPED
DDRF	= 0x61	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
XDIV	= 0x3c
EICRB	= 0x3a
EIMSK	= 0x39
EIFR	= 0x38
TIMSK	= 0x37
TIFR	= 0x36
MCUCR	= 0x35
MCUCSR	= 0x34
TCCR0	= 0x33
TCNT0	= 0x32
OCR0	= 0x31
ASSR	= 0x30
TCCR1A	= 0x2f
TCCR1B	= 0x2e
TCNT1L	= 0x2c
TCNT1H	= 0x2d
OCR1AL	= 0x2a
OCR1AH	= 0x2b
OCR1BL	= 0x28
OCR1BH	= 0x29
ICR1L	= 0x26
ICR1H	= 0x27
TCCR2	= 0x25
TCNT2	= 0x24
OCR2	= 0x23
OCDR	= 0x22
WDTCR	= 0x21
SFIOR	= 0x20
EEARL	= 0x1e
EEARH	= 0x1f
EEDR	= 0x1d
EECR	= 0x1c
PORTA	= 0x1b
DDRA	= 0x1a
PINA	= 0x19
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
PORTC	= 0x15
DDRC	= 0x14
PINC	= 0x13
PORTD	= 0x12
DDRD	= 0x11
PIND	= 0x10
SPDR	= 0x0f
SPSR	= 0x0e
SPCR	= 0x0d
UDR0	= 0x0c
UCSR0A	= 0x0b
UCSR0B	= 0x0a
UBRR0L	= 0x09
ACSR	= 0x08
ADMUX	= 0x07
ADCSRA	= 0x06
ADCH	= 0x05
ADCL	= 0x04
PORTE	= 0x03
DDRE	= 0x02
PINE	= 0x01
PINF	= 0x00


; ***** BIT DEFINITIONS **************************************************

; ***** ANALOG_COMPARATOR ************
; SFIOR - Special Function IO Register
ACME	= 3	; Analog Comparator Multiplexer Enable

; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable


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
ADCSR	= ADCSRA	; For compatibility
ADPS0	= 0	; ADC  Prescaler Select Bits
ADPS1	= 1	; ADC  Prescaler Select Bits
ADPS2	= 2	; ADC  Prescaler Select Bits
ADIE	= 3	; ADC Interrupt Enable
ADIF	= 4	; ADC Interrupt Flag
ADATE	= 5	; ADC  Auto Trigger Enable
ADFR	= ADATE	; For compatibility
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

; ADCSRB - The ADC Control and Status register B
ADTS0	= 0	; ADC Auto Trigger Source bit 0
ADTS1	= 1	; ADC Auto Trigger Source bit 1
ADTS2	= 2	; ADC Auto Trigger Source bit 2


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


; ***** TWI **************************
; TWBR - TWI Bit Rate register
I2BR	= TWBR	; For compatibility
TWBR0	= 0	; 
TWBR1	= 1	; 
TWBR2	= 2	; 
TWBR3	= 3	; 
TWBR4	= 4	; 
TWBR5	= 5	; 
TWBR6	= 6	; 
TWBR7	= 7	; 

; TWCR - TWI Control Register
I2CR	= TWCR	; For compatibility
TWIE	= 0	; TWI Interrupt Enable
I2IE	= TWIE	; For compatibility
TWEN	= 2	; TWI Enable Bit
I2EN	= TWEN	; For compatibility
ENI2C	= TWEN	; For compatibility
TWWC	= 3	; TWI Write Collition Flag
I2WC	= TWWC	; For compatibility
TWSTO	= 4	; TWI Stop Condition Bit
I2STO	= TWSTO	; For compatibility
TWSTA	= 5	; TWI Start Condition Bit
I2STA	= TWSTA	; For compatibility
TWEA	= 6	; TWI Enable Acknowledge Bit
I2EA	= TWEA	; For compatibility
TWINT	= 7	; TWI Interrupt Flag
I2INT	= TWINT	; For compatibility

; TWSR - TWI Status Register
I2SR	= TWSR	; For compatibility
TWPS0	= 0	; TWI Prescaler
TWS0	= TWPS0	; For compatibility
I2GCE	= TWPS0	; For compatibility
TWPS1	= 1	; TWI Prescaler
TWS1	= TWPS1	; For compatibility
TWS3	= 3	; TWI Status
I2S3	= TWS3	; For compatibility
TWS4	= 4	; TWI Status
I2S4	= TWS4	; For compatibility
TWS5	= 5	; TWI Status
I2S5	= TWS5	; For compatibility
TWS6	= 6	; TWI Status
I2S6	= TWS6	; For compatibility
TWS7	= 7	; TWI Status
I2S7	= TWS7	; For compatibility

; TWDR - TWI Data register
I2DR	= TWDR	; For compatibility
TWD0	= 0	; TWI Data Register Bit 0
TWD1	= 1	; TWI Data Register Bit 1
TWD2	= 2	; TWI Data Register Bit 2
TWD3	= 3	; TWI Data Register Bit 3
TWD4	= 4	; TWI Data Register Bit 4
TWD5	= 5	; TWI Data Register Bit 5
TWD6	= 6	; TWI Data Register Bit 6
TWD7	= 7	; TWI Data Register Bit 7

; TWAR - TWI (Slave) Address register
I2AR	= TWAR	; For compatibility
TWGCE	= 0	; TWI General Call Recognition Enable Bit
TWA0	= 1	; TWI (Slave) Address register Bit 0
TWA1	= 2	; TWI (Slave) Address register Bit 1
TWA2	= 3	; TWI (Slave) Address register Bit 2
TWA3	= 4	; TWI (Slave) Address register Bit 3
TWA4	= 5	; TWI (Slave) Address register Bit 4
TWA5	= 6	; TWI (Slave) Address register Bit 5
TWA6	= 7	; TWI (Slave) Address register Bit 6


; ***** USART0 ***********************
; UDR0 - USART I/O Data Register
UDR00	= 0	; USART I/O Data Register bit 0
UDR01	= 1	; USART I/O Data Register bit 1
UDR02	= 2	; USART I/O Data Register bit 2
UDR03	= 3	; USART I/O Data Register bit 3
UDR04	= 4	; USART I/O Data Register bit 4
UDR05	= 5	; USART I/O Data Register bit 5
UDR06	= 6	; USART I/O Data Register bit 6
UDR07	= 7	; USART I/O Data Register bit 7

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
UCSZ2	= UCSZ02	; For compatibility
TXEN0	= 3	; Transmitter Enable
RXEN0	= 4	; Receiver Enable
UDRIE0	= 5	; USART Data register Empty Interrupt Enable
TXCIE0	= 6	; TX Complete Interrupt Enable
RXCIE0	= 7	; RX Complete Interrupt Enable

; UCSR0C - USART Control and Status Register C
UCPOL0	= 0	; Clock Polarity
UCSZ00	= 1	; Character Size
UCSZ01	= 2	; Character Size
USBS0	= 3	; Stop Bit Select
UPM00	= 4	; Parity Mode Bit 0
UPM01	= 5	; Parity Mode Bit 1
UMSEL0	= 6	; USART Mode Select

; UBRR0H - USART Baud Rate Register Hight Byte
UBRR8	= 0	; USART Baud Rate Register bit 8
UBRR9	= 1	; USART Baud Rate Register bit 9
UBRR10	= 2	; USART Baud Rate Register bit 10
UBRR11	= 3	; USART Baud Rate Register bit 11

; UBRR0L - USART Baud Rate Register Low Byte
UBRR0	= 0	; USART Baud Rate Register bit 0
UBRR1	= 1	; USART Baud Rate Register bit 1
UBRR2	= 2	; USART Baud Rate Register bit 2
UBRR3	= 3	; USART Baud Rate Register bit 3
UBRR4	= 4	; USART Baud Rate Register bit 4
UBRR5	= 5	; USART Baud Rate Register bit 5
UBRR6	= 6	; USART Baud Rate Register bit 6
UBRR7	= 7	; USART Baud Rate Register bit 7


; ***** USART1 ***********************
; UDR1 - USART I/O Data Register
UDR10	= 0	; USART I/O Data Register bit 0
UDR11	= 1	; USART I/O Data Register bit 1
UDR12	= 2	; USART I/O Data Register bit 2
UDR13	= 3	; USART I/O Data Register bit 3
UDR14	= 4	; USART I/O Data Register bit 4
UDR15	= 5	; USART I/O Data Register bit 5
UDR16	= 6	; USART I/O Data Register bit 6
UDR17	= 7	; USART I/O Data Register bit 7

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
UCSZ11	= 2	; Character Size
USBS1	= 3	; Stop Bit Select
UPM10	= 4	; Parity Mode Bit 0
UPM11	= 5	; Parity Mode Bit 1
UMSEL1	= 6	; USART Mode Select

; UBRR1H - USART Baud Rate Register Hight Byte
;UBRR8	= 0	; USART Baud Rate Register bit 8
;UBRR9	= 1	; USART Baud Rate Register bit 9
;UBRR10	= 2	; USART Baud Rate Register bit 10
;UBRR11	= 3	; USART Baud Rate Register bit 11

; UBRR1L - USART Baud Rate Register Low Byte
;UBRR0	= 0	; USART Baud Rate Register bit 0
;UBRR1	= 1	; USART Baud Rate Register bit 1
;UBRR2	= 2	; USART Baud Rate Register bit 2
;UBRR3	= 3	; USART Baud Rate Register bit 3
;UBRR4	= 4	; USART Baud Rate Register bit 4
;UBRR5	= 5	; USART Baud Rate Register bit 5
;UBRR6	= 6	; USART Baud Rate Register bit 6
;UBRR7	= 7	; USART Baud Rate Register bit 7


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
SM2	= 2	; Sleep Mode Select
SM0	= 3	; Sleep Mode Select
SM1	= 4	; Sleep Mode Select
SE	= 5	; Sleep Enable
SRW10	= 6	; External SRAM Wait State Select
SRE	= 7	; External SRAM Enable

; XMCRA - External Memory Control Register A
SRW11	= 1	; Wait state select bit upper page
SRW00	= 2	; Wait state select bit lower page
SRW01	= 3	; Wait state select bit lower page
SRL0	= 4	; Wait state page limit
SRL1	= 5	; Wait state page limit
SRL2	= 6	; Wait state page limit

; XMCRB - External Memory Control Register B
XMM0	= 0	; External Memory High Mask
XMM1	= 1	; External Memory High Mask
XMM2	= 2	; External Memory High Mask
XMBK	= 7	; External Memory Bus Keeper Enable

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value
CAL1	= 1	; Oscillator Calibration Value
CAL2	= 2	; Oscillator Calibration Value
CAL3	= 3	; Oscillator Calibration Value
CAL4	= 4	; Oscillator Calibration Value
CAL5	= 5	; Oscillator Calibration Value
CAL6	= 6	; Oscillator Calibration Value
CAL7	= 7	; Oscillator Calibration Value

; XDIV - XTAL Divide Control Register
XDIV0	= 0	; XTAl Divide Select Bit 0
XDIV1	= 1	; XTAl Divide Select Bit 1
XDIV2	= 2	; XTAl Divide Select Bit 2
XDIV3	= 3	; XTAl Divide Select Bit 3
XDIV4	= 4	; XTAl Divide Select Bit 4
XDIV5	= 5	; XTAl Divide Select Bit 5
XDIV6	= 6	; XTAl Divide Select Bit 6
XDIVEN	= 7	; XTAL Divide Enable

; MCUCSR - MCU Control And Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
JTRF	= 4	; JTAG Reset Flag
JTD	= 7	; JTAG Interface Disable


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control Register
SPMCR	= SPMCSR	; For compatibility
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
BLBSET	= 3	; Boot Lock Bit Set
RWWSRE	= 4	; Read While Write section read enable
ASRE	= RWWSRE	; For compatibility
RWWSB	= 6	; Read While Write Section Busy
ASB	= RWWSB	; For compatibility
SPMIE	= 7	; SPM Interrupt Enable


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

; MCUCSR - MCU Control And Status Register
;JTRF	= 4	; JTAG Reset Flag
;JTD	= 7	; JTAG Interface Disable


; ***** MISC *************************
; SFIOR - Special Function IO Register
PSR321	= 0	; Prescaler Reset Timer/Counter3, Timer/Counter2, and Timer/Counter1
PSR1	= PSR321	; For compatibility
PSR2	= PSR321	; For compatibility
PSR3	= PSR321	; For compatibility
PSR0	= 1	; Prescaler Reset Timer/Counter0
PUD	= 2	; Pull Up Disable
;ACME	= 3	; Analog Comparator Multiplexer Enable
TSM	= 7	; Timer/Counter Synchronization Mode


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
GICR	= EIMSK	; For compatibility
GIMSK	= EIMSK	; For compatibility
INT0	= 0	; External Interrupt Request 0 Enable
INT1	= 1	; External Interrupt Request 1 Enable
INT2	= 2	; External Interrupt Request 2 Enable
INT3	= 3	; External Interrupt Request 3 Enable
INT4	= 4	; External Interrupt Request 4 Enable
INT5	= 5	; External Interrupt Request 5 Enable
INT6	= 6	; External Interrupt Request 6 Enable
INT7	= 7	; External Interrupt Request 7 Enable

; EIFR - External Interrupt Flag Register
GIFR	= EIFR	; For compatibility
INTF0	= 0	; External Interrupt Flag 0
INTF1	= 1	; External Interrupt Flag 1
INTF2	= 2	; External Interrupt Flag 2
INTF3	= 3	; External Interrupt Flag 3
INTF4	= 4	; External Interrupt Flag 4
INTF5	= 5	; External Interrupt Flag 5
INTF6	= 6	; External Interrupt Flag 6
INTF7	= 7	; External Interrupt Flag 7


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
EEMWE	= 2	; EEPROM Master Write Enable
EERIE	= 3	; EEPROM Ready Interrupt Enable


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

; DDRG - Data Direction Register, Port G
DDG0	= 0	; 
DDG1	= 1	; 
DDG2	= 2	; 
DDG3	= 3	; 
DDG4	= 4	; 

; PING - Input Pins, Port G
PING0	= 0	; 
PING1	= 1	; 
PING2	= 2	; 
PING3	= 3	; 
PING4	= 4	; 


; ***** TIMER_COUNTER_0 **************
; TCCR0 - Timer/Counter Control Register
CS00	= 0	; Clock Select 0
CS01	= 1	; Clock Select 1
CS02	= 2	; Clock Select 2
WGM01	= 3	; Waveform Generation Mode 1
CTC0	= WGM01	; For compatibility
COM00	= 4	; Compare match Output Mode 0
COM01	= 5	; Compare Match Output Mode 1
WGM00	= 6	; Waveform Generation Mode 0
PWM0	= WGM00	; For compatibility
FOC0	= 7	; Force Output Compare

; TCNT0 - Timer/Counter Register
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; OCR0 - Output Compare Register
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

; ASSR - Asynchronus Status Register
TCR0UB	= 0	; Timer/Counter Control Register 0 Update Busy
OCR0UB	= 1	; Output Compare register 0 Busy
TCN0UB	= 2	; Timer/Counter0 Update Busy
AS0	= 3	; Asynchronus Timer/Counter 0

; TIMSK - Timer/Counter Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0	= 1	; Timer/Counter0 Output Compare Match Interrupt register

; TIFR - Timer/Counter Interrupt Flag register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0	= 1	; Output Compare Flag 0

; SFIOR - Special Function IO Register
;PSR0	= 1	; Prescaler Reset Timer/Counter0
;TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_1 **************
; TIMSK - Timer/Counter Interrupt Mask Register
TOIE1	= 2	; Timer/Counter1 Overflow Interrupt Enable
OCIE1B	= 3	; Timer/Counter1 Output CompareB Match Interrupt Enable
OCIE1A	= 4	; Timer/Counter1 Output CompareA Match Interrupt Enable
TICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; ETIMSK - Extended Timer/Counter Interrupt Mask Register
OCIE1C	= 0	; Timer/Counter 1, Output Compare Match C Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
TOV1	= 2	; Timer/Counter1 Overflow Flag
OCF1B	= 3	; Output Compare Flag 1B
OCF1A	= 4	; Output Compare Flag 1A
ICF1	= 5	; Input Capture Flag 1

; ETIFR - Extended Timer/Counter Interrupt Flag register
OCF1C	= 0	; Timer/Counter 1, Output Compare C Match Flag

; SFIOR - Special Function IO Register
;PSR321	= 0	; Prescaler Reset, T/C3, T/C2, T/C1
;TSM	= 7	; Timer/Counter Synchronization Mode

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode Bit 0
PWM10	= WGM10	; For compatibility
WGM11	= 1	; Waveform Generation Mode Bit 1
PWM11	= WGM11	; For compatibility
COM1C0	= 2	; Compare Output Mode 1C, bit 0
COM1C1	= 3	; Compare Output Mode 1C, bit 1
COM1B0	= 4	; Compare Output Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Compare Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select bit 0
CS11	= 1	; Clock Select 1 bit 1
CS12	= 2	; Clock Select1 bit 2
WGM12	= 3	; Waveform Generation Mode
CTC10	= WGM12	; For compatibility
WGM13	= 4	; Waveform Generation Mode
CTC11	= WGM13	; For compatibility
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1C	= 5	; Force Output Compare for channel C
FOC1B	= 6	; Force Output Compare for channel B
FOC1A	= 7	; Force Output Compare for channel A


; ***** TIMER_COUNTER_2 **************
; TCCR2 - Timer/Counter Control Register
CS20	= 0	; Clock Select
CS21	= 1	; Clock Select
CS22	= 2	; Clock Select
WGM21	= 3	; Waveform Generation Mode
CTC2	= WGM21	; For compatibility
COM20	= 4	; Compare Match Output Mode
COM21	= 5	; Compare Match Output Mode
WGM20	= 6	; Wafeform Generation Mode
PWM2	= WGM20	; For compatibility
FOC2	= 7	; Force Output Compare

; TCNT2 - Timer/Counter Register
TCNT2_0	= 0	; Timer/Counter Register Bit 0
TCNT2_1	= 1	; Timer/Counter Register Bit 1
TCNT2_2	= 2	; Timer/Counter Register Bit 2
TCNT2_3	= 3	; Timer/Counter Register Bit 3
TCNT2_4	= 4	; Timer/Counter Register Bit 4
TCNT2_5	= 5	; Timer/Counter Register Bit 5
TCNT2_6	= 6	; Timer/Counter Register Bit 6
TCNT2_7	= 7	; Timer/Counter Register Bit 7

; OCR2 - Output Compare Register
OCR2_0	= 0	; Output Compare Register Bit 0
OCR2_1	= 1	; Output Compare Register Bit 1
OCR2_2	= 2	; Output Compare Register Bit 2
OCR2_3	= 3	; Output Compare Register Bit 3
OCR2_4	= 4	; Output Compare Register Bit 4
OCR2_5	= 5	; Output Compare Register Bit 5
OCR2_6	= 6	; Output Compare Register Bit 6
OCR2_7	= 7	; Output Compare Register Bit 7

; TIMSK - 
TOIE2	= 6	; 
OCIE2	= 7	; 

; TIFR - Timer/Counter Interrupt Flag Register
TOV2	= 6	; Timer/Counter2 Overflow Flag
OCF2	= 7	; Output Compare Flag 2


; ***** TIMER_COUNTER_3 **************
; ETIMSK - Extended Timer/Counter Interrupt Mask Register
OCIE3C	= 1	; Timer/Counter3, Output Compare Match Interrupt Enable
TOIE3	= 2	; Timer/Counter3 Overflow Interrupt Enable
OCIE3B	= 3	; Timer/Counter3 Output CompareB Match Interrupt Enable
OCIE3A	= 4	; Timer/Counter3 Output CompareA Match Interrupt Enable
TICIE3	= 5	; Timer/Counter3 Input Capture Interrupt Enable

; ETIFR - Extended Timer/Counter Interrupt Flag register
OCF3C	= 1	; Timer/Counter3 Output Compare C Match Flag
TOV3	= 2	; Timer/Counter3 Overflow Flag
OCF3B	= 3	; Output Compare Flag 1B
OCF3A	= 4	; Output Compare Flag 1A
ICF3	= 5	; Input Capture Flag 1

; SFIOR - Special Function IO Register
;PSR321	= 0	; Prescaler Reset, T/C3, T/C2, T/C1
;PSR1	= PSR321	; For compatibility
;PSR2	= PSR321	; For compatibility
;TSM	= 7	; Timer/Counter Synchronization Mode

; TCCR3A - Timer/Counter3 Control Register A
WGM30	= 0	; Waveform Generation Mode Bit 0
PWM30	= WGM30	; For compatibility
WGM31	= 1	; Waveform Generation Mode Bit 1
PWM31	= WGM31	; For compatibility
COM3C0	= 2	; Compare Output Mode 3C, bit 0
COM3C1	= 3	; Compare Output Mode 3C, bit 1
COM3B0	= 4	; Compare Output Mode 3B, bit 0
COM3B1	= 5	; Compare Output Mode 3B, bit 1
COM3A0	= 6	; Comparet Ouput Mode 3A, bit 0
COM3A1	= 7	; Compare Output Mode 3A, bit 1

; TCCR3B - Timer/Counter3 Control Register B
CS30	= 0	; Clock Select 3 bit 0
CS31	= 1	; Clock Select 3 bit 1
CS32	= 2	; Clock Select3 bit 2
WGM32	= 3	; Waveform Generation Mode
CTC30	= WGM32	; For compatibility
WGM33	= 4	; Waveform Generation Mode
CTC31	= WGM33	; For compatibility
ICES3	= 6	; Input Capture 3 Edge Select
ICNC3	= 7	; Input Capture 3  Noise Canceler

; TCCR3C - Timer/Counter3 Control Register C
FOC3C	= 5	; Force Output Compare for channel C
FOC3B	= 6	; Force Output Compare for channel B
FOC3A	= 7	; Force Output Compare for channel A

; TCNT3L - Timer/Counter3 Low Byte
TCN3L0	= 0	; Timer/Counter 3 bit 0
TCN3L1	= 1	; Timer/Counter 3 bit 1
TCN3L2	= 2	; Timer/Counter 3 bit 2
TCN3L3	= 3	; Timer/Counter 3 bit 3
TCN3L4	= 4	; Timer/Counter 3 bit 4
TCN3L5	= 5	; Timer/Counter 3 bit 5
TCN3L6	= 6	; Timer/Counter 3 bit 6
TCN3L7	= 7	; Timer/Counter 3 bit 7


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDTCSR	= WDTCR	; For compatibility
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDTOE	= WDCE	; For compatibility



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
BODEN	= 6	; Brown out detector enable
BODLEVEL	= 7	; Brown out detector trigger level

; HIGH fuse bits
BOOTRST	= 0	; Select Reset Vector
BOOTSZ0	= 1	; Select Boot Size
BOOTSZ1	= 2	; Select Boot Size
EESAVE	= 3	; EEPROM memory is preserved through chip erase
CKOPT	= 4	; Oscillator Options
SPIEN	= 5	; Enable Serial programming and Data Downloading
JTAGEN	= 6	; Enable JTAG
OCDEN	= 7	; Enable OCD

; EXTENDED fuse bits
WDTON	= 0	; Watchdog timer always on
CompMode	= 1	; Compabillity mode



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
XRAMEND	= 0xffff
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
INT0addr	= 0x0002	; External Interrupt Request 0
INT1addr	= 0x0004	; External Interrupt Request 1
INT2addr	= 0x0006	; External Interrupt Request 2
INT3addr	= 0x0008	; External Interrupt Request 3
INT4addr	= 0x000a	; External Interrupt Request 4
INT5addr	= 0x000c	; External Interrupt Request 5
INT6addr	= 0x000e	; External Interrupt Request 6
INT7addr	= 0x0010	; External Interrupt Request 7
OC2addr	= 0x0012	; Timer/Counter2 Compare Match
OVF2addr	= 0x0014	; Timer/Counter2 Overflow
ICP1addr	= 0x0016	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0018	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x001a	; Timer/Counter Compare Match B
OVF1addr	= 0x001c	; Timer/Counter1 Overflow
OC0addr	= 0x001e	; Timer/Counter0 Compare Match
OVF0addr	= 0x0020	; Timer/Counter0 Overflow
SPIaddr	= 0x0022	; SPI Serial Transfer Complete
URXC0addr	= 0x0024	; USART0, Rx Complete
UDRE0addr	= 0x0026	; USART0 Data Register Empty
UTXC0addr	= 0x0028	; USART0, Tx Complete
ADCCaddr	= 0x002a	; ADC Conversion Complete
ERDYaddr	= 0x002c	; EEPROM Ready
ACIaddr	= 0x002e	; Analog Comparator
OC1Caddr	= 0x0030	; Timer/Counter1 Compare Match C
ICP3addr	= 0x0032	; Timer/Counter3 Capture Event
OC3Aaddr	= 0x0034	; Timer/Counter3 Compare Match A
OC3Baddr	= 0x0036	; Timer/Counter3 Compare Match B
OC3Caddr	= 0x0038	; Timer/Counter3 Compare Match C
OVF3addr	= 0x003a	; Timer/Counter3 Overflow
URXC1addr	= 0x003c	; USART1, Rx Complete
UDRE1addr	= 0x003e	; USART1, Data Register Empty
UTXC1addr	= 0x0040	; USART1, Tx Complete
TWIaddr	= 0x0042	; 2-wire Serial Interface
SPMRaddr	= 0x0044	; Store Program Memory Read

INT_VECTORS_SIZE	= 70	; size in words


; ***** END OF FILE ******************************************************
