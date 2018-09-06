;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : m64HVE2def.inc
;* Title             : Register/Bit Definitions for the ATmega64HVE2
;* Created           : 2016-09-18 20:43
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATmega64HVE2
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
; device	ATmega64HVE2

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x96
SIGNATURE_002	= 0x10


                .CR     avr
                .FA     enhanced128k
				.MS		$8000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED" are extended I/O ports
; and cannot be used with IN/OUT instructions
VADAC3	= 0xF6 ; MEMORY MAPPED
VADAC2	= 0xF5 ; MEMORY MAPPED
VADAC1	= 0xF4 ; MEMORY MAPPED
VADAC0	= 0xF3 ; MEMORY MAPPED
VADICH	= 0xF2 ; MEMORY MAPPED
VADICL	= 0xF1 ; MEMORY MAPPED
CADAC3	= 0xF0 ; MEMORY MAPPED
CADAC2	= 0xEF ; MEMORY MAPPED
CADAC1	= 0xEE ; MEMORY MAPPED
CADAC0	= 0xED ; MEMORY MAPPED
CADICH	= 0xEC ; MEMORY MAPPED
CADICL	= 0xEB ; MEMORY MAPPED
CADRCLH	= 0xEA ; MEMORY MAPPED
CADRCLL	= 0xE9 ; MEMORY MAPPED
ADIMR	= 0xE8 ; MEMORY MAPPED
ADIFR	= 0xE7 ; MEMORY MAPPED
ADCRE	= 0xE6 ; MEMORY MAPPED
ADCRD	= 0xE5 ; MEMORY MAPPED
ADCRC	= 0xE4 ; MEMORY MAPPED
ADCRB	= 0xE3 ; MEMORY MAPPED
ADCRA	= 0xE2 ; MEMORY MAPPED
ADSCSRB	= 0xE1 ; MEMORY MAPPED
ADSCSRA	= 0xE0 ; MEMORY MAPPED
PBOV	= 0xDC ; MEMORY MAPPED
PLLCSR	= 0xD8 ; MEMORY MAPPED
BGLR	= 0xD4 ; MEMORY MAPPED
BGCRA	= 0xD3 ; MEMORY MAPPED
BGCRB	= 0xD2 ; MEMORY MAPPED
BGCSRA	= 0xD1 ; MEMORY MAPPED
LINDAT	= 0xCA ; MEMORY MAPPED
LINSEL	= 0xC9 ; MEMORY MAPPED
LINIDR	= 0xC8 ; MEMORY MAPPED
LINDLR	= 0xC7 ; MEMORY MAPPED
LINBRRH	= 0xC6 ; MEMORY MAPPED
LINBRRL	= 0xC5 ; MEMORY MAPPED
LINBTR	= 0xC4 ; MEMORY MAPPED
LINERR	= 0xC3 ; MEMORY MAPPED
LINENIR	= 0xC2 ; MEMORY MAPPED
LINSIR	= 0xC1 ; MEMORY MAPPED
LINCR	= 0xC0 ; MEMORY MAPPED
OCR1B	= 0x89 ; MEMORY MAPPED
OCR1A	= 0x88 ; MEMORY MAPPED
TCNT1H	= 0x85 ; MEMORY MAPPED
TCNT1L	= 0x84 ; MEMORY MAPPED
TCCR1B	= 0x81 ; MEMORY MAPPED
TCCR1A	= 0x80 ; MEMORY MAPPED
DIDR0	= 0x7E ; MEMORY MAPPED
TIMSK1	= 0x6F ; MEMORY MAPPED
TIMSK0	= 0x6E ; MEMORY MAPPED
PCMSK1	= 0x6C ; MEMORY MAPPED
PCMSK0	= 0x6B ; MEMORY MAPPED
EICRA	= 0x69 ; MEMORY MAPPED
PCICR	= 0x68 ; MEMORY MAPPED
SOSCCALB	= 0x67 ; MEMORY MAPPED
SOSCCALA	= 0x66 ; MEMORY MAPPED
PRR0	= 0x64 ; MEMORY MAPPED
WDTCLR	= 0x63 ; MEMORY MAPPED
WUTCSR	= 0x62 ; MEMORY MAPPED
CLKPR	= 0x61 ; MEMORY MAPPED
WDTCSR	= 0x60 ; MEMORY MAPPED
SREG	= 0x3F ; 
SPH	= 0x3E ; 
SPL	= 0x3D ; 
SPMCSR	= 0x37 ; 
MCUCR	= 0x35 ; 
MCUSR	= 0x34 ; 
SMCR	= 0x33 ; 
SPDR	= 0x2E ; 
SPSR	= 0x2D ; 
SPCR	= 0x2C ; 
GPIOR2	= 0x2B ; 
GPIOR1	= 0x2A ; 
OCR0B	= 0x29 ; 
OCR0A	= 0x28 ; 
TCNT0H	= 0x27 ; 
TCNT0L	= 0x26 ; 
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
TIFR1	= 0x16 ; 
TIFR0	= 0x15 ; 
PORTB	= 0x05 ; 
DDRB	= 0x04 ; 
PINB	= 0x03 ; 
PORTA	= 0x02 ; 
DDRA	= 0x01 ; 
PINA	= 0x00 ; 


; ***** BIT DEFINITIONS **************************************************

; ***** SPI *****************
; SPCR - SPI Control Register
SPR0	= 0 ; SPI Clock Rate Selects
SPR1	= 1 ; SPI Clock Rate Selects
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


; ***** EEPROM *****************
; EEAR - EEPROM Read/Write Access
EEARH0	= 0 ; EEPROM Read/Write Access High Bit 8
EEARH1	= 1 ; EEPROM Read/Write Access High Bit 9

EEARL0	= 0 ; EEPROM Read/Write Access Low Bit 0
EEARL1	= 1 ; EEPROM Read/Write Access Low Bit 1
EEARL2	= 2 ; EEPROM Read/Write Access Low Bit 2
EEARL3	= 3 ; EEPROM Read/Write Access Low Bit 3
EEARL4	= 4 ; EEPROM Read/Write Access Low Bit 4
EEARL5	= 5 ; EEPROM Read/Write Access Low Bit 5
EEARL6	= 6 ; EEPROM Read/Write Access Low Bit 6
EEARL7	= 7 ; EEPROM Read/Write Access Low Bit 7

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
EEPM0	= 4 ; 
EEPM1	= 5 ; 


; ***** TC1 *****************
; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0 ; Clock Select1 bis
CS11	= 1 ; Clock Select1 bis
CS12	= 2 ; Clock Select1 bis

; TCCR1A - Timer/Counter 1 Control Register A
WGM10	= 0 ; Waveform Generation Mode
ICS1	= 3 ; Input Capture Select
ICES1	= 4 ; Input Capture Edge Select
ICNC1	= 5 ; Input Capture Noise Canceler
ICEN1	= 6 ; Input Capture Mode Enable
TCW1	= 7 ; Timer/Counter Width

; TCNT1 - Timer Counter 1  Bytes
TCNT1H0	= 0 ; Timer Counter 1  Bytes High Bit 8
TCNT1H1	= 1 ; Timer Counter 1  Bytes High Bit 9
TCNT1H2	= 2 ; Timer Counter 1  Bytes High Bit 10
TCNT1H3	= 3 ; Timer Counter 1  Bytes High Bit 11
TCNT1H4	= 4 ; Timer Counter 1  Bytes High Bit 12
TCNT1H5	= 5 ; Timer Counter 1  Bytes High Bit 13
TCNT1H6	= 6 ; Timer Counter 1  Bytes High Bit 14
TCNT1H7	= 7 ; Timer Counter 1  Bytes High Bit 15

TCNT1L0	= 0 ; Timer Counter 1  Bytes Low Bit 0
TCNT1L1	= 1 ; Timer Counter 1  Bytes Low Bit 1
TCNT1L2	= 2 ; Timer Counter 1  Bytes Low Bit 2
TCNT1L3	= 3 ; Timer Counter 1  Bytes Low Bit 3
TCNT1L4	= 4 ; Timer Counter 1  Bytes Low Bit 4
TCNT1L5	= 5 ; Timer Counter 1  Bytes Low Bit 5
TCNT1L6	= 6 ; Timer Counter 1  Bytes Low Bit 6
TCNT1L7	= 7 ; Timer Counter 1  Bytes Low Bit 7

; OCR1A - Output Compare Register 1A
OCR1A0	= 0 ; Output Compare Register 1A Bit 0
OCR1A1	= 1 ; Output Compare Register 1A Bit 1
OCR1A2	= 2 ; Output Compare Register 1A Bit 2
OCR1A3	= 3 ; Output Compare Register 1A Bit 3
OCR1A4	= 4 ; Output Compare Register 1A Bit 4
OCR1A5	= 5 ; Output Compare Register 1A Bit 5
OCR1A6	= 6 ; Output Compare Register 1A Bit 6
OCR1A7	= 7 ; Output Compare Register 1A Bit 7

; OCR1B - Output Compare Register B
OCR1B0	= 0 ; Output Compare Register B Bit 0
OCR1B1	= 1 ; Output Compare Register B Bit 1
OCR1B2	= 2 ; Output Compare Register B Bit 2
OCR1B3	= 3 ; Output Compare Register B Bit 3
OCR1B4	= 4 ; Output Compare Register B Bit 4
OCR1B5	= 5 ; Output Compare Register B Bit 5
OCR1B6	= 6 ; Output Compare Register B Bit 6
OCR1B7	= 7 ; Output Compare Register B Bit 7

; TIMSK1 - Timer/Counter Interrupt Mask Register
TOIE1	= 0 ; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1 ; Timer/Counter1 Output Compare A Interrupt Enable
OCIE1B	= 2 ; Timer/Counter1 Output Compare B Interrupt Enable
ICIE1	= 3 ; Timer/Counter n Input Capture Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0 ; Timer/Counter1 Overflow Flag
OCF1A	= 1 ; Timer/Counter1 Output Compare Flag A
OCF1B	= 2 ; Timer/Counter1 Output Compare Flag B
ICF1	= 3 ; Timer/Counter 1 Input Capture Flag

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0 ; Prescaler Reset
TSM	= 7 ; Timer/Counter Synchronization Mode


; ***** TC0 *****************
; TCCR0B - Timer/Counter0 Control Register B
CS00	= 0 ; Clock Select0 bit 0
CS01	= 1 ; Clock Select0 bit 1
CS02	= 2 ; Clock Select0 bit 2

; TCCR0A - Timer/Counter 0 Control Register A
WGM00	= 0 ; Waveform Generation Mode
ICS0	= 3 ; Input Capture Select
ICES0	= 4 ; Input Capture Edge Select
ICNC0	= 5 ; Input Capture Noise Canceler
ICEN0	= 6 ; Input Capture Mode Enable
TCW0	= 7 ; Timer/Counter Width

; TCNT0 - Timer Counter 0  Bytes
TCNT0H0	= 0 ; Timer Counter 0  Bytes High Bit 8
TCNT0H1	= 1 ; Timer Counter 0  Bytes High Bit 9
TCNT0H2	= 2 ; Timer Counter 0  Bytes High Bit 10
TCNT0H3	= 3 ; Timer Counter 0  Bytes High Bit 11
TCNT0H4	= 4 ; Timer Counter 0  Bytes High Bit 12
TCNT0H5	= 5 ; Timer Counter 0  Bytes High Bit 13
TCNT0H6	= 6 ; Timer Counter 0  Bytes High Bit 14
TCNT0H7	= 7 ; Timer Counter 0  Bytes High Bit 15

TCNT0L0	= 0 ; Timer Counter 0  Bytes Low Bit 0
TCNT0L1	= 1 ; Timer Counter 0  Bytes Low Bit 1
TCNT0L2	= 2 ; Timer Counter 0  Bytes Low Bit 2
TCNT0L3	= 3 ; Timer Counter 0  Bytes Low Bit 3
TCNT0L4	= 4 ; Timer Counter 0  Bytes Low Bit 4
TCNT0L5	= 5 ; Timer Counter 0  Bytes Low Bit 5
TCNT0L6	= 6 ; Timer Counter 0  Bytes Low Bit 6
TCNT0L7	= 7 ; Timer Counter 0  Bytes Low Bit 7

; OCR0A - Output Compare Register 0A
OCR0A0	= 0 ; Output Compare Register 0A Bit 0
OCR0A1	= 1 ; Output Compare Register 0A Bit 1
OCR0A2	= 2 ; Output Compare Register 0A Bit 2
OCR0A3	= 3 ; Output Compare Register 0A Bit 3
OCR0A4	= 4 ; Output Compare Register 0A Bit 4
OCR0A5	= 5 ; Output Compare Register 0A Bit 5
OCR0A6	= 6 ; Output Compare Register 0A Bit 6
OCR0A7	= 7 ; Output Compare Register 0A Bit 7

; OCR0B - Output Compare Register B
OCR0B0	= 0 ; Output Compare Register B Bit 0
OCR0B1	= 1 ; Output Compare Register B Bit 1
OCR0B2	= 2 ; Output Compare Register B Bit 2
OCR0B3	= 3 ; Output Compare Register B Bit 3
OCR0B4	= 4 ; Output Compare Register B Bit 4
OCR0B5	= 5 ; Output Compare Register B Bit 5
OCR0B6	= 6 ; Output Compare Register B Bit 6
OCR0B7	= 7 ; Output Compare Register B Bit 7

; TIMSK0 - Timer/Counter Interrupt Mask Register
TOIE0	= 0 ; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1 ; Timer/Counter0 Output Compare A Interrupt Enable
OCIE0B	= 2 ; Timer/Counter0 Output Compare B Interrupt Enable
ICIE0	= 3 ; Timer/Counter n Input Capture Interrupt Enable

; TIFR0 - Timer/Counter Interrupt Flag register
TOV0	= 0 ; Timer/Counter0 Overflow Flag
OCF0A	= 1 ; Timer/Counter0 Output Compare Flag A
OCF0B	= 2 ; Timer/Counter0 Output Compare Flag B
ICF0	= 3 ; Timer/Counter 0 Input Capture Flag

; GTCCR - General Timer/Counter Control Register


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

; PBOV - Port B Override
PBOE0	= 0 ; Port B Override Enable 0
PBOE3	= 3 ; Port B Override Enable 3
PBOVCE	= 7 ; Port B Override Change Enable


; ***** PORTA *****************
; PORTA - Port A Data Register
PORTA0	= 0 ; Port A Data Register Bit 0
PORTA1	= 1 ; Port A Data Register Bit 1

; DDRA - Port A Data Direction Register
DDRA0	= 0 ; Port A Data Direction Register Bit 0
DDRA1	= 1 ; Port A Data Direction Register Bit 1

; PINA - Port A Input Pins
PINA0	= 0 ; Port A Input Pins Bit 0
PINA1	= 1 ; Port A Input Pins Bit 1


; ***** BOOT_LOAD *****************
; SPMCSR - Store Program Memory Control and Status Register
SPMEN	= 0 ; Store Program Memory Enable
PGERS	= 1 ; Page Erase
PGWRT	= 2 ; Page Write
LBSET	= 3 ; Lock Bit Set
RWWSRE	= 4 ; Read-While-Write Section Read Enable
SIGRD	= 5 ; Signature Row Read
RWWSB	= 6 ; Read-While-Write Section Busy
SPMIE	= 7 ; SPM Interrupt Enable


; ***** ADC *****************
; ADSCSRA - ADC Synchronization Control and Status Register
SCMD0	= 0 ; Synchronization Command
SCMD1	= 1 ; Synchronization Command
SBSY	= 2 ; Synchronization Busy

; ADSCSRB - ADC Synchronization Control and Status Register
CADICRB	= 0 ; CADIC Data Read Out Busy
CADACRB	= 1 ; CADAC Data Read Out Busy
CADICPS	= 2 ; C-ADC Instantaneous Conversion Polarity Status
VADICRB	= 4 ; VADIC Data Read Out Busy
VADACRB	= 5 ; VADAC Data Read Out Busy
VADICPS	= 6 ; V-ADC Instantaneous Conversion Polarity Status

; ADCRA - ADC Control Register A
CKSEL	= 0 ; Sampling Clock Select
ADCMS0	= 1 ; C-ADC Chopper Mode Select
ADCMS1	= 2 ; C-ADC Chopper Mode Select
ADPSEL	= 3 ; ADC Polarity Select

; ADCRB - ADC Control Register B
ADADES0	= 0 ; Accumulated Decimation Ratio Select
ADADES1	= 1 ; Accumulated Decimation Ratio Select
ADADES2	= 2 ; Accumulated Decimation Ratio Select
ADIDES0	= 3 ; Instantaneous Decimation Ratio Select
ADIDES1	= 4 ; Instantaneous Decimation Ratio Select

; ADCRC - ADC Control Register B
CADRCT0	= 0 ; C-ADC Regular Current Count Threshold
CADRCT1	= 1 ; C-ADC Regular Current Count Threshold
CADRCT2	= 2 ; C-ADC Regular Current Count Threshold
CADRCT3	= 3 ; C-ADC Regular Current Count Threshold
CADRCM0	= 4 ; C-ADC Regular Current Comparator Mode
CADRCM1	= 5 ; C-ADC Regular Current Comparator Mode
CADEN	= 7 ; C-ADC Enable

; ADCRD - ADC Control Register D
CADDSEL	= 0 ; C-ADC Diagnostics Channel Select
CADPDM0	= 1 ; C-ADC Pin Diagnostics Mode
CADPDM1	= 2 ; C-ADC Pin Diagnostics Mode
CADG0	= 3 ; C-ADC Gain
CADG1	= 4 ; C-ADC Gain
CADG2	= 5 ; C-ADC Gain

; ADCRE - ADC Control Register E
VADMUX0	= 0 ; V-ADC Channel Select
VADMUX1	= 1 ; V-ADC Channel Select
VADMUX2	= 2 ; V-ADC Channel Select
VADPDM0	= 3 ; V-ADC Pin Diagnostics Mode
VADPDM1	= 4 ; V-ADC Pin Diagnostics Mode
VADREFS	= 5 ; V-ADC Reference Select
VADEN	= 7 ; V-ADC Enable

; ADIFR - ADC Interrupt Flag Register
CADICIF	= 0 ; C-ADC Instantaneous Current Interrupt Flag
CADACIF	= 1 ; C-ADC Accumulated Current Interrupt Flag
CADRCIF	= 2 ; C-ADC Regulator Current Interrupt Flag
VADICIF	= 4 ; V-DAC Instantaneous Voltage Interrupt Flag
VADACIF	= 5 ; V-ADC Accumulated Voltage Interrupt Flag

; ADIMR - ADC Interrupt Mask Register
CADICIE	= 0 ; C-ADC Instantaneous Current Interrupt Enable
CADACIE	= 1 ; C-ADC Accumulated Current Interrupt Enable
CADRCIE	= 2 ; C-ADC Regulator Current Interrupt Enable
VADICIE	= 4 ; V-DAC Instantaneous Voltage Interrupt Enable
VADACIE	= 5 ; V-ADC Accumulated Voltage Interrupt Enable

; CADRCL - CC-ADC Regulator Current Comparator Threshold Level
CADRCLH0	= 0 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 8
CADRCLH1	= 1 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 9
CADRCLH2	= 2 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 10
CADRCLH3	= 3 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 11
CADRCLH4	= 4 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 12
CADRCLH5	= 5 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 13
CADRCLH6	= 6 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 14
CADRCLH7	= 7 ; CC-ADC Regulator Current Comparator Threshold Level High Bit 15

CADRCLL0	= 0 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 0
CADRCLL1	= 1 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 1
CADRCLL2	= 2 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 2
CADRCLL3	= 3 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 3
CADRCLL4	= 4 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 4
CADRCLL5	= 5 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 5
CADRCLL6	= 6 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 6
CADRCLL7	= 7 ; CC-ADC Regulator Current Comparator Threshold Level Low Bit 7

; VADIC - V-ADC Instantaneous Conversion Result
VADICH0	= 0 ; V-ADC Instantaneous Conversion Result High Bit 8
VADICH1	= 1 ; V-ADC Instantaneous Conversion Result High Bit 9
VADICH2	= 2 ; V-ADC Instantaneous Conversion Result High Bit 10
VADICH3	= 3 ; V-ADC Instantaneous Conversion Result High Bit 11
VADICH4	= 4 ; V-ADC Instantaneous Conversion Result High Bit 12
VADICH5	= 5 ; V-ADC Instantaneous Conversion Result High Bit 13
VADICH6	= 6 ; V-ADC Instantaneous Conversion Result High Bit 14
VADICH7	= 7 ; V-ADC Instantaneous Conversion Result High Bit 15

VADICL0	= 0 ; V-ADC Instantaneous Conversion Result Low Bit 0
VADICL1	= 1 ; V-ADC Instantaneous Conversion Result Low Bit 1
VADICL2	= 2 ; V-ADC Instantaneous Conversion Result Low Bit 2
VADICL3	= 3 ; V-ADC Instantaneous Conversion Result Low Bit 3
VADICL4	= 4 ; V-ADC Instantaneous Conversion Result Low Bit 4
VADICL5	= 5 ; V-ADC Instantaneous Conversion Result Low Bit 5
VADICL6	= 6 ; V-ADC Instantaneous Conversion Result Low Bit 6
VADICL7	= 7 ; V-ADC Instantaneous Conversion Result Low Bit 7

; VADAC3 - V-ADC Accumulated Conversion Result
VADAC30	= 0 ; V-ADC Accumulated Conversion Result Bit 0
VADAC31	= 1 ; V-ADC Accumulated Conversion Result Bit 1
VADAC32	= 2 ; V-ADC Accumulated Conversion Result Bit 2
VADAC33	= 3 ; V-ADC Accumulated Conversion Result Bit 3
VADAC34	= 4 ; V-ADC Accumulated Conversion Result Bit 4
VADAC35	= 5 ; V-ADC Accumulated Conversion Result Bit 5
VADAC36	= 6 ; V-ADC Accumulated Conversion Result Bit 6
VADAC37	= 7 ; V-ADC Accumulated Conversion Result Bit 7

; VADAC2 - V-ADC Accumulated Conversion Result
VADAC20	= 0 ; V-ADC Accumulated Conversion Result Bit 0
VADAC21	= 1 ; V-ADC Accumulated Conversion Result Bit 1
VADAC22	= 2 ; V-ADC Accumulated Conversion Result Bit 2
VADAC23	= 3 ; V-ADC Accumulated Conversion Result Bit 3
VADAC24	= 4 ; V-ADC Accumulated Conversion Result Bit 4
VADAC25	= 5 ; V-ADC Accumulated Conversion Result Bit 5
VADAC26	= 6 ; V-ADC Accumulated Conversion Result Bit 6
VADAC27	= 7 ; V-ADC Accumulated Conversion Result Bit 7

; VADAC1 - V-ADC Accumulated Conversion Result
VADAC10	= 0 ; V-ADC Accumulated Conversion Result Bit 0
VADAC11	= 1 ; V-ADC Accumulated Conversion Result Bit 1
VADAC12	= 2 ; V-ADC Accumulated Conversion Result Bit 2
VADAC13	= 3 ; V-ADC Accumulated Conversion Result Bit 3
VADAC14	= 4 ; V-ADC Accumulated Conversion Result Bit 4
VADAC15	= 5 ; V-ADC Accumulated Conversion Result Bit 5
VADAC16	= 6 ; V-ADC Accumulated Conversion Result Bit 6
VADAC17	= 7 ; V-ADC Accumulated Conversion Result Bit 7

; VADAC0 - V-ADC Accumulated Conversion Result
VADAC00	= 0 ; V-ADC Accumulated Conversion Result Bit 0
VADAC01	= 1 ; V-ADC Accumulated Conversion Result Bit 1
VADAC02	= 2 ; V-ADC Accumulated Conversion Result Bit 2
VADAC03	= 3 ; V-ADC Accumulated Conversion Result Bit 3
VADAC04	= 4 ; V-ADC Accumulated Conversion Result Bit 4
VADAC05	= 5 ; V-ADC Accumulated Conversion Result Bit 5
VADAC06	= 6 ; V-ADC Accumulated Conversion Result Bit 6
VADAC07	= 7 ; V-ADC Accumulated Conversion Result Bit 7

; CADIC - C-ADC Instantaneous Conversion Result
CADICH0	= 0 ; C-ADC Instantaneous Conversion Result High Bit 8
CADICH1	= 1 ; C-ADC Instantaneous Conversion Result High Bit 9
CADICH2	= 2 ; C-ADC Instantaneous Conversion Result High Bit 10
CADICH3	= 3 ; C-ADC Instantaneous Conversion Result High Bit 11
CADICH4	= 4 ; C-ADC Instantaneous Conversion Result High Bit 12
CADICH5	= 5 ; C-ADC Instantaneous Conversion Result High Bit 13
CADICH6	= 6 ; C-ADC Instantaneous Conversion Result High Bit 14
CADICH7	= 7 ; C-ADC Instantaneous Conversion Result High Bit 15

CADICL0	= 0 ; C-ADC Instantaneous Conversion Result Low Bit 0
CADICL1	= 1 ; C-ADC Instantaneous Conversion Result Low Bit 1
CADICL2	= 2 ; C-ADC Instantaneous Conversion Result Low Bit 2
CADICL3	= 3 ; C-ADC Instantaneous Conversion Result Low Bit 3
CADICL4	= 4 ; C-ADC Instantaneous Conversion Result Low Bit 4
CADICL5	= 5 ; C-ADC Instantaneous Conversion Result Low Bit 5
CADICL6	= 6 ; C-ADC Instantaneous Conversion Result Low Bit 6
CADICL7	= 7 ; C-ADC Instantaneous Conversion Result Low Bit 7

; CADAC3 - C-ADC Accumulated Conversion Result
CADAC30	= 0 ; C-ADC Accumulated Conversion Result Bit 0
CADAC31	= 1 ; C-ADC Accumulated Conversion Result Bit 1
CADAC32	= 2 ; C-ADC Accumulated Conversion Result Bit 2
CADAC33	= 3 ; C-ADC Accumulated Conversion Result Bit 3
CADAC34	= 4 ; C-ADC Accumulated Conversion Result Bit 4
CADAC35	= 5 ; C-ADC Accumulated Conversion Result Bit 5
CADAC36	= 6 ; C-ADC Accumulated Conversion Result Bit 6
CADAC37	= 7 ; C-ADC Accumulated Conversion Result Bit 7

; CADAC2 - C-ADC Accumulated Conversion Result
CADAC20	= 0 ; C-ADC Accumulated Conversion Result Bit 0
CADAC21	= 1 ; C-ADC Accumulated Conversion Result Bit 1
CADAC22	= 2 ; C-ADC Accumulated Conversion Result Bit 2
CADAC23	= 3 ; C-ADC Accumulated Conversion Result Bit 3
CADAC24	= 4 ; C-ADC Accumulated Conversion Result Bit 4
CADAC25	= 5 ; C-ADC Accumulated Conversion Result Bit 5
CADAC26	= 6 ; C-ADC Accumulated Conversion Result Bit 6
CADAC27	= 7 ; C-ADC Accumulated Conversion Result Bit 7

; CADAC1 - C-ADC Accumulated Conversion Result
CADAC10	= 0 ; C-ADC Accumulated Conversion Result Bit 0
CADAC11	= 1 ; C-ADC Accumulated Conversion Result Bit 1
CADAC12	= 2 ; C-ADC Accumulated Conversion Result Bit 2
CADAC13	= 3 ; C-ADC Accumulated Conversion Result Bit 3
CADAC14	= 4 ; C-ADC Accumulated Conversion Result Bit 4
CADAC15	= 5 ; C-ADC Accumulated Conversion Result Bit 5
CADAC16	= 6 ; C-ADC Accumulated Conversion Result Bit 6
CADAC17	= 7 ; C-ADC Accumulated Conversion Result Bit 7

; CADAC0 - C-ADC Accumulated Conversion Result
CADAC00	= 0 ; C-ADC Accumulated Conversion Result Bit 0
CADAC01	= 1 ; C-ADC Accumulated Conversion Result Bit 1
CADAC02	= 2 ; C-ADC Accumulated Conversion Result Bit 2
CADAC03	= 3 ; C-ADC Accumulated Conversion Result Bit 3
CADAC04	= 4 ; C-ADC Accumulated Conversion Result Bit 4
CADAC05	= 5 ; C-ADC Accumulated Conversion Result Bit 5
CADAC06	= 6 ; C-ADC Accumulated Conversion Result Bit 6
CADAC07	= 7 ; C-ADC Accumulated Conversion Result Bit 7


; ***** BANDGAP *****************
; BGCSRA - Bandgap Control and Status Register A
BGSC0	= 0 ; Band Gap Sample Configuration
BGSC1	= 1 ; Band Gap Sample Configuration
BGSC2	= 2 ; Band Gap Sample Configuration

; BGCRA - Band Gap Calibration Register A
BGCN0	= 0 ; Band Gap Calibration Nominal
BGCN1	= 1 ; Band Gap Calibration Nominal
BGCN2	= 2 ; Band Gap Calibration Nominal
BGCN3	= 3 ; Band Gap Calibration Nominal
BGCN4	= 4 ; Band Gap Calibration Nominal
BGCN5	= 5 ; Band Gap Calibration Nominal
BGCN6	= 6 ; Band Gap Calibration Nominal
BGCN7	= 7 ; Band Gap Calibration Nominal

; BGCRB - Band Gap Calibration Register B
BGCL0	= 0 ; Band Gap Calibration Linear
BGCL1	= 1 ; Band Gap Calibration Linear
BGCL2	= 2 ; Band Gap Calibration Linear
BGCL3	= 3 ; Band Gap Calibration Linear
BGCL4	= 4 ; Band Gap Calibration Linear
BGCL5	= 5 ; Band Gap Calibration Linear
BGCL6	= 6 ; Band Gap Calibration Linear
BGCL7	= 7 ; Band Gap Calibration Linear

; BGLR - Band Gap Lock Register
BGPL	= 0 ; Band Gap Lock
BGPLE	= 1 ; Band Gap Lock Enable


; ***** LINUART *****************
; LINCR - LIN Control Register
LCMD0	= 0 ; LIN Command and Mode bits
LCMD1	= 1 ; LIN Command and Mode bits
LCMD2	= 2 ; LIN Command and Mode bits
LENA	= 3 ; LIN or UART Enable
LCONF0	= 4 ; LIN Configuration bits
LCONF1	= 5 ; LIN Configuration bits
LIN13	= 6 ; LIN Standard
LSWRES	= 7 ; Software Reset

; LINSIR - LIN Status and Interrupt Register
LRXOK	= 0 ; Receive Performed Interrupt
LTXOK	= 1 ; Transmit Performed Interrupt
LIDOK	= 2 ; Identifier Interrupt
LERR	= 3 ; Error Interrupt
LBUSY	= 4 ; Busy Signal
LIDST0	= 5 ; Identifier Status bits
LIDST1	= 6 ; Identifier Status bits
LIDST2	= 7 ; Identifier Status bits

; LINENIR - LIN Enable Interrupt Register
LENRXOK	= 0 ; Enable Receive Performed Interrupt
LENTXOK	= 1 ; Enable Transmit Performed Interrupt
LENIDOK	= 2 ; Enable Identifier Interrupt
LENERR	= 3 ; Enable Error Interrupt

; LINERR - LIN Error Register
LBERR	= 0 ; Bit Error Flag
LCERR	= 1 ; Checksum Error Flag
LPERR	= 2 ; Parity Error Flag
LSERR	= 3 ; Synchronization Error Flag
LFERR	= 4 ; Framing Error Flag
LOVERR	= 5 ; Overrun Error Flag
LTOERR	= 6 ; Frame Time Out Error Flag
LABORT	= 7 ; Abort Flag

; LINBTR - LIN Bit Timing Register
LBT0	= 0 ; LIN Bit Timing bits
LBT1	= 1 ; LIN Bit Timing bits
LBT2	= 2 ; LIN Bit Timing bits
LBT3	= 3 ; LIN Bit Timing bits
LBT4	= 4 ; LIN Bit Timing bits
LBT5	= 5 ; LIN Bit Timing bits
LDISR	= 7 ; Disable Bit Timing Resynchronization

; LINBRRL - LIN Baud Rate Low Register
LDIV0	= 0 ; 
LDIV1	= 1 ; 
LDIV2	= 2 ; 
LDIV3	= 3 ; 
LDIV4	= 4 ; 
LDIV5	= 5 ; 
LDIV6	= 6 ; 
LDIV7	= 7 ; 

; LINBRRH - LIN Baud Rate High Register
LDIV8	= 0 ; 
LDIV9	= 1 ; 
LDIV10	= 2 ; 
LDIV11	= 3 ; 

; LINDLR - LIN Data Length Register
LRXDL0	= 0 ; LIN Receive Data Length bits
LRXDL1	= 1 ; LIN Receive Data Length bits
LRXDL2	= 2 ; LIN Receive Data Length bits
LRXDL3	= 3 ; LIN Receive Data Length bits
LTXDL0	= 4 ; LIN Transmit Data Length bits
LTXDL1	= 5 ; LIN Transmit Data Length bits
LTXDL2	= 6 ; LIN Transmit Data Length bits
LTXDL3	= 7 ; LIN Transmit Data Length bits

; LINIDR - LIN Identifier Register
LID0	= 0 ; Identifier bit 5 or Data Length bits
LID1	= 1 ; Identifier bit 5 or Data Length bits
LID2	= 2 ; Identifier bit 5 or Data Length bits
LID3	= 3 ; Identifier bit 5 or Data Length bits
LID4	= 4 ; Identifier bit 5 or Data Length bits
LID5	= 5 ; Identifier bit 5 or Data Length bits
LP0	= 6 ; Parity bits
LP1	= 7 ; Parity bits

; LINSEL - LIN Data Buffer Selection Register
LINDX0	= 0 ; FIFO LIN Data Buffer Index bits
LINDX1	= 1 ; FIFO LIN Data Buffer Index bits
LINDX2	= 2 ; FIFO LIN Data Buffer Index bits
LAINC	= 3 ; Auto Increment of Data Buffer Index (Active Low)

; LINDAT - LIN Data Register
LDATA0	= 0 ; 
LDATA1	= 1 ; 
LDATA2	= 2 ; 
LDATA3	= 3 ; 
LDATA4	= 4 ; 
LDATA5	= 5 ; 
LDATA6	= 6 ; 
LDATA7	= 7 ; 


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
PUD	= 4 ; Pull-up disable
CKOE	= 5 ; Clock Output Enable

; MCUSR - MCU Status Register
PORF	= 0 ; Power-on reset flag
EXTRF	= 1 ; External Reset Flag
BODRF	= 2 ; Brown-out Reset Flag
WDRF	= 3 ; Watchdog Reset Flag
OCDRF	= 4 ; OCD Reset Flag

; SOSCCALA - Slow Oscillator Calibration Register A
SOSCCALA0	= 0 ; Slow Oscillator Calibration Register A Bit 0
SOSCCALA1	= 1 ; Slow Oscillator Calibration Register A Bit 1
SOSCCALA2	= 2 ; Slow Oscillator Calibration Register A Bit 2
SOSCCALA3	= 3 ; Slow Oscillator Calibration Register A Bit 3
SOSCCALA4	= 4 ; Slow Oscillator Calibration Register A Bit 4
SOSCCALA5	= 5 ; Slow Oscillator Calibration Register A Bit 5
SOSCCALA6	= 6 ; Slow Oscillator Calibration Register A Bit 6
SOSCCALA7	= 7 ; Slow Oscillator Calibration Register A Bit 7

; SOSCCALB - Oscillator Calibration Register B
SOSCCALB0	= 0 ; Oscillator Calibration Register B Bit 0
SOSCCALB1	= 1 ; Oscillator Calibration Register B Bit 1
SOSCCALB2	= 2 ; Oscillator Calibration Register B Bit 2
SOSCCALB3	= 3 ; Oscillator Calibration Register B Bit 3
SOSCCALB4	= 4 ; Oscillator Calibration Register B Bit 4
SOSCCALB5	= 5 ; Oscillator Calibration Register B Bit 5
SOSCCALB6	= 6 ; Oscillator Calibration Register B Bit 6
SOSCCALB7	= 7 ; Oscillator Calibration Register B Bit 7

; PLLCSR - PLL Control and Status Register
PLLCIE	= 0 ; PLL Lock Change Interrupt Enable
PLLCIF	= 1 ; PLL Lock Change Interrupt Flag
LOCK	= 4 ; PLL Lock
SWEN	= 5 ; PLL Software Enable

; SMCR - Sleep Mode Control Register
SE	= 0 ; Sleep Enable
SM0	= 1 ; Sleep Mode Select bits
SM1	= 2 ; Sleep Mode Select bits
SM2	= 3 ; Sleep Mode Select bits

; GPIOR2 - General Purpose IO Register 2
GPIOR20	= 0 ; General Purpose IO Register 2 Bit 0
GPIOR21	= 1 ; General Purpose IO Register 2 Bit 1
GPIOR22	= 2 ; General Purpose IO Register 2 Bit 2
GPIOR23	= 3 ; General Purpose IO Register 2 Bit 3
GPIOR24	= 4 ; General Purpose IO Register 2 Bit 4
GPIOR25	= 5 ; General Purpose IO Register 2 Bit 5
GPIOR26	= 6 ; General Purpose IO Register 2 Bit 6
GPIOR27	= 7 ; General Purpose IO Register 2 Bit 7

; GPIOR1 - General Purpose IO Register 1
GPIOR10	= 0 ; General Purpose IO Register 1 Bit 0
GPIOR11	= 1 ; General Purpose IO Register 1 Bit 1
GPIOR12	= 2 ; General Purpose IO Register 1 Bit 2
GPIOR13	= 3 ; General Purpose IO Register 1 Bit 3
GPIOR14	= 4 ; General Purpose IO Register 1 Bit 4
GPIOR15	= 5 ; General Purpose IO Register 1 Bit 5
GPIOR16	= 6 ; General Purpose IO Register 1 Bit 6
GPIOR17	= 7 ; General Purpose IO Register 1 Bit 7

; GPIOR0 - General Purpose IO Register 0
GPIOR00	= 0 ; General Purpose IO Register 0 Bit 0
GPIOR01	= 1 ; General Purpose IO Register 0 Bit 1
GPIOR02	= 2 ; General Purpose IO Register 0 Bit 2
GPIOR03	= 3 ; General Purpose IO Register 0 Bit 3
GPIOR04	= 4 ; General Purpose IO Register 0 Bit 4
GPIOR05	= 5 ; General Purpose IO Register 0 Bit 5
GPIOR06	= 6 ; General Purpose IO Register 0 Bit 6
GPIOR07	= 7 ; General Purpose IO Register 0 Bit 7

; DIDR0 - Digital Input Disable Register
PA0DID	= 0 ; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
PA1DID	= 1 ; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.

; PRR0 - Power Reduction Register 0
PRTIM0	= 0 ; Power Reduction Timer/Counter0
PRTIM1	= 1 ; Power Reduction Timer/Counter1
PRSPI	= 2 ; Power reduction SPI
PRLIN	= 3 ; Power Reduction LIN UART Interface

; CLKPR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPCE	= 7 ; Clock Prescaler Change Enable


; ***** EXINT *****************
; EICRA - External Interrupt Control Register
ISC00	= 0 ; External Interrupt Sense Control 0 Bit 0
ISC01	= 1 ; External Interrupt Sense Control 0 Bit 1

; EIMSK - External Interrupt Mask Register
INT0	= 0 ; External Interrupt Request 0 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0 ; External Interrupt Flag 0

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0 ; Pin Change Interrupt Enables
PCIE1	= 1 ; Pin Change Interrupt Enables

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0 ; Pin Change Interrupt Flags
PCIF1	= 1 ; Pin Change Interrupt Flags

; PCMSK1 - Pin Change Enable Mask Register 1
PCMSK10	= 0 ; Pin Change Enable Mask Register 1 Bit 0
PCMSK11	= 1 ; Pin Change Enable Mask Register 1 Bit 1
PCMSK12	= 2 ; Pin Change Enable Mask Register 1 Bit 2
PCMSK13	= 3 ; Pin Change Enable Mask Register 1 Bit 3
PCMSK14	= 4 ; Pin Change Enable Mask Register 1 Bit 4
PCMSK15	= 5 ; Pin Change Enable Mask Register 1 Bit 5
PCMSK16	= 6 ; Pin Change Enable Mask Register 1 Bit 6
PCMSK17	= 7 ; Pin Change Enable Mask Register 1 Bit 7

; PCMSK0 - Pin Change Enable Mask Register 0
PCMSK00	= 0 ; Pin Change Enable Mask Register 0 Bit 0
PCMSK01	= 1 ; Pin Change Enable Mask Register 0 Bit 1


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

; WDTCLR - Watchdog Timer Configuration Lock Register
WDCLE	= 0 ; Watchdog Timer Comfiguration Lock Enable
WDCL0	= 1 ; Watchdog Timer Comfiguration Lock bits
WDCL1	= 2 ; Watchdog Timer Comfiguration Lock bits


; ***** WAKEUP_TIMER *****************
; WUTCSR - Wake-up Timer Control and Status Register
WUTP0	= 0 ; Wake-up Timer Prescaler Bits
WUTP1	= 1 ; Wake-up Timer Prescaler Bits
WUTP2	= 2 ; Wake-up Timer Prescaler Bits
WUTE	= 3 ; Wake-up Timer Enable
WUTR	= 4 ; Wake-up Timer Reset
WUTIE	= 6 ; Wake-up Timer Interrupt Enable
WUTIF	= 7 ; Wake-up Timer Interrupt Flag


; ***** FUSE *****************
; LOW - 
OSCSEL0	= 0 ; Oscillator select
SUT0	= 1 ; Select start-up time
SUT1	= 2 ; Select start-up time
CKDIV8	= 3 ; Divide clock by 8
BODEN	= 4 ; Brown-out detection enabled
SPIEN	= 5 ; Serial program downloading (SPI) enabled
EESAVE	= 6 ; Preserve EEPROM through the Chip Erase cycle
WDTON	= 7 ; Watch-dog Timer always on

; HIGH - 
BOOTRST	= 0 ; Boot Reset vector Enabled
BOOTSZ0	= 1 ; Select Boot Size
BOOTSZ1	= 2 ; Select Boot Size
DWEN	= 3 ; Debug Wire enable


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
FLASHPAGESIZE	= 0x0080 ;

BOOTSECTION1START	= 0x7E00 ; Note: Word address
BOOTSECTION1END	= 0x7FFF ; Note: Word address
BOOTSECTION1PAGESIZE	= 0x0080 ;

BOOTSECTION2START	= 0x7C00 ; Note: Word address
BOOTSECTION2END	= 0x7FFF ; Note: Word address
BOOTSECTION2PAGESIZE	= 0x0080 ;

BOOTSECTION3START	= 0x7800 ; Note: Word address
BOOTSECTION3END	= 0x7FFF ; Note: Word address
BOOTSECTION3PAGESIZE	= 0x0080 ;

BOOTSECTION4START	= 0x7000 ; Note: Word address
BOOTSECTION4END	= 0x7FFF ; Note: Word address
BOOTSECTION4PAGESIZE	= 0x0080 ;

IOEND	= 0x00FF

SRAM_START	= 0x0100
SRAM_SIZE	= 4096
RAMEND	= 0x10FF

E2END	= 0x03FF
EEPROMEND	= 0x03FF
EEADRBITS	= 10

XRAMEND	= 0x0000



; ***** BOOTLOADER DECLARATIONS ******************************************
PAGESIZE	= 0x0080 ;

FIRSTBOOTSTART	= 0xFC00 ; Note: Word address
FIRSTBOOTPAGESIZE	= 0x0080 ;
FIRSTBOOTEND	= 0x01FF ; Note: Word address

SECONDBOOTSTART	= 0xF800 ; Note: Word address
SECONDBOOTPAGESIZE	= 0x0080 ;
SECONDBOOTEND	= 0x01FF ; Note: Word address

THIRDBOOTSTART	= 0xF000 ; Note: Word address
THIRDBOOTPAGESIZE	= 0x0080 ;
THIRDBOOTEND	= 0x01FF ; Note: Word address

FOURTHBOOTSTART	= 0xE000 ; Note: Word address
FOURTHBOOTPAGESIZE	= 0x0080 ;
FOURTHBOOTEND	= 0x01FF ; Note: Word address

SMALLBOOTSTART	= FIRSTBOOTSTART ;
LARGEBOOTSTART	= FOURTHBOOTSTART ;
; ***** INTERRUPT VECTORS ************************************************
INT0addr	 = 0x0002 ; External Interrupt 0
PCINT0addr	 = 0x0004 ; Pin Change Interrupt 0
PCINT1addr	 = 0x0006 ; Pin Change Interrupt 1
WDTaddr	 = 0x0008 ; Watchdog Timeout Interrupt
WAKEUPaddr	 = 0x000A ; Wakeup Timer Overflow
TIMER1_ICaddr	 = 0x000C ; Timer 1 Input capture
TIMER1_COMPAaddr	 = 0x000E ; Timer 1 Compare Match A
TIMER1_COMPBaddr	 = 0x0010 ; Timer 1 Compare Match B
TIMER1_OVFaddr	 = 0x0012 ; Timer 1 overflow
TIMER0_ICaddr	 = 0x0014 ; Timer 0 Input Capture
TIMER0_COMPAaddr	 = 0x0016 ; Timer 0 Comapre Match A
TIMER0_COMPBaddr	 = 0x0018 ; Timer 0 Compare Match B
TIMER0_OVFaddr	 = 0x001A ; Timer 0 Overflow
LIN_STATUSaddr	 = 0x001C ; LIN Status Interrupt
LIN_ERRORaddr	 = 0x001E ; LIN Error Interrupt
SPI_STCaddr	 = 0x0020 ; SPI Serial transfer complete
VADC_CONVaddr	 = 0x0022 ; Voltage ADC Instantaneous Conversion Complete
VADC_ACCaddr	 = 0x0024 ; Voltage ADC Accumulated Conversion Complete
CADC_CONVaddr	 = 0x0026 ; C-ADC Instantaneous Conversion Complete
CADC_REG_CURaddr	 = 0x0028 ; C-ADC Regular Current
CADC_ACCaddr	 = 0x002A ; C-ADC Accumulated Conversion Complete
EE_READYaddr	 = 0x002C ; EEPROM Ready
SPMaddr	 = 0x002E ; SPM Ready
PLLaddr	 = 0x0030 ; PLL Lock Change Interrupt

INT_VECTORS_SIZE	= 50 ; size in words


; ***** END OF FILE ******************************************************



