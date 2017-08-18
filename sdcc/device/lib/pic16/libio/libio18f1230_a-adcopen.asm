;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:25:25 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f1230

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_adc_open

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_OVDCONSbits
	extern	_OVDCONDbits
	extern	_DTCONbits
	extern	_PWMCON1bits
	extern	_PWMCON0bits
	extern	_LATAbits
	extern	_LATBbits
	extern	_FLTCONFIGbits
	extern	_DDRAbits
	extern	_TRISAbits
	extern	_DDRBbits
	extern	_TRISBbits
	extern	_PTCON1bits
	extern	_PTCON0bits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_PIE3bits
	extern	_PIR3bits
	extern	_IPR3bits
	extern	_EECON1bits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_BAUDCONbits
	extern	_BAUDCTLbits
	extern	_ADCON2bits
	extern	_ADCON1bits
	extern	_ADCON0bits
	extern	_T1CONbits
	extern	_RCONbits
	extern	_WDTCONbits
	extern	_LVDCONbits
	extern	_OSCCONbits
	extern	_T0CONbits
	extern	_STATUSbits
	extern	_INTCON3bits
	extern	_INTCON2bits
	extern	_INTCONbits
	extern	_STKPTRbits
	extern	_PORTA
	extern	_PORTB
	extern	_OVDCONS
	extern	_OVDCOND
	extern	_DTCON
	extern	_PWMCON1
	extern	_PWMCON0
	extern	_SEVTCMPH
	extern	_SEVTCMPL
	extern	_LATA
	extern	_LATB
	extern	_FLTCONFIG
	extern	_PDC2H
	extern	_PDC2L
	extern	_PDC1H
	extern	_PDC1L
	extern	_PDC0H
	extern	_PDC0L
	extern	_DDRA
	extern	_TRISA
	extern	_DDRB
	extern	_TRISB
	extern	_PTPERH
	extern	_PTPERL
	extern	_PTMRH
	extern	_PTMRL
	extern	_PTCON1
	extern	_PTCON0
	extern	_OSCTUNE
	extern	_PIE1
	extern	_PIR1
	extern	_IPR1
	extern	_PIE2
	extern	_PIR2
	extern	_IPR2
	extern	_PIE3
	extern	_PIR3
	extern	_IPR3
	extern	_EECON1
	extern	_EECON2
	extern	_EEDATA
	extern	_EEADR
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_SPBRGH
	extern	_CMCON
	extern	_CVRCON
	extern	_BAUDCON
	extern	_BAUDCTL
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
	extern	_ADRES
	extern	_ADRESL
	extern	_ADRESH
	extern	_T1CON
	extern	_TMR1L
	extern	_TMR1H
	extern	_RCON
	extern	_WDTCON
	extern	_LVDCON
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($4) :
; ;ic:2: 	proc _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
S_adcopen__adc_open	code
_adc_open:
;	.line	42; adc/adcopen.c	adc_open(unsigned char channel, unsigned char fosc, sdcc_pcfg_t pcfg, unsigned char config)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_channel_1_7}[r0x00 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_fosc_1_7}[r0x01 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:5: iTemp2 [k6 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_pcfg_1_7}[r0x02 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:6: iTemp3 [k8 lr6:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x03 ] = recv _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:7: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	48; adc/adcopen.c	ADCON0 = 0;
	CLRF	_ADCON0
; ;ic:8: 	iTemp4 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = iTemp0 [k2 lr3:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_channel_1_7}[r0x00 ] & 0x3 {const-unsigned-char literal}
;	.line	61; adc/adcopen.c	ADCON0 = ((channel & 0x03) << 2);
	MOVLW	0x03
	ANDWF	r0x00, F
; ;ic:9: 	_ADCON0 [k10 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = iTemp4 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] << 0x2 {const-unsigned-char literal}
	RLNCF	r0x00, W
	RLNCF	WREG, W
	ANDLW	0xfc
	MOVWF	_ADCON0
; ;ic:10: 	iTemp6 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x02 ] = iTemp2 [k6 lr5:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_pcfg_1_7}[r0x02 ] & 0xf {const-unsigned-char literal}
;	.line	62; adc/adcopen.c	ADCON1 = (pcfg & 0x0f) | (config & ADC_VCFG_VREF);
	MOVLW	0x0f
	ANDWF	r0x02, F
; ;ic:11: 	iTemp7 [k15 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = iTemp3 [k8 lr6:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x03 ] & 0x10 {const-unsigned-char literal}
	MOVLW	0x10
	ANDWF	r0x03, W
; #	MOVWF	r0x00
; #;;ic:12: 	_ADCON1 [k13 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = iTemp6 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x02 ] | iTemp7 [k15 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ]
; #	MOVF	r0x00, W
	IORWF	r0x02, W
	MOVWF	_ADCON1
; ;ic:13: 	iTemp9 [k18 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x01 ] = iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_fosc_1_7}[r0x01 ] & 0x7f {const-unsigned-char literal}
;	.line	63; adc/adcopen.c	ADCON2 = (fosc & 0x7f) | (config & ADC_FRM_RJUST);
	BCF	r0x01, 7
; ;ic:14: 	iTemp10 [k19 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = iTemp3 [k8 lr6:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x03 ] & 0x80 {const-unsigned-char literal}
	MOVLW	0x80
	ANDWF	r0x03, W
; #	MOVWF	r0x00
; #;;ic:15: 	_ADCON2 [k17 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = iTemp9 [k18 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x01 ] | iTemp10 [k19 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ]
; #	MOVF	r0x00, W
	IORWF	r0x01, W
	MOVWF	_ADCON2
; ;ic:16: 	iTemp12 [k21 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp3 [k8 lr6:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _adc_open_config_1_7}[r0x03 ] & 0x40 {const-unsigned-char literal}
;	.line	103; adc/adcopen.c	if (config & ADC_INT_ON) {
	BTFSS	r0x03, 6
	BRA	_00106_DS_
; ;ic:17: 	if iTemp12 [k21 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_0($2)
; ;ic:18: 	iTemp13 [k23 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_PIR1bits [k22 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000106 fixed}]
; ;ic:19: 	iTemp14 [k25 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp13 [k23 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:20: 	*(iTemp14 [k25 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	104; adc/adcopen.c	PIR1bits.ADIF = 0;
	BCF	_PIR1bits, 6
; ;ic:21: 	iTemp15 [k27 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_PIE1bits [k26 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000103 fixed}]
; ;ic:22: 	iTemp16 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp15 [k27 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:23: 	*(iTemp16 [k29 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	105; adc/adcopen.c	PIE1bits.ADIE = 1;
	BSF	_PIE1bits, 6
; ;ic:24: 	iTemp17 [k31 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_INTCONbits [k30 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000334 fixed}]
; ;ic:25: 	iTemp18 [k33 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp17 [k31 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:26: 	*(iTemp18 [k33 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	106; adc/adcopen.c	INTCONbits.PEIE = 1;
	BSF	_INTCONbits, 6
; ;ic:27:  _iffalse_0($2) :
; ;ic:28: 	iTemp19 [k35 lr28:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_ADCON0bits [k34 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000222 fixed}]
; ;ic:29: 	iTemp20 [k37 lr29:30 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] := iTemp19 [k35 lr28:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]
; ;ic:30: 	*(iTemp20 [k37 lr29:30 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
_00106_DS_:
;	.line	110; adc/adcopen.c	ADCON0bits.ADON = 1;
	BSF	_ADCON0bits, 0
; ;ic:31:  _return($3) :
; ;ic:32: 	eproc _adc_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-char fixed, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  118 (0x0076) bytes ( 0.09%)
;           	   59 (0x003b) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    4 (0x0004) bytes


	end