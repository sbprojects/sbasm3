;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : tn102def.inc
;* Title             : Register/Bit Definitions for the ATtiny102
;* Created           : 2016-09-29 14:07
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATtiny102
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
; .device	ATtiny102

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x90
SIGNATURE_002	= 0x0C

                .CR     avr
                .FA     enhanced128k
				.MS		$0200

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED" are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3F ; MEMORY MAPPED
SPH	= 0x3E ; MEMORY MAPPED
SPL	= 0x3D ; MEMORY MAPPED
CCP	= 0x3C ; MEMORY MAPPED
RSTFLR	= 0x3B ; MEMORY MAPPED
SMCR	= 0x3A ; MEMORY MAPPED
OSCCAL	= 0x39 ; MEMORY MAPPED
CLKMSR	= 0x37 ; MEMORY MAPPED
CLKPSR	= 0x36 ; MEMORY MAPPED
PRR	= 0x35 ; MEMORY MAPPED
VLMCSR	= 0x34 ; MEMORY MAPPED
NVMCMD	= 0x33 ; MEMORY MAPPED
NVMCSR	= 0x32 ; MEMORY MAPPED
WDTCSR	= 0x31 ; MEMORY MAPPED
GTCCR	= 0x2F ; MEMORY MAPPED
TCCR0A	= 0x2E ; MEMORY MAPPED
TCCR0B	= 0x2D ; MEMORY MAPPED
TCCR0C	= 0x2C ; MEMORY MAPPED
TIMSK0	= 0x2B ; MEMORY MAPPED
TIFR0	= 0x2A ; MEMORY MAPPED
TCNT0H	= 0x29 ; MEMORY MAPPED
TCNT0L	= 0x28 ; MEMORY MAPPED
OCR0AH	= 0x27 ; MEMORY MAPPED
OCR0AL	= 0x26 ; MEMORY MAPPED
OCR0BH	= 0x25 ; MEMORY MAPPED
OCR0BL	= 0x24 ; MEMORY MAPPED
ICR0H	= 0x23 ; MEMORY MAPPED
ICR0L	= 0x22 ; MEMORY MAPPED
ACSRA	= 0x1F ; MEMORY MAPPED
ACSRB	= 0x1E ; MEMORY MAPPED
ADCSRA	= 0x1D ; MEMORY MAPPED
ADCSRB	= 0x1C ; MEMORY MAPPED
ADMUX	= 0x1B ; MEMORY MAPPED
ADCH	= 0x1A ; MEMORY MAPPED
ADCL	= 0x19 ; MEMORY MAPPED
DIDR0	= 0x17 ; MEMORY MAPPED
PORTCR	= 0x16 ; MEMORY MAPPED
EICRA	= 0x15 ; MEMORY MAPPED
EIFR	= 0x14 ; MEMORY MAPPED
EIMSK	= 0x13 ; MEMORY MAPPED
PCICR	= 0x12 ; MEMORY MAPPED
PCIFR	= 0x11 ; MEMORY MAPPED
PCMSK1	= 0x10 ; MEMORY MAPPED
PCMSK0	= 0x0F ; MEMORY MAPPED
UCSRA	= 0x0E ; MEMORY MAPPED
UCSRB	= 0x0D ; MEMORY MAPPED
UCSRC	= 0x0C ; MEMORY MAPPED
UCSRD	= 0x0B ; MEMORY MAPPED
UBRRH	= 0x0A ; MEMORY MAPPED
UBRRL	= 0x09 ; MEMORY MAPPED
UDR	= 0x08 ; MEMORY MAPPED
PUEB	= 0x07 ; MEMORY MAPPED
PORTB	= 0x06 ; MEMORY MAPPED
DDRB	= 0x05 ; MEMORY MAPPED
PINB	= 0x04 ; MEMORY MAPPED
PUEA	= 0x03 ; MEMORY MAPPED
PORTA	= 0x02 ; MEMORY MAPPED
DDRA	= 0x01 ; MEMORY MAPPED
PINA	= 0x00 ; MEMORY MAPPED


; ***** BIT DEFINITIONS **************************************************

; ***** ADC *****************
; ADMUX - The ADC multiplexer Selection Register
MUX0	= 0 ; Analog Channel Selection Bits
MUX1	= 1 ; Analog Channel Selection Bits
MUX2	= 2 ; Analog Channel Selection Bits
REFS0	= 6 ; Analog Reference voltage Selection Bits
REFS1	= 7 ; Analog Reference voltage Selection Bits

; ADCL - ADC Data Register Low
ADCL0	= 0 ; ADC Data Register Low Bit 0
ADCL1	= 1 ; ADC Data Register Low Bit 1
ADCL2	= 2 ; ADC Data Register Low Bit 2
ADCL3	= 3 ; ADC Data Register Low Bit 3
ADCL4	= 4 ; ADC Data Register Low Bit 4
ADCL5	= 5 ; ADC Data Register Low Bit 5
ADCL6	= 6 ; ADC Data Register Low Bit 6
ADCL7	= 7 ; ADC Data Register Low Bit 7

; ADCH - ADC Data Register High
ADCH0	= 0 ; ADC Data Register High Bit 0
ADCH1	= 1 ; ADC Data Register High Bit 1
ADCH2	= 2 ; ADC Data Register High Bit 2
ADCH3	= 3 ; ADC Data Register High Bit 3
ADCH4	= 4 ; ADC Data Register High Bit 4
ADCH5	= 5 ; ADC Data Register High Bit 5
ADCH6	= 6 ; ADC Data Register High Bit 6
ADCH7	= 7 ; ADC Data Register High Bit 7

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
ADLAR	= 7 ; Left Adjustment for ADC Result Readout

; DIDR0 - Digital Input Disable Register
ADC0D	= 0 ; ADC0 Digital Input Disable
ADC1D	= 1 ; ADC1 Digital Input Disable
ADC2D	= 2 ; ADC2 Digital Input Disable
ADC3D	= 3 ; ADC3 Digital Input Disable
ADC4D	= 4 ; ADC4 Digital Input Disable
ADC5D	= 5 ; ADC5 Digital Input Disable
ADC6D	= 6 ; ADC6 Digital Input Disable
ADC7D	= 7 ; ADC7 Digital Input Disable


; ***** AC *****************
; ACSRA - Analog Comparator Control And Status Register A
ACIS0	= 0 ; Analog Comparator Interrupt Mode Select bits
ACIS1	= 1 ; Analog Comparator Interrupt Mode Select bits
ACIC	= 2 ; Analog Comparator Input Capture  Enable
ACIE	= 3 ; Analog Comparator Interrupt Enable
ACI	= 4 ; Analog Comparator Interrupt Flag
ACO	= 5 ; Analog Compare Output
ACBG	= 6 ; Analog Comparator Bandgap enable
ACD	= 7 ; Analog Comparator Disable

; ACSRB - Analog Comparator Control And Status Register B
ACPMUX	= 0 ; Analog Comparator positive input selection bit
ACOE	= 1 ; Analog Comparator Output Enable

; DIDR0 - 
AIN0D	= 0 ; AIN0 Digital Input Disable
AIN1D	= 1 ; AIN1 Digital Input Disable


; ***** CPU *****************
; CCP - Configuration Change Protection
CCP0	= 0 ; Configuration Change Protection Bit 0
CCP1	= 1 ; Configuration Change Protection Bit 1
CCP2	= 2 ; Configuration Change Protection Bit 2
CCP3	= 3 ; Configuration Change Protection Bit 3
CCP4	= 4 ; Configuration Change Protection Bit 4
CCP5	= 5 ; Configuration Change Protection Bit 5
CCP6	= 6 ; Configuration Change Protection Bit 6
CCP7	= 7 ; Configuration Change Protection Bit 7

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

; SREG - Status Register
SREG_C	= 0 ; Carry Flag
SREG_Z	= 1 ; Zero Flag
SREG_N	= 2 ; Negative Flag
SREG_V	= 3 ; Two's Complement Overflow Flag
SREG_S	= 4 ; Sign Bit
SREG_H	= 5 ; Half Carry Flag
SREG_T	= 6 ; Bit Copy Storage
SREG_I	= 7 ; Global Interrupt Enable

; CLKMSR - Clock Main Settings Register
CLKMS0	= 0 ; Clock Main Select Bits
CLKMS1	= 1 ; Clock Main Select Bits

; CLKPSR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPS2	= 2 ; Clock Prescaler Select Bits
CLKPS3	= 3 ; Clock Prescaler Select Bits

; OSCCAL - Oscillator Calibration Value
OSCCAL0	= 0 ; Oscillator Calibration Value Bit 0
OSCCAL1	= 1 ; Oscillator Calibration Value Bit 1
OSCCAL2	= 2 ; Oscillator Calibration Value Bit 2
OSCCAL3	= 3 ; Oscillator Calibration Value Bit 3
OSCCAL4	= 4 ; Oscillator Calibration Value Bit 4
OSCCAL5	= 5 ; Oscillator Calibration Value Bit 5
OSCCAL6	= 6 ; Oscillator Calibration Value Bit 6
OSCCAL7	= 7 ; Oscillator Calibration Value Bit 7

; SMCR - Sleep Mode Control Register
SE	= 0 ; Sleep Enable
SM0	= 1 ; Sleep Mode Select Bits
SM1	= 2 ; Sleep Mode Select Bits
SM2	= 3 ; Sleep Mode Select Bits

; PRR - Power Reduction Register
PRTIM0	= 0 ; Power Reduction Timer/Counter0
PRADC	= 1 ; Power Reduction ADC
PRUSART	= 2 ; Power Reduction USART

; VLMCSR - Vcc Level Monitoring Control and Status Register
VLM0	= 0 ; Trigger Level of Voltage Level Monitor bits
VLM1	= 1 ; Trigger Level of Voltage Level Monitor bits
VLM2	= 2 ; Trigger Level of Voltage Level Monitor bits
VLMIE	= 6 ; VLM Interrupt Enable
VLMF	= 7 ; VLM Flag

; RSTFLR - Reset Flag Register
PORF	= 0 ; Power-on Reset Flag
EXTRF	= 1 ; External Reset Flag
WDRF	= 3 ; Watchdog Reset Flag

; NVMCSR - Non-Volatile Memory Control and Status Register
NVMBSY	= 7 ; Non-Volatile Memory Busy

; NVMCMD - Non-Volatile Memory Command
NVMCMD0	= 0 ; Non-Volatile Memory Command Bit 0
NVMCMD1	= 1 ; Non-Volatile Memory Command Bit 1
NVMCMD2	= 2 ; Non-Volatile Memory Command Bit 2
NVMCMD3	= 3 ; Non-Volatile Memory Command Bit 3
NVMCMD4	= 4 ; Non-Volatile Memory Command Bit 4
NVMCMD5	= 5 ; Non-Volatile Memory Command Bit 5


; ***** PORTA *****************
; PORTCR - Port Control Register
BBMA	= 0 ; Break-Before-Make Mode Enable for PORTA

; PUEA - Pull-up Enable Control Register for PORTA
PUEA0	= 0 ; Pull-up Enable Control Register for PORTA Bit 0
PUEA1	= 1 ; Pull-up Enable Control Register for PORTA Bit 1
PUEA2	= 2 ; Pull-up Enable Control Register for PORTA Bit 2
PUEA3	= 3 ; Pull-up Enable Control Register for PORTA Bit 3
PUEA4	= 4 ; Pull-up Enable Control Register for PORTA Bit 4
PUEA5	= 5 ; Pull-up Enable Control Register for PORTA Bit 5
PUEA6	= 6 ; Pull-up Enable Control Register for PORTA Bit 6
PUEA7	= 7 ; Pull-up Enable Control Register for PORTA Bit 7

; DDRA - Data Direction Register, Port A
DDRA0	= 0 ; Data Direction Register, Port A Bit 0
DDRA1	= 1 ; Data Direction Register, Port A Bit 1
DDRA2	= 2 ; Data Direction Register, Port A Bit 2
DDRA3	= 3 ; Data Direction Register, Port A Bit 3
DDRA4	= 4 ; Data Direction Register, Port A Bit 4
DDRA5	= 5 ; Data Direction Register, Port A Bit 5
DDRA6	= 6 ; Data Direction Register, Port A Bit 6
DDRA7	= 7 ; Data Direction Register, Port A Bit 7

; PINA - Input Pins, Port A
PINA0	= 0 ; Input Pins, Port A Bit 0
PINA1	= 1 ; Input Pins, Port A Bit 1
PINA2	= 2 ; Input Pins, Port A Bit 2
PINA3	= 3 ; Input Pins, Port A Bit 3
PINA4	= 4 ; Input Pins, Port A Bit 4
PINA5	= 5 ; Input Pins, Port A Bit 5
PINA6	= 6 ; Input Pins, Port A Bit 6
PINA7	= 7 ; Input Pins, Port A Bit 7

; PORTA - Port A Data register
PORTA0	= 0 ; Port A Data register Bit 0
PORTA1	= 1 ; Port A Data register Bit 1
PORTA2	= 2 ; Port A Data register Bit 2
PORTA3	= 3 ; Port A Data register Bit 3
PORTA4	= 4 ; Port A Data register Bit 4
PORTA5	= 5 ; Port A Data register Bit 5
PORTA6	= 6 ; Port A Data register Bit 6
PORTA7	= 7 ; Port A Data register Bit 7


; ***** PORTB *****************
; PORTCR - Port Control Register
BBMB	= 1 ; Break-Before-Make Mode Enable for PORTB

; PUEB - Pull-up Enable Control Register for PORTB
PUEB0	= 0 ; Pull-up Enable Control Register for PORTB Bit 0
PUEB1	= 1 ; Pull-up Enable Control Register for PORTB Bit 1
PUEB2	= 2 ; Pull-up Enable Control Register for PORTB Bit 2
PUEB3	= 3 ; Pull-up Enable Control Register for PORTB Bit 3

; DDRB - Data Direction Register, Port B
DDRB0	= 0 ; Data Direction Register, Port B Bit 0
DDRB1	= 1 ; Data Direction Register, Port B Bit 1
DDRB2	= 2 ; Data Direction Register, Port B Bit 2
DDRB3	= 3 ; Data Direction Register, Port B Bit 3

; PINB - Input Pins, Port B
PINB0	= 0 ; Input Pins, Port B Bit 0
PINB1	= 1 ; Input Pins, Port B Bit 1
PINB2	= 2 ; Input Pins, Port B Bit 2
PINB3	= 3 ; Input Pins, Port B Bit 3

; PORTB - Port B Data register
PORTB0	= 0 ; Port B Data register Bit 0
PORTB1	= 1 ; Port B Data register Bit 1
PORTB2	= 2 ; Port B Data register Bit 2
PORTB3	= 3 ; Port B Data register Bit 3


; ***** EXINT *****************
; EICRA - External Interrupt Control Register A
ISC00	= 0 ; Interrupt Sense Control 0 Bit 0
ISC01	= 1 ; Interrupt Sense Control 0 Bit 1

; EIMSK - External Interrupt Mask register
INT0	= 0 ; External Interrupt Request 0 Enable

; EIFR - External Interrupt Flag register
INTF0	= 0 ; External Interrupt Flag 0

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0 ; Pin Change Interrupt Enable 0
PCIE1	= 1 ; Pin Change Interrupt Enable 1

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0 ; Pin Change Interrupt Flag 0
PCIF1	= 1 ; Pin Change Interrupt Flag 1

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0 ; Pin Change Enable Mask 1 Bit 0
PCINT9	= 1 ; Pin Change Enable Mask 1 Bit 1
PCINT10	= 2 ; Pin Change Enable Mask 1 Bit 2
PCINT11	= 3 ; Pin Change Enable Mask 1 Bit 3

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0 ; Pin Change Enable Mask 0 Bit 0
PCINT1	= 1 ; Pin Change Enable Mask 0 Bit 1
PCINT2	= 2 ; Pin Change Enable Mask 0 Bit 2
PCINT3	= 3 ; Pin Change Enable Mask 0 Bit 3
PCINT4	= 4 ; Pin Change Enable Mask 0 Bit 4
PCINT5	= 5 ; Pin Change Enable Mask 0 Bit 5
PCINT6	= 6 ; Pin Change Enable Mask 0 Bit 6
PCINT7	= 7 ; Pin Change Enable Mask 0 Bit 7


; ***** TC0 *****************
; TCCR0A - Timer/Counter 0 Control Register A
WGM00	= 0 ; Waveform Generation Mode
WGM01	= 1 ; Waveform Generation Mode
COM0B0	= 4 ; Compare Output Mode for Channel B bits
COM0B1	= 5 ; Compare Output Mode for Channel B bits
COM0A0	= 6 ; Compare Output Mode for Channel A bits
COM0A1	= 7 ; Compare Output Mode for Channel A bits

; TCCR0B - Timer/Counter 0 Control Register B
CS00	= 0 ; Clock Select
CS01	= 1 ; Clock Select
CS02	= 2 ; Clock Select
WGM02	= 3 ; Waveform Generation Mode
WGM03	= 4 ; Waveform Generation Mode
ICES0	= 6 ; Input Capture Edge Select
ICNC0	= 7 ; Input Capture Noise Canceler

; TCCR0C - Timer/Counter 0 Control Register C
FOC0B	= 6 ; Force Output Compare for Channel B
FOC0A	= 7 ; Force Output Compare for Channel A

; TCNT0 - Timer/Counter0 
TCNT0H0	= 0 ; Timer/Counter0  High Bit 8
TCNT0H1	= 1 ; Timer/Counter0  High Bit 9
TCNT0H2	= 2 ; Timer/Counter0  High Bit 10
TCNT0H3	= 3 ; Timer/Counter0  High Bit 11
TCNT0H4	= 4 ; Timer/Counter0  High Bit 12
TCNT0H5	= 5 ; Timer/Counter0  High Bit 13
TCNT0H6	= 6 ; Timer/Counter0  High Bit 14
TCNT0H7	= 7 ; Timer/Counter0  High Bit 15

TCNT0L0	= 0 ; Timer/Counter0  Low Bit 0
TCNT0L1	= 1 ; Timer/Counter0  Low Bit 1
TCNT0L2	= 2 ; Timer/Counter0  Low Bit 2
TCNT0L3	= 3 ; Timer/Counter0  Low Bit 3
TCNT0L4	= 4 ; Timer/Counter0  Low Bit 4
TCNT0L5	= 5 ; Timer/Counter0  Low Bit 5
TCNT0L6	= 6 ; Timer/Counter0  Low Bit 6
TCNT0L7	= 7 ; Timer/Counter0  Low Bit 7

; OCR0A - Timer/Counter 0 Output Compare Register A 
OCR0AH0	= 0 ; Timer/Counter 0 Output Compare Register A  High Bit 8
OCR0AH1	= 1 ; Timer/Counter 0 Output Compare Register A  High Bit 9
OCR0AH2	= 2 ; Timer/Counter 0 Output Compare Register A  High Bit 10
OCR0AH3	= 3 ; Timer/Counter 0 Output Compare Register A  High Bit 11
OCR0AH4	= 4 ; Timer/Counter 0 Output Compare Register A  High Bit 12
OCR0AH5	= 5 ; Timer/Counter 0 Output Compare Register A  High Bit 13
OCR0AH6	= 6 ; Timer/Counter 0 Output Compare Register A  High Bit 14
OCR0AH7	= 7 ; Timer/Counter 0 Output Compare Register A  High Bit 15

OCR0AL0	= 0 ; Timer/Counter 0 Output Compare Register A  Low Bit 0
OCR0AL1	= 1 ; Timer/Counter 0 Output Compare Register A  Low Bit 1
OCR0AL2	= 2 ; Timer/Counter 0 Output Compare Register A  Low Bit 2
OCR0AL3	= 3 ; Timer/Counter 0 Output Compare Register A  Low Bit 3
OCR0AL4	= 4 ; Timer/Counter 0 Output Compare Register A  Low Bit 4
OCR0AL5	= 5 ; Timer/Counter 0 Output Compare Register A  Low Bit 5
OCR0AL6	= 6 ; Timer/Counter 0 Output Compare Register A  Low Bit 6
OCR0AL7	= 7 ; Timer/Counter 0 Output Compare Register A  Low Bit 7

; OCR0B - Timer/Counter0 Output Compare Register B 
OCR0BH0	= 0 ; Timer/Counter0 Output Compare Register B  High Bit 8
OCR0BH1	= 1 ; Timer/Counter0 Output Compare Register B  High Bit 9
OCR0BH2	= 2 ; Timer/Counter0 Output Compare Register B  High Bit 10
OCR0BH3	= 3 ; Timer/Counter0 Output Compare Register B  High Bit 11
OCR0BH4	= 4 ; Timer/Counter0 Output Compare Register B  High Bit 12
OCR0BH5	= 5 ; Timer/Counter0 Output Compare Register B  High Bit 13
OCR0BH6	= 6 ; Timer/Counter0 Output Compare Register B  High Bit 14
OCR0BH7	= 7 ; Timer/Counter0 Output Compare Register B  High Bit 15

OCR0BL0	= 0 ; Timer/Counter0 Output Compare Register B  Low Bit 0
OCR0BL1	= 1 ; Timer/Counter0 Output Compare Register B  Low Bit 1
OCR0BL2	= 2 ; Timer/Counter0 Output Compare Register B  Low Bit 2
OCR0BL3	= 3 ; Timer/Counter0 Output Compare Register B  Low Bit 3
OCR0BL4	= 4 ; Timer/Counter0 Output Compare Register B  Low Bit 4
OCR0BL5	= 5 ; Timer/Counter0 Output Compare Register B  Low Bit 5
OCR0BL6	= 6 ; Timer/Counter0 Output Compare Register B  Low Bit 6
OCR0BL7	= 7 ; Timer/Counter0 Output Compare Register B  Low Bit 7

; ICR0 - Input Capture Register  Bytes
ICR0H0	= 0 ; Input Capture Register  Bytes High Bit 8
ICR0H1	= 1 ; Input Capture Register  Bytes High Bit 9
ICR0H2	= 2 ; Input Capture Register  Bytes High Bit 10
ICR0H3	= 3 ; Input Capture Register  Bytes High Bit 11
ICR0H4	= 4 ; Input Capture Register  Bytes High Bit 12
ICR0H5	= 5 ; Input Capture Register  Bytes High Bit 13
ICR0H6	= 6 ; Input Capture Register  Bytes High Bit 14
ICR0H7	= 7 ; Input Capture Register  Bytes High Bit 15

ICR0L0	= 0 ; Input Capture Register  Bytes Low Bit 0
ICR0L1	= 1 ; Input Capture Register  Bytes Low Bit 1
ICR0L2	= 2 ; Input Capture Register  Bytes Low Bit 2
ICR0L3	= 3 ; Input Capture Register  Bytes Low Bit 3
ICR0L4	= 4 ; Input Capture Register  Bytes Low Bit 4
ICR0L5	= 5 ; Input Capture Register  Bytes Low Bit 5
ICR0L6	= 6 ; Input Capture Register  Bytes Low Bit 6
ICR0L7	= 7 ; Input Capture Register  Bytes Low Bit 7

; TIMSK0 - Timer Interrupt Mask Register 0
TOIE0	= 0 ; Overflow Interrupt Enable
OCIE0A	= 1 ; Output Compare A Match Interrupt Enable
OCIE0B	= 2 ; Output Compare B Match Interrupt Enable
ICIE0	= 5 ; Input Capture Interrupt Enable

; TIFR0 - Overflow Interrupt Enable
TOV0	= 0 ; Timer Overflow Flag
OCF0A	= 1 ; Timer Output Compare Flag 0A
OCF0B	= 2 ; Timer Output Compare Flag 0B
ICF0	= 5 ; Input Capture Flag

; GTCCR - General Timer/Counter Control Register
PSR	= 0 ; Prescaler Reset
REMAP	= 1 ; Remap Bit for 14 pin part only
TSM	= 7 ; Timer Synchronization Mode


; ***** WDT *****************
; WDTCSR - Watchdog Timer Control and Status Register
WDE	= 3 ; Watch Dog Enable
WDP0	= 0 ; Watchdog Timer Prescaler Bits
WDP1	= 1 ; Watchdog Timer Prescaler Bits
WDP2	= 2 ; Watchdog Timer Prescaler Bits
WDP3	= 5 ; Watchdog Timer Prescaler Bits
WDIE	= 6 ; Watchdog Timer Interrupt Enable
WDIF	= 7 ; Watchdog Timer Interrupt Flag


; ***** FUSE *****************
; BYTE0 - 
RSTDISBL	= 0 ; Disable external reset
WDTON	= 1 ; Watch dog timer always on
CKOUT	= 2 ; Output external clock
SELFPROGEN	= 3 ; Self programming enable


; ***** LOCKBIT *****************
; LOCKBIT - 
LB1	= 0 ; Memory Lock
LB2	= 1 ; Memory Lock


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
RXS	= 6 ; USART RX Start Flag
RXSIE	= 7 ; USART RX Start Interrupt Enable

; UBRR - USART Baud Rate Register  Bytes
UBRRH0	= 0 ; USART Baud Rate Register  Bytes High Bit 8
UBRRH1	= 1 ; USART Baud Rate Register  Bytes High Bit 9
UBRRH2	= 2 ; USART Baud Rate Register  Bytes High Bit 10
UBRRH3	= 3 ; USART Baud Rate Register  Bytes High Bit 11

UBRRL0	= 0 ; USART Baud Rate Register  Bytes Low Bit 0
UBRRL1	= 1 ; USART Baud Rate Register  Bytes Low Bit 1
UBRRL2	= 2 ; USART Baud Rate Register  Bytes Low Bit 2
UBRRL3	= 3 ; USART Baud Rate Register  Bytes Low Bit 3
UBRRL4	= 4 ; USART Baud Rate Register  Bytes Low Bit 4
UBRRL5	= 5 ; USART Baud Rate Register  Bytes Low Bit 5
UBRRL6	= 6 ; USART Baud Rate Register  Bytes Low Bit 6
UBRRL7	= 7 ; USART Baud Rate Register  Bytes Low Bit 7

; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30

; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHSTART	= 0x0000 ; Note: Word address
FLASHEND	= 0x01FF ; Note: Word address
FLASHPAGESIZE	= 0x0080 ;

SRAM_START	= 0x0040
SRAM_SIZE	= 32
RAMEND	= 0x005F

XRAMEND	= 0x0000



; ***** BOOTLOADER DECLARATIONS ******************************************
 ; No bootloader declariations; ***** INTERRUPT VECTORS ************************************************
INT0addr	 = 0x0001 ; External Interrupt Request 0
PCINT0addr	 = 0x0002 ; Pin Change Interrupt Request 0
PCINT1addr	 = 0x0003 ; Pin Change Interrupt Request 1
TIM0_CAPTaddr	 = 0x0004 ; Timer/Counter0 Input Capture
TIM0_OVFaddr	 = 0x0005 ; Timer/Counter0 Overflow
TIM0_COMPAaddr	 = 0x0006 ; Timer/Counter Compare Match A
TIM0_COMPBaddr	 = 0x0007 ; Timer/Counter Compare Match B
ANA_COMPaddr	 = 0x0008 ; Analog Comparator
WDTaddr	 = 0x0009 ; Watchdog Time-out
VLMaddr	 = 0x000A ; Vcc Voltage Level Monitor
ADCaddr	 = 0x000B ; ADC Conversion complete
USART_RXSaddr	 = 0x000C ; USART RX Start
USART_RXCaddr	 = 0x000D ; USART RX Complete
USART_DREaddr	 = 0x000E ; USART Data register empty
USART_TXCaddr	 = 0x000F ; USART Tx Complete

INT_VECTORS_SIZE	= 16 ; size in words


; ***** END OF FILE ******************************************************



