;  ASM code generated by mikroVirtualMachine for PIC - V. 8.2.0.0
;  Date/Time: 1/29/2013 4:51:09 PM
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$2804			GOTO	_main
$004E	$	_disp:
;7segment.c,7 :: 		void disp()
;7segment.c,9 :: 		portb=dis[a];
$004E	$1303			BCF	STATUS, RP1
$004F	$1283			BCF	STATUS, RP0
$0050	$0816			MOVF	_a, 0
$0051	$3F0C			ADDLW	_dis
$0052	$0084			MOVWF	FSR
$0053	$0800			MOVF	INDF, 0
$0054	$0086			MOVWF	PORTB
;7segment.c,10 :: 		porta=0b01000;
$0055	$3008			MOVLW	8
$0056	$0085			MOVWF	PORTA
;7segment.c,11 :: 		delay_ms(10);
$0057	$300D			MOVLW	13
$0058	$00CB			MOVWF	STACK_11
$0059	$30FF			MOVLW	255
$005A	$00CA			MOVWF	STACK_10
$005B	$0BCB			DECFSZ	STACK_11, F
$005C	$285E			GOTO	$+2
$005D	$2861			GOTO	$+4
$005E	$0BCA			DECFSZ	STACK_10, F
$005F	$285E			GOTO	$-1
$0060	$285B			GOTO	$-5
$0061	$30F3			MOVLW	243
$0062	$00CA			MOVWF	STACK_10
$0063	$0BCA			DECFSZ	STACK_10, F
$0064	$2863			GOTO	$-1
$0065	$0000			NOP
;7segment.c,12 :: 		portb=0;
$0066	$0186			CLRF	PORTB, 1
;7segment.c,13 :: 		portb=dis[b];
$0067	$0817			MOVF	_b, 0
$0068	$3F0C			ADDLW	_dis
$0069	$0084			MOVWF	FSR
$006A	$0800			MOVF	INDF, 0
$006B	$0086			MOVWF	PORTB
;7segment.c,14 :: 		porta=0b10000;
$006C	$3010			MOVLW	16
$006D	$0085			MOVWF	PORTA
;7segment.c,15 :: 		delay_ms(10);
$006E	$300D			MOVLW	13
$006F	$00CB			MOVWF	STACK_11
$0070	$30FF			MOVLW	255
$0071	$00CA			MOVWF	STACK_10
$0072	$0BCB			DECFSZ	STACK_11, F
$0073	$2875			GOTO	$+2
$0074	$2878			GOTO	$+4
$0075	$0BCA			DECFSZ	STACK_10, F
$0076	$2875			GOTO	$-1
$0077	$2872			GOTO	$-5
$0078	$30F3			MOVLW	243
$0079	$00CA			MOVWF	STACK_10
$007A	$0BCA			DECFSZ	STACK_10, F
$007B	$287A			GOTO	$-1
$007C	$0000			NOP
;7segment.c,16 :: 		portb=0;
$007D	$0186			CLRF	PORTB, 1
;7segment.c,17 :: 		}
$007E	$0008			RETURN
$007F	$	GlobalIni7segment:
$007F	$3000			MOVLW	0
$0080	$1303			BCF	STATUS, RP1
$0081	$1283			BCF	STATUS, RP0
$0082	$0096			MOVWF	_a+0
$0083	$3000			MOVLW	0
$0084	$0097			MOVWF	_b+0
$0085	$303F			MOVLW	63
$0086	$008C			MOVWF	_dis+0
$0087	$3006			MOVLW	6
$0088	$008D			MOVWF	_dis+1
$0089	$305B			MOVLW	91
$008A	$008E			MOVWF	_dis+2
$008B	$304F			MOVLW	79
$008C	$008F			MOVWF	_dis+3
$008D	$3066			MOVLW	102
$008E	$0090			MOVWF	_dis+4
$008F	$306D			MOVLW	109
$0090	$0091			MOVWF	_dis+5
$0091	$307D			MOVLW	125
$0092	$0092			MOVWF	_dis+6
$0093	$3007			MOVLW	7
$0094	$0093			MOVWF	_dis+7
$0095	$307F			MOVLW	127
$0096	$0094			MOVWF	_dis+8
$0097	$306F			MOVLW	111
$0098	$0095			MOVWF	_dis+9
$0099	$0008			RETURN
$0004	$	_main:
;7segment.c,19 :: 		void main()
;7segment.c,21 :: 		Trisb = 0;
$0004	$207F			CALL	GlobalIni7segment
$0005	$1683			BSF	STATUS, RP0
$0006	$0186			CLRF	TRISB, 1
;7segment.c,22 :: 		Portb = 0;
$0007	$1283			BCF	STATUS, RP0
$0008	$0186			CLRF	PORTB, 1
;7segment.c,23 :: 		Trisa = 0b00111;
$0009	$3007			MOVLW	7
$000A	$1683			BSF	STATUS, RP0
$000B	$0085			MOVWF	TRISA
;7segment.c,24 :: 		Porta = 0;
$000C	$1283			BCF	STATUS, RP0
$000D	$0185			CLRF	PORTA, 1
;7segment.c,26 :: 		while(1)
$000E	$	L_main_0:
;7segment.c,28 :: 		if(Porta.f0==1)
$000E	$3001			MOVLW	1
$000F	$0505			ANDWF	PORTA, 0
$0010	$00C1			MOVWF	STACK_1
$0011	$0841			MOVF	STACK_1, 0
$0012	$3A01			XORLW	1
$0013	$1D03			BTFSS	STATUS, Z
$0014	$2823			GOTO	L_main_2
;7segment.c,30 :: 		a++;
$0015	$0A96			INCF	_a, 1
;7segment.c,31 :: 		if(a==10)
$0016	$0816			MOVF	_a, 0
$0017	$3A0A			XORLW	10
$0018	$1D03			BTFSS	STATUS, Z
$0019	$281B			GOTO	L_main_3
;7segment.c,32 :: 		a=0;
$001A	$0196			CLRF	_a, 1
$001B	$	L_main_3:
;7segment.c,33 :: 		for(i=0;i<15;i++)
$001B	$0198			CLRF	_i, 1
$001C	$	L_main_4:
$001C	$300F			MOVLW	15
$001D	$0218			SUBWF	_i, 0
$001E	$1803			BTFSC	STATUS, C
$001F	$2823			GOTO	L_main_5
;7segment.c,34 :: 		disp();
$0020	$204E			CALL	_disp
$0021	$	L_main_6:
;7segment.c,33 :: 		for(i=0;i<15;i++)
$0021	$0A98			INCF	_i, 1
;7segment.c,34 :: 		disp();
$0022	$281C			GOTO	L_main_4
$0023	$	L_main_5:
;7segment.c,35 :: 		}
$0023	$	L_main_2:
;7segment.c,37 :: 		if(Porta.f1==1)
$0023	$3000			MOVLW	0
$0024	$1885			BTFSC	PORTA, 1
$0025	$3001			MOVLW	1
$0026	$00C1			MOVWF	STACK_1
$0027	$0841			MOVF	STACK_1, 0
$0028	$3A01			XORLW	1
$0029	$1D03			BTFSS	STATUS, Z
$002A	$2839			GOTO	L_main_7
;7segment.c,39 :: 		b++;
$002B	$0A97			INCF	_b, 1
;7segment.c,40 :: 		if(b==10)
$002C	$0817			MOVF	_b, 0
$002D	$3A0A			XORLW	10
$002E	$1D03			BTFSS	STATUS, Z
$002F	$2831			GOTO	L_main_8
;7segment.c,41 :: 		b=0;
$0030	$0197			CLRF	_b, 1
$0031	$	L_main_8:
;7segment.c,42 :: 		for(i=0;i<15;i++)
$0031	$0198			CLRF	_i, 1
$0032	$	L_main_9:
$0032	$300F			MOVLW	15
$0033	$0218			SUBWF	_i, 0
$0034	$1803			BTFSC	STATUS, C
$0035	$2839			GOTO	L_main_10
;7segment.c,43 :: 		disp();
$0036	$204E			CALL	_disp
$0037	$	L_main_11:
;7segment.c,42 :: 		for(i=0;i<15;i++)
$0037	$0A98			INCF	_i, 1
;7segment.c,43 :: 		disp();
$0038	$2832			GOTO	L_main_9
$0039	$	L_main_10:
;7segment.c,44 :: 		}
$0039	$	L_main_7:
;7segment.c,46 :: 		if(Porta.f2==1)
$0039	$3000			MOVLW	0
$003A	$1905			BTFSC	PORTA, 2
$003B	$3001			MOVLW	1
$003C	$00C1			MOVWF	STACK_1
$003D	$0841			MOVF	STACK_1, 0
$003E	$3A01			XORLW	1
$003F	$1D03			BTFSS	STATUS, Z
$0040	$284B			GOTO	L_main_12
;7segment.c,48 :: 		a=b=0;
$0041	$0197			CLRF	_b, 1
$0042	$0196			CLRF	_a, 1
;7segment.c,49 :: 		for(i=0;i<15;i++)
$0043	$0198			CLRF	_i, 1
$0044	$	L_main_13:
$0044	$300F			MOVLW	15
$0045	$0218			SUBWF	_i, 0
$0046	$1803			BTFSC	STATUS, C
$0047	$284B			GOTO	L_main_14
;7segment.c,50 :: 		disp();
$0048	$204E			CALL	_disp
$0049	$	L_main_15:
;7segment.c,49 :: 		for(i=0;i<15;i++)
$0049	$0A98			INCF	_i, 1
;7segment.c,50 :: 		disp();
$004A	$2844			GOTO	L_main_13
$004B	$	L_main_14:
;7segment.c,51 :: 		}
$004B	$	L_main_12:
;7segment.c,52 :: 		disp();
$004B	$204E			CALL	_disp
;7segment.c,53 :: 		}
$004C	$280E			GOTO	L_main_0
;7segment.c,55 :: 		}
$004D	$284D			GOTO	$
