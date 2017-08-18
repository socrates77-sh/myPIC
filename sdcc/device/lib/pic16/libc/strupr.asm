;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:31 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strupr

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1
	extern	_islower

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
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _strupr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed) fixed}
S_strupr__strupr	code
_strupr:
;	.line	33; string/strupr.c	strupr (char *str) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strupr_str_1_37}[r0x00 r0x01 r0x02 ] = recv _strupr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strupr_ret_1_38}[r0x03 r0x04 r0x05 ] := iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strupr_str_1_37}[r0x00 r0x01 r0x02 ]
;	.line	35; string/strupr.c	char *ret = str;
	MOVFF	r0x00, r0x03
	MOVFF	r0x01, r0x04
	MOVFF	r0x02, r0x05
; ;ic:5: 	iTemp14 [k20 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:5 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strupr_str_1_37}[r0x00 r0x01 r0x02 ]
; ;ic:7:  _whilecontinue_0($1) :
; ;ic:8: 	iTemp3 [k7 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp14 [k20 lr5:22 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
;	.line	37; string/strupr.c	while (*str)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:9: 	if iTemp3 [k7 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x06, W
	BZ	_00107_DS_
; ;ic:10: 	iTemp4 [k8 lr10:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] := iTemp14 [k20 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ]
;	.line	39; string/strupr.c	*str = toupper (*str);
	MOVFF	r0x00, r0x07
	MOVFF	r0x01, r0x08
	MOVFF	r0x02, r0x09
; ;ic:11: 	send iTemp3 [k7 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ]{argreg = 1}
; ;ic:12: 	iTemp7 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] = call _islower [k9 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x06
	MOVF	POSTINC1, F
; ;ic:13: 	if iTemp7 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] == 0 goto iTempLbl0($6)
	MOVF	r0x06, W
	BZ	_00110_DS_
; ;ic:14: 	iTemp10 [k16 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp14 [k20 lr5:22 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:15: 	iTemp8 [k14 lr15:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] = iTemp10 [k16 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] & 0xffffffdf {char literal}
	BCF	r0x06, 5
; ;ic:16: 	 goto iTempLbl1($7)
	BRA	_00111_DS_
; ;ic:17:  iTempLbl0($6) :
; ;ic:18: 	iTemp8 [k14 lr15:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] = @[iTemp14 [k20 lr5:22 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00110_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:19:  iTempLbl1($7) :
; ;ic:20: 	*(iTemp4 [k8 lr10:20 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ]) := iTemp8 [k14 lr15:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ]
_00111_DS_:
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrput1
; ;ic:21: 	iTemp14 [k20 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp14 [k20 lr5:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	40; string/strupr.c	++str;
	INCF	r0x00, F
	BNC	_00105_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:22: 	 goto _whilecontinue_0($1)
_00120_DS_:
	BRA	_00105_DS_
; ;ic:23:  _whilebreak_0($3) :
; ;ic:24: 	ret iTemp1 [k4 lr4:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strupr_ret_1_38}[r0x03 r0x04 r0x05 ]
_00107_DS_:
;	.line	43; string/strupr.c	return ret;
	MOVFF	r0x05, PRODH
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:25:  _return($4) :
; ;ic:26: 	eproc _strupr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed) fixed}
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  246 (0x00f6) bytes ( 0.19%)
;           	  123 (0x007b) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
