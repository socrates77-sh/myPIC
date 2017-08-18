;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:26:15 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f1330

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_usart_open

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
	extern	_USART_Status
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-int fixed) fixed}
S_uopen__usart_open	code
_usart_open:
;	.line	42; usart/uopen.c	usart_open (unsigned char config, sdcc_spbrg_t spbrg) __wparam
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] = recv _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-int fixed) fixed}
	MOVWF	r0x00
; ;ic:4: iTemp1 [k4 lr4:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _usart_open_spbrg_1_10}[r0x01 r0x02 ] = recv _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x01
	MOVLW	0x03
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	_TXSTA [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
;	.line	44; usart/uopen.c	TXSTA = 0;           // Reset USART registers to POR state
	CLRF	_TXSTA
; ;ic:6: 	_RCSTA [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} := 0x0 {const-unsigned-char literal}
; #	CLRF	_RCSTA
; #;;ic:7: 	iTemp2 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x1 {const-unsigned-char literal}
; #	BTFSS	r0x00, 0
; #	GOTO	_00106_DS_
; #;;ic:8: 	if iTemp2 [k8 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_0($2)
; #;;ic:9: 	iTemp3 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000173 fixed}]
; #;;ic:10: 	iTemp4 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp3 [k10 lr9:10 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; #;;ic:11: 	*(iTemp4 [k12 lr10:11 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
; #	BSF	_TXSTAbits, 4
; #;;ic:12:  _iffalse_0($2) :
; #;;ic:13: 	iTemp5 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x2 {const-unsigned-char literal}
; #	BTFSS	r0x00, 1
;	.line	45; usart/uopen.c	RCSTA = 0;
	CLRF	_RCSTA
;	.line	47; usart/uopen.c	if (config & 0x01)
	BTFSC	r0x00, 0
;	.line	48; usart/uopen.c	TXSTAbits.SYNC = 1;
	BSF	_TXSTAbits, 4
;	.line	50; usart/uopen.c	if (config & 0x02)
	BTFSS	r0x00, 1
	BRA	_00108_DS_
; ;ic:14: 	if iTemp5 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_1($4)
; ;ic:15: 	iTemp6 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000173 fixed}]
; ;ic:16: 	iTemp7 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp6 [k14 lr15:16 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:17: 	*(iTemp7 [k16 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	52; usart/uopen.c	TXSTAbits.TX9 = 1;
	BSF	_TXSTAbits, 6
; ;ic:18: 	iTemp8 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000163 fixed}]
; ;ic:19: 	iTemp9 [k20 lr19:20 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat] := iTemp8 [k18 lr18:19 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]
; ;ic:20: 	*(iTemp9 [k20 lr19:20 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {6,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	53; usart/uopen.c	RCSTAbits.RX9 = 1;
	BSF	_RCSTAbits, 6
; ;ic:21:  _iffalse_1($4) :
; ;ic:22: 	iTemp10 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x4 {const-unsigned-char literal}
_00108_DS_:
;	.line	56; usart/uopen.c	if (config & 0x04)
	BTFSS	r0x00, 2
	BRA	_00110_DS_
; ;ic:23: 	if iTemp10 [k21 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_2($6)
; ;ic:24: 	iTemp11 [k22 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000173 fixed}]
; ;ic:25: 	iTemp12 [k24 lr25:26 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] := iTemp11 [k22 lr24:25 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]
; ;ic:26: 	*(iTemp12 [k24 lr25:26 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	57; usart/uopen.c	TXSTAbits.CSRC = 1;
	BSF	_TXSTAbits, 7
; ;ic:27:  _iffalse_2($6) :
; ;ic:28: 	iTemp13 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x8 {const-unsigned-char literal}
_00110_DS_:
;	.line	59; usart/uopen.c	if (config & 0x08)
	BTFSS	r0x00, 3
	BRA	_00112_DS_
; ;ic:29: 	if iTemp13 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_3($8)
; ;ic:30: 	iTemp14 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000163 fixed}]
; ;ic:31: 	iTemp15 [k28 lr31:32 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp14 [k26 lr30:31 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:32: 	*(iTemp15 [k28 lr31:32 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	60; usart/uopen.c	RCSTAbits.CREN = 1;
	BSF	_RCSTAbits, 4
; ;ic:33: 	 goto _ifend_3($9)
	BRA	_00113_DS_
; ;ic:34:  _iffalse_3($8) :
; ;ic:35: 	iTemp16 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000163 fixed}]
; ;ic:36: 	iTemp17 [k31 lr36:37 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] := iTemp16 [k29 lr35:36 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]
; ;ic:37: 	*(iTemp17 [k31 lr36:37 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
_00112_DS_:
;	.line	62; usart/uopen.c	RCSTAbits.SREN = 1;
	BSF	_RCSTAbits, 5
; ;ic:38:  _ifend_3($9) :
; ;ic:39: 	iTemp18 [k32 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x10 {const-unsigned-char literal}
_00113_DS_:
;	.line	64; usart/uopen.c	if (config & 0x10)
	BTFSS	r0x00, 4
	BRA	_00115_DS_
; ;ic:40: 	if iTemp18 [k32 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_4($11)
; ;ic:41: 	iTemp19 [k33 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000173 fixed}]
; ;ic:42: 	iTemp20 [k35 lr42:43 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] := iTemp19 [k33 lr41:42 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]
; ;ic:43: 	*(iTemp20 [k35 lr42:43 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	66; usart/uopen.c	TXSTAbits.BRGH = 1;
	BSF	_TXSTAbits, 2
; ;ic:44: 	iTemp21 [k37 lr44:45 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_BAUDCONbits [k36 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000190 fixed}]
; ;ic:45: 	iTemp22 [k39 lr45:46 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp21 [k37 lr44:45 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:46: 	*(iTemp22 [k39 lr45:46 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	68; usart/uopen.c	BAUDCONbits.BRG16 = 1;
	BSF	_BAUDCONbits, 3
; ;ic:47: 	 goto _ifend_4($12)
	BRA	_00116_DS_
; ;ic:48:  _iffalse_4($11) :
; ;ic:49: 	iTemp23 [k40 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_BAUDCONbits [k36 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000190 fixed}]
; ;ic:50: 	iTemp24 [k42 lr50:51 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp23 [k40 lr49:50 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:51: 	*(iTemp24 [k42 lr50:51 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00115_DS_:
;	.line	72; usart/uopen.c	BAUDCONbits.BRG16 = 0;
	BCF	_BAUDCONbits, 3
; ;ic:52:  _ifend_4($12) :
; ;ic:53: 	iTemp25 [k44 lr53:54 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PIR1bits [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000106 fixed}]
; ;ic:54: 	iTemp26 [k46 lr54:55 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp25 [k44 lr53:54 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:55: 	*(iTemp26 [k46 lr54:55 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00116_DS_:
;	.line	87; usart/uopen.c	PIR1bits.TXIF = 0;
	BCF	_PIR1bits, 4
; ;ic:56: 	iTemp27 [k47 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x40 {const-unsigned-char literal}
;	.line	91; usart/uopen.c	if (config & 0x40)
	BTFSS	r0x00, 6
	BRA	_00118_DS_
; ;ic:57: 	if iTemp27 [k47 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_5($14)
; ;ic:58: 	iTemp28 [k49 lr58:59 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PIE1bits [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000103 fixed}]
; ;ic:59: 	iTemp29 [k51 lr59:60 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] := iTemp28 [k49 lr58:59 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]
; ;ic:60: 	*(iTemp29 [k51 lr59:60 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	92; usart/uopen.c	PIE1bits.RCIE = 1;
	BSF	_PIE1bits, 5
; ;ic:61: 	 goto _ifend_5($15)
	BRA	_00119_DS_
; ;ic:62:  _iffalse_5($14) :
; ;ic:63: 	iTemp30 [k52 lr63:64 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PIE1bits [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000103 fixed}]
; ;ic:64: 	iTemp31 [k54 lr64:65 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] := iTemp30 [k52 lr63:64 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]
; ;ic:65: 	*(iTemp31 [k54 lr64:65 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00118_DS_:
;	.line	94; usart/uopen.c	PIE1bits.RCIE = 0;
	BCF	_PIE1bits, 5
; ;ic:66:  _ifend_5($15) :
; ;ic:67: 	iTemp32 [k55 lr67:68 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_PIR1bits [k43 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000106 fixed}]
; ;ic:68: 	iTemp33 [k57 lr68:69 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] := iTemp32 [k55 lr67:68 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]
; ;ic:69: 	*(iTemp33 [k57 lr68:69 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00119_DS_:
;	.line	97; usart/uopen.c	PIR1bits.RCIF = 0;
	BCF	_PIR1bits, 5
; ;ic:70: 	iTemp34 [k58 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp0 [k2 lr3:70 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_open_config_1_10}[r0x00 ] & 0x80 {const-unsigned-char literal}
;	.line	112; usart/uopen.c	if (config & 0x80)
	BTFSS	r0x00, 7
	BRA	_00121_DS_
; ;ic:71: 	if iTemp34 [k58 lr70:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _iffalse_6($17)
; ;ic:72: 	iTemp35 [k59 lr72:73 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PIE1bits [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000103 fixed}]
; ;ic:73: 	iTemp36 [k61 lr73:74 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp35 [k59 lr72:73 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:74: 	*(iTemp36 [k61 lr73:74 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	113; usart/uopen.c	PIE1bits.TXIE = 1;
	BSF	_PIE1bits, 4
; ;ic:75: 	 goto _ifend_6($18)
	BRA	_00122_DS_
; ;ic:76:  _iffalse_6($17) :
; ;ic:77: 	iTemp37 [k62 lr77:78 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] = &[_PIE1bits [k48 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000103 fixed}]
; ;ic:78: 	iTemp38 [k64 lr78:79 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat] := iTemp37 [k62 lr77:78 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]
; ;ic:79: 	*(iTemp38 [k64 lr78:79 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {4,1} near* fixed}[remat]) := 0x0 {const-unsigned-char literal}
_00121_DS_:
;	.line	115; usart/uopen.c	PIE1bits.TXIE = 0;
	BCF	_PIE1bits, 4
; ;ic:80:  _ifend_6($18) :
; ;ic:81: 	iTemp39 [k66 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x00 r0x03 ] = iTemp1 [k4 lr4:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _usart_open_spbrg_1_10}[r0x01 r0x02 ] >> 0x8 {const-unsigned-char literal}
_00122_DS_:
;	.line	120; usart/uopen.c	SPBRGH = (spbrg >> 8);
	MOVF	r0x02, W
; ;ic:82: 	_SPBRGH [k65 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = (volatile-unsigned-char sfr)iTemp39 [k66 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x00 r0x03 ]
	MOVWF	_SPBRGH
; ;ic:83: 	_SPBRG [k68 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char sfr} = (volatile-unsigned-char sfr)iTemp1 [k4 lr4:83 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _usart_open_spbrg_1_10}[r0x01 r0x02 ]
;	.line	122; usart/uopen.c	SPBRG = spbrg;
	MOVF	r0x01, W
	MOVWF	_SPBRG
; ;ic:84: 	iTemp42 [k71 lr84:85 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] = &[_TRISAbits [k70 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000083 fixed}]
; ;ic:85: 	iTemp43 [k73 lr85:86 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat] := iTemp42 [k71 lr84:85 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]
; ;ic:86: 	*(iTemp43 [k73 lr85:86 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {2,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	134; usart/uopen.c	TRISAbits.TRISA2 = 1;
	BSF	_TRISAbits, 2
; ;ic:87: 	iTemp44 [k74 lr87:88 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] = &[_TRISAbits [k70 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000083 fixed}]
; ;ic:88: 	iTemp45 [k76 lr88:89 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat] := iTemp44 [k74 lr87:88 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]
; ;ic:89: 	*(iTemp45 [k76 lr88:89 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {3,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	135; usart/uopen.c	TRISAbits.TRISA3 = 1;
	BSF	_TRISAbits, 3
; ;ic:90: 	iTemp46 [k77 lr90:91 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] = &[_TXSTAbits [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000173 fixed}]
; ;ic:91: 	iTemp47 [k79 lr91:92 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat] := iTemp46 [k77 lr90:91 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]
; ;ic:92: 	*(iTemp47 [k79 lr91:92 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {5,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	164; usart/uopen.c	TXSTAbits.TXEN = 1;
	BSF	_TXSTAbits, 5
; ;ic:93: 	iTemp48 [k80 lr93:94 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] = &[_RCSTAbits [k17 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-struct __00000163 fixed}]
; ;ic:94: 	iTemp49 [k82 lr94:95 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat] := iTemp48 [k80 lr93:94 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]
; ;ic:95: 	*(iTemp49 [k82 lr94:95 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[remat]) := 0x1 {const-unsigned-char literal}
;	.line	165; usart/uopen.c	RCSTAbits.SPEN = 1;
	BSF	_RCSTAbits, 7
; ;ic:96:  _return($19) :
; ;ic:97: 	eproc _usart_open [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char fixed, unsigned-int fixed) fixed}
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  136 (0x0088) bytes ( 0.10%)
;           	   68 (0x0044) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    3 (0x0003) bytes


	end
