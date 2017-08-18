;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:12 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strcat

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
S_strcat__strcat	code
_strcat:
;	.line	32; string/strcat.c	strcat (char *dst, char *src)
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
; ;ic:3: iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_dst_1_28}[r0x00 r0x01 r0x02 ] = recv _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_src_1_28}[r0x03 r0x04 r0x05 ] = recv _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	iTemp6 [k11 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] := iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_dst_1_28}[r0x00 r0x01 r0x02 ]
;	.line	37; string/strcat.c	while (*cp)
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
; ;ic:7:  _whilecontinue_0($1) :
; ;ic:8: 	iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp6 [k11 lr5:14 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:9: 	if iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == 0 goto preHeaderLbl1($11)
	MOVF	r0x09, W
	BZ	_00108_DS_
; ;ic:10: 	iTemp6 [k11 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] = iTemp6 [k11 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] + 0x1 {const-unsigned-char literal}
;	.line	38; string/strcat.c	cp++;
	INCF	r0x06, F
	BNC	_00105_DS_
	INFSNZ	r0x07, F
	INCF	r0x08, F
; ;ic:11: 	 goto _whilecontinue_0($1)
_00123_DS_:
	BRA	_00105_DS_
; ;ic:12:  preHeaderLbl1($11) :
; ;ic:13: 	iTemp10 [k15 lr13:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_src_1_28}[r0x03 r0x04 r0x05 ]
; ;ic:14: 	iTemp8 [k13 lr14:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] := iTemp6 [k11 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ]
; ;ic:16:  _whilecontinue_1($4) :
; ;ic:17: 	iTemp11 [k16 lr17:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp10 [k15 lr13:21 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00108_DS_:
;	.line	41; string/strcat.c	while (*cp++ = *src++)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:18: 	iTemp10 [k15 lr13:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp10 [k15 lr13:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x03, F
	BNC	_00124_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:19: 	*(iTemp8 [k13 lr14:21 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ]) := iTemp11 [k16 lr17:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ]
_00124_DS_:
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrput1
; ;ic:20: 	iTemp8 [k13 lr14:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] = iTemp8 [k13 lr14:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_cp_1_29}[r0x06 r0x07 r0x08 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x06, F
	BNC	_00125_DS_
	INFSNZ	r0x07, F
	INCF	r0x08, F
; ;ic:21: 	if iTemp11 [k16 lr17:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] != 0 goto _whilecontinue_1($4)
_00125_DS_:
	MOVF	r0x09, W
	BNZ	_00108_DS_
; ;ic:22: 	ret iTemp0 [k2 lr3:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcat_dst_1_28}[r0x00 r0x01 r0x02 ]
;	.line	45; string/strcat.c	return dst;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:23:  _return($7) :
; ;ic:24: 	eproc _strcat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
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
; code size:	  236 (0x00ec) bytes ( 0.18%)
;           	  118 (0x0076) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
