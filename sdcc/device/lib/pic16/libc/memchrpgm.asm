;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:04 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memchrpgm

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
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
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code* function ( const-void code* fixed, char fixed, unsigned-int fixed) code}
S_memchrpgm__memchrpgm	code
_memchrpgm:
;	.line	33; string/memchrpgm.c	memchrpgm (__code void *s, char c, size_t count)
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
; ;ic:3: iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* fixed}{ sir@ _memchrpgm_s_1_28}[r0x00 r0x01 r0x02 ] = recv _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code* function ( const-void code* fixed, char fixed, unsigned-int fixed) code}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _memchrpgm_c_1_28}[r0x03 ] = recv _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code* function ( const-void code* fixed, char fixed, unsigned-int fixed) code}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memchrpgm_count_1_28}[r0x04 r0x05 ] = recv _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code* function ( const-void code* fixed, char fixed, unsigned-int fixed) code}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	if iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memchrpgm_count_1_28}[r0x04 r0x05 ] != 0 goto preHeaderLbl0($15)
;	.line	35; string/memchrpgm.c	if (!count)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BNZ	_00108_DS_
; ;ic:7: 	ret 0x0 {const-void code* literal}
;	.line	36; string/memchrpgm.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00114_DS_
; ;ic:8:  preHeaderLbl0($15) :
; ;ic:9: 	iTemp9 [k14 lr9:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memchrpgm_count_1_28}[r0x04 r0x05 ]
; ;ic:11:  _whilecontinue_0($4) :
; ;ic:12: 	iTemp3 [k8 lr12:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x06 r0x07 r0x08 ] = (const-char code* fixed)iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* fixed}{ sir@ _memchrpgm_s_1_28}[r0x00 r0x01 r0x02 ]
_00108_DS_:
;	.line	38; string/memchrpgm.c	while ((*(__code char *)s != c) && count)
	MOVF	r0x02, W
	MOVWF	r0x08
	MOVF	r0x01, W
	MOVWF	r0x07
	MOVF	r0x00, W
	MOVWF	r0x06
; ;ic:13: 	iTemp4 [k9 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x09 ] = @[iTemp3 [k8 lr12:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x06, TBLPTRL
	MOVFF	r0x07, TBLPTRH
	MOVFF	r0x08, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x09
; ;ic:14: 	iTemp5 [k10 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k9 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x09 ] == iTemp1 [k4 lr4:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _memchrpgm_c_1_28}[r0x03 ]
	MOVF	r0x09, W
	XORWF	r0x03, W
	BZ	_00110_DS_
; ;ic:15: 	if iTemp5 [k10 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_0($6)
; ;ic:16: 	if iTemp9 [k14 lr9:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00110_DS_
; ;ic:17: 	iTemp7 [k12 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x06 r0x07 r0x08 ] = iTemp3 [k8 lr12:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x06 r0x07 r0x08 ] + 0x3 {const-unsigned-char literal}
;	.line	40; string/memchrpgm.c	s = (__code char *)s + sizeof (__code char *);
	MOVLW	0x03
	ADDWF	r0x06, F
	MOVLW	0x00
	ADDWFC	r0x07, F
	ADDWFC	r0x08, F
; ;ic:18: 	iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* fixed}{ sir@ _memchrpgm_s_1_28}[r0x00 r0x01 r0x02 ] = (const-void code* fixed)iTemp7 [k12 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x06 r0x07 r0x08 ]
	MOVF	r0x08, W
	MOVWF	r0x02
	MOVF	r0x07, W
	MOVWF	r0x01
	MOVF	r0x06, W
	MOVWF	r0x00
; ;ic:19: 	iTemp9 [k14 lr9:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = iTemp9 [k14 lr9:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] - 0x1 {const-unsigned-char literal}
;	.line	41; string/memchrpgm.c	--count;
	MOVLW	0xff
	ADDWF	r0x04, F
	ADDWFC	r0x05, F
; ;ic:20: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:21:  _whilebreak_0($6) :
; ;ic:22: 	if iTemp9 [k14 lr9:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] == 0 goto _iffalse_1($8)
_00110_DS_:
;	.line	44; string/memchrpgm.c	if (count)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00112_DS_
; ;ic:23: 	ret iTemp0 [k2 lr3:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* fixed}{ sir@ _memchrpgm_s_1_28}[r0x00 r0x01 r0x02 ]
;	.line	45; string/memchrpgm.c	return s;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:24:  _iffalse_1($8) :
; ;ic:25: 	ret 0x0 {const-void code* literal}
_00112_DS_:
;	.line	47; string/memchrpgm.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:26:  _return($10) :
; ;ic:27: 	eproc _memchrpgm [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void code* function ( const-void code* fixed, char fixed, unsigned-int fixed) code}
_00114_DS_:
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
; code size:	  240 (0x00f0) bytes ( 0.18%)
;           	  120 (0x0078) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
