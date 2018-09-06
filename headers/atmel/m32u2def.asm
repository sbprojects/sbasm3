;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m32U2def.asm"
;* Title             : Register/Bit Definitions for the ATmega32U2
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega32U2
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
; device ATmega32U2

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x95
SIGNATURE_002	= 0x8a

                .CR     avr
                .FA     enhanced128k
				.MS		$4000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
CLKSTA	= 0xd2	; MEMORY MAPPED
CLKSEL1	= 0xd1	; MEMORY MAPPED
CLKSEL0	= 0xd0	; MEMORY MAPPED
PLLCSR	= 0x29
PS2CON	= 0xfa	; MEMORY MAPPED
UPOE	= 0xfb	; MEMORY MAPPED
UEINT	= 0xf4	; MEMORY MAPPED
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
USBCON	= 0xd8	; MEMORY MAPPED
REGCR	= 0x63	; MEMORY MAPPED
UDR1	= 0xce	; MEMORY MAPPED
UBRR1L	= 0xcc	; MEMORY MAPPED
UBRR1H	= 0xcd	; MEMORY MAPPED
UCSR1D	= 0xcb	; MEMORY MAPPED
UCSR1C	= 0xca	; MEMORY MAPPED
UCSR1B	= 0xc9	; MEMORY MAPPED
UCSR1A	= 0xc8	; MEMORY MAPPED
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
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK1	= 0x6c	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
EICRB	= 0x6a	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
OSCCAL	= 0x66	; MEMORY MAPPED
PRR1	= 0x65	; MEMORY MAPPED
PRR0	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
WDTCKD	= 0x62	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
EIND	= 0x3c
SPMCSR	= 0x37
DWDR	= 0x31
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
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
TIFR1	= 0x16
TIFR0	= 0x15
PORTD	= 0x0b
DDRD	= 0x0a
PIND	= 0x09
PORTC	= 0x08
DDRC	= 0x07
PINC	= 0x06
PORTB	= 0x05
DDRB	= 0x04
PINB	= 0x03


; ***** BIT DEFINITIONS **************************************************

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


; ***** PLL **************************
; PLLCSR - PLL Status and Control register
PLOCK	= 0	; PLL Lock Status Bit
PLLE	= 1	; PLL Enable Bit
PLLP0	= 2	; PLL prescaler Bit 0
PLLP1	= 3	; PLL prescaler Bit 1
PLLP2	= 4	; PLL prescaler Bit 2


; ***** USB_DEVICE *******************
; USBCON - USB General Control Register
FRZCLK	= 5	; 
USBE	= 7	; 

; UDCON - 
DETACH	= 0	; 
RMWKUP	= 1	; 
RSTCPU	= 2	; 

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
EPNUM0	= 0	; 
EPNUM1	= 1	; 
EPNUM2	= 2	; 

; UERST - 
EPRST0	= 0	; 
EPRST1	= 1	; 
EPRST2	= 2	; 
EPRST3	= 3	; 
EPRST4	= 4	; 

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

; REGCR - Regulator Control Register
REGDIS	= 0	; 


; ***** PS2 **************************
; UPOE - 
DMI	= 0	; 
DPI	= 1	; 
DATAI	= 2	; 
SCKI	= 3	; 
UPDRV0	= 4	; 
UPDRV1	= 5	; 
UPWE0	= 6	; 
UPWE1	= 7	; 

; PS2CON - PS2 Pad Enable register
PS2EN	= 0	; Enable


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

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
USBRF	= 5	; USB reset flag

; OSCCAL - Oscillator Calibration Value
CAL0	= 0	; Oscillator Calibration Value Bit0
CAL1	= 1	; Oscillator Calibration Value Bit1
CAL2	= 2	; Oscillator Calibration Value Bit2
CAL3	= 3	; Oscillator Calibration Value Bit3
CAL4	= 4	; Oscillator Calibration Value Bit4
CAL5	= 5	; Oscillator Calibration Value Bit5
CAL6	= 6	; Oscillator Calibration Value Bit6
CAL7	= 7	; Oscillator Calibration Value Bit7

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
PRUSB	= 7	; Power Reduction USB

; PRR0 - Power Reduction Register0
PRSPI	= 2	; Power Reduction Serial Peripheral Interface
PRTIM1	= 3	; Power Reduction Timer/Counter1
PRTIM0	= 5	; Power Reduction Timer/Counter0

; CLKSTA - 
EXTON	= 0	; 
RCON	= 1	; 

; CLKSEL1 - 
EXCKSEL0	= 0	; 
EXCKSEL1	= 1	; 
EXCKSEL2	= 2	; 
EXCKSEL3	= 3	; 
RCCKSEL0	= 4	; 
RCCKSEL1	= 5	; 
RCCKSEL2	= 6	; 
RCCKSEL3	= 7	; 

; CLKSEL0 - 
CLKS	= 0	; 
EXTE	= 2	; 
RCE	= 3	; 
EXSUT0	= 4	; 
EXSUT1	= 5	; 
RCSUT0	= 6	; 
RCSUT1	= 7	; 

; DWDR - debugWire communication register
DWDR0	= 0	; 
DWDR1	= 1	; 
DWDR2	= 2	; 
DWDR3	= 3	; 
DWDR4	= 4	; 
DWDR5	= 5	; 
DWDR6	= 6	; 
DWDR7	= 7	; 


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
PCIE1	= 1	; Pin Change Interrupt Enable 1

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 0
PCIF1	= 1	; Pin Change Interrupt Flag 1

; PCMSK0 - Pin Change Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3
PCINT4	= 4	; Pin Change Enable Mask 4
PCINT5	= 5	; Pin Change Enable Mask 5
PCINT6	= 6	; Pin Change Enable Mask 6
PCINT7	= 7	; Pin Change Enable Mask 7

; PCMSK1 - Pin Change Mask Register 1
PCINT8	= 0	; 
PCINT9	= 1	; 
PCINT10	= 2	; 
PCINT11	= 3	; 
PCINT12	= 4	; 


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
UCSZ11	= 2	; Character Size
USBS1	= 3	; Stop Bit Select
UPM10	= 4	; Parity Mode Bit 0
UPM11	= 5	; Parity Mode Bit 1
UMSEL10	= 6	; USART Mode Select
UMSEL11	= 7	; USART Mode Select

; UCSR1D - USART Control and Status Register D
RTSEN	= 0	; RTS Enable
CTSEN	= 1	; CTS Enable


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

; WDTCKD - Watchdog Timer Clock Divider
WCLKD0	= 0	; Watchdog Timer Clock Divider 0
WCLKD1	= 1	; Watchdog Timer Clock Divider 1
WDEWIE	= 2	; Watchdog Early Warning Interrupt Enable
WDEWIF	= 3	; Watchdog Early Warning Interrupt Flag


; ***** ANALOG_COMPARATOR ************
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


; ***** PORTC ************************
; PORTC - Port C Data Register
PORTC0	= 0	; Port C Data Register bit 0
PC0	= 0	; For compatibility
PORTC1	= 1	; Port C Data Register bit 1
PC1	= 1	; For compatibility
PORTC2	= 2	; Port C Data Register bit 2
PC2	= 2	; For compatibility
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
DDC4	= 4	; Port C Data Direction Register bit 4
DDC5	= 5	; Port C Data Direction Register bit 5
DDC6	= 6	; Port C Data Direction Register bit 6
DDC7	= 7	; Port C Data Direction Register bit 7

; PINC - Port C Input Pins
PINC0	= 0	; Port C Input Pins bit 0
PINC1	= 1	; Port C Input Pins bit 1
PINC2	= 2	; Port C Input Pins bit 2
PINC4	= 4	; Port C Input Pins bit 4
PINC5	= 5	; Port C Input Pins bit 5
PINC6	= 6	; Port C Input Pins bit 6
PINC7	= 7	; Port C Input Pins bit 7



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
RSTDISBL	= 6	; External Reset Disable
DWEN	= 7	; dwbugWIRE Enable

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
SRAM_SIZE	= 1024
RAMEND	= 0x04ff
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
INT4addr	= 0x000a	; External Interrupt Request 4
INT5addr	= 0x000c	; External Interrupt Request 5
INT6addr	= 0x000e	; External Interrupt Request 6
INT7addr	= 0x0010	; External Interrupt Request 7
PCI0addr	= 0x0012	; Pin Change Interrupt Request 0
PCI1addr	= 0x0014	; Pin Change Interrupt Request 1
USB_GENaddr	= 0x0016	; USB General Interrupt Request
USB_COMaddr	= 0x0018	; USB Endpoint/Pipe Interrupt Communication Request
WDTaddr	= 0x001a	; Watchdog Time-out Interrupt
ICP1addr	= 0x001c	; Timer/Counter2 Capture Event
OC1Aaddr	= 0x001e	; Timer/Counter2 Compare Match B
OC1Baddr	= 0x0020	; Timer/Counter2 Compare Match B
OC1Caddr	= 0x0022	; Timer/Counter2 Compare Match C
OVF1addr	= 0x0024	; Timer/Counter1 Overflow
OC0Aaddr	= 0x0026	; Timer/Counter0 Compare Match A
OC0Baddr	= 0x0028	; Timer/Counter0 Compare Match B
OVF0addr	= 0x002a	; Timer/Counter0 Overflow
SPIaddr	= 0x002c	; SPI Serial Transfer Complete
URXC1addr	= 0x002e	; USART1, Rx Complete
UDRE1addr	= 0x0030	; USART1 Data register Empty
UTXC1addr	= 0x0032	; USART1, Tx Complete
ACIaddr	= 0x0034	; Analog Comparator
ERDYaddr	= 0x0036	; EEPROM Ready
SPMRaddr	= 0x0038	; Store Program Memory Read

INT_VECTORS_SIZE	= 58	; size in words


; ***** END OF FILE ******************************************************
