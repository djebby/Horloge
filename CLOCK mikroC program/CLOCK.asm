
_main:

;CLOCK.c,20 :: 		void main() {
;CLOCK.c,21 :: 		int cr = 8;
	MOVLW      8
	MOVWF      main_cr_L0+0
	MOVLW      0
	MOVWF      main_cr_L0+1
	MOVLW      17
	MOVWF      main_crr_L0+0
	MOVLW      0
	MOVWF      main_crr_L0+1
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;CLOCK.c,27 :: 		Keypad_Init();
	CALL       _Keypad_Init+0
;CLOCK.c,28 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;CLOCK.c,29 :: 		Lcd_Cmd( _LCD_CURSOR_OFF );
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,30 :: 		Lcd_Out(1,4,"WELCOME");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,31 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;CLOCK.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,33 :: 		for(cr=17;cr>1;cr--){
	MOVLW      17
	MOVWF      main_cr_L0+0
	MOVLW      0
	MOVWF      main_cr_L0+1
L_main1:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_cr_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main102
	MOVF       main_cr_L0+0, 0
	SUBLW      1
L__main102:
	BTFSC      STATUS+0, 0
	GOTO       L_main2
;CLOCK.c,34 :: 		Lcd_Out(1,cr,"THIS CLOCK IS ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_cr_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,35 :: 		Lcd_Out(2,crr,"PROGRAMED BY:");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       main_crr_L0+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,36 :: 		delay_ms(250);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;CLOCK.c,37 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,38 :: 		crr--;
	MOVLW      1
	SUBWF      main_crr_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_crr_L0+1, 1
;CLOCK.c,33 :: 		for(cr=17;cr>1;cr--){
	MOVLW      1
	SUBWF      main_cr_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_cr_L0+1, 1
;CLOCK.c,39 :: 		}
	GOTO       L_main1
L_main2:
;CLOCK.c,40 :: 		Lcd_Out(1,1,"THIS CLOCK IS ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,41 :: 		Lcd_Out(2,1,"PROGRAMED BY :");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,42 :: 		delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;CLOCK.c,43 :: 		Lcd_Cmd(_LCD_Clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,44 :: 		Lcd_out(1,1,"DJEBBI FIRAS");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,45 :: 		Delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;CLOCK.c,46 :: 		Lcd_Cmd(_LCD_Clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,47 :: 		Lcd_out(1,1,"ARFAOUI FOUED");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,48 :: 		Delay_ms(1500);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;CLOCK.c,49 :: 		Lcd_Cmd(_LCD_Clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,51 :: 		Lcd_Out(1,1,"PUT THE TIME:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,52 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;CLOCK.c,53 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,54 :: 		Lcd_Out(1,5,"HH:MM");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_CLOCK+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;CLOCK.c,56 :: 		while(i<2) {
L_main9:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main103
	MOVLW      2
	SUBWF      main_i_L0+0, 0
L__main103:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;CLOCK.c,58 :: 		hhcorect:
___main_hhcorect:
;CLOCK.c,59 :: 		kp[i] = 0;
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      FSR
	CLRF       INDF+0
;CLOCK.c,60 :: 		do
L_main11:
;CLOCK.c,62 :: 		kp[i] = keypad_key_click();
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      FLOC__main+0
	CALL       _Keypad_Key_Click+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;CLOCK.c,63 :: 		}while(!kp[i]);
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main11
;CLOCK.c,64 :: 		switch(kp[i])
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      R3+0
	GOTO       L_main14
;CLOCK.c,66 :: 		case 1 : time[i] = 55; break;
L_main16:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      55
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,67 :: 		case 2 : time[i] = 52; break;
L_main17:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,68 :: 		case 3 : time[i] = 49; break;
L_main18:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      49
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,69 :: 		case 4 : time[i] = 67; break;
L_main19:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      67
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,70 :: 		case 5 : time[i] = 56; break;
L_main20:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      56
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,71 :: 		case 6 : time[i] = 53; break;
L_main21:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      53
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,72 :: 		case 7 : time[i] = 50; break;
L_main22:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      50
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,73 :: 		case 8 : time[i] = 48; break;
L_main23:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,74 :: 		case 9 : time[i] = 57; break;
L_main24:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      57
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,75 :: 		case 10: time[i] = 54; break;
L_main25:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      54
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,76 :: 		case 11: time[i] = 51; break;
L_main26:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      51
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,77 :: 		case 12: time[i] = 61; break;
L_main27:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      61
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,78 :: 		case 13: time[i] = 47;break;
L_main28:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      47
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,79 :: 		case 14: time[i] = 42; break;
L_main29:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      42
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,80 :: 		case 15: time[i] = 45; break;
L_main30:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      45
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,81 :: 		case 16: time[i] = 43; break;
L_main31:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      43
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main15
;CLOCK.c,82 :: 		}
L_main14:
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main16
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main17
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main18
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main19
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main20
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main21
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main22
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main23
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_main24
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_main25
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_main26
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_main27
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_main28
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_main29
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_main30
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_main31
L_main15:
;CLOCK.c,83 :: 		if(time[0]>=51 || time[0]<=47 )
	MOVLW      128
	XORWF      main_time_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main104
	MOVLW      51
	SUBWF      main_time_L0+0, 0
L__main104:
	BTFSC      STATUS+0, 0
	GOTO       L__main100
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_time_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main105
	MOVF       main_time_L0+0, 0
	SUBLW      47
L__main105:
	BTFSC      STATUS+0, 0
	GOTO       L__main100
	GOTO       L_main34
L__main100:
;CLOCK.c,84 :: 		goto hhcorect;
	GOTO       ___main_hhcorect
L_main34:
;CLOCK.c,85 :: 		if (i==1 && time[0]==50 )
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main106
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main106:
	BTFSS      STATUS+0, 2
	GOTO       L_main37
	MOVLW      0
	XORWF      main_time_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main107
	MOVLW      50
	XORWF      main_time_L0+0, 0
L__main107:
	BTFSS      STATUS+0, 2
	GOTO       L_main37
L__main99:
;CLOCK.c,87 :: 		if (time[1]>=52 || time[1]<=47)
	MOVLW      128
	XORWF      main_time_L0+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main108
	MOVLW      52
	SUBWF      main_time_L0+2, 0
L__main108:
	BTFSC      STATUS+0, 0
	GOTO       L__main98
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_time_L0+3, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main109
	MOVF       main_time_L0+2, 0
	SUBLW      47
L__main109:
	BTFSC      STATUS+0, 0
	GOTO       L__main98
	GOTO       L_main40
L__main98:
;CLOCK.c,88 :: 		goto hhcorect;
	GOTO       ___main_hhcorect
L_main40:
;CLOCK.c,89 :: 		}
L_main37:
;CLOCK.c,90 :: 		if(i==1 && time[0]<50 )
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main110
	MOVLW      1
	XORWF      main_i_L0+0, 0
L__main110:
	BTFSS      STATUS+0, 2
	GOTO       L_main43
	MOVLW      128
	XORWF      main_time_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main111
	MOVLW      50
	SUBWF      main_time_L0+0, 0
L__main111:
	BTFSC      STATUS+0, 0
	GOTO       L_main43
L__main97:
;CLOCK.c,92 :: 		if (time[1]>=58 || time[1]<=47)
	MOVLW      128
	XORWF      main_time_L0+3, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main112
	MOVLW      58
	SUBWF      main_time_L0+2, 0
L__main112:
	BTFSC      STATUS+0, 0
	GOTO       L__main96
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_time_L0+3, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main113
	MOVF       main_time_L0+2, 0
	SUBLW      47
L__main113:
	BTFSC      STATUS+0, 0
	GOTO       L__main96
	GOTO       L_main46
L__main96:
;CLOCK.c,93 :: 		goto hhcorect;
	GOTO       ___main_hhcorect
L_main46:
;CLOCK.c,94 :: 		}
L_main43:
;CLOCK.c,95 :: 		Lcd_chr(1,i+5,time[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	ADDWF      main_i_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;CLOCK.c,96 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;CLOCK.c,97 :: 		}
	GOTO       L_main9
L_main10:
;CLOCK.c,100 :: 		while(2<=i && i<4) {
L_main47:
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main114
	MOVLW      2
	SUBWF      main_i_L0+0, 0
L__main114:
	BTFSS      STATUS+0, 0
	GOTO       L_main48
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main115
	MOVLW      4
	SUBWF      main_i_L0+0, 0
L__main115:
	BTFSC      STATUS+0, 0
	GOTO       L_main48
L__main95:
;CLOCK.c,101 :: 		mmcorect:
___main_mmcorect:
;CLOCK.c,102 :: 		kp[i] = 0;
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      FSR
	CLRF       INDF+0
;CLOCK.c,103 :: 		do
L_main51:
;CLOCK.c,105 :: 		kp[i] = keypad_key_click();
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      FLOC__main+0
	CALL       _Keypad_Key_Click+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;CLOCK.c,106 :: 		}while(!kp[i]);
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main51
;CLOCK.c,108 :: 		switch(kp[i])
	MOVF       main_i_L0+0, 0
	ADDLW      _kp+0
	MOVWF      R3+0
	GOTO       L_main54
;CLOCK.c,110 :: 		case 1 : time[i] = 55; break;
L_main56:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      55
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,111 :: 		case 2 : time[i] = 52; break;
L_main57:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,112 :: 		case 3 : time[i] = 49; break;
L_main58:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      49
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,113 :: 		case 4 : time[i] = 67; break;
L_main59:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      67
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,114 :: 		case 5 : time[i] = 56; break;
L_main60:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      56
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,115 :: 		case 6 : time[i] = 53; break;
L_main61:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      53
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,116 :: 		case 7 : time[i] = 50; break;
L_main62:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      50
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,117 :: 		case 8 : time[i] = 48; break;
L_main63:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,118 :: 		case 9 : time[i] = 57; break;
L_main64:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      57
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,119 :: 		case 10: time[i] = 54; break;
L_main65:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      54
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,120 :: 		case 11: time[i] = 51; break;
L_main66:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      51
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,121 :: 		case 12: time[i] = 61; break;
L_main67:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      61
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,122 :: 		case 13: time[i] = 47;break;
L_main68:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      47
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,123 :: 		case 14: time[i] = 42; break;
L_main69:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      42
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,124 :: 		case 15: time[i] = 45; break;
L_main70:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      45
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,125 :: 		case 16: time[i] = 43; break;
L_main71:
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVLW      43
	MOVWF      INDF+0
	MOVLW      0
	INCF       FSR, 1
	MOVWF      INDF+0
	GOTO       L_main55
;CLOCK.c,126 :: 		}
L_main54:
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main56
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main57
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main58
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main59
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_main60
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main61
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main62
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main63
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_main64
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_main65
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_main66
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_main67
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_main68
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_main69
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_main70
	MOVF       R3+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_main71
L_main55:
;CLOCK.c,127 :: 		if (time[2] >= 54 || time[2]<= 47)
	MOVLW      128
	XORWF      main_time_L0+5, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main116
	MOVLW      54
	SUBWF      main_time_L0+4, 0
L__main116:
	BTFSC      STATUS+0, 0
	GOTO       L__main94
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_time_L0+5, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main117
	MOVF       main_time_L0+4, 0
	SUBLW      47
L__main117:
	BTFSC      STATUS+0, 0
	GOTO       L__main94
	GOTO       L_main74
L__main94:
;CLOCK.c,128 :: 		goto mmcorect;
	GOTO       ___main_mmcorect
L_main74:
;CLOCK.c,129 :: 		if(i==3 && (time[3] >= 58 || time[3]<=47 ) )
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main118
	MOVLW      3
	XORWF      main_i_L0+0, 0
L__main118:
	BTFSS      STATUS+0, 2
	GOTO       L_main79
	MOVLW      128
	XORWF      main_time_L0+7, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main119
	MOVLW      58
	SUBWF      main_time_L0+6, 0
L__main119:
	BTFSC      STATUS+0, 0
	GOTO       L__main93
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_time_L0+7, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main120
	MOVF       main_time_L0+6, 0
	SUBLW      47
L__main120:
	BTFSC      STATUS+0, 0
	GOTO       L__main93
	GOTO       L_main79
L__main93:
L__main92:
;CLOCK.c,130 :: 		goto mmcorect;
	GOTO       ___main_mmcorect
L_main79:
;CLOCK.c,132 :: 		Lcd_chr(1,i+6,time[i]);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      6
	ADDWF      main_i_L0+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      main_time_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;CLOCK.c,133 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;CLOCK.c,134 :: 		}
	GOTO       L_main47
L_main48:
;CLOCK.c,136 :: 		s1 = 48;
	MOVLW      48
	MOVWF      main_s1_L0+0
	MOVLW      0
	MOVWF      main_s1_L0+1
;CLOCK.c,137 :: 		s2 = 48;
	MOVLW      48
	MOVWF      main_s2_L0+0
	MOVLW      0
	MOVWF      main_s2_L0+1
;CLOCK.c,138 :: 		m1 = time[3];
	MOVF       main_time_L0+6, 0
	MOVWF      main_m1_L0+0
	MOVF       main_time_L0+7, 0
	MOVWF      main_m1_L0+1
;CLOCK.c,139 :: 		m2 = time[2];
	MOVF       main_time_L0+4, 0
	MOVWF      main_m2_L0+0
	MOVF       main_time_L0+5, 0
	MOVWF      main_m2_L0+1
;CLOCK.c,140 :: 		h1 = time[1];
	MOVF       main_time_L0+2, 0
	MOVWF      main_h1_L0+0
	MOVF       main_time_L0+3, 0
	MOVWF      main_h1_L0+1
;CLOCK.c,141 :: 		h2 = time[0];
	MOVF       main_time_L0+0, 0
	MOVWF      main_h2_L0+0
	MOVF       main_time_L0+1, 0
	MOVWF      main_h2_L0+1
;CLOCK.c,144 :: 		while (1)         {
L_main80:
;CLOCK.c,146 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;CLOCK.c,147 :: 		Lcd_chr(1,5,h2);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       main_h2_L0+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;CLOCK.c,148 :: 		Lcd_chr_Cp(h1);
	MOVF       main_h1_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,149 :: 		Lcd_chr_Cp(':');
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,150 :: 		Lcd_chr_Cp(m2);
	MOVF       main_m2_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,151 :: 		Lcd_chr_Cp(m1);
	MOVF       main_m1_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,152 :: 		Lcd_chr_Cp(':');
	MOVLW      58
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,153 :: 		Lcd_chr_Cp(s2);
	MOVF       main_s2_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,154 :: 		Lcd_chr_Cp(s1);
	MOVF       main_s1_L0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;CLOCK.c,155 :: 		s1++;
	INCF       main_s1_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_s1_L0+1, 1
;CLOCK.c,157 :: 		if (s1==58)
	MOVLW      0
	XORWF      main_s1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main121
	MOVLW      58
	XORWF      main_s1_L0+0, 0
L__main121:
	BTFSS      STATUS+0, 2
	GOTO       L_main82
;CLOCK.c,159 :: 		s2++;
	INCF       main_s2_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_s2_L0+1, 1
;CLOCK.c,160 :: 		s1=48;
	MOVLW      48
	MOVWF      main_s1_L0+0
	MOVLW      0
	MOVWF      main_s1_L0+1
;CLOCK.c,161 :: 		}
L_main82:
;CLOCK.c,162 :: 		if (s2 == 54)
	MOVLW      0
	XORWF      main_s2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main122
	MOVLW      54
	XORWF      main_s2_L0+0, 0
L__main122:
	BTFSS      STATUS+0, 2
	GOTO       L_main83
;CLOCK.c,164 :: 		m1++;
	INCF       main_m1_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_m1_L0+1, 1
;CLOCK.c,165 :: 		s2=48;
	MOVLW      48
	MOVWF      main_s2_L0+0
	MOVLW      0
	MOVWF      main_s2_L0+1
;CLOCK.c,166 :: 		}
L_main83:
;CLOCK.c,167 :: 		if (m1==58)
	MOVLW      0
	XORWF      main_m1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main123
	MOVLW      58
	XORWF      main_m1_L0+0, 0
L__main123:
	BTFSS      STATUS+0, 2
	GOTO       L_main84
;CLOCK.c,169 :: 		m2++;
	INCF       main_m2_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_m2_L0+1, 1
;CLOCK.c,170 :: 		m1 = 48;
	MOVLW      48
	MOVWF      main_m1_L0+0
	MOVLW      0
	MOVWF      main_m1_L0+1
;CLOCK.c,171 :: 		}
L_main84:
;CLOCK.c,172 :: 		if (m2 == 54)
	MOVLW      0
	XORWF      main_m2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main124
	MOVLW      54
	XORWF      main_m2_L0+0, 0
L__main124:
	BTFSS      STATUS+0, 2
	GOTO       L_main85
;CLOCK.c,174 :: 		h1++;
	INCF       main_h1_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_h1_L0+1, 1
;CLOCK.c,175 :: 		m2=48;
	MOVLW      48
	MOVWF      main_m2_L0+0
	MOVLW      0
	MOVWF      main_m2_L0+1
;CLOCK.c,176 :: 		}
L_main85:
;CLOCK.c,177 :: 		if (h1 == 58)
	MOVLW      0
	XORWF      main_h1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main125
	MOVLW      58
	XORWF      main_h1_L0+0, 0
L__main125:
	BTFSS      STATUS+0, 2
	GOTO       L_main86
;CLOCK.c,179 :: 		h2++;
	INCF       main_h2_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_h2_L0+1, 1
;CLOCK.c,180 :: 		h1 = 48;
	MOVLW      48
	MOVWF      main_h1_L0+0
	MOVLW      0
	MOVWF      main_h1_L0+1
;CLOCK.c,181 :: 		}
L_main86:
;CLOCK.c,182 :: 		if (h2 == 50 && h1 == 52)
	MOVLW      0
	XORWF      main_h2_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main126
	MOVLW      50
	XORWF      main_h2_L0+0, 0
L__main126:
	BTFSS      STATUS+0, 2
	GOTO       L_main89
	MOVLW      0
	XORWF      main_h1_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main127
	MOVLW      52
	XORWF      main_h1_L0+0, 0
L__main127:
	BTFSS      STATUS+0, 2
	GOTO       L_main89
L__main91:
;CLOCK.c,184 :: 		s1 = 48;
	MOVLW      48
	MOVWF      main_s1_L0+0
	MOVLW      0
	MOVWF      main_s1_L0+1
;CLOCK.c,185 :: 		s2 = 48;
	MOVLW      48
	MOVWF      main_s2_L0+0
	MOVLW      0
	MOVWF      main_s2_L0+1
;CLOCK.c,186 :: 		m1 = 48;
	MOVLW      48
	MOVWF      main_m1_L0+0
	MOVLW      0
	MOVWF      main_m1_L0+1
;CLOCK.c,187 :: 		m2 = 48;
	MOVLW      48
	MOVWF      main_m2_L0+0
	MOVLW      0
	MOVWF      main_m2_L0+1
;CLOCK.c,188 :: 		h1 = 48;
	MOVLW      48
	MOVWF      main_h1_L0+0
	MOVLW      0
	MOVWF      main_h1_L0+1
;CLOCK.c,189 :: 		h2 = 48;
	MOVLW      48
	MOVWF      main_h2_L0+0
	MOVLW      0
	MOVWF      main_h2_L0+1
;CLOCK.c,190 :: 		}
L_main89:
;CLOCK.c,191 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main90:
	DECFSZ     R13+0, 1
	GOTO       L_main90
	DECFSZ     R12+0, 1
	GOTO       L_main90
	DECFSZ     R11+0, 1
	GOTO       L_main90
	NOP
	NOP
;CLOCK.c,192 :: 		}
	GOTO       L_main80
;CLOCK.c,193 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
