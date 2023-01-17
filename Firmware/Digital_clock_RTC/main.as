opt subtitle "Microchip Technology Omniscient Code Generator v1.36 (Free mode) build 201601150325"

opt pagewidth 120

	opt lm

	processor	18F452
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATA equ 0F89h ;# 
# 848 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATA equ 0F89h ;# 
# 848 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATA equ 0F89h ;# 
# 848 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTA equ 0F80h ;# 
# 195 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTB equ 0F81h ;# 
# 319 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTC equ 0F82h ;# 
# 488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTD equ 0F83h ;# 
# 608 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PORTE equ 0F84h ;# 
# 731 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATA equ 0F89h ;# 
# 848 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATB equ 0F8Ah ;# 
# 980 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATC equ 0F8Bh ;# 
# 1112 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATD equ 0F8Ch ;# 
# 1244 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LATE equ 0F8Dh ;# 
# 1301 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISA equ 0F92h ;# 
# 1306 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRA equ 0F92h ;# 
# 1498 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISB equ 0F93h ;# 
# 1503 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRB equ 0F93h ;# 
# 1737 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISC equ 0F94h ;# 
# 1742 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRC equ 0F94h ;# 
# 1976 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISD equ 0F95h ;# 
# 1981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRD equ 0F95h ;# 
# 2197 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TRISE equ 0F96h ;# 
# 2202 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
DDRE equ 0F96h ;# 
# 2348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE1 equ 0F9Dh ;# 
# 2427 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR1 equ 0F9Eh ;# 
# 2506 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR1 equ 0F9Fh ;# 
# 2585 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIE2 equ 0FA0h ;# 
# 2628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PIR2 equ 0FA1h ;# 
# 2671 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
IPR2 equ 0FA2h ;# 
# 2714 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON1 equ 0FA6h ;# 
# 2779 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EECON2 equ 0FA7h ;# 
# 2785 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEDATA equ 0FA8h ;# 
# 2791 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
EEADR equ 0FA9h ;# 
# 2797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA equ 0FABh ;# 
# 2802 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCSTA1 equ 0FABh ;# 
# 3020 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA equ 0FACh ;# 
# 3025 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXSTA1 equ 0FACh ;# 
# 3321 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG equ 0FADh ;# 
# 3326 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TXREG1 equ 0FADh ;# 
# 3332 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG equ 0FAEh ;# 
# 3337 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCREG1 equ 0FAEh ;# 
# 3343 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG equ 0FAFh ;# 
# 3348 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SPBRG1 equ 0FAFh ;# 
# 3354 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T3CON equ 0FB1h ;# 
# 3476 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3 equ 0FB2h ;# 
# 3482 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3L equ 0FB2h ;# 
# 3488 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR3H equ 0FB3h ;# 
# 3494 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP2CON equ 0FBAh ;# 
# 3581 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2 equ 0FBBh ;# 
# 3587 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2L equ 0FBBh ;# 
# 3593 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR2H equ 0FBCh ;# 
# 3599 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCP1CON equ 0FBDh ;# 
# 3677 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1 equ 0FBEh ;# 
# 3683 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1L equ 0FBEh ;# 
# 3689 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
CCPR1H equ 0FBFh ;# 
# 3695 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON1 equ 0FC1h ;# 
# 3762 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADCON0 equ 0FC2h ;# 
# 3902 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRES equ 0FC3h ;# 
# 3908 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESL equ 0FC3h ;# 
# 3914 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
ADRESH equ 0FC4h ;# 
# 3920 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON2 equ 0FC5h ;# 
# 3981 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPCON1 equ 0FC6h ;# 
# 4050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPSTAT equ 0FC7h ;# 
# 4317 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPADD equ 0FC8h ;# 
# 4323 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
SSPBUF equ 0FC9h ;# 
# 4329 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T2CON equ 0FCAh ;# 
# 4399 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PR2 equ 0FCBh ;# 
# 4404 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
MEMCON equ 0FCBh ;# 
# 4508 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR2 equ 0FCCh ;# 
# 4514 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T1CON equ 0FCDh ;# 
# 4622 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1 equ 0FCEh ;# 
# 4628 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1L equ 0FCEh ;# 
# 4634 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR1H equ 0FCFh ;# 
# 4640 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
RCON equ 0FD0h ;# 
# 4782 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WDTCON equ 0FD1h ;# 
# 4809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
LVDCON equ 0FD2h ;# 
# 4866 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
OSCCON equ 0FD3h ;# 
# 4885 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
T0CON equ 0FD5h ;# 
# 4954 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0 equ 0FD6h ;# 
# 4960 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0L equ 0FD6h ;# 
# 4966 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TMR0H equ 0FD7h ;# 
# 4972 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STATUS equ 0FD8h ;# 
# 5050 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2 equ 0FD9h ;# 
# 5056 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2L equ 0FD9h ;# 
# 5062 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR2H equ 0FDAh ;# 
# 5068 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW2 equ 0FDBh ;# 
# 5074 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC2 equ 0FDCh ;# 
# 5080 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC2 equ 0FDDh ;# 
# 5086 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC2 equ 0FDEh ;# 
# 5092 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF2 equ 0FDFh ;# 
# 5098 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
BSR equ 0FE0h ;# 
# 5104 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1 equ 0FE1h ;# 
# 5110 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1L equ 0FE1h ;# 
# 5116 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR1H equ 0FE2h ;# 
# 5122 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW1 equ 0FE3h ;# 
# 5128 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC1 equ 0FE4h ;# 
# 5134 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC1 equ 0FE5h ;# 
# 5140 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC1 equ 0FE6h ;# 
# 5146 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF1 equ 0FE7h ;# 
# 5152 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
WREG equ 0FE8h ;# 
# 5163 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0 equ 0FE9h ;# 
# 5169 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0L equ 0FE9h ;# 
# 5175 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
FSR0H equ 0FEAh ;# 
# 5181 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PLUSW0 equ 0FEBh ;# 
# 5187 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PREINC0 equ 0FECh ;# 
# 5193 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTDEC0 equ 0FEDh ;# 
# 5199 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
POSTINC0 equ 0FEEh ;# 
# 5205 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INDF0 equ 0FEFh ;# 
# 5211 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON3 equ 0FF0h ;# 
# 5302 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON2 equ 0FF1h ;# 
# 5378 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON equ 0FF2h ;# 
# 5383 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
INTCON1 equ 0FF2h ;# 
# 5609 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PROD equ 0FF3h ;# 
# 5615 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODL equ 0FF3h ;# 
# 5621 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PRODH equ 0FF4h ;# 
# 5627 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TABLAT equ 0FF5h ;# 
# 5635 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTR equ 0FF6h ;# 
# 5641 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRL equ 0FF6h ;# 
# 5647 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRH equ 0FF7h ;# 
# 5653 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TBLPTRU equ 0FF8h ;# 
# 5661 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLAT equ 0FF9h ;# 
# 5668 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PC equ 0FF9h ;# 
# 5674 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCL equ 0FF9h ;# 
# 5680 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATH equ 0FFAh ;# 
# 5686 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
PCLATU equ 0FFBh ;# 
# 5692 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
STKPTR equ 0FFCh ;# 
# 5797 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOS equ 0FFDh ;# 
# 5803 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSL equ 0FFDh ;# 
# 5809 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSH equ 0FFEh ;# 
# 5815 "/opt/microchip/xc8/v1.36/include/pic18f452.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_display_clock
	FNCALL	_display_clock,___awdiv
	FNCALL	_display_clock,___awmod
	FNROOT	_main
	FNCALL	intlevel2,_timer0_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_ssd_digit
	global	_clock
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"ssd_display.h"
	line	32

;initializer for _ssd_digit
	db	low(0E7h)
	db	low(021h)
	db	low(0CBh)
	db	low(06Bh)
	db	low(02Dh)
	db	low(06Eh)
	db	low(0EEh)
	db	low(023h)
	db	low(0EFh)
	db	low(06Fh)
	file	"main.h"
	line	27

;initializer for _clock
	db	low(0)
	db	low(0)
	db	low(02h)
	db	low(01h)
	global	_count
	global	_dotMode
	global	_hours
	global	_minutes
	global	_seconds
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_PORTA
_PORTA	set	0xF80
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTD
_PORTD	set	0xF83
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISD
_TRISD	set	0xF95
	global	_PEIE
_PEIE	set	0x7F96
	global	_PSA
_PSA	set	0x7EAB
	global	_T08BIT
_T08BIT	set	0x7EAE
	global	_T0CS
_T0CS	set	0x7EAD
	global	_T0PS0
_T0PS0	set	0x7EA8
	global	_T0PS1
_T0PS1	set	0x7EA9
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0ON
_TMR0ON	set	0x7EAF
; #config settings
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_count
_count:
       ds      1
	global	_dotMode
_dotMode:
       ds      1
	global	_hours
_hours:
       ds      1
	global	_minutes
_minutes:
       ds      1
	global	_seconds
_seconds:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec
global __pdataCOMRAM
__pdataCOMRAM:
	file	"ssd_display.h"
	line	32
_ssd_digit:
       ds      10
psect	dataCOMRAM
	file	"main.h"
	line	27
	global	_clock
_clock:
       ds      4
	file	"main.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (5 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
	line	#
; Initialize objects allocated to COMRAM (14 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,14
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_display_clock:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_timer0_isr:	; 1 bytes @ 0x0
??_timer0_isr:	; 1 bytes @ 0x0
	ds   14
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xE
	ds   2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	ds   2
??___awdiv:	; 1 bytes @ 0x12
??___awmod:	; 1 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x13
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   2
??_display_clock:	; 1 bytes @ 0x16
	ds   2
	global	display_clock@wait
display_clock@wait:	; 2 bytes @ 0x18
	ds   2
	global	display_clock@digit
display_clock@digit:	; 1 bytes @ 0x1A
	ds   1
??_main:	; 1 bytes @ 0x1B
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        14
;!    BSS         5
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          126     27      46
;!    BANK0           128      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_display_clock
;!    _display_clock->___awdiv
;!
;!Critical Paths under _timer0_isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _timer0_isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _timer0_isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _timer0_isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _timer0_isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _timer0_isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _timer0_isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    1097
;!                      _display_clock
;! ---------------------------------------------------------------------------------
;! (1) _display_clock                                        5     5      0    1097
;!                                             22 COMRAM     5     5      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     468
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              8     4      4     472
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _timer0_isr                                          14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _display_clock
;!     ___awdiv
;!     ___awmod
;!
;! _timer0_isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      17        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      16        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80      0       0       5        0.0%
;!BITCOMRAM           7E      0       0       0        0.0%
;!COMRAM              7E     1B      2E       1       36.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      2E      15        0.0%
;!DATA                 0      0      2E       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_display_clock
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"main.c"
	line	19
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	22
	
l1006:
		movlw	10
	xorwf	((c:_count)),c,w	;volatile
	btfss	status,2
	goto	u451
	goto	u450

u451:
	goto	l1010
u450:
	
l1008:
	movf	((c:_dotMode)),c,w	;volatile
	btfsc	status,2
	goto	u461
	goto	u460
u461:
	movlw	1
	goto	u470
u460:
	movlw	0
u470:
	movwf	((c:_dotMode)),c	;volatile
	goto	l1010
	
l32:
	line	23
	
l1010:
		movlw	20
	xorwf	((c:_count)),c,w	;volatile
	btfss	status,2
	goto	u481
	goto	u480

u481:
	goto	l1016
u480:
	
l1012:
	incf	((c:_seconds)),c	;volatile
	
l1014:
	movlw	low(0)
	movwf	((c:_count)),c	;volatile
	goto	l1016
	
l33:
	line	24
	
l1016:
		movlw	60
	xorwf	((c:_seconds)),c,w	;volatile
	btfss	status,2
	goto	u491
	goto	u490

u491:
	goto	l1022
u490:
	
l1018:
	incf	((c:_minutes)),c	;volatile
	
l1020:
	movlw	low(0)
	movwf	((c:_seconds)),c	;volatile
	goto	l1022
	
l34:
	line	25
	
l1022:
		movlw	60
	xorwf	((c:_minutes)),c,w	;volatile
	btfss	status,2
	goto	u501
	goto	u500

u501:
	goto	l1032
u500:
	line	26
	
l1024:
		movlw	0Dh-0
	cpfslt	((c:_hours)),c	;volatile
	goto	u511
	goto	u510

u511:
	goto	l1030
u510:
	
l1026:
	incf	((c:_hours)),c	;volatile
	
l1028:
	movlw	low(0)
	movwf	((c:_minutes)),c	;volatile
	goto	l1032
	line	27
	
l36:
	
l1030:
	movlw	low(0)
	movwf	((c:_hours)),c	;volatile
	goto	l1032
	
l37:
	goto	l1032
	line	28
	
l35:
	line	30
	
l1032:
	call	_display_clock	;wreg free
	line	32
	
l38:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_display_clock

;; *************** function _display_clock *****************
;; Defined at:
;;		line 18 in file "ssd_display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  wait            2   24[COMRAM] unsigned int 
;;  digit           1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"ssd_display.c"
	line	18
global __ptext1
__ptext1:
psect	text1
	file	"ssd_display.c"
	line	18
	global	__size_of_display_clock
	__size_of_display_clock	equ	__end_of_display_clock-_display_clock
	
_display_clock:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	23
	
l980:
	movff	(c:_minutes),(c:___awmod@dividend)	;volatile
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:_clock)),c
	line	24
	movff	(c:_minutes),(c:___awdiv@dividend)	;volatile
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	(0+((c:_clock)+01h)),c
	line	25
	movff	(c:_hours),(c:___awmod@dividend)	;volatile
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	(0+((c:_clock)+02h)),c
	line	26
	movff	(c:_hours),(c:___awdiv@dividend)	;volatile
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	(0+((c:_clock)+03h)),c
	line	28
	
l982:
	movlw	low(0)
	movwf	((c:display_clock@digit)),c
	
l984:
		movlw	04h-1
	cpfsgt	((c:display_clock@digit)),c
	goto	u391
	goto	u390

u391:
	goto	l988
u390:
	goto	l73
	
l986:
	goto	l73
	line	29
	
l66:
	line	30
	
l988:
		movlw	2
	xorwf	((c:display_clock@digit)),c,w
	btfss	status,2
	goto	u401
	goto	u400

u401:
	goto	l994
u400:
	
l990:
		decf	((c:_dotMode)),c,w	;volatile
	btfss	status,2
	goto	u411
	goto	u410

u411:
	goto	l994
u410:
	line	31
	
l992:
	movf	((c:display_clock@digit)),c,w
	mullw	01h
	movlw	low(_clock)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_clock)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_display_clock+0+0)&0ffh,c
	movf	((??_display_clock+0+0)),c,w
	mullw	01h
	movlw	low(_ssd_digit)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ssd_digit)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	iorlw	low(010h)
	movwf	((c:3971)),c	;volatile
	line	32
	goto	l996
	line	33
	
l68:
	line	34
	
l994:
	movf	((c:display_clock@digit)),c,w
	mullw	01h
	movlw	low(_clock)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_clock)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	(??_display_clock+0+0)&0ffh,c
	movf	((??_display_clock+0+0)),c,w
	mullw	01h
	movlw	low(_ssd_digit)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_ssd_digit)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:3971)),c	;volatile
	goto	l996
	line	35
	
l69:
	line	36
	
l996:
	movff	(c:display_clock@digit),??_display_clock+0+0
	movlw	(01h)&0ffh
	movwf	(??_display_clock+1+0)&0ffh,c
	incf	(??_display_clock+0+0),c
	goto	u424
u425:
	bcf	status,0
	rlcf	((??_display_clock+1+0)),c
u424:
	decfsz	(??_display_clock+0+0),c
	goto	u425
	movf	((c:3968)),c,w	;volatile
	andlw	low(0F0h)
	iorwf	((??_display_clock+1+0)),c,w
	movwf	((c:3968)),c	;volatile
	line	38
	
l998:
	movlw	high(03E8h)
	movwf	((c:display_clock@wait+1)),c
	movlw	low(03E8h)
	movwf	((c:display_clock@wait)),c
	goto	l1000
	
l71:
	goto	l1000
	
l70:
	
l1000:
	decf	((c:display_clock@wait)),c
	btfss	status,0
	decf	((c:display_clock@wait+1)),c
		incf	((c:display_clock@wait)),c,w
	bnz	u431
	incf	((c:display_clock@wait+1)),c,w
	btfss	status,2
	goto	u431
	goto	u430

u431:
	goto	l1000
u430:
	goto	l1002
	
l72:
	line	28
	
l1002:
	incf	((c:display_clock@digit)),c
	
l1004:
		movlw	04h-1
	cpfsgt	((c:display_clock@digit)),c
	goto	u441
	goto	u440

u441:
	goto	l988
u440:
	goto	l73
	
l67:
	line	40
	
l73:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_display_clock
	__end_of_display_clock:
	signat	_display_clock,89
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_clock
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/awmod.c"
	line	8
global __ptext2
__ptext2:
psect	text2
	file	"/opt/microchip/xc8/v1.36/sources/common/awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	13
	
l944:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l946:
	btfsc	((c:___awmod@dividend+1)),c,7
	goto	u330
	goto	u331

u331:
	goto	l952
u330:
	line	15
	
l948:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l950:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l952
	line	17
	
l309:
	line	18
	
l952:
	btfsc	((c:___awmod@divisor+1)),c,7
	goto	u340
	goto	u341

u341:
	goto	l956
u340:
	line	19
	
l954:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l956
	
l310:
	line	20
	
l956:
	movf	((c:___awmod@divisor)),c,w
iorwf	((c:___awmod@divisor+1)),c,w
	btfsc	status,2
	goto	u351
	goto	u350

u351:
	goto	l972
u350:
	line	21
	
l958:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l962
	
l313:
	line	23
	
l960:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l962
	line	25
	
l312:
	line	22
	
l962:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u361
	goto	u360
u361:
	goto	l960
u360:
	goto	l964
	
l314:
	goto	l964
	line	26
	
l315:
	line	27
	
l964:
		movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u371
	goto	u370

u371:
	goto	l968
u370:
	line	28
	
l966:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l968
	
l316:
	line	29
	
l968:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l970:
	decfsz	((c:___awmod@counter)),c
	
	goto	l964
	goto	l972
	
l317:
	goto	l972
	line	31
	
l311:
	line	32
	
l972:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u381
	goto	u380
u381:
	goto	l976
u380:
	line	33
	
l974:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l976
	
l318:
	line	34
	
l976:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l319
	
l978:
	line	35
	
l319:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.36/sources/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[COMRAM] int 
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_clock
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.36/sources/common/awdiv.c"
	line	8
global __ptext3
__ptext3:
psect	text3
	file	"/opt/microchip/xc8/v1.36/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 28
	dw	0FFFFh
	line	14
	
l900:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l902:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u270
	goto	u271

u271:
	goto	l908
u270:
	line	16
	
l904:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l906:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l908
	line	18
	
l296:
	line	19
	
l908:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u280
	goto	u281

u281:
	goto	l914
u280:
	line	20
	
l910:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l912:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l914
	line	22
	
l297:
	line	23
	
l914:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l916:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u291
	goto	u290

u291:
	goto	l936
u290:
	line	25
	
l918:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l922
	
l300:
	line	27
	
l920:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l922
	line	29
	
l299:
	line	26
	
l922:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u301
	goto	u300
u301:
	goto	l920
u300:
	goto	l924
	
l301:
	goto	l924
	line	30
	
l302:
	line	31
	
l924:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l926:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u311
	goto	u310

u311:
	goto	l932
u310:
	line	33
	
l928:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l930:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l932
	line	35
	
l303:
	line	36
	
l932:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l934:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l924
	goto	l936
	
l304:
	goto	l936
	line	38
	
l298:
	line	39
	
l936:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u321
	goto	u320
u321:
	goto	l940
u320:
	line	40
	
l938:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l940
	
l305:
	line	41
	
l940:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l306
	
l942:
	line	42
	
l306:
	return	;funcret
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_timer0_isr

;; *************** function _timer0_isr *****************
;; Defined at:
;;		line 5 in file "timer0_ISR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"timer0_ISR.c"
	line	5
	global	__size_of_timer0_isr
	__size_of_timer0_isr	equ	__end_of_timer0_isr-_timer0_isr
	
_timer0_isr:
;incstack = 0
	opt	stack 28
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	dw	0FFFFh; errata NOP
	movff	pclat+0,??_timer0_isr+0
	movff	pclat+1,??_timer0_isr+1
	movff	fsr0l+0,??_timer0_isr+2
	movff	fsr0h+0,??_timer0_isr+3
	movff	fsr1l+0,??_timer0_isr+4
	movff	fsr1h+0,??_timer0_isr+5
	movff	fsr2l+0,??_timer0_isr+6
	movff	fsr2h+0,??_timer0_isr+7
	movff	prodl+0,??_timer0_isr+8
	movff	prodh+0,??_timer0_isr+9
	movff	tblptrl+0,??_timer0_isr+10
	movff	tblptrh+0,??_timer0_isr+11
	movff	tblptru+0,??_timer0_isr+12
	movff	tablat+0,??_timer0_isr+13
	line	7
	
i2l892:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u26_41
	goto	i2u26_40
i2u26_41:
	goto	i2l128
i2u26_40:
	line	9
	
i2l894:
	movf	((c:4054)),c,w	;volatile
	iorlw	low(0DBh)
	movwf	((c:4054)),c	;volatile
	line	10
	
i2l896:
	incf	((c:_count)),c	;volatile
	line	11
	
i2l898:
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l128
	line	12
	
i2l127:
	line	13
	
i2l128:
	movff	??_timer0_isr+13,tablat+0
	movff	??_timer0_isr+12,tblptru+0
	movff	??_timer0_isr+11,tblptrh+0
	movff	??_timer0_isr+10,tblptrl+0
	movff	??_timer0_isr+9,prodh+0
	movff	??_timer0_isr+8,prodl+0
	movff	??_timer0_isr+7,fsr2h+0
	movff	??_timer0_isr+6,fsr2l+0
	movff	??_timer0_isr+5,fsr1h+0
	movff	??_timer0_isr+4,fsr1l+0
	movff	??_timer0_isr+3,fsr0h+0
	movff	??_timer0_isr+2,fsr0l+0
	movff	??_timer0_isr+1,pclat+1
	movff	??_timer0_isr+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	dw	0FFFFh; errata NOP
	opt stack 0
GLOBAL	__end_of_timer0_isr
	__end_of_timer0_isr:
	signat	_timer0_isr,89
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
