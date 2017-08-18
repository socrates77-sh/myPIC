;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:27:52 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2220

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_i2c_writechar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_PORTCbits
	extern	_LATAbits
	extern	_LATBbits
	extern	_LATCbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TRISCbits
	extern	_OSCTUNEbits
	extern	_PIE1bits
	extern	_PIR1bits
	extern	_IPR1bits
	extern	_PIE2bits
	extern	_PIR2bits
	extern	_IPR2bits
	extern	_EECON1bits
	extern	_RCSTAbits
	extern	_TXSTAbits
	extern	_T3CONbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_CCP2CONbits
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
	extern	_PORTC
	extern	_LATA
	extern	_LATB
	extern	_LATC
	extern	_TRISA
	extern	_TRISB
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
	extern	_RCSTA
	extern	_TXSTA
	extern	_TXREG
	extern	_RCREG
	extern	_SPBRG
	extern	_T3CON
	extern	_TMR3L
	extern	_TMR3H
	extern	_CMCON
	extern	_CVRCON
	extern	_CCP2CON
	extern	_CCPR2L
	extern	_CCPR2H
	extern	_CCP1CON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_ADCON2
	extern	_ADCON1
	extern	_ADCON0
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
	extern	_PRODL
	extern	_PRODH
	extern	_TABLAT
	extern	_TBLPTRL
	extern	_TBLPTRH
	extern	_TBLPTRU
	extern	_PCL
	extern	_PCLATH
	extern	_PCLATU
	extern	_STKPTR
	extern	_TOSL
	extern	_TOSH
	extern	_TOSU

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _i2c_writechar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
S_i2cwritec__i2c_writechar	code
_i2c_writechar:
;	.line	32; i2c/i2cwritec.c	char i2c_writechar(unsigned char dat)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _i2c_writechar_dat_1_14}[r0x00 ] = recv _i2c_writechar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_SSPCON1bits [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000116 fixed}]
; ;ic:5: 	iTemp2 [k7 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] := iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]
; ;ic:6: 	*(iTemp2 [k7 lr5:6 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	34; i2c/i2cwritec.c	SSPCON1bits.WCOL = 0;
	BCF	_SSPCON1bits, 7
; ;ic:7: 	_SSPBUF [k8 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _i2c_writechar_dat_1_14}[r0x00 ]
;	.line	35; i2c/i2cwritec.c	SSPBUF = dat;
	MOVFF	r0x00, _SSPBUF
; ;ic:8: 	iTemp3 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_SSPCON1bits [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000116 fixed}]
; ;ic:9: 	iTemp4 [k11 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] := iTemp3 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]
; ;ic:10: 	iTemp5 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[bad ] = @[iTemp4 [k11 lr9:10 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	36; i2c/i2cwritec.c	if( SSPCON1bits.WCOL ) {
	BTFSS	_SSPCON1bits, 7
	BRA	_00105_DS_
; ;ic:11: 	if iTemp5 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[bad ] == 0 goto _docontinue_0($1)
; ;ic:12: 	ret 0xffffffff {const-char literal}
;	.line	37; i2c/i2cwritec.c	return -1;
	SETF	WREG
	BRA	_00110_DS_
; ;ic:14:  _docontinue_0($1) :
; ;ic:15: 	iTemp6 [k14 lr15:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = _SSPCON2 [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} & 0x1f {const-unsigned-char literal}
_00105_DS_:
;	.line	39; i2c/i2cwritec.c	I2C_IDLE();
	MOVLW	0x1f
	ANDWF	_SSPCON2, W
	MOVWF	r0x00
; ;ic:16: 	iTemp7 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_SSPSTATbits [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000118 fixed}]
; ;ic:17: 	iTemp8 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] := iTemp7 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]
; ;ic:18: 	iTemp9 [k19 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x01 ] = @[iTemp8 [k18 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
	CLRF	r0x01
	BTFSC	_SSPSTATbits, 2
	INCF	r0x01, F
; ;ic:19: 	iTemp10 [k20 lr19:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] = (char register)iTemp6 [k14 lr15:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ]
; ;ic:20: 	iTemp11 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x01 ] = (char register)iTemp9 [k19 lr18:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[r0x01 ]
; ;ic:21: 	iTemp12 [k22 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] = iTemp10 [k20 lr19:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] | iTemp11 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x01 ]
	MOVF	r0x01, W
	IORWF	r0x00, F
; ;ic:22: 	if iTemp12 [k22 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] != 0 goto _docontinue_0($1)
	MOVF	r0x00, W
	BNZ	_00105_DS_
; ;ic:23: 	ret 0x0 {const-unsigned-char literal}
;	.line	40; i2c/i2cwritec.c	return 0;
	CLRF	WREG
; ;ic:24:  _return($6) :
; ;ic:25: 	eproc _i2c_writechar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
_00110_DS_:
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	   72 (0x0048) bytes ( 0.05%)
;           	   36 (0x0024) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    2 (0x0002) bytes


	end
