;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:27:47 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2220

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_i2c_readstr

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
	extern	_i2c_readchar

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
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
; ;ic:1:  _entry($18) :
; ;ic:2: 	proc _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char near* fixed, unsigned-char fixed) fixed}
S_i2creads__i2c_readstr	code
_i2c_readstr:
;	.line	33; i2c/i2creads.c	char i2c_readstr(_I2CPARAM_SPEC unsigned char *ptr, unsigned char len)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp6 [k11 lr3:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x00 r0x01 ] = recv _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp4 [k9 lr4:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ] = recv _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp2 [k6 lr5:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _i2c_readstr_count_1_15}[r0x03 ] := 0x0 {const-unsigned-char literal}
;	.line	35; i2c/i2creads.c	unsigned char count=0;
	CLRF	r0x03
; ;ic:7:  _whilecontinue_0($14) :
; ;ic:8: 	iTemp3 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char fixed}[r0x04 ] := iTemp4 [k9 lr4:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ]
_00118_DS_:
;	.line	37; i2c/i2creads.c	while( len-- ) {
	MOVFF	r0x02, r0x04
; ;ic:9: 	iTemp4 [k9 lr4:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ] = iTemp4 [k9 lr4:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ] - 0x1 {const-unsigned-char literal}
	DECF	r0x02, F
; ;ic:10: 	if iTemp3 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char fixed}[r0x04 ] == 0 goto _whilebreak_0($16)
	MOVF	r0x04, W
	BZ	_00120_DS_
; ;ic:11: 	iTemp7 [k13 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ] = call _i2c_readchar [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function ( ) fixed}
;	.line	38; i2c/i2creads.c	*ptr++ = i2c_readchar();
	CALL	_i2c_readchar
	MOVWF	r0x04
; ;ic:12: 	*(iTemp6 [k11 lr3:42 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x00 r0x01 ]) := iTemp7 [k13 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
; ;ic:13: 	iTemp6 [k11 lr3:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x00 r0x01 ] = iTemp6 [k11 lr3:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x00 r0x01 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x00, F
	INCF	r0x01, F
; ;ic:14: 	iTemp15 [k25 lr14:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ] := iTemp2 [k6 lr5:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _i2c_readstr_count_1_15}[r0x03 ]
;	.line	40; i2c/i2creads.c	while(SSPCON2bits.RCEN) {
	MOVFF	r0x03, r0x04
; ;ic:16:  _whilecontinue_1($11) :
; ;ic:17: 	iTemp8 [k15 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000114 fixed}]
; ;ic:18: 	iTemp9 [k17 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp8 [k15 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:19: 	iTemp10 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] = @[iTemp9 [k17 lr18:19 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00115_DS_:
	BTFSS	_SSPCON2bits, 3
	BRA	_00118_DS_
; ;ic:20: 	if iTemp10 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] == 0 goto _whilecontinue_0($14)
; ;ic:21: 	iTemp11 [k20 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_PIR2bits [k19 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000058 fixed}]
; ;ic:22: 	iTemp12 [k22 lr22:23 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp11 [k20 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:23: 	iTemp13 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] = @[iTemp12 [k22 lr22:23 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	41; i2c/i2creads.c	if(PIR2bits.BCLIF)return (-1);
	BTFSS	_PIR2bits, 3
	BRA	_00106_DS_
; ;ic:24: 	if iTemp13 [k23 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} fixed}[bad ] == 0 goto _iffalse_0($2)
; ;ic:25: 	ret 0xffffffff {const-char literal}
	SETF	WREG
	BRA	_00121_DS_
; ;ic:26:  _iffalse_0($2) :
; ;ic:27: 	iTemp15 [k25 lr14:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ] = iTemp15 [k25 lr14:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ] + 0x1 {const-unsigned-char literal}
_00106_DS_:
;	.line	42; i2c/i2creads.c	count++;
	INCF	r0x04, F
; ;ic:28: 	iTemp2 [k6 lr5:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _i2c_readstr_count_1_15}[r0x03 ] := iTemp15 [k25 lr14:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ]
	MOVFF	r0x04, r0x03
; ;ic:29: 	if iTemp4 [k9 lr4:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ] == 0 goto _whilecontinue_1($11)
;	.line	44; i2c/i2creads.c	if(len) {
	MOVF	r0x02, W
	BZ	_00115_DS_
; ;ic:30: 	iTemp16 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000114 fixed}]
; ;ic:31: 	iTemp17 [k28 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] := iTemp16 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]
; ;ic:32: 	*(iTemp17 [k28 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
;	.line	45; i2c/i2creads.c	I2C_ACK();
	BCF	_SSPCON2bits, 5
; ;ic:33: 	iTemp18 [k29 lr33:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000114 fixed}]
; ;ic:34: 	iTemp19 [k31 lr34:35 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp18 [k29 lr33:34 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:35: 	*(iTemp19 [k31 lr34:35 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
	BSF	_SSPCON2bits, 4
; ;ic:37:  _whilecontinue_2($6) :
; ;ic:38: 	iTemp20 [k32 lr38:39 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_SSPCON2bits [k14 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000114 fixed}]
; ;ic:39: 	iTemp21 [k34 lr39:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp20 [k32 lr38:39 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:40: 	iTemp22 [k35 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[bad ] = @[iTemp21 [k34 lr39:40 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00110_DS_:
;	.line	46; i2c/i2creads.c	while(SSPCON2bits.ACKEN);
	BTFSC	_SSPCON2bits, 4
	BRA	_00110_DS_
; ;ic:41: 	if iTemp22 [k35 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} fixed}[bad ] != 0 goto _whilecontinue_2($6)
; ;ic:42: 	 goto _whilecontinue_1($11)
	BRA	_00115_DS_
; ;ic:43:  _whilebreak_0($16) :
; ;ic:44: 	ret iTemp2 [k6 lr5:44 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _i2c_readstr_count_1_15}[r0x03 ]
_00120_DS_:
;	.line	51; i2c/i2creads.c	return count;
	MOVF	r0x03, W
; ;ic:45:  _return($17) :
; ;ic:46: 	eproc _i2c_readstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char near* fixed, unsigned-char fixed) fixed}
_00121_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  144 (0x0090) bytes ( 0.11%)
;           	   72 (0x0048) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
