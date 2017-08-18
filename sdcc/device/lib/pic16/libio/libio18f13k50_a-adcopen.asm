;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:26:24 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f13k50

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_adc_open

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_UEP0bits
	extern	_UEP1bits
	extern	_UEP2bits
	extern	_UEP3bits
	extern	_UEP4bits
	extern	_UEP5bits
	extern	_UEP6bits
	extern	_UEP7bits
	extern	_UEIEbits
	extern	_UADDRbits
	extern	_UFRMLbits
	extern	_UFRMHbits
	extern	_UEIRbits
	extern	_UIEbits
	extern	_UCFGbits
	extern	_UIRbits
	extern	_USTATbits
	extern	_UCONbits
	extern	_SRCON0bits
	extern	_SRCON1bits
	extern	_CM2CON0bits
	extern	_CM2CON1bits
	extern	_CM1CON0bits
	extern	_SSPMSKbits
	extern	_SLRCONbits
	extern	_WPUAbits
	extern	_WPUBbits
	extern	_IOCAbits
	extern	_IOCBbits
	extern	_ANSELbits
	extern	_ANSELHbits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_DDRAbits
	extern	_TRISAbits
	extern	_DDRBbits
	extern	_TRISBbits
	extern	_DDRCbits
	extern	_TRISCbits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_EECON1bits
	extern	_EEADRbits
	extern	_EEADRHbits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_T3CONbits
	extern	_ECCP1ASbits
	extern	_PWM1CONbits
	extern	_BAUDCONbits
	extern	_BAUDCTLbits
	extern	_PSTRCONbits
	extern	_REFCON0bits
	extern	_VREFCON0bits
	extern	_REFCON1bits
	extern	_VREFCON1bits
	extern	_REFCON2bits
	extern	_VREFCON2bits
	extern	_CCP1CONbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_SSPCON2bits
	extern	_SSPCON1bits
	extern	_SSPSTATbits
	extern	_T2CONbits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_OSCCON2bits
	extern	_OSCCONbits
	extern	_T0CONbits
	extern	_STATUSbits
	extern	_INTCON3bits
	extern	_INTCON2bits
	extern	_INTCONbits
	extern	_STKPTRbits
	extern	_UEP0
	extern	_UEP1
	extern	_UEP2
	extern	_UEP3
	extern	_UEP4
	extern	_UEP5
	extern	_UEP6
	extern	_UEP7
	extern	_UEIE
	extern	_UADDR
	extern	_UFRML
	extern	_UFRMH
	extern	_UEIR
	extern	_UIE
	extern	_UCFG
	extern	_UIR
	extern	_USTAT
	extern	_UCON
	extern	_SRCON0
	extern	_SRCON1
	extern	_CM2CON0
	extern	_CM2CON1
	extern	_CM1CON0
	extern	_SSPMSK
	extern	_SLRCON
	extern	_WPUA
	extern	_WPUB
	extern	_IOCA
	extern	_IOCB
	extern	_ANSEL
	extern	_ANSELH
	extern	_PORTA
	extern	_PORTB
	extern	_PORTC
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_DDRA
	extern	_TRISA
	extern	_DDRB
	extern	_TRISB
	extern	_DDRC
	extern	_TRISC
	extern	_OSCTUNE
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_EEADRH
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_SPBRGH
	extern	_T3CON
	extern	_TMR3L
	extern	_TMR3H
	extern	_ECCP1AS
	extern	_PWM1CON
	extern	_BAUDCON
	extern	_BAUDCTL
	extern	_PSTRCON
	extern	_REFCON0
	extern	_VREFCON0
	extern	_REFCON1
	extern	_VREFCON1
	extern	_REFCON2
	extern	_VREFCON2
	extern	_CCP1CON
	extern	_CCPR1
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRES
	extern	_ADRESL
	extern	_ADRESH
	extern	_SSPCON2
	extern	_SSPCON1
	extern	_SSPSTAT
	extern	_SSPADD
	extern	_SSPBUF
	extern	_T2CON
	extern	_PR2
	extern	_TMR2
	extern	_T1CON
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_OSCCON2
	extern	_OSCCON
	extern	_T0CON
	extern	_TMR0L
	extern	_TMR0H
	extern	_STATUS
	extern	_FSR2L
	extern	_FSR2H
	extern	_PLUSW2
	extern	_PREINC2
	extern	_POSTDEC2
	extern	_POSTINC2
	extern	_INDF2
	extern	_BSR
	extern	_FSR1L
	extern	_FSR1H
	extern	_PLUSW1
	extern	_PREINC1
	extern	_POSTDEC1
	extern	_POSTINC1
	extern	_INDF1
	extern	_WREG
	extern	_FSR0L
	extern	_FSR0H
	extern	_PLUSW0
	extern	_PREINC0
	extern	_POSTDEC0
	extern	_POSTINC0
	extern	_INDF0
	extern	_INTCON3
	extern	_INTCON2
	extern	_INTCON
	extern	_PROD
	extern	_PRODL
	extern	_PRODH
	extern	_TABLAT
	extern	_TBLPTR
	extern	_TBLPTRL
	extern	_TBLPTRH
	extern	_TBLPTRU
	extern	_PC
	extern	_PCL
	extern	_PCLATH
	extern	_PCLATU
	extern	_STKPTR
	extern	_TOS
	extern	_TOSL
	extern	_TOSH
	extern	_TOSU

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($4) :
; ;ic:2: 	proc _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-int fixed, unsigned-char fixed) fixed}
S_adcopen__adc_open	code
_adc_open:
;	.line	42; adc/adcopen.c	adc_open(unsigned char channel, unsigned char fosc, sdcc_pcfg_t pcfg, unsigned char config)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_channel_1_7}[r0x00 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-int fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_fosc_1_7}[r0x01 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-int fixed, unsigned-char fixed) fixed}
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _adc_open_pcfg_1_7}[r0x02 r0x03 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-int fixed, unsigned-char fixed) fixed}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:6: iTemp3 [k8 lr6:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x04 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-int fixed, unsigned-char fixed) fixed}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
; ;ic:7: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	48; adc/adcopen.c	ADCON0 = 0;
	CLRF	_ADCON0
; ;ic:8: 	_ANSEL [k11 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = (volatile-unsigned-char sfr)iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _adc_open_pcfg_1_7}[r0x02 r0x03 ]
;	.line	65; adc/adcopen.c	ANSEL = pcfg;
	MOVF	r0x02, W
	MOVWF	_ANSEL
; ;ic:9: 	iTemp5 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x02 r0x03 ] = iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _adc_open_pcfg_1_7}[r0x02 r0x03 ] >> 0x8 {const-unsigned-char literal}
;	.line	66; adc/adcopen.c	ANSELH = (pcfg >> 8);
	MOVF	r0x03, W
; ;ic:10: 	_ANSELH [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = (volatile-unsigned-char sfr)iTemp5 [k14 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x02 r0x03 ]
	MOVWF	_ANSELH
; ;ic:11: 	iTemp7 [k16 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_channel_1_7}[r0x00 ] & 0xf {const-unsigned-char literal}
;	.line	67; adc/adcopen.c	ADCON0 = ((channel & 0x0f) << 2);
	MOVLW	0x0f
	ANDWF	r0x00, F
; ;ic:12: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = iTemp7 [k16 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] << 0x2 {const-unsigned-char literal}
	RLNCF	r0x00, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	_ADCON0
; ;ic:13: 	_ADCON1 [k18 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = iTemp3 [k8 lr6:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x04 ] & 0xf {const-unsigned-char literal}
;	.line	68; adc/adcopen.c	ADCON1 = (config & 0x0f);
	MOVLW	0x0f
	ANDWF	r0x04, W
	MOVWF	_ADCON1
; ;ic:14: 	iTemp10 [k21 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = iTemp3 [k8 lr6:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x04 ] & 0x80 {const-unsigned-char literal}
;	.line	69; adc/adcopen.c	ADCON2 = (config & ADC_FRM_RJUST) | (fosc & 0x3f);
	MOVLW	0x80
	ANDWF	r0x04, W
	MOVWF	r0x00
; ;ic:15: 	iTemp11 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x01 ] = iTemp1 [k4 lr4:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_fosc_1_7}[r0x01 ] & 0x3f {const-unsigned-char literal}
	MOVLW	0x3f
	ANDWF	r0x01, F
; ;ic:16: 	_ADCON2 [k20 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = iTemp10 [k21 lr14:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] | iTemp11 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x01 ]
	MOVF	r0x01, W
	IORWF	r0x00, W
	MOVWF	_ADCON2
; ;ic:17: 	iTemp13 [k24 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp3 [k8 lr6:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x04 ] & 0x40 {const-unsigned-char literal}
;	.line	103; adc/adcopen.c	if (config & ADC_INT_ON) {
	BTFSS	r0x04, 6
	BRA	_00106_DS_
; ;ic:18: 	if iTemp13 [k24 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_0($2)
; ;ic:19: 	iTemp14 [k26 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_PIR1bits [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000253 fixed}]
; ;ic:20: 	iTemp15 [k28 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp14 [k26 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:21: 	*(iTemp15 [k28 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	104; adc/adcopen.c	PIR1bits.ADIF = 0;
	BCF	_PIR1bits, 6
; ;ic:22: 	iTemp16 [k30 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_PIE1bits [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000250 fixed}]
; ;ic:23: 	iTemp17 [k32 lr23:24 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp16 [k30 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:24: 	*(iTemp17 [k32 lr23:24 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	105; adc/adcopen.c	PIE1bits.ADIE = 1;
	BSF	_PIE1bits, 6
; ;ic:25: 	iTemp18 [k34 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_INTCONbits [k33 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000499 fixed}]
; ;ic:26: 	iTemp19 [k36 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp18 [k34 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:27: 	*(iTemp19 [k36 lr26:27 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	106; adc/adcopen.c	INTCONbits.PEIE = 1;
	BSF	_INTCONbits, 6
; ;ic:28:  _iffalse_0($2) :
; ;ic:29: 	iTemp20 [k38 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_ADCON0bits [k37 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000372 fixed}]
; ;ic:30: 	iTemp21 [k40 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] := iTemp20 [k38 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]
; ;ic:31: 	*(iTemp21 [k40 lr30:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
_00106_DS_:
;	.line	110; adc/adcopen.c	ADCON0bits.ADON = 1;
	BSF	_ADCON0bits, 0
; ;ic:32:  _return($3) :
; ;ic:33: 	eproc _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-int fixed, unsigned-char fixed) fixed}
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  140 (0x008c) bytes ( 0.11%)
;           	   70 (0x0046) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end