   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 52 void TIM2_DeInit(void)
  49                     ; 53 {
  51                     .text:	section	.text,new
  52  0000               _TIM2_DeInit:
  56                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  58  0000 725f5300      	clr	21248
  59                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  61  0004 725f5301      	clr	21249
  62                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  64  0008 725f5303      	clr	21251
  65                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  67  000c 725f5308      	clr	21256
  68                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  70  0010 725f5309      	clr	21257
  71                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  73  0014 725f5308      	clr	21256
  74                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  76  0018 725f5309      	clr	21257
  77                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  79  001c 725f5305      	clr	21253
  80                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  82  0020 725f5306      	clr	21254
  83                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  85  0024 725f5307      	clr	21255
  86                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  88  0028 725f530a      	clr	21258
  89                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  91  002c 725f530b      	clr	21259
  92                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  94  0030 725f530c      	clr	21260
  95                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  97  0034 35ff530d      	mov	21261,#255
  98                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
 100  0038 35ff530e      	mov	21262,#255
 101                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 103  003c 725f530f      	clr	21263
 104                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 106  0040 725f5310      	clr	21264
 107                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 109  0044 725f5311      	clr	21265
 110                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 112  0048 725f5312      	clr	21266
 113                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 115  004c 725f5313      	clr	21267
 116                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 118  0050 725f5314      	clr	21268
 119                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 121  0054 725f5302      	clr	21250
 122                     ; 81 }
 125  0058 81            	ret	
 291                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 291                     ; 90                         uint16_t TIM2_Period)
 291                     ; 91 {
 292                     .text:	section	.text,new
 293  0000               _TIM2_TimeBaseInit:
 295       ffffffff      OFST: set -1
 298                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 300  0000 c7530c        	ld	21260,a
 301                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 303  0003 7b03          	ld	a,(OFST+4,sp)
 304  0005 c7530d        	ld	21261,a
 305                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 307  0008 7b04          	ld	a,(OFST+5,sp)
 308  000a c7530e        	ld	21262,a
 309                     ; 97 }
 312  000d 81            	ret	
 468                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 468                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 468                     ; 110                   uint16_t TIM2_Pulse,
 468                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 468                     ; 112 {
 469                     .text:	section	.text,new
 470  0000               _TIM2_OC1Init:
 472  0000 89            	pushw	x
 473  0001 88            	push	a
 474       00000001      OFST:	set	1
 477                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 479  0002 9e            	ld	a,xh
 480  0003 4d            	tnz	a
 481  0004 271e          	jreq	L61
 482  0006 9e            	ld	a,xh
 483  0007 a110          	cp	a,#16
 484  0009 2719          	jreq	L61
 485  000b 9e            	ld	a,xh
 486  000c a120          	cp	a,#32
 487  000e 2714          	jreq	L61
 488  0010 9e            	ld	a,xh
 489  0011 a130          	cp	a,#48
 490  0013 270f          	jreq	L61
 491  0015 9e            	ld	a,xh
 492  0016 a160          	cp	a,#96
 493  0018 270a          	jreq	L61
 494  001a 9e            	ld	a,xh
 495  001b a170          	cp	a,#112
 496  001d 2705          	jreq	L61
 497  001f ae0072        	ldw	x,#114
 498  0022 ad4b          	call	LC001
 499  0024               L61:
 500                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 502  0024 7b03          	ld	a,(OFST+2,sp)
 503  0026 2709          	jreq	L62
 504  0028 a111          	cp	a,#17
 505  002a 2705          	jreq	L62
 506  002c ae0073        	ldw	x,#115
 507  002f ad3e          	call	LC001
 508  0031               L62:
 509                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 511  0031 7b08          	ld	a,(OFST+7,sp)
 512  0033 2709          	jreq	L63
 513  0035 a122          	cp	a,#34
 514  0037 2705          	jreq	L63
 515  0039 ae0074        	ldw	x,#116
 516  003c ad31          	call	LC001
 517  003e               L63:
 518                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 520  003e c65308        	ld	a,21256
 521  0041 a4fc          	and	a,#252
 522  0043 c75308        	ld	21256,a
 523                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 523                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 525  0046 7b08          	ld	a,(OFST+7,sp)
 526  0048 a402          	and	a,#2
 527  004a 6b01          	ld	(OFST+0,sp),a
 529  004c 7b03          	ld	a,(OFST+2,sp)
 530  004e a401          	and	a,#1
 531  0050 1a01          	or	a,(OFST+0,sp)
 532  0052 ca5308        	or	a,21256
 533  0055 c75308        	ld	21256,a
 534                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 534                     ; 126                           (uint8_t)TIM2_OCMode);
 536  0058 c65305        	ld	a,21253
 537  005b a48f          	and	a,#143
 538  005d 1a02          	or	a,(OFST+1,sp)
 539  005f c75305        	ld	21253,a
 540                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 542  0062 7b06          	ld	a,(OFST+5,sp)
 543  0064 c7530f        	ld	21263,a
 544                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 546  0067 7b07          	ld	a,(OFST+6,sp)
 547  0069 c75310        	ld	21264,a
 548                     ; 131 }
 551  006c 5b03          	addw	sp,#3
 552  006e 81            	ret	
 553  006f               LC001:
 554  006f 89            	pushw	x
 555  0070 5f            	clrw	x
 556  0071 89            	pushw	x
 557  0072 ae0000        	ldw	x,#L302
 558  0075 cd0000        	call	_assert_failed
 560  0078 5b04          	addw	sp,#4
 561  007a 81            	ret	
 624                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 624                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 624                     ; 144                   uint16_t TIM2_Pulse,
 624                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 624                     ; 146 {
 625                     .text:	section	.text,new
 626  0000               _TIM2_OC2Init:
 628  0000 89            	pushw	x
 629  0001 88            	push	a
 630       00000001      OFST:	set	1
 633                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 635  0002 9e            	ld	a,xh
 636  0003 4d            	tnz	a
 637  0004 271e          	jreq	L05
 638  0006 9e            	ld	a,xh
 639  0007 a110          	cp	a,#16
 640  0009 2719          	jreq	L05
 641  000b 9e            	ld	a,xh
 642  000c a120          	cp	a,#32
 643  000e 2714          	jreq	L05
 644  0010 9e            	ld	a,xh
 645  0011 a130          	cp	a,#48
 646  0013 270f          	jreq	L05
 647  0015 9e            	ld	a,xh
 648  0016 a160          	cp	a,#96
 649  0018 270a          	jreq	L05
 650  001a 9e            	ld	a,xh
 651  001b a170          	cp	a,#112
 652  001d 2705          	jreq	L05
 653  001f ae0094        	ldw	x,#148
 654  0022 ad4b          	call	LC002
 655  0024               L05:
 656                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 658  0024 7b03          	ld	a,(OFST+2,sp)
 659  0026 2709          	jreq	L06
 660  0028 a111          	cp	a,#17
 661  002a 2705          	jreq	L06
 662  002c ae0095        	ldw	x,#149
 663  002f ad3e          	call	LC002
 664  0031               L06:
 665                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 667  0031 7b08          	ld	a,(OFST+7,sp)
 668  0033 2709          	jreq	L07
 669  0035 a122          	cp	a,#34
 670  0037 2705          	jreq	L07
 671  0039 ae0096        	ldw	x,#150
 672  003c ad31          	call	LC002
 673  003e               L07:
 674                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 676  003e c65308        	ld	a,21256
 677  0041 a4cf          	and	a,#207
 678  0043 c75308        	ld	21256,a
 679                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 679                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 681  0046 7b08          	ld	a,(OFST+7,sp)
 682  0048 a420          	and	a,#32
 683  004a 6b01          	ld	(OFST+0,sp),a
 685  004c 7b03          	ld	a,(OFST+2,sp)
 686  004e a410          	and	a,#16
 687  0050 1a01          	or	a,(OFST+0,sp)
 688  0052 ca5308        	or	a,21256
 689  0055 c75308        	ld	21256,a
 690                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 690                     ; 162                           (uint8_t)TIM2_OCMode);
 692  0058 c65306        	ld	a,21254
 693  005b a48f          	and	a,#143
 694  005d 1a02          	or	a,(OFST+1,sp)
 695  005f c75306        	ld	21254,a
 696                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 698  0062 7b06          	ld	a,(OFST+5,sp)
 699  0064 c75311        	ld	21265,a
 700                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 702  0067 7b07          	ld	a,(OFST+6,sp)
 703  0069 c75312        	ld	21266,a
 704                     ; 168 }
 707  006c 5b03          	addw	sp,#3
 708  006e 81            	ret	
 709  006f               LC002:
 710  006f 89            	pushw	x
 711  0070 5f            	clrw	x
 712  0071 89            	pushw	x
 713  0072 ae0000        	ldw	x,#L302
 714  0075 cd0000        	call	_assert_failed
 716  0078 5b04          	addw	sp,#4
 717  007a 81            	ret	
 780                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 780                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 780                     ; 181                   uint16_t TIM2_Pulse,
 780                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 780                     ; 183 {
 781                     .text:	section	.text,new
 782  0000               _TIM2_OC3Init:
 784  0000 89            	pushw	x
 785  0001 88            	push	a
 786       00000001      OFST:	set	1
 789                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 791  0002 9e            	ld	a,xh
 792  0003 4d            	tnz	a
 793  0004 271e          	jreq	L201
 794  0006 9e            	ld	a,xh
 795  0007 a110          	cp	a,#16
 796  0009 2719          	jreq	L201
 797  000b 9e            	ld	a,xh
 798  000c a120          	cp	a,#32
 799  000e 2714          	jreq	L201
 800  0010 9e            	ld	a,xh
 801  0011 a130          	cp	a,#48
 802  0013 270f          	jreq	L201
 803  0015 9e            	ld	a,xh
 804  0016 a160          	cp	a,#96
 805  0018 270a          	jreq	L201
 806  001a 9e            	ld	a,xh
 807  001b a170          	cp	a,#112
 808  001d 2705          	jreq	L201
 809  001f ae00b9        	ldw	x,#185
 810  0022 ad4b          	call	LC003
 811  0024               L201:
 812                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 814  0024 7b03          	ld	a,(OFST+2,sp)
 815  0026 2709          	jreq	L211
 816  0028 a111          	cp	a,#17
 817  002a 2705          	jreq	L211
 818  002c ae00ba        	ldw	x,#186
 819  002f ad3e          	call	LC003
 820  0031               L211:
 821                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 823  0031 7b08          	ld	a,(OFST+7,sp)
 824  0033 2709          	jreq	L221
 825  0035 a122          	cp	a,#34
 826  0037 2705          	jreq	L221
 827  0039 ae00bb        	ldw	x,#187
 828  003c ad31          	call	LC003
 829  003e               L221:
 830                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 832  003e c65309        	ld	a,21257
 833  0041 a4fc          	and	a,#252
 834  0043 c75309        	ld	21257,a
 835                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 835                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 837  0046 7b08          	ld	a,(OFST+7,sp)
 838  0048 a402          	and	a,#2
 839  004a 6b01          	ld	(OFST+0,sp),a
 841  004c 7b03          	ld	a,(OFST+2,sp)
 842  004e a401          	and	a,#1
 843  0050 1a01          	or	a,(OFST+0,sp)
 844  0052 ca5309        	or	a,21257
 845  0055 c75309        	ld	21257,a
 846                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 846                     ; 196                           (uint8_t)TIM2_OCMode);
 848  0058 c65307        	ld	a,21255
 849  005b a48f          	and	a,#143
 850  005d 1a02          	or	a,(OFST+1,sp)
 851  005f c75307        	ld	21255,a
 852                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 854  0062 7b06          	ld	a,(OFST+5,sp)
 855  0064 c75313        	ld	21267,a
 856                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 858  0067 7b07          	ld	a,(OFST+6,sp)
 859  0069 c75314        	ld	21268,a
 860                     ; 201 }
 863  006c 5b03          	addw	sp,#3
 864  006e 81            	ret	
 865  006f               LC003:
 866  006f 89            	pushw	x
 867  0070 5f            	clrw	x
 868  0071 89            	pushw	x
 869  0072 ae0000        	ldw	x,#L302
 870  0075 cd0000        	call	_assert_failed
 872  0078 5b04          	addw	sp,#4
 873  007a 81            	ret	
1065                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1065                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1065                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1065                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1065                     ; 216                  uint8_t TIM2_ICFilter)
1065                     ; 217 {
1066                     .text:	section	.text,new
1067  0000               _TIM2_ICInit:
1069  0000 89            	pushw	x
1070       00000000      OFST:	set	0
1073                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1075  0001 9e            	ld	a,xh
1076  0002 4d            	tnz	a
1077  0003 270f          	jreq	L431
1078  0005 9e            	ld	a,xh
1079  0006 4a            	dec	a
1080  0007 270b          	jreq	L431
1081  0009 9e            	ld	a,xh
1082  000a a102          	cp	a,#2
1083  000c 2706          	jreq	L431
1084  000e ae00db        	ldw	x,#219
1085  0011 cd0097        	call	LC004
1086  0014               L431:
1087                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1089  0014 7b02          	ld	a,(OFST+2,sp)
1090  0016 2709          	jreq	L441
1091  0018 a144          	cp	a,#68
1092  001a 2705          	jreq	L441
1093  001c ae00dc        	ldw	x,#220
1094  001f ad76          	call	LC004
1095  0021               L441:
1096                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1098  0021 7b05          	ld	a,(OFST+5,sp)
1099  0023 a101          	cp	a,#1
1100  0025 270d          	jreq	L451
1101  0027 a102          	cp	a,#2
1102  0029 2709          	jreq	L451
1103  002b a103          	cp	a,#3
1104  002d 2705          	jreq	L451
1105  002f ae00dd        	ldw	x,#221
1106  0032 ad63          	call	LC004
1107  0034               L451:
1108                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1110  0034 7b06          	ld	a,(OFST+6,sp)
1111  0036 2711          	jreq	L461
1112  0038 a104          	cp	a,#4
1113  003a 270d          	jreq	L461
1114  003c a108          	cp	a,#8
1115  003e 2709          	jreq	L461
1116  0040 a10c          	cp	a,#12
1117  0042 2705          	jreq	L461
1118  0044 ae00de        	ldw	x,#222
1119  0047 ad4e          	call	LC004
1120  0049               L461:
1121                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1123  0049 7b07          	ld	a,(OFST+7,sp)
1124  004b a110          	cp	a,#16
1125  004d 2505          	jrult	L271
1126  004f ae00df        	ldw	x,#223
1127  0052 ad43          	call	LC004
1128  0054               L271:
1129                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1131  0054 7b01          	ld	a,(OFST+1,sp)
1132  0056 2614          	jrne	L173
1133                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1133                     ; 229                (uint8_t)TIM2_ICSelection,
1133                     ; 230                (uint8_t)TIM2_ICFilter);
1135  0058 7b07          	ld	a,(OFST+7,sp)
1136  005a 88            	push	a
1137  005b 7b06          	ld	a,(OFST+6,sp)
1138  005d 97            	ld	xl,a
1139  005e 7b03          	ld	a,(OFST+3,sp)
1140  0060 95            	ld	xh,a
1141  0061 cd0000        	call	L3_TI1_Config
1143  0064 84            	pop	a
1144                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1146  0065 7b06          	ld	a,(OFST+6,sp)
1147  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1150  006a 2029          	jra	L373
1151  006c               L173:
1152                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1154  006c 4a            	dec	a
1155  006d 2614          	jrne	L573
1156                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1156                     ; 239                (uint8_t)TIM2_ICSelection,
1156                     ; 240                (uint8_t)TIM2_ICFilter);
1158  006f 7b07          	ld	a,(OFST+7,sp)
1159  0071 88            	push	a
1160  0072 7b06          	ld	a,(OFST+6,sp)
1161  0074 97            	ld	xl,a
1162  0075 7b03          	ld	a,(OFST+3,sp)
1163  0077 95            	ld	xh,a
1164  0078 cd0000        	call	L5_TI2_Config
1166  007b 84            	pop	a
1167                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1169  007c 7b06          	ld	a,(OFST+6,sp)
1170  007e cd0000        	call	_TIM2_SetIC2Prescaler
1173  0081 2012          	jra	L373
1174  0083               L573:
1175                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1175                     ; 249                (uint8_t)TIM2_ICSelection,
1175                     ; 250                (uint8_t)TIM2_ICFilter);
1177  0083 7b07          	ld	a,(OFST+7,sp)
1178  0085 88            	push	a
1179  0086 7b06          	ld	a,(OFST+6,sp)
1180  0088 97            	ld	xl,a
1181  0089 7b03          	ld	a,(OFST+3,sp)
1182  008b 95            	ld	xh,a
1183  008c cd0000        	call	L7_TI3_Config
1185  008f 84            	pop	a
1186                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1188  0090 7b06          	ld	a,(OFST+6,sp)
1189  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1191  0095               L373:
1192                     ; 255 }
1195  0095 85            	popw	x
1196  0096 81            	ret	
1197  0097               LC004:
1198  0097 89            	pushw	x
1199  0098 5f            	clrw	x
1200  0099 89            	pushw	x
1201  009a ae0000        	ldw	x,#L302
1202  009d cd0000        	call	_assert_failed
1204  00a0 5b04          	addw	sp,#4
1205  00a2 81            	ret	
1296                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1296                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1296                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1296                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1296                     ; 270                      uint8_t TIM2_ICFilter)
1296                     ; 271 {
1297                     .text:	section	.text,new
1298  0000               _TIM2_PWMIConfig:
1300  0000 89            	pushw	x
1301  0001 89            	pushw	x
1302       00000002      OFST:	set	2
1305                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1307                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1309                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1311  0002 9e            	ld	a,xh
1312  0003 4d            	tnz	a
1313  0004 270a          	jreq	L022
1314  0006 9e            	ld	a,xh
1315  0007 4a            	dec	a
1316  0008 2706          	jreq	L022
1317  000a ae0114        	ldw	x,#276
1318  000d cd00b3        	call	LC005
1319  0010               L022:
1320                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1322  0010 7b04          	ld	a,(OFST+2,sp)
1323  0012 270a          	jreq	L032
1324  0014 a144          	cp	a,#68
1325  0016 2706          	jreq	L032
1326  0018 ae0115        	ldw	x,#277
1327  001b cd00b3        	call	LC005
1328  001e               L032:
1329                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1331  001e 7b07          	ld	a,(OFST+5,sp)
1332  0020 a101          	cp	a,#1
1333  0022 270e          	jreq	L042
1334  0024 a102          	cp	a,#2
1335  0026 270a          	jreq	L042
1336  0028 a103          	cp	a,#3
1337  002a 2706          	jreq	L042
1338  002c ae0116        	ldw	x,#278
1339  002f cd00b3        	call	LC005
1340  0032               L042:
1341                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1343  0032 7b08          	ld	a,(OFST+6,sp)
1344  0034 2711          	jreq	L052
1345  0036 a104          	cp	a,#4
1346  0038 270d          	jreq	L052
1347  003a a108          	cp	a,#8
1348  003c 2709          	jreq	L052
1349  003e a10c          	cp	a,#12
1350  0040 2705          	jreq	L052
1351  0042 ae0117        	ldw	x,#279
1352  0045 ad6c          	call	LC005
1353  0047               L052:
1354                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1356  0047 7b04          	ld	a,(OFST+2,sp)
1357  0049 a144          	cp	a,#68
1358  004b 2706          	jreq	L144
1359                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1361  004d a644          	ld	a,#68
1362  004f 6b01          	ld	(OFST-1,sp),a
1365  0051 2002          	jra	L344
1366  0053               L144:
1367                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1369  0053 0f01          	clr	(OFST-1,sp)
1371  0055               L344:
1372                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1374  0055 7b07          	ld	a,(OFST+5,sp)
1375  0057 4a            	dec	a
1376  0058 2604          	jrne	L544
1377                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1379  005a a602          	ld	a,#2
1381  005c 2002          	jra	L744
1382  005e               L544:
1383                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1385  005e a601          	ld	a,#1
1386  0060               L744:
1387  0060 6b02          	ld	(OFST+0,sp),a
1389                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1391  0062 7b03          	ld	a,(OFST+1,sp)
1392  0064 2626          	jrne	L154
1393                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1393                     ; 305                (uint8_t)TIM2_ICFilter);
1395  0066 7b09          	ld	a,(OFST+7,sp)
1396  0068 88            	push	a
1397  0069 7b08          	ld	a,(OFST+6,sp)
1398  006b 97            	ld	xl,a
1399  006c 7b05          	ld	a,(OFST+3,sp)
1400  006e 95            	ld	xh,a
1401  006f cd0000        	call	L3_TI1_Config
1403  0072 84            	pop	a
1404                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1406  0073 7b08          	ld	a,(OFST+6,sp)
1407  0075 cd0000        	call	_TIM2_SetIC1Prescaler
1409                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1411  0078 7b09          	ld	a,(OFST+7,sp)
1412  007a 88            	push	a
1413  007b 7b03          	ld	a,(OFST+1,sp)
1414  007d 97            	ld	xl,a
1415  007e 7b02          	ld	a,(OFST+0,sp)
1416  0080 95            	ld	xh,a
1417  0081 cd0000        	call	L5_TI2_Config
1419  0084 84            	pop	a
1420                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1422  0085 7b08          	ld	a,(OFST+6,sp)
1423  0087 cd0000        	call	_TIM2_SetIC2Prescaler
1426  008a 2024          	jra	L354
1427  008c               L154:
1428                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1428                     ; 320                (uint8_t)TIM2_ICFilter);
1430  008c 7b09          	ld	a,(OFST+7,sp)
1431  008e 88            	push	a
1432  008f 7b08          	ld	a,(OFST+6,sp)
1433  0091 97            	ld	xl,a
1434  0092 7b05          	ld	a,(OFST+3,sp)
1435  0094 95            	ld	xh,a
1436  0095 cd0000        	call	L5_TI2_Config
1438  0098 84            	pop	a
1439                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1441  0099 7b08          	ld	a,(OFST+6,sp)
1442  009b cd0000        	call	_TIM2_SetIC2Prescaler
1444                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1446  009e 7b09          	ld	a,(OFST+7,sp)
1447  00a0 88            	push	a
1448  00a1 7b03          	ld	a,(OFST+1,sp)
1449  00a3 97            	ld	xl,a
1450  00a4 7b02          	ld	a,(OFST+0,sp)
1451  00a6 95            	ld	xh,a
1452  00a7 cd0000        	call	L3_TI1_Config
1454  00aa 84            	pop	a
1455                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1457  00ab 7b08          	ld	a,(OFST+6,sp)
1458  00ad cd0000        	call	_TIM2_SetIC1Prescaler
1460  00b0               L354:
1461                     ; 331 }
1464  00b0 5b04          	addw	sp,#4
1465  00b2 81            	ret	
1466  00b3               LC005:
1467  00b3 89            	pushw	x
1468  00b4 5f            	clrw	x
1469  00b5 89            	pushw	x
1470  00b6 ae0000        	ldw	x,#L302
1471  00b9 cd0000        	call	_assert_failed
1473  00bc 5b04          	addw	sp,#4
1474  00be 81            	ret	
1530                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1530                     ; 340 {
1531                     .text:	section	.text,new
1532  0000               _TIM2_Cmd:
1534  0000 88            	push	a
1535       00000000      OFST:	set	0
1538                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1540  0001 4d            	tnz	a
1541  0002 2711          	jreq	L203
1542  0004 4a            	dec	a
1543  0005 270e          	jreq	L203
1544  0007 ae0156        	ldw	x,#342
1545  000a 89            	pushw	x
1546  000b 5f            	clrw	x
1547  000c 89            	pushw	x
1548  000d ae0000        	ldw	x,#L302
1549  0010 cd0000        	call	_assert_failed
1551  0013 5b04          	addw	sp,#4
1552  0015               L203:
1553                     ; 345   if (NewState != DISABLE)
1555  0015 7b01          	ld	a,(OFST+1,sp)
1556  0017 2706          	jreq	L305
1557                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1559  0019 72105300      	bset	21248,#0
1561  001d 2004          	jra	L505
1562  001f               L305:
1563                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1565  001f 72115300      	bres	21248,#0
1566  0023               L505:
1567                     ; 353 }
1570  0023 84            	pop	a
1571  0024 81            	ret	
1651                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1651                     ; 369 {
1652                     .text:	section	.text,new
1653  0000               _TIM2_ITConfig:
1655  0000 89            	pushw	x
1656       00000000      OFST:	set	0
1659                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1661  0001 9e            	ld	a,xh
1662  0002 4d            	tnz	a
1663  0003 2705          	jreq	L013
1664  0005 9e            	ld	a,xh
1665  0006 a110          	cp	a,#16
1666  0008 2505          	jrult	L213
1667  000a               L013:
1668  000a ae0173        	ldw	x,#371
1669  000d ad22          	call	LC006
1670  000f               L213:
1671                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1673  000f 7b02          	ld	a,(OFST+2,sp)
1674  0011 2708          	jreq	L223
1675  0013 4a            	dec	a
1676  0014 2705          	jreq	L223
1677  0016 ae0174        	ldw	x,#372
1678  0019 ad16          	call	LC006
1679  001b               L223:
1680                     ; 374   if (NewState != DISABLE)
1682  001b 7b02          	ld	a,(OFST+2,sp)
1683  001d 2707          	jreq	L545
1684                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1686  001f c65301        	ld	a,21249
1687  0022 1a01          	or	a,(OFST+1,sp)
1689  0024 2006          	jra	L745
1690  0026               L545:
1691                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1693  0026 7b01          	ld	a,(OFST+1,sp)
1694  0028 43            	cpl	a
1695  0029 c45301        	and	a,21249
1696  002c               L745:
1697  002c c75301        	ld	21249,a
1698                     ; 384 }
1701  002f 85            	popw	x
1702  0030 81            	ret	
1703  0031               LC006:
1704  0031 89            	pushw	x
1705  0032 5f            	clrw	x
1706  0033 89            	pushw	x
1707  0034 ae0000        	ldw	x,#L302
1708  0037 cd0000        	call	_assert_failed
1710  003a 5b04          	addw	sp,#4
1711  003c 81            	ret	
1748                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1748                     ; 393 {
1749                     .text:	section	.text,new
1750  0000               _TIM2_UpdateDisableConfig:
1752  0000 88            	push	a
1753       00000000      OFST:	set	0
1756                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1758  0001 4d            	tnz	a
1759  0002 2711          	jreq	L433
1760  0004 4a            	dec	a
1761  0005 270e          	jreq	L433
1762  0007 ae018b        	ldw	x,#395
1763  000a 89            	pushw	x
1764  000b 5f            	clrw	x
1765  000c 89            	pushw	x
1766  000d ae0000        	ldw	x,#L302
1767  0010 cd0000        	call	_assert_failed
1769  0013 5b04          	addw	sp,#4
1770  0015               L433:
1771                     ; 398   if (NewState != DISABLE)
1773  0015 7b01          	ld	a,(OFST+1,sp)
1774  0017 2706          	jreq	L765
1775                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1777  0019 72125300      	bset	21248,#1
1779  001d 2004          	jra	L175
1780  001f               L765:
1781                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1783  001f 72135300      	bres	21248,#1
1784  0023               L175:
1785                     ; 406 }
1788  0023 84            	pop	a
1789  0024 81            	ret	
1848                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1848                     ; 417 {
1849                     .text:	section	.text,new
1850  0000               _TIM2_UpdateRequestConfig:
1852  0000 88            	push	a
1853       00000000      OFST:	set	0
1856                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1858  0001 4d            	tnz	a
1859  0002 2711          	jreq	L643
1860  0004 4a            	dec	a
1861  0005 270e          	jreq	L643
1862  0007 ae01a3        	ldw	x,#419
1863  000a 89            	pushw	x
1864  000b 5f            	clrw	x
1865  000c 89            	pushw	x
1866  000d ae0000        	ldw	x,#L302
1867  0010 cd0000        	call	_assert_failed
1869  0013 5b04          	addw	sp,#4
1870  0015               L643:
1871                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1873  0015 7b01          	ld	a,(OFST+1,sp)
1874  0017 2706          	jreq	L126
1875                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1877  0019 72145300      	bset	21248,#2
1879  001d 2004          	jra	L326
1880  001f               L126:
1881                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1883  001f 72155300      	bres	21248,#2
1884  0023               L326:
1885                     ; 430 }
1888  0023 84            	pop	a
1889  0024 81            	ret	
1947                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1947                     ; 441 {
1948                     .text:	section	.text,new
1949  0000               _TIM2_SelectOnePulseMode:
1951  0000 88            	push	a
1952       00000000      OFST:	set	0
1955                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1957  0001 a101          	cp	a,#1
1958  0003 2711          	jreq	L063
1959  0005 4d            	tnz	a
1960  0006 270e          	jreq	L063
1961  0008 ae01bb        	ldw	x,#443
1962  000b 89            	pushw	x
1963  000c 5f            	clrw	x
1964  000d 89            	pushw	x
1965  000e ae0000        	ldw	x,#L302
1966  0011 cd0000        	call	_assert_failed
1968  0014 5b04          	addw	sp,#4
1969  0016               L063:
1970                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1972  0016 7b01          	ld	a,(OFST+1,sp)
1973  0018 2706          	jreq	L356
1974                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1976  001a 72165300      	bset	21248,#3
1978  001e 2004          	jra	L556
1979  0020               L356:
1980                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1982  0020 72175300      	bres	21248,#3
1983  0024               L556:
1984                     ; 454 }
1987  0024 84            	pop	a
1988  0025 81            	ret	
2057                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2057                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2057                     ; 486 {
2058                     .text:	section	.text,new
2059  0000               _TIM2_PrescalerConfig:
2061  0000 89            	pushw	x
2062       00000000      OFST:	set	0
2065                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2067  0001 9f            	ld	a,xl
2068  0002 4d            	tnz	a
2069  0003 2709          	jreq	L273
2070  0005 9f            	ld	a,xl
2071  0006 4a            	dec	a
2072  0007 2705          	jreq	L273
2073  0009 ae01e8        	ldw	x,#488
2074  000c ad51          	call	LC007
2075  000e               L273:
2076                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2078  000e 7b01          	ld	a,(OFST+1,sp)
2079  0010 2743          	jreq	L204
2080  0012 a101          	cp	a,#1
2081  0014 273f          	jreq	L204
2082  0016 a102          	cp	a,#2
2083  0018 273b          	jreq	L204
2084  001a a103          	cp	a,#3
2085  001c 2737          	jreq	L204
2086  001e a104          	cp	a,#4
2087  0020 2733          	jreq	L204
2088  0022 a105          	cp	a,#5
2089  0024 272f          	jreq	L204
2090  0026 a106          	cp	a,#6
2091  0028 272b          	jreq	L204
2092  002a a107          	cp	a,#7
2093  002c 2727          	jreq	L204
2094  002e a108          	cp	a,#8
2095  0030 2723          	jreq	L204
2096  0032 a109          	cp	a,#9
2097  0034 271f          	jreq	L204
2098  0036 a10a          	cp	a,#10
2099  0038 271b          	jreq	L204
2100  003a a10b          	cp	a,#11
2101  003c 2717          	jreq	L204
2102  003e a10c          	cp	a,#12
2103  0040 2713          	jreq	L204
2104  0042 a10d          	cp	a,#13
2105  0044 270f          	jreq	L204
2106  0046 a10e          	cp	a,#14
2107  0048 270b          	jreq	L204
2108  004a a10f          	cp	a,#15
2109  004c 2707          	jreq	L204
2110  004e ae01e9        	ldw	x,#489
2111  0051 ad0c          	call	LC007
2112  0053 7b01          	ld	a,(OFST+1,sp)
2113  0055               L204:
2114                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2116  0055 c7530c        	ld	21260,a
2117                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2119  0058 7b02          	ld	a,(OFST+2,sp)
2120  005a c75304        	ld	21252,a
2121                     ; 496 }
2124  005d 85            	popw	x
2125  005e 81            	ret	
2126  005f               LC007:
2127  005f 89            	pushw	x
2128  0060 5f            	clrw	x
2129  0061 89            	pushw	x
2130  0062 ae0000        	ldw	x,#L302
2131  0065 cd0000        	call	_assert_failed
2133  0068 5b04          	addw	sp,#4
2134  006a 81            	ret	
2193                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2193                     ; 508 {
2194                     .text:	section	.text,new
2195  0000               _TIM2_ForcedOC1Config:
2197  0000 88            	push	a
2198       00000000      OFST:	set	0
2201                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2203  0001 a150          	cp	a,#80
2204  0003 2712          	jreq	L414
2205  0005 a140          	cp	a,#64
2206  0007 270e          	jreq	L414
2207  0009 ae01fe        	ldw	x,#510
2208  000c 89            	pushw	x
2209  000d 5f            	clrw	x
2210  000e 89            	pushw	x
2211  000f ae0000        	ldw	x,#L302
2212  0012 cd0000        	call	_assert_failed
2214  0015 5b04          	addw	sp,#4
2215  0017               L414:
2216                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2216                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2218  0017 c65305        	ld	a,21253
2219  001a a48f          	and	a,#143
2220  001c 1a01          	or	a,(OFST+1,sp)
2221  001e c75305        	ld	21253,a
2222                     ; 515 }
2225  0021 84            	pop	a
2226  0022 81            	ret	
2263                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2263                     ; 527 {
2264                     .text:	section	.text,new
2265  0000               _TIM2_ForcedOC2Config:
2267  0000 88            	push	a
2268       00000000      OFST:	set	0
2271                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2273  0001 a150          	cp	a,#80
2274  0003 2712          	jreq	L624
2275  0005 a140          	cp	a,#64
2276  0007 270e          	jreq	L624
2277  0009 ae0211        	ldw	x,#529
2278  000c 89            	pushw	x
2279  000d 5f            	clrw	x
2280  000e 89            	pushw	x
2281  000f ae0000        	ldw	x,#L302
2282  0012 cd0000        	call	_assert_failed
2284  0015 5b04          	addw	sp,#4
2285  0017               L624:
2286                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2286                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2288  0017 c65306        	ld	a,21254
2289  001a a48f          	and	a,#143
2290  001c 1a01          	or	a,(OFST+1,sp)
2291  001e c75306        	ld	21254,a
2292                     ; 534 }
2295  0021 84            	pop	a
2296  0022 81            	ret	
2333                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2333                     ; 546 {
2334                     .text:	section	.text,new
2335  0000               _TIM2_ForcedOC3Config:
2337  0000 88            	push	a
2338       00000000      OFST:	set	0
2341                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2343  0001 a150          	cp	a,#80
2344  0003 2712          	jreq	L044
2345  0005 a140          	cp	a,#64
2346  0007 270e          	jreq	L044
2347  0009 ae0224        	ldw	x,#548
2348  000c 89            	pushw	x
2349  000d 5f            	clrw	x
2350  000e 89            	pushw	x
2351  000f ae0000        	ldw	x,#L302
2352  0012 cd0000        	call	_assert_failed
2354  0015 5b04          	addw	sp,#4
2355  0017               L044:
2356                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2356                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2358  0017 c65307        	ld	a,21255
2359  001a a48f          	and	a,#143
2360  001c 1a01          	or	a,(OFST+1,sp)
2361  001e c75307        	ld	21255,a
2362                     ; 553 }
2365  0021 84            	pop	a
2366  0022 81            	ret	
2403                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2403                     ; 562 {
2404                     .text:	section	.text,new
2405  0000               _TIM2_ARRPreloadConfig:
2407  0000 88            	push	a
2408       00000000      OFST:	set	0
2411                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2413  0001 4d            	tnz	a
2414  0002 2711          	jreq	L254
2415  0004 4a            	dec	a
2416  0005 270e          	jreq	L254
2417  0007 ae0234        	ldw	x,#564
2418  000a 89            	pushw	x
2419  000b 5f            	clrw	x
2420  000c 89            	pushw	x
2421  000d ae0000        	ldw	x,#L302
2422  0010 cd0000        	call	_assert_failed
2424  0013 5b04          	addw	sp,#4
2425  0015               L254:
2426                     ; 567   if (NewState != DISABLE)
2428  0015 7b01          	ld	a,(OFST+1,sp)
2429  0017 2706          	jreq	L1101
2430                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2432  0019 721e5300      	bset	21248,#7
2434  001d 2004          	jra	L3101
2435  001f               L1101:
2436                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2438  001f 721f5300      	bres	21248,#7
2439  0023               L3101:
2440                     ; 575 }
2443  0023 84            	pop	a
2444  0024 81            	ret	
2481                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2481                     ; 584 {
2482                     .text:	section	.text,new
2483  0000               _TIM2_OC1PreloadConfig:
2485  0000 88            	push	a
2486       00000000      OFST:	set	0
2489                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2491  0001 4d            	tnz	a
2492  0002 2711          	jreq	L464
2493  0004 4a            	dec	a
2494  0005 270e          	jreq	L464
2495  0007 ae024a        	ldw	x,#586
2496  000a 89            	pushw	x
2497  000b 5f            	clrw	x
2498  000c 89            	pushw	x
2499  000d ae0000        	ldw	x,#L302
2500  0010 cd0000        	call	_assert_failed
2502  0013 5b04          	addw	sp,#4
2503  0015               L464:
2504                     ; 589   if (NewState != DISABLE)
2506  0015 7b01          	ld	a,(OFST+1,sp)
2507  0017 2706          	jreq	L3301
2508                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2510  0019 72165305      	bset	21253,#3
2512  001d 2004          	jra	L5301
2513  001f               L3301:
2514                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2516  001f 72175305      	bres	21253,#3
2517  0023               L5301:
2518                     ; 597 }
2521  0023 84            	pop	a
2522  0024 81            	ret	
2559                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2559                     ; 606 {
2560                     .text:	section	.text,new
2561  0000               _TIM2_OC2PreloadConfig:
2563  0000 88            	push	a
2564       00000000      OFST:	set	0
2567                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2569  0001 4d            	tnz	a
2570  0002 2711          	jreq	L674
2571  0004 4a            	dec	a
2572  0005 270e          	jreq	L674
2573  0007 ae0260        	ldw	x,#608
2574  000a 89            	pushw	x
2575  000b 5f            	clrw	x
2576  000c 89            	pushw	x
2577  000d ae0000        	ldw	x,#L302
2578  0010 cd0000        	call	_assert_failed
2580  0013 5b04          	addw	sp,#4
2581  0015               L674:
2582                     ; 611   if (NewState != DISABLE)
2584  0015 7b01          	ld	a,(OFST+1,sp)
2585  0017 2706          	jreq	L5501
2586                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2588  0019 72165306      	bset	21254,#3
2590  001d 2004          	jra	L7501
2591  001f               L5501:
2592                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2594  001f 72175306      	bres	21254,#3
2595  0023               L7501:
2596                     ; 619 }
2599  0023 84            	pop	a
2600  0024 81            	ret	
2637                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2637                     ; 628 {
2638                     .text:	section	.text,new
2639  0000               _TIM2_OC3PreloadConfig:
2641  0000 88            	push	a
2642       00000000      OFST:	set	0
2645                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2647  0001 4d            	tnz	a
2648  0002 2711          	jreq	L015
2649  0004 4a            	dec	a
2650  0005 270e          	jreq	L015
2651  0007 ae0276        	ldw	x,#630
2652  000a 89            	pushw	x
2653  000b 5f            	clrw	x
2654  000c 89            	pushw	x
2655  000d ae0000        	ldw	x,#L302
2656  0010 cd0000        	call	_assert_failed
2658  0013 5b04          	addw	sp,#4
2659  0015               L015:
2660                     ; 633   if (NewState != DISABLE)
2662  0015 7b01          	ld	a,(OFST+1,sp)
2663  0017 2706          	jreq	L7701
2664                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2666  0019 72165307      	bset	21255,#3
2668  001d 2004          	jra	L1011
2669  001f               L7701:
2670                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2672  001f 72175307      	bres	21255,#3
2673  0023               L1011:
2674                     ; 641 }
2677  0023 84            	pop	a
2678  0024 81            	ret	
2752                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2752                     ; 654 {
2753                     .text:	section	.text,new
2754  0000               _TIM2_GenerateEvent:
2756  0000 88            	push	a
2757       00000000      OFST:	set	0
2760                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2762  0001 4d            	tnz	a
2763  0002 260e          	jrne	L025
2764  0004 ae0290        	ldw	x,#656
2765  0007 89            	pushw	x
2766  0008 5f            	clrw	x
2767  0009 89            	pushw	x
2768  000a ae0000        	ldw	x,#L302
2769  000d cd0000        	call	_assert_failed
2771  0010 5b04          	addw	sp,#4
2772  0012               L025:
2773                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2775  0012 7b01          	ld	a,(OFST+1,sp)
2776  0014 c75304        	ld	21252,a
2777                     ; 660 }
2780  0017 84            	pop	a
2781  0018 81            	ret	
2818                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2818                     ; 671 {
2819                     .text:	section	.text,new
2820  0000               _TIM2_OC1PolarityConfig:
2822  0000 88            	push	a
2823       00000000      OFST:	set	0
2826                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2828  0001 4d            	tnz	a
2829  0002 2712          	jreq	L235
2830  0004 a122          	cp	a,#34
2831  0006 270e          	jreq	L235
2832  0008 ae02a1        	ldw	x,#673
2833  000b 89            	pushw	x
2834  000c 5f            	clrw	x
2835  000d 89            	pushw	x
2836  000e ae0000        	ldw	x,#L302
2837  0011 cd0000        	call	_assert_failed
2839  0014 5b04          	addw	sp,#4
2840  0016               L235:
2841                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2843  0016 7b01          	ld	a,(OFST+1,sp)
2844  0018 2706          	jreq	L3511
2845                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2847  001a 72125308      	bset	21256,#1
2849  001e 2004          	jra	L5511
2850  0020               L3511:
2851                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2853  0020 72135308      	bres	21256,#1
2854  0024               L5511:
2855                     ; 684 }
2858  0024 84            	pop	a
2859  0025 81            	ret	
2896                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2896                     ; 695 {
2897                     .text:	section	.text,new
2898  0000               _TIM2_OC2PolarityConfig:
2900  0000 88            	push	a
2901       00000000      OFST:	set	0
2904                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2906  0001 4d            	tnz	a
2907  0002 2712          	jreq	L445
2908  0004 a122          	cp	a,#34
2909  0006 270e          	jreq	L445
2910  0008 ae02b9        	ldw	x,#697
2911  000b 89            	pushw	x
2912  000c 5f            	clrw	x
2913  000d 89            	pushw	x
2914  000e ae0000        	ldw	x,#L302
2915  0011 cd0000        	call	_assert_failed
2917  0014 5b04          	addw	sp,#4
2918  0016               L445:
2919                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2921  0016 7b01          	ld	a,(OFST+1,sp)
2922  0018 2706          	jreq	L5711
2923                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2925  001a 721a5308      	bset	21256,#5
2927  001e 2004          	jra	L7711
2928  0020               L5711:
2929                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2931  0020 721b5308      	bres	21256,#5
2932  0024               L7711:
2933                     ; 708 }
2936  0024 84            	pop	a
2937  0025 81            	ret	
2974                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2974                     ; 719 {
2975                     .text:	section	.text,new
2976  0000               _TIM2_OC3PolarityConfig:
2978  0000 88            	push	a
2979       00000000      OFST:	set	0
2982                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2984  0001 4d            	tnz	a
2985  0002 2712          	jreq	L655
2986  0004 a122          	cp	a,#34
2987  0006 270e          	jreq	L655
2988  0008 ae02d1        	ldw	x,#721
2989  000b 89            	pushw	x
2990  000c 5f            	clrw	x
2991  000d 89            	pushw	x
2992  000e ae0000        	ldw	x,#L302
2993  0011 cd0000        	call	_assert_failed
2995  0014 5b04          	addw	sp,#4
2996  0016               L655:
2997                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2999  0016 7b01          	ld	a,(OFST+1,sp)
3000  0018 2706          	jreq	L7121
3001                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3003  001a 72125309      	bset	21257,#1
3005  001e 2004          	jra	L1221
3006  0020               L7121:
3007                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3009  0020 72135309      	bres	21257,#1
3010  0024               L1221:
3011                     ; 732 }
3014  0024 84            	pop	a
3015  0025 81            	ret	
3061                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3061                     ; 746 {
3062                     .text:	section	.text,new
3063  0000               _TIM2_CCxCmd:
3065  0000 89            	pushw	x
3066       00000000      OFST:	set	0
3069                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3071  0001 9e            	ld	a,xh
3072  0002 4d            	tnz	a
3073  0003 270e          	jreq	L075
3074  0005 9e            	ld	a,xh
3075  0006 4a            	dec	a
3076  0007 270a          	jreq	L075
3077  0009 9e            	ld	a,xh
3078  000a a102          	cp	a,#2
3079  000c 2705          	jreq	L075
3080  000e ae02ec        	ldw	x,#748
3081  0011 ad43          	call	LC008
3082  0013               L075:
3083                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3085  0013 7b02          	ld	a,(OFST+2,sp)
3086  0015 2708          	jreq	L006
3087  0017 4a            	dec	a
3088  0018 2705          	jreq	L006
3089  001a ae02ed        	ldw	x,#749
3090  001d ad37          	call	LC008
3091  001f               L006:
3092                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3094  001f 7b01          	ld	a,(OFST+1,sp)
3095  0021 2610          	jrne	L5421
3096                     ; 754     if (NewState != DISABLE)
3098  0023 7b02          	ld	a,(OFST+2,sp)
3099  0025 2706          	jreq	L7421
3100                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3102  0027 72105308      	bset	21256,#0
3104  002b 2027          	jra	L3521
3105  002d               L7421:
3106                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3108  002d 72115308      	bres	21256,#0
3109  0031 2021          	jra	L3521
3110  0033               L5421:
3111                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3113  0033 4a            	dec	a
3114  0034 2610          	jrne	L5521
3115                     ; 767     if (NewState != DISABLE)
3117  0036 7b02          	ld	a,(OFST+2,sp)
3118  0038 2706          	jreq	L7521
3119                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3121  003a 72185308      	bset	21256,#4
3123  003e 2014          	jra	L3521
3124  0040               L7521:
3125                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3127  0040 72195308      	bres	21256,#4
3128  0044 200e          	jra	L3521
3129  0046               L5521:
3130                     ; 779     if (NewState != DISABLE)
3132  0046 7b02          	ld	a,(OFST+2,sp)
3133  0048 2706          	jreq	L5621
3134                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3136  004a 72105309      	bset	21257,#0
3138  004e 2004          	jra	L3521
3139  0050               L5621:
3140                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3142  0050 72115309      	bres	21257,#0
3143  0054               L3521:
3144                     ; 788 }
3147  0054 85            	popw	x
3148  0055 81            	ret	
3149  0056               LC008:
3150  0056 89            	pushw	x
3151  0057 5f            	clrw	x
3152  0058 89            	pushw	x
3153  0059 ae0000        	ldw	x,#L302
3154  005c cd0000        	call	_assert_failed
3156  005f 5b04          	addw	sp,#4
3157  0061 81            	ret	
3203                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3203                     ; 811 {
3204                     .text:	section	.text,new
3205  0000               _TIM2_SelectOCxM:
3207  0000 89            	pushw	x
3208       00000000      OFST:	set	0
3211                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3213  0001 9e            	ld	a,xh
3214  0002 4d            	tnz	a
3215  0003 270e          	jreq	L216
3216  0005 9e            	ld	a,xh
3217  0006 4a            	dec	a
3218  0007 270a          	jreq	L216
3219  0009 9e            	ld	a,xh
3220  000a a102          	cp	a,#2
3221  000c 2705          	jreq	L216
3222  000e ae032d        	ldw	x,#813
3223  0011 ad5c          	call	LC009
3224  0013               L216:
3225                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3227  0013 7b02          	ld	a,(OFST+2,sp)
3228  0015 2721          	jreq	L226
3229  0017 a110          	cp	a,#16
3230  0019 271d          	jreq	L226
3231  001b a120          	cp	a,#32
3232  001d 2719          	jreq	L226
3233  001f a130          	cp	a,#48
3234  0021 2715          	jreq	L226
3235  0023 a160          	cp	a,#96
3236  0025 2711          	jreq	L226
3237  0027 a170          	cp	a,#112
3238  0029 270d          	jreq	L226
3239  002b a150          	cp	a,#80
3240  002d 2709          	jreq	L226
3241  002f a140          	cp	a,#64
3242  0031 2705          	jreq	L226
3243  0033 ae032e        	ldw	x,#814
3244  0036 ad37          	call	LC009
3245  0038               L226:
3246                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3248  0038 7b01          	ld	a,(OFST+1,sp)
3249  003a 2610          	jrne	L3131
3250                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3252  003c 72115308      	bres	21256,#0
3253                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3253                     ; 823                             | (uint8_t)TIM2_OCMode);
3255  0040 c65305        	ld	a,21253
3256  0043 a48f          	and	a,#143
3257  0045 1a02          	or	a,(OFST+2,sp)
3258  0047 c75305        	ld	21253,a
3260  004a 2021          	jra	L5131
3261  004c               L3131:
3262                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3264  004c 4a            	dec	a
3265  004d 2610          	jrne	L7131
3266                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3268  004f 72195308      	bres	21256,#4
3269                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3269                     ; 832                             | (uint8_t)TIM2_OCMode);
3271  0053 c65306        	ld	a,21254
3272  0056 a48f          	and	a,#143
3273  0058 1a02          	or	a,(OFST+2,sp)
3274  005a c75306        	ld	21254,a
3276  005d 200e          	jra	L5131
3277  005f               L7131:
3278                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3280  005f 72115309      	bres	21257,#0
3281                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3281                     ; 841                             | (uint8_t)TIM2_OCMode);
3283  0063 c65307        	ld	a,21255
3284  0066 a48f          	and	a,#143
3285  0068 1a02          	or	a,(OFST+2,sp)
3286  006a c75307        	ld	21255,a
3287  006d               L5131:
3288                     ; 843 }
3291  006d 85            	popw	x
3292  006e 81            	ret	
3293  006f               LC009:
3294  006f 89            	pushw	x
3295  0070 5f            	clrw	x
3296  0071 89            	pushw	x
3297  0072 ae0000        	ldw	x,#L302
3298  0075 cd0000        	call	_assert_failed
3300  0078 5b04          	addw	sp,#4
3301  007a 81            	ret	
3333                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3333                     ; 852 {
3334                     .text:	section	.text,new
3335  0000               _TIM2_SetCounter:
3339                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3341  0000 9e            	ld	a,xh
3342  0001 c7530a        	ld	21258,a
3343                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3345  0004 9f            	ld	a,xl
3346  0005 c7530b        	ld	21259,a
3347                     ; 856 }
3350  0008 81            	ret	
3382                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3382                     ; 865 {
3383                     .text:	section	.text,new
3384  0000               _TIM2_SetAutoreload:
3388                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3390  0000 9e            	ld	a,xh
3391  0001 c7530d        	ld	21261,a
3392                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3394  0004 9f            	ld	a,xl
3395  0005 c7530e        	ld	21262,a
3396                     ; 869 }
3399  0008 81            	ret	
3431                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3431                     ; 878 {
3432                     .text:	section	.text,new
3433  0000               _TIM2_SetCompare1:
3437                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3439  0000 9e            	ld	a,xh
3440  0001 c7530f        	ld	21263,a
3441                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3443  0004 9f            	ld	a,xl
3444  0005 c75310        	ld	21264,a
3445                     ; 882 }
3448  0008 81            	ret	
3480                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3480                     ; 891 {
3481                     .text:	section	.text,new
3482  0000               _TIM2_SetCompare2:
3486                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3488  0000 9e            	ld	a,xh
3489  0001 c75311        	ld	21265,a
3490                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3492  0004 9f            	ld	a,xl
3493  0005 c75312        	ld	21266,a
3494                     ; 895 }
3497  0008 81            	ret	
3529                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3529                     ; 904 {
3530                     .text:	section	.text,new
3531  0000               _TIM2_SetCompare3:
3535                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3537  0000 9e            	ld	a,xh
3538  0001 c75313        	ld	21267,a
3539                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3541  0004 9f            	ld	a,xl
3542  0005 c75314        	ld	21268,a
3543                     ; 908 }
3546  0008 81            	ret	
3583                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3583                     ; 921 {
3584                     .text:	section	.text,new
3585  0000               _TIM2_SetIC1Prescaler:
3587  0000 88            	push	a
3588       00000000      OFST:	set	0
3591                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3593  0001 4d            	tnz	a
3594  0002 271a          	jreq	L646
3595  0004 a104          	cp	a,#4
3596  0006 2716          	jreq	L646
3597  0008 a108          	cp	a,#8
3598  000a 2712          	jreq	L646
3599  000c a10c          	cp	a,#12
3600  000e 270e          	jreq	L646
3601  0010 ae039b        	ldw	x,#923
3602  0013 89            	pushw	x
3603  0014 5f            	clrw	x
3604  0015 89            	pushw	x
3605  0016 ae0000        	ldw	x,#L302
3606  0019 cd0000        	call	_assert_failed
3608  001c 5b04          	addw	sp,#4
3609  001e               L646:
3610                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3610                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3612  001e c65305        	ld	a,21253
3613  0021 a4f3          	and	a,#243
3614  0023 1a01          	or	a,(OFST+1,sp)
3615  0025 c75305        	ld	21253,a
3616                     ; 928 }
3619  0028 84            	pop	a
3620  0029 81            	ret	
3657                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3657                     ; 941 {
3658                     .text:	section	.text,new
3659  0000               _TIM2_SetIC2Prescaler:
3661  0000 88            	push	a
3662       00000000      OFST:	set	0
3665                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3667  0001 4d            	tnz	a
3668  0002 271a          	jreq	L066
3669  0004 a104          	cp	a,#4
3670  0006 2716          	jreq	L066
3671  0008 a108          	cp	a,#8
3672  000a 2712          	jreq	L066
3673  000c a10c          	cp	a,#12
3674  000e 270e          	jreq	L066
3675  0010 ae03af        	ldw	x,#943
3676  0013 89            	pushw	x
3677  0014 5f            	clrw	x
3678  0015 89            	pushw	x
3679  0016 ae0000        	ldw	x,#L302
3680  0019 cd0000        	call	_assert_failed
3682  001c 5b04          	addw	sp,#4
3683  001e               L066:
3684                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3684                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3686  001e c65306        	ld	a,21254
3687  0021 a4f3          	and	a,#243
3688  0023 1a01          	or	a,(OFST+1,sp)
3689  0025 c75306        	ld	21254,a
3690                     ; 948 }
3693  0028 84            	pop	a
3694  0029 81            	ret	
3731                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3731                     ; 961 {
3732                     .text:	section	.text,new
3733  0000               _TIM2_SetIC3Prescaler:
3735  0000 88            	push	a
3736       00000000      OFST:	set	0
3739                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3741  0001 4d            	tnz	a
3742  0002 271a          	jreq	L276
3743  0004 a104          	cp	a,#4
3744  0006 2716          	jreq	L276
3745  0008 a108          	cp	a,#8
3746  000a 2712          	jreq	L276
3747  000c a10c          	cp	a,#12
3748  000e 270e          	jreq	L276
3749  0010 ae03c4        	ldw	x,#964
3750  0013 89            	pushw	x
3751  0014 5f            	clrw	x
3752  0015 89            	pushw	x
3753  0016 ae0000        	ldw	x,#L302
3754  0019 cd0000        	call	_assert_failed
3756  001c 5b04          	addw	sp,#4
3757  001e               L276:
3758                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3758                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3760  001e c65307        	ld	a,21255
3761  0021 a4f3          	and	a,#243
3762  0023 1a01          	or	a,(OFST+1,sp)
3763  0025 c75307        	ld	21255,a
3764                     ; 968 }
3767  0028 84            	pop	a
3768  0029 81            	ret	
3814                     ; 975 uint16_t TIM2_GetCapture1(void)
3814                     ; 976 {
3815                     .text:	section	.text,new
3816  0000               _TIM2_GetCapture1:
3818  0000 5204          	subw	sp,#4
3819       00000004      OFST:	set	4
3822                     ; 978   uint16_t tmpccr1 = 0;
3824                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3828                     ; 981   tmpccr1h = TIM2->CCR1H;
3830  0002 c6530f        	ld	a,21263
3831  0005 6b02          	ld	(OFST-2,sp),a
3833                     ; 982   tmpccr1l = TIM2->CCR1L;
3835  0007 c65310        	ld	a,21264
3836  000a 6b01          	ld	(OFST-3,sp),a
3838                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3840  000c 5f            	clrw	x
3841  000d 97            	ld	xl,a
3842  000e 1f03          	ldw	(OFST-1,sp),x
3844                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3846  0010 5f            	clrw	x
3847  0011 7b02          	ld	a,(OFST-2,sp)
3848  0013 97            	ld	xl,a
3849  0014 7b04          	ld	a,(OFST+0,sp)
3850  0016 01            	rrwa	x,a
3851  0017 1a03          	or	a,(OFST-1,sp)
3852  0019 01            	rrwa	x,a
3854                     ; 987   return (uint16_t)tmpccr1;
3858  001a 5b04          	addw	sp,#4
3859  001c 81            	ret	
3905                     ; 995 uint16_t TIM2_GetCapture2(void)
3905                     ; 996 {
3906                     .text:	section	.text,new
3907  0000               _TIM2_GetCapture2:
3909  0000 5204          	subw	sp,#4
3910       00000004      OFST:	set	4
3913                     ; 998   uint16_t tmpccr2 = 0;
3915                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3919                     ; 1001   tmpccr2h = TIM2->CCR2H;
3921  0002 c65311        	ld	a,21265
3922  0005 6b02          	ld	(OFST-2,sp),a
3924                     ; 1002   tmpccr2l = TIM2->CCR2L;
3926  0007 c65312        	ld	a,21266
3927  000a 6b01          	ld	(OFST-3,sp),a
3929                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3931  000c 5f            	clrw	x
3932  000d 97            	ld	xl,a
3933  000e 1f03          	ldw	(OFST-1,sp),x
3935                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3937  0010 5f            	clrw	x
3938  0011 7b02          	ld	a,(OFST-2,sp)
3939  0013 97            	ld	xl,a
3940  0014 7b04          	ld	a,(OFST+0,sp)
3941  0016 01            	rrwa	x,a
3942  0017 1a03          	or	a,(OFST-1,sp)
3943  0019 01            	rrwa	x,a
3945                     ; 1007   return (uint16_t)tmpccr2;
3949  001a 5b04          	addw	sp,#4
3950  001c 81            	ret	
3996                     ; 1015 uint16_t TIM2_GetCapture3(void)
3996                     ; 1016 {
3997                     .text:	section	.text,new
3998  0000               _TIM2_GetCapture3:
4000  0000 5204          	subw	sp,#4
4001       00000004      OFST:	set	4
4004                     ; 1018   uint16_t tmpccr3 = 0;
4006                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4010                     ; 1021   tmpccr3h = TIM2->CCR3H;
4012  0002 c65313        	ld	a,21267
4013  0005 6b02          	ld	(OFST-2,sp),a
4015                     ; 1022   tmpccr3l = TIM2->CCR3L;
4017  0007 c65314        	ld	a,21268
4018  000a 6b01          	ld	(OFST-3,sp),a
4020                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4022  000c 5f            	clrw	x
4023  000d 97            	ld	xl,a
4024  000e 1f03          	ldw	(OFST-1,sp),x
4026                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4028  0010 5f            	clrw	x
4029  0011 7b02          	ld	a,(OFST-2,sp)
4030  0013 97            	ld	xl,a
4031  0014 7b04          	ld	a,(OFST+0,sp)
4032  0016 01            	rrwa	x,a
4033  0017 1a03          	or	a,(OFST-1,sp)
4034  0019 01            	rrwa	x,a
4036                     ; 1027   return (uint16_t)tmpccr3;
4040  001a 5b04          	addw	sp,#4
4041  001c 81            	ret	
4073                     ; 1035 uint16_t TIM2_GetCounter(void)
4073                     ; 1036 {
4074                     .text:	section	.text,new
4075  0000               _TIM2_GetCounter:
4077  0000 89            	pushw	x
4078       00000002      OFST:	set	2
4081                     ; 1037   uint16_t tmpcntr = 0;
4083                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4085  0001 c6530a        	ld	a,21258
4086  0004 97            	ld	xl,a
4087  0005 4f            	clr	a
4088  0006 02            	rlwa	x,a
4089  0007 1f01          	ldw	(OFST-1,sp),x
4091                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4093  0009 c6530b        	ld	a,21259
4094  000c 5f            	clrw	x
4095  000d 97            	ld	xl,a
4096  000e 01            	rrwa	x,a
4097  000f 1a02          	or	a,(OFST+0,sp)
4098  0011 01            	rrwa	x,a
4099  0012 1a01          	or	a,(OFST-1,sp)
4100  0014 01            	rrwa	x,a
4103  0015 5b02          	addw	sp,#2
4104  0017 81            	ret	
4128                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4128                     ; 1050 {
4129                     .text:	section	.text,new
4130  0000               _TIM2_GetPrescaler:
4134                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4136  0000 c6530c        	ld	a,21260
4139  0003 81            	ret	
4275                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4275                     ; 1069 {
4276                     .text:	section	.text,new
4277  0000               _TIM2_GetFlagStatus:
4279  0000 89            	pushw	x
4280  0001 89            	pushw	x
4281       00000002      OFST:	set	2
4284                     ; 1070   FlagStatus bitstatus = RESET;
4286                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4290                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4292  0002 a30001        	cpw	x,#1
4293  0005 272c          	jreq	L617
4294  0007 a30002        	cpw	x,#2
4295  000a 2727          	jreq	L617
4296  000c a30004        	cpw	x,#4
4297  000f 2722          	jreq	L617
4298  0011 a30008        	cpw	x,#8
4299  0014 271d          	jreq	L617
4300  0016 a30200        	cpw	x,#512
4301  0019 2718          	jreq	L617
4302  001b a30400        	cpw	x,#1024
4303  001e 2713          	jreq	L617
4304  0020 a30800        	cpw	x,#2048
4305  0023 270e          	jreq	L617
4306  0025 ae0432        	ldw	x,#1074
4307  0028 89            	pushw	x
4308  0029 5f            	clrw	x
4309  002a 89            	pushw	x
4310  002b ae0000        	ldw	x,#L302
4311  002e cd0000        	call	_assert_failed
4313  0031 5b04          	addw	sp,#4
4314  0033               L617:
4315                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4317  0033 c65302        	ld	a,21250
4318  0036 1404          	and	a,(OFST+2,sp)
4319  0038 6b01          	ld	(OFST-1,sp),a
4321                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4323  003a 7b03          	ld	a,(OFST+1,sp)
4324  003c 6b02          	ld	(OFST+0,sp),a
4326                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4328  003e c45303        	and	a,21251
4329  0041 1a01          	or	a,(OFST-1,sp)
4330  0043 2702          	jreq	L5561
4331                     ; 1081     bitstatus = SET;
4333  0045 a601          	ld	a,#1
4336  0047               L5561:
4337                     ; 1085     bitstatus = RESET;
4340                     ; 1087   return (FlagStatus)bitstatus;
4344  0047 5b04          	addw	sp,#4
4345  0049 81            	ret	
4381                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4381                     ; 1104 {
4382                     .text:	section	.text,new
4383  0000               _TIM2_ClearFlag:
4385  0000 89            	pushw	x
4386       00000000      OFST:	set	0
4389                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4391  0001 01            	rrwa	x,a
4392  0002 a4f0          	and	a,#240
4393  0004 01            	rrwa	x,a
4394  0005 a4f1          	and	a,#241
4395  0007 01            	rrwa	x,a
4396  0008 5d            	tnzw	x
4397  0009 2604          	jrne	L427
4398  000b 1e01          	ldw	x,(OFST+1,sp)
4399  000d 260e          	jrne	L627
4400  000f               L427:
4401  000f ae0452        	ldw	x,#1106
4402  0012 89            	pushw	x
4403  0013 5f            	clrw	x
4404  0014 89            	pushw	x
4405  0015 ae0000        	ldw	x,#L302
4406  0018 cd0000        	call	_assert_failed
4408  001b 5b04          	addw	sp,#4
4409  001d               L627:
4410                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4412  001d 7b02          	ld	a,(OFST+2,sp)
4413  001f 43            	cpl	a
4414  0020 c75302        	ld	21250,a
4415                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4417  0023 35ff5303      	mov	21251,#255
4418                     ; 1111 }
4421  0027 85            	popw	x
4422  0028 81            	ret	
4483                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4483                     ; 1124 {
4484                     .text:	section	.text,new
4485  0000               _TIM2_GetITStatus:
4487  0000 88            	push	a
4488  0001 89            	pushw	x
4489       00000002      OFST:	set	2
4492                     ; 1125   ITStatus bitstatus = RESET;
4494                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4498                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4500  0002 a101          	cp	a,#1
4501  0004 271a          	jreq	L047
4502  0006 a102          	cp	a,#2
4503  0008 2716          	jreq	L047
4504  000a a104          	cp	a,#4
4505  000c 2712          	jreq	L047
4506  000e a108          	cp	a,#8
4507  0010 270e          	jreq	L047
4508  0012 ae0469        	ldw	x,#1129
4509  0015 89            	pushw	x
4510  0016 5f            	clrw	x
4511  0017 89            	pushw	x
4512  0018 ae0000        	ldw	x,#L302
4513  001b cd0000        	call	_assert_failed
4515  001e 5b04          	addw	sp,#4
4516  0020               L047:
4517                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4519  0020 c65302        	ld	a,21250
4520  0023 1403          	and	a,(OFST+1,sp)
4521  0025 6b01          	ld	(OFST-1,sp),a
4523                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4525  0027 c65301        	ld	a,21249
4526  002a 1403          	and	a,(OFST+1,sp)
4527  002c 6b02          	ld	(OFST+0,sp),a
4529                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4531  002e 7b01          	ld	a,(OFST-1,sp)
4532  0030 2708          	jreq	L5271
4534  0032 7b02          	ld	a,(OFST+0,sp)
4535  0034 2704          	jreq	L5271
4536                     ; 1137     bitstatus = SET;
4538  0036 a601          	ld	a,#1
4541  0038 2001          	jra	L7271
4542  003a               L5271:
4543                     ; 1141     bitstatus = RESET;
4545  003a 4f            	clr	a
4547  003b               L7271:
4548                     ; 1143   return (ITStatus)(bitstatus);
4552  003b 5b03          	addw	sp,#3
4553  003d 81            	ret	
4590                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4590                     ; 1157 {
4591                     .text:	section	.text,new
4592  0000               _TIM2_ClearITPendingBit:
4594  0000 88            	push	a
4595       00000000      OFST:	set	0
4598                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4600  0001 4d            	tnz	a
4601  0002 2704          	jreq	L647
4602  0004 a110          	cp	a,#16
4603  0006 250e          	jrult	L057
4604  0008               L647:
4605  0008 ae0487        	ldw	x,#1159
4606  000b 89            	pushw	x
4607  000c 5f            	clrw	x
4608  000d 89            	pushw	x
4609  000e ae0000        	ldw	x,#L302
4610  0011 cd0000        	call	_assert_failed
4612  0014 5b04          	addw	sp,#4
4613  0016               L057:
4614                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4616  0016 7b01          	ld	a,(OFST+1,sp)
4617  0018 43            	cpl	a
4618  0019 c75302        	ld	21250,a
4619                     ; 1163 }
4622  001c 84            	pop	a
4623  001d 81            	ret	
4669                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4669                     ; 1182                        uint8_t TIM2_ICSelection,
4669                     ; 1183                        uint8_t TIM2_ICFilter)
4669                     ; 1184 {
4670                     .text:	section	.text,new
4671  0000               L3_TI1_Config:
4673  0000 89            	pushw	x
4674  0001 88            	push	a
4675       00000001      OFST:	set	1
4678                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4680  0002 72115308      	bres	21256,#0
4681                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4681                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4683  0006 7b06          	ld	a,(OFST+5,sp)
4684  0008 97            	ld	xl,a
4685  0009 a610          	ld	a,#16
4686  000b 42            	mul	x,a
4687  000c 9f            	ld	a,xl
4688  000d 1a03          	or	a,(OFST+2,sp)
4689  000f 6b01          	ld	(OFST+0,sp),a
4691  0011 c65305        	ld	a,21253
4692  0014 a40c          	and	a,#12
4693  0016 1a01          	or	a,(OFST+0,sp)
4694  0018 c75305        	ld	21253,a
4695                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4697  001b 7b02          	ld	a,(OFST+1,sp)
4698  001d 2706          	jreq	L7671
4699                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4701  001f 72125308      	bset	21256,#1
4703  0023 2004          	jra	L1771
4704  0025               L7671:
4705                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4707  0025 72135308      	bres	21256,#1
4708  0029               L1771:
4709                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4711  0029 72105308      	bset	21256,#0
4712                     ; 1203 }
4715  002d 5b03          	addw	sp,#3
4716  002f 81            	ret	
4762                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4762                     ; 1222                        uint8_t TIM2_ICSelection,
4762                     ; 1223                        uint8_t TIM2_ICFilter)
4762                     ; 1224 {
4763                     .text:	section	.text,new
4764  0000               L5_TI2_Config:
4766  0000 89            	pushw	x
4767  0001 88            	push	a
4768       00000001      OFST:	set	1
4771                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4773  0002 72195308      	bres	21256,#4
4774                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4774                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4776  0006 7b06          	ld	a,(OFST+5,sp)
4777  0008 97            	ld	xl,a
4778  0009 a610          	ld	a,#16
4779  000b 42            	mul	x,a
4780  000c 9f            	ld	a,xl
4781  000d 1a03          	or	a,(OFST+2,sp)
4782  000f 6b01          	ld	(OFST+0,sp),a
4784  0011 c65306        	ld	a,21254
4785  0014 a40c          	and	a,#12
4786  0016 1a01          	or	a,(OFST+0,sp)
4787  0018 c75306        	ld	21254,a
4788                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4790  001b 7b02          	ld	a,(OFST+1,sp)
4791  001d 2706          	jreq	L3102
4792                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4794  001f 721a5308      	bset	21256,#5
4796  0023 2004          	jra	L5102
4797  0025               L3102:
4798                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4800  0025 721b5308      	bres	21256,#5
4801  0029               L5102:
4802                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4804  0029 72185308      	bset	21256,#4
4805                     ; 1245 }
4808  002d 5b03          	addw	sp,#3
4809  002f 81            	ret	
4855                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4855                     ; 1262                        uint8_t TIM2_ICFilter)
4855                     ; 1263 {
4856                     .text:	section	.text,new
4857  0000               L7_TI3_Config:
4859  0000 89            	pushw	x
4860  0001 88            	push	a
4861       00000001      OFST:	set	1
4864                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4866  0002 72115309      	bres	21257,#0
4867                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4867                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4869  0006 7b06          	ld	a,(OFST+5,sp)
4870  0008 97            	ld	xl,a
4871  0009 a610          	ld	a,#16
4872  000b 42            	mul	x,a
4873  000c 9f            	ld	a,xl
4874  000d 1a03          	or	a,(OFST+2,sp)
4875  000f 6b01          	ld	(OFST+0,sp),a
4877  0011 c65307        	ld	a,21255
4878  0014 a40c          	and	a,#12
4879  0016 1a01          	or	a,(OFST+0,sp)
4880  0018 c75307        	ld	21255,a
4881                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4883  001b 7b02          	ld	a,(OFST+1,sp)
4884  001d 2706          	jreq	L7302
4885                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4887  001f 72125309      	bset	21257,#1
4889  0023 2004          	jra	L1402
4890  0025               L7302:
4891                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4893  0025 72135309      	bres	21257,#1
4894  0029               L1402:
4895                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4897  0029 72105309      	bset	21257,#0
4898                     ; 1283 }
4901  002d 5b03          	addw	sp,#3
4902  002f 81            	ret	
4915                     	xdef	_TIM2_ClearITPendingBit
4916                     	xdef	_TIM2_GetITStatus
4917                     	xdef	_TIM2_ClearFlag
4918                     	xdef	_TIM2_GetFlagStatus
4919                     	xdef	_TIM2_GetPrescaler
4920                     	xdef	_TIM2_GetCounter
4921                     	xdef	_TIM2_GetCapture3
4922                     	xdef	_TIM2_GetCapture2
4923                     	xdef	_TIM2_GetCapture1
4924                     	xdef	_TIM2_SetIC3Prescaler
4925                     	xdef	_TIM2_SetIC2Prescaler
4926                     	xdef	_TIM2_SetIC1Prescaler
4927                     	xdef	_TIM2_SetCompare3
4928                     	xdef	_TIM2_SetCompare2
4929                     	xdef	_TIM2_SetCompare1
4930                     	xdef	_TIM2_SetAutoreload
4931                     	xdef	_TIM2_SetCounter
4932                     	xdef	_TIM2_SelectOCxM
4933                     	xdef	_TIM2_CCxCmd
4934                     	xdef	_TIM2_OC3PolarityConfig
4935                     	xdef	_TIM2_OC2PolarityConfig
4936                     	xdef	_TIM2_OC1PolarityConfig
4937                     	xdef	_TIM2_GenerateEvent
4938                     	xdef	_TIM2_OC3PreloadConfig
4939                     	xdef	_TIM2_OC2PreloadConfig
4940                     	xdef	_TIM2_OC1PreloadConfig
4941                     	xdef	_TIM2_ARRPreloadConfig
4942                     	xdef	_TIM2_ForcedOC3Config
4943                     	xdef	_TIM2_ForcedOC2Config
4944                     	xdef	_TIM2_ForcedOC1Config
4945                     	xdef	_TIM2_PrescalerConfig
4946                     	xdef	_TIM2_SelectOnePulseMode
4947                     	xdef	_TIM2_UpdateRequestConfig
4948                     	xdef	_TIM2_UpdateDisableConfig
4949                     	xdef	_TIM2_ITConfig
4950                     	xdef	_TIM2_Cmd
4951                     	xdef	_TIM2_PWMIConfig
4952                     	xdef	_TIM2_ICInit
4953                     	xdef	_TIM2_OC3Init
4954                     	xdef	_TIM2_OC2Init
4955                     	xdef	_TIM2_OC1Init
4956                     	xdef	_TIM2_TimeBaseInit
4957                     	xdef	_TIM2_DeInit
4958                     	xref	_assert_failed
4959                     .const:	section	.text
4960  0000               L302:
4961  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4962  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4963  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4964  0036 5f74696d322e  	dc.b	"_tim2.c",0
4984                     	end
