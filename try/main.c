#include "pic16f87.h"

char gVar;

void fun1()
{
	char lVar;
	lVar = gVar-1;
	if(lVar==18)
	{
		PORTB = 0;
	}
	else
	{
		PORTB = 1;
	}
}

void main()
{
	gVar = 18;
	fun1();
	
	PORTA = 0XFF;

	while(1)
	{
		PORTA=~PORTA;
		RB0 = ~RB0;       
	}    
}

