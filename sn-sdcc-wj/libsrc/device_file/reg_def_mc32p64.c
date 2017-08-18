#include "reg_def.h"

#define SET_BITS(x,n,of) (~((~(((-1) << (n)) | (x))) << (of))) & 0xFFFF

const struct reg_def all_reg[] = {
	{ "INDF",    0x01b0, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "INDF0",   0x01b0, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "INDF1",   0x01b1, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "INDF2",   0x01b2, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "HIBYTE",  0x01b3, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "FSR",     0x01b4, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "FSR0",    0x01b4, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "FSR1",    0x01b5, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "PCL",     0x01b6, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "STATUS",  0x01b7, 1, 
		{
			{"C", 1}, {"DC", 1},  {"Z", 1}, {"", 0}, 
			{"", 0}, {"", 0},  {"", 0}, {"", 0}
		}
	},
	{ "MCR",     0x01b8, 1, 
		{
			{"MINT0", 2}, {"", -1},  {"MINT1", 2}, {"", -1}, 
			{"PD", 1}, {"TO", 1},  {"", 0}, {"GIE", 1}
		}
	},
	{ "INDF3",   0x01b9, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "INTE",    0x01ba, 1, 
		{
			{"T0IE", 1}, {"T1IE", 1},  {"INT0IE", 1}, {"INT1IE", 1}, 
			{"T2IE", 1}, {"I2CIE", 1},  {"ADIE", 1}, {"", 0}
		}
	},
	{ "INTF",    0x01bb, 1, 
		{
			{"T0IF", 1}, {"T1IF", 1},  {"INT0IF", 1}, {"INT1IF", 1}, 
			{"T2IF", 1}, {"I2CIF", 1},  {"ADIF", 1}, {"", 0}
		}
	},
	{ "OSCM",    0x01bc, 1, 
		{
			{"HFEN", 1}, {"LFEN", 1},  {"CLKS", 1}, {"", 0}, 
			{"STBH", 1}, {"STBL", 1},  {"", 0}, {"", 0}
		}
	},
	{ "IOP0",    0x01c0, 1, 
		{
			{"P00", 1}, {"P01", 1},  {"P02", 1}, {"P03", 1}, 
			{"P04", 1}, {"P05", 1},  {"P06", 1}, {"P07", 1}
		}
	},
	{ "OEP0",    0x01c1, 1, 
		{
			{"P00OE", 1}, {"P01OE", 1},  {"P02OE", 1}, {"P03OE", 1}, 
			{"P04OE", 1}, {"P05OE", 1},  {"P06OE", 1}, {"P07OE", 1}
		}
	},
	{ "PUP0",    0x01c2, 1, 
		{
			{"P00PU", 1}, {"P01PU", 1},  {"P02PU", 1}, {"P03PU", 1}, 
			{"P04PU", 1}, {"P05PU", 1},  {"P06PU", 0}, {"P07PU", 0}
		}
	},
	{ "IOP1",    0x01c4, 1, 
		{
			{"P10", 1}, {"P11", 1},  {"P12", 1}, {"P13", 1}, 
			{"P14", 1}, {"P15", 1},  {"P16", 1}, {"P17", 1}
		}
	},
	{ "OEP1",    0x01c5, 1, 
		{
			{"P10OE", 1}, {"P11OE", 1},  {"P12OE", 1}, {"P13OE", 1}, 
			{"P14OE", 1}, {"P15OE", 1},  {"P16OE", 1}, {"P17OE", 1}
		}
	},
	{ "PUP1",    0x01c6, 1, 
		{
			{"P10PU", 1}, {"P11PU", 1},  {"P12PU", 1}, {"P13PU", 1}, 
			{"P14PU", 1}, {"P15PU", 1},  {"P16PU", 1}, {"P17PU", 1}
		}
	},
	{ "IOP2",    0x01c8, 1, 
		{
			{"P20", 1}, {"P21", 1},  {"P22", 1}, {"P23", 1}, 
			{"P24", 1}, {"P25", 1},  {"P26", 1}, {"P27", 1}
		}
	},
	{ "OEP2",    0x01c9, 1, 
		{
			{"P20OE", 1}, {"P21OE", 1},  {"P22OE", 1}, {"P23OE", 1}, 
			{"P24OE", 1}, {"P25OE", 1},  {"P26OE", 1}, {"P27OE", 1}
		}
	},
	{ "PUP2",    0x01ca, 1, 
		{
			{"P20PU", 1}, {"P21PU", 1},  {"P22PU", 1}, {"P23PU", 1}, 
			{"P24PU", 1}, {"P25PU", 1},  {"P26PU", 1}, {"P27PU", 1}
		}
	},
	{ "IOP3",    0x01cc, 1, 
		{
			{"P30", 1}, {"P31", 1},  {"", 0}, {"", 0}, 
			{"", 0}, {"", 0},  {"", 0}, {"", 0}
		}
	},
	{ "OEP3",    0x01cd, 1, 
		{
			{"P30OE", 1}, {"P31OE", 1},  {"", 0}, {"", 0}, 
			{"", 0}, {"", 0},  {"", 0}, {"", 0}
		}
	},
	{ "PUP3",    0x01ce, 1, 
		{
			{"P30PU", 1}, {"P31PU", 1},  {"", 0}, {"", 0}, 
			{"", 0}, {"", 0},  {"", 0}, {"", 0}
		}
	},
	{ "T0CR",    0x01d0, 1, 
		{
			{"T0PR", 3}, {"", -1},  {"", -1}, {"T0PS", 2}, 
			{"", -1}, {"BUZ0OE", 1},  {"PWM0OE", 1}, {"TC0EN", 1}
		}
	},
	{ "T0CNT",   0x01d1, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T0LOAD",  0x01d2, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T0DATA",  0x01d3, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T1CR",    0x01d4, 1, 
		{
			{"T1PR", 3}, {"", -1},  {"", -1}, {"T1PS", 2}, 
			{"", -1}, {"BUZ1OE", 1},  {"PWM1OE", 1}, {"TC1EN", 1}
		}
	},
	{ "T1CNT",   0x01d5, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T1LOAD",  0x01d6, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T1DATA",  0x01d7, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T2CR",    0x01d8, 1, 
		{
			{"T2PR", 3}, {"", -1},  {"", -1}, {"T2PS", 2}, 
			{"", -1}, {"T2MOD", 1},  {"", 0}, {"TC2EN", 1}
		}
	},
	{ "T2CNTH",  0x01d9, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T2CNTL",  0x01da, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T2LOADH", 0x01db, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "T2LOADL", 0x01dc, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "TK0CRH",  0x01e0, 1, 
		{
			{"TK0FQ", 3}, {"", -1},  {"", -1}, {"TK0CLR", 1}, 
			{"TK0RCE", 1}, {"TK0JE", 1},  {"TK0K", 2}, {"", -1}
		}
	},
	{ "TK0CRL",  0x01e1, 1, 
		{
			{"TK0IO", 4}, {"", -1},  {"", -1}, {"", -1}, 
			{"TK0FL", 2}, {"", -1},  {"TK0IE", 1}, {"TK0IF", 1}
		}
	},
	{ "TK0CNTH", 0x01e2, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "TK0CNTL", 0x01e3, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "TK1CRH",  0x01e4, 1, 
		{
			{"TK1FQ", 3}, {"", -1},  {"", -1}, {"TK1CLR", 1}, 
			{"TK1RCE", 1}, {"TK1JE", 1},  {"TK1K", 2}, {"", -1}
		}
	},
	{ "TK1CRL",  0x01e5, 1, 
		{
			{"TK1IO", 4}, {"", -1},  {"", -1}, {"", -1}, 
			{"TK1FL", 2}, {"", -1},  {"TK1IE", 1}, {"TK1IF", 1}
		}
	},
	{ "TK1CNTH", 0x01e6, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "TK1CNTL", 0x01e7, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "TK2CRH",  0x01e8, 1, 
		{
			{"TK2FQ", 3}, {"", -1},  {"", -1}, {"TK2CLR", 1}, 
			{"TK2RCE", 1}, {"TK2JE", 1},  {"TK2K", 2}, {"", -1}
		}
	},
	{ "TK2CRL",  0x01e9, 1, 
		{
			{"TK2IO", 4}, {"", -1},  {"", -1}, {"", -1}, 
			{"TK2FL", 2}, {"", -1},  {"TK2IE", 1}, {"TK2IF", 1}
		}
	},
	{ "TK2CNTH", 0x01ea, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "TK2CNTL", 0x01eb, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "ADCR0",   0x01ec, 1, 
		{
			{"ADON", 1}, {"ADEOC", 1},  {"ADCKS", 2}, {"", -1}, 
			{"ADCHS", 4}, {"", -1},  {"", -1}, {"", -1}
		}
	},
	{ "ADCR1",   0x01ed, 1, 
		{
			{"ADIOS0", 1}, {"ADIOS1", 1},  {"ADOIS2", 1}, {"ADIOS3", 1}, 
			{"ADIOS4", 1}, {"ADIOS5", 1},  {"ADOIS6", 1}, {"ADIOS7", 1}
		}
	},
	{ "ADRH",    0x01ee, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "ADRL",    0x01ef, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "I2CCR",   0x01f0, 1, 
		{
			{"RXAK", 1}, {"HEN", 1},  {"SRW", 1}, {"TXAK", 1}, 
			{"HTX", 1}, {"HBB", 1},  {"HAAS", 1}, {"HCF", 1}
		}
	},
	{ "I2CADDR", 0x01f1, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } },
	{ "I2CDATA", 0x01f2, 0, { {"", 0}, {"", 0},  {"", 0}, {"", 0}, {"", 0}, {"", 0},  {"", 0}, {"", 0} } }
};

const int num_reg = sizeof(all_reg) / sizeof(all_reg[0]);

const int maxram = 0x1ff;
const int badram[][2] = { {0x140, 0x1af}, {0x1bd, 0x1bf}, {0x1c3, 0x1c3}, {0x1c8, 0x1c8},
                          {0x1dd, 0x1df}, {0x1f3, 0x1fa}, {0x1f4, 0x1ff}, {-1, -1} };

const struct bit_def config1[] = {
};

const int num_config1 = sizeof(config1) / sizeof(config1[0]);
const int config1_addr = 0x8001;

const struct bit_def config0[] = {
	{"_CP_ALL",              SET_BITS(0, 1, 15)},
	{"_WDT_ALWAYS_OFF",      SET_BITS(0, 2, 0)},
	{"_WDT_SLEEP_OFF",       SET_BITS(1, 2, 0)},
	{"_WDT_ALWAYS_ON",       SET_BITS(3, 2, 0)},
	{"_PTWRT_4_4",           SET_BITS(0, 1, 13) & SET_BITS(0, 2, 2)},
	{"_PTWRT_16_16",         SET_BITS(0, 1, 13) & SET_BITS(1, 2, 2)},
	{"_PTWRT_64_64",         SET_BITS(0, 1, 13) & SET_BITS(2, 2, 2)},
	{"_PTWRT_256_256",       SET_BITS(0, 1, 13) & SET_BITS(3, 2, 2)},
	{"_PTWRT_4_512",         SET_BITS(0, 2, 2)},
	{"_PTWRT_16_1024",       SET_BITS(1, 2, 2)},
	{"_PTWRT_64_2048",       SET_BITS(2, 2, 2)},
	{"_PTWRT_256_4096",      SET_BITS(3, 2, 2)},
	{"_FCPU_2T",             SET_BITS(0, 3, 4)},
	{"_FCPU_4T",             SET_BITS(1, 3, 4)},
	{"_FCPU_8T",             SET_BITS(2, 3, 4)},
	{"_FCPU_16T",            SET_BITS(3, 3, 4)},
	{"_FCPU_32T",            SET_BITS(4, 3, 4)},
	{"_FCPU_64T",            SET_BITS(5, 3, 4)},
	{"_FCPU_128T",           SET_BITS(6, 3, 4)},
	{"_FCPU_256T",           SET_BITS(7, 3, 4)},
	{"_MCLR_ON",             SET_BITS(1, 1, 7)},
	{"_MCLR_OFF",            SET_BITS(0, 1, 7)},
	{"_HRC_LRC",             SET_BITS(0, 2, 8)},
	{"_HRC_LXT",             SET_BITS(1, 2, 8)},
	{"_HXT_LRC",             SET_BITS(2, 2, 8)},
	{"_VLVR_160",            SET_BITS(0, 3, 10)},
	{"_VLVR_185",            SET_BITS(1, 3, 10)},
	{"_VLVR_205",            SET_BITS(2, 3, 10)},
	{"_VLVR_218",            SET_BITS(3, 3, 10)},
	{"_VLVR_232",            SET_BITS(4, 3, 10)},
	{"_VLVR_245",            SET_BITS(5, 3, 10)},
	{"_VLVR_305",            SET_BITS(6, 3, 10)},
	{"_VLVR_360",            SET_BITS(7, 3, 10)}
};

const int num_config0 = sizeof(config0) / sizeof(config0[0]);
const int config0_addr = 0x8000;