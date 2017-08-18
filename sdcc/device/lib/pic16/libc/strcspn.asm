;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:17 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strcspn

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	_strchr

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
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
r0x0a	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
S_strcspn__strcspn	code
_strcspn:
;	.line	33; string/strcspn.c	strcspn (char *string, char *control) 
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
	MOVFF	r0x0a, POSTDEC1
; ;ic:3: iTemp10 [k19 lr3:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = recv _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcspn_control_1_28}[r0x03 r0x04 r0x05 ] = recv _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	iTemp8 [k17 lr5:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strcspn_count_1_29}[r0x06 r0x07 ] := 0x0 {int literal}
;	.line	38; string/strcspn.c	while (ch = *string)
	CLRF	r0x06
	CLRF	r0x07
; ;ic:7:  _whilecontinue_0($4) :
; ;ic:8: 	iTemp5 [k11 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}{ sir@ _strcspn_ch_1_29}[r0x08 ] = @[iTemp10 [k19 lr3:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00108_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:9: 	iTemp3 [k8 lr9:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char register}[r0x09 ] := iTemp5 [k11 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}{ sir@ _strcspn_ch_1_29}[r0x08 ]
	MOVFF	r0x08, r0x09
; ;ic:10: 	if iTemp5 [k11 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}{ sir@ _strcspn_ch_1_29}[r0x08 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x08, W
	BZ	_00110_DS_
; ;ic:11: 	send iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcspn_control_1_28}[r0x03 r0x04 r0x05 ]{argreg = 1}
; ;ic:12: 	send iTemp3 [k8 lr9:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char register}[r0x09 ]{argreg = 2}
; ;ic:13: 	iTemp6 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = call _strchr [k12 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
;	.line	40; string/strcspn.c	if (strchr (control, ch))
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_strchr
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:14: 	if iTemp6 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] != 0 goto _whilebreak_0($6)
	MOVF	r0x08, W
	IORWF	r0x09, W
	IORWF	r0x0a, W
	BNZ	_00110_DS_
; ;ic:15: 	iTemp8 [k17 lr5:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strcspn_count_1_29}[r0x06 r0x07 ] = iTemp8 [k17 lr5:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strcspn_count_1_29}[r0x06 r0x07 ] + 0x1 {const-unsigned-char literal}
;	.line	43; string/strcspn.c	count++ ;
	INFSNZ	r0x06, F
	INCF	r0x07, F
; ;ic:16: 	iTemp10 [k19 lr3:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp10 [k19 lr3:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	44; string/strcspn.c	string++;
	INCF	r0x00, F
	BNC	_00108_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:17: 	 goto _whilecontinue_0($4)
_00120_DS_:
	BRA	_00108_DS_
; ;ic:18:  _whilebreak_0($6) :
; ;ic:19: 	ret iTemp8 [k17 lr5:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strcspn_count_1_29}[r0x06 r0x07 ]
_00110_DS_:
;	.line	47; string/strcspn.c	return count;
	MOVFF	r0x07, PRODL
	MOVF	r0x06, W
; ;ic:20:  _return($7) :
; ;ic:21: 	eproc _strcspn [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
	MOVFF	PREINC1, r0x0a
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
; code size:	  228 (0x00e4) bytes ( 0.17%)
;           	  114 (0x0072) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end
