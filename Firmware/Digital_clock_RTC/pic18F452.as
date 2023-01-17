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
	FNROOT	_main
	FNCALL	intlevel2,_timer0_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_count
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
	file	"pic18F452.as"
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
       ds      2
	global	_hours
	global	_hours
_hours:
       ds      2
	global	_minutes
	global	_minutes
_minutes:
       ds      2
	global	_seconds
	global	_seconds
_seconds:
       ds      2
	file	"pic18F452.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (8 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	8
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
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
?_main:	; 1 bytes @ 0x0
?_timer0_isr:	; 1 bytes @ 0x0
??_timer0_isr:	; 1 bytes @ 0x0
	ds   14
??_main:	; 1 bytes @ 0xE
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         8
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          126     14      22
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
;!    None.
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
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _timer0_isr                                          14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
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
;!COMRAM              7E      E      16       1       17.5%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      16      15        0.0%
;!DATA                 0      0      16       3        0.0%
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
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
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
	opt	stack 30
	dw	0FFFFh
	line	21
	
l717:
;main.c: 21: if(count == 10)
		movlw	10
	xorwf	((c:_count)),c,w	;volatile
iorwf	((c:_count+1)),c,w	;volatile
	btfss	status,2
	goto	u11
	goto	u10

u11:
	goto	l58
u10:
	line	23
	
l719:
;main.c: 22: {
;main.c: 23: PORTB = ~PORTB;
	comf	((c:3969)),c	;volatile
	line	24
	
l721:
;main.c: 24: count = 0;
	movlw	high(0)
	movwf	((c:_count+1)),c	;volatile
	movlw	low(0)
	movwf	((c:_count)),c	;volatile
	goto	l58
	line	25
	
l57:
	line	26
	
l58:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
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
	opt	stack 30
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
	
i2l723:
;timer0_ISR.c: 7: if (TMR0IF)
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u2_41
	goto	i2u2_40
i2u2_41:
	goto	i2l74
i2u2_40:
	line	9
	
i2l725:
;timer0_ISR.c: 8: {
;timer0_ISR.c: 9: TMR0L = TMR0L | 0x0BDB | 0x0002;
	movf	((c:4054)),c,w	;volatile
	iorlw	low(0DBh)
	movwf	((c:4054)),c	;volatile
	line	10
	
i2l727:
;timer0_ISR.c: 10: count++;
	infsnz	((c:_count)),c	;volatile
	incf	((c:_count+1)),c	;volatile
	line	11
	
i2l729:
;timer0_ISR.c: 11: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l74
	line	12
	
i2l73:
	line	13
	
i2l74:
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
