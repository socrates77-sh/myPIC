/* i51pst.c */

/*
 *  Copyright (C) 1998-2009  Alan R. Baldwin
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 *
 * Alan R. Baldwin
 * 721 Berkeley St.
 * Kent, Ohio  44240
 *
 *   This Assember Ported by
 *      John L. Hartman	(JLH)
 *      jhartman at compuserve dot com
 *      noice at noicedebugger dot com
 *
 */

#include "asxxxx.h"
#include "i8051.h"

/*
 * Mnemonic Structure
 */
struct  mne     mne[] = {

        /* machine */

        /* system */

        { NULL, "CON",          S_ATYP,         0,      A3_CON  },
        { NULL, "OVR",          S_ATYP,         0,      A3_OVR  },
        { NULL, "REL",          S_ATYP,         0,      A3_REL  },
        { NULL, "ABS",          S_ATYP,         0,      A3_ABS  },
        { NULL, "NOPAG",        S_ATYP,         0,      A3_NOPAG },
        { NULL, "PAG",          S_ATYP,         0,      A3_PAG  },

        { NULL, "CODE",         S_ATYP,         0,      A_CODE  },
        { NULL, "DATA",         S_ATYP,         0,      A_DATA  },
        { NULL, "XDATA",        S_ATYP,         0,      A_XDATA },
        { NULL, "BIT",          S_ATYP,         0,      A_BIT   },

        { NULL, ".page",        S_PAGE,         0,      0       },
        { NULL, ".title",       S_TITLE,        0,      0       },
        { NULL, ".sbttl",       S_SBTL,         0,      0       },
        { NULL, ".module",      S_MODUL,        0,      0       },
        { NULL, ".include",     S_INCL,         0,      0       },
        { NULL, ".area",        S_DAREA,        0,      0       },
        { NULL, ".org",         S_ORG,          0,      0       },
        { NULL, ".radix",       S_RADIX,        0,      0       },
        { NULL, ".globl",       S_GLOBL,        0,      0       },
        { NULL, ".if",          S_IF,           0,      0       },
        { NULL, ".else",        S_ELSE,         0,      0       },
        { NULL, ".endif",       S_ENDIF,        0,      0       },

        { NULL, ".flat24",      S_FLAT24,       0,      0       },
/* sdas specific */
        { NULL, ".optsdcc",     S_OPTSDCC,      0,      0       },
/* end sdas specific */
        { NULL, ".byte",        S_BYTE,         0,      0       },
        { NULL, ".db",          S_BYTE,         0,      0       },
        { NULL, ".word",        S_WORD,         0,      0       },
        { NULL, ".dw",          S_WORD,         0,      0       },
        { NULL, ".ascii",       S_ASCII,        0,      0       },
        { NULL, ".ascis",       S_ASCIS,        0,      0       },
        { NULL, ".asciz",       S_ASCIZ,        0,      0       },
        { NULL, ".blkb",        S_BLK,          0,      1       },
        { NULL, ".ds",          S_BLK,          0,      1       },
        { NULL, ".blkw",        S_BLK,          0,      2       },
        { NULL, ".even",        S_EVEN,         0,      0       },
        { NULL, ".odd",         S_ODD,          0,      0       },

        /* 8051 */
	/* machine */

        { NULL, "a",            S_A,            0,      A       },
        { NULL, "ab",           S_AB,           0,      0       },
        { NULL, "dptr",         S_DPTR,         0,      DPTR    },
        { NULL, "pc",           S_PC,           0,      PC      },
        { NULL, "r0",           S_REG,          0,      R0      },
        { NULL, "r1",           S_REG,          0,      R1      },
        { NULL, "r2",           S_REG,          0,      R2      },
        { NULL, "r3",           S_REG,          0,      R3      },
        { NULL, "r4",           S_REG,          0,      R4      },
        { NULL, "r5",           S_REG,          0,      R5      },
        { NULL, "r6",           S_REG,          0,      R6      },
        { NULL, "r7",           S_REG,          0,      R7      },

        { NULL, "nop",          S_INH,          0,      0x00    },
        { NULL, "ret",          S_INH,          0,      0x22    },
        { NULL, "reti",         S_INH,          0,      0x32    },

        { NULL, "ajmp",         S_JMP11,        0,      0x01    },
        { NULL, "acall",        S_JMP11,        0,      0x11    },
        { NULL, "ljmp",         S_JMP16,        0,      0x02    },
        { NULL, "lcall",        S_JMP16,        0,      0x12    },

        { NULL, "rr",           S_ACC,          0,      0x03    },
        { NULL, "rrc",          S_ACC,          0,      0x13    },
        { NULL, "rl",           S_ACC,          0,      0x23    },
        { NULL, "rlc",          S_ACC,          0,      0x33    },
        { NULL, "swap",         S_ACC,          0,      0xC4    },
        { NULL, "da",           S_ACC,          0,      0xD4    },

        { NULL, "inc",          S_TYP1,         0,      0x00    },
        { NULL, "dec",          S_TYP1,         0,      0x10    },

        { NULL, "add",          S_TYP2,         0,      0x20    },
        { NULL, "addc",         S_TYP2,         0,      0x30    },
        { NULL, "subb",         S_TYP2,         0,      0x90    },

        { NULL, "orl",          S_TYP3,         0,      0x40    },
        { NULL, "anl",          S_TYP3,         0,      0x50    },
        { NULL, "xrl",          S_TYP3,         0,      0x60    },

        { NULL, "xch",          S_TYP4,         0,      0xC0    },

        { NULL, "mov",          S_MOV,          0,      0x00    },

        { NULL, "jbc",          S_BITBR,        0,      0x10    },
        { NULL, "jb",           S_BITBR,        0,      0x20    },
        { NULL, "jnb",          S_BITBR,        0,      0x30    },

        { NULL, "jc",           S_BR,           0,      0x40    },
        { NULL, "jnc",          S_BR,           0,      0x50    },
        { NULL, "jz",           S_BR,           0,      0x60    },
        { NULL, "jnz",          S_BR,           0,      0x70    },
        { NULL, "sjmp",         S_BR,           0,      0x80    },

        { NULL, "cjne",         S_CJNE,         0,      0xB0    },
        { NULL, "djnz",         S_DJNZ,         0,      0xD0    },
        { NULL, "jmp",          S_JMP,          0,      0x73    },
        { NULL, "movc",         S_MOVC,         0,      0x83    },
        { NULL, "movx",         S_MOVX,         0,      0x00    },
        { NULL, "div",          S_AB,           0,      0x84    },
        { NULL, "mul",          S_AB,           0,      0xA4    },
        { NULL, "clr",          S_ACBIT,        0,      0xC2    },
        { NULL, "cpl",          S_ACBIT,        0,      0xB2    },
        { NULL, "setb",         S_SETB,         0,      0xD2    },
        { NULL, "push",         S_DIRECT,       0,      0xC0    },
        { NULL, "pop",          S_DIRECT,       0,      0xD0    },
        { NULL, "xchd",         S_XCHD,         S_EOL,  0xD6    }
};

struct PreDef preDef[] = {
    {   "AC",           0x00D6  },
    {   "ACC",          0x00E0  },
    {   "ACC.0",        0x00E0  },
    {   "ACC.1",        0x00E1  },
    {   "ACC.2",        0x00E2  },
    {   "ACC.3",        0x00E3  },
    {   "ACC.4",        0x00E4  },
    {   "ACC.5",        0x00E5  },
    {   "ACC.6",        0x00E6  },
    {   "ACC.7",        0x00E7  },
    {   "A",            0x00E0  },
    {   "A.0",          0x00E0  },
    {   "A.1",          0x00E1  },
    {   "A.2",          0x00E2  },
    {   "A.3",          0x00E3  },
    {   "A.4",          0x00E4  },
    {   "A.5",          0x00E5  },
    {   "A.6",          0x00E6  },
    {   "A.7",          0x00E7  },
    {   "B",            0x00F0  },
    {   "B.0",          0x00F0  },
    {   "B.1",          0x00F1  },
    {   "B.2",          0x00F2  },
    {   "B.3",          0x00F3  },
    {   "B.4",          0x00F4  },
    {   "B.5",          0x00F5  },
    {   "B.6",          0x00F6  },
    {   "B.7",          0x00F7  },
    {   "CPRL2",        0x00C8  },
    {   "CT2",          0x00C9  },
    {   "CY",           0x00D7  },
    {   "DPH",          0x0083  },
    {   "DPL",          0x0082  },
    {   "EA",           0x00AF  },
    {   "ES",           0x00AC  },
    {   "ET0",          0x00A9  },
    {   "ET1",          0x00AB  },
    {   "ET2",          0x00AD  },
    {   "EX0",          0x00A8  },
    {   "EX1",          0x00AA  },
    {   "EXEN2",        0x00CB  },
    {   "EXF2",         0x00CE  },
    {   "F0",           0x00D5  },
    {   "IE",           0x00A8  },
    {   "IE.0",         0x00A8  },
    {   "IE.1",         0x00A9  },
    {   "IE.2",         0x00AA  },
    {   "IE.3",         0x00AB  },
    {   "IE.4",         0x00AC  },
    {   "IE.5",         0x00AD  },
    {   "IE.7",         0x00AF  },
    {   "IE0",          0x0089  },
    {   "IE1",          0x008B  },
    {   "INT0",         0x00B2  },
    {   "INT1",         0x00B3  },
    {   "IP",           0x00B8  },
    {   "IP.0",         0x00B8  },
    {   "IP.1",         0x00B9  },
    {   "IP.2",         0x00BA  },
    {   "IP.3",         0x00BB  },
    {   "IP.4",         0x00BC  },
    {   "IP.5",         0x00BD  },
    {   "IT0",          0x0088  },
    {   "IT1",          0x008A  },
    {   "OV",           0x00D2  },
    {   "P",            0x00D0  },
    {   "P0",           0x0080  },
    {   "P0.0",         0x0080  },
    {   "P0.1",         0x0081  },
    {   "P0.2",         0x0082  },
    {   "P0.3",         0x0083  },
    {   "P0.4",         0x0084  },
    {   "P0.5",         0x0085  },
    {   "P0.6",         0x0086  },
    {   "P0.7",         0x0087  },
    {   "P1",           0x0090  },
    {   "P1.0",         0x0090  },
    {   "P1.1",         0x0091  },
    {   "P1.2",         0x0092  },
    {   "P1.3",         0x0093  },
    {   "P1.4",         0x0094  },
    {   "P1.5",         0x0095  },
    {   "P1.6",         0x0096  },
    {   "P1.7",         0x0097  },
    {   "P2",           0x00A0  },
    {   "P2.0",         0x00A0  },
    {   "P2.1",         0x00A1  },
    {   "P2.2",         0x00A2  },
    {   "P2.3",         0x00A3  },
    {   "P2.4",         0x00A4  },
    {   "P2.5",         0x00A5  },
    {   "P2.6",         0x00A6  },
    {   "P2.7",         0x00A7  },
    {   "P3",           0x00B0  },
    {   "P3.0",         0x00B0  },
    {   "P3.1",         0x00B1  },
    {   "P3.2",         0x00B2  },
    {   "P3.3",         0x00B3  },
    {   "P3.4",         0x00B4  },
    {   "P3.5",         0x00B5  },
    {   "P3.6",         0x00B6  },
    {   "P3.7",         0x00B7  },
    {   "PCON",         0x0087  },
    {   "PS",           0x00BC  },
    {   "PSW",          0x00D0  },
    {   "PSW.0",        0x00D0  },
    {   "PSW.1",        0x00D1  },
    {   "PSW.2",        0x00D2  },
    {   "PSW.3",        0x00D3  },
    {   "PSW.4",        0x00D4  },
    {   "PSW.5",        0x00D5  },
    {   "PSW.6",        0x00D6  },
    {   "PSW.7",        0x00D7  },
    {   "PT0",          0x00B9  },
    {   "PT1",          0x00BB  },
    {   "PT2",          0x00BD  },
    {   "PX0",          0x00B8  },
    {   "PX1",          0x00BA  },
    {   "RB8",          0x009A  },
    {   "RCAP2H",       0x00CB  },
    {   "RCAP2L",       0x00CA  },
    {   "RCLK",         0x00CD  },
    {   "REN",          0x009C  },
    {   "RI",           0x0098  },
    {   "RS0",          0x00D3  },
    {   "RS1",          0x00D4  },
    {   "RXD",          0x00B0  },
    {   "SBUF",         0x0099  },
    {   "SCON",         0x0098  },
    {   "SCON.0",       0x0098  },
    {   "SCON.1",       0x0099  },
    {   "SCON.2",       0x009A  },
    {   "SCON.3",       0x009B  },
    {   "SCON.4",       0x009C  },
    {   "SCON.5",       0x009D  },
    {   "SCON.6",       0x009E  },
    {   "SCON.7",       0x009F  },
    {   "SM0",          0x009F  },
    {   "SM1",          0x009E  },
    {   "SM2",          0x009D  },
    {   "SP",           0x0081  },
    {   "T2CON",        0x00C8  },
    {   "T2CON.0",      0x00C8  },
    {   "T2CON.1",      0x00C9  },
    {   "T2CON.2",      0x00CA  },
    {   "T2CON.3",      0x00CB  },
    {   "T2CON.4",      0x00CC  },
    {   "T2CON.5",      0x00CD  },
    {   "T2CON.6",      0x00CE  },
    {   "T2CON.7",      0x00CF  },
    {   "TB8",          0x009B  },
    {   "TCLK",         0x00CC  },
    {   "TCON",         0x0088  },
    {   "TCON.0",       0x0088  },
    {   "TCON.1",       0x0089  },
    {   "TCON.2",       0x008A  },
    {   "TCON.3",       0x008B  },
    {   "TCON.4",       0x008C  },
    {   "TCON.5",       0x008D  },
    {   "TCON.6",       0x008E  },
    {   "TCON.7",       0x008F  },
    {   "TF0",          0x008D  },
    {   "TF1",          0x008F  },
    {   "TF2",          0x00CF  },
    {   "TH0",          0x008C  },
    {   "TH1",          0x008D  },
    {   "TH2",          0x00CD  },
    {   "TI",           0x0099  },
    {   "TL0",          0x008A  },
    {   "TL1",          0x008B  },
    {   "TL2",          0x00CC  },
    {   "TMOD",         0x0089  },
    {   "TR0",          0x008C  },
    {   "TR1",          0x008E  },
    {   "TR2",          0x00CA  },
    {   "TXD",          0x00B1  },
    {   NULL,           0x0000  }
};
