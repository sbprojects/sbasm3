;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : m32HVBrevBdef.inc
;* Title             : Register/Bit Definitions for the ATmega32HVBrevB
;* Created           : 2012-11-02 13:30
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATmega32HVBrevB
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
; device	ATmega32HVBrevB

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x95
SIGNATURE_002	= 0x10

                .CR     avr
                .FA     enhanced128k
				.MS		$4000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED" are extended I/O ports
; and cannot be used with IN/OUT instructions
BPPLR	= 0xFE ; MEMORY MAPPED
BPCR	= 0xFD ; MEMORY MAPPED
BPHCTR	= 0xFC ; MEMORY MAPPED
BPOCTR	= 0xFB ; MEMORY MAPPED
BPSCTR	= 0xFA ; MEMORY MAPPED
BPCHCD	= 0xF9 ; MEMORY MAPPED
BPDHCD	= 0xF8 ; MEMORY MAPPED
BPCOCD	= 0xF7 ; MEMORY MAPPED
BPDOCD	= 0xF6 ; MEMORY MAPPED
BPSCD	= 0xF5 ; MEMORY MAPPED
BPIFR	= 0xF3 ; MEMORY MAPPED
BPIMSK	= 0xF2 ; MEMORY MAPPED
CBCR	= 0xF1 ; MEMORY MAPPED
FCSR	= 0xF0 ; MEMORY MAPPED
CADRDC	= 0xEA ; MEMORY MAPPED
CADRCC	= 0xE9 ; MEMORY MAPPED
CADCSRC	= 0xE8 ; MEMORY MAPPED
CADCSRB	= 0xE7 ; MEMORY MAPPED
CADCSRA	= 0xE6 ; MEMORY MAPPED
CADICH	= 0xE5 ; MEMORY MAPPED
CADICL	= 0xE4 ; MEMORY MAPPED
CADAC3	= 0xE3 ; MEMORY MAPPED
CADAC2	= 0xE2 ; MEMORY MAPPED
CADAC1	= 0xE1 ; MEMORY MAPPED
CADAC0	= 0xE0 ; MEMORY MAPPED
CHGDCSR	= 0xD4 ; MEMORY MAPPED
BGCSR	= 0xD2 ; MEMORY MAPPED
BGCRR	= 0xD1 ; MEMORY MAPPED
BGCCR	= 0xD0 ; MEMORY MAPPED
ROCR	= 0xC8 ; MEMORY MAPPED
TWBCSR	= 0xBE ; MEMORY MAPPED
TWAMR	= 0xBD ; MEMORY MAPPED
TWCR	= 0xBC ; MEMORY MAPPED
TWDR	= 0xBB ; MEMORY MAPPED
TWAR	= 0xBA ; MEMORY MAPPED
TWSR	= 0xB9 ; MEMORY MAPPED
TWBR	= 0xB8 ; MEMORY MAPPED
OCR1B	= 0x89 ; MEMORY MAPPED
OCR1A	= 0x88 ; MEMORY MAPPED
TCNT1H	= 0x85 ; MEMORY MAPPED
TCNT1L	= 0x84 ; MEMORY MAPPED
TCCR1B	= 0x81 ; MEMORY MAPPED
TCCR1A	= 0x80 ; MEMORY MAPPED
DIDR0	= 0x7E ; MEMORY MAPPED
VADMUX	= 0x7C ; MEMORY MAPPED
VADCSR	= 0x7A ; MEMORY MAPPED
VADCH	= 0x79 ; MEMORY MAPPED
VADCL	= 0x78 ; MEMORY MAPPED
TIMSK1	= 0x6F ; MEMORY MAPPED
TIMSK0	= 0x6E ; MEMORY MAPPED
PCMSK1	= 0x6C ; MEMORY MAPPED
PCMSK0	= 0x6B ; MEMORY MAPPED
EICRA	= 0x69 ; MEMORY MAPPED
PCICR	= 0x68 ; MEMORY MAPPED
FOSCCAL	= 0x66 ; MEMORY MAPPED
PRR0	= 0x64 ; MEMORY MAPPED
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
OSICSR	= 0x17 ; 
TIFR1	= 0x16 ; 
TIFR0	= 0x15 ; 
PORTC	= 0x08 ; 
PINC	= 0x06 ; 
PORTB	= 0x05 ; 
DDRB	= 0x04 ; 
PINB	= 0x03 ; 
PORTA	= 0x02 ; 
DDRA	= 0x01 ; 
PINA	= 0x00 ; 


; ***** BIT DEFINITIONS **************************************************

; ***** AD_CONVERTER *****************
; VADMUX - The VADC multiplexer Selection Register
VADMUX0	= 0 ; Analog Channel and Gain Selection Bits
VADMUX1	= 1 ; Analog Channel and Gain Selection Bits
VADMUX2	= 2 ; Analog Channel and Gain Selection Bits
VADMUX3	= 3 ; Analog Channel and Gain Selection Bits

; VADC - VADC Data Register  Bytes
VADCH0	= 0 ; VADC Data Register  Bytes High Bit 8
VADCH1	= 1 ; VADC Data Register  Bytes High Bit 9
VADCH2	= 2 ; VADC Data Register  Bytes High Bit 10
VADCH3	= 3 ; VADC Data Register  Bytes High Bit 11

VADCL0	= 0 ; VADC Data Register  Bytes Low Bit 0
VADCL1	= 1 ; VADC Data Register  Bytes Low Bit 1
VADCL2	= 2 ; VADC Data Register  Bytes Low Bit 2
VADCL3	= 3 ; VADC Data Register  Bytes Low Bit 3
VADCL4	= 4 ; VADC Data Register  Bytes Low Bit 4
VADCL5	= 5 ; VADC Data Register  Bytes Low Bit 5
VADCL6	= 6 ; VADC Data Register  Bytes Low Bit 6
VADCL7	= 7 ; VADC Data Register  Bytes Low Bit 7

; VADCSR - The VADC Control and Status register
VADCCIE	= 0 ; VADC Conversion Complete Interrupt Enable
VADCCIF	= 1 ; VADC Conversion Complete Interrupt Flag
VADSC	= 2 ; VADC Satrt Conversion
VADEN	= 3 ; VADC Enable


; ***** WATCHDOG *****************
; WDTCSR - Watchdog Timer Control Register
WDE	= 3 ; Watch Dog Enable
WDCE	= 4 ; Watchdog Change Enable
WDP0	= 0 ; Watchdog Timer Prescaler Bits
WDP1	= 1 ; Watchdog Timer Prescaler Bits
WDP2	= 2 ; Watchdog Timer Prescaler Bits
WDP3	= 5 ; Watchdog Timer Prescaler Bits
WDIE	= 6 ; Watchdog Timeout Interrupt Enable
WDIF	= 7 ; Watchdog Timeout Interrupt Flag


; ***** FET *****************
; FCSR - FET Control and Status Register
CFE	= 0 ; Charge FET Enable
DFE	= 1 ; Discharge FET Enable
CPS	= 2 ; Current Protection Status
DUVRD	= 3 ; Deep Under-Voltage Recovery Disable


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


; ***** COULOMB_COUNTER *****************
; CADCSRA - CC-ADC Control and Status Register A
CADSE	= 0 ; When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
CADSI0	= 1 ; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADSI1	= 2 ; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADAS0	= 3 ; CC_ADC Accumulate Current Select Bits
CADAS1	= 4 ; CC_ADC Accumulate Current Select Bits
CADUB	= 5 ; CC_ADC Update Busy
CADPOL	= 6 ; 
CADEN	= 7 ; When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.

; CADCSRB - CC-ADC Control and Status Register B
CADICIF	= 0 ; CC-ADC Instantaneous Current Interrupt Flag
CADRCIF	= 1 ; CC-ADC Accumulate Current Interrupt Flag
CADACIF	= 2 ; CC-ADC Accumulate Current Interrupt Flag
CADICIE	= 4 ; CAD Instantenous Current Interrupt Enable
CADRCIE	= 5 ; Regular Current Interrupt Enable
CADACIE	= 6 ; 

; CADCSRC - CC-ADC Control and Status Register C
CADVSE	= 0 ; CC-ADC Voltage Scaling Enable

; CADIC - CC-ADC Instantaneous Current
CADICH0	= 0 ; CC-ADC Instantaneous Current High Bit 8
CADICH1	= 1 ; CC-ADC Instantaneous Current High Bit 9
CADICH2	= 2 ; CC-ADC Instantaneous Current High Bit 10
CADICH3	= 3 ; CC-ADC Instantaneous Current High Bit 11
CADICH4	= 4 ; CC-ADC Instantaneous Current High Bit 12
CADICH5	= 5 ; CC-ADC Instantaneous Current High Bit 13
CADICH6	= 6 ; CC-ADC Instantaneous Current High Bit 14
CADICH7	= 7 ; CC-ADC Instantaneous Current High Bit 15

CADICL0	= 0 ; CC-ADC Instantaneous Current Low Bit 0
CADICL1	= 1 ; CC-ADC Instantaneous Current Low Bit 1
CADICL2	= 2 ; CC-ADC Instantaneous Current Low Bit 2
CADICL3	= 3 ; CC-ADC Instantaneous Current Low Bit 3
CADICL4	= 4 ; CC-ADC Instantaneous Current Low Bit 4
CADICL5	= 5 ; CC-ADC Instantaneous Current Low Bit 5
CADICL6	= 6 ; CC-ADC Instantaneous Current Low Bit 6
CADICL7	= 7 ; CC-ADC Instantaneous Current Low Bit 7

; CADAC3 - ADC Accumulate Current
CADAC30	= 0 ; ADC Accumulate Current Bit 0
CADAC31	= 1 ; ADC Accumulate Current Bit 1
CADAC32	= 2 ; ADC Accumulate Current Bit 2
CADAC33	= 3 ; ADC Accumulate Current Bit 3
CADAC34	= 4 ; ADC Accumulate Current Bit 4
CADAC35	= 5 ; ADC Accumulate Current Bit 5
CADAC36	= 6 ; ADC Accumulate Current Bit 6
CADAC37	= 7 ; ADC Accumulate Current Bit 7

; CADAC2 - ADC Accumulate Current
CADAC20	= 0 ; ADC Accumulate Current Bit 0
CADAC21	= 1 ; ADC Accumulate Current Bit 1
CADAC22	= 2 ; ADC Accumulate Current Bit 2
CADAC23	= 3 ; ADC Accumulate Current Bit 3
CADAC24	= 4 ; ADC Accumulate Current Bit 4
CADAC25	= 5 ; ADC Accumulate Current Bit 5
CADAC26	= 6 ; ADC Accumulate Current Bit 6
CADAC27	= 7 ; ADC Accumulate Current Bit 7

; CADAC1 - ADC Accumulate Current
CADAC10	= 0 ; ADC Accumulate Current Bit 0
CADAC11	= 1 ; ADC Accumulate Current Bit 1
CADAC12	= 2 ; ADC Accumulate Current Bit 2
CADAC13	= 3 ; ADC Accumulate Current Bit 3
CADAC14	= 4 ; ADC Accumulate Current Bit 4
CADAC15	= 5 ; ADC Accumulate Current Bit 5
CADAC16	= 6 ; ADC Accumulate Current Bit 6
CADAC17	= 7 ; ADC Accumulate Current Bit 7

; CADAC0 - ADC Accumulate Current
CADAC00	= 0 ; ADC Accumulate Current Bit 0
CADAC01	= 1 ; ADC Accumulate Current Bit 1
CADAC02	= 2 ; ADC Accumulate Current Bit 2
CADAC03	= 3 ; ADC Accumulate Current Bit 3
CADAC04	= 4 ; ADC Accumulate Current Bit 4
CADAC05	= 5 ; ADC Accumulate Current Bit 5
CADAC06	= 6 ; ADC Accumulate Current Bit 6
CADAC07	= 7 ; ADC Accumulate Current Bit 7

; CADRCC - CC-ADC Regular Charge Current
CADRCC0	= 0 ; CC-ADC Regular Charge Current Bit 0
CADRCC1	= 1 ; CC-ADC Regular Charge Current Bit 1
CADRCC2	= 2 ; CC-ADC Regular Charge Current Bit 2
CADRCC3	= 3 ; CC-ADC Regular Charge Current Bit 3
CADRCC4	= 4 ; CC-ADC Regular Charge Current Bit 4
CADRCC5	= 5 ; CC-ADC Regular Charge Current Bit 5
CADRCC6	= 6 ; CC-ADC Regular Charge Current Bit 6
CADRCC7	= 7 ; CC-ADC Regular Charge Current Bit 7

; CADRDC - CC-ADC Regular Discharge Current
CADRDC0	= 0 ; CC-ADC Regular Discharge Current Bit 0
CADRDC1	= 1 ; CC-ADC Regular Discharge Current Bit 1
CADRDC2	= 2 ; CC-ADC Regular Discharge Current Bit 2
CADRDC3	= 3 ; CC-ADC Regular Discharge Current Bit 3
CADRDC4	= 4 ; CC-ADC Regular Discharge Current Bit 4
CADRDC5	= 5 ; CC-ADC Regular Discharge Current Bit 5
CADRDC6	= 6 ; CC-ADC Regular Discharge Current Bit 6
CADRDC7	= 7 ; CC-ADC Regular Discharge Current Bit 7


; ***** TWI *****************
; TWBCSR - TWI Bus Control and Status Register
TWBCIP	= 0 ; TWI Bus Connect/Disconnect Interrupt Polarity
TWBDT0	= 1 ; TWI Bus Disconnect Time-out Period
TWBDT1	= 2 ; TWI Bus Disconnect Time-out Period
TWBCIE	= 6 ; TWI Bus Connect/Disconnect Interrupt Enable
TWBCIF	= 7 ; TWI Bus Connect/Disconnect Interrupt Flag

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


; ***** EXTERNAL_INTERRUPT *****************
; EICRA - External Interrupt Control Register
ISC00	= 0 ; External Interrupt Sense Control 0 Bits
ISC01	= 1 ; External Interrupt Sense Control 0 Bits
ISC10	= 2 ; External Interrupt Sense Control 1 Bits
ISC11	= 3 ; External Interrupt Sense Control 1 Bits
ISC20	= 4 ; External Interrupt Sense Control 2 Bits
ISC21	= 5 ; External Interrupt Sense Control 2 Bits
ISC30	= 6 ; External Interrupt Sense Control 3 Bits
ISC31	= 7 ; External Interrupt Sense Control 3 Bits

; EIMSK - External Interrupt Mask Register
INT0	= 0 ; External Interrupt Request 3 Enable
INT1	= 1 ; External Interrupt Request 3 Enable
INT2	= 2 ; External Interrupt Request 3 Enable
INT3	= 3 ; External Interrupt Request 3 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0 ; External Interrupt Flags
INTF1	= 1 ; External Interrupt Flags
INTF2	= 2 ; External Interrupt Flags
INTF3	= 3 ; External Interrupt Flags

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
PCMSK02	= 2 ; Pin Change Enable Mask Register 0 Bit 2
PCMSK03	= 3 ; Pin Change Enable Mask Register 0 Bit 3


; ***** TIMER_COUNTER_1 *****************
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


; ***** CELL_BALANCING *****************
; CBCR - Cell Balancing Control Register
CBE1	= 0 ; Cell Balancing Enables
CBE2	= 1 ; Cell Balancing Enables
CBE3	= 2 ; Cell Balancing Enables
CBE4	= 3 ; Cell Balancing Enables


; ***** BATTERY_PROTECTION *****************
; BPPLR - Battery Protection Parameter Lock Register
BPPL	= 0 ; Battery Protection Parameter Lock
BPPLE	= 1 ; Battery Protection Parameter Lock Enable

; BPCR - Battery Protection Control Register
CHCD	= 0 ; Charge High-current Protection Disable
DHCD	= 1 ; Discharge High-current Protection Disable
COCD	= 2 ; Charge Over-current Protection Disabled
DOCD	= 3 ; Discharge Over-current Protection Disabled
SCD	= 4 ; Short Circuit Protection Disabled
EPID	= 5 ; External Protection Input Disable

; BPHCTR - Battery Protection Short-current Timing Register
BPHCTR0	= 0 ; Battery Protection Short-current Timing Register Bit 0
BPHCTR1	= 1 ; Battery Protection Short-current Timing Register Bit 1
BPHCTR2	= 2 ; Battery Protection Short-current Timing Register Bit 2
BPHCTR3	= 3 ; Battery Protection Short-current Timing Register Bit 3
BPHCTR4	= 4 ; Battery Protection Short-current Timing Register Bit 4
BPHCTR5	= 5 ; Battery Protection Short-current Timing Register Bit 5

; BPOCTR - Battery Protection Over-current Timing Register
BPOCTR0	= 0 ; Battery Protection Over-current Timing Register Bit 0
BPOCTR1	= 1 ; Battery Protection Over-current Timing Register Bit 1
BPOCTR2	= 2 ; Battery Protection Over-current Timing Register Bit 2
BPOCTR3	= 3 ; Battery Protection Over-current Timing Register Bit 3
BPOCTR4	= 4 ; Battery Protection Over-current Timing Register Bit 4
BPOCTR5	= 5 ; Battery Protection Over-current Timing Register Bit 5

; BPSCTR - Battery Protection Short-current Timing Register
BPSCTR0	= 0 ; Battery Protection Short-current Timing Register Bit 0
BPSCTR1	= 1 ; Battery Protection Short-current Timing Register Bit 1
BPSCTR2	= 2 ; Battery Protection Short-current Timing Register Bit 2
BPSCTR3	= 3 ; Battery Protection Short-current Timing Register Bit 3
BPSCTR4	= 4 ; Battery Protection Short-current Timing Register Bit 4
BPSCTR5	= 5 ; Battery Protection Short-current Timing Register Bit 5
BPSCTR6	= 6 ; Battery Protection Short-current Timing Register Bit 6

; BPCHCD - Battery Protection Charge-High-current Detection Level Register
BPCHCD0	= 0 ; Battery Protection Charge-High-current Detection Level Register Bit 0
BPCHCD1	= 1 ; Battery Protection Charge-High-current Detection Level Register Bit 1
BPCHCD2	= 2 ; Battery Protection Charge-High-current Detection Level Register Bit 2
BPCHCD3	= 3 ; Battery Protection Charge-High-current Detection Level Register Bit 3
BPCHCD4	= 4 ; Battery Protection Charge-High-current Detection Level Register Bit 4
BPCHCD5	= 5 ; Battery Protection Charge-High-current Detection Level Register Bit 5
BPCHCD6	= 6 ; Battery Protection Charge-High-current Detection Level Register Bit 6
BPCHCD7	= 7 ; Battery Protection Charge-High-current Detection Level Register Bit 7

; BPDHCD - Battery Protection Discharge-High-current Detection Level Register
BPDHCD0	= 0 ; Battery Protection Discharge-High-current Detection Level Register Bit 0
BPDHCD1	= 1 ; Battery Protection Discharge-High-current Detection Level Register Bit 1
BPDHCD2	= 2 ; Battery Protection Discharge-High-current Detection Level Register Bit 2
BPDHCD3	= 3 ; Battery Protection Discharge-High-current Detection Level Register Bit 3
BPDHCD4	= 4 ; Battery Protection Discharge-High-current Detection Level Register Bit 4
BPDHCD5	= 5 ; Battery Protection Discharge-High-current Detection Level Register Bit 5
BPDHCD6	= 6 ; Battery Protection Discharge-High-current Detection Level Register Bit 6
BPDHCD7	= 7 ; Battery Protection Discharge-High-current Detection Level Register Bit 7

; BPCOCD - Battery Protection Charge-Over-current Detection Level Register
BPCOCD0	= 0 ; Battery Protection Charge-Over-current Detection Level Register Bit 0
BPCOCD1	= 1 ; Battery Protection Charge-Over-current Detection Level Register Bit 1
BPCOCD2	= 2 ; Battery Protection Charge-Over-current Detection Level Register Bit 2
BPCOCD3	= 3 ; Battery Protection Charge-Over-current Detection Level Register Bit 3
BPCOCD4	= 4 ; Battery Protection Charge-Over-current Detection Level Register Bit 4
BPCOCD5	= 5 ; Battery Protection Charge-Over-current Detection Level Register Bit 5
BPCOCD6	= 6 ; Battery Protection Charge-Over-current Detection Level Register Bit 6
BPCOCD7	= 7 ; Battery Protection Charge-Over-current Detection Level Register Bit 7

; BPDOCD - Battery Protection Discharge-Over-current Detection Level Register
BPDOCD0	= 0 ; Battery Protection Discharge-Over-current Detection Level Register Bit 0
BPDOCD1	= 1 ; Battery Protection Discharge-Over-current Detection Level Register Bit 1
BPDOCD2	= 2 ; Battery Protection Discharge-Over-current Detection Level Register Bit 2
BPDOCD3	= 3 ; Battery Protection Discharge-Over-current Detection Level Register Bit 3
BPDOCD4	= 4 ; Battery Protection Discharge-Over-current Detection Level Register Bit 4
BPDOCD5	= 5 ; Battery Protection Discharge-Over-current Detection Level Register Bit 5
BPDOCD6	= 6 ; Battery Protection Discharge-Over-current Detection Level Register Bit 6
BPDOCD7	= 7 ; Battery Protection Discharge-Over-current Detection Level Register Bit 7

; BPSCD - Battery Protection Short-Circuit Detection Level Register
BPSCD0	= 0 ; Battery Protection Short-Circuit Detection Level Register Bit 0
BPSCD1	= 1 ; Battery Protection Short-Circuit Detection Level Register Bit 1
BPSCD2	= 2 ; Battery Protection Short-Circuit Detection Level Register Bit 2
BPSCD3	= 3 ; Battery Protection Short-Circuit Detection Level Register Bit 3
BPSCD4	= 4 ; Battery Protection Short-Circuit Detection Level Register Bit 4
BPSCD5	= 5 ; Battery Protection Short-Circuit Detection Level Register Bit 5
BPSCD6	= 6 ; Battery Protection Short-Circuit Detection Level Register Bit 6
BPSCD7	= 7 ; Battery Protection Short-Circuit Detection Level Register Bit 7

; BPIFR - Battery Protection Interrupt Flag Register
CHCIF	= 0 ; Charge High-current Protection Activated Interrupt
DHCIF	= 1 ; Disharge High-current Protection Activated Interrupt
COCIF	= 2 ; Charge Over-current Protection Activated Interrupt Flag
DOCIF	= 3 ; Discharge Over-current Protection Activated Interrupt Flag
SCIF	= 4 ; Short-circuit Protection Activated Interrupt Flag

; BPIMSK - Battery Protection Interrupt Mask Register
CHCIE	= 0 ; Charger High-current Protection Activated Interrupt
DHCIE	= 1 ; Discharger High-current Protection Activated Interrupt
COCIE	= 2 ; Charge Over-current Protection Activated Interrupt Enable
DOCIE	= 3 ; Discharge Over-current Protection Activated Interrupt Enable
SCIE	= 4 ; Short-circuit Protection Activated Interrupt Enable


; ***** CHARGER_DETECT *****************
; CHGDCSR - Charger Detect Control and Status Register
CHGDIE	= 0 ; Charger Detect Interrupt Enable
CHGDIF	= 1 ; Charger Detect Interrupt Flag
CHGDISC0	= 2 ; Charger Detect Interrupt Sense Control
CHGDISC1	= 3 ; Charger Detect Interrupt Sense Control
BATTPVL	= 4 ; BATT Pin Voltage Level


; ***** VOLTAGE_REGULATOR *****************
; ROCR - Regulator Operating Condition Register
ROCWIE	= 0 ; ROC Warning Interrupt Enable
ROCWIF	= 1 ; ROC Warning Interrupt Flag
ROCD	= 4 ; ROC Disable
ROCS	= 7 ; ROC Status


; ***** BANDGAP *****************
; BGCSR - Bandgap Control and Status Register
BGSCDIE	= 0 ; Bandgap Short Circuit Detection Interrupt Enable
BGSCDIF	= 1 ; Bandgap Short Circuit Detection Interrupt Flag
BGSCDE	= 4 ; Bandgap Short Circuit Detection Enabled
BGD	= 5 ; Bandgap Disable

; BGCRR - Bandgap Calibration of Resistor Ladder
BGCRR0	= 0 ; Bandgap Calibration of Resistor Ladder Bit 0
BGCRR1	= 1 ; Bandgap Calibration of Resistor Ladder Bit 1
BGCRR2	= 2 ; Bandgap Calibration of Resistor Ladder Bit 2
BGCRR3	= 3 ; Bandgap Calibration of Resistor Ladder Bit 3
BGCRR4	= 4 ; Bandgap Calibration of Resistor Ladder Bit 4
BGCRR5	= 5 ; Bandgap Calibration of Resistor Ladder Bit 5
BGCRR6	= 6 ; Bandgap Calibration of Resistor Ladder Bit 6
BGCRR7	= 7 ; Bandgap Calibration of Resistor Ladder Bit 7

; BGCCR - Bandgap Calibration Register
BGCC0	= 0 ; BG Calibration of PTAT Current Bits
BGCC1	= 1 ; BG Calibration of PTAT Current Bits
BGCC2	= 2 ; BG Calibration of PTAT Current Bits
BGCC3	= 3 ; BG Calibration of PTAT Current Bits
BGCC4	= 4 ; BG Calibration of PTAT Current Bits
BGCC5	= 5 ; BG Calibration of PTAT Current Bits


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

; FOSCCAL - Fast Oscillator Calibration Value
FOSCCAL0	= 0 ; Fast Oscillator Calibration Value Bit 0
FOSCCAL1	= 1 ; Fast Oscillator Calibration Value Bit 1
FOSCCAL2	= 2 ; Fast Oscillator Calibration Value Bit 2
FOSCCAL3	= 3 ; Fast Oscillator Calibration Value Bit 3
FOSCCAL4	= 4 ; Fast Oscillator Calibration Value Bit 4
FOSCCAL5	= 5 ; Fast Oscillator Calibration Value Bit 5
FOSCCAL6	= 6 ; Fast Oscillator Calibration Value Bit 6
FOSCCAL7	= 7 ; Fast Oscillator Calibration Value Bit 7

; OSICSR - Oscillator Sampling Interface Control and Status Register
OSIEN	= 0 ; Oscillator Sampling Interface Enable
OSIST	= 1 ; Oscillator Sampling Interface Status
OSISEL0	= 4 ; Oscillator Sampling Interface Select 0

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
PRVADC	= 0 ; Power Reduction V-ADC
PRTIM0	= 1 ; Power Reduction Timer/Counter0
PRTIM1	= 2 ; Power Reduction Timer/Counter1
PRSPI	= 3 ; Power reduction SPI
PRVRM	= 5 ; Power Reduction Voltage Regulator Monitor
PRTWI	= 6 ; Power Reduction TWI

; CLKPR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPCE	= 7 ; Clock Prescaler Change Enable


; ***** PORTA *****************
; PORTA - Port A Data Register
PORTA0	= 0 ; Port A Data Register Bit 0
PORTA1	= 1 ; Port A Data Register Bit 1
PORTA2	= 2 ; Port A Data Register Bit 2
PORTA3	= 3 ; Port A Data Register Bit 3

; DDRA - Port A Data Direction Register
DDRA0	= 0 ; Port A Data Direction Register Bit 0
DDRA1	= 1 ; Port A Data Direction Register Bit 1
DDRA2	= 2 ; Port A Data Direction Register Bit 2
DDRA3	= 3 ; Port A Data Direction Register Bit 3

; PINA - Port A Input Pins
PINA0	= 0 ; Port A Input Pins Bit 0
PINA1	= 1 ; Port A Input Pins Bit 1
PINA2	= 2 ; Port A Input Pins Bit 2
PINA3	= 3 ; Port A Input Pins Bit 3


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

; PINC - Port C Input Pins
PINC0	= 0 ; Port C Input Pins Bit 0
PINC1	= 1 ; Port C Input Pins Bit 1
PINC2	= 2 ; Port C Input Pins Bit 2
PINC3	= 3 ; Port C Input Pins Bit 3
PINC4	= 4 ; Port C Input Pins Bit 4


; ***** TIMER_COUNTER_0 *****************
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


; ***** FUSE *****************
; LOW - 
SUT0	= 2 ; Select start-up time
SUT1	= 3 ; Select start-up time
SUT2	= 4 ; Select start-up time
SPIEN	= 5 ; Serial program downloading (SPI) enabled
EESAVE	= 6 ; Preserve EEPROM through the Chip Erase cycle
WDTON	= 7 ; Watch-dog Timer always on

; HIGH - 
BOOTRST	= 0 ; Boot Reset vector Enabled
BOOTSZ0	= 1 ; Select Boot Size
BOOTSZ1	= 2 ; Select Boot Size
DWEN	= 3 ; Debug Wire enable
DUVRDINIT	= 4 ; DUVR mode on


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
FLASHEND	= 0x3FFF ; Note: Word address
IOEND	= 0x00FF
SRAM_START	= 0x0100
SRAM_SIZE	= 2048
RAMEND	= 0x08FF
E2END	= 0x03FF
EEPROMEND	= 0x03FF
EEADRBITS	= 10
XRAMEND	= 0x0000

; ***** INTERRUPT VECTORS ************************************************
BPINTaddr	 = 0x0002 ; Battery Protection Interrupt
VREGMONaddr	 = 0x0004 ; Voltage regulator monitor interrupt
INT0addr	 = 0x0006 ; External Interrupt Request 0
INT1addr	 = 0x0008 ; External Interrupt Request 1
INT2addr	 = 0x000A ; External Interrupt Request 2
INT3addr	 = 0x000C ; External Interrupt Request 3
PCINT0addr	 = 0x000E ; Pin Change Interrupt 0
PCINT1addr	 = 0x0010 ; Pin Change Interrupt 1
WDTaddr	 = 0x0012 ; Watchdog Timeout Interrupt
BGSCDaddr	 = 0x0014 ; Bandgap Buffer Short Circuit Detected
CHDETaddr	 = 0x0016 ; Charger Detect
TIMER1_ICaddr	 = 0x0018 ; Timer 1 Input capture
TIMER1_COMPAaddr	 = 0x001A ; Timer 1 Compare Match A
TIMER1_COMPBaddr	 = 0x001C ; Timer 1 Compare Match B
TIMER1_OVFaddr	 = 0x001E ; Timer 1 overflow
TIMER0_ICaddr	 = 0x0020 ; Timer 0 Input Capture
TIMER0_COMPAaddr	 = 0x0022 ; Timer 0 Comapre Match A
TIMER0_COMPBaddr	 = 0x0024 ; Timer 0 Compare Match B
TIMER0_OVFaddr	 = 0x0026 ; Timer 0 Overflow
TWIBUSCDaddr	 = 0x0028 ; Two-Wire Bus Connect/Disconnect
TWIaddr	 = 0x002A ; Two-Wire Serial Interface
SPI_STCaddr	 = 0x002C ; SPI Serial transfer complete
VADCaddr	 = 0x002E ; Voltage ADC Conversion Complete
CCADC_CONVaddr	 = 0x0030 ; Coulomb Counter ADC Conversion Complete
CCADC_REG_CURaddr	 = 0x0032 ; Coloumb Counter ADC Regular Current
CCADC_ACCaddr	 = 0x0034 ; Coloumb Counter ADC Accumulator
EE_READYaddr	 = 0x0036 ; EEPROM Ready
SPMaddr	 = 0x0038 ; SPM Ready

INT_VECTORS_SIZE	= 58 ; size in words


; ***** END OF FILE ******************************************************



