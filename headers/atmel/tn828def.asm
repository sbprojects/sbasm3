;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : tn828def.inc
;* Title             : Register/Bit Definitions for the ATxmega128A1
;* Date              : Apr 27 2012
;* Version           : 1.00
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny828
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
; .device	ATtiny828

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x93
SIGNATURE_002	= 0x14

                .CR     avr
                .FA     enhanced128k
				.MS		$1000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
OSCTCAL0B	= 0xF1 ; MEMORY MAPPED
OSCTCAL0A	= 0xF0 ; MEMORY MAPPED
TOCPMSA1	= 0xE9 ; MEMORY MAPPED
TOCPMSA0	= 0xE8 ; MEMORY MAPPED
TOCPMCOE	= 0xE2 ; MEMORY MAPPED
DIDR3	= 0xDF ; MEMORY MAPPED
DIDR2	= 0xDE ; MEMORY MAPPED
UDR	= 0xC6 ; MEMORY MAPPED
UBRRH	= 0xC5 ; MEMORY MAPPED
UBRRL	= 0xC4 ; MEMORY MAPPED
UCSRD	= 0xC3 ; MEMORY MAPPED
UCSRC	= 0xC2 ; MEMORY MAPPED
UCSRB	= 0xC1 ; MEMORY MAPPED
UCSRA	= 0xC0 ; MEMORY MAPPED
TWSD	= 0xBD ; MEMORY MAPPED
TWSA	= 0xBC ; MEMORY MAPPED
TWSAM	= 0xBB ; MEMORY MAPPED
TWSSRA	= 0xBA ; MEMORY MAPPED
TWSCRB	= 0xB9 ; MEMORY MAPPED
TWSCRA	= 0xB8 ; MEMORY MAPPED
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
ADMUXB	= 0x7D ; MEMORY MAPPED
ADMUXA	= 0x7C ; MEMORY MAPPED
ADCSRB	= 0x7B ; MEMORY MAPPED
ADCSRA	= 0x7A ; MEMORY MAPPED
ADCH	= 0x79 ; MEMORY MAPPED
ADCL	= 0x78 ; MEMORY MAPPED
PCMSK3	= 0x73 ; MEMORY MAPPED
TIMSK1	= 0x6F ; MEMORY MAPPED
TIMSK0	= 0x6E ; MEMORY MAPPED
PCMSK2	= 0x6D ; MEMORY MAPPED
PCMSK1	= 0x6C ; MEMORY MAPPED
PCMSK0	= 0x6B ; MEMORY MAPPED
EICRA	= 0x69 ; MEMORY MAPPED
PCICR	= 0x68 ; MEMORY MAPPED
OSCCAL1	= 0x67 ; MEMORY MAPPED
OSCCAL0	= 0x66 ; MEMORY MAPPED
PRR	= 0x64 ; MEMORY MAPPED
CLKPR	= 0x61 ; MEMORY MAPPED
WDTCSR	= 0x60 ; MEMORY MAPPED
SREG	= 0x3F ; 
SPH	= 0x3E ; 
SPL	= 0x3D ; 
SPMCSR	= 0x37 ; 
CCP	= 0x36 ; 
MCUCR	= 0x35 ; 
MCUSR	= 0x34 ; 
SMCR	= 0x33 ; 
ACSRA	= 0x30 ; 
ACSRB	= 0x2F ; 
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
EEAR	= 0x21 ; 
EEDR	= 0x20 ; 
EECR	= 0x1F ; 
GPIOR0	= 0x1E ; 
EIMSK	= 0x1D ; 
EIFR	= 0x1C ; 
PCIFR	= 0x1B ; 
TIFR1	= 0x16 ; 
TIFR0	= 0x15 ; 
PHDE	= 0x14 ; 
PUED	= 0x0F ; 
PORTD	= 0x0E ; 
DDRD	= 0x0D ; 
PIND	= 0x0C ; 
PUEC	= 0x0B ; 
PORTC	= 0x0A ; 
DDRC	= 0x09 ; 
PINC	= 0x08 ; 
PUEB	= 0x07 ; 
PORTB	= 0x06 ; 
DDRB	= 0x05 ; 
PINB	= 0x04 ; 
PUEA	= 0x03 ; 
PORTA	= 0x02 ; 
DDRA	= 0x01 ; 
PINA	= 0x00 ; 


; ***** BIT DEFINITIONS **************************************************

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


; ***** PORTA *****************

; PUEA - Pull-up Enable Control Register
PUEA0	= 0 ; Pull-up Enable Control Register Bit 0
PUEA1	= 1 ; Pull-up Enable Control Register Bit 1
PUEA2	= 2 ; Pull-up Enable Control Register Bit 2
PUEA3	= 3 ; Pull-up Enable Control Register Bit 3
PUEA4	= 4 ; Pull-up Enable Control Register Bit 4
PUEA5	= 5 ; Pull-up Enable Control Register Bit 5
PUEA6	= 6 ; Pull-up Enable Control Register Bit 6
PUEA7	= 7 ; Pull-up Enable Control Register Bit 7

; PORTA - Port A Data Register
PORTA0	= 0 ; Port A Data Register Bit 0
PORTA1	= 1 ; Port A Data Register Bit 1
PORTA2	= 2 ; Port A Data Register Bit 2
PORTA3	= 3 ; Port A Data Register Bit 3
PORTA4	= 4 ; Port A Data Register Bit 4
PORTA5	= 5 ; Port A Data Register Bit 5
PORTA6	= 6 ; Port A Data Register Bit 6
PORTA7	= 7 ; Port A Data Register Bit 7

; DDRA - Data Direction Register, Port A
DDRA0	= 0 ; Data Direction Register, Port A Bit 0
DDRA1	= 1 ; Data Direction Register, Port A Bit 1
DDRA2	= 2 ; Data Direction Register, Port A Bit 2
DDRA3	= 3 ; Data Direction Register, Port A Bit 3
DDRA4	= 4 ; Data Direction Register, Port A Bit 4
DDRA5	= 5 ; Data Direction Register, Port A Bit 5
DDRA6	= 6 ; Data Direction Register, Port A Bit 6
DDRA7	= 7 ; Data Direction Register, Port A Bit 7

; PINA - Port A Input Pins
PINA0	= 0 ; Port A Input Pins Bit 0
PINA1	= 1 ; Port A Input Pins Bit 1
PINA2	= 2 ; Port A Input Pins Bit 2
PINA3	= 3 ; Port A Input Pins Bit 3
PINA4	= 4 ; Port A Input Pins Bit 4
PINA5	= 5 ; Port A Input Pins Bit 5
PINA6	= 6 ; Port A Input Pins Bit 6
PINA7	= 7 ; Port A Input Pins Bit 7


; ***** PORTB *****************

; PUEB - Pull-up Enable Control Register
PUEB0	= 0 ; Pull-up Enable Control Register Bit 0
PUEB1	= 1 ; Pull-up Enable Control Register Bit 1
PUEB2	= 2 ; Pull-up Enable Control Register Bit 2
PUEB3	= 3 ; Pull-up Enable Control Register Bit 3
PUEB4	= 4 ; Pull-up Enable Control Register Bit 4
PUEB5	= 5 ; Pull-up Enable Control Register Bit 5
PUEB6	= 6 ; Pull-up Enable Control Register Bit 6
PUEB7	= 7 ; Pull-up Enable Control Register Bit 7

; PORTB - Port B Data Register
PORTB0	= 0 ; Port B Data Register Bit 0
PORTB1	= 1 ; Port B Data Register Bit 1
PORTB2	= 2 ; Port B Data Register Bit 2
PORTB3	= 3 ; Port B Data Register Bit 3
PORTB4	= 4 ; Port B Data Register Bit 4
PORTB5	= 5 ; Port B Data Register Bit 5
PORTB6	= 6 ; Port B Data Register Bit 6
PORTB7	= 7 ; Port B Data Register Bit 7

; DDRB - Data Direction Register, Port B
DDRB0	= 0 ; Data Direction Register, Port B Bit 0
DDRB1	= 1 ; Data Direction Register, Port B Bit 1
DDRB2	= 2 ; Data Direction Register, Port B Bit 2
DDRB3	= 3 ; Data Direction Register, Port B Bit 3
DDRB4	= 4 ; Data Direction Register, Port B Bit 4
DDRB5	= 5 ; Data Direction Register, Port B Bit 5
DDRB6	= 6 ; Data Direction Register, Port B Bit 6
DDRB7	= 7 ; Data Direction Register, Port B Bit 7

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

; PHDE - Port High Drive Enable Register
PHDEC	= 2 ; Port C High Drive Enable

; PUEC - Pull-up Enable Control Register
PUEC0	= 0 ; Pull-up Enable Control Register Bit 0
PUEC1	= 1 ; Pull-up Enable Control Register Bit 1
PUEC2	= 2 ; Pull-up Enable Control Register Bit 2
PUEC3	= 3 ; Pull-up Enable Control Register Bit 3
PUEC4	= 4 ; Pull-up Enable Control Register Bit 4
PUEC5	= 5 ; Pull-up Enable Control Register Bit 5
PUEC6	= 6 ; Pull-up Enable Control Register Bit 6
PUEC7	= 7 ; Pull-up Enable Control Register Bit 7

; PORTC - Port C Data Register
PORTC0	= 0 ; Port C Data Register Bit 0
PORTC1	= 1 ; Port C Data Register Bit 1
PORTC2	= 2 ; Port C Data Register Bit 2
PORTC3	= 3 ; Port C Data Register Bit 3
PORTC4	= 4 ; Port C Data Register Bit 4
PORTC5	= 5 ; Port C Data Register Bit 5
PORTC6	= 6 ; Port C Data Register Bit 6
PORTC7	= 7 ; Port C Data Register Bit 7

; DDRC - Data Direction Register, Port C
DDRC0	= 0 ; Data Direction Register, Port C Bit 0
DDRC1	= 1 ; Data Direction Register, Port C Bit 1
DDRC2	= 2 ; Data Direction Register, Port C Bit 2
DDRC3	= 3 ; Data Direction Register, Port C Bit 3
DDRC4	= 4 ; Data Direction Register, Port C Bit 4
DDRC5	= 5 ; Data Direction Register, Port C Bit 5
DDRC6	= 6 ; Data Direction Register, Port C Bit 6
DDRC7	= 7 ; Data Direction Register, Port C Bit 7

; PINC - Port C Input Pins
PINC0	= 0 ; Port C Input Pins Bit 0
PINC1	= 1 ; Port C Input Pins Bit 1
PINC2	= 2 ; Port C Input Pins Bit 2
PINC3	= 3 ; Port C Input Pins Bit 3
PINC4	= 4 ; Port C Input Pins Bit 4
PINC5	= 5 ; Port C Input Pins Bit 5
PINC6	= 6 ; Port C Input Pins Bit 6
PINC7	= 7 ; Port C Input Pins Bit 7


; ***** PORTD *****************

; PUED - Pull-up Enable Control Register
PUED0	= 0 ; Pull-up Enable Control Register Bit 0
PUED1	= 1 ; Pull-up Enable Control Register Bit 1
PUED2	= 2 ; Pull-up Enable Control Register Bit 2
PUED3	= 3 ; Pull-up Enable Control Register Bit 3

; PORTD - Port D Data Register
PORTD0	= 0 ; Port D Data Register Bit 0
PORTD1	= 1 ; Port D Data Register Bit 1
PORTD2	= 2 ; Port D Data Register Bit 2
PORTD3	= 3 ; Port D Data Register Bit 3

; DDRD - Data Direction Register, Port D
DDRD0	= 0 ; Data Direction Register, Port D Bit 0
DDRD1	= 1 ; Data Direction Register, Port D Bit 1
DDRD2	= 2 ; Data Direction Register, Port D Bit 2
DDRD3	= 3 ; Data Direction Register, Port D Bit 3

; PIND - Port D Input Pins
PIND0	= 0 ; Port D Input Pins Bit 0
PIND1	= 1 ; Port D Input Pins Bit 1
PIND2	= 2 ; Port D Input Pins Bit 2
PIND3	= 3 ; Port D Input Pins Bit 3


; ***** CPU *****************

; PRR - Power Reduction Register
PRADC	= 0 ; Power Reduction ADC
PRUSART0	= 1 ; Power Reduction USART 0
PRSPI	= 2 ; Power Reduction SPI
PRTIM1	= 3 ; Power Reduction Timer/Counter1
PRTIM0	= 5 ; Power Reduction Timer/Counter0
PRTWI	= 7 ; Power Reduction TWI

; CCP - Configuration Change Protection
CCP0	= 0 ; Configuration Change Protection Bit 0
CCP1	= 1 ; Configuration Change Protection Bit 1
CCP2	= 2 ; Configuration Change Protection Bit 2
CCP3	= 3 ; Configuration Change Protection Bit 3
CCP4	= 4 ; Configuration Change Protection Bit 4
CCP5	= 5 ; Configuration Change Protection Bit 5
CCP6	= 6 ; Configuration Change Protection Bit 6
CCP7	= 7 ; Configuration Change Protection Bit 7

; OSCCAL0 - Oscillator Calibration Value
OSCCAL00	= 0 ; Oscillator Calibration Value Bit 0
OSCCAL01	= 1 ; Oscillator Calibration Value Bit 1
OSCCAL02	= 2 ; Oscillator Calibration Value Bit 2
OSCCAL03	= 3 ; Oscillator Calibration Value Bit 3
OSCCAL04	= 4 ; Oscillator Calibration Value Bit 4
OSCCAL05	= 5 ; Oscillator Calibration Value Bit 5
OSCCAL06	= 6 ; Oscillator Calibration Value Bit 6
OSCCAL07	= 7 ; Oscillator Calibration Value Bit 7

; OSCCAL1 - 
OSCCAL10	= 0 ;  Bit 0
OSCCAL11	= 1 ;  Bit 1

; OSCTCAL0A - 
OSCTCAL0A0	= 0 ;  Bit 0
OSCTCAL0A1	= 1 ;  Bit 1
OSCTCAL0A2	= 2 ;  Bit 2
OSCTCAL0A3	= 3 ;  Bit 3
OSCTCAL0A4	= 4 ;  Bit 4
OSCTCAL0A5	= 5 ;  Bit 5
OSCTCAL0A6	= 6 ;  Bit 6
OSCTCAL0A7	= 7 ;  Bit 7

; OSCTCAL0B - 
OSCTCAL0B0	= 0 ;  Bit 0
OSCTCAL0B1	= 1 ;  Bit 1
OSCTCAL0B2	= 2 ;  Bit 2
OSCTCAL0B3	= 3 ;  Bit 3
OSCTCAL0B4	= 4 ;  Bit 4
OSCTCAL0B5	= 5 ;  Bit 5
OSCTCAL0B6	= 6 ;  Bit 6
OSCTCAL0B7	= 7 ;  Bit 7

; CLKPR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPS2	= 2 ; Clock Prescaler Select Bits
CLKPS3	= 3 ; Clock Prescaler Select Bits

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
SPH0	= 0 ; Stack Pointer  High Bit 0
SPH1	= 1 ; Stack Pointer  High Bit 1
SPH2	= 2 ; Stack Pointer  High Bit 2
SPH3	= 3 ; Stack Pointer  High Bit 3
SPH4	= 4 ; Stack Pointer  High Bit 4
SPH5	= 5 ; Stack Pointer  High Bit 5
SPH6	= 6 ; Stack Pointer  High Bit 6
SPH7	= 7 ; Stack Pointer  High Bit 7


SPL0	= 0 ; Stack Pointer  Low Bit 0
SPL1	= 1 ; Stack Pointer  Low Bit 1
SPL2	= 2 ; Stack Pointer  Low Bit 2
SPL3	= 3 ; Stack Pointer  Low Bit 3
SPL4	= 4 ; Stack Pointer  Low Bit 4
SPL5	= 5 ; Stack Pointer  Low Bit 5
SPL6	= 6 ; Stack Pointer  Low Bit 6
SPL7	= 7 ; Stack Pointer  Low Bit 7

; MCUCR - MCU Control Register
IVSEL	= 1 ; Interrupt Vector Select

; MCUSR - MCU Status Register
PORF	= 0 ; Power-on reset flag
EXTRF	= 1 ; External Reset Flag
BORF	= 2 ; Brown-out Reset Flag
WDRF	= 3 ; Watchdog Reset Flag

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

; SMCR - Sleep Mode Control Register
SE	= 0 ; Sleep Enable
SM0	= 1 ; Sleep Mode Select Bits
SM1	= 2 ; Sleep Mode Select Bits

; SPMCSR - Store Program Memory Control and Status Register
SPMEN	= 0 ; Store Program Memory Enable
PGERS	= 1 ; Page Erase
PGWRT	= 2 ; Page Write
RWFLB	= 3 ; Read/Write Fuse and Lock Bits
RWWSRE	= 4 ; Read-While-Write section read enable
RSIG	= 5 ; Read Device Signature Imprint Table
RWWSB	= 6 ; Read-While-Write Section Busy
SPMIE	= 7 ; SPM Interrupt Enable


; ***** TIMER_COUNTER_0 *****************

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
PSRSYNC	= 0 ; Prescaler Reset Timer/Counter1 and Timer/Counter0
TSM	= 7 ; Timer/Counter Synchronization Mode


; ***** TIMER_COUNTER_1 *****************

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
TCNT1H0	= 0 ; Timer/Counter1  Bytes High Bit 0
TCNT1H1	= 1 ; Timer/Counter1  Bytes High Bit 1
TCNT1H2	= 2 ; Timer/Counter1  Bytes High Bit 2
TCNT1H3	= 3 ; Timer/Counter1  Bytes High Bit 3
TCNT1H4	= 4 ; Timer/Counter1  Bytes High Bit 4
TCNT1H5	= 5 ; Timer/Counter1  Bytes High Bit 5
TCNT1H6	= 6 ; Timer/Counter1  Bytes High Bit 6
TCNT1H7	= 7 ; Timer/Counter1  Bytes High Bit 7


TCNT1L0	= 0 ; Timer/Counter1  Bytes Low Bit 0
TCNT1L1	= 1 ; Timer/Counter1  Bytes Low Bit 1
TCNT1L2	= 2 ; Timer/Counter1  Bytes Low Bit 2
TCNT1L3	= 3 ; Timer/Counter1  Bytes Low Bit 3
TCNT1L4	= 4 ; Timer/Counter1  Bytes Low Bit 4
TCNT1L5	= 5 ; Timer/Counter1  Bytes Low Bit 5
TCNT1L6	= 6 ; Timer/Counter1  Bytes Low Bit 6
TCNT1L7	= 7 ; Timer/Counter1  Bytes Low Bit 7

; OCR1A - Timer/Counter1 Output Compare Register  Bytes
OCR1AH0	= 0 ; Timer/Counter1 Output Compare Register  Bytes High Bit 0
OCR1AH1	= 1 ; Timer/Counter1 Output Compare Register  Bytes High Bit 1
OCR1AH2	= 2 ; Timer/Counter1 Output Compare Register  Bytes High Bit 2
OCR1AH3	= 3 ; Timer/Counter1 Output Compare Register  Bytes High Bit 3
OCR1AH4	= 4 ; Timer/Counter1 Output Compare Register  Bytes High Bit 4
OCR1AH5	= 5 ; Timer/Counter1 Output Compare Register  Bytes High Bit 5
OCR1AH6	= 6 ; Timer/Counter1 Output Compare Register  Bytes High Bit 6
OCR1AH7	= 7 ; Timer/Counter1 Output Compare Register  Bytes High Bit 7


OCR1AL0	= 0 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 0
OCR1AL1	= 1 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 1
OCR1AL2	= 2 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 2
OCR1AL3	= 3 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 3
OCR1AL4	= 4 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 4
OCR1AL5	= 5 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 5
OCR1AL6	= 6 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 6
OCR1AL7	= 7 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 7

; OCR1B - Timer/Counter1 Output Compare Register  Bytes
OCR1BH0	= 0 ; Timer/Counter1 Output Compare Register  Bytes High Bit 0
OCR1BH1	= 1 ; Timer/Counter1 Output Compare Register  Bytes High Bit 1
OCR1BH2	= 2 ; Timer/Counter1 Output Compare Register  Bytes High Bit 2
OCR1BH3	= 3 ; Timer/Counter1 Output Compare Register  Bytes High Bit 3
OCR1BH4	= 4 ; Timer/Counter1 Output Compare Register  Bytes High Bit 4
OCR1BH5	= 5 ; Timer/Counter1 Output Compare Register  Bytes High Bit 5
OCR1BH6	= 6 ; Timer/Counter1 Output Compare Register  Bytes High Bit 6
OCR1BH7	= 7 ; Timer/Counter1 Output Compare Register  Bytes High Bit 7


OCR1BL0	= 0 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 0
OCR1BL1	= 1 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 1
OCR1BL2	= 2 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 2
OCR1BL3	= 3 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 3
OCR1BL4	= 4 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 4
OCR1BL5	= 5 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 5
OCR1BL6	= 6 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 6
OCR1BL7	= 7 ; Timer/Counter1 Output Compare Register  Bytes Low Bit 7

; ICR1 - Timer/Counter1 Input Capture Register  Bytes
ICR1H0	= 0 ; Timer/Counter1 Input Capture Register  Bytes High Bit 0
ICR1H1	= 1 ; Timer/Counter1 Input Capture Register  Bytes High Bit 1
ICR1H2	= 2 ; Timer/Counter1 Input Capture Register  Bytes High Bit 2
ICR1H3	= 3 ; Timer/Counter1 Input Capture Register  Bytes High Bit 3
ICR1H4	= 4 ; Timer/Counter1 Input Capture Register  Bytes High Bit 4
ICR1H5	= 5 ; Timer/Counter1 Input Capture Register  Bytes High Bit 5
ICR1H6	= 6 ; Timer/Counter1 Input Capture Register  Bytes High Bit 6
ICR1H7	= 7 ; Timer/Counter1 Input Capture Register  Bytes High Bit 7


ICR1L0	= 0 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 0
ICR1L1	= 1 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 1
ICR1L2	= 2 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 2
ICR1L3	= 3 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 3
ICR1L4	= 4 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 4
ICR1L5	= 5 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 5
ICR1L6	= 6 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 6
ICR1L7	= 7 ; Timer/Counter1 Input Capture Register  Bytes Low Bit 7

; GTCCR - General Timer/Counter Control Register


; ***** TOCPM *****************

; TOCPMSA1 - Timer Output Compare Pin Mux Selection 1
TOCC4S0	= 0 ; Timer Output Compare Channel 4 Selection Bits
TOCC4S1	= 1 ; Timer Output Compare Channel 4 Selection Bits
TOCC5S0	= 2 ; Timer Output Compare Channel 5 Selection Bits
TOCC5S1	= 3 ; Timer Output Compare Channel 5 Selection Bits
TOCC6S0	= 4 ; Timer Output Compare Channel 6 Selection Bits
TOCC6S1	= 5 ; Timer Output Compare Channel 6 Selection Bits
TOCC7S0	= 6 ; Timer Output Compare Channel 7 Selection Bits
TOCC7S1	= 7 ; Timer Output Compare Channel 7 Selection Bits

; TOCPMSA0 - Timer Output Compare Pin Mux Selection 0
TOCC0S0	= 0 ; Timer Output Compare Channel 0 Selection Bits
TOCC0S1	= 1 ; Timer Output Compare Channel 0 Selection Bits
TOCC1S0	= 2 ; Timer Output Compare Channel 1 Selection Bits
TOCC1S1	= 3 ; Timer Output Compare Channel 1 Selection Bits
TOCC2S0	= 4 ; Timer Output Compare Channel 2 Selection Bits
TOCC2S1	= 5 ; Timer Output Compare Channel 2 Selection Bits
TOCC3S0	= 6 ; Timer Output Compare Channel 3 Selection Bits
TOCC3S1	= 7 ; Timer Output Compare Channel 3 Selection Bits

; TOCPMCOE - Timer Output Compare Pin Mux Channel Output Enable
TOCC0OE	= 0 ; Timer Output Compare Channel 0 Output Enable
TOCC1OE	= 1 ; Timer Output Compare Channel 1 Output Enable
TOCC2OE	= 2 ; Timer Output Compare Channel 2 Output Enable
TOCC3OE	= 3 ; Timer Output Compare Channel 3 Output Enable
TOCC4OE	= 4 ; Timer Output Compare Channel 4 Output Enable
TOCC5OE	= 5 ; Timer Output Compare Channel 5 Output Enable
TOCC6OE	= 6 ; Timer Output Compare Channel 6 Output Enable
TOCC7OE	= 7 ; Timer Output Compare Channel 7 Output Enable


; ***** AD_CONVERTER *****************

; ADMUXA - The ADC multiplexer Selection Register A
MUX0	= 0 ; Analog Channel Selection Bits 4:0
MUX1	= 1 ; Analog Channel Selection Bits 4:0
MUX2	= 2 ; Analog Channel Selection Bits 4:0
MUX3	= 3 ; Analog Channel Selection Bits 4:0
MUX4	= 4 ; Analog Channel Selection Bits 4:0

; ADMUXB - The ADC multiplexer Selection Register B
MUX5	= 0 ; Analog Channel Selection Bit 5
REFS	= 5 ; Reference Selection Bit

; ADCSRA - The ADC Control and Status register
ADPS0	= 0 ; ADC Prescaler Select Bits
ADPS1	= 1 ; ADC Prescaler Select Bits
ADPS2	= 2 ; ADC Prescaler Select Bits
ADIE	= 3 ; ADC Interrupt Enable
ADIF	= 4 ; ADC Interrupt Flag
ADATE	= 5 ; ADC Auto Trigger Enable
ADSC	= 6 ; ADC Start Conversion
ADEN	= 7 ; ADC Enable

; ADC - ADC Data Register  Bytes
ADCH0	= 0 ; ADC Data Register  Bytes High Bit 0
ADCH1	= 1 ; ADC Data Register  Bytes High Bit 1
ADCH2	= 2 ; ADC Data Register  Bytes High Bit 2
ADCH3	= 3 ; ADC Data Register  Bytes High Bit 3
ADCH4	= 4 ; ADC Data Register  Bytes High Bit 4
ADCH5	= 5 ; ADC Data Register  Bytes High Bit 5
ADCH6	= 6 ; ADC Data Register  Bytes High Bit 6
ADCH7	= 7 ; ADC Data Register  Bytes High Bit 7


ADCL0	= 0 ; ADC Data Register  Bytes Low Bit 0
ADCL1	= 1 ; ADC Data Register  Bytes Low Bit 1
ADCL2	= 2 ; ADC Data Register  Bytes Low Bit 2
ADCL3	= 3 ; ADC Data Register  Bytes Low Bit 3
ADCL4	= 4 ; ADC Data Register  Bytes Low Bit 4
ADCL5	= 5 ; ADC Data Register  Bytes Low Bit 5
ADCL6	= 6 ; ADC Data Register  Bytes Low Bit 6
ADCL7	= 7 ; ADC Data Register  Bytes Low Bit 7

; ADCSRB - ADC Control and Status Register B
ADTS0	= 0 ; ADC Auto Trigger Sources
ADTS1	= 1 ; ADC Auto Trigger Sources
ADTS2	= 2 ; ADC Auto Trigger Sources
ADLAR	= 3 ; 

; DIDR3 - Digital Input Disable Register 2
ADC24D	= 0 ; ADC24 Digital input Disable
ADC25D	= 1 ; ADC25 Digital input Disable
ADC26D	= 2 ; ADC26 Digital input Disable
ADC27D	= 3 ; ADC27 Digital input Disable

; DIDR2 - Digital Input Disable Register 2
ADC16D	= 0 ; ADC16 Digital input Disable
ADC17D	= 1 ; ADC17 Digital input Disable
ADC18D	= 2 ; ADC18 Digital input Disable
ADC19D	= 3 ; ADC19 Digital input Disable
ADC20D	= 4 ; ADC20 Digital input Disable
ADC21D	= 5 ; ADC21 Digital input Disable
ADC22D	= 6 ; ADC22 Digital input Disable
ADC23D	= 7 ; ADC23 Digital input Disable

; DIDR1 - Digital Input Disable Register 1
ADC8D	= 0 ; ADC8 Digital input Disable
ADC9D	= 1 ; ADC9 Digital input Disable
ADC10D	= 2 ; ADC10 Digital input Disable
ADC11D	= 3 ; ADC11 Digital input Disable
ADC12D	= 4 ; ADC12 Digital input Disable
ADC13D	= 5 ; ADC13 Digital input Disable
ADC14D	= 6 ; ADC14 Digital input Disable
ADC15D	= 7 ; ADC15 Digital input Disable

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0 ; ADC0 Digital input Disable
ADC1D	= 1 ; ADC1 Digital input Disable
ADC2D	= 2 ; ADC2 Digital input Disable
ADC3D	= 3 ; ADC3 Digital input Disable
ADC4D	= 4 ; ADC4 Digital input Disable
ADC5D	= 5 ; ADC5 Digital input Disable
ADC6D	= 6 ; ADC6 Digital input Disable
ADC7D	= 7 ; ADC7 Digital input Disable


; ***** ANALOG_COMPARATOR *****************

; ACSRB - Analog Comparator Control And Status Register B
ACPMUX0	= 0 ; Analog Comparator Positive Input Multiplexer Bits 1:0
ACPMUX1	= 1 ; Analog Comparator Positive Input Multiplexer Bits 1:0
ACNMUX0	= 2 ; Analog Comparator Negative Input Multiplexer
ACNMUX1	= 3 ; Analog Comparator Negative Input Multiplexer
HLEV	= 6 ; Hysteresis Level
HSEL	= 7 ; Hysteresis Select

; ACSRA - Analog Comparator Control And Status Register A
ACIS0	= 0 ; Analog Comparator Interrupt Mode Select bits
ACIS1	= 1 ; Analog Comparator Interrupt Mode Select bits
ACIC	= 2 ; Analog Comparator Input Capture Enable
ACIE	= 3 ; Analog Comparator Interrupt Enable
ACI	= 4 ; Analog Comparator Interrupt Flag
ACO	= 5 ; Analog Compare Output
ACPMUX2	= 6 ; Analog Comparator Positive Input Multiplexer Bit 2
ACD	= 7 ; Analog Comparator Disable


; ***** EXTERNAL_INTERRUPT *****************

; EICRA - External Interrupt Control Register
ISC00	= 0 ; External Interrupt Sense Control 0 Bits
ISC01	= 1 ; External Interrupt Sense Control 0 Bits
ISC10	= 2 ; External Interrupt Sense Control 1 Bits
ISC11	= 3 ; External Interrupt Sense Control 1 Bits

; EIMSK - External Interrupt Mask Register
INT0	= 0 ; External Interrupt Request Enables
INT1	= 1 ; External Interrupt Request Enables

; EIFR - External Interrupt Flag Register
INTF0	= 0 ; External Interrupt Flags
INTF1	= 1 ; External Interrupt Flags

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0 ; Pin Change Interrupt Enables
PCIE1	= 1 ; Pin Change Interrupt Enables
PCIE2	= 2 ; Pin Change Interrupt Enables
PCIE3	= 3 ; Pin Change Interrupt Enables

; PCMSK3 - Pin Change Mask Register 3
PCINT24	= 0 ; Pin Change Enable Masks
PCINT25	= 1 ; Pin Change Enable Masks
PCINT26	= 2 ; Pin Change Enable Masks
PCINT27	= 3 ; Pin Change Enable Masks

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
PCINT15	= 7 ; Pin Change Enable Masks

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
PCIF3	= 3 ; Pin Change Interrupt Flags


; ***** WATCHDOG *****************

; WDTCSR - Watchdog Timer Control and Status Register
WDE	= 3 ; Watch Dog Enable
WDP0	= 0 ; Watchdog Timer Prescaler Bits
WDP1	= 1 ; Watchdog Timer Prescaler Bits
WDP2	= 2 ; Watchdog Timer Prescaler Bits
WDIE	= 6 ; Watchdog Timer Interrupt Enable
WDIF	= 7 ; Watchdog Timer Interrupt Flag


; ***** EEPROM *****************

; EEAR - EEPROM Read/Write Access
EEAR0	= 0 ; EEPROM Read/Write Access Bit 0
EEAR1	= 1 ; EEPROM Read/Write Access Bit 1
EEAR2	= 2 ; EEPROM Read/Write Access Bit 2
EEAR3	= 3 ; EEPROM Read/Write Access Bit 3
EEAR4	= 4 ; EEPROM Read/Write Access Bit 4
EEAR5	= 5 ; EEPROM Read/Write Access Bit 5
EEAR6	= 6 ; EEPROM Read/Write Access Bit 6
EEAR7	= 7 ; EEPROM Read/Write Access Bit 7

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
EERIE	= 3 ; EEProm Ready Interrupt Enable
EEPM0	= 4 ; EEPROM Programming Mode Bits
EEPM1	= 5 ; EEPROM Programming Mode Bits


; ***** TWI *****************

; TWSCRA - TWI Slave Control Register A
TWSME	= 0 ; TWI Smart Mode Enable
TWPME	= 1 ; TWI Promiscuous Mode Enable
TWSIE	= 2 ; TWI Stop Interrupt Enable
TWEN	= 3 ; Two-Wire Interface Enable
TWASIE	= 4 ; TWI Address/Stop Interrupt Enable
TWDIE	= 5 ; TWI Data Interrupt Enable
TWSHE	= 7 ; TWI SDA Hold Time Enable

; TWSCRB - TWI Slave Control Register B
TWCMD0	= 0 ; 
TWCMD1	= 1 ; 
TWAA	= 2 ; TWI Acknowledge Action
TWHNM	= 3 ; TWI High Noise Mode

; TWSSRA - TWI Slave Status Register A
TWAS	= 0 ; TWI Address or Stop
TWDIR	= 1 ; TWI Read/Write Direction
TWBE	= 2 ; TWI Bus Error
TWC	= 3 ; TWI Collision
TWRA	= 4 ; TWI Receive Acknowledge
TWCH	= 5 ; TWI Clock Hold
TWASIF	= 6 ; TWI Address/Stop Interrupt Flag
TWDIF	= 7 ; TWI Data Interrupt Flag.

; TWSA - TWI Slave Address Register
TWSA0	= 0 ; TWI Slave Address Register Bit 0
TWSA1	= 1 ; TWI Slave Address Register Bit 1
TWSA2	= 2 ; TWI Slave Address Register Bit 2
TWSA3	= 3 ; TWI Slave Address Register Bit 3
TWSA4	= 4 ; TWI Slave Address Register Bit 4
TWSA5	= 5 ; TWI Slave Address Register Bit 5
TWSA6	= 6 ; TWI Slave Address Register Bit 6
TWSA7	= 7 ; TWI Slave Address Register Bit 7

; TWSD - TWI Slave Data Register
TWSD0	= 0 ; TWI slave data bit
TWSD1	= 1 ; TWI slave data bit
TWSD2	= 2 ; TWI slave data bit
TWSD3	= 3 ; TWI slave data bit
TWSD4	= 4 ; TWI slave data bit
TWSD5	= 5 ; TWI slave data bit
TWSD6	= 6 ; TWI slave data bit
TWSD7	= 7 ; TWI slave data bit

; TWSAM - TWI Slave Address Mask Register
TWAE	= 0 ; TWI Address Enable
TWSAM1	= 1 ; TWI Address Mask Bits
TWSAM2	= 2 ; TWI Address Mask Bits
TWSAM3	= 3 ; TWI Address Mask Bits
TWSAM4	= 4 ; TWI Address Mask Bits
TWSAM5	= 5 ; TWI Address Mask Bits
TWSAM6	= 6 ; TWI Address Mask Bits
TWSAM7	= 7 ; TWI Address Mask Bits


; ***** USART *****************

; UDR - USART I/O Data Register
UDR0	= 0 ; USART I/O Data Register Bit 0
UDR1	= 1 ; USART I/O Data Register Bit 1
UDR2	= 2 ; USART I/O Data Register Bit 2
UDR3	= 3 ; USART I/O Data Register Bit 3
UDR4	= 4 ; USART I/O Data Register Bit 4
UDR5	= 5 ; USART I/O Data Register Bit 5
UDR6	= 6 ; USART I/O Data Register Bit 6
UDR7	= 7 ; USART I/O Data Register Bit 7

; UCSRA - USART Control and Status Register A
MPCM	= 0 ; Multi-processor Communication Mode
U2X	= 1 ; Double the USART transmission speed
UPE	= 2 ; Parity Error
DOR	= 3 ; Data overRun
FE	= 4 ; Framing Error
UDRE	= 5 ; USART Data Register Empty
TXC	= 6 ; USART Transmitt Complete
RXC	= 7 ; USART Receive Complete

; UCSRB - USART Control and Status Register B
TXB8	= 0 ; Transmit Data Bit 8
RXB8	= 1 ; Receive Data Bit 8
UCSZ2	= 2 ; Character Size
TXEN	= 3 ; Transmitter Enable
RXEN	= 4 ; Receiver Enable
UDRIE	= 5 ; USART Data register Empty Interrupt Enable
TXCIE	= 6 ; TX Complete Interrupt Enable
RXCIE	= 7 ; RX Complete Interrupt Enable

; UCSRC - USART Control and Status Register C
UCPOL	= 0 ; Clock Polarity
UCSZ0	= 1 ; Character Size
UCSZ1	= 2 ; Character Size
USBS	= 3 ; Stop Bit Select
UPM0	= 4 ; Parity Mode Bits
UPM1	= 5 ; Parity Mode Bits
UMSEL0	= 6 ; USART Mode Select
UMSEL1	= 7 ; USART Mode Select

; UCSRD - USART Control and Status Register D
SFDE	= 5 ; USART RX Start Frame Detection Enable
RXS	= 6 ; USART RX Start Flag
RXSIE	= 7 ; USART RX Start Interrupt Enable

; UBRR - USART Baud Rate Register  Bytes
UBRRH0	= 0 ; USART Baud Rate Register  Bytes High Bit 0
UBRRH1	= 1 ; USART Baud Rate Register  Bytes High Bit 1
UBRRH2	= 2 ; USART Baud Rate Register  Bytes High Bit 2
UBRRH3	= 3 ; USART Baud Rate Register  Bytes High Bit 3
UBRRH4	= 4 ; USART Baud Rate Register  Bytes High Bit 4
UBRRH5	= 5 ; USART Baud Rate Register  Bytes High Bit 5
UBRRH6	= 6 ; USART Baud Rate Register  Bytes High Bit 6
UBRRH7	= 7 ; USART Baud Rate Register  Bytes High Bit 7


UBRRL0	= 0 ; USART Baud Rate Register  Bytes Low Bit 0
UBRRL1	= 1 ; USART Baud Rate Register  Bytes Low Bit 1
UBRRL2	= 2 ; USART Baud Rate Register  Bytes Low Bit 2
UBRRL3	= 3 ; USART Baud Rate Register  Bytes Low Bit 3
UBRRL4	= 4 ; USART Baud Rate Register  Bytes Low Bit 4
UBRRL5	= 5 ; USART Baud Rate Register  Bytes Low Bit 5
UBRRL6	= 6 ; USART Baud Rate Register  Bytes Low Bit 6
UBRRL7	= 7 ; USART Baud Rate Register  Bytes Low Bit 7


; ***** FUSE *****************

; ***** LOCKBIT *****************
; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30

; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x0FFF ; Note: Word address
IOEND	= 0x00FF
SRAM_START	= 0x0100
SRAM_SIZE	= 512
RAMEND	= 0x02FF
E2END	= 0x00FF
EEPROMEND	= 0x00FF
EEADRBITS	= 8
XRAMEND	= 0x0000

; ***** BOOTLOADER DECLARATIONS *******
NRWW_START_ADDR   = 0xc00
NRWW_STOP_ADDR   = 0xfff
RWW_START_ADDR   = 0x0
RWW_STOP_ADDR   = 0xbff
PAGESIZE   = 32
FIRSTBOOTSTART   = 0xf80
SECONDBOOTSTART   = 0xf00
THIRDBOOTSTART   = 0xe00
FOURTHBOOTSTART   = 0xc00
SMALLBOOTSTART   = FIRSTBOOTSTART
LARGEBOOTSTART   = FOURTHBOOTSTART 

; ***** INTERRUPT VECTORS ************************************************
INT0addr	 = 0x0001 ; External Interrupt Request 0
INT1addr	 = 0x0002 ; External Interrupt Request 1
PCINT0addr	 = 0x0003 ; Pin Change Interrupt Request 0
PCINT1addr	 = 0x0004 ; Pin Change Interrupt Request 1
PCINT2addr	 = 0x0005 ; Pin Change Interrupt Request 2
PCINT3addr	 = 0x0006 ; Pin Change Interrupt Request 3
WDTaddr	 = 0x0007 ; Watchdog Time-out Interrupt
TIMER1_CAPTaddr	 = 0x0008 ; Timer/Counter1 Capture Event
TIMER1_COMPAaddr	 = 0x0009 ; Timer/Counter1 Compare Match A
TIMER1_COMPBaddr	 = 0x000A ; Timer/Counter1 Compare Match B
TIMER1_OVFaddr	 = 0x000B ; Timer/Counter1 Overflow
TIMER0_COMPAaddr	 = 0x000C ; Timer/Counter0 Compare Match A
TIMER0_COMPBaddr	 = 0x000D ; Timer/Counter0 Compare Match B
TIMER0_OVFaddr	 = 0x000E ; Timer/Counter0 Overflow
SPI__STCaddr	 = 0x000F ; SPI Serial Transfer Complete
USART__STARTaddr	 = 0x0010 ; USART, Start
USART__RXaddr	 = 0x0011 ; USART Rx Complete
USART__UDREaddr	 = 0x0012 ; USART, Data Register Empty
USART__TXaddr	 = 0x0013 ; USART Tx Complete
ADCaddr	 = 0x0014 ; ADC Conversion Complete
EE_READYaddr	 = 0x0015 ; EEPROM Ready
ANALOG_COMPaddr	 = 0x0016 ; Analog Comparator
TWI_SLAVEaddr	 = 0x0017 ; Two-wire Serial Interface
SPM_Readyaddr	 = 0x0018 ; Store Program Memory Read
QTRIPaddr	 = 0x0019 ; Touch Sensing

INT_VECTOR_SIZE	= 26 ; size in words


; ***** END OF FILE ******************************************************



