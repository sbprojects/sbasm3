;*************************************************************************
;* A P P L I C A T I O N   N O T E   F O R   T H E   A V R   F A M I L Y
;* 
;* Number            : AVR000
;* File Name         : "m406def.asm"
;* Title             : Register/Bit Definitions for the ATmega406
;* Date              : 2011-02-09
;* Version           : 2.35
;* Support E-mail    : avr@atmel.com
;* Target MCU        : ATmega406
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
; device ATmega406

SIGNATURE_000	= 0x1e
SIGNATURE_001	= 0x95
SIGNATURE_002	= 0x07

                .CR     avr
                .FA     enhanced128k
				.MS		$8000

; ***** I/O REGISTER DEFINITIONS *****************************************
; NOTE:
; Definitions marked "MEMORY MAPPED"are extended I/O ports
; and cannot be used with IN/OUT instructions
BPPLR	= 0xf8	; MEMORY MAPPED
BPCR	= 0xf7	; MEMORY MAPPED
CBPTR	= 0xf6	; MEMORY MAPPED
BPOCD	= 0xf5	; MEMORY MAPPED
BPSCD	= 0xf4	; MEMORY MAPPED
BPDUV	= 0xf3	; MEMORY MAPPED
BPIR	= 0xf2	; MEMORY MAPPED
CBCR	= 0xf1	; MEMORY MAPPED
FCSR	= 0xf0	; MEMORY MAPPED
CADICL	= 0xe8	; MEMORY MAPPED
CADICH	= 0xe9	; MEMORY MAPPED
CADRDC	= 0xe7	; MEMORY MAPPED
CADRCC	= 0xe6	; MEMORY MAPPED
CADCSRB	= 0xe5	; MEMORY MAPPED
CADCSRA	= 0xe4	; MEMORY MAPPED
CADAC3	= 0xe3	; MEMORY MAPPED
CADAC2	= 0xe2	; MEMORY MAPPED
CADAC1	= 0xe1	; MEMORY MAPPED
CADAC0	= 0xe0	; MEMORY MAPPED
BGCRR	= 0xd1	; MEMORY MAPPED
BGCCR	= 0xd0	; MEMORY MAPPED
CCSR	= 0xc0	; MEMORY MAPPED
TWBCSR	= 0xbe	; MEMORY MAPPED
TWAMR	= 0xbd	; MEMORY MAPPED
TWCR	= 0xbc	; MEMORY MAPPED
TWDR	= 0xbb	; MEMORY MAPPED
TWAR	= 0xba	; MEMORY MAPPED
TWSR	= 0xb9	; MEMORY MAPPED
TWBR	= 0xb8	; MEMORY MAPPED
OCR1AL	= 0x88	; MEMORY MAPPED
OCR1AH	= 0x89	; MEMORY MAPPED
TCNT1L	= 0x84	; MEMORY MAPPED
TCNT1H	= 0x85	; MEMORY MAPPED
TCCR1B	= 0x81	; MEMORY MAPPED
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
WUTCSR	= 0x62	; MEMORY MAPPED
WDTCSR	= 0x60	; MEMORY MAPPED
SREG	= 0x3f
SPL	= 0x3d
SPH	= 0x3e
SPMCSR	= 0x37
MCUCR	= 0x35
MCUSR	= 0x34
SMCR	= 0x33
OCDR	= 0x31
GPIOR2	= 0x2b
GPIOR1	= 0x2a
OCR0B	= 0x28
OCR0A	= 0x27
TCNT0	= 0x26
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
TIFR1	= 0x16
TIFR0	= 0x15
PORTD	= 0x0b
DDRD	= 0x0a
PIND	= 0x09
PORTC	= 0x08
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
INT2	= 2	; External Interrupt Request 1 Enable
INT3	= 3	; External Interrupt Request 1 Enable

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
PCINT8	= 0	; Pin Change Enable Mask 8
PCINT9	= 1	; Pin Change Enable Mask 9
PCINT10	= 2	; Pin Change Enable Mask 10
PCINT11	= 3	; Pin Change Enable Mask 11
PCINT12	= 4	; Pin Change Enable Mask 12
PCINT13	= 5	; Pin Change Enable Mask 13
PCINT14	= 6	; Pin Change Enable Mask 14
PCINT15	= 7	; Pin Change Enable Mask 15

; PCMSK0 - Pin Change Enable Mask Register 0
PCINT0	= 0	; Pin Change Enable Mask 0
PCINT1	= 1	; Pin Change Enable Mask 1
PCINT2	= 2	; Pin Change Enable Mask 2
PCINT3	= 3	; Pin Change Enable Mask 3
PCINT4	= 4	; Pin Change Enable Mask 4
PCINT5	= 5	; Pin Change Enable Mask 5
PCINT6	= 6	; Pin Change Enable Mask 6
PCINT7	= 7	; Pin Change Enable Mask 7


; ***** TIMER_COUNTER_1 **************
; TCCR1B - Timer/Counter1 Control Register B
CS10	= 0	; Clock Select1 bit 0
CS11	= 1	; Clock Select1 bit 1
CS12	= 2	; Clock Select1 bit 2
CTC1	= 3	; Clear Timer/Counter on Compare Match

; TIMSK1 - Timer/Counter Interrupt Mask Register
TOIE1	= 0	; Timer/Counter1 Overflow Interrupt Enable
OCIE1A	= 1	; Timer/Counter1 Output Compare Interrupt Enable

; TIFR1 - Timer/Counter Interrupt Flag register
TOV1	= 0	; Timer/Counter1 Overflow Flag
OCF1A	= 1	; Timer/Counter1 Output Compare Flag A

; GTCCR - General Timer/Counter Control Register
PSRSYNC	= 0	; Prescaler Reset
TSM	= 7	; Timer/Counter Synchronization Mode


; ***** WAKEUP_TIMER *****************
; WUTCSR - Wake-up Timer Control Register
WUTP0	= 0	; Wake-up Timer Prescaler Bit 0
WUTP1	= 1	; Wake-up Timer Prescaler Bit 1
WUTP2	= 2	; Wake-up Timer Prescaler Bit 2
WUTE	= 3	; Wake-up Timer Enable
WUTR	= 4	; Wake-up Timer Reset
WUTCF	= 5	; Wake-up timer Calibration Flag
WUTIE	= 6	; Wake-up Timer Interrupt Enable
WUTIF	= 7	; Wake-up Timer Interrupt Flag


; ***** BATTERY_PROTECTION ***********
; BPPLR - Battery Protection Parameter Lock Register
BPPL	= 0	; Battery Protection Parameter Lock
BPPLE	= 1	; Battery Protection Parameter Lock Enable

; BPCR - Battery Protection Control Register
CCD	= 0	; 
DCD	= 1	; 
SCD	= 2	; 
DUVD	= 3	; 

; CBPTR - Current Battery Protection Timing Register
OCPT0	= 0	; 
OCPT1	= 1	; 
OCPT2	= 2	; 
OCPT3	= 3	; 
SCPT0	= 4	; 
SCPT1	= 5	; 
SCPT2	= 6	; 
SCPT3	= 7	; 

; BPOCD - Battery Protection OverCurrent Detection Level Register
CCDL0	= 0	; 
CCDL1	= 1	; 
CCDL2	= 2	; 
CCDL3	= 3	; 
DCDL0	= 4	; 
DCDL1	= 5	; 
DCDL2	= 6	; 
DCDL3	= 7	; 

; BPSCD - Battery Protection Short-Circuit Detection Level Register
SCDL0	= 0	; 
SCDL1	= 1	; 
SCDL2	= 2	; 
SCDL3	= 3	; 

; BPDUV - Battery Protection Deep Under Voltage Register
DUDL0	= 0	; 
DUDL1	= 1	; 
DUDL2	= 2	; 
DUDL3	= 3	; 
DUVT0	= 4	; 
DUVT1	= 5	; 

; BPIR - Battery Protection Interrupt Register
SCIE	= 0	; 
DOCIE	= 1	; 
COCIE	= 2	; 
DUVIE	= 3	; Deep Under-voltage Early Warning Interrupt Enable
SCIF	= 4	; 
DOCIF	= 5	; 
COCIF	= 6	; Charge Over-current Protection Activated Interrupt Flag
DUVIF	= 7	; Deep Under-voltage Early Warning Interrupt Flag


; ***** FET **************************
; FCSR - 
PFD	= 0	; Precharge FET disable
CFE	= 1	; Charge FET Enable
DFE	= 2	; Discharge FET Enable
CPS	= 3	; Current Protection Status
PWMOPC	= 4	; Pulse Width Modulation Modulation of OPC output
PWMOC	= 5	; Pulse Width Modulation of OC output


; ***** COULOMB_COUNTER **************
; CADCSRA - CC-ADC Control and Status Register A
CADSE	= 0	; When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
CADSI0	= 1	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADSI1	= 2	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADAS0	= 3	; CC_ADC Accumulate Current Select Bit 0
CADAS1	= 4	; CC_ADC Accumulate Current Select Bit 1
CADUB	= 5	; CC_ADC Update Busy
CADEN	= 7	; When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.

; CADCSRB - CC-ADC Control and Status Register B
CADICIF	= 0	; CC-ADC Instantaneous Current Interrupt Flag
CADRCIF	= 1	; CC-ADC Accumulate Current Interrupt Flag
CADACIF	= 2	; CC-ADC Accumulate Current Interrupt Flag
CADICIE	= 4	; CAD Instantenous Current Interrupt Enable
CADRCIE	= 5	; Regular Current Interrupt Enable
CADACIE	= 6	; 

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
CADRCC0	= 0	; When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
CADRCC1	= 1	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADRCC2	= 2	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADRCC3	= 3	; The CADACT bits determine the conversion time for the Accumulate Current output as shown in Table 43.
CADRCC4	= 4	; The CADACT bits determine the conversion time for the Accumulate Current output as shown in Table 43.
CADRCC5	= 5	; 
CADRCC6	= 6	; 
CADRCC7	= 7	; When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.

; CADRDC - CC-ADC Regular Discharge Current
CADRDC0	= 0	; When the CADSE bit is written to one, the ongoing CC-ADC conversion is aborted, and the CC-ADC enters Regular Current detection mode.
CADRDC1	= 1	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADRDC2	= 2	; The CADSI bits determine the current sampling interval for the Regular Current detection in Power-down mode. The actual settings remain to be determined.
CADRDC3	= 3	; The CADACT bits determine the conversion time for the Accumulate Current output as shown in Table 43.
CADRDC4	= 4	; The CADACT bits determine the conversion time for the Accumulate Current output as shown in Table 43.
CADRDC5	= 5	; 
CADRDC6	= 6	; 
CADRDC7	= 7	; When the CADEN bit is cleared (zero), the CC-ADC is disabled. When the CADEN bit is set (one), the CC-ADC will continuously measure the voltage drop over the external sense resistor RSENSE. In Power-down, only the Regular Current detection is active. In Power-off, the CC-ADC is always disabled.


; ***** CELL_BALANCING ***************
; CBCR - Cell Balancing Control Register
CBE1	= 0	; Battery Protection Parameter Lock
CBE2	= 1	; Cell Balancing Enable 2
CBE3	= 2	; Cell Balancing Enable 4
CBE4	= 3	; Cell Balancing Enable 4


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
JTD	= 7	; JTAG Disable

; MCUSR - MCU Status Register
PORF	= 0	; Power-on reset flag
EXTRF	= 1	; External Reset Flag
BODRF	= 2	; Brown-out Reset Flag
WDRF	= 3	; Watchdog Reset Flag
JTRF	= 4	; JTAG Reset Flag

; FOSCCAL - Fast Oscillator Calibration Value
FCAL0	= 0	; Oscillator Calibration Value Bit0
FCAL1	= 1	; Oscillator Calibration Value Bit1
FCAL2	= 2	; Oscillator Calibration Value Bit2
FCAL3	= 3	; Oscillator Calibration Value Bit3
FCAL4	= 4	; Oscillator Calibration Value Bit4
FCAL5	= 5	; Oscillator Calibration Value Bit5
FCAL6	= 6	; Oscillator Calibration Value Bit6
FCAL7	= 7	; Oscillator Calibration Value Bit7

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

; CCSR - Clock Control and Status Register
ACS	= 0	; Asynchronous Clock Select
XOE	= 1	; 32 kHz Crystal Oscillator Enable

; DIDR0 - Digital Input Disable Register
VADC0D	= 0	; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
VADC1D	= 1	; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
VADC2D	= 2	; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.
VADC3D	= 3	; When this bit is written logic one, the digital input buffer of the corresponding V_ADC pin is disabled.

; PRR0 - Power Reduction Register 0
PRVADC	= 0	; Power Reduction V-ADC
PRTIM0	= 1	; Power Reduction Timer/Counter0
PRTIM1	= 2	; Power Reduction Timer/Counter1
PRTWI	= 3	; Power Reduction TWI


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


; ***** TIMER_COUNTER_0 **************
; TCCR0A - Timer/Counter0 Control Register
WGM00	= 0	; Clock Select0 bit 0
WGM01	= 1	; Clock Select0 bit 1
COM0B0	= 4	; 
COM0B1	= 5	; 
COM0A0	= 6	; Waveform Generation Mode
COM0A1	= 7	; Force Output Compare

; TCCR0B - Timer/Counter0 Control Register
CS00	= 0	; Clock Select0 bit 0
CS01	= 1	; Clock Select0 bit 1
CS02	= 2	; Clock Select0 bit 2
WGM02	= 3	; 
FOC0B	= 6	; Waveform Generation Mode
FOC0A	= 7	; Force Output Compare

; TCNT0 - Timer Counter 0
TCNT00	= 0	; Timer Counter 0 bit 0
TCNT01	= 1	; Timer Counter 0 bit 1
TCNT02	= 2	; Timer Counter 0 bit 2
TCNT03	= 3	; Timer Counter 0 bit 3
TCNT04	= 4	; Timer Counter 0 bit 4
TCNT05	= 5	; Timer Counter 0 bit 5
TCNT06	= 6	; Timer Counter 0 bit 6
TCNT07	= 7	; Timer Counter 0 bit 7

; OCR0A - Output compare Register A
OCR0A0	= 0	; 
OCR0A1	= 1	; 
OCR0A2	= 2	; 
OCR0A3	= 3	; 
OCR0A4	= 4	; 
OCR0A5	= 5	; 
OCR0A6	= 6	; 
OCR0A7	= 7	; 

; OCR0B - Output compare Register B
OCR0B0	= 0	; 
OCR0B1	= 1	; 
OCR0B2	= 2	; 
OCR0B3	= 3	; 
OCR0B4	= 4	; 
OCR0B5	= 5	; 
OCR0B6	= 6	; 
OCR0B7	= 7	; 

; TIMSK0 - Timer/Counter Interrupt Mask Register
TOIE0	= 0	; Overflow Interrupt Enable
OCIE0A	= 1	; Output Compare Interrupt Enable
OCIE0B	= 2	; Output Compare Interrupt Enable

; TIFR0 - Timer/Counter Interrupt Flag register
TOV0	= 0	; Overflow Flag
OCF0A	= 1	; Output Compare Flag
OCF0B	= 2	; Output Compare Flag


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
PORTA4	= 4	; Port A Data Register bit 4
PA4	= 4	; For compatibility
PORTA5	= 5	; Port A Data Register bit 5
PA5	= 5	; For compatibility
PORTA6	= 6	; Port A Data Register bit 6
PA6	= 6	; For compatibility
PORTA7	= 7	; Port A Data Register bit 7
PA7	= 7	; For compatibility

; DDRA - Port A Data Direction Register
DDA0	= 0	; Data Direction Register, Port A, bit 0
DDA1	= 1	; Data Direction Register, Port A, bit 1
DDA2	= 2	; Data Direction Register, Port A, bit 2
DDA3	= 3	; Data Direction Register, Port A, bit 3
DDA4	= 4	; Data Direction Register, Port A, bit 4
DDA5	= 5	; Data Direction Register, Port A, bit 5
DDA6	= 6	; Data Direction Register, Port A, bit 6
DDA7	= 7	; Data Direction Register, Port A, bit 7

; PINA - Port A Input Pins
PINA0	= 0	; Input Pins, Port A bit 0
PINA1	= 1	; Input Pins, Port A bit 1
PINA2	= 2	; Input Pins, Port A bit 2
PINA3	= 3	; Input Pins, Port A bit 3
PINA4	= 4	; Input Pins, Port A bit 4
PINA5	= 5	; Input Pins, Port A bit 5
PINA6	= 6	; Input Pins, Port A bit 6
PINA7	= 7	; Input Pins, Port A bit 7


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


; ***** PORTD ************************
; PORTD - Data Register, Port D
PORTD0	= 0	; 
PD0	= 0	; For compatibility
PORTD1	= 1	; 
PD1	= 1	; For compatibility

; DDRD - Data Direction Register, Port D
DDD0	= 0	; 
DDD1	= 1	; 

; PIND - Input Pins, Port D
PIND0	= 0	; 
PIND1	= 1	; 


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


; ***** BANDGAP **********************
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
BGD	= 7	; Setting the BGD bit to one will disable the bandgap voltage reference. This bit must be cleared before enabling CC-ADC or V-ADC, and must remain unset while either ADC is enabled.


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
EEPE	= 1	; EEPROM Programming Enable
EEWE	= EEPE	; For compatibility
EEMPE	= 2	; EEPROM Master Programming Enable
EEMWE	= EEMPE	; For compatibility
EERIE	= 3	; EEPROM Ready Interrupt Enable
EEPM0	= 4	; EEPROM Programming Mode Bits
EEPM1	= 5	; EEPROM Programming Mode Bits



; ***** LOCKSBITS ********************************************************
LB1	= 0	; Lock bit
LB2	= 1	; Lock bit
BLB01	= 2	; Boot Lock bit
BLB02	= 3	; Boot Lock bit
BLB11	= 4	; Boot lock bit
BLB12	= 5	; Boot lock bit


; ***** FUSES ************************************************************
; LOW fuse bits
CKSEL	= 0	; Clock Selection
SUT0	= 1	; Select start-up time
SUT1	= 2	; Select start-up time
BOOTRST	= 3	; Select reset vector
BOOTSZ0	= 4	; Select boot size
BOOTSZ1	= 5	; Select boot size
EESAVE	= 6	; EEPROM memory is preserved through the chip erase
WDTON	= 7	; Watchdog Timer Always On

; HIGH fuse bits
JTAGEN	= 0	; Enable JTAG
OCDEN	= 1	; Enable OCD



; ***** CPU REGISTER DEFINITIONS *****************************************
XH	.DE r27
XL	.DE r26
YH	.DE r29
YL	.DE r28
ZH	.DE r31
ZL	.DE r30



; ***** DATA MEMORY DECLARATIONS *****************************************
FLASHEND	= 0x4fff	; Note: Word address
IOEND	= 0x00ff
SRAM_START	= 0x0100
SRAM_SIZE	= 2048
RAMEND	= 0x08ff
XRAMEND	= 0x0000
E2END	= 0x01ff
EEPROMEND	= 0x01ff
EEADRBITS	= 9



; ***** BOOTLOADER DECLARATIONS ******************************************
NRWW_START_ADDR	= 0x4800
NRWW_STOP_ADDR	= 0x4fff
RWW_START_ADDR	= 0x0
RWW_STOP_ADDR	= 0x47ff
PAGESIZE	= 64
FIRSTBOOTSTART	= 0x4f00
SECONDBOOTSTART	= 0x4e00
THIRDBOOTSTART	= 0x4c00
FOURTHBOOTSTART	= 0x4800
SMALLBOOTSTART	= FIRSTBOOTSTART
LARGEBOOTSTART	= FOURTHBOOTSTART



; ***** INTERRUPT VECTORS ************************************************
BPINTaddr	= 0x0002	; Battery Protection Interrupt
INT0addr	= 0x0004	; External Interrupt Request 0
INT1addr	= 0x0006	; External Interrupt Request 1
INT2addr	= 0x0008	; External Interrupt Request 2
INT3addr	= 0x000a	; External Interrupt Request 3
PCI0addr	= 0x000c	; Pin Change Interrupt 0
PCI1addr	= 0x000e	; Pin Change Interrupt 1
WDTaddr	= 0x0010	; Watchdog Timeout Interrupt
WUTaddr	= 0x0012	; Wakeup timer overflow
OC1addr	= 0x0014	; Timer/Counter 1 Compare Match
OVF1addr	= 0x0016	; Timer/Counter 1 Overflow
OC0Aaddr	= 0x0018	; Timer/Counter0 Compare A Match
OC0Baddr	= 0x001a	; Timer/Counter0 Compare B Match
OVF0addr	= 0x001c	; Timer/Counter0 Overflow
TWICDaddr	= 0x001e	; Two-Wire Bus Connect/Disconnect
TWIaddr	= 0x0020	; Two-Wire Serial Interface
VADCaddr	= 0x0022	; Voltage ADC Conversion Complete
CADICaddr	= 0x0024	; Coulomb Counter ADC Conversion Complete
CADRCaddr	= 0x0026	; Coloumb Counter ADC Regular Current
CADACaddr	= 0x0028	; Coloumb Counter ADC Accumulator
ERDYaddr	= 0x002a	; EEPROM Ready
SPMRaddr	= 0x002c	; Store Program Memory Ready

INT_VECTORS_SIZE	= 46	; size in words


; ***** END OF FILE ******************************************************
