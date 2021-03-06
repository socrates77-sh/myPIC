;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Jan 22 2015) (Linux)
; This file was generated Thu Jan 22 23:36:17 2015
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"../libsdcc/fs2sint.c"
	list	p=32p7022
	radix dec
	include "mc32p7022.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	___uchar2fs
	extern	___schar2fs
	extern	___uint2fs
	extern	___sint2fs
	extern	___ulong2fs
	extern	___slong2fs
	extern	___fs2uchar
	extern	___fs2schar
	extern	___fs2uint
	extern	___fs2ulong
	extern	___fs2slong
	extern	___fsadd
	extern	___fssub
	extern	___fsmul
	extern	___fsdiv
	extern	___fslt
	extern	___fseq
	extern	___fsneq
	extern	___fsgt

	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	___fs2sint

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_fs2sint_0	udata
r0x1003	res	1
r0x1002	res	1
r0x1001	res	1
r0x1000	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_fs2sint	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  ___fs2sint	;Function start
; 2 exit points
;has an exit
;functions called:
;   ___fs2slong
;   ___fs2slong
;9 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   STK01
;   r0x1002
;   STK02
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting pCode block
;;[ICODE] ../libsdcc/fs2sint.c:33:  _entry($6) :
;;[ICODE] ../libsdcc/fs2sint.c:33: 	proc ___fs2sint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( float fixed) fixed}
___fs2sint	;Function start
; 2 exit points
;;[ICODE] ../libsdcc/fs2sint.c:33: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru1 dp0}{float fixed}{ sir@ ___fs2sint_f_1_21}[r0x1000 r0x1001 r0x1002 r0x1003 ] = recv ___fs2sint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( float fixed) fixed}
;	.line	33; "../libsdcc/fs2sint.c"	signed int __fs2sint (float f) _FS_REENTRANT
	MOVRA	r0x1000
	MOVAR	STK00
	MOVRA	r0x1001
	MOVAR	STK01
	MOVRA	r0x1002
	MOVAR	STK02
	MOVRA	r0x1003
;;[ICODE] ../libsdcc/fs2sint.c:35: 	send iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru1 dp0}{float fixed}{ sir@ ___fs2sint_f_1_21}[r0x1000 r0x1001 r0x1002 r0x1003 ]{argreg = 1}
;;[ICODE] ../libsdcc/fs2sint.c:35: 	iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fs2sint_sl_1_22}[r0x1000 r0x1001 r0x1002 r0x1003 ] = call ___fs2slong [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( float fixed) fixed}
;	.line	35; "../libsdcc/fs2sint.c"	signed long sl=__fs2slong(f);
	MOVAR	r0x1003
	MOVRA	STK02
	MOVAR	r0x1002
	MOVRA	STK01
	MOVAR	r0x1001
	MOVRA	STK00
	MOVAR	r0x1000
	CALL	___fs2slong
	MOVRA	r0x1000
	MOVAR	STK00
	MOVRA	r0x1001
	MOVAR	STK01
	MOVRA	r0x1002
	MOVAR	STK02
	MOVRA	r0x1003
;;[ICODE] ../libsdcc/fs2sint.c:36: 	iTemp3 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fs2sint_sl_1_22}[r0x1000 r0x1001 r0x1002 r0x1003 ] < 0x7fff {long-int literal}
;;signed compare: left < lit(0x7FFF=32767), size=4, mask=ffffffff
;	.line	36; "../libsdcc/fs2sint.c"	if (sl>=INT_MAX)
	MOVAR	r0x1000
	ADDAI	0x80
	ADDAI	0x80
	JBSET	STATUS,2
	GOTO	_00115_DS_
	MOVAI	0x00
	RSUBAR	r0x1001
	JBSET	STATUS,2
	GOTO	_00115_DS_
	MOVAI	0x7f
	RSUBAR	r0x1002
	JBSET	STATUS,2
	GOTO	_00115_DS_
	MOVAI	0xff
	RSUBAR	r0x1003
_00115_DS_
	JBSET	STATUS,0
	GOTO	_00106_DS_
;;genSkipc:3246: created from rifx:0xbfeacfb0
;;[ICODE] ../libsdcc/fs2sint.c:36: 	if iTemp3 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
;;[ICODE] ../libsdcc/fs2sint.c:37: 	ret 0x7fff {const-int literal}
;	.line	37; "../libsdcc/fs2sint.c"	return INT_MAX;
	MOVAI	0xff
	MOVRA	STK00
	MOVAI	0x7f
	GOTO	_00109_DS_
;;[ICODE] ../libsdcc/fs2sint.c:37:  _iffalse_0($2) :
;;[ICODE] ../libsdcc/fs2sint.c:38: 	iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fs2sint_sl_1_22}[r0x1000 r0x1001 r0x1002 r0x1003 ] > 0xffff8000 {const-long-int literal}
;;swapping arguments (AOP_TYPEs 1/2)
;;signed compare: left >= lit(0xFFFF8001=-32767), size=4, mask=ffffffff
_00106_DS_
;	.line	38; "../libsdcc/fs2sint.c"	if (sl<=INT_MIN) 
	MOVAR	r0x1000
	ADDAI	0x80
	ADDAI	0x81
	JBSET	STATUS,2
	GOTO	_00116_DS_
	MOVAI	0xff
	RSUBAR	r0x1001
	JBSET	STATUS,2
	GOTO	_00116_DS_
	MOVAI	0x80
	RSUBAR	r0x1002
	JBSET	STATUS,2
	GOTO	_00116_DS_
	MOVAI	0x01
	RSUBAR	r0x1003
_00116_DS_
	JBCLR	STATUS,0
	GOTO	_00108_DS_
;;genSkipc:3246: created from rifx:0xbfeacfb0
;;[ICODE] ../libsdcc/fs2sint.c:38: 	if iTemp4 [k10 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_1($4)
;;[ICODE] ../libsdcc/fs2sint.c:39: 	ret 0xffff8000 {int literal}
;	.line	39; "../libsdcc/fs2sint.c"	return -INT_MIN;
	MOVAI	0x00
	MOVRA	STK00
	MOVAI	0x80
	GOTO	_00109_DS_
;;[ICODE] ../libsdcc/fs2sint.c:39:  _iffalse_1($4) :
;;[ICODE] ../libsdcc/fs2sint.c:40: 	iTemp5 [k11 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x1004 r0x1005 ] = (int fixed)iTemp1 [k4 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ ___fs2sint_sl_1_22}[r0x1000 r0x1001 r0x1002 r0x1003 ]
;;101	MOVAR	r0x1003
;;99	MOVRA	r0x1004
;;104	MOVAR	r0x1002
;;102	MOVRA	r0x1005
;;[ICODE] ../libsdcc/fs2sint.c:40: 	ret iTemp5 [k11 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru1 dp0}{int fixed}[r0x1004 r0x1005 ]
;;100	MOVAR	r0x1004
_00108_DS_
;	.line	40; "../libsdcc/fs2sint.c"	return sl;
	MOVAR	r0x1003
	MOVRA	STK00
;;103	MOVAR	r0x1005
	MOVAR	r0x1002
;;[ICODE] ../libsdcc/fs2sint.c:40:  _return($5) :
;;[ICODE] ../libsdcc/fs2sint.c:40: 	eproc ___fs2sint [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( float fixed) fixed}
_00109_DS_
	RETURN	
; exit point of ___fs2sint


;	code size estimation:
;	   68+    0 =    68 instructions (  136 byte)

	end
