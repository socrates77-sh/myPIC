;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:21 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strncat

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
r0x0a	res	1
r0x0b	res	1
r0x0c	res	1
r0x0d	res	1
r0x0e	res	1
r0x0f	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
S_strncat__strncat	code
_strncat:
;	.line	32; string/strncat.c	strncat (char *front, char * back, size_t count) 
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
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ] = recv _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_back_1_28}[r0x03 r0x04 r0x05 ] = recv _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _strncat_count_1_28}[r0x06 r0x07 ] = recv _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	iTemp3 [k8 lr6:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_start_1_29}[r0x08 r0x09 r0x0a ] := iTemp0 [k2 lr3:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ]
;	.line	34; string/strncat.c	char *start = front;
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	MOVFF	r0x02, r0x0a
; ;ic:7: 	iTemp5 [k11 lr7:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] := iTemp0 [k2 lr3:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ]
;	.line	36; string/strncat.c	while (*front++)
	MOVFF	r0x00, r0x0b
	MOVFF	r0x01, r0x0c
	MOVFF	r0x02, r0x0d
; ;ic:9:  _whilecontinue_0($1) :
; ;ic:10: 	iTemp6 [k12 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = @[iTemp5 [k11 lr7:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget1
	MOVWF	r0x0e
; ;ic:11: 	iTemp5 [k11 lr7:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] = iTemp5 [k11 lr7:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] + 0x1 {const-unsigned-char literal}
	INCF	r0x0b, F
	BNC	_00126_DS_
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
; ;ic:12: 	if iTemp6 [k12 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] != 0 goto _whilecontinue_0($1)
_00126_DS_:
	MOVF	r0x0e, W
	BNZ	_00105_DS_
; ;ic:13: 	iTemp0 [k2 lr3:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ] = iTemp5 [k11 lr7:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] - 0x1 {const-unsigned-char literal}
;	.line	39; string/strncat.c	front--;
	MOVF	r0x0b, W
	ADDLW	0xff
	MOVWF	r0x00
	MOVLW	0xff
	ADDWFC	r0x0c, W
	MOVWF	r0x01
	MOVLW	0xff
	ADDWFC	r0x0d, W
	MOVWF	r0x02
; ;ic:14: 	iTemp14 [k20 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_back_1_28}[r0x03 r0x04 r0x05 ]
; ;ic:15: 	iTemp12 [k18 lr15:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] := iTemp0 [k2 lr3:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ]
;	.line	40; string/strncat.c	while (count--)
	MOVFF	r0x00, r0x0b
	MOVFF	r0x01, r0x0c
	MOVFF	r0x02, r0x0d
; ;ic:16: 	iTemp10 [k16 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] := iTemp2 [k6 lr5:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _strncat_count_1_28}[r0x06 r0x07 ]
; ;ic:18:  _whilecontinue_1($6) :
; ;ic:19: 	iTemp9 [k15 lr19:21 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0e r0x0f ] := iTemp10 [k16 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
_00110_DS_:
	MOVFF	r0x06, r0x0e
	MOVFF	r0x07, r0x0f
; ;ic:20: 	iTemp10 [k16 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = iTemp10 [k16 lr16:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x06, F
	ADDWFC	r0x07, F
; ;ic:21: 	if iTemp9 [k15 lr19:21 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0e r0x0f ] == 0 goto _whilebreak_1($8)
	MOVF	r0x0e, W
	IORWF	r0x0f, W
	BZ	_00112_DS_
; ;ic:22: 	iTemp15 [k21 lr22:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = @[iTemp14 [k20 lr14:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
;	.line	41; string/strncat.c	if (!(*front++ = *back++))
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0e
; ;ic:23: 	iTemp14 [k20 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp14 [k20 lr14:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x03, F
	BNC	_00127_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:24: 	*(iTemp12 [k18 lr15:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ]) := iTemp15 [k21 lr22:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ]
_00127_DS_:
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrput1
; ;ic:25: 	iTemp12 [k18 lr15:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] = iTemp12 [k18 lr15:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] + 0x1 {const-unsigned-char literal}
	INCF	r0x0b, F
	BNC	_00128_DS_
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
; ;ic:26: 	iTemp0 [k2 lr3:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ] := iTemp12 [k18 lr15:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ]
_00128_DS_:
	MOVFF	r0x0b, r0x00
	MOVFF	r0x0c, r0x01
	MOVFF	r0x0d, r0x02
; ;ic:27: 	if iTemp15 [k21 lr22:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] != 0 goto _whilecontinue_1($6)
	MOVF	r0x0e, W
	BNZ	_00110_DS_
; ;ic:28: 	ret iTemp3 [k8 lr6:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_start_1_29}[r0x08 r0x09 r0x0a ]
;	.line	42; string/strncat.c	return start;
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
	BRA	_00113_DS_
; ;ic:29:  _whilebreak_1($8) :
; ;ic:30: 	*(iTemp0 [k2 lr3:30 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_front_1_28}[r0x00 r0x01 r0x02 ]) := 0x0 {const-char literal}
_00112_DS_:
;	.line	44; string/strncat.c	*front = '\0';
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:31: 	ret iTemp3 [k8 lr6:31 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncat_start_1_29}[r0x08 r0x09 r0x0a ]
;	.line	46; string/strncat.c	return start;
	MOVFF	r0x0a, PRODH
	MOVFF	r0x09, PRODL
	MOVF	r0x08, W
; ;ic:32:  _return($9) :
; ;ic:33: 	eproc _strncat [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
_00113_DS_:
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
	MOVFF	PREINC1, r0x0c
	MOVFF	PREINC1, r0x0b
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
; code size:	  396 (0x018c) bytes ( 0.30%)
;           	  198 (0x00c6) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   16 (0x0010) bytes


	end
