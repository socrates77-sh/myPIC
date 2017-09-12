#include <pic16f87.h>


#define Nop() 			__asm__("nop")
#define ClrWdt() 		__asm__("clrwdt")
#define Stop() 			__asm__("stop")

char c_a;
const char c_b = 100;

void main(void)
{
	c_a = T2CON;
	//c_b = KBIM;

	PORTA = c_a + c_b;
	PORTB = c_a - c_b;

	__asm
		movai 100
		movra PORTA
	__endasm;

	__asm__("stop");

	Nop();
	ClrWdt();
	Stop();

	while(1);
}
