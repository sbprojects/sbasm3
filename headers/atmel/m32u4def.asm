;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m32U4def.asm"
;* Title             : Register/Bit Definitions for the ATmega32U4
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega32U4
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
; device ATmega32U4

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x95
SIGNATURE_002	= 0x87

                .CR     avr
                .FA     enhanced128k
				.MS		$4000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
PLLCSR	= 0x29
PLLFRQ	= 0x32
UEINT	= 0xf4	; MEMORY MAPPED
UEBCHX	= 0xf3	; MEMORY MAPPED
UEBCLX	= 0xf2	; MEMORY MAPPED
UEDATX	= 0xf1	; MEMORY MAPPED
UEIENX	= 0xf0	; MEMORY MAPPED
UESTA1X	= 0xef	; MEMORY MAPPED
UESTA0X	= 0xee	; MEMORY MAPPED
UECFG1X	= 0xed	; MEMORY MAPPED
UECFG0X	= 0xec	; MEMORY MAPPED
UECONX	= 0xeb	; MEMORY MAPPED
UERST	= 0xea	; MEMORY MAPPED
UENUM	= 0xe9	; MEMORY MAPPED
UEINTX	= 0xe8	; MEMORY MAPPED
UDMFN	= 0xe6	; MEMORY MAPPED
UDFNUMH	= 0xe5	; MEMORY MAPPED
UDFNUML	= 0xe4	; MEMORY MAPPED
UDADDR	= 0xe3	; MEMORY MAPPED
UDIEN	= 0xe2	; MEMORY MAPPED
UDINT	= 0xe1	; MEMORY MAPPED
UDCON	= 0xe0	; MEMORY MAPPED
USBINT	= 0xda	; MEMORY MAPPED
USBSTA	= 0xd9	; MEMORY MAPPED
USBCON	= 0xd8	; MEMORY MAPPED
UHWCON	= 0xd7	; MEMORY MAPPED
UDR1	= 0xce	; MEMORY MAPPED
UBRR1L	= 0xcc	; MEMORY MAPPED
UBRR1H	= 0xcd	; MEMORY MAPPED
UCSR1C	= 0xca	; MEMORY MAPPED
UCSR1B	= 0xc9	; MEMORY MAPPED
UCSR1A	= 0xc8	; MEMORY MAPPED
TWAMR	= 0xbd	;
TWCR	= 0xbc	;
TWDR	= 0xbb	;
TWAR	= 0xba 	;
TWSR	= 0xb9	;
TWBR	= 0xb8	;
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
TIMSK4	= 0x72	; MEMORY MAPPED
TIMSK3	= 0x71	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
EICRB	= 0x6a	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
OSCCAL	= 0x66	; MEMORY MAPPED
RCCTRL	= 0x67	; MEMORY MAPPED
PRR1	= 0x65	; MEMORY MAPPED
PRR0	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
EIND	= 0x3c
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
TIFR4	= 0x19
TIFR3	= 0x18
TIFR2	= 0x17
TIFR1	= 0x16
TIFR0	= 0x15
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
DT4	= 0xd4	; MEMORY MAPPED
OCR4D	= 0xd2	; MEMORY MAPPED
OCR4C	= 0xd1	; MEMORY MAPPED
OCR4B	= 0xd0	; MEMORY MAPPED
OCR4A	= 0xcf	; MEMORY MAPPED
TCCR4E	= 0xc4	; MEMORY MAPPED
TCCR4D	= 0xc3	; MEMORY MAPPED
TCCR4C	= 0xc2	; MEMORY MAPPED
TCCR4B	= 0xc1	; MEMORY MAPPED
TCCR4A	= 0xc0	; MEMORY MAPPED
TC4H	= 0xbf	; MEMORY MAPPED
TCNT4	= 0xbe	; MEMORY MAPPED
CLKSEL1	= 0xc6	; MEMORY MAPPED
CLKSEL0	= 0xc5	; MEMORY MAPPED
CLKSTA	= 0xc7	; MEMORY MAPPED


; ***** BIT DEFINITIONS **************************************************

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

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3
PCINT4	= 4	; Pin Change Enable Mask 4
PCINT5	= 5	; Pin Change Enable Mask 5
PCINT6	= 6	; Pin Change Enable Mask 6
PCINT7	= 7	; Pin Change Enable Mask 7


; ***** TIMER_COUNTER_4 **************
; DT4 - Timer/Counter 4 Dead Time Value
DT4L0	= 0	; Timer/Counter 4 Dead Time Value Bit 0
DT4L1	= 1	; Timer/Counter 4 Dead Time Value Bit 1
DT4L2	= 2	; Timer/Counter 4 Dead Time Value Bit 2
DT4L3	= 3	; Timer/Counter 4 Dead Time Value Bit 3
DT4L4	= 4	; Timer/Counter 4 Dead Time Value Bit 4
DT4L5	= 5	; Timer/Counter 4 Dead Time Value Bit 5
DT4L6	= 6	; Timer/Counter 4 Dead Time Value Bit 6
DT4L7	= 7	; Timer/Counter 4 Dead Time Value Bit 7

; TIFR4 - Timer/Counter4 Interrupt Flag register
TOV4	= 2	; Timer/Counter4 Overflow Flag
OCF4B	= 5	; Output Compare Flag 4B
OCF4A	= 6	; Output Compare Flag 4A
OCF4D	= 7	; Output Compare Flag 4D

; TIMSK4 - Timer/Counter4 Interrupt Mask Register
TOIE4	= 2	; Timer/Counter4 Overflow Interrupt Enable
OCIE4B	= 5	; Timer/Counter4 Output Compare B Match Interrupt Enable
OCIE4A	= 6	; Timer/Counter4 Output Compare A Match Interrupt Enable
OCIE4D	= 7	; Timer/Counter4 Output Compare D Match Interrupt Enable

; OCR4D - Timer/Counter4 Output Compare Register D
OCR4D0	= 0	; Timer/Counter4 Output Compare Register Low Byte bit 0
OCR4D1	= 1	; Timer/Counter4 Output Compare Register Low Byte bit 1
OCR4D2	= 2	; Timer/Counter4 Output Compare Register Low Byte bit 2
OCR4D3	= 3	; Timer/Counter4 Output Compare Register Low Byte bit 3
OCR4D4	= 4	; Timer/Counter4 Output Compare Register Low Byte bit 4
OCR4D5	= 5	; Timer/Counter4 Output Compare Register Low Byte bit 5
OCR4D6	= 6	; Timer/Counter4 Output Compare Register Low Byte bit 6
OCR4D7	= 7	; Timer/Counter4 Output Compare Register Low Byte bit 7

; OCR4C - Timer/Counter4 Output Compare Register C
OCR4C0	= 0	; Timer/Counter4 Output Compare Register bit 0
OCR4C1	= 1	; Timer/Counter4 Output Compare Register bit 1
OCR4C2	= 2	; Timer/Counter4 Output Compare Register bit 2
OCR4C3	= 3	; Timer/Counter4 Output Compare Register bit 3
OCR4C4	= 4	; Timer/Counter4 Output Compare Register bit 4
OCR4C5	= 5	; Timer/Counter4 Output Compare Register bit 5
OCR4C6	= 6	; Timer/Counter4 Output Compare Register 6
OCR4C7	= 7	; Timer/Counter4 Output Compare Register bit 7

; OCR4B - Timer/Counter4 Output Compare Register B
OCR4B0	= 0	; Timer/Counter4 Output Compare Register bit 0
OCR4B1	= 1	; Timer/Counter4 Output Compare Register bit 1
OCR4B2	= 2	; Timer/Counter4 Output Compare Register bit 2
OCR4B3	= 3	; Timer/Counter4 Output Compare Register bit 3
OCR4B4	= 4	; Timer/Counter4 Output Compare Register bit 4
OCR4B5	= 5	; Timer/Counter4 Output Compare Register bit 5
OCR4B6	= 6	; Timer/Counter4 Output Compare Register bit 6
OCR4B7	= 7	; Timer/Counter4 Output Compare Register bit 7

; OCR4A - Timer/Counter4 Output Compare Register A
OCR4A0	= 0	; Timer/Counter4 Output Compare Register Bit 0
OCR4A1	= 1	; Timer/Counter4 Output Compare Register Bit 1
OCR4A2	= 2	; Timer/Counter4 Output Compare Register Low Byte Bit 2
OCR4A3	= 3	; Timer/Counter4 Output Compare Register Low Byte Bit 3
OCR4A4	= 4	; Timer/Counter4 Output Compare Register Bit 4
OCR4A5	= 5	; Timer/Counter4 Output Compare Register Bit 5
OCR4A6	= 6	; Timer/Counter4 Output Compare Register Bit 6
OCR4A7	= 7	; Timer/Counter4 Output Compare Register Bit 7

; TC4H - Timer/Counter4
TC48	= 0	; Timer/Counter4 bit 8
TC49	= 1	; Timer/Counter4 bit 9
TC410	= 2	; Timer/Counter4 bit 10

; TCNT4 - Timer/Counter4 Low Bytes
TC40	= 0	; Timer/Counter4 bit 0
TC41	= 1	; Timer/Counter4 bit 1
TC42	= 2	; Timer/Counter4 bit 2
TC43	= 3	; Timer/Counter4  bit 3
TC44	= 4	; Timer/Counter4 bit 4
TC45	= 5	; Timer/Counter4 bit 5
TC46	= 6	; Timer/Counter4 bit 6
TC47	= 7	; Timer/Counter4 bit 7

; TCCR4E - Timer/Counter 4 Control Register E
OC4OE0	= 0	; Output Compare Override Enable bit
OC4OE1	= 1	; Output Compare Override Enable bit
OC4OE2	= 2	; Output Compare Override Enable bit
OC4OE3	= 3	; Output Compare Override Enable bit
OC4OE4	= 4	; Output Compare Override Enable bit
OC4OE5	= 5	; Output Compare Override Enable bit
ENHC4	= 6	; Enhanced Compare/PWM Mode
TLOCK4	= 7	; Register Update Lock

; TCCR4D - Timer/Counter 4 Control Register D
WGM40	= 0	; Waveform Generation Mode bits
WGM41	= 1	; Waveform Generation Mode bits
FPF4	= 2	; Fault Protection Interrupt Flag
FPAC4	= 3	; Fault Protection Analog Comparator Enable
FPES4	= 4	; Fault Protection Edge Select
FPNC4	= 5	; Fault Protection Noise Canceler
FPEN4	= 6	; Fault Protection Mode Enable
FPIE4	= 7	; Fault Protection Interrupt Enable

; TCCR4C - Timer/Counter 4 Control Register C
PWM4D	= 0	; Pulse Width Modulator D Enable
FOC4D	= 1	; Force Output Compare Match 4D
COM4D0	= 2	; Comparator D Output Mode
COM4D1	= 3	; Comparator D Output Mode
COM4B0S	= 4	; Comparator B Output Mode
COM4B1S	= 5	; Comparator B Output Mode
COM4A0S	= 6	; Comparator A Output Mode
COM4A1S	= 7	; Comparator A Output Mode

; TCCR4B - Timer/Counter4 Control Register B
CS40	= 0	; Clock Select Bit 0
CS41	= 1	; Clock Select Bit 1
CS42	= 2	; Clock Select Bit 2
CS43	= 3	; Clock Select Bit 3
DTPS40	= 4	; Dead Time Prescaler Bit 0
DTPS41	= 5	; Dead Time Prescaler Bit 1
PSR4	= 6	; Prescaler Reset Timer/Counter 4
PWM4X	= 7	; PWM Inversion Mode

; TCCR4A - Timer/Counter4 Control Register A
PWM4B	= 0	; 
PWM4A	= 1	; 
FOC4B	= 2	; Force Output Compare Match 4B
FOC4A	= 3	; Force Output Compare Match 4A
COM4B0	= 4	; Compare Output Mode 4B, bit 0
COM4B1	= 5	; Compare Output Mode 4B, bit 1
COM4A0	= 6	; Compare Output Mode 4A, bit 0
COM4A1	= 7	; Compare Output Mode 1A, bit 1


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
PORTC6	= 6	; Port C Data Register bit 6
PC6	= 6	; For compatibility
PORTC7	= 7	; Port C Data Register bit 7
PC7	= 7	; For compatibility

; DDRC - Port C Data Direction Register
DDC6	= 6	; Port C Data Direction Register bit 6
DDC7	= 7	; Port C Data Direction Register bit 7

; PINC - Port C Input Pins
PINC6	= 6	; Port C Input Pins bit 6
PINC7	= 7	; Port C Input Pins bit 7


; ***** PORTE ************************
; PORTE - Data Register, Port E
PORTE2	= 2	; 
PE2	= 2	; For compatibility
PORTE6	= 6	; 
PE6	= 6	; For compatibility

; DDRE - Data Direction Register, Port E
DDE2	= 2	; 
DDE6	= 6	; 

; PINE - Input Pins, Port E
PINE2	= 2	; 
PINE6	= 6	; 


; ***** PORTF ************************
; PORTF - Data Register, Port F
PORTF0	= 0	; 
PF0	= 0	; For compatibility
PORTF1	= 1	; 
PF1	= 1	; For compatibility
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
DDF4	= 4	; 
DDF5	= 5	; 
DDF6	= 6	; 
DDF7	= 7	; 

; PINF - Input Pins, Port F
PINF0	= 0	; 
PINF1	= 1	; 
PINF4	= 4	; 
PINF5	= 5	; 
PINF6	= 6	; 
PINF7	= 7	; 


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
ADTS3	= 4	; ADC Auto Trigger Source 3
MUX5	= 5	; Analog Channel and Gain Selection Bits
ADHSM	= 7	; ADC High Speed Mode

; DIDR0 - Digital Input Disable Register 1
ADC0D	= 0	; ADC0 Digital input Disable
ADC1D	= 1	; ADC1 Digital input Disable
ADC2D	= 2	; ADC2 Digital input Disable
ADC3D	= 3	; ADC3 Digital input Disable
ADC4D	= 4	; ADC4 Digital input Disable
ADC5D	= 5	; ADC5 Digital input Disable
ADC6D	= 6	; ADC6 Digital input Disable
ADC7D	= 7	; ADC7 Digital input Disable

; DIDR2 - Digital Input Disable Register 1
ADC8D	= 0	; ADC8 Digital input Disable
ADC9D	= 1	; ADC9 Digital input Disable
ADC10D	= 2	; ADC10 Digital input Disable
ADC11D	= 3	; ADC11 Digital input Disable
ADC12D	= 4	; ADC12 Digital input Disable
ADC13D	= 5	; ADC13 Digital input Disable


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

; DIDR1 - 
AIN0D	= 0	; AIN0 Digital Input Disable
AIN1D	= 1	; AIN1 Digital Input Disable


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

; RCCTRL - Oscillator Control Register
RCFREQ	= 0	; 

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
PRTIM3	= 3	; Power Reduction Timer/Counter3
PRUSB	= 7	; Power Reduction USB

; PRR0 - Power Reduction Register0
PRADC	= 0	; Power Reduction ADC
PRUSART0	= 1	; Power Reduction USART
PRSPI	= 2	; Power Reduction Serial Peripheral Interface
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRTIM0	= 5	; Power Reduction Timer/Counter0
PRTIM2	= 6	; Power Reduction Timer/Counter2
PRTWI	= 7	; Power Reduction TWI

; CLKSTA - 
EXTON	= 0	; 
RCON	= 1	; 

; CLKSEL0 - 
CLKS	= 0	; 
EXTE	= 2	; 
RCE	= 3	; 
EXSUT0	= 4	; 
EXSUT1	= 5	; 
RCSUT0	= 6	; 
RCSUT1	= 7	; 

; CLKSEL1 - 
EXCKSEL0	= 0	; 
EXCKSEL1	= 1	; 
EXCKSEL2	= 2	; 
EXCKSEL3	= 3	; 
RCCKSEL0	= 4	; 
RCCKSEL1	= 5	; 
RCCKSEL2	= 6	; 
RCCKSEL3	= 7	; 


; ***** PLL **************************
; PLLCSR - PLL Status and Control register
PLOCK	= 0	; PLL Lock Status Bit
PLLE	= 1	; PLL Enable Bit
PINDIV	= 4	; PLL prescaler Bit 2

; PLLFRQ - PLL Frequency Control Register
PDIV0	= 0	; 
PDIV1	= 1	; 
PDIV2	= 2	; 
PDIV3	= 3	; 
PLLTM0	= 4	; 
PLLTM1	= 5	; 
PLLUSB	= 6	; 
PINMUX	= 7	; 


; ***** USB_DEVICE *******************
; USBCON - USB General Control Register
VBUSTE	= 0	; 
OTGPADE	= 4	; 
FRZCLK	= 5	; 
USBE	= 7	; 

; UDCON - 
DETACH	= 0	; 
RMWKUP	= 1	; 
LSM	= 2	; USB low speed mode
RSTCPU	= 3	; 

; UDINT - 
SUSPI	= 0	; 
SOFI	= 2	; 
EORSTI	= 3	; 
WAKEUPI	= 4	; 
EORSMI	= 5	; 
UPRSMI	= 6	; 

; UDIEN - 
SUSPE	= 0	; 
SOFE	= 2	; 
EORSTE	= 3	; 
WAKEUPE	= 4	; 
EORSME	= 5	; 
UPRSME	= 6	; 

; UDADDR - 
UADD0	= 0	; 
UADD1	= 1	; 
UADD2	= 2	; 
UADD3	= 3	; 
UADD4	= 4	; 
UADD5	= 5	; 
UADD6	= 6	; 
ADDEN	= 7	; 

; UDFNUML - 
FNUM0	= 0	; 
FNUM1	= 1	; 
FNUM2	= 2	; 
FNUM3	= 3	; 
FNUM4	= 4	; 
FNUM5	= 5	; 
FNUM6	= 6	; 
FNUM7	= 7	; 

; UDFNUMH - 
FNUM8	= 0	; 
FNUM9	= 1	; 
FNUM10	= 2	; 

; UDMFN - 
FNCERR	= 4	; 

; UEINTX - 
TXINI	= 0	; 
STALLEDI	= 1	; 
RXOUTI	= 2	; 
RXSTPI	= 3	; 
NAKOUTI	= 4	; 
RWAL	= 5	; 
NAKINI	= 6	; 
FIFOCON	= 7	; 

; UENUM - 
UENUM_0	= 0	; 
UENUM_1	= 1	; 
UENUM_2	= 2	; 

; UERST - 
EPRST0	= 0	; 
EPRST1	= 1	; 
EPRST2	= 2	; 
EPRST3	= 3	; 
EPRST4	= 4	; 
EPRST5	= 5	; 
EPRST6	= 6	; 

; UECONX - 
EPEN	= 0	; 
RSTDT	= 3	; 
STALLRQC	= 4	; 
STALLRQ	= 5	; 

; UECFG0X - 
EPDIR	= 0	; 
EPTYPE0	= 6	; 
EPTYPE1	= 7	; 

; UECFG1X - 
ALLOC	= 1	; 
EPBK0	= 2	; 
EPBK1	= 3	; 
EPSIZE0	= 4	; 
EPSIZE1	= 5	; 
EPSIZE2	= 6	; 

; UESTA0X - 
NBUSYBK0	= 0	; 
NBUSYBK1	= 1	; 
DTSEQ0	= 2	; 
DTSEQ1	= 3	; 
UNDERFI	= 5	; 
OVERFI	= 6	; 
CFGOK	= 7	; 

; UESTA1X - 
CURRBK0	= 0	; 
CURRBK1	= 1	; 
CTRLDIR	= 2	; 

; UEIENX - 
TXINE	= 0	; 
STALLEDE	= 1	; 
RXOUTE	= 2	; 
RXSTPE	= 3	; 
NAKOUTE	= 4	; 
NAKINE	= 6	; 
FLERRE	= 7	; 

; UEDATX - 
DAT0	= 0	; 
DAT1	= 1	; 
DAT2	= 2	; 
DAT3	= 3	; 
DAT4	= 4	; 
DAT5	= 5	; 
DAT6	= 6	; 
DAT7	= 7	; 

; UEBCLX - 
BYCT0	= 0	; 
BYCT1	= 1	; 
BYCT2	= 2	; 
BYCT3	= 3	; 
BYCT4	= 4	; 
BYCT5	= 5	; 
BYCT6	= 6	; 
BYCT7	= 7	; 

; UEINT - 
EPINT0	= 0	; 
EPINT1	= 1	; 
EPINT2	= 2	; 
EPINT3	= 3	; 
EPINT4	= 4	; 
EPINT5	= 5	; 
EPINT6	= 6	; 

; USBINT - 
VBUSTI	= 0	; 

; USBSTA - 
VBUS	= 0	; 
SPEED	= 3	; 

; USBCON - USB General Control Register
;VBUSTE	= 0	; 
;OTGPADE	= 4	; 
;FRZCLK	= 5	; 
;USBE	= 7	; 

; UHWCON - 
UVREGE	= 0	; 

; TWCR - Two-Wire Interface Control
TWIE	= 0	;
TWEN	= 2	;
TWWC	= 3	;
TWSTO	= 4	;
TWSTA	= 5	;
TWEA	= 6	;
TWINT	= 7	;

; TWSR - Two-Wire Status
TWPS0	= 0	;
TWPS1	= 1	;

; TWAR
TWGCE	= 0	;


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
BODLEVEL0	= 0	; Brown-out Detector trigger level
BODLEVEL1	= 1	; Brown-out Detector trigger level
BODLEVEL2	= 2	; Brown-out Detector trigger level
HWBE	= 3	; Hardware Boot Enable



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
SRAM_SIZE	= 2560
RAMEND	= 0x0aff
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
INT1addr	= 0x0004	; External Interrupt Request 1
INT2addr	= 0x0006	; External Interrupt Request 2
INT3addr	= 0x0008	; External Interrupt Request 3
Reserved1addr	= 0x000a	; Reserved1
Reserved2addr	= 0x000c	; Reserved2
INT6addr	= 0x000e	; External Interrupt Request 6
Reserved3addr	= 0x0010	; Reserved3
PCI0addr	= 0x0012	; Pin Change Interrupt Request 0
USB_GENaddr	= 0x0014	; USB General Interrupt Request
USB_COMaddr	= 0x0016	; USB Endpoint/Pipe Interrupt Communication Request
WDTaddr	= 0x0018	; Watchdog Time-out Interrupt
Reserved4addr	= 0x001a	; Reserved4
Reserved5addr	= 0x001c	; Reserved5
Reserved6addr	= 0x001e	; Reserved6
ICP1addr	= 0x0020	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0022	; Timer/Counter1 Compare Match A
OC1Baddr	= 0x0024	; Timer/Counter1 Compare Match B
OC1Caddr	= 0x0026	; Timer/Counter1 Compare Match C
OVF1addr	= 0x0028	; Timer/Counter1 Overflow
OC0Aaddr	= 0x002a	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x002c	; Timer/Counter0 Compare Match B
OVF0addr	= 0x002e	; Timer/Counter0 Overflow
SPIaddr	= 0x0030	; SPI Serial Transfer Complete
URXC1addr	= 0x0032	; USART1, Rx Complete
UDRE1addr	= 0x0034	; USART1 Data register Empty
UTXC1addr	= 0x0036	; USART1, Tx Complete
ACIaddr	= 0x0038	; Analog Comparator
ADCCaddr	= 0x003a	; ADC Conversion Complete
ERDYaddr	= 0x003c	; EEPROM Ready
ICP3addr	= 0x003e	; Timer/Counter3 Capture Event
OC3Aaddr	= 0x0040	; Timer/Counter3 Compare Match A
OC3Baddr	= 0x0042	; Timer/Counter3 Compare Match B
OC3Caddr	= 0x0044	; Timer/Counter3 Compare Match C
OVF3addr	= 0x0046	; Timer/Counter3 Overflow
TWIaddr	= 0x0048	; 2-wire Serial Interface
SPMRaddr	= 0x004a	; Store Program Memory Read
OC4Aaddr	= 0x004c	; Timer/Counter4 Compare Match A
OC4Baddr	= 0x004e	; Timer/Counter4 Compare Match B
OC4Daddr	= 0x0050	; Timer/Counter4 Compare Match D
OVF4addr	= 0x0052	; Timer/Counter4 Overflow
TIMER4_FPFaddr	= 0x0054	; Timer/Counter4 Fault Protection Interrupt

INT_VECTORS_SIZE	= 86	; size in words


; ***** END OF FILE ******************************************************
