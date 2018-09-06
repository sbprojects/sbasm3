;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : m48PBdef.inc
;* Title             : Register/Bit Definitions for the ATmega48PB
;* Created           : 2016-09-18 20:43
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATmega48PB
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
; device	ATmega48PB

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x92
SIGNATURE_002	= 0x10

                .CR     avr
                .FA     enhanced128k
				.MS		$0800

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED" are extended I/O ports
; and cannot be used with IN/OUT instructions
DEVID8	= 0xF8 ; MEMORY MAPPED
DEVID7	= 0xF7 ; MEMORY MAPPED
DEVID6	= 0xF6 ; MEMORY MAPPED
DEVID5	= 0xF5 ; MEMORY MAPPED
DEVID4	= 0xF4 ; MEMORY MAPPED
DEVID3	= 0xF3 ; MEMORY MAPPED
DEVID2	= 0xF2 ; MEMORY MAPPED
DEVID1	= 0xF1 ; MEMORY MAPPED
DEVID0	= 0xF0 ; MEMORY MAPPED
UDR0	= 0xC6 ; MEMORY MAPPED
UBRR0H	= 0xC5 ; MEMORY MAPPED
UBRR0L	= 0xC4 ; MEMORY MAPPED
UCSR0D	= 0xC3 ; MEMORY MAPPED
UCSR0C	= 0xC2 ; MEMORY MAPPED
UCSR0B	= 0xC1 ; MEMORY MAPPED
UCSR0A	= 0xC0 ; MEMORY MAPPED
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
ADMUX	= 0x7C ; MEMORY MAPPED
ADCSRB	= 0x7B ; MEMORY MAPPED
ADCSRA	= 0x7A ; MEMORY MAPPED
ADCH	= 0x79 ; MEMORY MAPPED
ADCL	= 0x78 ; MEMORY MAPPED
TIMSK2	= 0x70 ; MEMORY MAPPED
TIMSK1	= 0x6F ; MEMORY MAPPED
TIMSK0	= 0x6E ; MEMORY MAPPED
PCMSK2	= 0x6D ; MEMORY MAPPED
PCMSK1	= 0x6C ; MEMORY MAPPED
PCMSK0	= 0x6B ; MEMORY MAPPED
EICRA	= 0x69 ; MEMORY MAPPED
PCICR	= 0x68 ; MEMORY MAPPED
OSCCAL	= 0x66 ; MEMORY MAPPED
PRR	= 0x64 ; MEMORY MAPPED
CLKPR	= 0x61 ; MEMORY MAPPED
WDTCSR	= 0x60 ; MEMORY MAPPED
SREG	= 0x3F ; 
SPH	= 0x3E ; 
SPL	= 0x3D ; 
SPMCSR	= 0x37 ; 
MCUCR	= 0x35 ; 
MCUSR	= 0x34 ; 
SMCR	= 0x33 ; 
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
EEARL	= 0x21 ; 
EEDR	= 0x20 ; 
EECR	= 0x1F ; 
GPIOR0	= 0x1E ; 
EIMSK	= 0x1D ; 
EIFR	= 0x1C ; 
PCIFR	= 0x1B ; 
TIFR2	= 0x17 ; 
TIFR1	= 0x16 ; 
TIFR0	= 0x15 ; 
ACSRB	= 0x0F ; 
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


; ***** BIT DEFINITIONS **************************************************

; ***** USART0 *****************
; UDR0 - USART I/O Data Register
UDR00	= 0 ; USART I/O Data Register Bit 0
UDR01	= 1 ; USART I/O Data Register Bit 1
UDR02	= 2 ; USART I/O Data Register Bit 2
UDR03	= 3 ; USART I/O Data Register Bit 3
UDR04	= 4 ; USART I/O Data Register Bit 4
UDR05	= 5 ; USART I/O Data Register Bit 5
UDR06	= 6 ; USART I/O Data Register Bit 6
UDR07	= 7 ; USART I/O Data Register Bit 7

; UCSR0A - USART Control and Status Register A
MPCM0	= 0 ; Multi-processor Communication Mode
U2X0	= 1 ; Double the USART transmission speed
UPE0	= 2 ; Parity Error
DOR0	= 3 ; Data overRun
FE0	= 4 ; Framing Error
UDRE0	= 5 ; USART Data Register Empty
TXC0	= 6 ; USART Transmitt Complete
RXC0	= 7 ; USART Receive Complete

; UCSR0B - USART Control and Status Register B
TXB80	= 0 ; Transmit Data Bit 8
RXB80	= 1 ; Receive Data Bit 8
UCSZ02	= 2 ; Character Size
TXEN0	= 3 ; Transmitter Enable
RXEN0	= 4 ; Receiver Enable
UDRIE0	= 5 ; USART Data register Empty Interrupt Enable
TXCIE0	= 6 ; TX Complete Interrupt Enable
RXCIE0	= 7 ; RX Complete Interrupt Enable

; UCSR0C - USART Control and Status Register C
UCPOL0	= 0 ; Clock Polarity
UCSZ00	= 1 ; Character Size
UCSZ01	= 2 ; Character Size
USBS0	= 3 ; Stop Bit Select
UPM00	= 4 ; Parity Mode Bits
UPM01	= 5 ; Parity Mode Bits
UMSEL00	= 6 ; USART Mode Select
UMSEL01	= 7 ; USART Mode Select

; UCSR0D - USART Control and Status Register D
SFDE	= 5 ; Start Frame Detection Enable
RXS	= 6 ; RX Start
RXSIE	= 7 ; RX Start Interrupt Enable

; UBRR0 - USART Baud Rate Register Bytes
UBRR0H0	= 0 ; USART Baud Rate Register Bytes High Bit 8
UBRR0H1	= 1 ; USART Baud Rate Register Bytes High Bit 9
UBRR0H2	= 2 ; USART Baud Rate Register Bytes High Bit 10
UBRR0H3	= 3 ; USART Baud Rate Register Bytes High Bit 11

UBRR0L0	= 0 ; USART Baud Rate Register Bytes Low Bit 0
UBRR0L1	= 1 ; USART Baud Rate Register Bytes Low Bit 1
UBRR0L2	= 2 ; USART Baud Rate Register Bytes Low Bit 2
UBRR0L3	= 3 ; USART Baud Rate Register Bytes Low Bit 3
UBRR0L4	= 4 ; USART Baud Rate Register Bytes Low Bit 4
UBRR0L5	= 5 ; USART Baud Rate Register Bytes Low Bit 5
UBRR0L6	= 6 ; USART Baud Rate Register Bytes Low Bit 6
UBRR0L7	= 7 ; USART Baud Rate Register Bytes Low Bit 7


; ***** TWI *****************
; TWAMR - TWI (Slave) Address Mask Register
TWAM0	= 1 ; 
TWAM1	= 2 ; 
TWAM2	= 3 ; 
TWAM3	= 4 ; 
TWAM4	= 5 ; 
TWAM5	= 6 ; 
TWAM6	= 7 ; 

; TWBR - TWI Bit Rate register
TWBR0	= 0 ; TWI Bit Rate register Bit 0
TWBR1	= 1 ; TWI Bit Rate register Bit 1
TWBR2	= 2 ; TWI Bit Rate register Bit 2
TWBR3	= 3 ; TWI Bit Rate register Bit 3
TWBR4	= 4 ; TWI Bit Rate register Bit 4
TWBR5	= 5 ; TWI Bit Rate register Bit 5
TWBR6	= 6 ; TWI Bit Rate register Bit 6
TWBR7	= 7 ; TWI Bit Rate register Bit 7

; TWCR - TWI Control Register
TWIE	= 0 ; TWI Interrupt Enable
TWEN	= 2 ; TWI Enable Bit
TWWC	= 3 ; TWI Write Collition Flag
TWSTO	= 4 ; TWI Stop Condition Bit
TWSTA	= 5 ; TWI Start Condition Bit
TWEA	= 6 ; TWI Enable Acknowledge Bit
TWINT	= 7 ; TWI Interrupt Flag

; TWSR - TWI Status Register
TWPS0	= 0 ; TWI Prescaler
TWPS1	= 1 ; TWI Prescaler
TWS3	= 3 ; TWI Status
TWS4	= 4 ; TWI Status
TWS5	= 5 ; TWI Status
TWS6	= 6 ; TWI Status
TWS7	= 7 ; TWI Status

; TWDR - TWI Data register
TWDR0	= 0 ; TWI Data register Bit 0
TWDR1	= 1 ; TWI Data register Bit 1
TWDR2	= 2 ; TWI Data register Bit 2
TWDR3	= 3 ; TWI Data register Bit 3
TWDR4	= 4 ; TWI Data register Bit 4
TWDR5	= 5 ; TWI Data register Bit 5
TWDR6	= 6 ; TWI Data register Bit 6
TWDR7	= 7 ; TWI Data register Bit 7

; TWAR - TWI (Slave) Address register
TWGCE	= 0 ; TWI General Call Recognition Enable Bit
TWA0	= 1 ; TWI (Slave) Address register Bits
TWA1	= 2 ; TWI (Slave) Address register Bits
TWA2	= 3 ; TWI (Slave) Address register Bits
TWA3	= 4 ; TWI (Slave) Address register Bits
TWA4	= 5 ; TWI (Slave) Address register Bits
TWA5	= 6 ; TWI (Slave) Address register Bits
TWA6	= 7 ; TWI (Slave) Address register Bits


; ***** TC1 *****************
; TIMSK1 - Timer/Counter Interrupt Mask Register
TOIE1	= 0 ; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1 ; Timer/Counter1 Output CompareA Match Interrupt Enable
OCIE1B	= 2 ; Timer/Counter1 Output CompareB Match Interrupt Enable
ICIE1	= 5 ; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0 ; Timer/Counter1 Overflow Flag
OCF1A	= 1 ; Output Compare Flag 1A
OCF1B	= 2 ; Output Compare Flag 1B
ICF1	= 5 ; Input Capture Flag 1

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0 ; Waveform Generation Mode
WGM11	= 1 ; Waveform Generation Mode
COM1B0	= 4 ; Compare Output Mode 1B, bits
COM1B1	= 5 ; Compare Output Mode 1B, bits
COM1A0	= 6 ; Compare Output Mode 1A, bits
COM1A1	= 7 ; Compare Output Mode 1A, bits

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0 ; Prescaler source of Timer/Counter 1
CS11	= 1 ; Prescaler source of Timer/Counter 1
CS12	= 2 ; Prescaler source of Timer/Counter 1
WGM12	= 3 ; Waveform Generation Mode
WGM13	= 4 ; Waveform Generation Mode
ICES1	= 6 ; Input Capture 1 Edge Select
ICNC1	= 7 ; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6 ; 
FOC1A	= 7 ; 

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

; OCR1A - Timer/Counter1 Output Compare Register  Bytes
OCR1AH0	= 0 ; Timer/Counter1 Output Compare Register  Bytes High Bit 8
OCR1AH1	= 1 ; Timer/Counter1 Output Compare Register  Bytes High Bit 9
OCR1AH2	= 2 ; Timer/Counter1 Output Compare Register  Bytes High Bit 10
OCR1AH3	= 3 ; Timer/Counter1 Output Compare Register  Bytes High Bit 11
OCR1AH4	= 4 ; Timer/Counter1 Output Compare Register  Bytes High Bit 12
OCR1AH5	= 5 ; Timer/Counter1 Output Compare Register  Bytes High Bit 13
OCR1AH6	= 6 ; Timer/Counter1 Output Compare Register  Bytes High Bit 14
OCR1AH7	= 7 ; Timer/Counter1 Output Compare Register  Bytes High Bit 15

OCR1AL0	= 0 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 0
OCR1AL1	= 1 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 1
OCR1AL2	= 2 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 2
OCR1AL3	= 3 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 3
OCR1AL4	= 4 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 4
OCR1AL5	= 5 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 5
OCR1AL6	= 6 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 6
OCR1AL7	= 7 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 7

; OCR1B - Timer/Counter1 Output Compare Register  Bytes
OCR1BH0	= 0 ; Timer/Counter1 Output Compare Register  Bytes High Bit 8
OCR1BH1	= 1 ; Timer/Counter1 Output Compare Register  Bytes High Bit 9
OCR1BH2	= 2 ; Timer/Counter1 Output Compare Register  Bytes High Bit 10
OCR1BH3	= 3 ; Timer/Counter1 Output Compare Register  Bytes High Bit 11
OCR1BH4	= 4 ; Timer/Counter1 Output Compare Register  Bytes High Bit 12
OCR1BH5	= 5 ; Timer/Counter1 Output Compare Register  Bytes High Bit 13
OCR1BH6	= 6 ; Timer/Counter1 Output Compare Register  Bytes High Bit 14
OCR1BH7	= 7 ; Timer/Counter1 Output Compare Register  Bytes High Bit 15

OCR1BL0	= 0 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 0
OCR1BL1	= 1 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 1
OCR1BL2	= 2 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 2
OCR1BL3	= 3 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 3
OCR1BL4	= 4 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 4
OCR1BL5	= 5 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 5
OCR1BL6	= 6 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 6
OCR1BL7	= 7 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 7

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

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0 ; Prescaler Reset Timer/Counter1 and Timer/Counter0
TSM	= 7 ; Timer/Counter Synchronization Mode


; ***** TC2 *****************
; TIMSK2 - Timer/Counter Interrupt Mask register
TOIE2	= 0 ; Timer/Counter2 Overflow Interrupt Enable
OCIE2A	= 1 ; Timer/Counter2 Output Compare Match A Interrupt Enable
OCIE2B	= 2 ; Timer/Counter2 Output Compare Match B Interrupt Enable

; TIFR2 - Timer/Counter Interrupt Flag Register
TOV2	= 0 ; Timer/Counter2 Overflow Flag
OCF2A	= 1 ; Output Compare Flag 2A
OCF2B	= 2 ; Output Compare Flag 2B

; TCCR2A - Timer/Counter2 Control Register A
WGM20	= 0 ; Waveform Genration Mode
WGM21	= 1 ; Waveform Genration Mode
COM2B0	= 4 ; Compare Output Mode bits
COM2B1	= 5 ; Compare Output Mode bits
COM2A0	= 6 ; Compare Output Mode bits
COM2A1	= 7 ; Compare Output Mode bits

; TCCR2B - Timer/Counter2 Control Register B
CS20	= 0 ; Clock Select bits
CS21	= 1 ; Clock Select bits
CS22	= 2 ; Clock Select bits
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
TCR2BUB	= 0 ; Timer/Counter Control Register2 Update Busy
TCR2AUB	= 1 ; Timer/Counter Control Register2 Update Busy
OCR2BUB	= 2 ; Output Compare Register 2 Update Busy
OCR2AUB	= 3 ; Output Compare Register2 Update Busy
TCN2UB	= 4 ; Timer/Counter2 Update Busy
AS2	= 5 ; Asynchronous Timer/Counter2
EXCLK	= 6 ; Enable External Clock Input

; GTCCR - General Timer Counter Control register
PSRASY	= 1 ; Prescaler Reset Timer/Counter2


; ***** ADC *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0 ; Analog Channel and Gain Selection Bits
MUX1	= 1 ; Analog Channel and Gain Selection Bits
MUX2	= 2 ; Analog Channel and Gain Selection Bits
MUX3	= 3 ; Analog Channel and Gain Selection Bits
ADLAR	= 5 ; Left Adjust Result
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

; ADCSRA - The ADC Control and Status register A
ADPS0	= 0 ; ADC  Prescaler Select Bits
ADPS1	= 1 ; ADC  Prescaler Select Bits
ADPS2	= 2 ; ADC  Prescaler Select Bits
ADIE	= 3 ; ADC Interrupt Enable
ADIF	= 4 ; ADC Interrupt Flag
ADATE	= 5 ; ADC  Auto Trigger Enable
ADSC	= 6 ; ADC Start Conversion
ADEN	= 7 ; ADC Enable

; ADCSRB - The ADC Control and Status register B
ADTS0	= 0 ; ADC Auto Trigger Source bits
ADTS1	= 1 ; ADC Auto Trigger Source bits
ADTS2	= 2 ; ADC Auto Trigger Source bits
ACME	= 6 ; 

; DIDR0 - Digital Input Disable Register
ADC0D	= 0 ; 
ADC1D	= 1 ; 
ADC2D	= 2 ; 
ADC3D	= 3 ; 
ADC4D	= 4 ; 
ADC5D	= 5 ; 


; ***** AC *****************
; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0 ; Analog Comparator Interrupt Mode Select bits
ACIS1	= 1 ; Analog Comparator Interrupt Mode Select bits
ACIC	= 2 ; Analog Comparator Input Capture Enable
ACIE	= 3 ; Analog Comparator Interrupt Enable
ACI	= 4 ; Analog Comparator Interrupt Flag
ACO	= 5 ; Analog Compare Output
ACBG	= 6 ; Analog Comparator Bandgap Select
ACD	= 7 ; Analog Comparator Disable

; DIDR1 - Digital Input Disable Register 1
AIN0D	= 0 ; AIN0 Digital Input Disable
AIN1D	= 1 ; AIN1 Digital Input Disable

; ACSRB - Analog Comparator Status Register B
ACOE	= 0 ; Analog Comparator Output Enable


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

; PINB - Port B Input Pins
PINB0	= 0 ; Port B Input Pins Bit 0
PINB1	= 1 ; Port B Input Pins Bit 1
PINB2	= 2 ; Port B Input Pins Bit 2
PINB3	= 3 ; Port B Input Pins Bit 3
PINB4	= 4 ; Port B Input Pins Bit 4
PINB5	= 5 ; Port B Input Pins Bit 5
PINB6	= 6 ; Port B Input Pins Bit 6
PINB7	= 7 ; Port B Input Pins Bit 7


; ***** PORTC *****************
; PORTC - Port C Data Register
PORTC0	= 0 ; Port C Data Register Bit 0
PORTC1	= 1 ; Port C Data Register Bit 1
PORTC2	= 2 ; Port C Data Register Bit 2
PORTC3	= 3 ; Port C Data Register Bit 3
PORTC4	= 4 ; Port C Data Register Bit 4
PORTC5	= 5 ; Port C Data Register Bit 5
PORTC6	= 6 ; Port C Data Register Bit 6

; DDRC - Port C Data Direction Register
DDRC0	= 0 ; Port C Data Direction Register Bit 0
DDRC1	= 1 ; Port C Data Direction Register Bit 1
DDRC2	= 2 ; Port C Data Direction Register Bit 2
DDRC3	= 3 ; Port C Data Direction Register Bit 3
DDRC4	= 4 ; Port C Data Direction Register Bit 4
DDRC5	= 5 ; Port C Data Direction Register Bit 5
DDRC6	= 6 ; Port C Data Direction Register Bit 6

; PINC - Port C Input Pins
PINC0	= 0 ; Port C Input Pins Bit 0
PINC1	= 1 ; Port C Input Pins Bit 1
PINC2	= 2 ; Port C Input Pins Bit 2
PINC3	= 3 ; Port C Input Pins Bit 3
PINC4	= 4 ; Port C Input Pins Bit 4
PINC5	= 5 ; Port C Input Pins Bit 5
PINC6	= 6 ; Port C Input Pins Bit 6


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

; PIND - Port D Input Pins
PIND0	= 0 ; Port D Input Pins Bit 0
PIND1	= 1 ; Port D Input Pins Bit 1
PIND2	= 2 ; Port D Input Pins Bit 2
PIND3	= 3 ; Port D Input Pins Bit 3
PIND4	= 4 ; Port D Input Pins Bit 4
PIND5	= 5 ; Port D Input Pins Bit 5
PIND6	= 6 ; Port D Input Pins Bit 6
PIND7	= 7 ; Port D Input Pins Bit 7


; ***** PORTE *****************
; PORTE - Port E Data Register
PORTE0	= 0 ; Port E Data Register Bit 0
PORTE1	= 1 ; Port E Data Register Bit 1
PORTE2	= 2 ; Port E Data Register Bit 2
PORTE3	= 3 ; Port E Data Register Bit 3

; DDRE - Port E Data Direction Register
DDRE0	= 0 ; Port E Data Direction Register Bit 0
DDRE1	= 1 ; Port E Data Direction Register Bit 1
DDRE2	= 2 ; Port E Data Direction Register Bit 2
DDRE3	= 3 ; Port E Data Direction Register Bit 3

; PINE - Port E Input Pins
PINE0	= 0 ; Port E Input Pins Bit 0
PINE1	= 1 ; Port E Input Pins Bit 1
PINE2	= 2 ; Port E Input Pins Bit 2
PINE3	= 3 ; Port E Input Pins Bit 3


; ***** TC0 *****************
; OCR0B - Timer/Counter0 Output Compare Register
OCR0B0	= 0 ; Timer/Counter0 Output Compare Register Bit 0
OCR0B1	= 1 ; Timer/Counter0 Output Compare Register Bit 1
OCR0B2	= 2 ; Timer/Counter0 Output Compare Register Bit 2
OCR0B3	= 3 ; Timer/Counter0 Output Compare Register Bit 3
OCR0B4	= 4 ; Timer/Counter0 Output Compare Register Bit 4
OCR0B5	= 5 ; Timer/Counter0 Output Compare Register Bit 5
OCR0B6	= 6 ; Timer/Counter0 Output Compare Register Bit 6
OCR0B7	= 7 ; Timer/Counter0 Output Compare Register Bit 7

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A0	= 0 ; Timer/Counter0 Output Compare Register Bit 0
OCR0A1	= 1 ; Timer/Counter0 Output Compare Register Bit 1
OCR0A2	= 2 ; Timer/Counter0 Output Compare Register Bit 2
OCR0A3	= 3 ; Timer/Counter0 Output Compare Register Bit 3
OCR0A4	= 4 ; Timer/Counter0 Output Compare Register Bit 4
OCR0A5	= 5 ; Timer/Counter0 Output Compare Register Bit 5
OCR0A6	= 6 ; Timer/Counter0 Output Compare Register Bit 6
OCR0A7	= 7 ; Timer/Counter0 Output Compare Register Bit 7

; TCNT0 - Timer/Counter0
TCNT00	= 0 ; Timer/Counter0 Bit 0
TCNT01	= 1 ; Timer/Counter0 Bit 1
TCNT02	= 2 ; Timer/Counter0 Bit 2
TCNT03	= 3 ; Timer/Counter0 Bit 3
TCNT04	= 4 ; Timer/Counter0 Bit 4
TCNT05	= 5 ; Timer/Counter0 Bit 5
TCNT06	= 6 ; Timer/Counter0 Bit 6
TCNT07	= 7 ; Timer/Counter0 Bit 7

; TCCR0B - Timer/Counter Control Register B
CS00	= 0 ; Clock Select
CS01	= 1 ; Clock Select
CS02	= 2 ; Clock Select
WGM02	= 3 ; 
FOC0B	= 6 ; Force Output Compare B
FOC0A	= 7 ; Force Output Compare A

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0 ; Waveform Generation Mode
WGM01	= 1 ; Waveform Generation Mode
COM0B0	= 4 ; Compare Output Mode, Fast PWm
COM0B1	= 5 ; Compare Output Mode, Fast PWm
COM0A0	= 6 ; Compare Output Mode, Phase Correct PWM Mode
COM0A1	= 7 ; Compare Output Mode, Phase Correct PWM Mode

; TIMSK0 - Timer/Counter0 Interrupt Mask Register
TOIE0	= 0 ; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1 ; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2 ; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag register
TOV0	= 0 ; Timer/Counter0 Overflow Flag
OCF0A	= 1 ; Timer/Counter0 Output Compare Flag 0A
OCF0B	= 2 ; Timer/Counter0 Output Compare Flag 0B

; GTCCR - General Timer/Counter Control Register


; ***** EXINT *****************
; EICRA - External Interrupt Control Register
ISC00	= 0 ; External Interrupt Sense Control 0 Bits
ISC01	= 1 ; External Interrupt Sense Control 0 Bits
ISC10	= 2 ; External Interrupt Sense Control 1 Bits
ISC11	= 3 ; External Interrupt Sense Control 1 Bits

; EIMSK - External Interrupt Mask Register
INT0	= 0 ; External Interrupt Request 1 Enable
INT1	= 1 ; External Interrupt Request 1 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0 ; External Interrupt Flags
INTF1	= 1 ; External Interrupt Flags

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0 ; Pin Change Interrupt Enables
PCIE1	= 1 ; Pin Change Interrupt Enables
PCIE2	= 2 ; Pin Change Interrupt Enables

; PCMSK2 - Pin Change Mask Register 2
PCINT16	= 0 ; Pin Change Enable Masks
PCINT17	= 1 ; Pin Change Enable Masks
PCINT18	= 2 ; Pin Change Enable Masks
PCINT19	= 3 ; Pin Change Enable Masks
PCINT20	= 4 ; Pin Change Enable Masks
PCINT21	= 5 ; Pin Change Enable Masks
PCINT22	= 6 ; Pin Change Enable Masks
PCINT23	= 7 ; Pin Change Enable Masks

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0 ; Pin Change Enable Masks
PCINT9	= 1 ; Pin Change Enable Masks
PCINT10	= 2 ; Pin Change Enable Masks
PCINT11	= 3 ; Pin Change Enable Masks
PCINT12	= 4 ; Pin Change Enable Masks
PCINT13	= 5 ; Pin Change Enable Masks
PCINT14	= 6 ; Pin Change Enable Masks

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0 ; Pin Change Enable Masks
PCINT1	= 1 ; Pin Change Enable Masks
PCINT2	= 2 ; Pin Change Enable Masks
PCINT3	= 3 ; Pin Change Enable Masks
PCINT4	= 4 ; Pin Change Enable Masks
PCINT5	= 5 ; Pin Change Enable Masks
PCINT6	= 6 ; Pin Change Enable Masks
PCINT7	= 7 ; Pin Change Enable Masks

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0 ; Pin Change Interrupt Flags
PCIF1	= 1 ; Pin Change Interrupt Flags
PCIF2	= 2 ; Pin Change Interrupt Flags


; ***** SPI *****************
; SPDR - SPI Data Register
SPDR0	= 0 ; SPI Data Register Bit 0
SPDR1	= 1 ; SPI Data Register Bit 1
SPDR2	= 2 ; SPI Data Register Bit 2
SPDR3	= 3 ; SPI Data Register Bit 3
SPDR4	= 4 ; SPI Data Register Bit 4
SPDR5	= 5 ; SPI Data Register Bit 5
SPDR6	= 6 ; SPI Data Register Bit 6
SPDR7	= 7 ; SPI Data Register Bit 7

; SPSR - SPI Status Register
SPI2X	= 0 ; Double SPI Speed Bit
WCOL	= 6 ; Write Collision Flag
SPIF	= 7 ; SPI Interrupt Flag

; SPCR - SPI Control Register
SPR0	= 0 ; SPI Clock Rate Selects
SPR1	= 1 ; SPI Clock Rate Selects
CPHA	= 2 ; Clock Phase
CPOL	= 3 ; Clock polarity
MSTR	= 4 ; Master/Slave Select
DORD	= 5 ; Data Order
SPE	= 6 ; SPI Enable
SPIE	= 7 ; SPI Interrupt Enable


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


; ***** EEPROM *****************
; EEARL - EEPROM Address Register Low Byte
EEARL0	= 0 ; EEPROM Address Register Low Byte Bit 0
EEARL1	= 1 ; EEPROM Address Register Low Byte Bit 1
EEARL2	= 2 ; EEPROM Address Register Low Byte Bit 2
EEARL3	= 3 ; EEPROM Address Register Low Byte Bit 3
EEARL4	= 4 ; EEPROM Address Register Low Byte Bit 4
EEARL5	= 5 ; EEPROM Address Register Low Byte Bit 5
EEARL6	= 6 ; EEPROM Address Register Low Byte Bit 6
EEARL7	= 7 ; EEPROM Address Register Low Byte Bit 7

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
EEPE	= 1 ; EEPROM Write Enable
EEMPE	= 2 ; EEPROM Master Write Enable
EERIE	= 3 ; EEPROM Ready Interrupt Enable
EEPM0	= 4 ; EEPROM Programming Mode Bits
EEPM1	= 5 ; EEPROM Programming Mode Bits


; ***** CPU *****************
; PRR - Power Reduction Register
PRADC	= 0 ; Power Reduction ADC
PRUSART0	= 1 ; Power Reduction USART
PRSPI	= 2 ; Power Reduction Serial Peripheral Interface
PRTIM1	= 3 ; Power Reduction Timer/Counter1
PRTIM0	= 5 ; Power Reduction Timer/Counter0
PRTIM2	= 6 ; Power Reduction Timer/Counter2
PRTWI	= 7 ; Power Reduction TWI

; OSCCAL - Oscillator Calibration Value
OSCCAL0	= 0 ; Oscillator Calibration 
OSCCAL1	= 1 ; Oscillator Calibration 
OSCCAL2	= 2 ; Oscillator Calibration 
OSCCAL3	= 3 ; Oscillator Calibration 
OSCCAL4	= 4 ; Oscillator Calibration 
OSCCAL5	= 5 ; Oscillator Calibration 
OSCCAL6	= 6 ; Oscillator Calibration 
OSCCAL7	= 7 ; Oscillator Calibration 

; CLKPR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPS2	= 2 ; Clock Prescaler Select Bits
CLKPS3	= 3 ; Clock Prescaler Select Bits
CLKPCE	= 7 ; Clock Prescaler Change Enable

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

SPL0	= 0 ; Stack Pointer  Low Bit 0
SPL1	= 1 ; Stack Pointer  Low Bit 1
SPL2	= 2 ; Stack Pointer  Low Bit 2
SPL3	= 3 ; Stack Pointer  Low Bit 3
SPL4	= 4 ; Stack Pointer  Low Bit 4
SPL5	= 5 ; Stack Pointer  Low Bit 5
SPL6	= 6 ; Stack Pointer  Low Bit 6
SPL7	= 7 ; Stack Pointer  Low Bit 7

; SPMCSR - Store Program Memory Control and Status Register
SELFPRGEN	= 0 ; Self Programming Enable
PGERS	= 1 ; Page Erase
PGWRT	= 2 ; Page Write
BLBSET	= 3 ; Boot Lock Bit Set
RWWSRE	= 4 ; Read-While-Write section read enable
RWWSB	= 6 ; Read-While-Write Section Busy
SPMIE	= 7 ; SPM Interrupt Enable

; MCUCR - MCU Control Register
PUD	= 4 ; 
BODSE	= 5 ; BOD Sleep Enable
BODS	= 6 ; BOD Sleep

; MCUSR - MCU Status Register
PORF	= 0 ; Power-on reset flag
EXTRF	= 1 ; External Reset Flag
BORF	= 2 ; Brown-out Reset Flag
WDRF	= 3 ; Watchdog Reset Flag

; SMCR - Sleep Mode Control Register
SE	= 0 ; Sleep Enable
SM0	= 1 ; Sleep Mode Select Bits
SM1	= 2 ; Sleep Mode Select Bits
SM2	= 3 ; Sleep Mode Select Bits

; GPIOR2 - General Purpose I/O Register 2
GPIOR20	= 0 ; General Purpose I/O Register 2 Bit 0
GPIOR21	= 1 ; General Purpose I/O Register 2 Bit 1
GPIOR22	= 2 ; General Purpose I/O Register 2 Bit 2
GPIOR23	= 3 ; General Purpose I/O Register 2 Bit 3
GPIOR24	= 4 ; General Purpose I/O Register 2 Bit 4
GPIOR25	= 5 ; General Purpose I/O Register 2 Bit 5
GPIOR26	= 6 ; General Purpose I/O Register 2 Bit 6
GPIOR27	= 7 ; General Purpose I/O Register 2 Bit 7

; GPIOR1 - General Purpose I/O Register 1
GPIOR10	= 0 ; General Purpose I/O Register 1 Bit 0
GPIOR11	= 1 ; General Purpose I/O Register 1 Bit 1
GPIOR12	= 2 ; General Purpose I/O Register 1 Bit 2
GPIOR13	= 3 ; General Purpose I/O Register 1 Bit 3
GPIOR14	= 4 ; General Purpose I/O Register 1 Bit 4
GPIOR15	= 5 ; General Purpose I/O Register 1 Bit 5
GPIOR16	= 6 ; General Purpose I/O Register 1 Bit 6
GPIOR17	= 7 ; General Purpose I/O Register 1 Bit 7

; GPIOR0 - General Purpose I/O Register 0
GPIOR00	= 0 ; General Purpose I/O Register 0 Bit 0
GPIOR01	= 1 ; General Purpose I/O Register 0 Bit 1
GPIOR02	= 2 ; General Purpose I/O Register 0 Bit 2
GPIOR03	= 3 ; General Purpose I/O Register 0 Bit 3
GPIOR04	= 4 ; General Purpose I/O Register 0 Bit 4
GPIOR05	= 5 ; General Purpose I/O Register 0 Bit 5
GPIOR06	= 6 ; General Purpose I/O Register 0 Bit 6
GPIOR07	= 7 ; General Purpose I/O Register 0 Bit 7


; ***** DEVICEID *****************
; DEVID0 - 
DEVID00	= 0 ;  Bit 0
DEVID01	= 1 ;  Bit 1
DEVID02	= 2 ;  Bit 2
DEVID03	= 3 ;  Bit 3
DEVID04	= 4 ;  Bit 4
DEVID05	= 5 ;  Bit 5
DEVID06	= 6 ;  Bit 6
DEVID07	= 7 ;  Bit 7

; DEVID1 - 
DEVID10	= 0 ;  Bit 0
DEVID11	= 1 ;  Bit 1
DEVID12	= 2 ;  Bit 2
DEVID13	= 3 ;  Bit 3
DEVID14	= 4 ;  Bit 4
DEVID15	= 5 ;  Bit 5
DEVID16	= 6 ;  Bit 6
DEVID17	= 7 ;  Bit 7

; DEVID2 - 
DEVID20	= 0 ;  Bit 0
DEVID21	= 1 ;  Bit 1
DEVID22	= 2 ;  Bit 2
DEVID23	= 3 ;  Bit 3
DEVID24	= 4 ;  Bit 4
DEVID25	= 5 ;  Bit 5
DEVID26	= 6 ;  Bit 6
DEVID27	= 7 ;  Bit 7

; DEVID3 - 
DEVID30	= 0 ;  Bit 0
DEVID31	= 1 ;  Bit 1
DEVID32	= 2 ;  Bit 2
DEVID33	= 3 ;  Bit 3
DEVID34	= 4 ;  Bit 4
DEVID35	= 5 ;  Bit 5
DEVID36	= 6 ;  Bit 6
DEVID37	= 7 ;  Bit 7

; DEVID4 - 
DEVID40	= 0 ;  Bit 0
DEVID41	= 1 ;  Bit 1
DEVID42	= 2 ;  Bit 2
DEVID43	= 3 ;  Bit 3
DEVID44	= 4 ;  Bit 4
DEVID45	= 5 ;  Bit 5
DEVID46	= 6 ;  Bit 6
DEVID47	= 7 ;  Bit 7

; DEVID5 - 
DEVID50	= 0 ;  Bit 0
DEVID51	= 1 ;  Bit 1
DEVID52	= 2 ;  Bit 2
DEVID53	= 3 ;  Bit 3
DEVID54	= 4 ;  Bit 4
DEVID55	= 5 ;  Bit 5
DEVID56	= 6 ;  Bit 6
DEVID57	= 7 ;  Bit 7

; DEVID6 - 
DEVID60	= 0 ;  Bit 0
DEVID61	= 1 ;  Bit 1
DEVID62	= 2 ;  Bit 2
DEVID63	= 3 ;  Bit 3
DEVID64	= 4 ;  Bit 4
DEVID65	= 5 ;  Bit 5
DEVID66	= 6 ;  Bit 6
DEVID67	= 7 ;  Bit 7

; DEVID7 - 
DEVID70	= 0 ;  Bit 0
DEVID71	= 1 ;  Bit 1
DEVID72	= 2 ;  Bit 2
DEVID73	= 3 ;  Bit 3
DEVID74	= 4 ;  Bit 4
DEVID75	= 5 ;  Bit 5
DEVID76	= 6 ;  Bit 6
DEVID77	= 7 ;  Bit 7

; DEVID8 - 
DEVID80	= 0 ;  Bit 0
DEVID81	= 1 ;  Bit 1
DEVID82	= 2 ;  Bit 2
DEVID83	= 3 ;  Bit 3
DEVID84	= 4 ;  Bit 4
DEVID85	= 5 ;  Bit 5
DEVID86	= 6 ;  Bit 6
DEVID87	= 7 ;  Bit 7


; ***** FUSE *****************
; EXTENDED - 

; HIGH - 
BODLEVEL0	= 0 ; Brown-out Detector trigger level
BODLEVEL1	= 1 ; Brown-out Detector trigger level
BODLEVEL2	= 2 ; Brown-out Detector trigger level
EESAVE	= 3 ; Preserve EEPROM through the Chip Erase cycle
WDTON	= 4 ; Watch-dog Timer always on
SPIEN	= 5 ; Serial program downloading (SPI) enabled
DWEN	= 6 ; Debug Wire enable
RSTDISBL	= 7 ; Reset Disabled (Enable PC6 as i/o pin)

; LOW - 
SUT_CKSEL0	= 0 ; Select Clock Source
SUT_CKSEL1	= 1 ; Select Clock Source
SUT_CKSEL2	= 2 ; Select Clock Source
SUT_CKSEL3	= 3 ; Select Clock Source
SUT_CKSEL4	= 4 ; Select Clock Source
SUT_CKSEL5	= 5 ; Select Clock Source
CKOUT	= 6 ; Clock output on PORTB0
CKDIV8	= 7 ; Divide clock by 8 internally


; ***** LOCKBIT *****************
; LOCKBIT - 
LB1	= 0 ; Memory Lock
LB2	= 1 ; Memory Lock

; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30

; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHSTART	= 0x0000 ; Note: Word address
FLASHEND	= 0x07FF ; Note: Word address
FLASHPAGESIZE	= 0x0040 ;

IOEND	= 0x00FF

SRAM_START	= 0x0100
SRAM_SIZE	= 512
RAMEND	= 0x02FF

E2END	= 0x00FF
EEPROMEND	= 0x00FF
EEADRBITS	= 8

XRAMEND	= 0x0000



; ***** BOOTLOADER DECLARATIONS ******************************************
 ; No bootloader declariations; ***** INTERRUPT VECTORS ************************************************
INT0addr	 = 0x0001 ; External Interrupt Request 0
INT1addr	 = 0x0002 ; External Interrupt Request 1
PCINT0addr	 = 0x0003 ; Pin Change Interrupt Request 0
PCINT1addr	 = 0x0004 ; Pin Change Interrupt Request 0
PCINT2addr	 = 0x0005 ; Pin Change Interrupt Request 1
WDTaddr	 = 0x0006 ; Watchdog Time-out Interrupt
TIMER2_COMPAaddr	 = 0x0007 ; Timer/Counter2 Compare Match A
TIMER2_COMPBaddr	 = 0x0008 ; Timer/Counter2 Compare Match A
TIMER2_OVFaddr	 = 0x0009 ; Timer/Counter2 Overflow
TIMER1_CAPTaddr	 = 0x000A ; Timer/Counter1 Capture Event
TIMER1_COMPAaddr	 = 0x000B ; Timer/Counter1 Compare Match A
TIMER1_COMPBaddr	 = 0x000C ; Timer/Counter1 Compare Match B
TIMER1_OVFaddr	 = 0x000D ; Timer/Counter1 Overflow
TIMER0_COMPAaddr	 = 0x000E ; TimerCounter0 Compare Match A
TIMER0_COMPBaddr	 = 0x000F ; TimerCounter0 Compare Match B
TIMER0_OVFaddr	 = 0x0010 ; Timer/Couner0 Overflow
SPI_STCaddr	 = 0x0011 ; SPI Serial Transfer Complete
USART_RXaddr	 = 0x0012 ; USART Rx Complete
USART_UDREaddr	 = 0x0013 ; USART, Data Register Empty
USART_TXaddr	 = 0x0014 ; USART Tx Complete
ADCaddr	 = 0x0015 ; ADC Conversion Complete
EE_READYaddr	 = 0x0016 ; EEPROM Ready
ANALOG_COMPaddr	 = 0x0017 ; Analog Comparator
TWIaddr	 = 0x0018 ; Two-wire Serial Interface
SPM_Readyaddr	 = 0x0019 ; Store Program Memory Read
USART_STARTaddr	 = 0x001A ; USART Start Edge Interrupt

INT_VECTORS_SIZE	= 27 ; size in words


; ***** END OF FILE ******************************************************



