;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;*
;* Number            : AVR000
;* File Name         : tn441def.inc
;* Title             : Register/Bit Definitions for the ATtiny441
;* Created           : 2016-09-29 14:07
;* Version           : 1.00
;* Support e-mail    : avr@atmel.com
;* Target MCU        : ATtiny441
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
; .device	ATtiny441

SIGNATURE_000	= 0x1E
SIGNATURE_001	= 0x92
SIGNATURE_002	= 0x15

                .CR     avr
                .FA     enhanced128k
				.MS		$0800

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED" are extended I/O ports
; and cannot be used with IN/OUT instructions
TCCR2A	= 0xCA ; MEMORY MAPPED
TCCR2B	= 0xC9 ; MEMORY MAPPED
TCCR2C	= 0xC8 ; MEMORY MAPPED
TCNT2H	= 0xC7 ; MEMORY MAPPED
TCNT2L	= 0xC6 ; MEMORY MAPPED
OCR2AH	= 0xC5 ; MEMORY MAPPED
OCR2AL	= 0xC4 ; MEMORY MAPPED
OCR2BH	= 0xC3 ; MEMORY MAPPED
OCR2BL	= 0xC2 ; MEMORY MAPPED
ICR2H	= 0xC1 ; MEMORY MAPPED
ICR2L	= 0xC0 ; MEMORY MAPPED
SPCR	= 0xB2 ; MEMORY MAPPED
SPSR	= 0xB1 ; MEMORY MAPPED
SPDR	= 0xB0 ; MEMORY MAPPED
TWSCRA	= 0xA5 ; MEMORY MAPPED
TWSCRB	= 0xA4 ; MEMORY MAPPED
TWSSRA	= 0xA3 ; MEMORY MAPPED
TWSA	= 0xA2 ; MEMORY MAPPED
TWSAM	= 0xA1 ; MEMORY MAPPED
TWSD	= 0xA0 ; MEMORY MAPPED
UCSR1A	= 0x96 ; MEMORY MAPPED
UCSR1B	= 0x95 ; MEMORY MAPPED
UCSR1C	= 0x94 ; MEMORY MAPPED
UCSR1D	= 0x93 ; MEMORY MAPPED
UBRR1H	= 0x92 ; MEMORY MAPPED
UBRR1L	= 0x91 ; MEMORY MAPPED
UDR1	= 0x90 ; MEMORY MAPPED
UCSR0A	= 0x86 ; MEMORY MAPPED
UCSR0B	= 0x85 ; MEMORY MAPPED
UCSR0C	= 0x84 ; MEMORY MAPPED
UCSR0D	= 0x83 ; MEMORY MAPPED
UBRR0H	= 0x82 ; MEMORY MAPPED
UBRR0L	= 0x81 ; MEMORY MAPPED
UDR0	= 0x80 ; MEMORY MAPPED
OSCCAL1	= 0x77 ; MEMORY MAPPED
OSCTCAL0B	= 0x76 ; MEMORY MAPPED
OSCTCAL0A	= 0x75 ; MEMORY MAPPED
OSCCAL0	= 0x74 ; MEMORY MAPPED
CLKPR	= 0x73 ; MEMORY MAPPED
CLKCR	= 0x72 ; MEMORY MAPPED
CCP	= 0x71 ; MEMORY MAPPED
PRR	= 0x70 ; MEMORY MAPPED
PHDE	= 0x6A ; MEMORY MAPPED
TOCPMSA1	= 0x68 ; MEMORY MAPPED
TOCPMSA0	= 0x67 ; MEMORY MAPPED
TOCPMCOE	= 0x66 ; MEMORY MAPPED
REMAP	= 0x65 ; MEMORY MAPPED
PORTCR	= 0x64 ; MEMORY MAPPED
PUEA	= 0x63 ; MEMORY MAPPED
PUEB	= 0x62 ; MEMORY MAPPED
DIDR1	= 0x61 ; MEMORY MAPPED
DIDR0	= 0x60 ; MEMORY MAPPED
SREG	= 0x3F ; 
SPH	= 0x3E ; 
SPL	= 0x3D ; 
OCR0B	= 0x3C ; 
GIMSK	= 0x3B ; 
GIFR	= 0x3A ; 
TIMSK0	= 0x39 ; 
TIFR0	= 0x38 ; 
SPMCSR	= 0x37 ; 
OCR0A	= 0x36 ; 
MCUCR	= 0x35 ; 
MCUSR	= 0x34 ; 
TCCR0B	= 0x33 ; 
TCNT0	= 0x32 ; 
TCCR0A	= 0x30 ; 
TCCR1A	= 0x2F ; 
TCCR1B	= 0x2E ; 
TCNT1H	= 0x2D ; 
TCNT1L	= 0x2C ; 
OCR1AH	= 0x2B ; 
OCR1AL	= 0x2A ; 
OCR1BH	= 0x29 ; 
OCR1BL	= 0x28 ; 
ICR1H	= 0x25 ; 
ICR1L	= 0x24 ; 
GTCCR	= 0x23 ; 
TCCR1C	= 0x22 ; 
WDTCSR	= 0x21 ; 
PCMSK1	= 0x20 ; 
EEARH	= 0x1F ; 
EEARL	= 0x1E ; 
EEDR	= 0x1D ; 
EECR	= 0x1C ; 
PORTA	= 0x1B ; 
DDRA	= 0x1A ; 
PINA	= 0x19 ; 
PORTB	= 0x18 ; 
DDRB	= 0x17 ; 
PINB	= 0x16 ; 
GPIOR2	= 0x15 ; 
GPIOR1	= 0x14 ; 
GPIOR0	= 0x13 ; 
PCMSK0	= 0x12 ; 
TIMSK2	= 0x11 ; 
TIFR2	= 0x10 ; 
TIMSK1	= 0x0F ; 
TIFR1	= 0x0E ; 
ACSR1B	= 0x0D ; 
ACSR1A	= 0x0C ; 
ACSR0B	= 0x0B ; 
ACSR0A	= 0x0A ; 
ADMUXA	= 0x09 ; 
ADMUXB	= 0x08 ; 
ADCH	= 0x07 ; 
ADCL	= 0x06 ; 
ADCSRA	= 0x05 ; 
ADCSRB	= 0x04 ; 


; ***** BIT DEFINITIONS **************************************************

; ***** PORTB *****************
; PORTCR - Port Control Register
BBMB	= 1 ; Break-Before-Make Mode Enable

; PUEB - Pull-up Enable Control Register
PUEB0	= 0 ; Pull-up Enable Control Register Bit 0
PUEB1	= 1 ; Pull-up Enable Control Register Bit 1
PUEB2	= 2 ; Pull-up Enable Control Register Bit 2
PUEB3	= 3 ; Pull-up Enable Control Register Bit 3

; DDRB - Data Direction Register, Port B
DDRB0	= 0 ; Data Direction Register, Port B Bit 0
DDRB1	= 1 ; Data Direction Register, Port B Bit 1
DDRB2	= 2 ; Data Direction Register, Port B Bit 2
DDRB3	= 3 ; Data Direction Register, Port B Bit 3

; PINB - Port B Data register
PINB0	= 0 ; Port B Data register Bit 0
PINB1	= 1 ; Port B Data register Bit 1
PINB2	= 2 ; Port B Data register Bit 2
PINB3	= 3 ; Port B Data register Bit 3

; PORTB - Input Pins, Port B
PORTB0	= 0 ; Input Pins, Port B Bit 0
PORTB1	= 1 ; Input Pins, Port B Bit 1
PORTB2	= 2 ; Input Pins, Port B Bit 2
PORTB3	= 3 ; Input Pins, Port B Bit 3


; ***** PORTA *****************
; PORTCR - Port Control Register
BBMA	= 0 ; Break-Before-Make Mode Enable

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

; PHDE - Port High Drive Enable Register
PHDEA0	= 0 ; PortA High Drive Enable
PHDEA1	= 1 ; PortA High Drive Enable


; ***** USART1 *****************
; UDR1 - USART I/O Data Register
UDR10	= 0 ; USART I/O Data Register Bit 0
UDR11	= 1 ; USART I/O Data Register Bit 1
UDR12	= 2 ; USART I/O Data Register Bit 2
UDR13	= 3 ; USART I/O Data Register Bit 3
UDR14	= 4 ; USART I/O Data Register Bit 4
UDR15	= 5 ; USART I/O Data Register Bit 5
UDR16	= 6 ; USART I/O Data Register Bit 6
UDR17	= 7 ; USART I/O Data Register Bit 7

; UCSR1A - USART Control and Status Register A
MPCM1	= 0 ; Multi-processor Communication Mode
U2X1	= 1 ; Double the USART transmission speed
UPE1	= 2 ; Parity Error
DOR1	= 3 ; Data overRun
FE1	= 4 ; Framing Error
UDRE1	= 5 ; USART Data Register Empty
TXC1	= 6 ; USART Transmitt Complete
RXC1	= 7 ; USART Receive Complete

; UCSR1B - USART Control and Status Register B
TXB81	= 0 ; Transmit Data Bit 8
RXB81	= 1 ; Receive Data Bit 8
UCSZ12	= 2 ; Character Size
TXEN1	= 3 ; Transmitter Enable
RXEN1	= 4 ; Receiver Enable
UDRIE1	= 5 ; USART Data register Empty Interrupt Enable
TXCIE1	= 6 ; TX Complete Interrupt Enable
RXCIE1	= 7 ; RX Complete Interrupt Enable

; UCSR1C - USART Control and Status Register C
UCPOL1	= 0 ; Clock Polarity
UCSZ10	= 1 ; Character Size
UCSZ11	= 2 ; Character Size
USBS1	= 3 ; Stop Bit Select
UPM10	= 4 ; Parity Mode Bits
UPM11	= 5 ; Parity Mode Bits
UMSEL10	= 6 ; USART Mode Select
UMSEL11	= 7 ; USART Mode Select

; UCSR1D - USART Control and Status Register D
SFDE1	= 5 ; USART RX Start Frame Detection Enable
RXS1	= 6 ; USART RX Start Flag
RXSIE1	= 7 ; USART RX Start Interrupt Enable

; UBRR1 - USART Baud Rate Register  Bytes
UBRR1H0	= 0 ; USART Baud Rate Register  Bytes High Bit 8
UBRR1H1	= 1 ; USART Baud Rate Register  Bytes High Bit 9
UBRR1H2	= 2 ; USART Baud Rate Register  Bytes High Bit 10
UBRR1H3	= 3 ; USART Baud Rate Register  Bytes High Bit 11

UBRR1L0	= 0 ; USART Baud Rate Register  Bytes Low Bit 0
UBRR1L1	= 1 ; USART Baud Rate Register  Bytes Low Bit 1
UBRR1L2	= 2 ; USART Baud Rate Register  Bytes Low Bit 2
UBRR1L3	= 3 ; USART Baud Rate Register  Bytes Low Bit 3
UBRR1L4	= 4 ; USART Baud Rate Register  Bytes Low Bit 4
UBRR1L5	= 5 ; USART Baud Rate Register  Bytes Low Bit 5
UBRR1L6	= 6 ; USART Baud Rate Register  Bytes Low Bit 6
UBRR1L7	= 7 ; USART Baud Rate Register  Bytes Low Bit 7


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
SFDE0	= 5 ; USART RX Start Frame Detection Enable
RXS0	= 6 ; USART RX Start Flag
RXSIE0	= 7 ; USART RX Start Interrupt Enable

; UBRR0 - USART Baud Rate Register  Bytes
UBRR0H0	= 0 ; USART Baud Rate Register  Bytes High Bit 8
UBRR0H1	= 1 ; USART Baud Rate Register  Bytes High Bit 9
UBRR0H2	= 2 ; USART Baud Rate Register  Bytes High Bit 10
UBRR0H3	= 3 ; USART Baud Rate Register  Bytes High Bit 11

UBRR0L0	= 0 ; USART Baud Rate Register  Bytes Low Bit 0
UBRR0L1	= 1 ; USART Baud Rate Register  Bytes Low Bit 1
UBRR0L2	= 2 ; USART Baud Rate Register  Bytes Low Bit 2
UBRR0L3	= 3 ; USART Baud Rate Register  Bytes Low Bit 3
UBRR0L4	= 4 ; USART Baud Rate Register  Bytes Low Bit 4
UBRR0L5	= 5 ; USART Baud Rate Register  Bytes Low Bit 5
UBRR0L6	= 6 ; USART Baud Rate Register  Bytes Low Bit 6
UBRR0L7	= 7 ; USART Baud Rate Register  Bytes Low Bit 7

; REMAP - Remap Port Pins
U0MAP	= 0 ; USART0 Pin Mapping


; ***** WDT *****************
; WDTCSR - Watchdog Timer Control and Status Register
WDE	= 3 ; Watch Dog Enable
WDP0	= 0 ; Watchdog Timer Prescaler Bits
WDP1	= 1 ; Watchdog Timer Prescaler Bits
WDP2	= 2 ; Watchdog Timer Prescaler Bits
WDP3	= 5 ; Watchdog Timer Prescaler Bits
WDIE	= 6 ; Watchdog Timer Interrupt Enable
WDIF	= 7 ; Watchdog Timer Interrupt Flag


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


; ***** ADC *****************
; ADMUXA - The ADC multiplexer Selection Register A
MUX0	= 0 ; Analog Channel and Gain Selection Bits
MUX1	= 1 ; Analog Channel and Gain Selection Bits
MUX2	= 2 ; Analog Channel and Gain Selection Bits
MUX3	= 3 ; Analog Channel and Gain Selection Bits
MUX4	= 4 ; Analog Channel and Gain Selection Bits
MUX5	= 5 ; Analog Channel and Gain Selection Bits

; ADMUXB - The ADC multiplexer Selection Register B
GSEL0	= 0 ; Gain Selection Bits
GSEL1	= 1 ; Gain Selection Bits
REFS0	= 5 ; Reference Selection Bits
REFS1	= 6 ; Reference Selection Bits
REFS2	= 7 ; Reference Selection Bits

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

; ADCSRB - ADC Control and Status Register B
ADTS0	= 0 ; ADC Auto Trigger Sources
ADTS1	= 1 ; ADC Auto Trigger Sources
ADTS2	= 2 ; ADC Auto Trigger Sources
ADLAR	= 3 ; 

; DIDR1 - Digital Input Disable Register 1
ADC11D	= 0 ; ADC11 Digital input Disable
ADC10D	= 1 ; ADC10 Digital input Disable
ADC8D	= 2 ; ADC8 Digital input Disable
ADC9D	= 3 ; ADC9 Digital Input Disable

; DIDR0 - Digital Input Disable Register 0
ADC0D	= 0 ; ADC0/AREF Digital input Disable
ADC1D	= 1 ; ADC1/AIN00 Digital input Disable
ADC2D	= 2 ; ADC2/AIN01 Digital input Disable
ADC3D	= 3 ; ADC3/AIN10 Digital Input Disable
ADC4D	= 4 ; ADC4/AIN11 Digital input Disable
ADC5D	= 5 ; ADC5 Digital input Disable
ADC6D	= 6 ; ADC6 Digital input Disable
ADC7D	= 7 ; ADC7 Digital input Disable


; ***** AC *****************
; ACSR0B - Analog Comparator 0 Control And Status Register B
ACPMUX0	= 0 ; Analog Comparator 0 Positive Input Multiplexer Bits 1:0
ACPMUX1	= 1 ; Analog Comparator 0 Positive Input Multiplexer Bits 1:0
ACNMUX0	= 2 ; Analog Comparator 0 Negative Input Multiplexer
ACNMUX1	= 3 ; Analog Comparator 0 Negative Input Multiplexer
ACOE0	= 4 ; Analog Comparator 0 Output Pin Enable
HLEV0	= 6 ; Analog Comparator 0 Hysteresis Level
HSEL0	= 7 ; Analog Comparator 0 Hysteresis Select

; ACSR0A - Analog Comparator 0 Control And Status Register A
ACIS00	= 0 ; Analog Comparator 0 Interrupt Mode Select bits
ACIS01	= 1 ; Analog Comparator 0 Interrupt Mode Select bits
ACIC0	= 2 ; Analog Comparator 0 Input Capture Enable
ACIE0	= 3 ; Analog Comparator 0 Interrupt Enable
ACI0	= 4 ; Analog Comparator 0 Interrupt Flag
ACO0	= 5 ; Analog Comparator 0 Output
ACPMUX2	= 6 ; Analog Comparator 0 Positive Input Multiplexer Bit 2
ACD0	= 7 ; Analog Comparator 0 Disable

; ACSR1B - Analog Comparator 1 Control And Status Register B
ACME1	= 2 ; Analog Comparator 1 Multiplexer Enable
ACOE1	= 4 ; Analog Comparator 1 Output Pin Enable
HLEV1	= 6 ; Analog Comparator 1 Hysteresis Level
HSEL1	= 7 ; Analog Comparator 1 Hysteresis Select

; ACSR1A - Analog Comparator 1 Control And Status Register A
ACIS10	= 0 ; Analog Comparator 1 Interrupt Mode Select bits
ACIS11	= 1 ; Analog Comparator 1 Interrupt Mode Select bits
ACIC1	= 2 ; Analog Comparator 1 Input Capture Enable
ACIE1	= 3 ; Analog Comparator 1 Interrupt Enable
ACI1	= 4 ; Analog Comparator 1 Interrupt Flag
ACO1	= 5 ; Analog Comparator 1 Output
ACBG1	= 6 ; Analog Comparator 1 Bandgap Select
ACD1	= 7 ; Analog Comparator 1 Disable


; ***** EEPROM *****************
; EEAR - EEPROM Address Register  Bytes
EEARH0	= 0 ; EEPROM Address Register  Bytes High Bit 8

EEARL0	= 0 ; EEPROM Address Register  Bytes Low Bit 0
EEARL1	= 1 ; EEPROM Address Register  Bytes Low Bit 1
EEARL2	= 2 ; EEPROM Address Register  Bytes Low Bit 2
EEARL3	= 3 ; EEPROM Address Register  Bytes Low Bit 3
EEARL4	= 4 ; EEPROM Address Register  Bytes Low Bit 4
EEARL5	= 5 ; EEPROM Address Register  Bytes Low Bit 5
EEARL6	= 6 ; EEPROM Address Register  Bytes Low Bit 6
EEARL7	= 7 ; EEPROM Address Register  Bytes Low Bit 7

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


; ***** TC1 *****************
; TIMSK1 - Timer/Counter1 Interrupt Mask Register
TOIE1	= 0 ; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1 ; Timer/Counter1 Output Compare A Match Interrupt Enable
OCIE1B	= 2 ; Timer/Counter1 Output Compare B Match Interrupt Enable
ICIE1	= 5 ; Timer/Counter1 Input Capture Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0 ; Timer/Counter1 Overflow Flag
OCF1A	= 1 ; Timer/Counter1 Output Compare A Match Flag
OCF1B	= 2 ; Timer/Counter1 Output Compare B Match Flag
ICF1	= 5 ; Timer/Counter1 Input Capture Flag

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0 ; Pulse Width Modulator Select Bits
WGM11	= 1 ; Pulse Width Modulator Select Bits
COM1B0	= 4 ; Compare Output Mode 1B, bits
COM1B1	= 5 ; Compare Output Mode 1B, bits
COM1A0	= 6 ; Compare Output Mode 1A, bits
COM1A1	= 7 ; Compare Output Mode 1A, bits

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0 ; Clock Select bits
CS11	= 1 ; Clock Select bits
CS12	= 2 ; Clock Select bits
WGM12	= 3 ; Waveform Generation Mode Bits
WGM13	= 4 ; Waveform Generation Mode Bits
ICES1	= 6 ; Input Capture 1 Edge Select
ICNC1	= 7 ; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6 ; Force Output Compare for Channel B
FOC1A	= 7 ; Force Output Compare for Channel A

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

; OCR1A - Timer/Counter1 Output Compare Register A  Bytes
OCR1AH0	= 0 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 8
OCR1AH1	= 1 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 9
OCR1AH2	= 2 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 10
OCR1AH3	= 3 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 11
OCR1AH4	= 4 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 12
OCR1AH5	= 5 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 13
OCR1AH6	= 6 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 14
OCR1AH7	= 7 ; Timer/Counter1 Output Compare Register A  Bytes High Bit 15

OCR1AL0	= 0 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 0
OCR1AL1	= 1 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 1
OCR1AL2	= 2 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 2
OCR1AL3	= 3 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 3
OCR1AL4	= 4 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 4
OCR1AL5	= 5 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 5
OCR1AL6	= 6 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 6
OCR1AL7	= 7 ; Timer/Counter1 Output Compare Register A  Bytes Low Bit 7

; OCR1B - Timer/Counter1 Output Compare Register B  Bytes
OCR1BH0	= 0 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 8
OCR1BH1	= 1 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 9
OCR1BH2	= 2 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 10
OCR1BH3	= 3 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 11
OCR1BH4	= 4 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 12
OCR1BH5	= 5 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 13
OCR1BH6	= 6 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 14
OCR1BH7	= 7 ; Timer/Counter1 Output Compare Register B  Bytes High Bit 15

OCR1BL0	= 0 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 0
OCR1BL1	= 1 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 1
OCR1BL2	= 2 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 2
OCR1BL3	= 3 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 3
OCR1BL4	= 4 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 4
OCR1BL5	= 5 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 5
OCR1BL6	= 6 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 6
OCR1BL7	= 7 ; Timer/Counter1 Output Compare Register B  Bytes Low Bit 7

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
PSR	= 0 ; Prescaler Reset Timer/CounterN
TSM	= 7 ; Timer/Counter Synchronization Mode


; ***** TC2 *****************
; TIMSK2 - Timer/Counter2 Interrupt Mask Register
TOIE2	= 0 ; Timer/Counter2 Overflow Interrupt Enable
OCIE2A	= 1 ; Timer/Counter2 Output Compare A Match Interrupt Enable
OCIE2B	= 2 ; Timer/Counter2 Output Compare B Match Interrupt Enable
ICIE2	= 5 ; Timer/Counter2 Input Capture Interrupt Enable

; TIFR2 - Timer/Counter Interrupt Flag register
TOV2	= 0 ; Timer/Counter2 Overflow Flag
OCF2A	= 1 ; Timer/Counter2 Output Compare A Match Flag
OCF2B	= 2 ; Timer/Counter2 Output Compare B Match Flag
ICF2	= 5 ; Timer/Counter2 Input Capture Flag

; TCCR2A - Timer/Counter2 Control Register A
WGM20	= 0 ; Pulse Width Modulator Select Bits
WGM21	= 1 ; Pulse Width Modulator Select Bits
COM2B0	= 4 ; Compare Output Mode 2B, bits
COM2B1	= 5 ; Compare Output Mode 2B, bits
COM2A0	= 6 ; Compare Output Mode 2A, bits
COM2A1	= 7 ; Compare Output Mode 2A, bits

; TCCR2B - Timer/Counter2 Control Register B
CS20	= 0 ; Clock Select bits
CS21	= 1 ; Clock Select bits
CS22	= 2 ; Clock Select bits
WGM22	= 3 ; Waveform Generation Mode Bits
WGM23	= 4 ; Waveform Generation Mode Bits
ICES2	= 6 ; Input Capture 2 Edge Select
ICNC2	= 7 ; Input Capture 2 Noise Canceler

; TCCR2C - Timer/Counter2 Control Register C
FOC2B	= 6 ; Force Output Compare for Channel B
FOC2A	= 7 ; Force Output Compare for Channel A

; TCNT2 - Timer/Counter2  Bytes
TCNT2H0	= 0 ; Timer/Counter2  Bytes High Bit 8
TCNT2H1	= 1 ; Timer/Counter2  Bytes High Bit 9
TCNT2H2	= 2 ; Timer/Counter2  Bytes High Bit 10
TCNT2H3	= 3 ; Timer/Counter2  Bytes High Bit 11
TCNT2H4	= 4 ; Timer/Counter2  Bytes High Bit 12
TCNT2H5	= 5 ; Timer/Counter2  Bytes High Bit 13
TCNT2H6	= 6 ; Timer/Counter2  Bytes High Bit 14
TCNT2H7	= 7 ; Timer/Counter2  Bytes High Bit 15

TCNT2L0	= 0 ; Timer/Counter2  Bytes Low Bit 0
TCNT2L1	= 1 ; Timer/Counter2  Bytes Low Bit 1
TCNT2L2	= 2 ; Timer/Counter2  Bytes Low Bit 2
TCNT2L3	= 3 ; Timer/Counter2  Bytes Low Bit 3
TCNT2L4	= 4 ; Timer/Counter2  Bytes Low Bit 4
TCNT2L5	= 5 ; Timer/Counter2  Bytes Low Bit 5
TCNT2L6	= 6 ; Timer/Counter2  Bytes Low Bit 6
TCNT2L7	= 7 ; Timer/Counter2  Bytes Low Bit 7

; OCR2A - Timer/Counter2 Output Compare Register A  Bytes
OCR2AH0	= 0 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 8
OCR2AH1	= 1 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 9
OCR2AH2	= 2 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 10
OCR2AH3	= 3 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 11
OCR2AH4	= 4 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 12
OCR2AH5	= 5 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 13
OCR2AH6	= 6 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 14
OCR2AH7	= 7 ; Timer/Counter2 Output Compare Register A  Bytes High Bit 15

OCR2AL0	= 0 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 0
OCR2AL1	= 1 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 1
OCR2AL2	= 2 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 2
OCR2AL3	= 3 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 3
OCR2AL4	= 4 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 4
OCR2AL5	= 5 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 5
OCR2AL6	= 6 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 6
OCR2AL7	= 7 ; Timer/Counter2 Output Compare Register A  Bytes Low Bit 7

; OCR2B - Timer/Counter2 Output Compare Register B  Bytes
OCR2BH0	= 0 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 8
OCR2BH1	= 1 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 9
OCR2BH2	= 2 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 10
OCR2BH3	= 3 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 11
OCR2BH4	= 4 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 12
OCR2BH5	= 5 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 13
OCR2BH6	= 6 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 14
OCR2BH7	= 7 ; Timer/Counter2 Output Compare Register B  Bytes High Bit 15

OCR2BL0	= 0 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 0
OCR2BL1	= 1 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 1
OCR2BL2	= 2 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 2
OCR2BL3	= 3 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 3
OCR2BL4	= 4 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 4
OCR2BL5	= 5 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 5
OCR2BL6	= 6 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 6
OCR2BL7	= 7 ; Timer/Counter2 Output Compare Register B  Bytes Low Bit 7

; ICR2 - Timer/Counter2 Input Capture Register  Bytes
ICR2H0	= 0 ; Timer/Counter2 Input Capture Register  Bytes High Bit 8
ICR2H1	= 1 ; Timer/Counter2 Input Capture Register  Bytes High Bit 9
ICR2H2	= 2 ; Timer/Counter2 Input Capture Register  Bytes High Bit 10
ICR2H3	= 3 ; Timer/Counter2 Input Capture Register  Bytes High Bit 11
ICR2H4	= 4 ; Timer/Counter2 Input Capture Register  Bytes High Bit 12
ICR2H5	= 5 ; Timer/Counter2 Input Capture Register  Bytes High Bit 13
ICR2H6	= 6 ; Timer/Counter2 Input Capture Register  Bytes High Bit 14
ICR2H7	= 7 ; Timer/Counter2 Input Capture Register  Bytes High Bit 15

ICR2L0	= 0 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 0
ICR2L1	= 1 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 1
ICR2L2	= 2 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 2
ICR2L3	= 3 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 3
ICR2L4	= 4 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 4
ICR2L5	= 5 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 5
ICR2L6	= 6 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 6
ICR2L7	= 7 ; Timer/Counter2 Input Capture Register  Bytes Low Bit 7

; GTCCR - General Timer/Counter Control Register


; ***** TC0 *****************
; TIMSK0 - Timer/Counter Interrupt Mask Register
TOIE0	= 0 ; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1 ; Timer/Counter0 Output Compare Match A Interrupt Enable
OCIE0B	= 2 ; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR0 - Timer/Counter0 Interrupt Flag Register
TOV0	= 0 ; Timer/Counter0 Overflow Flag
OCF0A	= 1 ; Timer/Counter0 Output Compare Flag A
OCF0B	= 2 ; Timer/Counter0 Output Compare Flag B

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0 ; Waveform Generation Mode bits
WGM01	= 1 ; Waveform Generation Mode bits
COM0B0	= 4 ; Compare Match Output B Mode bits
COM0B1	= 5 ; Compare Match Output B Mode bits
COM0A0	= 6 ; Compare Match Output A Mode bits
COM0A1	= 7 ; Compare Match Output A Mode bits

; TCCR0B - Timer/Counter Control Register B
CS00	= 0 ; Clock Select bits
CS01	= 1 ; Clock Select bits
CS02	= 2 ; Clock Select bits
WGM02	= 3 ; Waveform Generation Mode bit 2
FOC0B	= 6 ; Force Output Compare B
FOC0A	= 7 ; Force Output Compare A

; TCNT0 - Timer/Counter0
TCNT00	= 0 ; Timer/Counter0 Bit 0
TCNT01	= 1 ; Timer/Counter0 Bit 1
TCNT02	= 2 ; Timer/Counter0 Bit 2
TCNT03	= 3 ; Timer/Counter0 Bit 3
TCNT04	= 4 ; Timer/Counter0 Bit 4
TCNT05	= 5 ; Timer/Counter0 Bit 5
TCNT06	= 6 ; Timer/Counter0 Bit 6
TCNT07	= 7 ; Timer/Counter0 Bit 7

; OCR0A - Timer/Counter0 Output Compare Register A
OCR0A0	= 0 ; Timer/Counter0 Output Compare Register A Bit 0
OCR0A1	= 1 ; Timer/Counter0 Output Compare Register A Bit 1
OCR0A2	= 2 ; Timer/Counter0 Output Compare Register A Bit 2
OCR0A3	= 3 ; Timer/Counter0 Output Compare Register A Bit 3
OCR0A4	= 4 ; Timer/Counter0 Output Compare Register A Bit 4
OCR0A5	= 5 ; Timer/Counter0 Output Compare Register A Bit 5
OCR0A6	= 6 ; Timer/Counter0 Output Compare Register A Bit 6
OCR0A7	= 7 ; Timer/Counter0 Output Compare Register A Bit 7

; OCR0B - Timer/Counter0 Output Compare Register B
OCR0B0	= 0 ; Timer/Counter0 Output Compare Register B Bit 0
OCR0B1	= 1 ; Timer/Counter0 Output Compare Register B Bit 1
OCR0B2	= 2 ; Timer/Counter0 Output Compare Register B Bit 2
OCR0B3	= 3 ; Timer/Counter0 Output Compare Register B Bit 3
OCR0B4	= 4 ; Timer/Counter0 Output Compare Register B Bit 4
OCR0B5	= 5 ; Timer/Counter0 Output Compare Register B Bit 5
OCR0B6	= 6 ; Timer/Counter0 Output Compare Register B Bit 6
OCR0B7	= 7 ; Timer/Counter0 Output Compare Register B Bit 7

; GTCCR - General Timer/Counter Control Register


; ***** EXINT *****************
; MCUCR - MCU Control Register
ISC00	= 0 ; Interrupt Sense Control 0 Bit 0
ISC01	= 1 ; Interrupt Sense Control 0 Bit 1

; GIMSK - General Interrupt Mask Register
PCIE0	= 4 ; Pin Change Interrupt Enables
PCIE1	= 5 ; Pin Change Interrupt Enables
INT0	= 6 ; External Interrupt Request 0 Enable

; GIFR - General Interrupt Flag register
PCIF0	= 4 ; Pin Change Interrupt Flags
PCIF1	= 5 ; Pin Change Interrupt Flags
INTF0	= 6 ; External Interrupt Flag 0

; PCMSK1 - Pin Change Enable Mask 1
PCINT8	= 0 ; Pin Change Enable Mask 1 Bit 0
PCINT9	= 1 ; Pin Change Enable Mask 1 Bit 1
PCINT10	= 2 ; Pin Change Enable Mask 1 Bit 2
PCINT11	= 3 ; Pin Change Enable Mask 1 Bit 3

; PCMSK0 - Pin Change Enable Mask 0
PCINT0	= 0 ; Pin Change Enable Mask 0 Bit 0
PCINT1	= 1 ; Pin Change Enable Mask 0 Bit 1
PCINT2	= 2 ; Pin Change Enable Mask 0 Bit 2
PCINT3	= 3 ; Pin Change Enable Mask 0 Bit 3
PCINT4	= 4 ; Pin Change Enable Mask 0 Bit 4
PCINT5	= 5 ; Pin Change Enable Mask 0 Bit 5
PCINT6	= 6 ; Pin Change Enable Mask 0 Bit 6
PCINT7	= 7 ; Pin Change Enable Mask 0 Bit 7


; ***** CPU *****************
; PRR - Power Reduction Register
PRADC	= 0 ; Power Reduction ADC
PRTIM0	= 1 ; Power Reduction Timer/Counter0
PRTIM1	= 2 ; Power Reduction Timer/Counter1
PRTIM2	= 3 ; Power Reduction Timer/Counter2
PRSPI	= 4 ; Power Reduction SPI
PRUSART0	= 5 ; Power Reduction USART0
PRUSART1	= 6 ; Power Reduction USART1
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

; CLKPR - Clock Prescale Register
CLKPS0	= 0 ; Clock Prescaler Select Bits
CLKPS1	= 1 ; Clock Prescaler Select Bits
CLKPS2	= 2 ; Clock Prescaler Select Bits
CLKPS3	= 3 ; Clock Prescaler Select Bits

; CLKCR - Clock Control Register
CKSEL0	= 0 ; Clock Select Bits
CKSEL1	= 1 ; Clock Select Bits
CKSEL2	= 2 ; Clock Select Bits
CKSEL3	= 3 ; Clock Select Bits
SUT	= 4 ; Start-up Time
CKOUTC	= 5 ; Clock Output (Copy). Active low.
CSTR	= 6 ; Clock Switch Trigger
OSCRDY	= 7 ; Oscillator Ready

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

SPL0	= 0 ; Stack Pointer  Low Bit 0
SPL1	= 1 ; Stack Pointer  Low Bit 1
SPL2	= 2 ; Stack Pointer  Low Bit 2
SPL3	= 3 ; Stack Pointer  Low Bit 3
SPL4	= 4 ; Stack Pointer  Low Bit 4
SPL5	= 5 ; Stack Pointer  Low Bit 5
SPL6	= 6 ; Stack Pointer  Low Bit 6
SPL7	= 7 ; Stack Pointer  Low Bit 7

; MCUCR - MCU Control Register
SM0	= 3 ; Sleep Mode Select Bits
SM1	= 4 ; Sleep Mode Select Bits
SE	= 5 ; Sleep Enable

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

; SPMCSR - Store Program Memory Control and Status Register
SPMEN	= 0 ; Store program Memory Enable
PGERS	= 1 ; Page Erase
PGWRT	= 2 ; Page Write
RFLB	= 3 ; Read Fuse and Lock Bits
CTPB	= 4 ; Clear Temporary Page Buffer
RSIG	= 5 ; Read Device Signature Imprint Table

; OSCCAL0 - Oscillator Calibration Register 8MHz
OSCCAL00	= 0 ; Oscillator Calibration Register 8MHz Bit 0
OSCCAL01	= 1 ; Oscillator Calibration Register 8MHz Bit 1
OSCCAL02	= 2 ; Oscillator Calibration Register 8MHz Bit 2
OSCCAL03	= 3 ; Oscillator Calibration Register 8MHz Bit 3
OSCCAL04	= 4 ; Oscillator Calibration Register 8MHz Bit 4
OSCCAL05	= 5 ; Oscillator Calibration Register 8MHz Bit 5
OSCCAL06	= 6 ; Oscillator Calibration Register 8MHz Bit 6
OSCCAL07	= 7 ; Oscillator Calibration Register 8MHz Bit 7

; OSCCAL1 - Oscillator Calibration Register 32kHz
OSCCAL10	= 0 ; Oscillator Calibration Register 32kHz Bit 0
OSCCAL11	= 1 ; Oscillator Calibration Register 32kHz Bit 1

; OSCTCAL0A - Oscillator Temperature Calibration Register A
OSCTCAL0A0	= 0 ; Oscillator Temperature Calibration Register A Bit 0
OSCTCAL0A1	= 1 ; Oscillator Temperature Calibration Register A Bit 1
OSCTCAL0A2	= 2 ; Oscillator Temperature Calibration Register A Bit 2
OSCTCAL0A3	= 3 ; Oscillator Temperature Calibration Register A Bit 3
OSCTCAL0A4	= 4 ; Oscillator Temperature Calibration Register A Bit 4
OSCTCAL0A5	= 5 ; Oscillator Temperature Calibration Register A Bit 5
OSCTCAL0A6	= 6 ; Oscillator Temperature Calibration Register A Bit 6
OSCTCAL0A7	= 7 ; Oscillator Temperature Calibration Register A Bit 7

; OSCTCAL0B - Oscillator Temperature Calibration Register B
OSCTCAL0B0	= 0 ; Oscillator Temperature Calibration Register B Bit 0
OSCTCAL0B1	= 1 ; Oscillator Temperature Calibration Register B Bit 1
OSCTCAL0B2	= 2 ; Oscillator Temperature Calibration Register B Bit 2
OSCTCAL0B3	= 3 ; Oscillator Temperature Calibration Register B Bit 3
OSCTCAL0B4	= 4 ; Oscillator Temperature Calibration Register B Bit 4
OSCTCAL0B5	= 5 ; Oscillator Temperature Calibration Register B Bit 5
OSCTCAL0B6	= 6 ; Oscillator Temperature Calibration Register B Bit 6
OSCTCAL0B7	= 7 ; Oscillator Temperature Calibration Register B Bit 7


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

; REMAP - Remap Port Pins
SPIMAP	= 1 ; SPI Pin Mapping


; ***** FUSE *****************
; EXTENDED - 
SELFPRGEN	= 0 ; Self Programming enable
BODACT0	= 1 ; BOD mode of operation when the device is active or idle
BODACT1	= 2 ; BOD mode of operation when the device is active or idle
BODPD0	= 3 ; BOD mode of operation when the device is in sleep mode
BODPD1	= 4 ; BOD mode of operation when the device is in sleep mode
ULPOSCSEL0	= 5 ; Frequency selection for internal ULP oscillator. The selection only affects system clock, watchdog and reset timeout always use 32 kHz clock.
ULPOSCSEL1	= 6 ; Frequency selection for internal ULP oscillator. The selection only affects system clock, watchdog and reset timeout always use 32 kHz clock.
ULPOSCSEL2	= 7 ; Frequency selection for internal ULP oscillator. The selection only affects system clock, watchdog and reset timeout always use 32 kHz clock.

; HIGH - 
BODLEVEL0	= 0 ; Brown-out Detector trigger level
BODLEVEL1	= 1 ; Brown-out Detector trigger level
BODLEVEL2	= 2 ; Brown-out Detector trigger level
EESAVE	= 3 ; Preserve EEPROM through the Chip Erase cycle
WDTON	= 4 ; Watch-dog Timer always on
SPIEN	= 5 ; Serial program downloading (SPI) enabled
DWEN	= 6 ; Debug Wire enable
RSTDISBL	= 7 ; Reset Disabled (Enable PC2 as i/o pin)

; LOW - 
SUT_CKSEL0	= 0 ; Select Clock Source
SUT_CKSEL1	= 1 ; Select Clock Source
SUT_CKSEL2	= 2 ; Select Clock Source
SUT_CKSEL3	= 3 ; Select Clock Source
SUT_CKSEL4	= 4 ; Select Clock Source
CKOUT	= 6 ; Clock output on PORTC2
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
FLASHPAGESIZE	= 0x0010 ;

IOEND	= 0x00FF

SRAM_START	= 0x0100
SRAM_SIZE	= 256
RAMEND	= 0x01FF

E2END	= 0x00FF
EEPROMEND	= 0x00FF
EEADRBITS	= 8

XRAMEND	= 0x0000



; ***** BOOTLOADER DECLARATIONS ******************************************
 ; No bootloader declariations; ***** INTERRUPT VECTORS ************************************************
INT0addr	 = 0x0001 ; External Interrupt Request 0
PCINT0addr	 = 0x0002 ; Pin Change Interrupt Request 0
PCINT1addr	 = 0x0003 ; Pin Change Interrupt Request 1
WDTaddr	 = 0x0004 ; Watchdog Time-out Interrupt
TIMER1_CAPTaddr	 = 0x0005 ; Timer/Counter1 Capture Event
TIMER1_COMPAaddr	 = 0x0006 ; Timer/Counter1 Compare Match A
TIMER1_COMPBaddr	 = 0x0007 ; Timer/Counter1 Compare Match B
TIMER1_OVFaddr	 = 0x0008 ; Timer/Counter1 Overflow
TIMER0_COMPAaddr	 = 0x0009 ; TimerCounter0 Compare Match A
TIMER0_COMPBaddr	 = 0x000A ; TimerCounter0 Compare Match B
TIMER0_OVFaddr	 = 0x000B ; Timer/Couner0 Overflow
ANA_COMP0addr	 = 0x000C ; Analog Comparator 0
ADCaddr	 = 0x000D ; ADC Conversion Complete
EE_RDYaddr	 = 0x000E ; EEPROM Ready
ANA_COMP1addr	 = 0x000F ; Analog Comparator 1
TIMER2_CAPTaddr	 = 0x0010 ; Timer/Counter2 Capture Event
TIMER2_COMPAaddr	 = 0x0011 ; Timer/Counter2 Compare Match A
TIMER2_COMPBaddr	 = 0x0012 ; Timer/Counter2 Compare Match B
TIMER2_OVFaddr	 = 0x0013 ; Timer/Counter2 Overflow
SPIaddr	 = 0x0014 ; Serial Peripheral Interface
USART0_STARTaddr	 = 0x0015 ; USART0, Start
USART0_RXaddr	 = 0x0016 ; USART0, Rx Complete
USART0_UDREaddr	 = 0x0017 ; USART0 Data Register Empty
USART0_TXaddr	 = 0x0018 ; USART0, Tx Complete
USART1_STARTaddr	 = 0x0019 ; USART1, Start
USART1_RXaddr	 = 0x001A ; USART1, Rx Complete
USART1_UDREaddr	 = 0x001B ; USART1 Data Register Empty
USART1_TXaddr	 = 0x001C ; USART1, Tx Complete
TWI_SLAVEaddr	 = 0x001D ; Two-wire Serial Interface

INT_VECTORS_SIZE	= 30 ; size in words


; ***** END OF FILE ******************************************************



