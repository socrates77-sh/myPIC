;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:26:41 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f13k50

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_i2c_writestr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
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
	extern	_i2c_writechar

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


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
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _i2c_writestr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char generic* fixed) fixed}
S_i2cwrites__i2c_writestr	code
_i2c_writestr:
;	.line	32; i2c/i2cwrites.c	char i2c_writestr(unsigned char *ptr)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp35 [k54 lr3:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] = recv _i2c_writestr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5:  _whilecontinue_0($16) :
; ;ic:6: 	iTemp2 [k5 lr6:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ] = @[iTemp35 [k54 lr3:56 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00120_DS_:
;	.line	34; i2c/i2cwrites.c	while( *ptr ) {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
; ;ic:7: 	if iTemp2 [k5 lr6:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ] == 0 goto _whilebreak_0($18)
	MOVF	r0x03, W
	BZ	_00122_DS_
; ;ic:8: 	iTemp3 [k7 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_SSPCON1bits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000402 fixed}]
; ;ic:9: 	iTemp4 [k9 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp3 [k7 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:10: 	iTemp5 [k10 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] = @[iTemp4 [k9 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	35; i2c/i2cwrites.c	if( SSPCON1bits.SSPM3 ) {
	BTFSS	_SSPCON1bits, 3
	BRA	_00118_DS_
; ;ic:11: 	if iTemp5 [k10 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] == 0 goto _iffalse_3($14)
; ;ic:12: 	send iTemp2 [k5 lr6:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ]{argreg = 1}
; ;ic:13: 	iTemp8 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x03 ] = call _i2c_writechar [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
;	.line	36; i2c/i2cwrites.c	if(i2c_writechar( *ptr )) {
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_i2c_writechar
	MOVWF	r0x03
	MOVF	POSTINC1, F
; ;ic:14: 	if iTemp8 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x03 ] == 0 goto _docontinue_0($3)
	MOVF	r0x03, W
	BZ	_00107_DS_
; ;ic:15: 	ret 0xfffffffd {const-char literal}
;	.line	37; i2c/i2cwrites.c	return (-3);
	MOVLW	0xfd
	BRA	_00123_DS_
; ;ic:17:  _docontinue_0($3) :
; ;ic:18: 	iTemp9 [k17 lr18:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ] = _SSPCON2 [k16 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0x1f {const-unsigned-char literal}
_00107_DS_:
;	.line	39; i2c/i2cwrites.c	I2C_IDLE();
	MOVLW	0x1f
	ANDWF	_SSPCON2, W
	MOVWF	r0x03
; ;ic:19: 	iTemp10 [k19 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_SSPSTATbits [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000404 fixed}]
; ;ic:20: 	iTemp11 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] := iTemp10 [k19 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]
; ;ic:21: 	iTemp12 [k22 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x04 ] = @[iTemp11 [k21 lr20:21 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	CLRF	r0x04
	BTFSC	_SSPSTATbits, 2
	INCF	r0x04, F
; ;ic:22: 	iTemp13 [k23 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] = (char register)iTemp9 [k17 lr18:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ]
; ;ic:23: 	iTemp14 [k24 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x04 ] = (char register)iTemp12 [k22 lr21:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x04 ]
; ;ic:24: 	iTemp15 [k25 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] = iTemp13 [k23 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] | iTemp14 [k24 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x04 ]
	MOVF	r0x04, W
	IORWF	r0x03, F
; ;ic:25: 	if iTemp15 [k25 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] != 0 goto _docontinue_0($3)
	MOVF	r0x03, W
	BNZ	_00107_DS_
; ;ic:26: 	iTemp16 [k27 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_SSPCON2bits [k26 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000400 fixed}]
; ;ic:27: 	iTemp17 [k29 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp16 [k27 lr26:27 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:28: 	iTemp18 [k30 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} fixed}[bad ] = @[iTemp17 [k29 lr27:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	40; i2c/i2cwrites.c	if( SSPCON2bits.ACKSTAT ) {
	BTFSS	_SSPCON2bits, 6
	BRA	_00119_DS_
; ;ic:29: 	if iTemp18 [k30 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} fixed}[bad ] == 0 goto _ifend_3($15)
; ;ic:30: 	ret 0xfffffffe {const-char literal}
;	.line	41; i2c/i2cwrites.c	return (-2);
	MOVLW	0xfe
	BRA	_00123_DS_
; ;ic:31:  _iffalse_3($14) :
; ;ic:32: 	iTemp19 [k32 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_PIR1bits [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000253 fixed}]
; ;ic:33: 	iTemp20 [k34 lr33:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp19 [k32 lr32:33 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:34: 	*(iTemp20 [k34 lr33:34 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00118_DS_:
;	.line	44; i2c/i2cwrites.c	PIR1bits.SSPIF = 0;
	BCF	_PIR1bits, 3
; ;ic:35: 	_SSPBUF [k35 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = @[iTemp35 [k54 lr3:56 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	45; i2c/i2cwrites.c	SSPBUF = *ptr;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	_SSPBUF
; ;ic:36: 	iTemp23 [k38 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_SSPCON1bits [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000402 fixed}]
; ;ic:37: 	iTemp24 [k40 lr37:38 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp23 [k38 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:38: 	*(iTemp24 [k40 lr37:38 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	46; i2c/i2cwrites.c	SSPCON1bits.CKP = 1;
	BSF	_SSPCON1bits, 4
; ;ic:40:  _whilecontinue_1($7) :
; ;ic:41: 	iTemp25 [k41 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_PIR1bits [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000253 fixed}]
; ;ic:42: 	iTemp26 [k43 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp25 [k41 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:43: 	iTemp27 [k44 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] = @[iTemp26 [k43 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00111_DS_:
;	.line	47; i2c/i2cwrites.c	while( !PIR1bits.SSPIF );
	BTFSS	_PIR1bits, 3
	BRA	_00111_DS_
; ;ic:44: 	if iTemp27 [k44 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] == 0 goto _whilecontinue_1($7)
; ;ic:45: 	iTemp28 [k45 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_SSPSTATbits [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000404 fixed}]
; ;ic:46: 	iTemp29 [k47 lr46:47 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] := iTemp28 [k45 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]
; ;ic:47: 	iTemp30 [k48 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[bad ] = @[iTemp29 [k47 lr46:47 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	49; i2c/i2cwrites.c	if((!SSPSTATbits.R_W) && ( !SSPSTATbits.BF )) {
	BTFSC	_SSPSTATbits, 2
	BRA	_00119_DS_
; ;ic:48: 	if iTemp30 [k48 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[bad ] != 0 goto _ifend_3($15)
; ;ic:49: 	iTemp31 [k49 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_SSPSTATbits [k18 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000404 fixed}]
; ;ic:50: 	iTemp32 [k51 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] := iTemp31 [k49 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]
; ;ic:51: 	iTemp33 [k52 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} fixed}[bad ] = @[iTemp32 [k51 lr50:51 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	BTFSC	_SSPSTATbits, 0
	BRA	_00119_DS_
; ;ic:52: 	if iTemp33 [k52 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} fixed}[bad ] != 0 goto _ifend_3($15)
; ;ic:53: 	ret 0xfffffffe {const-char literal}
;	.line	50; i2c/i2cwrites.c	return (-2);
	MOVLW	0xfe
	BRA	_00123_DS_
; ;ic:54:  _ifend_3($15) :
; ;ic:55: 	iTemp35 [k54 lr3:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp35 [k54 lr3:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
_00119_DS_:
;	.line	54; i2c/i2cwrites.c	ptr++;
	INCF	r0x00, F
	BNC	_00120_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:56: 	 goto _whilecontinue_0($16)
_00148_DS_:
	BRA	_00120_DS_
; ;ic:57:  _whilebreak_0($18) :
; ;ic:58: 	ret 0x0 {const-unsigned-char literal}
_00122_DS_:
;	.line	57; i2c/i2cwrites.c	return 0;
	CLRF	WREG
; ;ic:59:  _return($19) :
; ;ic:60: 	eproc _i2c_writestr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char generic* fixed) fixed}
_00123_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  192 (0x00c0) bytes ( 0.15%)
;           	   96 (0x0060) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
