;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:26:49 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f13k50

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_usart_gets

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
	extern	_usart_drdy
	extern	_usart_getc

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
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
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _usart_gets [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char near* fixed, unsigned-char fixed) fixed}
S_ugets__usart_gets	code
_usart_gets:
;	.line	38; usart/ugets.c	void usart_gets(RAM_SCLS char *buffer, unsigned char len)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp9 [k17 lr3:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x00 r0x01 ] = recv _usart_gets [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_len_1_10}[r0x02 ] = recv _usart_gets [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp11 [k19 lr5:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_i_1_11}[r0x03 ] := 0x0 {const-unsigned-char literal}
;	.line	43; usart/ugets.c	for(i=0;i<len;i++)
	CLRF	r0x03
; ;ic:7:  _forcond_0($6) :
; ;ic:8: 	iTemp3 [k8 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp11 [k19 lr5:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_i_1_11}[r0x03 ] < iTemp1 [k4 lr4:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_len_1_10}[r0x02 ]
_00110_DS_:
	MOVF	r0x02, W
	SUBWF	r0x03, W
	BC	_00114_DS_
; ;ic:9: 	if iTemp3 [k8 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($10)
; ;ic:11:  _whilecontinue_0($1) :
; ;ic:12: 	iTemp4 [k10 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ] = call _usart_drdy [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function ( ) fixed}
_00105_DS_:
;	.line	45; usart/ugets.c	while(!usart_drdy());
	CALL	_usart_drdy
	MOVWF	r0x04
; ;ic:13: 	if iTemp4 [k10 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x04 ] == 0 goto _whilecontinue_0($1)
	MOVF	r0x04, W
	BZ	_00105_DS_
; ;ic:14: 	iTemp5 [k11 lr14:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_dat_1_11}[r0x04 ] = call _usart_getc [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char function ( ) fixed}
;	.line	47; usart/ugets.c	dat = usart_getc();
	CALL	_usart_getc
	MOVWF	r0x04
; ;ic:15: 	*(iTemp9 [k17 lr3:21 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x00 r0x01 ]) := iTemp5 [k11 lr14:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_dat_1_11}[r0x04 ]
;	.line	48; usart/ugets.c	*buffer = dat;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x04, INDF0
; ;ic:16: 	iTemp9 [k17 lr3:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x00 r0x01 ] = iTemp9 [k17 lr3:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x00 r0x01 ] + 0x1 {const-unsigned-char literal}
;	.line	49; usart/ugets.c	buffer++;
	INFSNZ	r0x00, F
	INCF	r0x01, F
; ;ic:17: 	if iTemp5 [k11 lr14:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_dat_1_11}[r0x04 ] != 0 goto _forcontinue_0($8)
; #	MOVF	r0x04, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00112_DS_
; #;;ic:18: 	ret
; #	GOTO	_00114_DS_
; #;;ic:19:  _forcontinue_0($8) :
; #;;ic:20: 	iTemp11 [k19 lr5:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_i_1_11}[r0x03 ] = iTemp11 [k19 lr5:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _usart_gets_i_1_11}[r0x03 ] + 0x1 {const-unsigned-char literal}
; #	INCF	r0x03, F
; #;;ic:21: 	 goto _forcond_0($6)
;	.line	52; usart/ugets.c	if(!dat)return;
	MOVF	r0x04, W
;	.line	43; usart/ugets.c	for(i=0;i<len;i++)
	BZ	_00114_DS_
	INCF	r0x03, F
	BRA	_00110_DS_
; ;ic:22:  _return($10) :
; ;ic:23: 	eproc _usart_gets [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char near* fixed, unsigned-char fixed) fixed}
_00114_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  120 (0x0078) bytes ( 0.09%)
;           	   60 (0x003c) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end
