;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:11 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memset

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
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
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _memset [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void near* fixed, unsigned-char fixed, unsigned-int fixed) fixed}
S_memset__memset	code
_memset:
;	.line	32; string/memset.c	memset (void _STRING_SPEC *buf, unsigned char ch, size_t count) 
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
; ;ic:3: iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memset_buf_1_28}[r0x00 r0x01 ] = recv _memset [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void near* fixed, unsigned-char fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memset_ch_1_28}[r0x02 ] = recv _memset [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void near* fixed, unsigned-char fixed, unsigned-int fixed) fixed}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: iTemp6 [k12 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] = recv _memset [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void near* fixed, unsigned-char fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
; ;ic:6: 	iTemp8 [k14 lr6:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x05 r0x06 r0x07 ] = (unsigned-char generic* fixed)iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memset_buf_1_28}[r0x00 r0x01 ]
;	.line	34; string/memset.c	register unsigned char *ret = buf;
	MOVF	r0x01, W
	MOVWF	r0x06
	MOVF	r0x00, W
	MOVWF	r0x05
	MOVLW	0x80
	MOVWF	r0x07
; ;ic:8:  _whilecontinue_0($1) :
; ;ic:9: 	iTemp5 [k11 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] := iTemp6 [k12 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ]
_00105_DS_:
;	.line	36; string/memset.c	while (count--)
	MOVFF	r0x03, r0x08
	MOVFF	r0x04, r0x09
; ;ic:10: 	iTemp6 [k12 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] = iTemp6 [k12 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
; ;ic:11: 	if iTemp5 [k11 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x08, W
	IORWF	r0x09, W
	BZ	_00107_DS_
; ;ic:12: 	*(iTemp8 [k14 lr6:14 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x05 r0x06 r0x07 ]) := iTemp1 [k4 lr4:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memset_ch_1_28}[r0x02 ]
;	.line	38; string/memset.c	*(unsigned char *)ret = ch;
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
; ;ic:13: 	iTemp8 [k14 lr6:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x05 r0x06 r0x07 ] = iTemp8 [k14 lr6:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x05 r0x06 r0x07 ] + 0x1 {const-unsigned-char literal}
;	.line	39; string/memset.c	++ret;
	INCF	r0x05, F
	BNC	_00105_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
; ;ic:14: 	 goto _whilecontinue_0($1)
_00115_DS_:
	BRA	_00105_DS_
; ;ic:15:  _whilebreak_0($3) :
; ;ic:16: 	iTemp9 [k15 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* fixed}[r0x00 r0x01 r0x02 ] = (void generic* fixed)iTemp0 [k2 lr3:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memset_buf_1_28}[r0x00 r0x01 ]
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
_00107_DS_:
;	.line	42; string/memset.c	return buf;
	MOVLW	0x80
	MOVWF	r0x02
; ;ic:17: 	ret iTemp9 [k15 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* fixed}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:18:  _return($4) :
; ;ic:19: 	eproc _memset [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void near* fixed, unsigned-char fixed, unsigned-int fixed) fixed}
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
; code size:	  198 (0x00c6) bytes ( 0.15%)
;           	   99 (0x0063) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
