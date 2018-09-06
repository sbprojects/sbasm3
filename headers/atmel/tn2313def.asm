;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "tn2313def.asm"
;* Title             : Register/Bit Definitions for the ATtiny2313
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATtiny2313
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
; .device ATtiny2313

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x91
SIGNATURE_002	= 0x0a

                .CR     avr
                .FA     enhanced128k
				.MS		$0400

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
SREG	= 0x3f
SPL	= 0x3d
OCR0B	= 0x3c
GIMSK	= 0x3b
EIFR	= 0x3a
TIMSK	= 0x39
TIFR	= 0x38
SPMCSR	= 0x37
OCR0A	= 0x36
MCUCR	= 0x35
MCUSR	= 0x34
TCCR0B	= 0x33
TCNT0	= 0x32
OSCCAL	= 0x31
TCCR0A	= 0x30
TCCR1A	= 0x2f
TCCR1B	= 0x2e
TCNT1L	= 0x2c
TCNT1H	= 0x2d
OCR1AL	= 0x2a
OCR1AH	= 0x2b
OCR1BL	= 0x28
OCR1BH	= 0x29
CLKPR	= 0x26
ICR1L	= 0x24
ICR1H	= 0x25
GTCCR	= 0x23
TCCR1C	= 0x22
WDTCR	= 0x21
PCMSK	= 0x20
EEAR	= 0x1e
EEDR	= 0x1d
EECR	= 0x1c
PORTA	= 0x1b
DDRA	= 0x1a
PINA	= 0x19
PORTB	= 0x18
DDRB	= 0x17
PINB	= 0x16
GPIOR2	= 0x15
GPIOR1	= 0x14
GPIOR0	= 0x13
PORTD	= 0x12
DDRD	= 0x11
PIND	= 0x10
USIDR	= 0x0f
USISR	= 0x0e
USICR	= 0x0d
UDR	= 0x0c
UCSRA	= 0x0b
UCSRB	= 0x0a
UBRRL	= 0x09
ACSR	= 0x08
UCSRC	= 0x03
UBRRH	= 0x02
DIDR	= 0x01


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


; ***** TIMER_COUNTER_0 **************
; TIMSK - Timer/Counter Interrupt Mask Register
OCIE0A	= 0	; Timer/Counter0 Output Compare Match A Interrupt Enable
TOIE0	= 1	; Timer/Counter0 Overflow Interrupt Enable
OCIE0B	= 2	; Timer/Counter0 Output Compare Match B Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
OCF0A	= 0	; Timer/Counter0 Output Compare Flag 0A
TOV0	= 1	; Timer/Counter0 Overflow Flag
OCF0B	= 2	; Timer/Counter0 Output Compare Flag 0B

; OCR0B - Timer/Counter0 Output Compare Register
OCR0_0	= 0	; 
OCR0_1	= 1	; 
OCR0_2	= 2	; 
OCR0_3	= 3	; 
OCR0_4	= 4	; 
OCR0_5	= 5	; 
OCR0_6	= 6	; 
OCR0_7	= 7	; 

; OCR0A - Timer/Counter0 Output Compare Register
OCR0A_0	= 0	; 
OCR0A_1	= 1	; 
OCR0A_2	= 2	; 
OCR0A_3	= 3	; 
OCR0A_4	= 4	; 
OCR0A_5	= 5	; 
OCR0A_6	= 6	; 
OCR0A_7	= 7	; 

; TCCR0A - Timer/Counter  Control Register A
WGM00	= 0	; Waveform Generation Mode
WGM01	= 1	; Waveform Generation Mode
COM0B0	= 4	; Compare Match Output B Mode
COM0B1	= 5	; Compare Match Output B Mode
COM0A0	= 6	; Compare Match Output A Mode
COM0A1	= 7	; Compare Match Output A Mode

; TCNT0 - Timer/Counter0
TCNT0_0	= 0	; 
TCNT0_1	= 1	; 
TCNT0_2	= 2	; 
TCNT0_3	= 3	; 
TCNT0_4	= 4	; 
TCNT0_5	= 5	; 
TCNT0_6	= 6	; 
TCNT0_7	= 7	; 

; TCCR0B - Timer/Counter Control Register B
TCCR0	= TCCR0B	; For compatibility
CS00	= 0	; Clock Select
CS01	= 1	; Clock Select
CS02	= 2	; Clock Select
WGM02	= 3	; 
FOC0B	= 6	; Force Output Compare B
FOC0A	= 7	; Force Output Compare B


; ***** TIMER_COUNTER_1 **************
; TIMSK - Timer/Counter Interrupt Mask Register
ICIE1	= 3	; Timer/Counter1 Input Capture Interrupt Enable
TICIE	= ICIE1	; For compatibility
OCIE1B	= 5	; Timer/Counter1 Output CompareB Match Interrupt Enable
OCIE1A	= 6	; Timer/Counter1 Output CompareA Match Interrupt Enable
TOIE1	= 7	; Timer/Counter1 Overflow Interrupt Enable

; TIFR - Timer/Counter Interrupt Flag register
ICF1	= 3	; Input Capture Flag 1
OCF1B	= 5	; Output Compare Flag 1B
OCF1A	= 6	; Output Compare Flag 1A
TOV1	= 7	; Timer/Counter1 Overflow Flag

; TCCR1A - Timer/Counter1 Control Register A
WGM10	= 0	; Pulse Width Modulator Select Bit 0
PWM10	= WGM10	; For compatibility
WGM11	= 1	; Pulse Width Modulator Select Bit 1
PWM11	= WGM11	; For compatibility
COM1B0	= 4	; Comparet Ouput Mode 1B, bit 0
COM1B1	= 5	; Compare Output Mode 1B, bit 1
COM1A0	= 6	; Comparet Ouput Mode 1A, bit 0
COM1A1	= 7	; Compare Output Mode 1A, bit 1

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select bit 0
CS11	= 1	; Clock Select 1 bit 1
CS12	= 2	; Clock Select1 bit 2
WGM12	= 3	; Waveform Generation Mode Bit 2
CTC1	= WGM12	; For compatibility
WGM13	= 4	; Waveform Generation Mode Bit 3
ICES1	= 6	; Input Capture 1 Edge Select
ICNC1	= 7	; Input Capture 1 Noise Canceler

; TCCR1C - Timer/Counter1 Control Register C
FOC1B	= 6	; Force Output Compare for Channel B
FOC1A	= 7	; Force Output Compare for Channel A


; ***** WATCHDOG *********************
; WDTCR - Watchdog Timer Control Register
WDTCSR	= WDTCR	; For compatibility
WDP0	= 0	; Watch Dog Timer Prescaler bit 0
WDP1	= 1	; Watch Dog Timer Prescaler bit 1
WDP2	= 2	; Watch Dog Timer Prescaler bit 2
WDE	= 3	; Watch Dog Enable
WDCE	= 4	; Watchdog Change Enable
WDTOE	= WDCE	; For compatibility
WDP3	= 5	; Watchdog Timer Prescaler Bit 3
WDIE	= 6	; Watchdog Timeout Interrupt Enable
WDIF	= 7	; Watchdog Timeout Interrupt Flag


; ***** EXTERNAL_INTERRUPT ***********
; GIMSK - General Interrupt Mask Register
PCIE	= 5	; 
INT0	= 6	; External Interrupt Request 0 Enable
INT1	= 7	; External Interrupt Request 1 Enable

; EIFR - Extended Interrupt Flag Register
GIFR	= EIFR	; For compatibility
PCIF	= 5	; 
INTF0	= 6	; External Interrupt Flag 0
INTF1	= 7	; External Interrupt Flag 1


; ***** USART ************************
; UDR - USART I/O Data Register
UDR0	= 0	; USART I/O Data Register bit 0
UDR1	= 1	; USART I/O Data Register bit 1
UDR2	= 2	; USART I/O Data Register bit 2
UDR3	= 3	; USART I/O Data Register bit 3
UDR4	= 4	; USART I/O Data Register bit 4
UDR5	= 5	; USART I/O Data Register bit 5
UDR6	= 6	; USART I/O Data Register bit 6
UDR7	= 7	; USART I/O Data Register bit 7

; UCSRA - USART Control and Status Register A
USR	= UCSRA	; For compatibility
MPCM	= 0	; Multi-processor Communication Mode
U2X	= 1	; Double the USART Transmission Speed
UPE	= 2	; USART Parity Error
PE	= UPE	; For compatibility
DOR	= 3	; Data overRun
FE	= 4	; Framing Error
UDRE	= 5	; USART Data Register Empty
TXC	= 6	; USART Transmitt Complete
RXC	= 7	; USART Receive Complete

; UCSRB - USART Control and Status Register B
UCR	= UCSRB	; For compatibility
TXB8	= 0	; Transmit Data Bit 8
RXB8	= 1	; Receive Data Bit 8
UCSZ2	= 2	; Character Size
CHR9	= UCSZ2	; For compatibility
TXEN	= 3	; Transmitter Enable
RXEN	= 4	; Receiver Enable
UDRIE	= 5	; USART Data register Empty Interrupt Enable
TXCIE	= 6	; TX Complete Interrupt Enable
RXCIE	= 7	; RX Complete Interrupt Enable

; UCSRC - USART Control and Status Register C
UCPOL	= 0	; Clock Polarity
UCSZ0	= 1	; Character Size Bit 0
UCSZ1	= 2	; Character Size Bit 1
USBS	= 3	; Stop Bit Select
UPM0	= 4	; Parity Mode Bit 0
UPM1	= 5	; Parity Mode Bit 1
UMSEL	= 6	; USART Mode Select

UBRR	= UBRRL	; For compatibility

; ***** ANALOG_COMPARATOR ************
; ACSR - Analog Comparator Control And Status Register
ACIS0	= 0	; Analog Comparator Interrupt Mode Select bit 0
ACIS1	= 1	; Analog Comparator Interrupt Mode Select bit 1
ACIC	= 2	; 
ACIE	= 3	; Analog Comparator Interrupt Enable
ACI	= 4	; Analog Comparator Interrupt Flag
ACO	= 5	; Analog Compare Output
ACBG	= 6	; Analog Comparator Bandgap Select
ACD	= 7	; Analog Comparator Disable

; DIDR - Digital Input Disable Register 1
AIN0D	= 0	; AIN0 Digital Input Disable
AIN1D	= 1	; AIN1 Digital Input Disable


; ***** PORTD ************************
; PORTD - Data Register, Port D
PORTD0	= 0	; 
PD0	= 0	; For compatibility
PORTD1	= 1	; 
PD1	= 1	; For compatibility
PORTD2	= 2	; 
PD2	= 2	; For compatibility
PORTD3	= 3	; 
PD3	= 3	; For compatibility
PORTD4	= 4	; 
PD4	= 4	; For compatibility
PORTD5	= 5	; 
PD5	= 5	; For compatibility
PORTD6	= 6	; 
PD6	= 6	; For compatibility

; DDRD - Data Direction Register, Port D
DDD0	= 0	; 
DDD1	= 1	; 
DDD2	= 2	; 
DDD3	= 3	; 
DDD4	= 4	; 
DDD5	= 5	; 
DDD6	= 6	; 

; PIND - Input Pins, Port D
PIND0	= 0	; 
PIND1	= 1	; 
PIND2	= 2	; 
PIND3	= 3	; 
PIND4	= 4	; 
PIND5	= 5	; 
PIND6	= 6	; 


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
EEPM0	= 4	; 
EEPM1	= 5	; 


; ***** PORTA ************************
; PORTA - Port A Data Register
PORTA0	= 0	; Port A Data Register bit 0
PA0	= 0	; For compatibility
PORTA1	= 1	; Port A Data Register bit 1
PA1	= 1	; For compatibility
PORTA2	= 2	; Port A Data Register bit 2
PA2	= 2	; For compatibility

; DDRA - Port A Data Direction Register
DDA0	= 0	; Data Direction Register, Port A, bit 0
DDA1	= 1	; Data Direction Register, Port A, bit 1
DDA2	= 2	; Data Direction Register, Port A, bit 2

; PINA - Port A Input Pins
PINA0	= 0	; Input Pins, Port A bit 0
PINA1	= 1	; Input Pins, Port A bit 1
PINA2	= 2	; Input Pins, Port A bit 2


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

; SPMCSR - Store Program Memory Control and Status register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
RFLB	= 3	; Read Fuse and Lock Bits
CTPB	= 4	; Clear Temporary Page Buffer

; MCUCR - MCU Control Register
ISC00	= 0	; Interrupt Sense Control 0 bit 0
ISC01	= 1	; Interrupt Sense Control 0 bit 1
ISC10	= 2	; Interrupt Sense Control 1 bit 0
ISC11	= 3	; Interrupt Sense Control 1 bit 1
SM0	= 4	; Sleep Mode Select Bit 0
SM	= SM0	; For compatibility
SE	= 5	; Sleep Enable
SM1	= 6	; Sleep Mode Select Bit 1
PUD	= 7	; Pull-up Disable

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPS2	= 2	; Clock Prescaler Select Bit 2
CLKPS3	= 3	; Clock Prescaler Select Bit 3
CLKPCE	= 7	; Clock Prescaler Change Enable

; MCUSR - MCU Status register
PORF	= 0	; Power-On Reset Flag
EXTRF	= 1	; External Reset Flag
BORF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag

; OSCCAL - Oscillator Calibration Register
CAL0	= 0	; Oscillatro Calibration Value Bit 0
CAL1	= 1	; Oscillatro Calibration Value Bit 1
CAL2	= 2	; Oscillatro Calibration Value Bit 2
CAL3	= 3	; Oscillatro Calibration Value Bit 3
CAL4	= 4	; Oscillatro Calibration Value Bit 4
CAL5	= 5	; Oscillatro Calibration Value Bit 5
CAL6	= 6	; Oscillatro Calibration Value Bit 6

; GTCCR - General Timer Counter Control Register
SFIOR	= GTCCR	; For compatibility
PSR10	= 0	; 

; PCMSK - Pin-Change Mask register
PCINT0	= 0	; Pin-Change Interrupt 0
PCINT1	= 1	; Pin-Change Interrupt 1
PCINT2	= 2	; Pin-Change Interrupt 2
PCINT3	= 3	; Pin-Change Interrupt 3
PCINT4	= 4	; Pin-Change Interrupt 4
PCINT5	= 5	; Pin-Change Interrupt 5
PCINT6	= 6	; Pin-Change Interrupt 6
PCINT7	= 7	; Pin-Change Interrupt 7

; GPIOR2 - General Purpose I/O Register 2
GPIOR20	= 0	; General Purpose I/O Register 2 bit 0
GPIOR21	= 1	; General Purpose I/O Register 2 bit 1
GPIOR22	= 2	; General Purpose I/O Register 2 bit 2
GPIOR23	= 3	; General Purpose I/O Register 2 bit 3
GPIOR24	= 4	; General Purpose I/O Register 2 bit 4
GPIOR25	= 5	; General Purpose I/O Register 2 bit 5
GPIOR26	= 6	; General Purpose I/O Register 2 bit 6
GPIOR27	= 7	; General Purpose I/O Register 2 bit 7

; GPIOR1 - General Purpose I/O Register 1
GPIOR10	= 0	; General Purpose I/O Register 1 bit 0
GPIOR11	= 1	; General Purpose I/O Register 1 bit 1
GPIOR12	= 2	; General Purpose I/O Register 1 bit 2
GPIOR13	= 3	; General Purpose I/O Register 1 bit 3
GPIOR14	= 4	; General Purpose I/O Register 1 bit 4
GPIOR15	= 5	; General Purpose I/O Register 1 bit 5
GPIOR16	= 6	; General Purpose I/O Register 1 bit 6
GPIOR17	= 7	; General Purpose I/O Register 1 bit 7

; GPIOR0 - General Purpose I/O Register 0
GPIOR00	= 0	; General Purpose I/O Register 0 bit 0
GPIOR01	= 1	; General Purpose I/O Register 0 bit 1
GPIOR02	= 2	; General Purpose I/O Register 0 bit 2
GPIOR03	= 3	; General Purpose I/O Register 0 bit 3
GPIOR04	= 4	; General Purpose I/O Register 0 bit 4
GPIOR05	= 5	; General Purpose I/O Register 0 bit 5
GPIOR06	= 6	; General Purpose I/O Register 0 bit 6
GPIOR07	= 7	; General Purpose I/O Register 0 bit 7


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



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lockbit
LB2	= 1	; Lockbit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL0	= 0	; Select Clock Source
CKSEL1	= 1	; Select Clock Source
CKSEL2	= 2	; Select Clock Source
CKSEL3	= 3	; Select Clock Source
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
SELFPRGEN	= 0	; Self Programming Enable



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x03ff	; Note: Word address
IOEND	= 0x003f
SRAM_START	= 0x0060
SRAM_SIZE	= 128
RAMEND	= 0x00df
XRAMEND	= 0x0000
E2END	= 0x007f
EEPROMEND	= 0x007f
EEADRBITS	= 7



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x0
NRWW_STOP_ADDR	= 0x3ff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x0
PAGESIZE	= 16



; ***** INTERRUPT VECTORS ************************************************
INT0addr	= 0x0001	; External Interrupt Request 0
INT1addr	= 0x0002	; External Interrupt Request 1
ICP1addr	= 0x0003	; Timer/Counter1 Capture Event
OC1Aaddr	= 0x0004	; Timer/Counter1 Compare Match A
OC1addr	= 0x0004	; For compatibility
OVF1addr	= 0x0005	; Timer/Counter1 Overflow
OVF0addr	= 0x0006	; Timer/Counter0 Overflow
URXCaddr	= 0x0007	; USART, Rx Complete
URXC0addr	= 0x0007	; For compatibility
UDREaddr	= 0x0008	; USART Data Register Empty
UDRE0addr	= 0x0008	; For compatibility
UTXCaddr	= 0x0009	; USART, Tx Complete
UTXC0addr	= 0x0009	; For compatibility
ACIaddr	= 0x000a	; Analog Comparator
PCIaddr	= 0x000b	; 
OC1Baddr	= 0x000c	; 
OC0Aaddr	= 0x000d	; 
OC0Baddr	= 0x000e	; 
USI_STARTaddr	= 0x000f	; USI Start Condition
USI_OVFaddr	= 0x0010	; USI Overflow
ERDYaddr	= 0x0011	; 
WDTaddr	= 0x0012	; Watchdog Timer Overflow

INT_VECTORS_SIZE	= 19	; size in words


; ***** END OF FILE ******************************************************
