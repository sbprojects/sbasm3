;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m32HVBdef.asm"
;* Title             : Register/Bit Definitions for the ATmega32HVB
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega32HVB
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
; device ATmega32HVB

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x95
SIGNATURE_002	= 0x10

                .CR     avr
                .FA     enhanced128k
				.MS		$4000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
BPPLR	= 0xfe	; MEMORY MAPPED
BPCR	= 0xfd	; MEMORY MAPPED
BPHCTR	= 0xfc	; MEMORY MAPPED
BPOCTR	= 0xfb	; MEMORY MAPPED
BPSCTR	= 0xfa	; MEMORY MAPPED
BPCHCD	= 0xf9	; MEMORY MAPPED
BPDHCD	= 0xf8	; MEMORY MAPPED
BPCOCD	= 0xf7	; MEMORY MAPPED
BPDOCD	= 0xf6	; MEMORY MAPPED
BPSCD	= 0xf5	; MEMORY MAPPED
BPIFR	= 0xf3	; MEMORY MAPPED
BPIMSK	= 0xf2	; MEMORY MAPPED
CBCR	= 0xf1	; MEMORY MAPPED
FCSR	= 0xf0	; MEMORY MAPPED
CADRDC	= 0xea	; MEMORY MAPPED
CADRCC	= 0xe9	; MEMORY MAPPED
CADCSRC	= 0xe8	; MEMORY MAPPED
CADCSRB	= 0xe7	; MEMORY MAPPED
CADCSRA	= 0xe6	; MEMORY MAPPED
CADICL	= 0xe4	; MEMORY MAPPED
CADICH	= 0xe5	; MEMORY MAPPED
CADAC3	= 0xe3	; MEMORY MAPPED
CADAC2	= 0xe2	; MEMORY MAPPED
CADAC1	= 0xe1	; MEMORY MAPPED
CADAC0	= 0xe0	; MEMORY MAPPED
CHGDCSR	= 0xd4	; MEMORY MAPPED
BGCSR	= 0xd2	; MEMORY MAPPED
BGCRR	= 0xd1	; MEMORY MAPPED
BGCCR	= 0xd0	; MEMORY MAPPED
ROCR	= 0xc8	; MEMORY MAPPED
TWBCSR	= 0xbe	; MEMORY MAPPED
TWAMR	= 0xbd	; MEMORY MAPPED
TWCR	= 0xbc	; MEMORY MAPPED
TWDR	= 0xbb	; MEMORY MAPPED
TWAR	= 0xba	; MEMORY MAPPED
TWSR	= 0xb9	; MEMORY MAPPED
TWBR	= 0xb8	; MEMORY MAPPED
OCR1B	= 0x89	; MEMORY MAPPED
OCR1A	= 0x88	; MEMORY MAPPED
TCNT1L	= 0x84	; MEMORY MAPPED
TCNT1H	= 0x85	; MEMORY MAPPED
TCCR1B	= 0x81	; MEMORY MAPPED
TCCR1A	= 0x80	; MEMORY MAPPED
DIDR0	= 0x7e	; MEMORY MAPPED
VADMUX	= 0x7c	; MEMORY MAPPED
VADCSR	= 0x7a	; MEMORY MAPPED
VADCL	= 0x78	; MEMORY MAPPED
VADCH	= 0x79	; MEMORY MAPPED
TIMSK1	= 0x6f	; MEMORY MAPPED
TIMSK0	= 0x6e	; MEMORY MAPPED
PCMSK0	= 0x6b	; MEMORY MAPPED
PCMSK1	= 0x6c	; MEMORY MAPPED
EICRA	= 0x69	; MEMORY MAPPED
PCICR	= 0x68	; MEMORY MAPPED
FOSCCAL	= 0x66	; MEMORY MAPPED
PRR0	= 0x64	; MEMORY MAPPED
CLKPR	= 0x61	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
SPMCSR	= 0x37
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
DWDR	= 0x31
SPDR	= 0x2e
SPSR	= 0x2d
SPCR	= 0x2c
GPIOR2	= 0x2b
GPIOR1	= 0x2a
OCR0B	= 0x29
OCR0A	= 0x28
TCNT0L	= 0x26
TCNT0H	= 0x27
TCCR0B	= 0x25
TCCR0A	= 0x24
GTCCR	= 0x23
EEARL	= 0x21
EEARH	= 0x22
EEDR	= 0x20
EECR	= 0x1f
GPIOR0	= 0x1e
EIMSK	= 0x1d
EIFR	= 0x1c
PCIFR	= 0x1b
OSICSR	= 0x17
TIFR1	= 0x16
TIFR0	= 0x15
PORTC	= 0x08
PINC	= 0x06
PORTB	= 0x05
DDRB	= 0x04
PINB	= 0x03
PORTA	= 0x02
DDRA	= 0x01
PINA	= 0x00


; ***** BIT DEFINITIONS **************************************************

; ***** AD_CONVERTER *****************
; VADMUX - The VADC multiplexer Selection Register
VADMUX0	= 0	; Analog Channel and Gain Selection Bits
VADMUX1	= 1	; Analog Channel and Gain Selection Bits
VADMUX2	= 2	; Analog Channel and Gain Selection Bits
VADMUX3	= 3	; Analog Channel and Gain Selection Bits

; VADCSR - The VADC Control and Status register
VADCCIE	= 0	; VADC Conversion Complete Interrupt Enable
VADCCIF	= 1	; VADC Conversion Complete Interrupt Flag
VADSC	= 2	; VADC Satrt Conversion
VADEN	= 3	; VADC Enable


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


; ***** FET **************************
; FCSR - FET Control and Status Register
CFE	= 0	; Charge FET Enable
DFE	= 1	; Discharge FET Enable
CPS	= 2	; Current Protection Status
DUVRD	= 3	; Deep Under-Voltage Recovery Disable


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


; ***** EEPROM ***********************
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


; ***** COULOMB_COUNTER **************
; CADCSRA - CC-ADC Control and Status Register A
CADSE	= 0	; When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
CADSI0	= 1	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADSI1	= 2	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADAS0	= 3	; CC_ADC Accumulate Current Select Bit 0
CADAS1	= 4	; CC_ADC Accumulate Current Select Bit 1
CADUB	= 5	; CC_ADC Update Busy
CADPOL	= 6	; 
CADEN	= 7	; When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.

; CADCSRB - CC-ADC Control and Status Register B
CADICIF	= 0	; CC-ADC Instantaneous Current Interrupt Flag
CADRCIF	= 1	; CC-ADC Accumulate Current Interrupt Flag
CADACIF	= 2	; CC-ADC Accumulate Current Interrupt Flag
CADICIE	= 4	; CAD Instantenous Current Interrupt Enable
CADRCIE	= 5	; Regular Current Interrupt Enable
CADACIE	= 6	; 

; CADCSRC - CC-ADC Control and Status Register C
CADVSE	= 0	; CC-ADC Voltage Scaling Enable

; CADAC3 - ADC Accumulate Current
CADAC24	= 0	; 
CADAC25	= 1	; 
CADAC26	= 2	; 
CADAC27	= 3	; 
CADAC28	= 4	; 
CADAC29	= 5	; 
CADAC30	= 6	; 
CADAC31	= 7	; 

; CADAC2 - ADC Accumulate Current
CADAC16	= 0	; 
CADAC17	= 1	; 
CADAC18	= 2	; 
CADAC19	= 3	; 
CADAC20	= 4	; 
CADAC21	= 5	; 
CADAC22	= 6	; 
CADAC23	= 7	; 

; CADAC1 - ADC Accumulate Current
CADAC08	= 0	; 
CADAC09	= 1	; 
CADAC10	= 2	; 
CADAC11	= 3	; 
CADAC12	= 4	; 
CADAC13	= 5	; 
CADAC14	= 6	; 
CADAC15	= 7	; 

; CADAC0 - ADC Accumulate Current
CADAC00	= 0	; 
CADAC01	= 1	; 
CADAC02	= 2	; 
CADAC03	= 3	; 
CADAC04	= 4	; 
CADAC05	= 5	; 
CADAC06	= 6	; 
CADAC07	= 7	; 

; CADRCC - CC-ADC Regular Charge Current
CADRCC0	= 0	; 
CADRCC1	= 1	; 
CADRCC2	= 2	; 
CADRCC3	= 3	; 
CADRCC4	= 4	; 
CADRCC5	= 5	; 
CADRCC6	= 6	; 
CADRCC7	= 7	; 

; CADRDC - CC-ADC Regular Discharge Current
CADRDC0	= 0	; 
CADRDC1	= 1	; 
CADRDC2	= 2	; 
CADRDC3	= 3	; 
CADRDC4	= 4	; 
CADRDC5	= 5	; 
CADRDC6	= 6	; 
CADRDC7	= 7	; 


; ***** TWI **************************
; TWBCSR - TWI Bus Control and Status Register
TWBCIP	= 0	; TWI Bus Connect/Disconnect Interrupt Polarity
TWBDT0	= 1	; TWI Bus Disconnect Time-out Period
TWBDT1	= 2	; TWI Bus Disconnect Time-out Period
TWBCIE	= 6	; TWI Bus Connect/Disconnect Interrupt Enable
TWBCIF	= 7	; TWI Bus Connect/Disconnect Interrupt Flag

; TWAMR - TWI (Slave) Address Mask Register
TWAM0	= 1	; 
TWAM1	= 2	; 
TWAM2	= 3	; 
TWAM3	= 4	; 
TWAM4	= 5	; 
TWAM5	= 6	; 
TWAM6	= 7	; 

; TWBR - TWI Bit Rate register
TWBR0	= 0	; 
TWBR1	= 1	; 
TWBR2	= 2	; 
TWBR3	= 3	; 
TWBR4	= 4	; 
TWBR5	= 5	; 
TWBR6	= 6	; 
TWBR7	= 7	; 

; TWCR - TWI Control Register
TWIE	= 0	; TWI Interrupt Enable
TWEN	= 2	; TWI Enable Bit
TWWC	= 3	; TWI Write Collition Flag
TWSTO	= 4	; TWI Stop Condition Bit
TWSTA	= 5	; TWI Start Condition Bit
TWEA	= 6	; TWI Enable Acknowledge Bit
TWINT	= 7	; TWI Interrupt Flag

; TWSR - TWI Status Register
TWPS0	= 0	; TWI Prescaler
TWPS1	= 1	; TWI Prescaler
TWS3	= 3	; TWI Status
TWS4	= 4	; TWI Status
TWS5	= 5	; TWI Status
TWS6	= 6	; TWI Status
TWS7	= 7	; TWI Status

; TWDR - TWI Data register
TWD0	= 0	; TWI Data Register Bit 0
TWD1	= 1	; TWI Data Register Bit 1
TWD2	= 2	; TWI Data Register Bit 2
TWD3	= 3	; TWI Data Register Bit 3
TWD4	= 4	; TWI Data Register Bit 4
TWD5	= 5	; TWI Data Register Bit 5
TWD6	= 6	; TWI Data Register Bit 6
TWD7	= 7	; TWI Data Register Bit 7

; TWAR - TWI (Slave) Address register
TWGCE	= 0	; TWI General Call Recognition Enable Bit
TWA0	= 1	; TWI (Slave) Address register Bit 0
TWA1	= 2	; TWI (Slave) Address register Bit 1
TWA2	= 3	; TWI (Slave) Address register Bit 2
TWA3	= 4	; TWI (Slave) Address register Bit 3
TWA4	= 5	; TWI (Slave) Address register Bit 4
TWA5	= 6	; TWI (Slave) Address register Bit 5
TWA6	= 7	; TWI (Slave) Address register Bit 6


; ***** EXTERNAL_INTERRUPT ***********
; EICRA - External Interrupt Control Register
ISC00	= 0	; External Interrupt Sense Control 0 Bit 0
ISC01	= 1	; External Interrupt Sense Control 0 Bit 1
ISC10	= 2	; External Interrupt Sense Control 1 Bit 0
ISC11	= 3	; External Interrupt Sense Control 1 Bit 1
ISC20	= 4	; External Interrupt Sense Control 2 Bit 0
ISC21	= 5	; External Interrupt Sense Control 2 Bit 1
ISC30	= 6	; External Interrupt Sense Control 3 Bit 0
ISC31	= 7	; External Interrupt Sense Control 3 Bit 1

; EIMSK - External Interrupt Mask Register
INT0	= 0	; External Interrupt Request 0 Enable
INT1	= 1	; External Interrupt Request 1 Enable
INT2	= 2	; External Interrupt Request 2 Enable
INT3	= 3	; External Interrupt Request 3 Enable

; EIFR - External Interrupt Flag Register
INTF0	= 0	; External Interrupt Flag 0
INTF1	= 1	; External Interrupt Flag 1
INTF2	= 2	; External Interrupt Flag 2
INTF3	= 3	; External Interrupt Flag 3

; PCICR - Pin Change Interrupt Control Register
PCIE0	= 0	; Pin Change Interrupt Enable 0
PCIE1	= 1	; Pin Change Interrupt Enable 1

; PCIFR - Pin Change Interrupt Flag Register
PCIF0	= 0	; Pin Change Interrupt Flag 1
PCIF1	= 1	; Pin Change Interrupt Flag 1

; PCMSK1 - Pin Change Enable Mask Register 1
PCINT4	= 0	; Pin Change Enable Mask 4
PCINT5	= 1	; Pin Change Enable Mask 5
PCINT6	= 2	; Pin Change Enable Mask 6
PCINT7	= 3	; Pin Change Enable Mask 7
PCINT8	= 4	; Pin Change Enable Mask 8
PCINT9	= 5	; Pin Change Enable Mask 9
PCINT10	= 6	; Pin Change Enable Mask 10
PCINT11	= 7	; Pin Change Enable Mask 11

; PCMSK0 - Pin Change Enable Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3


; ***** TIMER_COUNTER_1 **************
; TCCR1A - Timer/Counter 1 Control Register A
WGM10	= 0	; Waveform Generation Mode
ICS1	= 3	; Input Capture Select
ICES1	= 4	; Input Capture Edge Select
ICNC1	= 5	; Input Capture Noise Canceler
ICEN1	= 6	; Input Capture Mode Enable
TCW1	= 7	; Timer/Counter Width

; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select1 bit 0
CS11	= 1	; Clock Select1 bit 1
CS12	= 2	; Clock Select1 bit 2

; OCR1A - Output Compare Register 1A
OCR1A0	= 0	; 
OCR1A1	= 1	; 
OCR1A2	= 2	; 
OCR1A3	= 3	; 
OCR1A4	= 4	; 
OCR1A5	= 5	; 
OCR1A6	= 6	; 
OCR1A7	= 7	; 

; OCR1B - Output Compare Register B
OCR1B0	= 0	; 
OCR1B1	= 1	; 
OCR1B2	= 2	; 
OCR1B3	= 3	; 
OCR1B4	= 4	; 
OCR1B5	= 5	; 
OCR1B6	= 6	; 
OCR1B7	= 7	; 

; TIMSK1 - Timer/Counter Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare A Interrupt Enable
OCIE1B	= 2	; Timer/Counter1 Output Compare B Interrupt Enable
ICIE1	= 3	; Timer/Counter n Input Capture Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Timer/Counter1 Output Compare Flag A
OCF1B	= 2	; Timer/Counter1 Output Compare Flag B
ICF1	= 3	; Timer/Counter 1 Input Capture Flag

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0	; Prescaler Reset
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** CELL_BALANCING ***************
; CBCR - Cell Balancing Control Register
CBE1	= 0	; Battery Protection Parameter Lock
CBE2	= 1	; Cell Balancing Enable 2
CBE3	= 2	; Cell Balancing Enable 4
CBE4	= 3	; Cell Balancing Enable 4


; ***** BATTERY_PROTECTION ***********
; BPPLR - Battery Protection Parameter Lock Register
BPPL	= 0	; Battery Protection Parameter Lock
BPPLE	= 1	; Battery Protection Parameter Lock Enable

; BPCR - Battery Protection Control Register
CHCD	= 0	; Charge High-current Protection Disable
DHCD	= 1	; Discharge High-current Protection Disable
COCD	= 2	; Charge Over-current Protection Disabled
DOCD	= 3	; Discharge Over-current Protection Disabled
SCD	= 4	; Short Circuit Protection Disabled
EPID	= 5	; External Protection Input Disable

; BPHCTR - Battery Protection Short-current Timing Register
HCPT0	= 0	; High-current Protection Timing bit 0
HCPT1	= 1	; High-current Protection Timing bit 1
HCPT2	= 2	; High-current Protection Timing bit 2
HCPT3	= 3	; High-current Protection Timing bit 3
HCPT4	= 4	; High-current Protection Timing bit 4
HCPT5	= 5	; High-current Protection Timing bit 5

; BPOCTR - Battery Protection Over-current Timing Register
OCPT0	= 0	; Over-current Protection Timing bit 0
OCPT1	= 1	; Over-current Protection Timing bit 1
OCPT2	= 2	; Over-current Protection Timing bit 2
OCPT3	= 3	; Over-current Protection Timing bit 3
OCPT4	= 4	; Over-current Protection Timing bit 4
OCPT5	= 5	; Over-current Protection Timing bit 5

; BPSCTR - Battery Protection Short-current Timing Register
SCPT0	= 0	; Short-current Protection Timing
SCPT1	= 1	; Short-current Protection Timing
SCPT2	= 2	; Short-current Protection Timing
SCPT3	= 3	; Short-current Protection Timing
SCPT4	= 4	; Short-current Protection Timing
SCPT5	= 5	; Short-current Protection Timing
SCPT6	= 6	; Short-current Protection Timing

; BPCHCD - Battery Protection Charge-High-current Detection Level Register
CHCDL0	= 0	; Charge High-current Detection Level
CHCDL1	= 1	; Charge High-current Detection Level
CHCDL2	= 2	; Charge High-current Detection Level
CHCDL3	= 3	; Charge High-current Detection Level
CHCDL4	= 4	; Charge High-current Detection Level
CHCDL5	= 5	; Charge High-current Detection Level
CHCDL6	= 6	; Charge High-current Detection Level
CHCDL7	= 7	; Charge High-current Detection Level

; BPDHCD - Battery Protection Discharge-High-current Detection Level Register
DHCDL0	= 0	; Discharge High-current Detection Level bit 0
DHCDL1	= 1	; Discharge High-current Detection Level bit 1
DHCDL2	= 2	; Discharge High-current Detection Level bit 2
DHCDL3	= 3	; Discharge High-current Detection Level bit 3
DHCDL4	= 4	; Discharge High-current Detection Level bit 4
DHCDL5	= 5	; Discharge High-current Detection Level bit 5
DHCDL6	= 6	; Discharge High-current Detection Level bit 6
DHCDL7	= 7	; Discharge High-current Detection Level bit 7

; BPCOCD - Battery Protection Charge-Over-current Detection Level Register
COCDL0	= 0	; Charge Over-current Detection Level
COCDL1	= 1	; Charge Over-current Detection Level
COCDL2	= 2	; Charge Over-current Detection Level
COCDL3	= 3	; Charge Over-current Detection Level
COCDL4	= 4	; Charge Over-current Detection Level
COCDL5	= 5	; Charge Over-current Detection Level
COCDL6	= 6	; Charge Over-current Detection Level
COCDL7	= 7	; Charge Over-current Detection Level

; BPDOCD - Battery Protection Discharge-Over-current Detection Level Register
DOCDL0	= 0	; Discharge Over-current Detection Level bit0
DOCDL1	= 1	; Discharge Over-current Detection Level bit1
DOCDL2	= 2	; Discharge Over-current Detection Level bit2
DOCDL3	= 3	; Discharge Over-current Detection Level bit3
DOCDL4	= 4	; Discharge Over-current Detection Level bit4
DOCDL5	= 5	; Discharge Over-current Detection Level bit5
DOCDL6	= 6	; Discharge Over-current Detection Level bit6
DOCDL7	= 7	; Discharge Over-current Detection Level bit7

; BPSCD - Battery Protection Short-Circuit Detection Level Register
SCDL0	= 0	; Short-circuit Detection Level bit 0
SCDL1	= 1	; Short-circuit Detection Level bit 1
SCDL2	= 2	; Short-circuit Detection Level bit 2
SCDL3	= 3	; Short-circuit Detection Level bit 3
SCDL4	= 4	; Short-circuit Detection Level bit 4
SCDL5	= 5	; Short-circuit Detection Level bit 5
SCDL6	= 6	; Short-circuit Detection Level bit 6
SCDL7	= 7	; Short-circuit Detection Level bit 7

; BPIFR - Battery Protection Interrupt Flag Register
CHCIF	= 0	; Charge High-current Protection Activated Interrupt
DHCIF	= 1	; Disharge High-current Protection Activated Interrupt
COCIF	= 2	; Charge Over-current Protection Activated Interrupt Flag
DOCIF	= 3	; Discharge Over-current Protection Activated Interrupt Flag
SCIF	= 4	; Short-circuit Protection Activated Interrupt Flag

; BPIMSK - Battery Protection Interrupt Mask Register
CHCIE	= 0	; Charger High-current Protection Activated Interrupt
DHCIE	= 1	; Discharger High-current Protection Activated Interrupt
COCIE	= 2	; Charge Over-current Protection Activated Interrupt Enable
DOCIE	= 3	; Discharge Over-current Protection Activated Interrupt Enable
SCIE	= 4	; Short-circuit Protection Activated Interrupt Enable


; ***** CHARGER_DETECT ***************
; CHGDCSR - Charger Detect Control and Status Register
CHGDIE	= 0	; Charger Detect Interrupt Enable
CHGDIF	= 1	; Charger Detect Interrupt Flag
CHGDISC0	= 2	; Charger Detect Interrupt Sense Control
CHGDISC1	= 3	; Charger Detect Interrupt Sense Control
BATTPVL	= 4	; BATT Pin Voltage Level


; ***** VOLTAGE_REGULATOR ************
; ROCR - Regulator Operating Condition Register
ROCWIE	= 0	; ROC Warning Interrupt Enable
ROCWIF	= 1	; ROC Warning Interrupt Flag
ROCD	= 4	; ROC Disable
ROCS	= 7	; ROC Status


; ***** BANDGAP **********************
; BGCSR - Bandgap Control and Status Register
BGSCDIE	= 0	; Bandgap Short Circuit Detection Interrupt Enable
BGSCDIF	= 1	; Bandgap Short Circuit Detection Interrupt Flag
BGSCDE	= 4	; Bandgap Short Circuit Detection Enabled
BGD	= 5	; Bandgap Disable

; BGCRR - Bandgap Calibration of Resistor Ladder
BGCR0	= 0	; Bandgap Calibration of Resistor Ladder Bit 0
BGCR1	= 1	; Bandgap Calibration of Resistor Ladder Bit 1
BGCR2	= 2	; Bandgap Calibration of Resistor Ladder Bit 2
BGCR3	= 3	; Bandgap Calibration of Resistor Ladder Bit 3
BGCR4	= 4	; Bandgap Calibration of Resistor Ladder Bit 4
BGCR5	= 5	; Bandgap Calibration of Resistor Ladder Bit 5
BGCR6	= 6	; Bandgap Calibration of Resistor Ladder Bit 6
BGCR7	= 7	; Bandgap Calibration of Resistor Ladder Bit 7

; BGCCR - Bandgap Calibration Register
BGCC0	= 0	; BG Calibration of PTAT Current Bit 0
BGCC1	= 1	; BG Calibration of PTAT Current Bit 1
BGCC2	= 2	; BG Calibration of PTAT Current Bit 2
BGCC3	= 3	; BG Calibration of PTAT Current Bit 3
BGCC4	= 4	; BG Calibration of PTAT Current Bit 4
BGCC5	= 5	; BG Calibration of PTAT Current Bit 5


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
CKOE	= 5	; Clock Output Enable

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BODRF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
OCDRF	= 4	; OCD Reset Flag

; FOSCCAL - Fast Oscillator Calibration Value
FCAL0	= 0	; Oscillator Calibration Value Bit0
FCAL1	= 1	; Oscillator Calibration Value Bit1
FCAL2	= 2	; Oscillator Calibration Value Bit2
FCAL3	= 3	; Oscillator Calibration Value Bit3
FCAL4	= 4	; Oscillator Calibration Value Bit4
FCAL5	= 5	; Oscillator Calibration Value Bit5
FCAL6	= 6	; Oscillator Calibration Value Bit6
FCAL7	= 7	; Oscillator Calibration Value Bit7

; OSICSR - Oscillator Sampling Interface Control and Status Register
OSIEN	= 0	; Oscillator Sampling Interface Enable
OSIST	= 1	; Oscillator Sampling Interface Status
OSISEL0	= 4	; Oscillator Sampling Interface Select 0

; SMCR - Sleep Mode Control Register
SE	= 0	; Sleep Enable
SM0	= 1	; Sleep Mode Select bit 0
SM1	= 2	; Sleep Mode Select bit 1
SM2	= 3	; Sleep Mode Select bit 2

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

; DIDR0 - Digital Input Disable Register
PA0DID	= 0	; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
PA1DID	= 1	; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.

; PRR0 - Power Reduction Register 0
PRVADC	= 0	; Power Reduction V-ADC
PRTIM0	= 1	; Power Reduction Timer/Counter0
PRTIM1	= 2	; Power Reduction Timer/Counter1
PRSPI	= 3	; Power reduction SPI
PRVRM	= 5	; Power Reduction Voltage Regulator Monitor
PRTWI	= 6	; Power Reduction TWI

; CLKPR - Clock Prescale Register
CLKPS0	= 0	; Clock Prescaler Select Bit 0
CLKPS1	= 1	; Clock Prescaler Select Bit 1
CLKPCE	= 7	; Clock Prescaler Change Enable


; ***** PORTA ************************
; PORTA - Port A Data Register
PORTA0	= 0	; Port A Data Register bit 0
PA0	= 0	; For compatibility
PORTA1	= 1	; Port A Data Register bit 1
PA1	= 1	; For compatibility
PORTA2	= 2	; Port A Data Register bit 2
PA2	= 2	; For compatibility
PORTA3	= 3	; Port A Data Register bit 3
PA3	= 3	; For compatibility

; DDRA - Port A Data Direction Register
DDA0	= 0	; Data Direction Register, Port A, bit 0
DDA1	= 1	; Data Direction Register, Port A, bit 1
DDA2	= 2	; Data Direction Register, Port A, bit 2
DDA3	= 3	; Data Direction Register, Port A, bit 3

; PINA - Port A Input Pins
PINA0	= 0	; Input Pins, Port A bit 0
PINA1	= 1	; Input Pins, Port A bit 1
PINA2	= 2	; Input Pins, Port A bit 2
PINA3	= 3	; Input Pins, Port A bit 3


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
PORTC0	= 0	; Port C Data Register bit 0
PC0	= 0	; For compatibility
PORTC1	= 1	; Port C Data Register bit 1
PC1	= 1	; For compatibility
PORTC2	= 2	; Port C Data Register bit 2
PC2	= 2	; For compatibility
PORTC3	= 3	; Port C Data Register bit 3
PC3	= 3	; For compatibility
PORTC4	= 4	; Port C Data Register bit 4
PC4	= 4	; For compatibility
PORTC5	= 5	; Port C Data Register bit 5
PC5	= 5	; For compatibility

; PINC - Port C Input Pins
PINC0	= 0	; Port C Input Pins bit 0
PINC1	= 1	; Port C Input Pins bit 1
PINC2	= 2	; Port C Input Pins bit 2
PINC3	= 3	; Port C Input Pins bit 3
PINC4	= 4	; Port C Input Pins bit 4


; ***** TIMER_COUNTER_0 **************
; TCCR0A - Timer/Counter 0 Control Register A
WGM00	= 0	; Waveform Generation Mode
ICS0	= 3	; Input Capture Select
ICES0	= 4	; Input Capture Edge Select
ICNC0	= 5	; Input Capture Noise Canceler
ICEN0	= 6	; Input Capture Mode Enable
TCW0	= 7	; Timer/Counter Width

; TCCR0B - Timer/Counter0 Control Register B
CS00	= 0	; Clock Select0 bit 0
CS01	= 1	; Clock Select0 bit 1
CS02	= 2	; Clock Select0 bit 2

; OCR0A - Output Compare Register 0A
OCR0A0	= 0	; 
OCR0A1	= 1	; 
OCR0A2	= 2	; 
OCR0A3	= 3	; 
OCR0A4	= 4	; 
OCR0A5	= 5	; 
OCR0A6	= 6	; 
OCR0A7	= 7	; 

; OCR0B - Output Compare Register B
OCR0B0	= 0	; 
OCR0B1	= 1	; 
OCR0B2	= 2	; 
OCR0B3	= 3	; 
OCR0B4	= 4	; 
OCR0B5	= 5	; 
OCR0B6	= 6	; 
OCR0B7	= 7	; 

; TIMSK0 - Timer/Counter Interrupt Mask Register
TOIE0	= 0	; Timer/Counter0 Overflow Interrupt Enable
OCIE0A	= 1	; Timer/Counter0 Output Compare A Interrupt Enable
OCIE0B	= 2	; Timer/Counter0 Output Compare B Interrupt Enable
ICIE0	= 3	; Timer/Counter n Input Capture Interrupt Enable

; TIFR0 - Timer/Counter Interrupt Flag register
TOV0	= 0	; Timer/Counter0 Overflow Flag
OCF0A	= 1	; Timer/Counter0 Output Compare Flag A
OCF0B	= 2	; Timer/Counter0 Output Compare Flag B
ICF0	= 3	; Timer/Counter 0 Input Capture Flag

; GTCCR - General Timer/Counter Control Register
;PSRSYNC	= 0	; Prescaler Reset
;TSM	= 7	; Timer/Counter Synchronization Mode


; ***** BOOT_LOAD ********************
; SPMCSR - Store Program Memory Control and Status Register
SPMEN	= 0	; Store Program Memory Enable
PGERS	= 1	; Page Erase
PGWRT	= 2	; Page Write
LBSET	= 3	; Lock Bit Set
RWWSRE	= 4	; Read-While-Write Section Read Enable
SIGRD	= 5	; Signature Row Read
RWWSB	= 6	; Read-While-Write Section Busy
SPMIE	= 7	; SPM Interrupt Enable



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lock bit
LB2	= 1	; Lock bit
BLB01	= 2	; Boot Lock bit
BLB02	= 3	; Boot Lock bit
BLB11	= 4	; Boot lock bit
BLB12	= 5	; Boot lock bit


; ***** FUSES ************************************************************
; LOW fuse bits
OSCSEL0	= 0	; Oscillator Select
OSCSEL1	= 1	; Oscillator Select
SUT0	= 2	; Select start-up time
SUT1	= 3	; Select start-up time
SUT2	= 4	; Select start-up time
SPIEN	= 5	; Enable Serial programming and Data Downloading
EESAVE	= 6	; EEPROM memory is preserved through chip erase
WDTON	= 7	; Watchdog Timer Always On

; HIGH fuse bits
BOOTRST	= 0	; Select Reset Vector
BOOTSZ0	= 1	; Select Boot Size
BOOTSZ1	= 2	; Select Boot Size
DWEN	= 3	; Enable debugWire
DUVRDINIT	= 4	; Reset Value of DUVRDRegister



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
SRAM_SIZE	= 2048
RAMEND	= 0x08ff
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
BPINTaddr	= 0x0002	; Battery Protection Interrupt
VREGMONaddr	= 0x0004	; Voltage regulator monitor interrupt
INT0addr	= 0x0006	; External Interrupt Request 0
INT1addr	= 0x0008	; External Interrupt Request 1
INT2addr	= 0x000a	; External Interrupt Request 2
INT3addr	= 0x000c	; External Interrupt Request 3
PCI0addr	= 0x000e	; Pin Change Interrupt 0
PCI1addr	= 0x0010	; Pin Change Interrupt 1
WDTaddr	= 0x0012	; Watchdog Timeout Interrupt
BGSCDaddr	= 0x0014	; Bandgap Buffer Short Circuit Detected
CHDETaddr	= 0x0016	; Charger Detect
ICP1addr	= 0x0018	; Timer 1 Input capture
OC1Aaddr	= 0x001a	; Timer 1 Compare Match A
OC1Baddr	= 0x001c	; Timer 1 Compare Match B
OVF1addr	= 0x001e	; Timer 1 overflow
ICP0addr	= 0x0020	; Timer 0 Input Capture
OC0Aaddr	= 0x0022	; Timer 0 Comapre Match A
OC0Baddr	= 0x0024	; Timer 0 Compare Match B
OVF0addr	= 0x0026	; Timer 0 Overflow
TWICDaddr	= 0x0028	; Two-Wire Bus Connect/Disconnect
TWIaddr	= 0x002a	; Two-Wire Serial Interface
SPIaddr	= 0x002c	; SPI Serial transfer complete
VADCaddr	= 0x002e	; Voltage ADC Conversion Complete
CADICaddr	= 0x0030	; Coulomb Counter ADC Conversion Complete
CADRCaddr	= 0x0032	; Coloumb Counter ADC Regular Current
CADACaddr	= 0x0034	; Coloumb Counter ADC Accumulator
ERDYaddr	= 0x0036	; EEPROM Ready
SPMRaddr	= 0x0038	; SPM Ready

INT_VECTORS_SIZE	= 58	; size in words


; ***** END OF FILE ******************************************************
