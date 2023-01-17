#include <xc.h>
#include "main.h"
#include "ssd_display.h"
#include "digital_keypad.h"

unsigned char clock[6];


char key;

static void init_config(void)
{
    /* Config PORTB as digital */
	ADCON1 = 0x0F;

    TRISB = 0x00;
    PORTB = 0x00;
    init_ssd_control();
    timer0_config();
    INTCONbits.GIE = 1;
}


void main(void)
{
    init_config();
    static unsigned char editMode = 0, feild = 2;;
    static  unsigned char wait;
        while(1)
        {
            key = read_digital_keypad(LEVEL);

            if(wait++ == 50)
            {
                wait = 0;
                if(key == MODE)
                    {
                        if(editMode++ == 3)  
                        {  editMode = 0;
                        } 
                    
                         feild = 1;
                    }


                if(editMode  == 1)
                {
                    switch (key)
                    {
                    case UP:
                        if(feild == 0)
                        {   if(minutes++ == 59) minutes = 0;
                        }

                        else if(feild == 1)
                        {   if(hours++ == 24)  hours = 0;
                        }
                        else 
                        {   if(seconds++ == 59)  seconds = 0;
                        }
                        break;

                    case DOWN:
                        if(feild == 0)
                        {   if(minutes-- == 0) minutes = 59;    
                        }

                        else if(feild == 1 && editMode)
                        {   if(hours-- == 0)  hours = 23;
                        }
                        else 
                        {   if(seconds-- == 0)  seconds = 59;
                        }  
                        break;

                    case FIELD:
                            if(feild++ == 2)
                            feild=0;
                            break;
                
                    default:
                        break;
                    }

                  /*  if(key == UP && editMode == 1)
                    {


                    }
                    else if (key == DOWN && editMode == 1)
                    {
                        if(feild == 0)
                        {   if(minutes-- == 0) minutes = 59;    
                        }

                        else if(feild == 1 && editMode)
                        {   if(hours-- == 0)  hours = 23;
                        }
                        else 
                        {   if(seconds-- == 0)  seconds = 59;
                        }                  

                    }
                    else if(key == FIELD && editMode == 1)
                    {
                        if(feild++ == 2)
                            feild=0;

                    }
                }*/
                
            }
            
            if(editMode == 1 && dotMode)
            {
                
                if(feild==0)
                {   clock[3] = BLANK;
                    clock[2] = BLANK;
                }
                else if(feild == 1)
                {   clock[1] = BLANK;
                    clock[0] = BLANK;
                }
                //  update the clock
                //else 
                


            }
            else
            {
                clock[3] = ssd_digit[ minutes % 10];
                clock[2] = ssd_digit[ minutes / 10];

                if(dotMode == 1)    clock[1] = ssd_digit[ hours % 10] | DOT;
                else                clock[1] = ssd_digit[ hours % 10];

                clock[0] = ssd_digit[ hours / 10];
                //  update the clock

            }
        display(clock);

        }
    }
          

}