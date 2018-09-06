;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn80def.asm"
;* Title             : Register/Bit Definitions for the ATtiny80
;* Date              : 2011-08-24
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny80
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
; .device ATtiny80

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x93
SIGNATURE_002	= 0x14

                .CR     avr
                .FA     enhanced128k
				.MS		$1000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
OSCTCAL0B	= 0xf1	; MEMORY MAPPED
OSCTCAL0A	= 0xf0	; MEMORY MAPPED
TOCPMSA1	= 0xe9	; MEMORY MAPPED
TOCPMSA0	= 0xe8	; MEMORY MAPPED
TOCPMCOE	= 0xe2	; MEMORY MAPPED
DIDR3	= 0xdf	; MEMORY MAPPED
DIDR2	= 0xde	; MEMORY MAPPED
UDR	= 0xc6	; MEMORY MAPPED
UBRRL	= 0xc4	; MEMORY MAPPED
UBRRH	= 0xc5	; MEMORY MAPPED
UCSRD	= 0xc3	; MEMORY MAPPED
UCSRC	= 0xc2	; MEMORY MAPPED
UCSRB	= 0xc1	; MEMORY MAPPED
UCSRA	= 0xc0	; MEMORY MAPPED
TWSD	= 0xbd	; MEMORY MAPPED
TWSA	= 0xbc	; MEMORY MAPPED
TWSAM	= 0xbb	; MEMORY MAPPED
TWSSRA	= 0xba	; MEMORY MAPPED
TWSCRB	= 0xb9	; MEMORY MAPPED
TWSCRA	= 0xb8	; MEMORY MAPPED
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
ADMUXB	= 0x7d	; MEMORY MAPPED
ADMUXA	= 0x7c	; MEMORY MAPPED
ADCSRB	= 0x7b	; MEMORY MAPPED
ADCSRA	= 0x7a	; MEMORY MAPPED
ADCH	= 0x79	; MEMORY MAPPED
ADCL	= 0x78	; MEMORY MAPPED
PCMSK3	= 0x73	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK2	= 0x6d	; MEMORY MAPPED
PCMSK1	= 0x6c	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
OSCCAL1	= 0x67	; MEMORY MAPPED
OSCCAL0	= 0x66	; MEMORY MAPPED
PRR	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
SPMCSR	= 0x37
CCP	= 0x36
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
ACSRA	= 0x30
ACSRB	= 0x2f
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
EEAR	= 0x21
EEDR	= 0x20
EECR	= 0x1f
GPIOR0	= 0x1e
EIMSK	= 0x1d
EIFR	= 0x1c
PCIFR	= 0x1b
TIFR1	= 0x16
TIFR0	= 0x15
PHDE	= 0x14
PUED	= 0x0f
PORTD	= 0x0e
DDRD	= 0x0d
PIND	= 0x0c
PUEC	= 0x0b
PORTC	= 0x0a
DDRC	= 0x09
PINC	= 0x08
PUEB	= 0x07
PORTB	= 0x06
DDRB	= 0x05
PINB	= 0x04
PUEA	= 0x03
PORTA	= 0x02
DDRA	= 0x01
PINA	= 0x00


; ***** BIT DEFINITIONS **************************************************

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
; PUEA - Pull-up Enable Control Register
PUEA0	= 0	; 
PUEA1	= 1	; 
PUEA2	= 2	; 
PUEA3	= 3	; 
PUEA4	= 4	; 
PUEA5	= 5	; 
PUEA6	= 6	; 
PUEA7	= 7	; 

; PORTA - Port A Data Register
PORTA0	= 0	; 
PA0	= 0	; For compatibility
PORTA1	= 1	; 
PA1	= 1	; For compatibility
PORTA2	= 2	; 
PA2	= 2	; For compatibility
PORTA3	= 3	; 
PA3	= 3	; For compatibility
PORTA4	= 4	; 
PA4	= 4	; For compatibility
PORTA5	= 5	; 
PA5	= 5	; For compatibility
PORTA6	= 6	; 
PA6	= 6	; For compatibility
PORTA7	= 7	; 
PA7	= 7	; For compatibility

; DDRA - Data Direction Register, Port A
DDA0	= 0	; 
DDA1	= 1	; 
DDA2	= 2	; 
DDA3	= 3	; 
DDA4	= 4	; 
DDA5	= 5	; 
DDA6	= 6	; 
DDA7	= 7	; 

; PINA - Port A Input Pins
PINA0	= 0	; 
PINA1	= 1	; 
PINA2	= 2	; 
PINA3	= 3	; 
PINA4	= 4	; 
PINA5	= 5	; 
PINA6	= 6	; 
PINA7	= 7	; 


; ***** PORTB ************************
; PUEB - Pull-up Enable Control Register
PUEB0	= 0	; 
PUEB1	= 1	; 
PUEB2	= 2	; 
PUEB3	= 3	; 
PUEB4	= 4	; 
PUEB5	= 5	; 
PUEB6	= 6	; 
PUEB7	= 7	; 

; PORTB - Port B Data Register
PORTB0	= 0	; 
PB0	= 0	; For compatibility
PORTB1	= 1	; 
PB1	= 1	; For compatibility
PORTB2	= 2	; 
PB2	= 2	; For compatibility
PORTB3	= 3	; 
PB3	= 3	; For compatibility
PORTB4	= 4	; 
PB4	= 4	; For compatibility
PORTB5	= 5	; 
PB5	= 5	; For compatibility
PORTB6	= 6	; 
PB6	= 6	; For compatibility
PORTB7	= 7	; 
PB7	= 7	; For compatibility

; DDRB - Data Direction Register, Port B
DDB0	= 0	; 
DDB1	= 1	; 
DDB2	= 2	; 
DDB3	= 3	; 
DDB4	= 4	; 
DDB5	= 5	; 
DDB6	= 6	; 
DDB7	= 7	; 

; PINB - Port B Input Pins
PINB0	= 0	; 
PINB1	= 1	; 
PINB2	= 2	; 
PINB3	= 3	; 
PINB4	= 4	; 
PINB5	= 5	; 
PINB6	= 6	; 
PINB7	= 7	; 


; ***** PORTC ************************
; PHDE - Port High Drive Enable Register
PHDEC	= 2	; Port C High Drive Enable

; PUEC - Pull-up Enable Control Register
PUEC0	= 0	; 
PUEC1	= 1	; 
PUEC2	= 2	; 
PUEC3	= 3	; 
PUEC4	= 4	; 
PUEC5	= 5	; 
PUEC6	= 6	; 
PUEC7	= 7	; 

; PORTC - Port C Data Register
PORTC0	= 0	; 
PC0	= 0	; For compatibility
PORTC1	= 1	; 
PC1	= 1	; For compatibility
PORTC2	= 2	; 
PC2	= 2	; For compatibility
PORTC3	= 3	; 
PC3	= 3	; For compatibility
PORTC4	= 4	; 
PC4	= 4	; For compatibility
PORTC5	= 5	; 
PC5	= 5	; For compatibility
PORTC6	= 6	; 
PC6	= 6	; For compatibility
PORTC7	= 7	; 
PC7	= 7	; For compatibility

; DDRC - Data Direction Register, Port C
DDC0	= 0	; 
DDC1	= 1	; 
DDC2	= 2	; 
DDC3	= 3	; 
DDC4	= 4	; 
DDC5	= 5	; 
DDC6	= 6	; 
DDC7	= 7	; 

; PINC - Port C Input Pins
PINC0	= 0	; 
PINC1	= 1	; 
PINC2	= 2	; 
PINC3	= 3	; 
PINC4	= 4	; 
PINC5	= 5	; 
PINC6	= 6	; 
PINC7	= 7	; 


; ***** PORTD ************************
; PUED - Pull-up Enable Control Register
PUED0	= 0	; 
PUED1	= 1	; 
PUED2	= 2	; 
PUED3	= 3	; 

; PORTD - Port D Data Register
PORTD0	= 0	; 
PD0	= 0	; For compatibility
PORTD1	= 1	; 
PD1	= 1	; For compatibility
PORTD2	= 2	; 
PD2	= 2	; For compatibility
PORTD3	= 3	; 
PD3	= 3	; For compatibility

; DDRD - Data Direction Register, Port D
DDD0	= 0	; 
DDD1	= 1	; 
DDD2	= 2	; 
DDD3	= 3	; 

; PIND - Port D Input Pins
PIND0	= 0	; 
PIND1	= 1	; 
PIND2	= 2	; 
PIND3	= 3	; 


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
IVSEL	= 1	; Interrupt Vector Select

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; OSCCAL0 - Oscillator Calibration Value
CAL00	= 0	; Oscillator Calibration Value Bit0
CAL01	= 1	; Oscillator Calibration Value Bit1
CAL02	= 2	; Oscillator Calibration Value Bit2
CAL03	= 3	; Oscillator Calibration Value Bit3
CAL04	= 4	; Oscillator Calibration Value Bit4
CAL05	= 5	; Oscillator Calibration Value Bit5
CAL06	= 6	; Oscillator Calibration Value Bit6
CAL07	= 7	; Oscillator Calibration Value Bit7

; OSCCAL1 - 
CAL10	= 0	; 
CAL11	= 1	; 

; OSCTCAL0A - 
TCAL0A0	= 0	; 
TCAL0A1	= 1	; 
TCAL0A2	= 2	; 
TCAL0A3	= 3	; 
TCAL0A4	= 4	; 
TCAL0A5	= 5	; 
TCAL0A6	= 6	; 
TCAL0A7	= 7	; 

; OSCTCAL0B - 
TCAL0B0	= 0	; 
TCAL0B1	= 1	; 
TCAL0B2	= 2	; 
TCAL0B3	= 3	; 
TCAL0B4	= 4	; 
TCAL0B5	= 5	; 
TCAL0B6	= 6	; 
TCAL0B7	= 7	; 

; GPIOR2 - General Purpose I/O Register 2
GPIOR20	= 0	; 
GPIOR21	= 1	; 
GPIOR22	= 2	; 
GPIOR23	= 3	; 
GPIOR24	= 4	; 
GPIOR25	= 5	; 
GPIOR26	= 6	; 
GPIOR27	= 7	; 

; GPIOR1 - General Purpose I/O Register 1
GPIOR10	= 0	; 
GPIOR11	= 1	; 
GPIOR12	= 2	; 
GPIOR13	= 3	; 
GPIOR14	= 4	; 
GPIOR15	= 5	; 
GPIOR16	= 6	; 
GPIOR17	= 7	; 

; GPIOR0 - General Purpose I/O Register 0
GPIOR00	= 0	; 
GPIOR01	= 1	; 
GPIOR02	= 2	; 
GPIOR03	= 3	; 
GPIOR04	= 4	; 
GPIOR05	= 5	; 
GPIOR06	= 6	; 
GPIOR07	= 7	; 

; PRR - Power Reduction Register
PRADC	= 0	; Power Reduction ADC
PRUSART0	= 1	; Power Reduction USART 0
PRSPI	= 2	; Power Reduction SPI
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRTIM0	= 5	; Power Reduction Timer/Counter0
PRTWI	= 7	; Power Reduction TWI

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3

; SMCR - Sleep Mode Control Register
SE	= 0	; Sleep Enable
SM0	= 1	; Sleep Mode Select Bit 0
SM1	= 2	; Sleep Mode Select Bit 1

; CCP - Configuration Change Protection
CCP0	= 0	; Configuration Change Protection bit 0
CCP1	= 1	; Configuration Change Protection bit 1
CCP2	= 2	; Configuration Change Protection bit 2
CCP3	= 3	; Configuration Change Protection bit 3
CCP4	= 4	; Configuration Change Protection bit 4
CCP5	= 5	; Configuration Change Protection bit 5
CCP6	= 6	; Configuration Change Protection bit 6
CCP7	= 7	; Configuration Change Protection bit 7

; SPMCSR - Store Program Memory Control and Status Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
RWFLB	= 3	; Read/Write Fuse and Lock Bits
RWWSRE	= 4	; Read-While-Write section read enable
RSIG	= 5	; Read Device Signature Imprint Table
RWWSB	= 6	; Read-While-Write Section Busy
SPMIE	= 7	; SPM Interrupt Enable


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
;PSRSYNC	= 0	; Prescaler Reset Timer/Counter1 and Timer/Counter0
;TSM	= 7	; Timer/Counter Synchronization Mode


; ***** TOCPM ************************
; TOCPMSA1 - Timer Output Compare Pin Mux Selection 1
TOCC4S0	= 0	; Timer Output Compare Channel 4 Selection Bit 0
TOCC4S1	= 1	; Timer Output Compare Channel 4 Selection Bit 1
TOCC5S0	= 2	; Timer Output Compare Channel 5 Selection Bit 0
TOCC5S1	= 3	; Timer Output Compare Channel 5 Selection Bit 1
TOCC6S0	= 4	; Timer Output Compare Channel 6 Selection Bit 0
TOCC6S1	= 5	; Timer Output Compare Channel 6 Selection Bit 1
TOCC7S0	= 6	; Timer Output Compare Channel 7 Selection Bit 0
TOCC7S1	= 7	; Timer Output Compare Channel 7 Selection Bit 1

; TOCPMSA0 - Timer Output Compare Pin Mux Selection 0
TOCC0S0	= 0	; Timer Output Compare Channel 0 Selection Bit 0
TOCC0S1	= 1	; Timer Output Compare Channel 0 Selection Bit 1
TOCC1S0	= 2	; Timer Output Compare Channel 1 Selection Bit 0
TOCC1S1	= 3	; Timer Output Compare Channel 1 Selection Bit 1
TOCC2S0	= 4	; Timer Output Compare Channel 2 Selection Bit 0
TOCC2S1	= 5	; Timer Output Compare Channel 2 Selection Bit 1
TOCC3S0	= 6	; Timer Output Compare Channel 3 Selection Bit 0
TOCC3S1	= 7	; Timer Output Compare Channel 3 Selection Bit 1

; TOCPMCOE - Timer Output Compare Pin Mux Channel Output Enable
TOCC0OE	= 0	; Timer Output Compare Channel 0 Output Enable
TOCC1OE	= 1	; Timer Output Compare Channel 1 Output Enable
TOCC2OE	= 2	; Timer Output Compare Channel 2 Output Enable
TOCC3OE	= 3	; Timer Output Compare Channel 3 Output Enable
TOCC4OE	= 4	; Timer Output Compare Channel 4 Output Enable
TOCC5OE	= 5	; Timer Output Compare Channel 5 Output Enable
TOCC6OE	= 6	; Timer Output Compare Channel 6 Output Enable
TOCC7OE	= 7	; Timer Output Compare Channel 7 Output Enable


; ***** AD_CONVERTER *****************
; ADMUXA - The ADC multiplexer Selection Register A
MUX0	= 0	; Analog Channel Selection Bits 4:0
MUX1	= 1	; Analog Channel Selection Bits 4:0
MUX2	= 2	; Analog Channel Selection Bits 4:0
MUX3	= 3	; Analog Channel Selection Bits 4:0
MUX4	= 4	; Analog Channel Selection Bits 4:0

; ADMUXB - The ADC multiplexer Selection Register B
MUX5	= 0	; Analog Channel Selection Bit 5
REFS	= 5	; Reference Selection Bit

; ADCSRA - The ADC Control and Status register
ADPS0	= 0	; ADC Prescaler Select Bits
ADPS1	= 1	; ADC Prescaler Select Bits
ADPS2	= 2	; ADC Prescaler Select Bits
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
ADLAR	= 3	; 

; DIDR3 - Digital Input Disable Register 2
ADC24D	= 0	; ADC24 Digital input Disable
ADC25D	= 1	; ADC25 Digital input Disable
ADC26D	= 2	; ADC26 Digital input Disable
ADC27D	= 3	; ADC27 Digital input Disable

; DIDR2 - Digital Input Disable Register 2
ADC16D	= 0	; ADC16 Digital input Disable
ADC17D	= 1	; ADC17 Digital input Disable
ADC18D	= 2	; ADC18 Digital input Disable
ADC19D	= 3	; ADC19 Digital input Disable
ADC20D	= 4	; ADC20 Digital input Disable
ADC21D	= 5	; ADC21 Digital input Disable
ADC22D	= 6	; ADC22 Digital input Disable
ADC23D	= 7	; ADC23 Digital input Disable

; DIDR1 - Digital Input Disable Register 1
ADC8D	= 0	; ADC8 Digital input Disable
ADC9D	= 1	; ADC9 Digital input Disable
ADC10D	= 2	; ADC10 Digital input Disable
ADC11D	= 3	; ADC11 Digital input Disable
ADC12D	= 4	; ADC12 Digital input Disable
ADC13D	= 5	; ADC13 Digital input Disable
ADC14D	= 6	; ADC14 Digital input Disable
ADC15D	= 7	; ADC15 Digital input Disable

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0	; ADC0 Digital input Disable
ADC1D	= 1	; ADC1 Digital input Disable
ADC2D	= 2	; ADC2 Digital input Disable
ADC3D	= 3	; ADC3 Digital input Disable
ADC4D	= 4	; ADC4 Digital input Disable
ADC5D	= 5	; ADC5 Digital input Disable
ADC6D	= 6	; ADC6 Digital input Disable
ADC7D	= 7	; ADC7 Digital input Disable


; ***** ANALOG_COMPARATOR ************
; ACSRA - Analog Comparator Control And Status Register A
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; Analog Comparator Input Capture Enable
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACPMUX2	= 6	; Analog Comparator Positive Input Multiplexer Bit 2
ACD	= 7	; Analog Comparator Disable

; ACSRB - Analog Comparator Control And Status Register B
ACPMUX0	= 0	; Analog Comparator Positive Input Multiplexer Bits 1:0
ACPMUX1	= 1	; Analog Comparator Positive Input Multiplexer Bits 1:0
ACNMUX0	= 2	; Analog Comparator Negative Input Multiplexer
ACNMUX1	= 3	; Analog Comparator Negative Input Multiplexer
HLEV	= 6	; Hysteresis Level
HSEL	= 7	; Hysteresis Select


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register
ISC00	= 0	; External Interrupt Sense Control 0 Bit 0
ISC01	= 1	; External Interrupt Sense Control 0 Bit 1
ISC10	= 2	; External Interrupt Sense Control 1 Bit 0
ISC11	= 3	; External Interrupt Sense Control 1 Bit 1

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request Enable 0
INT1	= 1	; External Interrupt Request Enable 1

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag 0
INTF1	= 1	; External Interrupt Flag 1

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable 0
PCIE1	= 1	; Pin Change Interrupt Enable 1
PCIE2	= 2	; Pin Change Interrupt Enable 2
PCIE3	= 3	; Pin Change Interrupt Enable 3

; PCMSK3 - Pin Change Mask Register 3
PCINT24	= 0	; Pin Change Enable Mask 24
PCINT25	= 1	; Pin Change Enable Mask 25
PCINT26	= 2	; Pin Change Enable Mask 26
PCINT27	= 3	; Pin Change Enable Mask 27

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


; ***** WATCHDOG *********************
; WDTCSR - Watchdog Timer Control and Status Register
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timer Interrupt Enable
WDIF	= 7	; Watchdog Timer Interrupt Flag


; ***** EEPROM ***********************
; EEAR - EEPROM Read/Write Access
EEARL	= EEAR	; For compatibility
EEAR0	= 0	; EEPROM Read/Write Access bit 0
EEAR1	= 1	; EEPROM Read/Write Access bit 1
EEAR2	= 2	; EEPROM Read/Write Access bit 2
EEAR3	= 3	; EEPROM Read/Write Access bit 3
EEAR4	= 4	; EEPROM Read/Write Access bit 4
EEAR5	= 5	; EEPROM Read/Write Access bit 5
EEAR6	= 6	; EEPROM Read/Write Access bit 6
EEAR7	= 7	; EEPROM Read/Write Access bit 7

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
EEWE	= EEPE	; For compatibility
EEMPE	= 2	; EEPROM Master Write Enable
EEMWE	= EEMPE	; For compatibility
EERIE	= 3	; EEProm Ready Interrupt Enable
EEPM0	= 4	; EEPROM Programming Mode Bit 0
EEPM1	= 5	; EEPROM Programming Mode Bit 1


; ***** TWI **************************
; TWSCRA - TWI Slave Control Register A
TWSME	= 0	; TWI Smart Mode Enable
TWPME	= 1	; TWI Promiscuous Mode Enable
TWSIE	= 2	; TWI Stop Interrupt Enable
TWEN	= 3	; Two-Wire Interface Enable
TWASIE	= 4	; TWI Address/Stop Interrupt Enable
TWDIE	= 5	; TWI Data Interrupt Enable
TWSHE	= 7	; TWI SDA Hold Time Enable

; TWSCRB - TWI Slave Control Register B
TWCMD0	= 0	; 
TWCMD1	= 1	; 
TWAA	= 2	; TWI Acknowledge Action
TWHNM	= 3	; TWI High Noise Mode

; TWSSRA - TWI Slave Status Register A
TWAS	= 0	; TWI Address or Stop
TWDIR	= 1	; TWI Read/Write Direction
TWBE	= 2	; TWI Bus Error
TWC	= 3	; TWI Collision
TWRA	= 4	; TWI Receive Acknowledge
TWCH	= 5	; TWI Clock Hold
TWASIF	= 6	; TWI Address/Stop Interrupt Flag
TWDIF	= 7	; TWI Data Interrupt Flag.

; TWSA - TWI Slave Address Register
TWSA0	= 0	; TWI slave address bit
TWSA1	= 1	; TWI slave address bit
TWSA2	= 2	; TWI slave address bit
TWSA3	= 3	; TWI slave address bit
TWSA4	= 4	; TWI slave address bit
TWSA5	= 5	; TWI slave address bit
TWSA6	= 6	; TWI slave address bit
TWSA7	= 7	; TWI slave address bit

; TWSD - TWI Slave Data Register
TWSD0	= 0	; TWI slave data bit
TWSD1	= 1	; TWI slave data bit
TWSD2	= 2	; TWI slave data bit
TWSD3	= 3	; TWI slave data bit
TWSD4	= 4	; TWI slave data bit
TWSD5	= 5	; TWI slave data bit
TWSD6	= 6	; TWI slave data bit
TWSD7	= 7	; TWI slave data bit

; TWSAM - TWI Slave Address Mask Register
TWAE	= 0	; TWI Address Enable
TWSAM1	= 1	; TWI Address Mask Bit 1
TWSAM2	= 2	; TWI Address Mask Bit 2
TWSAM3	= 3	; TWI Address Mask Bit 3
TWSAM4	= 4	; TWI Address Mask Bit 4
TWSAM5	= 5	; TWI Address Mask Bit 5
TWSAM6	= 6	; TWI Address Mask Bit 6
TWSAM7	= 7	; TWI Address Mask Bit 7


; ***** USART ************************
; UDR - USART I/O Data Register
UDR_0	= 0	; USART I/O Data Register bit 0
UDR_1	= 1	; USART I/O Data Register bit 1
UDR_2	= 2	; USART I/O Data Register bit 2
UDR_3	= 3	; USART I/O Data Register bit 3
UDR_4	= 4	; USART I/O Data Register bit 4
UDR_5	= 5	; USART I/O Data Register bit 5
UDR_6	= 6	; USART I/O Data Register bit 6
UDR_7	= 7	; USART I/O Data Register bit 7

; UCSRA - USART Control and Status Register A
MPCM	= 0	; Multi-processor Communication Mode
U2X	= 1	; Double the USART transmission speed
UPE	= 2	; Parity Error
DOR	= 3	; Data overRun
FE	= 4	; Framing Error
UDRE	= 5	; USART Data Register Empty
TXC	= 6	; USART Transmitt Complete
RXC	= 7	; USART Receive Complete

; UCSRB - USART Control and Status Register B
TXB8	= 0	; Transmit Data Bit 8
RXB8	= 1	; Receive Data Bit 8
UCSZ2	= 2	; Character Size
TXEN	= 3	; Transmitter Enable
RXEN	= 4	; Receiver Enable
UDRIE	= 5	; USART Data register Empty Interrupt Enable
TXCIE	= 6	; TX Complete Interrupt Enable
RXCIE	= 7	; RX Complete Interrupt Enable

; UCSRC - USART Control and Status Register C
UCPOL	= 0	; Clock Polarity
UCSZ0	= 1	; Character Size
UCPHA0	= UCSZ0	; For compatibility
UCSZ1	= 2	; Character Size
UDORD0	= UCSZ1	; For compatibility
USBS	= 3	; Stop Bit Select
UPM0	= 4	; Parity Mode Bit 0
UPM1	= 5	; Parity Mode Bit 1
UMSEL0	= 6	; USART Mode Select
;UMSEL0	= UMSEL0	; For compatibility
UMSEL1	= 7	; USART Mode Select
;UMSEL1	= UMSEL1	; For compatibility

; UCSRD - USART Control and Status Register D
SFDE	= 5	; USART RX Start Frame Detection Enable
RXS	= 6	; USART RX Start Flag
;RXS	= RXS	; For compatibility
RXSIE	= 7	; USART RX Start Interrupt Enable
;RXSIE	= RXSIE	; For compatibility

; UBRRL - USART Baud Rate Register Low Byte
_UBRR0	= 0	; USART Baud Rate Register bit 0
_UBRR1	= 1	; USART Baud Rate Register bit 1
UBRR2	= 2	; USART Baud Rate Register bit 2
UBRR3	= 3	; USART Baud Rate Register bit 3
UBRR4	= 4	; USART Baud Rate Register bit 4
UBRR5	= 5	; USART Baud Rate Register bit 5
UBRR6	= 6	; USART Baud Rate Register bit 6
UBRR7	= 7	; USART Baud Rate Register bit 7



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
SUT0	= 4	; Select start-up time
SUT1	= 5	; Select start-up time
CKOUT	= 6	; Clock output
CKDIV8	= 7	; Divide clock by 8

; HIGH fuse bits
BODLEVEL0	= 0	; Brown-out Detector trigger level
BODLEVEL1	= 1	; Brown-out Detector trigger level
BODLEVEL2	= 2	; Brown-out Detector trigger level
EESAVE	= 3	; EEPROM memory is preserved through chip erase
WDTON	= 4	; Watchdog Timer Always On
SPIEN	= 5	; Enable Serial programming and Data Downloading
DWEN	= 6	; debugWIRE Enable
RSTDISBL	= 7	; External reset disable

; EXTENDED fuse bits
BOOTRST	= 0	; Select reset vector
BOOTSZ0	= 1	; Select boot size
BOOTSZ1	= 2	; Select boot size
BODACT0	= 4	; Brown-out detector mode
BODACT1	= 5	; Brown-out detector mode
BODPD0	= 6	; Brown-out detector mode
BODPD1	= 7	; Brown-out detector mode



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x0fff	; Note: Word address
IOEND	= 0x00ff
SRAM_START	= 0x0100
SRAM_SIZE	= 512
RAMEND	= 0x02ff
XRAMEND	= 0x0000
E2END	= 0x00ff
EEPROMEND	= 0x00ff
EEADRBITS	= 8



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0xc00
NRWW_STOP_ADDR	= 0xfff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0xbff
PAGESIZE	= 32
FIRSTBOOTSTART	= 0xf80
SECONDBOOTSTART	= 0xf00
THIRDBOOTSTART	= 0xe00
FOURTHBOOTSTART	= 0xc00
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt Request 0
INT1addr	= 0x0002	; External Interrupt Request 1
PCI0addr	= 0x0003	; Pin Change Interrupt Request 0
PCI1addr	= 0x0004	; Pin Change Interrupt Request 1
PCI2addr	= 0x0005	; Pin Change Interrupt Request 2
PCI3addr	= 0x0006	; Pin Change Interrupt Request 3
WDTaddr	= 0x0007	; Watchdog Time-out Interrupt
ICP1addr	= 0x0008	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0009	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x000a	; Timer/Counter1 Compare Match B
OVF1addr	= 0x000b	; Timer/Counter1 Overflow
OC0Aaddr	= 0x000c	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x000d	; Timer/Counter0 Compare Match B
OVF0addr	= 0x000e	; Timer/Counter0 Overflow
SPIaddr	= 0x000f	; SPI Serial Transfer Complete
USART__STARTaddr	= 0x0010	; USART, Start
URXCaddr	= 0x0011	; USART Rx Complete
UDREaddr	= 0x0012	; USART, Data Register Empty
UTXCaddr	= 0x0013	; USART Tx Complete
ADCCaddr	= 0x0014	; ADC Conversion Complete
ERDYaddr	= 0x0015	; EEPROM Ready
ACIaddr	= 0x0016	; Analog Comparator
TWIaddr	= 0x0017	; Two-wire Serial Interface
SPMRaddr	= 0x0018	; Store Program Memory Read
QTRIPaddr	= 0x0019	; Touch Sensing

INT_VECTORS_SIZE	= 26	; size in words


; ***** END OF FILE ******************************************************
