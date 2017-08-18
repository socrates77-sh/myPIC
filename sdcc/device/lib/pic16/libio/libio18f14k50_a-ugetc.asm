;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:27:23 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f14k50

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_usart_getc

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
	extern	_USART_Status
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
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _usart_getc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function ( ) fixed}
S_ugetc__usart_getc	code
_usart_getc:
; ;ic:3: 	iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat] = &[_USART_Status [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct USART fixed}]
; ;ic:4: 	iTemp4 [k9 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}{ sir@ _USART_Status} = @[iTemp0 [k3 lr3:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
; ;ic:5: 	iTemp5 [k10 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = iTemp4 [k9 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}{ sir@ _USART_Status} & 0xf0 {const-unsigned-char literal}
;	.line	43; usart/ugetc.c	USART_Status.val &= 0xf0;
	MOVLW	0xf0
	BANKSEL	_USART_Status
	ANDWF	_USART_Status, W, B
; #	MOVWF	r0x00
; #;;ic:6: 	*(iTemp0 [k3 lr3:31 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat]) := iTemp5 [k10 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ]
; #	MOVF	r0x00, W
	MOVWF	_USART_Status, B
; ;ic:7: 	iTemp6 [k12 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000281 fixed}]
; ;ic:8: 	iTemp7 [k14 lr8:9 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp6 [k12 lr7:8 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:9: 	iTemp8 [k15 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} fixed}[bad ] = @[iTemp7 [k14 lr8:9 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	45; usart/ugetc.c	if (RCSTAbits.RX9)
	BTFSS	_RCSTAbits, 6
	BRA	_00108_DS_
; ;ic:10: 	if iTemp8 [k15 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} fixed}[bad ] == 0 goto _iffalse_1($4)
; ;ic:11: 	iTemp10 [k18 lr11:12 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat]
; ;ic:12: 	*(iTemp10 [k18 lr11:12 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
; #	BCF	_USART_Status, 0, B
; #;;ic:13: 	iTemp11 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000281 fixed}]
; #;;ic:14: 	iTemp12 [k21 lr14:15 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] := iTemp11 [k19 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat]
; #;;ic:15: 	iTemp13 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} fixed}[bad ] = @[iTemp12 [k21 lr14:15 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
; #	BTFSS	_RCSTAbits, 0
; #	GOTO	_00108_DS_
; #;;ic:16: 	if iTemp13 [k22 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,1} fixed}[bad ] == 0 goto _iffalse_1($4)
; #;;ic:17: 	iTemp15 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat]
; #;;ic:18: 	*(iTemp15 [k25 lr17:18 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {0,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
; #	BSF	_USART_Status, 0, B
; #;;ic:19:  _iffalse_1($4) :
; #;;ic:20: 	iTemp16 [k26 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000281 fixed}]
; #;;ic:21: 	iTemp17 [k28 lr21:22 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] := iTemp16 [k26 lr20:21 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]
; #;;ic:22: 	iTemp18 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[bad ] = @[iTemp17 [k28 lr21:22 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
; #	BTFSS	_RCSTAbits, 2
; removed redundant BANKSEL
;	.line	47; usart/ugetc.c	USART_Status.RX_NINE = 0;
	BCF	_USART_Status, 0, B
;	.line	48; usart/ugetc.c	if (RCSTAbits.RX9D)
	BTFSS	_RCSTAbits, 0
	BRA	_10105_DS_
; removed redundant BANKSEL
;	.line	50; usart/ugetc.c	USART_Status.RX_NINE = 1;
	BSF	_USART_Status, 0, B
_10105_DS_:
_00108_DS_:
;	.line	54; usart/ugetc.c	if (RCSTAbits.FERR)
	BTFSS	_RCSTAbits, 2
	BRA	_00110_DS_
; ;ic:23: 	if iTemp18 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} fixed}[bad ] == 0 goto _iffalse_2($6)
; ;ic:24: 	iTemp20 [k32 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat]
; ;ic:25: 	*(iTemp20 [k32 lr24:25 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {2,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
	BANKSEL	_USART_Status
;	.line	55; usart/ugetc.c	USART_Status.FRAME_ERROR = 1;
	BSF	_USART_Status, 2, B
; ;ic:26:  _iffalse_2($6) :
; ;ic:27: 	iTemp21 [k33 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] = &[_RCSTAbits [k11 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000281 fixed}]
; ;ic:28: 	iTemp22 [k35 lr28:29 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] := iTemp21 [k33 lr27:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat]
; ;ic:29: 	iTemp23 [k36 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} fixed}[bad ] = @[iTemp22 [k35 lr28:29 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
_00110_DS_:
;	.line	57; usart/ugetc.c	if (RCSTAbits.OERR)
	BTFSS	_RCSTAbits, 1
	BRA	_00112_DS_
; ;ic:30: 	if iTemp23 [k36 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {1,1} fixed}[bad ] == 0 goto _iffalse_3($8)
; ;ic:31: 	iTemp25 [k39 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {3,1} near* fixed}[remat] := iTemp0 [k3 lr3:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-char near* fixed}[remat]
; ;ic:32: 	*(iTemp25 [k39 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-bitfield {3,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
	BANKSEL	_USART_Status
;	.line	58; usart/ugetc.c	USART_Status.OVERRUN_ERROR = 1;
	BSF	_USART_Status, 3, B
; ;ic:33:  _iffalse_3($8) :
; ;ic:34: 	ret _RCREG [k40 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr}
_00112_DS_:
;	.line	60; usart/ugetc.c	return (RCREG);
	MOVF	_RCREG, W
; ;ic:35:  _return($9) :
; ;ic:36: 	eproc _usart_getc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function ( ) fixed}
	RETURN	



; Statistics:
; code size:	   40 (0x0028) bytes ( 0.03%)
;           	   20 (0x0014) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end