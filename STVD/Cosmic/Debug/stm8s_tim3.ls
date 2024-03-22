   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 51 void TIM3_DeInit(void)
  49                     ; 52 {
  51                     .text:	section	.text,new
  52  0000               _TIM3_DeInit:
  56                     ; 53   TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  58  0000 725f5320      	clr	21280
  59                     ; 54   TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  61  0004 725f5321      	clr	21281
  62                     ; 55   TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  64  0008 725f5323      	clr	21283
  65                     ; 58   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  67  000c 725f5327      	clr	21287
  68                     ; 61   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  70  0010 725f5327      	clr	21287
  71                     ; 62   TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  73  0014 725f5325      	clr	21285
  74                     ; 63   TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  76  0018 725f5326      	clr	21286
  77                     ; 64   TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  79  001c 725f5328      	clr	21288
  80                     ; 65   TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  82  0020 725f5329      	clr	21289
  83                     ; 66   TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  85  0024 725f532a      	clr	21290
  86                     ; 67   TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  88  0028 35ff532b      	mov	21291,#255
  89                     ; 68   TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  91  002c 35ff532c      	mov	21292,#255
  92                     ; 69   TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  94  0030 725f532d      	clr	21293
  95                     ; 70   TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  97  0034 725f532e      	clr	21294
  98                     ; 71   TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
 100  0038 725f532f      	clr	21295
 101                     ; 72   TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
 103  003c 725f5330      	clr	21296
 104                     ; 73   TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
 106  0040 725f5322      	clr	21282
 107                     ; 74 }
 110  0044 81            	ret	
 276                     ; 82 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 276                     ; 83                         uint16_t TIM3_Period)
 276                     ; 84 {
 277                     .text:	section	.text,new
 278  0000               _TIM3_TimeBaseInit:
 280       ffffffff      OFST: set -1
 283                     ; 86   TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 285  0000 c7532a        	ld	21290,a
 286                     ; 88   TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 288  0003 7b03          	ld	a,(OFST+4,sp)
 289  0005 c7532b        	ld	21291,a
 290                     ; 89   TIM3->ARRL = (uint8_t)(TIM3_Period);
 292  0008 7b04          	ld	a,(OFST+5,sp)
 293  000a c7532c        	ld	21292,a
 294                     ; 90 }
 297  000d 81            	ret	
 453                     ; 100 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 453                     ; 101                   TIM3_OutputState_TypeDef TIM3_OutputState,
 453                     ; 102                   uint16_t TIM3_Pulse,
 453                     ; 103                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 453                     ; 104 {
 454                     .text:	section	.text,new
 455  0000               _TIM3_OC1Init:
 457  0000 89            	pushw	x
 458  0001 88            	push	a
 459       00000001      OFST:	set	1
 462                     ; 106   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 464  0002 9e            	ld	a,xh
 465  0003 4d            	tnz	a
 466  0004 271e          	jreq	L61
 467  0006 9e            	ld	a,xh
 468  0007 a110          	cp	a,#16
 469  0009 2719          	jreq	L61
 470  000b 9e            	ld	a,xh
 471  000c a120          	cp	a,#32
 472  000e 2714          	jreq	L61
 473  0010 9e            	ld	a,xh
 474  0011 a130          	cp	a,#48
 475  0013 270f          	jreq	L61
 476  0015 9e            	ld	a,xh
 477  0016 a160          	cp	a,#96
 478  0018 270a          	jreq	L61
 479  001a 9e            	ld	a,xh
 480  001b a170          	cp	a,#112
 481  001d 2705          	jreq	L61
 482  001f ae006a        	ldw	x,#106
 483  0022 ad4b          	call	LC001
 484  0024               L61:
 485                     ; 107   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 487  0024 7b03          	ld	a,(OFST+2,sp)
 488  0026 2709          	jreq	L62
 489  0028 a111          	cp	a,#17
 490  002a 2705          	jreq	L62
 491  002c ae006b        	ldw	x,#107
 492  002f ad3e          	call	LC001
 493  0031               L62:
 494                     ; 108   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 496  0031 7b08          	ld	a,(OFST+7,sp)
 497  0033 2709          	jreq	L63
 498  0035 a122          	cp	a,#34
 499  0037 2705          	jreq	L63
 500  0039 ae006c        	ldw	x,#108
 501  003c ad31          	call	LC001
 502  003e               L63:
 503                     ; 111   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 505  003e c65327        	ld	a,21287
 506  0041 a4fc          	and	a,#252
 507  0043 c75327        	ld	21287,a
 508                     ; 113   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 510  0046 7b08          	ld	a,(OFST+7,sp)
 511  0048 a402          	and	a,#2
 512  004a 6b01          	ld	(OFST+0,sp),a
 514  004c 7b03          	ld	a,(OFST+2,sp)
 515  004e a401          	and	a,#1
 516  0050 1a01          	or	a,(OFST+0,sp)
 517  0052 ca5327        	or	a,21287
 518  0055 c75327        	ld	21287,a
 519                     ; 116   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 521  0058 c65325        	ld	a,21285
 522  005b a48f          	and	a,#143
 523  005d 1a02          	or	a,(OFST+1,sp)
 524  005f c75325        	ld	21285,a
 525                     ; 119   TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 527  0062 7b06          	ld	a,(OFST+5,sp)
 528  0064 c7532d        	ld	21293,a
 529                     ; 120   TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 531  0067 7b07          	ld	a,(OFST+6,sp)
 532  0069 c7532e        	ld	21294,a
 533                     ; 121 }
 536  006c 5b03          	addw	sp,#3
 537  006e 81            	ret	
 538  006f               LC001:
 539  006f 89            	pushw	x
 540  0070 5f            	clrw	x
 541  0071 89            	pushw	x
 542  0072 ae0000        	ldw	x,#L102
 543  0075 cd0000        	call	_assert_failed
 545  0078 5b04          	addw	sp,#4
 546  007a 81            	ret	
 609                     ; 131 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 609                     ; 132                   TIM3_OutputState_TypeDef TIM3_OutputState,
 609                     ; 133                   uint16_t TIM3_Pulse,
 609                     ; 134                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 609                     ; 135 {
 610                     .text:	section	.text,new
 611  0000               _TIM3_OC2Init:
 613  0000 89            	pushw	x
 614  0001 88            	push	a
 615       00000001      OFST:	set	1
 618                     ; 137   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 620  0002 9e            	ld	a,xh
 621  0003 4d            	tnz	a
 622  0004 271e          	jreq	L05
 623  0006 9e            	ld	a,xh
 624  0007 a110          	cp	a,#16
 625  0009 2719          	jreq	L05
 626  000b 9e            	ld	a,xh
 627  000c a120          	cp	a,#32
 628  000e 2714          	jreq	L05
 629  0010 9e            	ld	a,xh
 630  0011 a130          	cp	a,#48
 631  0013 270f          	jreq	L05
 632  0015 9e            	ld	a,xh
 633  0016 a160          	cp	a,#96
 634  0018 270a          	jreq	L05
 635  001a 9e            	ld	a,xh
 636  001b a170          	cp	a,#112
 637  001d 2705          	jreq	L05
 638  001f ae0089        	ldw	x,#137
 639  0022 ad4b          	call	LC002
 640  0024               L05:
 641                     ; 138   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 643  0024 7b03          	ld	a,(OFST+2,sp)
 644  0026 2709          	jreq	L06
 645  0028 a111          	cp	a,#17
 646  002a 2705          	jreq	L06
 647  002c ae008a        	ldw	x,#138
 648  002f ad3e          	call	LC002
 649  0031               L06:
 650                     ; 139   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 652  0031 7b08          	ld	a,(OFST+7,sp)
 653  0033 2709          	jreq	L07
 654  0035 a122          	cp	a,#34
 655  0037 2705          	jreq	L07
 656  0039 ae008b        	ldw	x,#139
 657  003c ad31          	call	LC002
 658  003e               L07:
 659                     ; 143   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 661  003e c65327        	ld	a,21287
 662  0041 a4cf          	and	a,#207
 663  0043 c75327        	ld	21287,a
 664                     ; 145   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 666  0046 7b08          	ld	a,(OFST+7,sp)
 667  0048 a420          	and	a,#32
 668  004a 6b01          	ld	(OFST+0,sp),a
 670  004c 7b03          	ld	a,(OFST+2,sp)
 671  004e a410          	and	a,#16
 672  0050 1a01          	or	a,(OFST+0,sp)
 673  0052 ca5327        	or	a,21287
 674  0055 c75327        	ld	21287,a
 675                     ; 149   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 677  0058 c65326        	ld	a,21286
 678  005b a48f          	and	a,#143
 679  005d 1a02          	or	a,(OFST+1,sp)
 680  005f c75326        	ld	21286,a
 681                     ; 153   TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 683  0062 7b06          	ld	a,(OFST+5,sp)
 684  0064 c7532f        	ld	21295,a
 685                     ; 154   TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 687  0067 7b07          	ld	a,(OFST+6,sp)
 688  0069 c75330        	ld	21296,a
 689                     ; 155 }
 692  006c 5b03          	addw	sp,#3
 693  006e 81            	ret	
 694  006f               LC002:
 695  006f 89            	pushw	x
 696  0070 5f            	clrw	x
 697  0071 89            	pushw	x
 698  0072 ae0000        	ldw	x,#L102
 699  0075 cd0000        	call	_assert_failed
 701  0078 5b04          	addw	sp,#4
 702  007a 81            	ret	
 885                     ; 166 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 885                     ; 167                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 885                     ; 168                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 885                     ; 169                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 885                     ; 170                  uint8_t TIM3_ICFilter)
 885                     ; 171 {
 886                     .text:	section	.text,new
 887  0000               _TIM3_ICInit:
 889  0000 89            	pushw	x
 890       00000000      OFST:	set	0
 893                     ; 173   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 895  0001 9e            	ld	a,xh
 896  0002 4d            	tnz	a
 897  0003 2709          	jreq	L201
 898  0005 9e            	ld	a,xh
 899  0006 4a            	dec	a
 900  0007 2705          	jreq	L201
 901  0009 ae00ad        	ldw	x,#173
 902  000c ad6d          	call	LC003
 903  000e               L201:
 904                     ; 174   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 906  000e 7b02          	ld	a,(OFST+2,sp)
 907  0010 2709          	jreq	L211
 908  0012 a144          	cp	a,#68
 909  0014 2705          	jreq	L211
 910  0016 ae00ae        	ldw	x,#174
 911  0019 ad60          	call	LC003
 912  001b               L211:
 913                     ; 175   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 915  001b 7b05          	ld	a,(OFST+5,sp)
 916  001d a101          	cp	a,#1
 917  001f 270d          	jreq	L221
 918  0021 a102          	cp	a,#2
 919  0023 2709          	jreq	L221
 920  0025 a103          	cp	a,#3
 921  0027 2705          	jreq	L221
 922  0029 ae00af        	ldw	x,#175
 923  002c ad4d          	call	LC003
 924  002e               L221:
 925                     ; 176   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
 927  002e 7b06          	ld	a,(OFST+6,sp)
 928  0030 2711          	jreq	L231
 929  0032 a104          	cp	a,#4
 930  0034 270d          	jreq	L231
 931  0036 a108          	cp	a,#8
 932  0038 2709          	jreq	L231
 933  003a a10c          	cp	a,#12
 934  003c 2705          	jreq	L231
 935  003e ae00b0        	ldw	x,#176
 936  0041 ad38          	call	LC003
 937  0043               L231:
 938                     ; 177   assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
 940  0043 7b07          	ld	a,(OFST+7,sp)
 941  0045 a110          	cp	a,#16
 942  0047 2505          	jrult	L041
 943  0049 ae00b1        	ldw	x,#177
 944  004c ad2d          	call	LC003
 945  004e               L041:
 946                     ; 179   if (TIM3_Channel != TIM3_CHANNEL_2)
 948  004e 7b01          	ld	a,(OFST+1,sp)
 949  0050 4a            	dec	a
 950  0051 2714          	jreq	L533
 951                     ; 182     TI1_Config((uint8_t)TIM3_ICPolarity,
 951                     ; 183                (uint8_t)TIM3_ICSelection,
 951                     ; 184                (uint8_t)TIM3_ICFilter);
 953  0053 7b07          	ld	a,(OFST+7,sp)
 954  0055 88            	push	a
 955  0056 7b06          	ld	a,(OFST+6,sp)
 956  0058 97            	ld	xl,a
 957  0059 7b03          	ld	a,(OFST+3,sp)
 958  005b 95            	ld	xh,a
 959  005c cd0000        	call	L3_TI1_Config
 961  005f 84            	pop	a
 962                     ; 187     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
 964  0060 7b06          	ld	a,(OFST+6,sp)
 965  0062 cd0000        	call	_TIM3_SetIC1Prescaler
 968  0065 2012          	jra	L733
 969  0067               L533:
 970                     ; 192     TI2_Config((uint8_t)TIM3_ICPolarity,
 970                     ; 193                (uint8_t)TIM3_ICSelection,
 970                     ; 194                (uint8_t)TIM3_ICFilter);
 972  0067 7b07          	ld	a,(OFST+7,sp)
 973  0069 88            	push	a
 974  006a 7b06          	ld	a,(OFST+6,sp)
 975  006c 97            	ld	xl,a
 976  006d 7b03          	ld	a,(OFST+3,sp)
 977  006f 95            	ld	xh,a
 978  0070 cd0000        	call	L5_TI2_Config
 980  0073 84            	pop	a
 981                     ; 197     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
 983  0074 7b06          	ld	a,(OFST+6,sp)
 984  0076 cd0000        	call	_TIM3_SetIC2Prescaler
 986  0079               L733:
 987                     ; 199 }
 990  0079 85            	popw	x
 991  007a 81            	ret	
 992  007b               LC003:
 993  007b 89            	pushw	x
 994  007c 5f            	clrw	x
 995  007d 89            	pushw	x
 996  007e ae0000        	ldw	x,#L102
 997  0081 cd0000        	call	_assert_failed
 999  0084 5b04          	addw	sp,#4
1000  0086 81            	ret	
1091                     ; 210 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1091                     ; 211                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1091                     ; 212                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1091                     ; 213                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1091                     ; 214                      uint8_t TIM3_ICFilter)
1091                     ; 215 {
1092                     .text:	section	.text,new
1093  0000               _TIM3_PWMIConfig:
1095  0000 89            	pushw	x
1096  0001 89            	pushw	x
1097       00000002      OFST:	set	2
1100                     ; 216   uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1102                     ; 217   uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1104                     ; 220   assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1106  0002 9e            	ld	a,xh
1107  0003 4d            	tnz	a
1108  0004 270a          	jreq	L261
1109  0006 9e            	ld	a,xh
1110  0007 4a            	dec	a
1111  0008 2706          	jreq	L261
1112  000a ae00dc        	ldw	x,#220
1113  000d cd00b4        	call	LC004
1114  0010               L261:
1115                     ; 221   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1117  0010 7b04          	ld	a,(OFST+2,sp)
1118  0012 270a          	jreq	L271
1119  0014 a144          	cp	a,#68
1120  0016 2706          	jreq	L271
1121  0018 ae00dd        	ldw	x,#221
1122  001b cd00b4        	call	LC004
1123  001e               L271:
1124                     ; 222   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1126  001e 7b07          	ld	a,(OFST+5,sp)
1127  0020 a101          	cp	a,#1
1128  0022 270e          	jreq	L202
1129  0024 a102          	cp	a,#2
1130  0026 270a          	jreq	L202
1131  0028 a103          	cp	a,#3
1132  002a 2706          	jreq	L202
1133  002c ae00de        	ldw	x,#222
1134  002f cd00b4        	call	LC004
1135  0032               L202:
1136                     ; 223   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1138  0032 7b08          	ld	a,(OFST+6,sp)
1139  0034 2711          	jreq	L212
1140  0036 a104          	cp	a,#4
1141  0038 270d          	jreq	L212
1142  003a a108          	cp	a,#8
1143  003c 2709          	jreq	L212
1144  003e a10c          	cp	a,#12
1145  0040 2705          	jreq	L212
1146  0042 ae00df        	ldw	x,#223
1147  0045 ad6d          	call	LC004
1148  0047               L212:
1149                     ; 226   if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1151  0047 7b04          	ld	a,(OFST+2,sp)
1152  0049 a144          	cp	a,#68
1153  004b 2706          	jreq	L104
1154                     ; 228     icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1156  004d a644          	ld	a,#68
1157  004f 6b01          	ld	(OFST-1,sp),a
1160  0051 2002          	jra	L304
1161  0053               L104:
1162                     ; 232     icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1164  0053 0f01          	clr	(OFST-1,sp)
1166  0055               L304:
1167                     ; 236   if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1169  0055 7b07          	ld	a,(OFST+5,sp)
1170  0057 4a            	dec	a
1171  0058 2604          	jrne	L504
1172                     ; 238     icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1174  005a a602          	ld	a,#2
1176  005c 2002          	jra	L704
1177  005e               L504:
1178                     ; 242     icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1180  005e a601          	ld	a,#1
1181  0060               L704:
1182  0060 6b02          	ld	(OFST+0,sp),a
1184                     ; 245   if (TIM3_Channel != TIM3_CHANNEL_2)
1186  0062 7b03          	ld	a,(OFST+1,sp)
1187  0064 4a            	dec	a
1188  0065 2726          	jreq	L114
1189                     ; 248     TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1189                     ; 249                (uint8_t)TIM3_ICFilter);
1191  0067 7b09          	ld	a,(OFST+7,sp)
1192  0069 88            	push	a
1193  006a 7b08          	ld	a,(OFST+6,sp)
1194  006c 97            	ld	xl,a
1195  006d 7b05          	ld	a,(OFST+3,sp)
1196  006f 95            	ld	xh,a
1197  0070 cd0000        	call	L3_TI1_Config
1199  0073 84            	pop	a
1200                     ; 252     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1202  0074 7b08          	ld	a,(OFST+6,sp)
1203  0076 cd0000        	call	_TIM3_SetIC1Prescaler
1205                     ; 255     TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1207  0079 7b09          	ld	a,(OFST+7,sp)
1208  007b 88            	push	a
1209  007c 7b03          	ld	a,(OFST+1,sp)
1210  007e 97            	ld	xl,a
1211  007f 7b02          	ld	a,(OFST+0,sp)
1212  0081 95            	ld	xh,a
1213  0082 cd0000        	call	L5_TI2_Config
1215  0085 84            	pop	a
1216                     ; 258     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1218  0086 7b08          	ld	a,(OFST+6,sp)
1219  0088 cd0000        	call	_TIM3_SetIC2Prescaler
1222  008b 2024          	jra	L314
1223  008d               L114:
1224                     ; 263     TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1224                     ; 264                (uint8_t)TIM3_ICFilter);
1226  008d 7b09          	ld	a,(OFST+7,sp)
1227  008f 88            	push	a
1228  0090 7b08          	ld	a,(OFST+6,sp)
1229  0092 97            	ld	xl,a
1230  0093 7b05          	ld	a,(OFST+3,sp)
1231  0095 95            	ld	xh,a
1232  0096 cd0000        	call	L5_TI2_Config
1234  0099 84            	pop	a
1235                     ; 267     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1237  009a 7b08          	ld	a,(OFST+6,sp)
1238  009c cd0000        	call	_TIM3_SetIC2Prescaler
1240                     ; 270     TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1242  009f 7b09          	ld	a,(OFST+7,sp)
1243  00a1 88            	push	a
1244  00a2 7b03          	ld	a,(OFST+1,sp)
1245  00a4 97            	ld	xl,a
1246  00a5 7b02          	ld	a,(OFST+0,sp)
1247  00a7 95            	ld	xh,a
1248  00a8 cd0000        	call	L3_TI1_Config
1250  00ab 84            	pop	a
1251                     ; 273     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1253  00ac 7b08          	ld	a,(OFST+6,sp)
1254  00ae cd0000        	call	_TIM3_SetIC1Prescaler
1256  00b1               L314:
1257                     ; 275 }
1260  00b1 5b04          	addw	sp,#4
1261  00b3 81            	ret	
1262  00b4               LC004:
1263  00b4 89            	pushw	x
1264  00b5 5f            	clrw	x
1265  00b6 89            	pushw	x
1266  00b7 ae0000        	ldw	x,#L102
1267  00ba cd0000        	call	_assert_failed
1269  00bd 5b04          	addw	sp,#4
1270  00bf 81            	ret	
1326                     ; 283 void TIM3_Cmd(FunctionalState NewState)
1326                     ; 284 {
1327                     .text:	section	.text,new
1328  0000               _TIM3_Cmd:
1330  0000 88            	push	a
1331       00000000      OFST:	set	0
1334                     ; 286   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1336  0001 4d            	tnz	a
1337  0002 2711          	jreq	L442
1338  0004 4a            	dec	a
1339  0005 270e          	jreq	L442
1340  0007 ae011e        	ldw	x,#286
1341  000a 89            	pushw	x
1342  000b 5f            	clrw	x
1343  000c 89            	pushw	x
1344  000d ae0000        	ldw	x,#L102
1345  0010 cd0000        	call	_assert_failed
1347  0013 5b04          	addw	sp,#4
1348  0015               L442:
1349                     ; 289   if (NewState != DISABLE)
1351  0015 7b01          	ld	a,(OFST+1,sp)
1352  0017 2706          	jreq	L344
1353                     ; 291     TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1355  0019 72105320      	bset	21280,#0
1357  001d 2004          	jra	L544
1358  001f               L344:
1359                     ; 295     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1361  001f 72115320      	bres	21280,#0
1362  0023               L544:
1363                     ; 297 }
1366  0023 84            	pop	a
1367  0024 81            	ret	
1440                     ; 311 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1440                     ; 312 {
1441                     .text:	section	.text,new
1442  0000               _TIM3_ITConfig:
1444  0000 89            	pushw	x
1445       00000000      OFST:	set	0
1448                     ; 314   assert_param(IS_TIM3_IT_OK(TIM3_IT));
1450  0001 9e            	ld	a,xh
1451  0002 4d            	tnz	a
1452  0003 2705          	jreq	L252
1453  0005 9e            	ld	a,xh
1454  0006 a108          	cp	a,#8
1455  0008 2505          	jrult	L452
1456  000a               L252:
1457  000a ae013a        	ldw	x,#314
1458  000d ad22          	call	LC005
1459  000f               L452:
1460                     ; 315   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1462  000f 7b02          	ld	a,(OFST+2,sp)
1463  0011 2708          	jreq	L462
1464  0013 4a            	dec	a
1465  0014 2705          	jreq	L462
1466  0016 ae013b        	ldw	x,#315
1467  0019 ad16          	call	LC005
1468  001b               L462:
1469                     ; 317   if (NewState != DISABLE)
1471  001b 7b02          	ld	a,(OFST+2,sp)
1472  001d 2707          	jreq	L305
1473                     ; 320     TIM3->IER |= (uint8_t)TIM3_IT;
1475  001f c65321        	ld	a,21281
1476  0022 1a01          	or	a,(OFST+1,sp)
1478  0024 2006          	jra	L505
1479  0026               L305:
1480                     ; 325     TIM3->IER &= (uint8_t)(~TIM3_IT);
1482  0026 7b01          	ld	a,(OFST+1,sp)
1483  0028 43            	cpl	a
1484  0029 c45321        	and	a,21281
1485  002c               L505:
1486  002c c75321        	ld	21281,a
1487                     ; 327 }
1490  002f 85            	popw	x
1491  0030 81            	ret	
1492  0031               LC005:
1493  0031 89            	pushw	x
1494  0032 5f            	clrw	x
1495  0033 89            	pushw	x
1496  0034 ae0000        	ldw	x,#L102
1497  0037 cd0000        	call	_assert_failed
1499  003a 5b04          	addw	sp,#4
1500  003c 81            	ret	
1537                     ; 335 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1537                     ; 336 {
1538                     .text:	section	.text,new
1539  0000               _TIM3_UpdateDisableConfig:
1541  0000 88            	push	a
1542       00000000      OFST:	set	0
1545                     ; 338   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1547  0001 4d            	tnz	a
1548  0002 2711          	jreq	L672
1549  0004 4a            	dec	a
1550  0005 270e          	jreq	L672
1551  0007 ae0152        	ldw	x,#338
1552  000a 89            	pushw	x
1553  000b 5f            	clrw	x
1554  000c 89            	pushw	x
1555  000d ae0000        	ldw	x,#L102
1556  0010 cd0000        	call	_assert_failed
1558  0013 5b04          	addw	sp,#4
1559  0015               L672:
1560                     ; 341   if (NewState != DISABLE)
1562  0015 7b01          	ld	a,(OFST+1,sp)
1563  0017 2706          	jreq	L525
1564                     ; 343     TIM3->CR1 |= TIM3_CR1_UDIS;
1566  0019 72125320      	bset	21280,#1
1568  001d 2004          	jra	L725
1569  001f               L525:
1570                     ; 347     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1572  001f 72135320      	bres	21280,#1
1573  0023               L725:
1574                     ; 349 }
1577  0023 84            	pop	a
1578  0024 81            	ret	
1637                     ; 359 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1637                     ; 360 {
1638                     .text:	section	.text,new
1639  0000               _TIM3_UpdateRequestConfig:
1641  0000 88            	push	a
1642       00000000      OFST:	set	0
1645                     ; 362   assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1647  0001 4d            	tnz	a
1648  0002 2711          	jreq	L013
1649  0004 4a            	dec	a
1650  0005 270e          	jreq	L013
1651  0007 ae016a        	ldw	x,#362
1652  000a 89            	pushw	x
1653  000b 5f            	clrw	x
1654  000c 89            	pushw	x
1655  000d ae0000        	ldw	x,#L102
1656  0010 cd0000        	call	_assert_failed
1658  0013 5b04          	addw	sp,#4
1659  0015               L013:
1660                     ; 365   if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1662  0015 7b01          	ld	a,(OFST+1,sp)
1663  0017 2706          	jreq	L755
1664                     ; 367     TIM3->CR1 |= TIM3_CR1_URS;
1666  0019 72145320      	bset	21280,#2
1668  001d 2004          	jra	L165
1669  001f               L755:
1670                     ; 371     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1672  001f 72155320      	bres	21280,#2
1673  0023               L165:
1674                     ; 373 }
1677  0023 84            	pop	a
1678  0024 81            	ret	
1736                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1736                     ; 384 {
1737                     .text:	section	.text,new
1738  0000               _TIM3_SelectOnePulseMode:
1740  0000 88            	push	a
1741       00000000      OFST:	set	0
1744                     ; 386   assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1746  0001 a101          	cp	a,#1
1747  0003 2711          	jreq	L223
1748  0005 4d            	tnz	a
1749  0006 270e          	jreq	L223
1750  0008 ae0182        	ldw	x,#386
1751  000b 89            	pushw	x
1752  000c 5f            	clrw	x
1753  000d 89            	pushw	x
1754  000e ae0000        	ldw	x,#L102
1755  0011 cd0000        	call	_assert_failed
1757  0014 5b04          	addw	sp,#4
1758  0016               L223:
1759                     ; 389   if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1761  0016 7b01          	ld	a,(OFST+1,sp)
1762  0018 2706          	jreq	L116
1763                     ; 391     TIM3->CR1 |= TIM3_CR1_OPM;
1765  001a 72165320      	bset	21280,#3
1767  001e 2004          	jra	L316
1768  0020               L116:
1769                     ; 395     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1771  0020 72175320      	bres	21280,#3
1772  0024               L316:
1773                     ; 397 }
1776  0024 84            	pop	a
1777  0025 81            	ret	
1846                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
1846                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
1846                     ; 429 {
1847                     .text:	section	.text,new
1848  0000               _TIM3_PrescalerConfig:
1850  0000 89            	pushw	x
1851       00000000      OFST:	set	0
1854                     ; 431   assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
1856  0001 9f            	ld	a,xl
1857  0002 4d            	tnz	a
1858  0003 2709          	jreq	L433
1859  0005 9f            	ld	a,xl
1860  0006 4a            	dec	a
1861  0007 2705          	jreq	L433
1862  0009 ae01af        	ldw	x,#431
1863  000c ad51          	call	LC006
1864  000e               L433:
1865                     ; 432   assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
1867  000e 7b01          	ld	a,(OFST+1,sp)
1868  0010 2743          	jreq	L443
1869  0012 a101          	cp	a,#1
1870  0014 273f          	jreq	L443
1871  0016 a102          	cp	a,#2
1872  0018 273b          	jreq	L443
1873  001a a103          	cp	a,#3
1874  001c 2737          	jreq	L443
1875  001e a104          	cp	a,#4
1876  0020 2733          	jreq	L443
1877  0022 a105          	cp	a,#5
1878  0024 272f          	jreq	L443
1879  0026 a106          	cp	a,#6
1880  0028 272b          	jreq	L443
1881  002a a107          	cp	a,#7
1882  002c 2727          	jreq	L443
1883  002e a108          	cp	a,#8
1884  0030 2723          	jreq	L443
1885  0032 a109          	cp	a,#9
1886  0034 271f          	jreq	L443
1887  0036 a10a          	cp	a,#10
1888  0038 271b          	jreq	L443
1889  003a a10b          	cp	a,#11
1890  003c 2717          	jreq	L443
1891  003e a10c          	cp	a,#12
1892  0040 2713          	jreq	L443
1893  0042 a10d          	cp	a,#13
1894  0044 270f          	jreq	L443
1895  0046 a10e          	cp	a,#14
1896  0048 270b          	jreq	L443
1897  004a a10f          	cp	a,#15
1898  004c 2707          	jreq	L443
1899  004e ae01b0        	ldw	x,#432
1900  0051 ad0c          	call	LC006
1901  0053 7b01          	ld	a,(OFST+1,sp)
1902  0055               L443:
1903                     ; 435   TIM3->PSCR = (uint8_t)Prescaler;
1905  0055 c7532a        	ld	21290,a
1906                     ; 438   TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
1908  0058 7b02          	ld	a,(OFST+2,sp)
1909  005a c75324        	ld	21284,a
1910                     ; 439 }
1913  005d 85            	popw	x
1914  005e 81            	ret	
1915  005f               LC006:
1916  005f 89            	pushw	x
1917  0060 5f            	clrw	x
1918  0061 89            	pushw	x
1919  0062 ae0000        	ldw	x,#L102
1920  0065 cd0000        	call	_assert_failed
1922  0068 5b04          	addw	sp,#4
1923  006a 81            	ret	
1982                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
1982                     ; 451 {
1983                     .text:	section	.text,new
1984  0000               _TIM3_ForcedOC1Config:
1986  0000 88            	push	a
1987       00000000      OFST:	set	0
1990                     ; 453   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
1992  0001 a150          	cp	a,#80
1993  0003 2712          	jreq	L653
1994  0005 a140          	cp	a,#64
1995  0007 270e          	jreq	L653
1996  0009 ae01c5        	ldw	x,#453
1997  000c 89            	pushw	x
1998  000d 5f            	clrw	x
1999  000e 89            	pushw	x
2000  000f ae0000        	ldw	x,#L102
2001  0012 cd0000        	call	_assert_failed
2003  0015 5b04          	addw	sp,#4
2004  0017               L653:
2005                     ; 456   TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2007  0017 c65325        	ld	a,21285
2008  001a a48f          	and	a,#143
2009  001c 1a01          	or	a,(OFST+1,sp)
2010  001e c75325        	ld	21285,a
2011                     ; 457 }
2014  0021 84            	pop	a
2015  0022 81            	ret	
2052                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2052                     ; 469 {
2053                     .text:	section	.text,new
2054  0000               _TIM3_ForcedOC2Config:
2056  0000 88            	push	a
2057       00000000      OFST:	set	0
2060                     ; 471   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2062  0001 a150          	cp	a,#80
2063  0003 2712          	jreq	L073
2064  0005 a140          	cp	a,#64
2065  0007 270e          	jreq	L073
2066  0009 ae01d7        	ldw	x,#471
2067  000c 89            	pushw	x
2068  000d 5f            	clrw	x
2069  000e 89            	pushw	x
2070  000f ae0000        	ldw	x,#L102
2071  0012 cd0000        	call	_assert_failed
2073  0015 5b04          	addw	sp,#4
2074  0017               L073:
2075                     ; 474   TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2077  0017 c65326        	ld	a,21286
2078  001a a48f          	and	a,#143
2079  001c 1a01          	or	a,(OFST+1,sp)
2080  001e c75326        	ld	21286,a
2081                     ; 475 }
2084  0021 84            	pop	a
2085  0022 81            	ret	
2122                     ; 483 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2122                     ; 484 {
2123                     .text:	section	.text,new
2124  0000               _TIM3_ARRPreloadConfig:
2126  0000 88            	push	a
2127       00000000      OFST:	set	0
2130                     ; 486   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2132  0001 4d            	tnz	a
2133  0002 2711          	jreq	L204
2134  0004 4a            	dec	a
2135  0005 270e          	jreq	L204
2136  0007 ae01e6        	ldw	x,#486
2137  000a 89            	pushw	x
2138  000b 5f            	clrw	x
2139  000c 89            	pushw	x
2140  000d ae0000        	ldw	x,#L102
2141  0010 cd0000        	call	_assert_failed
2143  0013 5b04          	addw	sp,#4
2144  0015               L204:
2145                     ; 489   if (NewState != DISABLE)
2147  0015 7b01          	ld	a,(OFST+1,sp)
2148  0017 2706          	jreq	L137
2149                     ; 491     TIM3->CR1 |= TIM3_CR1_ARPE;
2151  0019 721e5320      	bset	21280,#7
2153  001d 2004          	jra	L337
2154  001f               L137:
2155                     ; 495     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2157  001f 721f5320      	bres	21280,#7
2158  0023               L337:
2159                     ; 497 }
2162  0023 84            	pop	a
2163  0024 81            	ret	
2200                     ; 505 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2200                     ; 506 {
2201                     .text:	section	.text,new
2202  0000               _TIM3_OC1PreloadConfig:
2204  0000 88            	push	a
2205       00000000      OFST:	set	0
2208                     ; 508   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2210  0001 4d            	tnz	a
2211  0002 2711          	jreq	L414
2212  0004 4a            	dec	a
2213  0005 270e          	jreq	L414
2214  0007 ae01fc        	ldw	x,#508
2215  000a 89            	pushw	x
2216  000b 5f            	clrw	x
2217  000c 89            	pushw	x
2218  000d ae0000        	ldw	x,#L102
2219  0010 cd0000        	call	_assert_failed
2221  0013 5b04          	addw	sp,#4
2222  0015               L414:
2223                     ; 511   if (NewState != DISABLE)
2225  0015 7b01          	ld	a,(OFST+1,sp)
2226  0017 2706          	jreq	L357
2227                     ; 513     TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2229  0019 72165325      	bset	21285,#3
2231  001d 2004          	jra	L557
2232  001f               L357:
2233                     ; 517     TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2235  001f 72175325      	bres	21285,#3
2236  0023               L557:
2237                     ; 519 }
2240  0023 84            	pop	a
2241  0024 81            	ret	
2278                     ; 527 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2278                     ; 528 {
2279                     .text:	section	.text,new
2280  0000               _TIM3_OC2PreloadConfig:
2282  0000 88            	push	a
2283       00000000      OFST:	set	0
2286                     ; 530   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2288  0001 4d            	tnz	a
2289  0002 2711          	jreq	L624
2290  0004 4a            	dec	a
2291  0005 270e          	jreq	L624
2292  0007 ae0212        	ldw	x,#530
2293  000a 89            	pushw	x
2294  000b 5f            	clrw	x
2295  000c 89            	pushw	x
2296  000d ae0000        	ldw	x,#L102
2297  0010 cd0000        	call	_assert_failed
2299  0013 5b04          	addw	sp,#4
2300  0015               L624:
2301                     ; 533   if (NewState != DISABLE)
2303  0015 7b01          	ld	a,(OFST+1,sp)
2304  0017 2706          	jreq	L577
2305                     ; 535     TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2307  0019 72165326      	bset	21286,#3
2309  001d 2004          	jra	L777
2310  001f               L577:
2311                     ; 539     TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2313  001f 72175326      	bres	21286,#3
2314  0023               L777:
2315                     ; 541 }
2318  0023 84            	pop	a
2319  0024 81            	ret	
2385                     ; 552 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2385                     ; 553 {
2386                     .text:	section	.text,new
2387  0000               _TIM3_GenerateEvent:
2389  0000 88            	push	a
2390       00000000      OFST:	set	0
2393                     ; 555   assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2395  0001 4d            	tnz	a
2396  0002 260e          	jrne	L634
2397  0004 ae022b        	ldw	x,#555
2398  0007 89            	pushw	x
2399  0008 5f            	clrw	x
2400  0009 89            	pushw	x
2401  000a ae0000        	ldw	x,#L102
2402  000d cd0000        	call	_assert_failed
2404  0010 5b04          	addw	sp,#4
2405  0012               L634:
2406                     ; 558   TIM3->EGR = (uint8_t)TIM3_EventSource;
2408  0012 7b01          	ld	a,(OFST+1,sp)
2409  0014 c75324        	ld	21284,a
2410                     ; 559 }
2413  0017 84            	pop	a
2414  0018 81            	ret	
2451                     ; 569 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2451                     ; 570 {
2452                     .text:	section	.text,new
2453  0000               _TIM3_OC1PolarityConfig:
2455  0000 88            	push	a
2456       00000000      OFST:	set	0
2459                     ; 572   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2461  0001 4d            	tnz	a
2462  0002 2712          	jreq	L054
2463  0004 a122          	cp	a,#34
2464  0006 270e          	jreq	L054
2465  0008 ae023c        	ldw	x,#572
2466  000b 89            	pushw	x
2467  000c 5f            	clrw	x
2468  000d 89            	pushw	x
2469  000e ae0000        	ldw	x,#L102
2470  0011 cd0000        	call	_assert_failed
2472  0014 5b04          	addw	sp,#4
2473  0016               L054:
2474                     ; 575   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2476  0016 7b01          	ld	a,(OFST+1,sp)
2477  0018 2706          	jreq	L7401
2478                     ; 577     TIM3->CCER1 |= TIM3_CCER1_CC1P;
2480  001a 72125327      	bset	21287,#1
2482  001e 2004          	jra	L1501
2483  0020               L7401:
2484                     ; 581     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2486  0020 72135327      	bres	21287,#1
2487  0024               L1501:
2488                     ; 583 }
2491  0024 84            	pop	a
2492  0025 81            	ret	
2529                     ; 593 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2529                     ; 594 {
2530                     .text:	section	.text,new
2531  0000               _TIM3_OC2PolarityConfig:
2533  0000 88            	push	a
2534       00000000      OFST:	set	0
2537                     ; 596   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2539  0001 4d            	tnz	a
2540  0002 2712          	jreq	L264
2541  0004 a122          	cp	a,#34
2542  0006 270e          	jreq	L264
2543  0008 ae0254        	ldw	x,#596
2544  000b 89            	pushw	x
2545  000c 5f            	clrw	x
2546  000d 89            	pushw	x
2547  000e ae0000        	ldw	x,#L102
2548  0011 cd0000        	call	_assert_failed
2550  0014 5b04          	addw	sp,#4
2551  0016               L264:
2552                     ; 599   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2554  0016 7b01          	ld	a,(OFST+1,sp)
2555  0018 2706          	jreq	L1701
2556                     ; 601     TIM3->CCER1 |= TIM3_CCER1_CC2P;
2558  001a 721a5327      	bset	21287,#5
2560  001e 2004          	jra	L3701
2561  0020               L1701:
2562                     ; 605     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2564  0020 721b5327      	bres	21287,#5
2565  0024               L3701:
2566                     ; 607 }
2569  0024 84            	pop	a
2570  0025 81            	ret	
2616                     ; 619 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2616                     ; 620 {
2617                     .text:	section	.text,new
2618  0000               _TIM3_CCxCmd:
2620  0000 89            	pushw	x
2621       00000000      OFST:	set	0
2624                     ; 622   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2626  0001 9e            	ld	a,xh
2627  0002 4d            	tnz	a
2628  0003 2709          	jreq	L474
2629  0005 9e            	ld	a,xh
2630  0006 4a            	dec	a
2631  0007 2705          	jreq	L474
2632  0009 ae026e        	ldw	x,#622
2633  000c ad30          	call	LC007
2634  000e               L474:
2635                     ; 623   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2637  000e 7b02          	ld	a,(OFST+2,sp)
2638  0010 2708          	jreq	L405
2639  0012 4a            	dec	a
2640  0013 2705          	jreq	L405
2641  0015 ae026f        	ldw	x,#623
2642  0018 ad24          	call	LC007
2643  001a               L405:
2644                     ; 625   if (TIM3_Channel == TIM3_CHANNEL_1)
2646  001a 7b01          	ld	a,(OFST+1,sp)
2647  001c 2610          	jrne	L7111
2648                     ; 628     if (NewState != DISABLE)
2650  001e 7b02          	ld	a,(OFST+2,sp)
2651  0020 2706          	jreq	L1211
2652                     ; 630       TIM3->CCER1 |= TIM3_CCER1_CC1E;
2654  0022 72105327      	bset	21287,#0
2656  0026 2014          	jra	L5211
2657  0028               L1211:
2658                     ; 634       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2660  0028 72115327      	bres	21287,#0
2661  002c 200e          	jra	L5211
2662  002e               L7111:
2663                     ; 641     if (NewState != DISABLE)
2665  002e 7b02          	ld	a,(OFST+2,sp)
2666  0030 2706          	jreq	L7211
2667                     ; 643       TIM3->CCER1 |= TIM3_CCER1_CC2E;
2669  0032 72185327      	bset	21287,#4
2671  0036 2004          	jra	L5211
2672  0038               L7211:
2673                     ; 647       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2675  0038 72195327      	bres	21287,#4
2676  003c               L5211:
2677                     ; 650 }
2680  003c 85            	popw	x
2681  003d 81            	ret	
2682  003e               LC007:
2683  003e 89            	pushw	x
2684  003f 5f            	clrw	x
2685  0040 89            	pushw	x
2686  0041 ae0000        	ldw	x,#L102
2687  0044 cd0000        	call	_assert_failed
2689  0047 5b04          	addw	sp,#4
2690  0049 81            	ret	
2736                     ; 671 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2736                     ; 672 {
2737                     .text:	section	.text,new
2738  0000               _TIM3_SelectOCxM:
2740  0000 89            	pushw	x
2741       00000000      OFST:	set	0
2744                     ; 674   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2746  0001 9e            	ld	a,xh
2747  0002 4d            	tnz	a
2748  0003 2709          	jreq	L615
2749  0005 9e            	ld	a,xh
2750  0006 4a            	dec	a
2751  0007 2705          	jreq	L615
2752  0009 ae02a2        	ldw	x,#674
2753  000c ad49          	call	LC008
2754  000e               L615:
2755                     ; 675   assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2757  000e 7b02          	ld	a,(OFST+2,sp)
2758  0010 2721          	jreq	L625
2759  0012 a110          	cp	a,#16
2760  0014 271d          	jreq	L625
2761  0016 a120          	cp	a,#32
2762  0018 2719          	jreq	L625
2763  001a a130          	cp	a,#48
2764  001c 2715          	jreq	L625
2765  001e a160          	cp	a,#96
2766  0020 2711          	jreq	L625
2767  0022 a170          	cp	a,#112
2768  0024 270d          	jreq	L625
2769  0026 a150          	cp	a,#80
2770  0028 2709          	jreq	L625
2771  002a a140          	cp	a,#64
2772  002c 2705          	jreq	L625
2773  002e ae02a3        	ldw	x,#675
2774  0031 ad24          	call	LC008
2775  0033               L625:
2776                     ; 677   if (TIM3_Channel == TIM3_CHANNEL_1)
2778  0033 7b01          	ld	a,(OFST+1,sp)
2779  0035 2610          	jrne	L5511
2780                     ; 680     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2782  0037 72115327      	bres	21287,#0
2783                     ; 683     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2785  003b c65325        	ld	a,21285
2786  003e a48f          	and	a,#143
2787  0040 1a02          	or	a,(OFST+2,sp)
2788  0042 c75325        	ld	21285,a
2790  0045 200e          	jra	L7511
2791  0047               L5511:
2792                     ; 688     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2794  0047 72195327      	bres	21287,#4
2795                     ; 691     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
2797  004b c65326        	ld	a,21286
2798  004e a48f          	and	a,#143
2799  0050 1a02          	or	a,(OFST+2,sp)
2800  0052 c75326        	ld	21286,a
2801  0055               L7511:
2802                     ; 693 }
2805  0055 85            	popw	x
2806  0056 81            	ret	
2807  0057               LC008:
2808  0057 89            	pushw	x
2809  0058 5f            	clrw	x
2810  0059 89            	pushw	x
2811  005a ae0000        	ldw	x,#L102
2812  005d cd0000        	call	_assert_failed
2814  0060 5b04          	addw	sp,#4
2815  0062 81            	ret	
2847                     ; 701 void TIM3_SetCounter(uint16_t Counter)
2847                     ; 702 {
2848                     .text:	section	.text,new
2849  0000               _TIM3_SetCounter:
2853                     ; 704   TIM3->CNTRH = (uint8_t)(Counter >> 8);
2855  0000 9e            	ld	a,xh
2856  0001 c75328        	ld	21288,a
2857                     ; 705   TIM3->CNTRL = (uint8_t)(Counter);
2859  0004 9f            	ld	a,xl
2860  0005 c75329        	ld	21289,a
2861                     ; 706 }
2864  0008 81            	ret	
2896                     ; 714 void TIM3_SetAutoreload(uint16_t Autoreload)
2896                     ; 715 {
2897                     .text:	section	.text,new
2898  0000               _TIM3_SetAutoreload:
2902                     ; 717   TIM3->ARRH = (uint8_t)(Autoreload >> 8);
2904  0000 9e            	ld	a,xh
2905  0001 c7532b        	ld	21291,a
2906                     ; 718   TIM3->ARRL = (uint8_t)(Autoreload);
2908  0004 9f            	ld	a,xl
2909  0005 c7532c        	ld	21292,a
2910                     ; 719 }
2913  0008 81            	ret	
2945                     ; 727 void TIM3_SetCompare1(uint16_t Compare1)
2945                     ; 728 {
2946                     .text:	section	.text,new
2947  0000               _TIM3_SetCompare1:
2951                     ; 730   TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
2953  0000 9e            	ld	a,xh
2954  0001 c7532d        	ld	21293,a
2955                     ; 731   TIM3->CCR1L = (uint8_t)(Compare1);
2957  0004 9f            	ld	a,xl
2958  0005 c7532e        	ld	21294,a
2959                     ; 732 }
2962  0008 81            	ret	
2994                     ; 740 void TIM3_SetCompare2(uint16_t Compare2)
2994                     ; 741 {
2995                     .text:	section	.text,new
2996  0000               _TIM3_SetCompare2:
3000                     ; 743   TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
3002  0000 9e            	ld	a,xh
3003  0001 c7532f        	ld	21295,a
3004                     ; 744   TIM3->CCR2L = (uint8_t)(Compare2);
3006  0004 9f            	ld	a,xl
3007  0005 c75330        	ld	21296,a
3008                     ; 745 }
3011  0008 81            	ret	
3048                     ; 757 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3048                     ; 758 {
3049                     .text:	section	.text,new
3050  0000               _TIM3_SetIC1Prescaler:
3052  0000 88            	push	a
3053       00000000      OFST:	set	0
3056                     ; 760   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3058  0001 4d            	tnz	a
3059  0002 271a          	jreq	L055
3060  0004 a104          	cp	a,#4
3061  0006 2716          	jreq	L055
3062  0008 a108          	cp	a,#8
3063  000a 2712          	jreq	L055
3064  000c a10c          	cp	a,#12
3065  000e 270e          	jreq	L055
3066  0010 ae02f8        	ldw	x,#760
3067  0013 89            	pushw	x
3068  0014 5f            	clrw	x
3069  0015 89            	pushw	x
3070  0016 ae0000        	ldw	x,#L102
3071  0019 cd0000        	call	_assert_failed
3073  001c 5b04          	addw	sp,#4
3074  001e               L055:
3075                     ; 763   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3077  001e c65325        	ld	a,21285
3078  0021 a4f3          	and	a,#243
3079  0023 1a01          	or	a,(OFST+1,sp)
3080  0025 c75325        	ld	21285,a
3081                     ; 764 }
3084  0028 84            	pop	a
3085  0029 81            	ret	
3122                     ; 776 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3122                     ; 777 {
3123                     .text:	section	.text,new
3124  0000               _TIM3_SetIC2Prescaler:
3126  0000 88            	push	a
3127       00000000      OFST:	set	0
3130                     ; 779   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3132  0001 4d            	tnz	a
3133  0002 271a          	jreq	L265
3134  0004 a104          	cp	a,#4
3135  0006 2716          	jreq	L265
3136  0008 a108          	cp	a,#8
3137  000a 2712          	jreq	L265
3138  000c a10c          	cp	a,#12
3139  000e 270e          	jreq	L265
3140  0010 ae030b        	ldw	x,#779
3141  0013 89            	pushw	x
3142  0014 5f            	clrw	x
3143  0015 89            	pushw	x
3144  0016 ae0000        	ldw	x,#L102
3145  0019 cd0000        	call	_assert_failed
3147  001c 5b04          	addw	sp,#4
3148  001e               L265:
3149                     ; 782   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3151  001e c65326        	ld	a,21286
3152  0021 a4f3          	and	a,#243
3153  0023 1a01          	or	a,(OFST+1,sp)
3154  0025 c75326        	ld	21286,a
3155                     ; 783 }
3158  0028 84            	pop	a
3159  0029 81            	ret	
3205                     ; 790 uint16_t TIM3_GetCapture1(void)
3205                     ; 791 {
3206                     .text:	section	.text,new
3207  0000               _TIM3_GetCapture1:
3209  0000 5204          	subw	sp,#4
3210       00000004      OFST:	set	4
3213                     ; 793   uint16_t tmpccr1 = 0;
3215                     ; 794   uint8_t tmpccr1l=0, tmpccr1h=0;
3219                     ; 796   tmpccr1h = TIM3->CCR1H;
3221  0002 c6532d        	ld	a,21293
3222  0005 6b02          	ld	(OFST-2,sp),a
3224                     ; 797   tmpccr1l = TIM3->CCR1L;
3226  0007 c6532e        	ld	a,21294
3227  000a 6b01          	ld	(OFST-3,sp),a
3229                     ; 799   tmpccr1 = (uint16_t)(tmpccr1l);
3231  000c 5f            	clrw	x
3232  000d 97            	ld	xl,a
3233  000e 1f03          	ldw	(OFST-1,sp),x
3235                     ; 800   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3237  0010 5f            	clrw	x
3238  0011 7b02          	ld	a,(OFST-2,sp)
3239  0013 97            	ld	xl,a
3240  0014 7b04          	ld	a,(OFST+0,sp)
3241  0016 01            	rrwa	x,a
3242  0017 1a03          	or	a,(OFST-1,sp)
3243  0019 01            	rrwa	x,a
3245                     ; 802   return (uint16_t)tmpccr1;
3249  001a 5b04          	addw	sp,#4
3250  001c 81            	ret	
3296                     ; 810 uint16_t TIM3_GetCapture2(void)
3296                     ; 811 {
3297                     .text:	section	.text,new
3298  0000               _TIM3_GetCapture2:
3300  0000 5204          	subw	sp,#4
3301       00000004      OFST:	set	4
3304                     ; 813   uint16_t tmpccr2 = 0;
3306                     ; 814   uint8_t tmpccr2l=0, tmpccr2h=0;
3310                     ; 816   tmpccr2h = TIM3->CCR2H;
3312  0002 c6532f        	ld	a,21295
3313  0005 6b02          	ld	(OFST-2,sp),a
3315                     ; 817   tmpccr2l = TIM3->CCR2L;
3317  0007 c65330        	ld	a,21296
3318  000a 6b01          	ld	(OFST-3,sp),a
3320                     ; 819   tmpccr2 = (uint16_t)(tmpccr2l);
3322  000c 5f            	clrw	x
3323  000d 97            	ld	xl,a
3324  000e 1f03          	ldw	(OFST-1,sp),x
3326                     ; 820   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3328  0010 5f            	clrw	x
3329  0011 7b02          	ld	a,(OFST-2,sp)
3330  0013 97            	ld	xl,a
3331  0014 7b04          	ld	a,(OFST+0,sp)
3332  0016 01            	rrwa	x,a
3333  0017 1a03          	or	a,(OFST-1,sp)
3334  0019 01            	rrwa	x,a
3336                     ; 822   return (uint16_t)tmpccr2;
3340  001a 5b04          	addw	sp,#4
3341  001c 81            	ret	
3373                     ; 830 uint16_t TIM3_GetCounter(void)
3373                     ; 831 {
3374                     .text:	section	.text,new
3375  0000               _TIM3_GetCounter:
3377  0000 89            	pushw	x
3378       00000002      OFST:	set	2
3381                     ; 832   uint16_t tmpcntr = 0;
3383                     ; 834   tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3385  0001 c65328        	ld	a,21288
3386  0004 97            	ld	xl,a
3387  0005 4f            	clr	a
3388  0006 02            	rlwa	x,a
3389  0007 1f01          	ldw	(OFST-1,sp),x
3391                     ; 836   return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3393  0009 c65329        	ld	a,21289
3394  000c 5f            	clrw	x
3395  000d 97            	ld	xl,a
3396  000e 01            	rrwa	x,a
3397  000f 1a02          	or	a,(OFST+0,sp)
3398  0011 01            	rrwa	x,a
3399  0012 1a01          	or	a,(OFST-1,sp)
3400  0014 01            	rrwa	x,a
3403  0015 5b02          	addw	sp,#2
3404  0017 81            	ret	
3428                     ; 844 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3428                     ; 845 {
3429                     .text:	section	.text,new
3430  0000               _TIM3_GetPrescaler:
3434                     ; 847   return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3436  0000 c6532a        	ld	a,21290
3439  0003 81            	ret	
3561                     ; 861 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3561                     ; 862 {
3562                     .text:	section	.text,new
3563  0000               _TIM3_GetFlagStatus:
3565  0000 89            	pushw	x
3566  0001 89            	pushw	x
3567       00000002      OFST:	set	2
3570                     ; 863   FlagStatus bitstatus = RESET;
3572                     ; 864   uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3576                     ; 867   assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3578  0002 a30001        	cpw	x,#1
3579  0005 2722          	jreq	L406
3580  0007 a30002        	cpw	x,#2
3581  000a 271d          	jreq	L406
3582  000c a30004        	cpw	x,#4
3583  000f 2718          	jreq	L406
3584  0011 a30200        	cpw	x,#512
3585  0014 2713          	jreq	L406
3586  0016 a30400        	cpw	x,#1024
3587  0019 270e          	jreq	L406
3588  001b ae0363        	ldw	x,#867
3589  001e 89            	pushw	x
3590  001f 5f            	clrw	x
3591  0020 89            	pushw	x
3592  0021 ae0000        	ldw	x,#L102
3593  0024 cd0000        	call	_assert_failed
3595  0027 5b04          	addw	sp,#4
3596  0029               L406:
3597                     ; 869   tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3599  0029 c65322        	ld	a,21282
3600  002c 1404          	and	a,(OFST+2,sp)
3601  002e 6b01          	ld	(OFST-1,sp),a
3603                     ; 870   tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3605  0030 7b03          	ld	a,(OFST+1,sp)
3606  0032 6b02          	ld	(OFST+0,sp),a
3608                     ; 872   if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3610  0034 c45323        	and	a,21283
3611  0037 1a01          	or	a,(OFST-1,sp)
3612  0039 2702          	jreq	L5341
3613                     ; 874     bitstatus = SET;
3615  003b a601          	ld	a,#1
3618  003d               L5341:
3619                     ; 878     bitstatus = RESET;
3622                     ; 880   return (FlagStatus)bitstatus;
3626  003d 5b04          	addw	sp,#4
3627  003f 81            	ret	
3663                     ; 894 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3663                     ; 895 {
3664                     .text:	section	.text,new
3665  0000               _TIM3_ClearFlag:
3667  0000 89            	pushw	x
3668       00000000      OFST:	set	0
3671                     ; 897   assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3673  0001 01            	rrwa	x,a
3674  0002 a4f8          	and	a,#248
3675  0004 01            	rrwa	x,a
3676  0005 a4f9          	and	a,#249
3677  0007 01            	rrwa	x,a
3678  0008 5d            	tnzw	x
3679  0009 2604          	jrne	L216
3680  000b 1e01          	ldw	x,(OFST+1,sp)
3681  000d 260e          	jrne	L416
3682  000f               L216:
3683  000f ae0381        	ldw	x,#897
3684  0012 89            	pushw	x
3685  0013 5f            	clrw	x
3686  0014 89            	pushw	x
3687  0015 ae0000        	ldw	x,#L102
3688  0018 cd0000        	call	_assert_failed
3690  001b 5b04          	addw	sp,#4
3691  001d               L416:
3692                     ; 900   TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3694  001d 7b02          	ld	a,(OFST+2,sp)
3695  001f 43            	cpl	a
3696  0020 c75322        	ld	21282,a
3697                     ; 901   TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3699  0023 7b01          	ld	a,(OFST+1,sp)
3700  0025 43            	cpl	a
3701  0026 c75323        	ld	21283,a
3702                     ; 902 }
3705  0029 85            	popw	x
3706  002a 81            	ret	
3767                     ; 913 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
3767                     ; 914 {
3768                     .text:	section	.text,new
3769  0000               _TIM3_GetITStatus:
3771  0000 88            	push	a
3772  0001 89            	pushw	x
3773       00000002      OFST:	set	2
3776                     ; 915   ITStatus bitstatus = RESET;
3778                     ; 916   uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
3782                     ; 919   assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
3784  0002 a101          	cp	a,#1
3785  0004 2716          	jreq	L626
3786  0006 a102          	cp	a,#2
3787  0008 2712          	jreq	L626
3788  000a a104          	cp	a,#4
3789  000c 270e          	jreq	L626
3790  000e ae0397        	ldw	x,#919
3791  0011 89            	pushw	x
3792  0012 5f            	clrw	x
3793  0013 89            	pushw	x
3794  0014 ae0000        	ldw	x,#L102
3795  0017 cd0000        	call	_assert_failed
3797  001a 5b04          	addw	sp,#4
3798  001c               L626:
3799                     ; 921   TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
3801  001c c65322        	ld	a,21282
3802  001f 1403          	and	a,(OFST+1,sp)
3803  0021 6b01          	ld	(OFST-1,sp),a
3805                     ; 923   TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
3807  0023 c65321        	ld	a,21281
3808  0026 1403          	and	a,(OFST+1,sp)
3809  0028 6b02          	ld	(OFST+0,sp),a
3811                     ; 925   if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
3813  002a 7b01          	ld	a,(OFST-1,sp)
3814  002c 2708          	jreq	L5051
3816  002e 7b02          	ld	a,(OFST+0,sp)
3817  0030 2704          	jreq	L5051
3818                     ; 927     bitstatus = SET;
3820  0032 a601          	ld	a,#1
3823  0034 2001          	jra	L7051
3824  0036               L5051:
3825                     ; 931     bitstatus = RESET;
3827  0036 4f            	clr	a
3829  0037               L7051:
3830                     ; 933   return (ITStatus)(bitstatus);
3834  0037 5b03          	addw	sp,#3
3835  0039 81            	ret	
3872                     ; 945 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
3872                     ; 946 {
3873                     .text:	section	.text,new
3874  0000               _TIM3_ClearITPendingBit:
3876  0000 88            	push	a
3877       00000000      OFST:	set	0
3880                     ; 948   assert_param(IS_TIM3_IT_OK(TIM3_IT));
3882  0001 4d            	tnz	a
3883  0002 2704          	jreq	L436
3884  0004 a108          	cp	a,#8
3885  0006 250e          	jrult	L636
3886  0008               L436:
3887  0008 ae03b4        	ldw	x,#948
3888  000b 89            	pushw	x
3889  000c 5f            	clrw	x
3890  000d 89            	pushw	x
3891  000e ae0000        	ldw	x,#L102
3892  0011 cd0000        	call	_assert_failed
3894  0014 5b04          	addw	sp,#4
3895  0016               L636:
3896                     ; 951   TIM3->SR1 = (uint8_t)(~TIM3_IT);
3898  0016 7b01          	ld	a,(OFST+1,sp)
3899  0018 43            	cpl	a
3900  0019 c75322        	ld	21282,a
3901                     ; 952 }
3904  001c 84            	pop	a
3905  001d 81            	ret	
3951                     ; 970 static void TI1_Config(uint8_t TIM3_ICPolarity,
3951                     ; 971                        uint8_t TIM3_ICSelection,
3951                     ; 972                        uint8_t TIM3_ICFilter)
3951                     ; 973 {
3952                     .text:	section	.text,new
3953  0000               L3_TI1_Config:
3955  0000 89            	pushw	x
3956  0001 88            	push	a
3957       00000001      OFST:	set	1
3960                     ; 975   TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
3962  0002 72115327      	bres	21287,#0
3963                     ; 978   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
3965  0006 7b06          	ld	a,(OFST+5,sp)
3966  0008 97            	ld	xl,a
3967  0009 a610          	ld	a,#16
3968  000b 42            	mul	x,a
3969  000c 9f            	ld	a,xl
3970  000d 1a03          	or	a,(OFST+2,sp)
3971  000f 6b01          	ld	(OFST+0,sp),a
3973  0011 c65325        	ld	a,21285
3974  0014 a40c          	and	a,#12
3975  0016 1a01          	or	a,(OFST+0,sp)
3976  0018 c75325        	ld	21285,a
3977                     ; 981   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
3979  001b 7b02          	ld	a,(OFST+1,sp)
3980  001d 2706          	jreq	L7451
3981                     ; 983     TIM3->CCER1 |= TIM3_CCER1_CC1P;
3983  001f 72125327      	bset	21287,#1
3985  0023 2004          	jra	L1551
3986  0025               L7451:
3987                     ; 987     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
3989  0025 72135327      	bres	21287,#1
3990  0029               L1551:
3991                     ; 990   TIM3->CCER1 |= TIM3_CCER1_CC1E;
3993  0029 72105327      	bset	21287,#0
3994                     ; 991 }
3997  002d 5b03          	addw	sp,#3
3998  002f 81            	ret	
4044                     ; 1009 static void TI2_Config(uint8_t TIM3_ICPolarity,
4044                     ; 1010                        uint8_t TIM3_ICSelection,
4044                     ; 1011                        uint8_t TIM3_ICFilter)
4044                     ; 1012 {
4045                     .text:	section	.text,new
4046  0000               L5_TI2_Config:
4048  0000 89            	pushw	x
4049  0001 88            	push	a
4050       00000001      OFST:	set	1
4053                     ; 1014   TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4055  0002 72195327      	bres	21287,#4
4056                     ; 1017   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4056                     ; 1018                                                               TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4056                     ; 1019                                                                                                 ((uint8_t)( TIM3_ICFilter << 4))));
4058  0006 7b06          	ld	a,(OFST+5,sp)
4059  0008 97            	ld	xl,a
4060  0009 a610          	ld	a,#16
4061  000b 42            	mul	x,a
4062  000c 9f            	ld	a,xl
4063  000d 1a03          	or	a,(OFST+2,sp)
4064  000f 6b01          	ld	(OFST+0,sp),a
4066  0011 c65326        	ld	a,21286
4067  0014 a40c          	and	a,#12
4068  0016 1a01          	or	a,(OFST+0,sp)
4069  0018 c75326        	ld	21286,a
4070                     ; 1022   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4072  001b 7b02          	ld	a,(OFST+1,sp)
4073  001d 2706          	jreq	L3751
4074                     ; 1024     TIM3->CCER1 |= TIM3_CCER1_CC2P;
4076  001f 721a5327      	bset	21287,#5
4078  0023 2004          	jra	L5751
4079  0025               L3751:
4080                     ; 1028     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4082  0025 721b5327      	bres	21287,#5
4083  0029               L5751:
4084                     ; 1032   TIM3->CCER1 |= TIM3_CCER1_CC2E;
4086  0029 72185327      	bset	21287,#4
4087                     ; 1033 }
4090  002d 5b03          	addw	sp,#3
4091  002f 81            	ret	
4104                     	xdef	_TIM3_ClearITPendingBit
4105                     	xdef	_TIM3_GetITStatus
4106                     	xdef	_TIM3_ClearFlag
4107                     	xdef	_TIM3_GetFlagStatus
4108                     	xdef	_TIM3_GetPrescaler
4109                     	xdef	_TIM3_GetCounter
4110                     	xdef	_TIM3_GetCapture2
4111                     	xdef	_TIM3_GetCapture1
4112                     	xdef	_TIM3_SetIC2Prescaler
4113                     	xdef	_TIM3_SetIC1Prescaler
4114                     	xdef	_TIM3_SetCompare2
4115                     	xdef	_TIM3_SetCompare1
4116                     	xdef	_TIM3_SetAutoreload
4117                     	xdef	_TIM3_SetCounter
4118                     	xdef	_TIM3_SelectOCxM
4119                     	xdef	_TIM3_CCxCmd
4120                     	xdef	_TIM3_OC2PolarityConfig
4121                     	xdef	_TIM3_OC1PolarityConfig
4122                     	xdef	_TIM3_GenerateEvent
4123                     	xdef	_TIM3_OC2PreloadConfig
4124                     	xdef	_TIM3_OC1PreloadConfig
4125                     	xdef	_TIM3_ARRPreloadConfig
4126                     	xdef	_TIM3_ForcedOC2Config
4127                     	xdef	_TIM3_ForcedOC1Config
4128                     	xdef	_TIM3_PrescalerConfig
4129                     	xdef	_TIM3_SelectOnePulseMode
4130                     	xdef	_TIM3_UpdateRequestConfig
4131                     	xdef	_TIM3_UpdateDisableConfig
4132                     	xdef	_TIM3_ITConfig
4133                     	xdef	_TIM3_Cmd
4134                     	xdef	_TIM3_PWMIConfig
4135                     	xdef	_TIM3_ICInit
4136                     	xdef	_TIM3_OC2Init
4137                     	xdef	_TIM3_OC1Init
4138                     	xdef	_TIM3_TimeBaseInit
4139                     	xdef	_TIM3_DeInit
4140                     	xref	_assert_failed
4141                     .const:	section	.text
4142  0000               L102:
4143  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4144  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4145  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4146  0036 5f74696d332e  	dc.b	"_tim3.c",0
4166                     	end
