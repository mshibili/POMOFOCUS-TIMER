#include "xc.h"
#include "main.h"


//unsigned char hours, minutes, dotMode, seconds;
void interrupt isr(void)
{
	static unsigned long int count, count2;
     
	if (TMR0IF)
	{

		TMR0 = TMR0 + 8;

		if (++count2 == 625) // count for 0.5 sec
		{
			count2 = 0;
			dotMode = !dotMode;
		}

		if (++count == 75000)  // count for 1 minutes
		{
			count = 0;
			if (minutes < 59)          // increament minutes by 1 every time upto 59 min
				minutes++;

			else                      // if minutes == 59, increament hours by 1, and repeate minutes from 0
			{
				if (hours < 24)    // increament hours till 24
					hours++;
				else
					hours = 12;  // after it reached 24, again repeate from 12:00
				minutes = 0;

			}

		}
		TMR0IF = 0;
	}
}