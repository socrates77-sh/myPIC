;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:58 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	__initHeap
	global	__mergeHeapBlock

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
PRODL	equ	0xff3


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
; ;ic:1:  _entry($16) :
; ;ic:2: 	proc __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00000000 near* function ( struct __00000000 near* fixed, unsigned-char fixed) data}
S_memmisc___mergeHeapBlock	code
__mergeHeapBlock:
;	.line	60; stdlib/memmisc.c	_malloc_rec _MALLOC_SPEC *_mergeHeapBlock(_malloc_rec _MALLOC_SPEC *sBlock, unsigned char bSize)
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
; ;ic:3: iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_sBlock_1_12}[r0x00 r0x01 ] = recv __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00000000 near* function ( struct __00000000 near* fixed, unsigned-char fixed) data}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_bSize_1_12}[r0x02 ] = recv __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00000000 near* function ( struct __00000000 near* fixed, unsigned-char fixed) data}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp5 [k12 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x03 r0x04 ] := iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_sBlock_1_12}[r0x00 r0x01 ]
;	.line	67; stdlib/memmisc.c	bLen = sBlock->bits.count;
	MOVFF	r0x00, r0x03
	MOVFF	r0x01, r0x04
; ;ic:6: 	iTemp6 [k13 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ __mergeHeapBlock_bLen_1_13}[r0x03 ] = @[iTemp5 [k12 lr5:6 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x03 r0x04 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x03
; ;ic:7: 	iTemp2 [k6 lr7:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_bLen_1_13}[r0x03 ] := iTemp6 [k13 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ __mergeHeapBlock_bLen_1_13}[r0x03 ]
; ;ic:8: 	iTemp8 [k16 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = (unsigned-int fixed)iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_sBlock_1_12}[r0x00 r0x01 ]
;	.line	71; stdlib/memmisc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)sBlock + bLen);	//sBlock->bits.count);
	MOVF	r0x00, W
	MOVWF	r0x04
	MOVF	r0x01, W
	MOVWF	r0x05
; ;ic:9: 	iTemp9 [k17 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x06 r0x07 ] = (int fixed)iTemp2 [k6 lr7:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_bLen_1_13}[r0x03 ]
	MOVFF	r0x03, r0x06
	CLRF	r0x07
; ;ic:10: 	iTemp10 [k18 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = (unsigned-int fixed)iTemp9 [k17 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x06 r0x07 ]
; ;ic:11: 	iTemp11 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = iTemp8 [k16 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] + iTemp10 [k18 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x04, F
	MOVF	r0x07, W
	ADDWFC	r0x05, F
; ;ic:12: 	iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ] = (struct __00000000 near* fixed)iTemp11 [k19 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ]
; ;ic:13: 	iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] := iTemp2 [k6 lr7:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_bLen_1_13}[r0x03 ]
; ;ic:15:  _whilecontinue_1($3) :
; ;ic:16: 	iTemp16 [k26 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}[r0x06 ] = @[iTemp7 [k14 lr12:56 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00130_DS_:
;	.line	73; stdlib/memmisc.c	while((temp->datum) && (!temp->bits.alloc) && (eLen <= bSize)) {
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x06
; ;ic:17: 	if iTemp16 [k26 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}[r0x06 ] == 0 goto _whilebreak_1($5)
	MOVF	r0x06, W
	BZ	_00132_DS_
; ;ic:18: 	iTemp19 [k31 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x06 r0x07 ] := iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ]
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
; ;ic:19: 	iTemp20 [k32 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x06 ] = @[iTemp19 [k31 lr18:19 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x06 r0x07 ] + 0x0 {const-unsigned-char literal}]
	CLRF	WREG
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x06
; ;ic:20: 	if iTemp20 [k32 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x06 ] != 0 goto _whilebreak_1($5)
	MOVF	r0x06, W
	BNZ	_00132_DS_
; ;ic:21: 	iTemp21 [k33 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] > iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_bSize_1_12}[r0x02 ]
	MOVF	r0x03, W
	SUBWF	r0x02, W
	BNC	_00132_DS_
; ;ic:22: 	if iTemp21 [k33 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_1($5)
; ;ic:23: 	iTemp25 [k40 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x06 r0x07 ] := iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ]
;	.line	74; stdlib/memmisc.c	eLen += (dat=temp->bits.count);
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
; ;ic:24: 	iTemp26 [k41 lr24:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ __mergeHeapBlock_dat_1_13}[r0x06 ] = @[iTemp25 [k40 lr23:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x06 r0x07 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x06
; ;ic:25: 	iTemp22 [k34 lr25:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x07 ] := iTemp26 [k41 lr24:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ __mergeHeapBlock_dat_1_13}[r0x06 ]
	MOVFF	r0x06, r0x07
; ;ic:26: 	iTemp27 [k42 lr26:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x08 ] = (char fixed)iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ]
	MOVF	r0x03, W
	MOVWF	r0x08
; ;ic:27: 	iTemp28 [k43 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] = (char fixed)iTemp26 [k41 lr24:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ __mergeHeapBlock_dat_1_13}[r0x06 ]
; ;ic:28: 	iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] = iTemp27 [k42 lr26:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x08 ] + iTemp28 [k43 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ]
	MOVF	r0x06, W
	ADDWF	r0x08, W
	MOVWF	r0x03
; ;ic:29: 	iTemp30 [k45 lr29:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x08 ] = (unsigned-int fixed)iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ]
;	.line	75; stdlib/memmisc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)temp + dat);
	MOVF	r0x04, W
	MOVWF	r0x06
	MOVF	r0x05, W
	MOVWF	r0x08
; ;ic:30: 	iTemp31 [k46 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x07 r0x09 ] = (int fixed)iTemp22 [k34 lr25:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x07 ]
	CLRF	r0x09
; ;ic:31: 	iTemp32 [k47 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x09 ] = (unsigned-int fixed)iTemp31 [k46 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x07 r0x09 ]
; ;ic:32: 	iTemp33 [k48 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x08 ] = iTemp30 [k45 lr29:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x08 ] + iTemp32 [k47 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x09 ]
	MOVF	r0x07, W
	ADDWF	r0x06, F
	MOVF	r0x09, W
	ADDWFC	r0x08, F
; ;ic:33: 	iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ] = (struct __00000000 near* fixed)iTemp33 [k48 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x08 ]
	MOVF	r0x06, W
	MOVWF	r0x04
	MOVF	r0x08, W
	MOVWF	r0x05
; ;ic:34: 	 goto _whilecontinue_1($3)
	BRA	_00130_DS_
; ;ic:35:  _whilebreak_1($5) :
; ;ic:36: 	iTemp35 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] > iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_bSize_1_12}[r0x02 ]
_00132_DS_:
;	.line	78; stdlib/memmisc.c	if(eLen > bSize) {
	MOVF	r0x03, W
	SUBWF	r0x02, W
	BC	_00140_DS_
; ;ic:37: 	if iTemp35 [k50 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_3($13)
; ;ic:38: 	iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ] := iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_sBlock_1_12}[r0x00 r0x01 ]
;	.line	82; stdlib/memmisc.c	temp = sBlock;
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
; ;ic:40:  _whilecontinue_2($9) :
; ;ic:41: 	if iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] == 0 goto _whilebreak_2($11)
_00136_DS_:
;	.line	83; stdlib/memmisc.c	while(eLen > 0) {
	MOVF	r0x03, W
	BZ	_00138_DS_
; ;ic:42: 	iTemp36 [k51 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] > 0x7f {const-unsigned-char literal}
;	.line	84; stdlib/memmisc.c	if(eLen > MAX_BLOCK_SIZE)i = MAX_BLOCK_SIZE;
	MOVLW	0x80
	SUBWF	r0x03, W
	BNC	_00134_DS_
; ;ic:43: 	if iTemp36 [k51 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($7)
; ;ic:44: 	iTemp37 [k52 lr44:55 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_i_2_15}[r0x02 ] := 0x7f {const-unsigned-char literal}
	MOVLW	0x7f
	MOVWF	r0x02
; ;ic:45: 	 goto _ifend_2($8)
	BRA	_00135_DS_
; ;ic:46:  _iffalse_2($7) :
; ;ic:47: 	iTemp37 [k52 lr44:55 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_i_2_15}[r0x02 ] := iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ]
_00134_DS_:
;	.line	85; stdlib/memmisc.c	else i = eLen;
	MOVFF	r0x03, r0x02
; ;ic:48:  _ifend_2($8) :
; ;ic:49: 	*(iTemp7 [k14 lr12:56 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ]) := iTemp37 [k52 lr44:55 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_i_2_15}[r0x02 ]
_00135_DS_:
;	.line	86; stdlib/memmisc.c	temp->datum = i;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x02, INDF0
; ;ic:50: 	iTemp40 [k57 lr50:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = (unsigned-int fixed)iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ]
;	.line	87; stdlib/memmisc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)temp + i);
	MOVF	r0x04, W
	MOVWF	r0x06
	MOVF	r0x05, W
	MOVWF	r0x07
; ;ic:51: 	iTemp41 [k58 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ] = (int fixed)iTemp37 [k52 lr44:55 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_i_2_15}[r0x02 ]
	MOVFF	r0x02, r0x08
	CLRF	r0x09
; ;ic:52: 	iTemp42 [k59 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] = (unsigned-int fixed)iTemp41 [k58 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ]
; ;ic:53: 	iTemp43 [k60 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = iTemp40 [k57 lr50:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] + iTemp42 [k59 lr52:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ]
	MOVF	r0x08, W
	ADDWF	r0x06, F
	MOVF	r0x09, W
	ADDWFC	r0x07, F
; ;ic:54: 	iTemp7 [k14 lr12:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_temp_1_13}[r0x04 r0x05 ] = (struct __00000000 near* fixed)iTemp43 [k60 lr53:54 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
	MOVF	r0x06, W
	MOVWF	r0x04
	MOVF	r0x07, W
	MOVWF	r0x05
; ;ic:55: 	iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] = iTemp13 [k21 lr13:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_eLen_1_13}[r0x03 ] - iTemp37 [k52 lr44:55 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ __mergeHeapBlock_i_2_15}[r0x02 ]
;	.line	88; stdlib/memmisc.c	eLen -= i;
	MOVF	r0x02, W
	SUBWF	r0x03, F
; ;ic:56: 	 goto _whilecontinue_2($9)
	BRA	_00136_DS_
; ;ic:57:  _whilebreak_2($11) :
; ;ic:58: 	ret iTemp0 [k2 lr3:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __mergeHeapBlock_sBlock_1_12}[r0x00 r0x01 ]
_00138_DS_:
;	.line	92; stdlib/memmisc.c	return (sBlock);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00142_DS_
; ;ic:59:  _iffalse_3($13) :
; ;ic:60: 	ret 0x0 {struct __00000000 near* literal}
_00140_DS_:
;	.line	96; stdlib/memmisc.c	return ((_malloc_rec _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
; ;ic:61:  _return($15) :
; ;ic:62: 	eproc __mergeHeapBlock [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00000000 near* function ( struct __00000000 near* fixed, unsigned-char fixed) data}
_00142_DS_:
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

; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed, unsigned-int fixed) fixed}
S_memmisc___initHeap	code
__initHeap:
;	.line	31; stdlib/memmisc.c	void _initHeap(unsigned char _MALLOC_SPEC *dheap, unsigned int heapsize)
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ __initHeap_dheap_1_9}[r0x00 r0x01 ] = recv __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_heapsize_1_9}[r0x02 r0x03 ] = recv __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed, unsigned-int fixed) fixed}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_hsize_1_10}[r0x04 r0x05 ] := 0x0 {unsigned-int literal}
;	.line	34; stdlib/memmisc.c	unsigned int hsize=0;
	CLRF	r0x04
	CLRF	r0x05
; ;ic:6: 	iTemp3 [k8 lr6:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __initHeap_pHeap_1_10}[r0x00 r0x01 ] = (struct __00000000 near* fixed)iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ __initHeap_dheap_1_9}[r0x00 r0x01 ]
; ;ic:7: 	if iTemp1 [k4 lr4:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_heapsize_1_9}[r0x02 r0x03 ] != 0 goto _iffalse_0($2)
;	.line	38; stdlib/memmisc.c	if (heapsize == 0) return;
	MOVF	r0x02, W
; #	IORWF	r0x03, W
; #	BTFSS	STATUS, 2
; #	GOTO	_00106_DS_
; #;;ic:8: 	ret
; #	GOTO	_00112_DS_
; #;;ic:9:  _iffalse_0($2) :
; #;;ic:10: 	iTemp1 [k4 lr4:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_heapsize_1_9}[r0x02 r0x03 ] = iTemp1 [k4 lr4:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_heapsize_1_9}[r0x02 r0x03 ] - 0x1 {const-unsigned-char literal}
; #	MOVLW	0xff
;	.line	40; stdlib/memmisc.c	heapsize--;
	IORWF	r0x03, W
	BZ	_00112_DS_
	MOVLW	0xff
	ADDWF	r0x02, F
	ADDWFC	r0x03, F
; ;ic:12:  _whilecontinue_0($5) :
; ;ic:13: 	iTemp7 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_hsize_1_10}[r0x04 r0x05 ] < iTemp1 [k4 lr4:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_heapsize_1_9}[r0x02 r0x03 ]
_00109_DS_:
;	.line	42; stdlib/memmisc.c	while (hsize < heapsize) {
	MOVF	r0x03, W
	SUBWF	r0x05, W
	BNZ	_00122_DS_
	MOVF	r0x02, W
	SUBWF	r0x04, W
_00122_DS_:
	BC	_00111_DS_
; ;ic:14: 	if iTemp7 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _whilebreak_0($7)
; ;ic:15: 	iTemp8 [k14 lr15:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __initHeap_bsize_1_10}[r0x06 r0x07 ] = iTemp1 [k4 lr4:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_heapsize_1_9}[r0x02 r0x03 ] - iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_hsize_1_10}[r0x04 r0x05 ]
;	.line	44; stdlib/memmisc.c	bsize = (heapsize - hsize); /* thus: bsize > 0 */
	MOVF	r0x04, W
	SUBWF	r0x02, W
	MOVWF	r0x06
	MOVF	r0x05, W
	SUBWFB	r0x03, W
; #	MOVWF	r0x07
; #;;ic:16: 	iTemp10 [k17 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp8 [k14 lr15:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __initHeap_bsize_1_10}[r0x06 r0x07 ] > 0x7f {int literal}
; #	MOVF	r0x07, W
;	.line	45; stdlib/memmisc.c	if(bsize > MAX_BLOCK_SIZE) bsize = MAX_BLOCK_SIZE;
	MOVWF	r0x07
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00123_DS_
	MOVLW	0x80
	SUBWF	r0x06, W
_00123_DS_:
	BNC	_00108_DS_
; ;ic:17: 	if iTemp10 [k17 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($4)
; ;ic:18: 	iTemp8 [k14 lr15:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __initHeap_bsize_1_10}[r0x06 r0x07 ] := 0x7f {int literal}
	MOVLW	0x7f
	MOVWF	r0x06
	CLRF	r0x07
; ;ic:19:  _iffalse_1($4) :
; ;ic:20: 	iTemp13 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}[r0x08 ] = (volatile-unsigned-char fixed)iTemp8 [k14 lr15:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __initHeap_bsize_1_10}[r0x06 r0x07 ]
_00108_DS_:
;	.line	48; stdlib/memmisc.c	pHeap->datum = bsize;
	MOVF	r0x06, W
	MOVWF	r0x08
; ;ic:21: 	*(iTemp3 [k8 lr6:29 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __initHeap_pHeap_1_10}[r0x00 r0x01 ]) := iTemp13 [k21 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}[r0x08 ]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	r0x08, INDF0
; ;ic:22: 	iTemp14 [k22 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] = (unsigned-int fixed)iTemp3 [k8 lr6:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __initHeap_pHeap_1_10}[r0x00 r0x01 ]
;	.line	49; stdlib/memmisc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bsize);
	MOVF	r0x00, W
	MOVWF	r0x08
	MOVF	r0x01, W
	MOVWF	r0x09
; ;ic:23: 	iTemp15 [k23 lr23:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = (unsigned-int fixed)iTemp8 [k14 lr15:23 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ __initHeap_bsize_1_10}[r0x06 r0x07 ]
; ;ic:24: 	iTemp16 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] = iTemp14 [k22 lr22:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] + iTemp15 [k23 lr23:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x08, F
	MOVF	r0x07, W
	ADDWFC	r0x09, F
; ;ic:25: 	iTemp3 [k8 lr6:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __initHeap_pHeap_1_10}[r0x00 r0x01 ] = (struct __00000000 near* fixed)iTemp16 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ]
	MOVF	r0x08, W
	MOVWF	r0x00
	MOVF	r0x09, W
	MOVWF	r0x01
; ;ic:26: 	iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_hsize_1_10}[r0x04 r0x05 ] = iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ __initHeap_hsize_1_10}[r0x04 r0x05 ] + iTemp15 [k23 lr23:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
;	.line	51; stdlib/memmisc.c	hsize += bsize;
	MOVF	r0x06, W
	ADDWF	r0x04, F
	MOVF	r0x07, W
	ADDWFC	r0x05, F
; ;ic:27: 	 goto _whilecontinue_0($5)
	BRA	_00109_DS_
; ;ic:28:  _whilebreak_0($7) :
; ;ic:29: 	*(iTemp3 [k8 lr6:29 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ __initHeap_pHeap_1_10}[r0x00 r0x01 ]) := 0x0 {const-unsigned-char literal}
_00111_DS_:
;	.line	55; stdlib/memmisc.c	pHeap->datum = 0;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x00
	CLRF	INDF0
; ;ic:30:  _return($8) :
; ;ic:31: 	eproc __initHeap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed, unsigned-int fixed) fixed}
_00112_DS_:
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
; code size:	  602 (0x025a) bytes ( 0.46%)
;           	  301 (0x012d) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end
