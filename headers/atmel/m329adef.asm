;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m329Adef.asm"
;* Title             : Register/Bit Definitions for the ATmega329A
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega329A
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
; device ATmega329A

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x95
SIGNATURE_002	= 0x03

                .CR     avr
                .FA     enhanced128k
				.MS		$4000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
LCDDR19	= 0xff	; MEMORY MAPPED
LCDDR18	= 0xfe	; MEMORY MAPPED
LCDDR17	= 0xfd	; MEMORY MAPPED
LCDDR16	= 0xfc	; MEMORY MAPPED
LCDDR15	= 0xfb	; MEMORY MAPPED
LCDDR14	= 0xfa	; MEMORY MAPPED
LCDDR13	= 0xf9	; MEMORY MAPPED
LCDDR12	= 0xf8	; MEMORY MAPPED
LCDDR11	= 0xf7	; MEMORY MAPPED
LCDDR10	= 0xf6	; MEMORY MAPPED
LCDDR9	= 0xf5	; MEMORY MAPPED
LCDDR8	= 0xf4	; MEMORY MAPPED
LCDDR7	= 0xf3	; MEMORY MAPPED
LCDDR6	= 0xf2	; MEMORY MAPPED
LCDDR5	= 0xf1	; MEMORY MAPPED
LCDDR4	= 0xf0	; MEMORY MAPPED
LCDDR3	= 0xef	; MEMORY MAPPED
LCDDR2	= 0xee	; MEMORY MAPPED
LCDDR1	= 0xed	; MEMORY MAPPED
LCDDR0	= 0xec	; MEMORY MAPPED
LCDCCR	= 0xe7	; MEMORY MAPPED
LCDFRR	= 0xe6	; MEMORY MAPPED
LCDCRB	= 0xe5	; MEMORY MAPPED
LCDCRA	= 0xe4	; MEMORY MAPPED
PORTJ	= 0xdd	; MEMORY MAPPED
DDRJ	= 0xdc	; MEMORY MAPPED
PINJ	= 0xdb	; MEMORY MAPPED
PORTH	= 0xda	; MEMORY MAPPED
DDRH	= 0xd9	; MEMORY MAPPED
PINH	= 0xd8	; MEMORY MAPPED
UDR0	= 0xc6	; MEMORY MAPPED
UBRR0L	= 0xc4	; MEMORY MAPPED
UBRR0H	= 0xc5	; MEMORY MAPPED
UCSR0C	= 0xc2	; MEMORY MAPPED
UCSR0B	= 0xc1	; MEMORY MAPPED
UCSR0A	= 0xc0	; MEMORY MAPPED
USIDR	= 0xba	; MEMORY MAPPED
USISR	= 0xb9	; MEMORY MAPPED
USICR	= 0xb8	; MEMORY MAPPED
ASSR	= 0xb6	; MEMORY MAPPED
OCR2A	= 0xb3	; MEMORY MAPPED
TCNT2	= 0xb2	; MEMORY MAPPED
TCCR2A	= 0xb0	; MEMORY MAPPED
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
TIMSK2	= 0x70	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
PCMSK1	= 0x6c	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
OSCCAL	= 0x66	; MEMORY MAPPED
PRR	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
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
OCR0A	= 0x27
TCNT0	= 0x26
TCCR0A	= 0x24
GTCCR	= 0x23
EEARL	= 0x21
EEARH	= 0x22
EEDR	= 0x20
EECR	= 0x1f
GPIOR0	= 0x1e
EIMSK	= 0x1d
EIFR	= 0x1c
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

; ***** TIMER_COUNTER_0 **************
; TCCR0A - Timer/Counter0 Control Register
CS00	= 0	; Clock Select 0
CS01	= 1	; Clock Select 1
CS02	= 2	; Clock Select 2
WGM01	= 3	; Waveform Generation Mode 1
COM0A0	= 4	; Compare match Output Mode 0
COM0A1	= 5	; Compare Match Output Mode 1
WGM00	= 6	; Waveform Generation Mode 0
FOC0A	= 7	; Force Output Compare

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
OCR0A0	= 0	; 
OCR0A1	= 1	; 
OCR0A2	= 2	; 
OCR0A3	= 3	; 
OCR0A4	= 4	; 
OCR0A5	= 5	; 
OCR0A6	= 6	; 
OCR0A7	= 7	; 

; TIMSK0 - Timer/Counter0 Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare Match Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Timer/Counter0 Output Compare Flag 0

; GTCCR - General Timer/Control Register
PSR310	= 0	; Prescaler Reset Timer/Counter1 and Timer/Counter0
PSR10	= PSR310	; For compatibility
PSR0	= PSR310	; For compatibility
PSR1	= PSR310	; For compatibility
PSR3	= PSR310	; For compatibility
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_1 **************
; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output Compare B Match Interrupt Enable
ICIE1	= 5	; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter1 Interrupt Flag register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Output Compare Flag 1A
OCF1B	= 2	; Output Compare Flag 1B
ICF1	= 5	; Input Capture Flag 1

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Waveform Generation Mode
WGM11	= 1	; Waveform Generation Mode
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
FOC1B	= 6	; Force Output Compare 1B
FOC1A	= 7	; Force Output Compare 1A


; ***** TIMER_COUNTER_2 **************
; TIMSK2 - Timer/Counter2 Interrupt Mask register
TOIE2	= 0	; Timer/Counter2 Overflow Interrupt Enable
OCIE2A	= 1	; Timer/Counter2 Output Compare Match Interrupt Enable

; TIFR2 - Timer/Counter2 Interrupt Flag Register
TOV2	= 0	; Timer/Counter2 Overflow Flag
OCF2A	= 1	; Timer/Counter2 Output Compare Flag 2

; TCCR2A - Timer/Counter2 Control Register
CS20	= 0	; Clock Select bit 0
CS21	= 1	; Clock Select bit 1
CS22	= 2	; Clock Select bit 2
WGM21	= 3	; Waveform Generation Mode
COM2A0	= 4	; Compare Output Mode bit 0
COM2A1	= 5	; Compare Output Mode bit 1
WGM20	= 6	; Waveform Generation Mode
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

; OCR2A - Timer/Counter2 Output Compare Register
OCR2A0	= 0	; Timer/Counter2 Output Compare Register Bit 0
OCR2A1	= 1	; Timer/Counter2 Output Compare Register Bit 1
OCR2A2	= 2	; Timer/Counter2 Output Compare Register Bit 2
OCR2A3	= 3	; Timer/Counter2 Output Compare Register Bit 3
OCR2A4	= 4	; Timer/Counter2 Output Compare Register Bit 4
OCR2A5	= 5	; Timer/Counter2 Output Compare Register Bit 5
OCR2A6	= 6	; Timer/Counter2 Output Compare Register Bit 6
OCR2A7	= 7	; Timer/Counter2 Output Compare Register Bit 7

; GTCCR - General Timer/Counter Control Register
PSR2	= 1	; Prescaler Reset Timer/Counter2

; ASSR - Asynchronous Status Register
TCR2UB	= 0	; TCR2UB: Timer/Counter Control Register2 Update Busy
OCR2UB	= 1	; Output Compare Register2 Update Busy
TCN2UB	= 2	; TCN2UB: Timer/Counter2 Update Busy
AS2	= 3	; AS2: Asynchronous Timer/Counter2
EXCLK	= 4	; Enable External Clock Interrupt


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDTCSR	= WDTCR	; For compatibility
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDTOE	= WDCE	; For compatibility


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
; PORTG - Port G Data Register
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

; DDRG - Port G Data Direction Register
DDG0	= 0	; 
DDG1	= 1	; 
DDG2	= 2	; 
DDG3	= 3	; 
DDG4	= 4	; 

; PING - Port G Input Pins
PING0	= 0	; 
PING1	= 1	; 
PING2	= 2	; 
PING3	= 3	; 
PING4	= 4	; 
PING5	= 5	; 


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
ISC00	= 0	; External Interrupt Sense Control 0 Bit 0
ISC01	= 1	; External Interrupt Sense Control 0 Bit 1

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request 0 Enable
PCIE0	= 4	; Pin Change Interrupt Enable 0
PCIE1	= 5	; Pin Change Interrupt Enable 1
PCIE2	= 6	; Pin Change Interrupt Enable 2
PCIE3	= 7	; Pin Change Interrupt Enable 3

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag 0
PCIF0	= 4	; Pin Change Interrupt Flag 0
PCIF1	= 5	; Pin Change Interrupt Flag 1
PCIF2	= 6	; Pin Change Interrupt Flag 2
PCIF3	= 7	; Pin Change Interrupt Flag 3

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


; ***** USI **************************
; USIDR - USI Data Register
USIDR0	= 0	; USI Data Register bit 0
USIDR1	= 1	; USI Data Register bit 1
USIDR2	= 2	; USI Data Register bit 2
USIDR3	= 3	; USI Data Register bit 3
USIDR4	= 4	; USI Data Register bit 4
USIDR5	= 5	; USI Data Register bit 5
USIDR6	= 6	; USI Data Register bit 6
USIDR7	= 7	; USI Data Register bit 7

; USISR - USI Status Register
USICNT0	= 0	; USI Counter Value Bit 0
USICNT1	= 1	; USI Counter Value Bit 1
USICNT2	= 2	; USI Counter Value Bit 2
USICNT3	= 3	; USI Counter Value Bit 3
USIDC	= 4	; Data Output Collision
USIPF	= 5	; Stop Condition Flag
USIOIF	= 6	; Counter Overflow Interrupt Flag
USISIF	= 7	; Start Condition Interrupt Flag

; USICR - USI Control Register
USITC	= 0	; Toggle Clock Port Pin
USICLK	= 1	; Clock Strobe
USICS0	= 2	; USI Clock Source Select Bit 0
USICS1	= 3	; USI Clock Source Select Bit 1
USIWM0	= 4	; USI Wire Mode Bit 0
USIWM1	= 5	; USI Wire Mode Bit 1
USIOIE	= 6	; Counter Overflow Interrupt Enable
USISIE	= 7	; Start Condition Interrupt Enable


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

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; ADC0 Digital input Disable
ADC1D	= 1	; ADC1 Digital input Disable
ADC2D	= 2	; ADC2 Digital input Disable
ADC3D	= 3	; ADC3 Digital input Disable
ADC4D	= 4	; ADC4 Digital input Disable
ADC5D	= 5	; ADC5 Digital input Disable
ADC6D	= 6	; ADC6 Digital input Disable
ADC7D	= 7	; ADC7 Digital input Disable


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


; ***** USART0 ***********************
; UDR0 - USART I/O Data Register
UDR	= UDR0	; For compatibility
UDR00	= 0	; USART I/O Data Register bit 0
UDR01	= 1	; USART I/O Data Register bit 1
UDR02	= 2	; USART I/O Data Register bit 2
UDR03	= 3	; USART I/O Data Register bit 3
UDR04	= 4	; USART I/O Data Register bit 4
UDR05	= 5	; USART I/O Data Register bit 5
UDR06	= 6	; USART I/O Data Register bit 6
UDR07	= 7	; USART I/O Data Register bit 7

; UCSR0A - USART Control and Status Register A
UCSRA	= UCSR0A	; For compatibility
USR	= UCSR0A	; For compatibility
MPCM0	= 0	; Multi-processor Communication Mode
MPCM	= MPCM0	; For compatibility
U2X0	= 1	; Double the USART Transmission Speed
U2X	= U2X0	; For compatibility
UPE0	= 2	; USART Parity Error
UPE	= UPE0	; For compatibility
DOR0	= 3	; Data OverRun
DOR	= DOR0	; For compatibility
FE0	= 4	; Framing Error
FE	= FE0	; For compatibility
UDRE0	= 5	; USART Data Register Empty
UDRE	= UDRE0	; For compatibility
TXC0	= 6	; USART Transmit Complete
TXC	= TXC0	; For compatibility
RXC0	= 7	; USART Receive Complete
RXC	= RXC0	; For compatibility

; UCSR0B - USART Control and Status Register B
UCSRB	= UCSR0B	; For compatibility
UCR	= UCSR0B	; For compatibility
TXB80	= 0	; Transmit Data Bit 8
TXB8	= TXB80	; For compatibility
RXB80	= 1	; Receive Data Bit 8
RXB8	= RXB80	; For compatibility
UCSZ02	= 2	; Character Size
UCSZ2	= UCSZ02	; For compatibility
TXEN0	= 3	; Transmitter Enable
TXEN	= TXEN0	; For compatibility
RXEN0	= 4	; Receiver Enable
RXEN	= RXEN0	; For compatibility
UDRIE0	= 5	; USART Data Register Empty Interrupt Enable
UDRIE	= UDRIE0	; For compatibility
TXCIE0	= 6	; TX Complete Interrupt Enable
TXCIE	= TXCIE0	; For compatibility
RXCIE0	= 7	; RX Complete Interrupt Enable
RXCIE	= RXCIE0	; For compatibility

; UCSR0C - USART Control and Status Register C
UCSRC	= UCSR0C	; For compatibility
UCPOL0	= 0	; Clock Polarity
UCPOL	= UCPOL0	; For compatibility
UCSZ00	= 1	; Character Size
UCSZ0	= UCSZ00	; For compatibility
UCSZ01	= 2	; Character Size
UCSZ1	= UCSZ01	; For compatibility
USBS0	= 3	; Stop Bit Select
USBS	= USBS0	; For compatibility
UPM00	= 4	; Parity Mode Bit 0
UPM0	= UPM00	; For compatibility
UPM01	= 5	; Parity Mode Bit 1
UPM1	= UPM01	; For compatibility
UMSEL0	= 6	; USART Mode Select
UMSEL	= UMSEL0	; For compatibility

; UBRR0H - USART Baud Rate Register High Byte
UBRRH	= UBRR0H	; For compatibility
UBRR_8	= 0	; USART Baud Rate Register bit 8
UBRR_9	= 1	; USART Baud Rate Register bit 9
UBRR_10	= 2	; USART Baud Rate Register bit 10
UBRR_11	= 3	; USART Baud Rate Register bit 11

; UBRR0L - USART Baud Rate Register Low Byte
UBRRL	= UBRR0L	; For compatibility
UBRR	= UBRR0L	; For compatibility
UBRR_0	= 0	; USART Baud Rate Register bit 0
UBRR_1	= 1	; USART Baud Rate Register bit 1
UBRR_2	= 2	; USART Baud Rate Register bit 2
UBRR_3	= 3	; USART Baud Rate Register bit 3
UBRR_4	= 4	; USART Baud Rate Register bit 4
UBRR_5	= 5	; USART Baud Rate Register bit 5
UBRR_6	= 6	; USART Baud Rate Register bit 6
UBRR_7	= 7	; USART Baud Rate Register bit 7


; ***** LCD **************************
; LCDCRA - LCD Control Register A
LCDBL	= 0	; LCD Blanking
LCDCCD	= 1	; LCD Contrast Control Disable
LCDBD	= 2	; LCD Buffer Disable
LCDIE	= 3	; LCD Interrupt Enable
LCDIF	= 4	; LCD Interrupt Flag
LCDAB	= 6	; LCD A or B waveform
LCDEN	= 7	; LCD Enable

; LCDCRB - LCD Control and Status Register B
LCDPM0	= 0	; LCD Port Mask 0
LCDPM1	= 1	; LCD Port Mask 1
LCDPM2	= 2	; LCD Port Mask 2
LCDPM3	= 3	; LCD Port Mask 3
LCDMUX0	= 4	; LCD Mux Select 0
LCDMUX1	= 5	; LCD Mux Select 1
LCD2B	= 6	; LCD 1/2 Bias Select
LCDCS	= 7	; LCD CLock Select

; LCDFRR - LCD Frame Rate Register
LCDCD0	= 0	; LCD Clock Divider 0
LCDCD1	= 1	; LCD Clock Divider 1
LCDCD2	= 2	; LCD Clock Divider 2
LCDPS0	= 4	; LCD Prescaler Select 0
LCDPS1	= 5	; LCD Prescaler Select 1
LCDPS2	= 6	; LCD Prescaler Select 2

; LCDCCR - LCD Contrast Control Register
LCDCC0	= 0	; LCD Contrast Control 0
LCDCC1	= 1	; LCD Contrast Control 1
LCDCC2	= 2	; LCD Contrast Control 2
LCDCC3	= 3	; LCD Contrast Control 3
LCDMDT	= 4	; LCD Maximum Drive Time
LCDDC0	= 5	; 
LCDDC1	= 6	; 
LCDDC2	= 7	; 

; LCDDR18 - LCD Data Register 18
SEG324	= 0	; 

; LCDDR17 - LCD Data Register 17
SEG316	= 0	; 
SEG317	= 1	; 
SEG318	= 2	; 
SEG319	= 3	; 
SEG320	= 4	; 
SEG321	= 5	; 
SEG322	= 6	; 
SEG323	= 7	; 

; LCDDR16 - LCD Data Register 16
SEG308	= 0	; 
SEG309	= 1	; 
SEG310	= 2	; 
SEG311	= 3	; 
SEG312	= 4	; 
SEG313	= 5	; 
SEG314	= 6	; 
SEG315	= 7	; 

; LCDDR15 - LCD Data Register 15
SEG300	= 0	; 
SEG301	= 1	; 
SEG302	= 2	; 
SEG303	= 3	; 
SEG304	= 4	; 
SEG305	= 5	; 
SEG306	= 6	; 
SEG307	= 7	; 

; LCDDR13 - LCD Data Register 13
SEG224	= 0	; 

; LCDDR12 - LCD Data Register 12
SEG216	= 0	; 
SEG217	= 1	; 
SEG218	= 2	; 
SEG219	= 3	; 
SEG220	= 4	; 
SEG221	= 5	; 
SEG222	= 6	; 
SEG223	= 7	; 

; LCDDR11 - LCD Data Register 11
SEG208	= 0	; 
SEG209	= 1	; 
SEG210	= 2	; 
SEG211	= 3	; 
SEG212	= 4	; 
SEG213	= 5	; 
SEG214	= 6	; 
SEG215	= 7	; 

; LCDDR10 - LCD Data Register 10
SEG200	= 0	; 
SEG201	= 1	; 
SEG202	= 2	; 
SEG203	= 3	; 
SEG204	= 4	; 
SEG205	= 5	; 
SEG206	= 6	; 
SEG207	= 7	; 

; LCDDR8 - LCD Data Register 8
SEG124	= 0	; 

; LCDDR7 - LCD Data Register 7
SEG116	= 0	; 
SEG117	= 1	; 
SEG118	= 2	; 
SEG119	= 3	; 
SEG120	= 4	; 
SEG121	= 5	; 
SEG122	= 6	; 
SEG123	= 7	; 

; LCDDR6 - LCD Data Register 6
SEG108	= 0	; 
SEG109	= 1	; 
SEG110	= 2	; 
SEG111	= 3	; 
SEG112	= 4	; 
SEG113	= 5	; 
SEG114	= 6	; 
SEG115	= 7	; 

; LCDDR5 - LCD Data Register 5
SEG100	= 0	; 
SEG101	= 1	; 
SEG102	= 2	; 
SEG103	= 3	; 
SEG104	= 4	; 
SEG105	= 5	; 
SEG106	= 6	; 
SEG107	= 7	; 

; LCDDR3 - LCD Data Register 3
SEG024	= 0	; 

; LCDDR2 - LCD Data Register 2
SEG016	= 0	; 
SEG017	= 1	; 
SEG018	= 2	; 
SEG019	= 3	; 
SEG020	= 4	; 
SEG021	= 5	; 
SEG022	= 6	; 
SEG023	= 7	; 

; LCDDR1 - LCD Data Register 1
SEG008	= 0	; 
SEG009	= 1	; 
SEG010	= 2	; 
SEG011	= 3	; 
SEG012	= 4	; 
SEG013	= 5	; 
SEG014	= 6	; 
SEG015	= 7	; 

; LCDDR0 - LCD Data Register 0
SEG000	= 0	; 
SEG001	= 1	; 
SEG002	= 2	; 
SEG003	= 3	; 
SEG004	= 4	; 
SEG005	= 5	; 
SEG006	= 6	; 
SEG007	= 7	; 


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

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3
CLKPCE	= 7	; Clock Prescaler Change Enable

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRUSART0	= 1	; Power Reduction USART
PRSPI	= 2	; Power Reduction Serial Peripheral Interface
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRLCD	= 4	; Power Reduction LCD

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
CKOUT	= 6	; Oscillator options
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
RSTDISBL	= 0	; Reset disable fuse
BODLEVEL0	= 1	; Brown-out Detector trigger level
BODLEVEL1	= 2	; Brown-out Detector trigger level



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x3fff	; Note: Word address
IOEND	= 0x00ff
SRAM_START	= 0x0100
SRAM_SIZE	= 2048
RAMEND	= 0x08ff
XRAMEND	= 0x0000
E2END	= 0x03ff
EEPROMEND	= 0x03ff
EEADRBITS	= 10



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x3800
NRWW_STOP_ADDR	= 0x3fff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x37ff
PAGESIZE	= 64
FIRSTBOOTSTART	= 0x3f00
SECONDBOOTSTART	= 0x3e00
THIRDBOOTSTART	= 0x3c00
FOURTHBOOTSTART	= 0x3800
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0002	; External Interrupt Request 0
PCI0addr	= 0x0004	; Pin Change Interrupt Request 0
PCI1addr	= 0x0006	; Pin Change Interrupt Request 1
OC2addr	= 0x0008	; Timer/Counter2 Compare Match
OVF2addr	= 0x000a	; Timer/Counter2 Overflow
ICP1addr	= 0x000c	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x000e	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0010	; Timer/Counter Compare Match B
OVF1addr	= 0x0012	; Timer/Counter1 Overflow
OC0addr	= 0x0014	; Timer/Counter0 Compare Match
OVF0addr	= 0x0016	; Timer/Counter0 Overflow
SPIaddr	= 0x0018	; SPI Serial Transfer Complete
URXC0addr	= 0x001a	; USART0, Rx Complete
URXCaddr	= 0x001a	; For compatibility
UDRE0addr	= 0x001c	; USART0 Data register Empty
UDREaddr	= 0x001c	; For compatibility
UTXC0addr	= 0x001e	; USART0, Tx Complete
UTXCaddr	= 0x001e	; For compatibility
USI_STARTaddr	= 0x0020	; USI Start Condition
USI_OVFaddr	= 0x0022	; USI Overflow
ACIaddr	= 0x0024	; Analog Comparator
ADCCaddr	= 0x0026	; ADC Conversion Complete
ERDYaddr	= 0x0028	; EEPROM Ready
SPMRaddr	= 0x002a	; Store Program Memory Read
LCDSFaddr	= 0x002c	; LCD Start of Frame

INT_VECTORS_SIZE	= 46	; size in words


; ***** END OF FILE ******************************************************
