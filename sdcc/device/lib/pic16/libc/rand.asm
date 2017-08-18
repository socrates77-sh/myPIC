;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:59 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_rand_r
	global	_rand
	global	_srand

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget4
	extern	__gptrput4
	extern	__mullong

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


	idata
_next	db	0x01, 0x00, 0x00, 0x00


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1

udata_rand_0	udata
_rand_r_val_1_19	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _srand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed) fixed}
S_rand__srand	code
_srand:
;	.line	55; stdlib/rand.c	void srand(unsigned long seed)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;ic:3: _next [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} = recv _srand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, _next
	MOVLW	0x03
	MOVFF	PLUSW2, (_next + 1)
	MOVLW	0x04
	MOVFF	PLUSW2, (_next + 2)
	MOVLW	0x05
	MOVFF	PLUSW2, (_next + 3)
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _srand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed) fixed}
;	.line	57; stdlib/rand.c	next = seed;
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _rand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( ) fixed}
S_rand__rand	code
_rand:
;	.line	50; stdlib/rand.c	long rand(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
; ;ic:3: 	iTemp0 [k4 lr3:4 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-long-int near* fixed}[remat] = &[_next [k3 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}]
; ;ic:4: 	iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}[r0x00 r0x01 r0x02 ] = (unsigned-long-int generic* fixed)iTemp0 [k4 lr3:4 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-long-int near* fixed}[remat]
;	.line	52; stdlib/rand.c	return do_rand(&next);
	MOVLW	0x80
; #	MOVWF	r0x02
; #;;ic:5: 	send iTemp1 [k5 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}[r0x00 r0x01 r0x02 ]{argreg = 1}
; #;;ic:6: 	iTemp2 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] = call _do_rand [k2 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
; #	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_next)
	MOVWF	POSTDEC1
	MOVLW	LOW(_next)
	MOVWF	POSTDEC1
	CALL	_do_rand
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:7: 	ret iTemp2 [k7 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:8:  _return($1) :
; ;ic:9: 	eproc _rand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( ) fixed}
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	

; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _rand_r [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
S_rand__rand_r	code
_rand_r:
;	.line	40; stdlib/rand.c	long rand_r(unsigned long *ctx)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _rand_r_ctx_1_18}[r0x00 r0x01 r0x02 ] = recv _rand_r [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	_rand_r_val_1_19 [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed} = @[iTemp0 [k2 lr3:10 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _rand_r_ctx_1_18}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	42; stdlib/rand.c	unsigned long val = (unsigned long) *ctx;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget4
	BANKSEL	_rand_r_val_1_19
	MOVWF	_rand_r_val_1_19, B
	MOVFF	PRODL, (_rand_r_val_1_19 + 1)
	MOVFF	PRODH, (_rand_r_val_1_19 + 2)
	MOVFF	FSR0L, (_rand_r_val_1_19 + 3)
; ;ic:5: 	iTemp4 [k9 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-long-int near* fixed}[remat] = &[_rand_r_val_1_19 [k4 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}]
; ;ic:6: 	iTemp5 [k10 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}[r0x03 r0x04 r0x05 ] = (unsigned-long-int generic* fixed)iTemp4 [k9 lr5:6 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-long-int near* fixed}[remat]
;	.line	44; stdlib/rand.c	*ctx = do_rand(&val);
	MOVLW	0x80
; #	MOVWF	r0x05
; #;;ic:7: 	send iTemp5 [k10 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}[r0x03 r0x04 r0x05 ]{argreg = 1}
; #;;ic:8: 	iTemp6 [k12 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x03 r0x04 r0x05 r0x06 ] = call _do_rand [k8 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
; #	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_rand_r_val_1_19)
	MOVWF	POSTDEC1
	MOVLW	LOW(_rand_r_val_1_19)
	MOVWF	POSTDEC1
	CALL	_do_rand
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:9: 	*(iTemp0 [k2 lr3:10 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _rand_r_ctx_1_18}[r0x00 r0x01 r0x02 ]) := iTemp6 [k12 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x03 r0x04 r0x05 r0x06 ]
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, PRODH
	MOVFF	r0x05, TBLPTRL
	MOVFF	r0x06, TBLPTRH
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput4
; ;ic:10: 	iTemp8 [k14 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x00 r0x01 r0x02 r0x03 ] = @[iTemp0 [k2 lr3:10 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _rand_r_ctx_1_18}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	45; stdlib/rand.c	return (long) *ctx;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget4
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
; ;ic:11: 	iTemp9 [k15 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] = (long-int fixed)iTemp8 [k14 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:12: 	ret iTemp9 [k15 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int fixed}[r0x00 r0x01 r0x02 r0x03 ]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
; ;ic:13:  _return($1) :
; ;ic:14: 	eproc _rand_r [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
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
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _do_rand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
S_rand__do_rand	code
_do_rand:
;	.line	35; stdlib/rand.c	static long do_rand(unsigned long *ctx)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _do_rand_ctx_1_16}[r0x00 r0x01 r0x02 ] = recv _do_rand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp3 [k6 lr4:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ] = @[iTemp0 [k2 lr3:9 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _do_rand_ctx_1_16}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	37; stdlib/rand.c	return ((*ctx = *ctx * 1103515245UL + 12345UL) % ((unsigned long)RAND_MAX + 1));
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget4
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
; ;ic:5: 	send 0x41c64e6d {const-unsigned-long-int literal}{argreg = 1}
; ;ic:6: 	send iTemp3 [k6 lr4:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:7: 	iTemp4 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ] = call __mullong [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( long-int fixed, long-int fixed) fixed}
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0xc6
	MOVWF	POSTDEC1
	MOVLW	0x4e
	MOVWF	POSTDEC1
	MOVLW	0x6d
	MOVWF	POSTDEC1
	CALL	__mullong
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:8: 	iTemp5 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ] = iTemp4 [k7 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ] + 0x3039 {const-unsigned-long-int literal}
	MOVLW	0x39
	ADDWF	r0x03, F
	MOVLW	0x30
	ADDWFC	r0x04, F
	MOVLW	0x00
	ADDWFC	r0x05, F
	ADDWFC	r0x06, F
; ;ic:9: 	*(iTemp0 [k2 lr3:9 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int generic* fixed}{ sir@ _do_rand_ctx_1_16}[r0x00 r0x01 r0x02 ]) := iTemp5 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ]
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, PRODH
	MOVFF	r0x05, TBLPTRL
	MOVFF	r0x06, TBLPTRH
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput4
; ;ic:10: 	iTemp6 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ] = iTemp5 [k8 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ] & 0x7fffffff {const-long-int literal}
	BCF	r0x06, 7
; ;ic:11: 	ret iTemp6 [k9 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x03 r0x04 r0x05 r0x06 ]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x05, PRODH
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:12:  _return($1) :
; ;ic:13: 	eproc _do_rand [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( unsigned-long-int generic* fixed) fixed}
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
; code size:	  570 (0x023a) bytes ( 0.43%)
;           	  285 (0x011d) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	    7 (0x0007) bytes


	end
