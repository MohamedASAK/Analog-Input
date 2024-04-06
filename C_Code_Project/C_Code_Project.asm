
_main:

;C_Code_Project.c,1 :: 		void main() {
;C_Code_Project.c,2 :: 		int i=0;
;C_Code_Project.c,3 :: 		TRISB = 0;
	CLRF       TRISB+0
;C_Code_Project.c,4 :: 		while(1){
L_main0:
;C_Code_Project.c,5 :: 		i = ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
;C_Code_Project.c,6 :: 		if(i>500){
	MOVLW      128
	XORLW      1
	MOVWF      R2+0
	MOVLW      128
	XORWF      R0+1, 0
	SUBWF      R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVF       R0+0, 0
	SUBLW      244
L__main5:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;C_Code_Project.c,7 :: 		PORTB.B0 = 1;
	BSF        PORTB+0, 0
;C_Code_Project.c,8 :: 		}
	GOTO       L_main3
L_main2:
;C_Code_Project.c,10 :: 		PORTB.B0 = 0;
	BCF        PORTB+0, 0
;C_Code_Project.c,11 :: 		}
L_main3:
;C_Code_Project.c,12 :: 		}
	GOTO       L_main0
;C_Code_Project.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
