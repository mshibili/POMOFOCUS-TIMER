#ifndef DIGITAL_KEYPAD_H
#define DIGITAL_KEYPAD_H

#define LEVEL					     	0
#define STATE_CHANGE			       	1

#define KEY_PORT					PORTC

#define MODE					0x07
#define FIELD					0x0B
#define UP  					0x0D
#define DOWN					0x0E
#define START  					0x0D
#define STOP					0x0E
#define ALL_RELEASED				0x0F

#define INPUT_PINS					0x0F

void init_digital_keypad(void);
unsigned char read_digital_keypad(unsigned char detection_type);

#endif
