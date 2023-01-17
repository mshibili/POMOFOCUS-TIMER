#ifndef     _MAIN_H
#define     _MAIN_H


/*
 typedef union
 {
 //unsigned char byte;
 
  
    unsigned char dotMode:1;
    unsigned char b1:1;
    unsigned char b2:1;
    unsigned char b3:1;
    unsigned char b4:1;

 }bitu;

    // bit_uni *bit_u;
    bitu uni;
//    uni.dotMode;

*/

unsigned char dotMode=0, seconds=0,hours=12, minutes=0;

/* -----------FUNCTION PROTOTYPES--------------*/

static void init_config(void);

void timer0_config(void);
void interrupt timer0_isr(void);
void set_time(volatile char *dotMode);




#endif
