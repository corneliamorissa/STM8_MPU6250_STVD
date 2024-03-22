   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 58 void TIM1_DeInit(void)
  49                     ; 59 {
  51                     .text:	section	.text,new
  52  0000               _TIM1_DeInit:
  56                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  58  0000 725f5250      	clr	21072
  59                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  61  0004 725f5251      	clr	21073
  62                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  64  0008 725f5252      	clr	21074
  65                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  67  000c 725f5253      	clr	21075
  68                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  70  0010 725f5254      	clr	21076
  71                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  73  0014 725f5256      	clr	21078
  74                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  76  0018 725f525c      	clr	21084
  77                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  79  001c 725f525d      	clr	21085
  80                     ; 70   TIM1->CCMR1 = 0x01;
  82  0020 35015258      	mov	21080,#1
  83                     ; 71   TIM1->CCMR2 = 0x01;
  85  0024 35015259      	mov	21081,#1
  86                     ; 72   TIM1->CCMR3 = 0x01;
  88  0028 3501525a      	mov	21082,#1
  89                     ; 73   TIM1->CCMR4 = 0x01;
  91  002c 3501525b      	mov	21083,#1
  92                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  94  0030 725f525c      	clr	21084
  95                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  97  0034 725f525d      	clr	21085
  98                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
 100  0038 725f5258      	clr	21080
 101                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 103  003c 725f5259      	clr	21081
 104                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 106  0040 725f525a      	clr	21082
 107                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 109  0044 725f525b      	clr	21083
 110                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 112  0048 725f525e      	clr	21086
 113                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 115  004c 725f525f      	clr	21087
 116                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 118  0050 725f5260      	clr	21088
 119                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 121  0054 725f5261      	clr	21089
 122                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 124  0058 35ff5262      	mov	21090,#255
 125                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 127  005c 35ff5263      	mov	21091,#255
 128                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 130  0060 725f5265      	clr	21093
 131                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 133  0064 725f5266      	clr	21094
 134                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 136  0068 725f5267      	clr	21095
 137                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 139  006c 725f5268      	clr	21096
 140                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 142  0070 725f5269      	clr	21097
 143                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 145  0074 725f526a      	clr	21098
 146                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 148  0078 725f526b      	clr	21099
 149                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 151  007c 725f526c      	clr	21100
 152                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 154  0080 725f526f      	clr	21103
 155                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 157  0084 35015257      	mov	21079,#1
 158                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 160  0088 725f526e      	clr	21102
 161                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 163  008c 725f526d      	clr	21101
 164                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 166  0090 725f5264      	clr	21092
 167                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 169  0094 725f5255      	clr	21077
 170                     ; 101 }
 173  0098 81            	ret	
 277                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 277                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 277                     ; 113                        uint16_t TIM1_Period,
 277                     ; 114                        uint8_t TIM1_RepetitionCounter)
 277                     ; 115 {
 278                     .text:	section	.text,new
 279  0000               _TIM1_TimeBaseInit:
 281  0000 89            	pushw	x
 282       00000000      OFST:	set	0
 285                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 287  0001 7b05          	ld	a,(OFST+5,sp)
 288  0003 271e          	jreq	L41
 289  0005 a110          	cp	a,#16
 290  0007 271a          	jreq	L41
 291  0009 a120          	cp	a,#32
 292  000b 2716          	jreq	L41
 293  000d a140          	cp	a,#64
 294  000f 2712          	jreq	L41
 295  0011 a160          	cp	a,#96
 296  0013 270e          	jreq	L41
 297  0015 ae0075        	ldw	x,#117
 298  0018 89            	pushw	x
 299  0019 5f            	clrw	x
 300  001a 89            	pushw	x
 301  001b ae0000        	ldw	x,#L37
 302  001e cd0000        	call	_assert_failed
 304  0021 5b04          	addw	sp,#4
 305  0023               L41:
 306                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 308  0023 7b06          	ld	a,(OFST+6,sp)
 309  0025 c75262        	ld	21090,a
 310                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 312  0028 7b07          	ld	a,(OFST+7,sp)
 313  002a c75263        	ld	21091,a
 314                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 316  002d 7b01          	ld	a,(OFST+1,sp)
 317  002f c75260        	ld	21088,a
 318                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 320  0032 7b02          	ld	a,(OFST+2,sp)
 321  0034 c75261        	ld	21089,a
 322                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 322                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 324  0037 c65250        	ld	a,21072
 325  003a a48f          	and	a,#143
 326  003c 1a05          	or	a,(OFST+5,sp)
 327  003e c75250        	ld	21072,a
 328                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 330  0041 7b08          	ld	a,(OFST+8,sp)
 331  0043 c75264        	ld	21092,a
 332                     ; 133 }
 335  0046 85            	popw	x
 336  0047 81            	ret	
 620                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 620                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 620                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 620                     ; 157                   uint16_t TIM1_Pulse,
 620                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 620                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 620                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 620                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 620                     ; 162 {
 621                     .text:	section	.text,new
 622  0000               _TIM1_OC1Init:
 624  0000 89            	pushw	x
 625  0001 5203          	subw	sp,#3
 626       00000003      OFST:	set	3
 629                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 631  0003 9e            	ld	a,xh
 632  0004 4d            	tnz	a
 633  0005 271f          	jreq	L62
 634  0007 9e            	ld	a,xh
 635  0008 a110          	cp	a,#16
 636  000a 271a          	jreq	L62
 637  000c 9e            	ld	a,xh
 638  000d a120          	cp	a,#32
 639  000f 2715          	jreq	L62
 640  0011 9e            	ld	a,xh
 641  0012 a130          	cp	a,#48
 642  0014 2710          	jreq	L62
 643  0016 9e            	ld	a,xh
 644  0017 a160          	cp	a,#96
 645  0019 270b          	jreq	L62
 646  001b 9e            	ld	a,xh
 647  001c a170          	cp	a,#112
 648  001e 2706          	jreq	L62
 649  0020 ae00a4        	ldw	x,#164
 650  0023 cd00d4        	call	LC001
 651  0026               L62:
 652                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 654  0026 7b05          	ld	a,(OFST+2,sp)
 655  0028 270a          	jreq	L63
 656  002a a111          	cp	a,#17
 657  002c 2706          	jreq	L63
 658  002e ae00a5        	ldw	x,#165
 659  0031 cd00d4        	call	LC001
 660  0034               L63:
 661                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 663  0034 7b08          	ld	a,(OFST+5,sp)
 664  0036 270a          	jreq	L64
 665  0038 a144          	cp	a,#68
 666  003a 2706          	jreq	L64
 667  003c ae00a6        	ldw	x,#166
 668  003f cd00d4        	call	LC001
 669  0042               L64:
 670                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 672  0042 7b0b          	ld	a,(OFST+8,sp)
 673  0044 270a          	jreq	L65
 674  0046 a122          	cp	a,#34
 675  0048 2706          	jreq	L65
 676  004a ae00a7        	ldw	x,#167
 677  004d cd00d4        	call	LC001
 678  0050               L65:
 679                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 681  0050 7b0c          	ld	a,(OFST+9,sp)
 682  0052 2709          	jreq	L66
 683  0054 a188          	cp	a,#136
 684  0056 2705          	jreq	L66
 685  0058 ae00a8        	ldw	x,#168
 686  005b ad77          	call	LC001
 687  005d               L66:
 688                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 690  005d 7b0d          	ld	a,(OFST+10,sp)
 691  005f a155          	cp	a,#85
 692  0061 2708          	jreq	L67
 693  0063 4d            	tnz	a
 694  0064 2705          	jreq	L67
 695  0066 ae00a9        	ldw	x,#169
 696  0069 ad69          	call	LC001
 697  006b               L67:
 698                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 700  006b 7b0e          	ld	a,(OFST+11,sp)
 701  006d a12a          	cp	a,#42
 702  006f 2708          	jreq	L601
 703  0071 4d            	tnz	a
 704  0072 2705          	jreq	L601
 705  0074 ae00aa        	ldw	x,#170
 706  0077 ad5b          	call	LC001
 707  0079               L601:
 708                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 708                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 710  0079 c6525c        	ld	a,21084
 711  007c a4f0          	and	a,#240
 712  007e c7525c        	ld	21084,a
 713                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 713                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 713                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 713                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 715  0081 7b0c          	ld	a,(OFST+9,sp)
 716  0083 a408          	and	a,#8
 717  0085 6b03          	ld	(OFST+0,sp),a
 719  0087 7b0b          	ld	a,(OFST+8,sp)
 720  0089 a402          	and	a,#2
 721  008b 1a03          	or	a,(OFST+0,sp)
 722  008d 6b02          	ld	(OFST-1,sp),a
 724  008f 7b08          	ld	a,(OFST+5,sp)
 725  0091 a404          	and	a,#4
 726  0093 6b01          	ld	(OFST-2,sp),a
 728  0095 7b05          	ld	a,(OFST+2,sp)
 729  0097 a401          	and	a,#1
 730  0099 1a01          	or	a,(OFST-2,sp)
 731  009b 1a02          	or	a,(OFST-1,sp)
 732  009d ca525c        	or	a,21084
 733  00a0 c7525c        	ld	21084,a
 734                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 734                     ; 185                           (uint8_t)TIM1_OCMode);
 736  00a3 c65258        	ld	a,21080
 737  00a6 a48f          	and	a,#143
 738  00a8 1a04          	or	a,(OFST+1,sp)
 739  00aa c75258        	ld	21080,a
 740                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 742  00ad c6526f        	ld	a,21103
 743  00b0 a4fc          	and	a,#252
 744  00b2 c7526f        	ld	21103,a
 745                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 745                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 747  00b5 7b0e          	ld	a,(OFST+11,sp)
 748  00b7 a402          	and	a,#2
 749  00b9 6b03          	ld	(OFST+0,sp),a
 751  00bb 7b0d          	ld	a,(OFST+10,sp)
 752  00bd a401          	and	a,#1
 753  00bf 1a03          	or	a,(OFST+0,sp)
 754  00c1 ca526f        	or	a,21103
 755  00c4 c7526f        	ld	21103,a
 756                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 758  00c7 7b09          	ld	a,(OFST+6,sp)
 759  00c9 c75265        	ld	21093,a
 760                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 762  00cc 7b0a          	ld	a,(OFST+7,sp)
 763  00ce c75266        	ld	21094,a
 764                     ; 196 }
 767  00d1 5b05          	addw	sp,#5
 768  00d3 81            	ret	
 769  00d4               LC001:
 770  00d4 89            	pushw	x
 771  00d5 5f            	clrw	x
 772  00d6 89            	pushw	x
 773  00d7 ae0000        	ldw	x,#L37
 774  00da cd0000        	call	_assert_failed
 776  00dd 5b04          	addw	sp,#4
 777  00df 81            	ret	
 880                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 880                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 880                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 880                     ; 220                   uint16_t TIM1_Pulse,
 880                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 880                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 880                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 880                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 880                     ; 225 {
 881                     .text:	section	.text,new
 882  0000               _TIM1_OC2Init:
 884  0000 89            	pushw	x
 885  0001 5203          	subw	sp,#3
 886       00000003      OFST:	set	3
 889                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 891  0003 9e            	ld	a,xh
 892  0004 4d            	tnz	a
 893  0005 271f          	jreq	L021
 894  0007 9e            	ld	a,xh
 895  0008 a110          	cp	a,#16
 896  000a 271a          	jreq	L021
 897  000c 9e            	ld	a,xh
 898  000d a120          	cp	a,#32
 899  000f 2715          	jreq	L021
 900  0011 9e            	ld	a,xh
 901  0012 a130          	cp	a,#48
 902  0014 2710          	jreq	L021
 903  0016 9e            	ld	a,xh
 904  0017 a160          	cp	a,#96
 905  0019 270b          	jreq	L021
 906  001b 9e            	ld	a,xh
 907  001c a170          	cp	a,#112
 908  001e 2706          	jreq	L021
 909  0020 ae00e3        	ldw	x,#227
 910  0023 cd00d4        	call	LC002
 911  0026               L021:
 912                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 914  0026 7b05          	ld	a,(OFST+2,sp)
 915  0028 270a          	jreq	L031
 916  002a a111          	cp	a,#17
 917  002c 2706          	jreq	L031
 918  002e ae00e4        	ldw	x,#228
 919  0031 cd00d4        	call	LC002
 920  0034               L031:
 921                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 923  0034 7b08          	ld	a,(OFST+5,sp)
 924  0036 270a          	jreq	L041
 925  0038 a144          	cp	a,#68
 926  003a 2706          	jreq	L041
 927  003c ae00e5        	ldw	x,#229
 928  003f cd00d4        	call	LC002
 929  0042               L041:
 930                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 932  0042 7b0b          	ld	a,(OFST+8,sp)
 933  0044 270a          	jreq	L051
 934  0046 a122          	cp	a,#34
 935  0048 2706          	jreq	L051
 936  004a ae00e6        	ldw	x,#230
 937  004d cd00d4        	call	LC002
 938  0050               L051:
 939                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 941  0050 7b0c          	ld	a,(OFST+9,sp)
 942  0052 2709          	jreq	L061
 943  0054 a188          	cp	a,#136
 944  0056 2705          	jreq	L061
 945  0058 ae00e7        	ldw	x,#231
 946  005b ad77          	call	LC002
 947  005d               L061:
 948                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 950  005d 7b0d          	ld	a,(OFST+10,sp)
 951  005f a155          	cp	a,#85
 952  0061 2708          	jreq	L071
 953  0063 4d            	tnz	a
 954  0064 2705          	jreq	L071
 955  0066 ae00e8        	ldw	x,#232
 956  0069 ad69          	call	LC002
 957  006b               L071:
 958                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 960  006b 7b0e          	ld	a,(OFST+11,sp)
 961  006d a12a          	cp	a,#42
 962  006f 2708          	jreq	L002
 963  0071 4d            	tnz	a
 964  0072 2705          	jreq	L002
 965  0074 ae00e9        	ldw	x,#233
 966  0077 ad5b          	call	LC002
 967  0079               L002:
 968                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 968                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 970  0079 c6525c        	ld	a,21084
 971  007c a40f          	and	a,#15
 972  007e c7525c        	ld	21084,a
 973                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 973                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 973                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 973                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 975  0081 7b0c          	ld	a,(OFST+9,sp)
 976  0083 a480          	and	a,#128
 977  0085 6b03          	ld	(OFST+0,sp),a
 979  0087 7b0b          	ld	a,(OFST+8,sp)
 980  0089 a420          	and	a,#32
 981  008b 1a03          	or	a,(OFST+0,sp)
 982  008d 6b02          	ld	(OFST-1,sp),a
 984  008f 7b08          	ld	a,(OFST+5,sp)
 985  0091 a440          	and	a,#64
 986  0093 6b01          	ld	(OFST-2,sp),a
 988  0095 7b05          	ld	a,(OFST+2,sp)
 989  0097 a410          	and	a,#16
 990  0099 1a01          	or	a,(OFST-2,sp)
 991  009b 1a02          	or	a,(OFST-1,sp)
 992  009d ca525c        	or	a,21084
 993  00a0 c7525c        	ld	21084,a
 994                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 994                     ; 249                           (uint8_t)TIM1_OCMode);
 996  00a3 c65259        	ld	a,21081
 997  00a6 a48f          	and	a,#143
 998  00a8 1a04          	or	a,(OFST+1,sp)
 999  00aa c75259        	ld	21081,a
1000                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1002  00ad c6526f        	ld	a,21103
1003  00b0 a4f3          	and	a,#243
1004  00b2 c7526f        	ld	21103,a
1005                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1005                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1007  00b5 7b0e          	ld	a,(OFST+11,sp)
1008  00b7 a408          	and	a,#8
1009  00b9 6b03          	ld	(OFST+0,sp),a
1011  00bb 7b0d          	ld	a,(OFST+10,sp)
1012  00bd a404          	and	a,#4
1013  00bf 1a03          	or	a,(OFST+0,sp)
1014  00c1 ca526f        	or	a,21103
1015  00c4 c7526f        	ld	21103,a
1016                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1018  00c7 7b09          	ld	a,(OFST+6,sp)
1019  00c9 c75267        	ld	21095,a
1020                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1022  00cc 7b0a          	ld	a,(OFST+7,sp)
1023  00ce c75268        	ld	21096,a
1024                     ; 260 }
1027  00d1 5b05          	addw	sp,#5
1028  00d3 81            	ret	
1029  00d4               LC002:
1030  00d4 89            	pushw	x
1031  00d5 5f            	clrw	x
1032  00d6 89            	pushw	x
1033  00d7 ae0000        	ldw	x,#L37
1034  00da cd0000        	call	_assert_failed
1036  00dd 5b04          	addw	sp,#4
1037  00df 81            	ret	
1140                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1140                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1140                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1140                     ; 284                   uint16_t TIM1_Pulse,
1140                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1140                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1140                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1140                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1140                     ; 289 {
1141                     .text:	section	.text,new
1142  0000               _TIM1_OC3Init:
1144  0000 89            	pushw	x
1145  0001 5203          	subw	sp,#3
1146       00000003      OFST:	set	3
1149                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1151  0003 9e            	ld	a,xh
1152  0004 4d            	tnz	a
1153  0005 271f          	jreq	L212
1154  0007 9e            	ld	a,xh
1155  0008 a110          	cp	a,#16
1156  000a 271a          	jreq	L212
1157  000c 9e            	ld	a,xh
1158  000d a120          	cp	a,#32
1159  000f 2715          	jreq	L212
1160  0011 9e            	ld	a,xh
1161  0012 a130          	cp	a,#48
1162  0014 2710          	jreq	L212
1163  0016 9e            	ld	a,xh
1164  0017 a160          	cp	a,#96
1165  0019 270b          	jreq	L212
1166  001b 9e            	ld	a,xh
1167  001c a170          	cp	a,#112
1168  001e 2706          	jreq	L212
1169  0020 ae0123        	ldw	x,#291
1170  0023 cd00d4        	call	LC003
1171  0026               L212:
1172                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1174  0026 7b05          	ld	a,(OFST+2,sp)
1175  0028 270a          	jreq	L222
1176  002a a111          	cp	a,#17
1177  002c 2706          	jreq	L222
1178  002e ae0124        	ldw	x,#292
1179  0031 cd00d4        	call	LC003
1180  0034               L222:
1181                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1183  0034 7b08          	ld	a,(OFST+5,sp)
1184  0036 270a          	jreq	L232
1185  0038 a144          	cp	a,#68
1186  003a 2706          	jreq	L232
1187  003c ae0125        	ldw	x,#293
1188  003f cd00d4        	call	LC003
1189  0042               L232:
1190                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1192  0042 7b0b          	ld	a,(OFST+8,sp)
1193  0044 270a          	jreq	L242
1194  0046 a122          	cp	a,#34
1195  0048 2706          	jreq	L242
1196  004a ae0126        	ldw	x,#294
1197  004d cd00d4        	call	LC003
1198  0050               L242:
1199                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1201  0050 7b0c          	ld	a,(OFST+9,sp)
1202  0052 2709          	jreq	L252
1203  0054 a188          	cp	a,#136
1204  0056 2705          	jreq	L252
1205  0058 ae0127        	ldw	x,#295
1206  005b ad77          	call	LC003
1207  005d               L252:
1208                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1210  005d 7b0d          	ld	a,(OFST+10,sp)
1211  005f a155          	cp	a,#85
1212  0061 2708          	jreq	L262
1213  0063 4d            	tnz	a
1214  0064 2705          	jreq	L262
1215  0066 ae0128        	ldw	x,#296
1216  0069 ad69          	call	LC003
1217  006b               L262:
1218                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1220  006b 7b0e          	ld	a,(OFST+11,sp)
1221  006d a12a          	cp	a,#42
1222  006f 2708          	jreq	L272
1223  0071 4d            	tnz	a
1224  0072 2705          	jreq	L272
1225  0074 ae0129        	ldw	x,#297
1226  0077 ad5b          	call	LC003
1227  0079               L272:
1228                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1228                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1230  0079 c6525d        	ld	a,21085
1231  007c a4f0          	and	a,#240
1232  007e c7525d        	ld	21085,a
1233                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1233                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1233                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1233                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1235  0081 7b0c          	ld	a,(OFST+9,sp)
1236  0083 a408          	and	a,#8
1237  0085 6b03          	ld	(OFST+0,sp),a
1239  0087 7b0b          	ld	a,(OFST+8,sp)
1240  0089 a402          	and	a,#2
1241  008b 1a03          	or	a,(OFST+0,sp)
1242  008d 6b02          	ld	(OFST-1,sp),a
1244  008f 7b08          	ld	a,(OFST+5,sp)
1245  0091 a404          	and	a,#4
1246  0093 6b01          	ld	(OFST-2,sp),a
1248  0095 7b05          	ld	a,(OFST+2,sp)
1249  0097 a401          	and	a,#1
1250  0099 1a01          	or	a,(OFST-2,sp)
1251  009b 1a02          	or	a,(OFST-1,sp)
1252  009d ca525d        	or	a,21085
1253  00a0 c7525d        	ld	21085,a
1254                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1254                     ; 312                           (uint8_t)TIM1_OCMode);
1256  00a3 c6525a        	ld	a,21082
1257  00a6 a48f          	and	a,#143
1258  00a8 1a04          	or	a,(OFST+1,sp)
1259  00aa c7525a        	ld	21082,a
1260                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1262  00ad c6526f        	ld	a,21103
1263  00b0 a4cf          	and	a,#207
1264  00b2 c7526f        	ld	21103,a
1265                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1265                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1267  00b5 7b0e          	ld	a,(OFST+11,sp)
1268  00b7 a420          	and	a,#32
1269  00b9 6b03          	ld	(OFST+0,sp),a
1271  00bb 7b0d          	ld	a,(OFST+10,sp)
1272  00bd a410          	and	a,#16
1273  00bf 1a03          	or	a,(OFST+0,sp)
1274  00c1 ca526f        	or	a,21103
1275  00c4 c7526f        	ld	21103,a
1276                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1278  00c7 7b09          	ld	a,(OFST+6,sp)
1279  00c9 c75269        	ld	21097,a
1280                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1282  00cc 7b0a          	ld	a,(OFST+7,sp)
1283  00ce c7526a        	ld	21098,a
1284                     ; 323 }
1287  00d1 5b05          	addw	sp,#5
1288  00d3 81            	ret	
1289  00d4               LC003:
1290  00d4 89            	pushw	x
1291  00d5 5f            	clrw	x
1292  00d6 89            	pushw	x
1293  00d7 ae0000        	ldw	x,#L37
1294  00da cd0000        	call	_assert_failed
1296  00dd 5b04          	addw	sp,#4
1297  00df 81            	ret	
1370                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1370                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1370                     ; 340                   uint16_t TIM1_Pulse,
1370                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1370                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1370                     ; 343 {
1371                     .text:	section	.text,new
1372  0000               _TIM1_OC4Init:
1374  0000 89            	pushw	x
1375  0001 88            	push	a
1376       00000001      OFST:	set	1
1379                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1381  0002 9e            	ld	a,xh
1382  0003 4d            	tnz	a
1383  0004 271e          	jreq	L403
1384  0006 9e            	ld	a,xh
1385  0007 a110          	cp	a,#16
1386  0009 2719          	jreq	L403
1387  000b 9e            	ld	a,xh
1388  000c a120          	cp	a,#32
1389  000e 2714          	jreq	L403
1390  0010 9e            	ld	a,xh
1391  0011 a130          	cp	a,#48
1392  0013 270f          	jreq	L403
1393  0015 9e            	ld	a,xh
1394  0016 a160          	cp	a,#96
1395  0018 270a          	jreq	L403
1396  001a 9e            	ld	a,xh
1397  001b a170          	cp	a,#112
1398  001d 2705          	jreq	L403
1399  001f ae0159        	ldw	x,#345
1400  0022 ad6b          	call	LC004
1401  0024               L403:
1402                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1404  0024 7b03          	ld	a,(OFST+2,sp)
1405  0026 2709          	jreq	L413
1406  0028 a111          	cp	a,#17
1407  002a 2705          	jreq	L413
1408  002c ae015a        	ldw	x,#346
1409  002f ad5e          	call	LC004
1410  0031               L413:
1411                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1413  0031 7b08          	ld	a,(OFST+7,sp)
1414  0033 2709          	jreq	L423
1415  0035 a122          	cp	a,#34
1416  0037 2705          	jreq	L423
1417  0039 ae015b        	ldw	x,#347
1418  003c ad51          	call	LC004
1419  003e               L423:
1420                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1422  003e 7b09          	ld	a,(OFST+8,sp)
1423  0040 a155          	cp	a,#85
1424  0042 2708          	jreq	L433
1425  0044 4d            	tnz	a
1426  0045 2705          	jreq	L433
1427  0047 ae015c        	ldw	x,#348
1428  004a ad43          	call	LC004
1429  004c               L433:
1430                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1432  004c c6525d        	ld	a,21085
1433  004f a4cf          	and	a,#207
1434  0051 c7525d        	ld	21085,a
1435                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1435                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1437  0054 7b08          	ld	a,(OFST+7,sp)
1438  0056 a420          	and	a,#32
1439  0058 6b01          	ld	(OFST+0,sp),a
1441  005a 7b03          	ld	a,(OFST+2,sp)
1442  005c a410          	and	a,#16
1443  005e 1a01          	or	a,(OFST+0,sp)
1444  0060 ca525d        	or	a,21085
1445  0063 c7525d        	ld	21085,a
1446                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1446                     ; 358                           TIM1_OCMode);
1448  0066 c6525b        	ld	a,21083
1449  0069 a48f          	and	a,#143
1450  006b 1a02          	or	a,(OFST+1,sp)
1451  006d c7525b        	ld	21083,a
1452                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1454  0070 7b09          	ld	a,(OFST+8,sp)
1455  0072 270a          	jreq	L124
1456                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1458  0074 c6526f        	ld	a,21103
1459  0077 aadf          	or	a,#223
1460  0079 c7526f        	ld	21103,a
1462  007c 2004          	jra	L324
1463  007e               L124:
1464                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1466  007e 721d526f      	bres	21103,#6
1467  0082               L324:
1468                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1470  0082 7b06          	ld	a,(OFST+5,sp)
1471  0084 c7526b        	ld	21099,a
1472                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1474  0087 7b07          	ld	a,(OFST+6,sp)
1475  0089 c7526c        	ld	21100,a
1476                     ; 373 }
1479  008c 5b03          	addw	sp,#3
1480  008e 81            	ret	
1481  008f               LC004:
1482  008f 89            	pushw	x
1483  0090 5f            	clrw	x
1484  0091 89            	pushw	x
1485  0092 ae0000        	ldw	x,#L37
1486  0095 cd0000        	call	_assert_failed
1488  0098 5b04          	addw	sp,#4
1489  009a 81            	ret	
1693                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1693                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1693                     ; 390                      uint8_t TIM1_DeadTime,
1693                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1693                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1693                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1693                     ; 394 {
1694                     .text:	section	.text,new
1695  0000               _TIM1_BDTRConfig:
1697  0000 89            	pushw	x
1698  0001 88            	push	a
1699       00000001      OFST:	set	1
1702                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1704  0002 9e            	ld	a,xh
1705  0003 a104          	cp	a,#4
1706  0005 2709          	jreq	L643
1707  0007 9e            	ld	a,xh
1708  0008 4d            	tnz	a
1709  0009 2705          	jreq	L643
1710  000b ae018c        	ldw	x,#396
1711  000e ad57          	call	LC005
1712  0010               L643:
1713                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1715  0010 7b03          	ld	a,(OFST+2,sp)
1716  0012 2711          	jreq	L653
1717  0014 a101          	cp	a,#1
1718  0016 270d          	jreq	L653
1719  0018 a102          	cp	a,#2
1720  001a 2709          	jreq	L653
1721  001c a103          	cp	a,#3
1722  001e 2705          	jreq	L653
1723  0020 ae018d        	ldw	x,#397
1724  0023 ad42          	call	LC005
1725  0025               L653:
1726                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1728  0025 7b07          	ld	a,(OFST+6,sp)
1729  0027 a110          	cp	a,#16
1730  0029 2708          	jreq	L663
1731  002b 4d            	tnz	a
1732  002c 2705          	jreq	L663
1733  002e ae018e        	ldw	x,#398
1734  0031 ad34          	call	LC005
1735  0033               L663:
1736                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1738  0033 7b08          	ld	a,(OFST+7,sp)
1739  0035 2709          	jreq	L673
1740  0037 a120          	cp	a,#32
1741  0039 2705          	jreq	L673
1742  003b ae018f        	ldw	x,#399
1743  003e ad27          	call	LC005
1744  0040               L673:
1745                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1747  0040 7b09          	ld	a,(OFST+8,sp)
1748  0042 a140          	cp	a,#64
1749  0044 2708          	jreq	L604
1750  0046 4d            	tnz	a
1751  0047 2705          	jreq	L604
1752  0049 ae0190        	ldw	x,#400
1753  004c ad19          	call	LC005
1754  004e               L604:
1755                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1757  004e 7b06          	ld	a,(OFST+5,sp)
1758  0050 c7526e        	ld	21102,a
1759                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1759                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1759                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1761  0053 7b07          	ld	a,(OFST+6,sp)
1762  0055 1a08          	or	a,(OFST+7,sp)
1763  0057 1a09          	or	a,(OFST+8,sp)
1764  0059 6b01          	ld	(OFST+0,sp),a
1766  005b 7b02          	ld	a,(OFST+1,sp)
1767  005d 1a03          	or	a,(OFST+2,sp)
1768  005f 1a01          	or	a,(OFST+0,sp)
1769  0061 c7526d        	ld	21101,a
1770                     ; 409 }
1773  0064 5b03          	addw	sp,#3
1774  0066 81            	ret	
1775  0067               LC005:
1776  0067 89            	pushw	x
1777  0068 5f            	clrw	x
1778  0069 89            	pushw	x
1779  006a ae0000        	ldw	x,#L37
1780  006d cd0000        	call	_assert_failed
1782  0070 5b04          	addw	sp,#4
1783  0072 81            	ret	
1984                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1984                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1984                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1984                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1984                     ; 427                  uint8_t TIM1_ICFilter)
1984                     ; 428 {
1985                     .text:	section	.text,new
1986  0000               _TIM1_ICInit:
1988  0000 89            	pushw	x
1989       00000000      OFST:	set	0
1992                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1994  0001 9e            	ld	a,xh
1995  0002 4d            	tnz	a
1996  0003 2714          	jreq	L024
1997  0005 9e            	ld	a,xh
1998  0006 4a            	dec	a
1999  0007 2710          	jreq	L024
2000  0009 9e            	ld	a,xh
2001  000a a102          	cp	a,#2
2002  000c 270b          	jreq	L024
2003  000e 9e            	ld	a,xh
2004  000f a103          	cp	a,#3
2005  0011 2706          	jreq	L024
2006  0013 ae01ae        	ldw	x,#430
2007  0016 cd00b5        	call	LC006
2008  0019               L024:
2009                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2011  0019 7b02          	ld	a,(OFST+2,sp)
2012  001b 2709          	jreq	L034
2013  001d 4a            	dec	a
2014  001e 2706          	jreq	L034
2015  0020 ae01af        	ldw	x,#431
2016  0023 cd00b5        	call	LC006
2017  0026               L034:
2018                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2020  0026 7b05          	ld	a,(OFST+5,sp)
2021  0028 a101          	cp	a,#1
2022  002a 270d          	jreq	L044
2023  002c a102          	cp	a,#2
2024  002e 2709          	jreq	L044
2025  0030 a103          	cp	a,#3
2026  0032 2705          	jreq	L044
2027  0034 ae01b0        	ldw	x,#432
2028  0037 ad7c          	call	LC006
2029  0039               L044:
2030                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2032  0039 7b06          	ld	a,(OFST+6,sp)
2033  003b 2711          	jreq	L054
2034  003d a104          	cp	a,#4
2035  003f 270d          	jreq	L054
2036  0041 a108          	cp	a,#8
2037  0043 2709          	jreq	L054
2038  0045 a10c          	cp	a,#12
2039  0047 2705          	jreq	L054
2040  0049 ae01b1        	ldw	x,#433
2041  004c ad67          	call	LC006
2042  004e               L054:
2043                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2045  004e 7b07          	ld	a,(OFST+7,sp)
2046  0050 a110          	cp	a,#16
2047  0052 2505          	jrult	L654
2048  0054 ae01b2        	ldw	x,#434
2049  0057 ad5c          	call	LC006
2050  0059               L654:
2051                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2053  0059 7b01          	ld	a,(OFST+1,sp)
2054  005b 2614          	jrne	L746
2055                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2055                     ; 440                (uint8_t)TIM1_ICSelection,
2055                     ; 441                (uint8_t)TIM1_ICFilter);
2057  005d 7b07          	ld	a,(OFST+7,sp)
2058  005f 88            	push	a
2059  0060 7b06          	ld	a,(OFST+6,sp)
2060  0062 97            	ld	xl,a
2061  0063 7b03          	ld	a,(OFST+3,sp)
2062  0065 95            	ld	xh,a
2063  0066 cd0000        	call	L3_TI1_Config
2065  0069 84            	pop	a
2066                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2068  006a 7b06          	ld	a,(OFST+6,sp)
2069  006c cd0000        	call	_TIM1_SetIC1Prescaler
2072  006f 2042          	jra	L156
2073  0071               L746:
2074                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2076  0071 a101          	cp	a,#1
2077  0073 2614          	jrne	L356
2078                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2078                     ; 449                (uint8_t)TIM1_ICSelection,
2078                     ; 450                (uint8_t)TIM1_ICFilter);
2080  0075 7b07          	ld	a,(OFST+7,sp)
2081  0077 88            	push	a
2082  0078 7b06          	ld	a,(OFST+6,sp)
2083  007a 97            	ld	xl,a
2084  007b 7b03          	ld	a,(OFST+3,sp)
2085  007d 95            	ld	xh,a
2086  007e cd0000        	call	L5_TI2_Config
2088  0081 84            	pop	a
2089                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2091  0082 7b06          	ld	a,(OFST+6,sp)
2092  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2095  0087 202a          	jra	L156
2096  0089               L356:
2097                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2099  0089 a102          	cp	a,#2
2100  008b 2614          	jrne	L756
2101                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2101                     ; 458                (uint8_t)TIM1_ICSelection,
2101                     ; 459                (uint8_t)TIM1_ICFilter);
2103  008d 7b07          	ld	a,(OFST+7,sp)
2104  008f 88            	push	a
2105  0090 7b06          	ld	a,(OFST+6,sp)
2106  0092 97            	ld	xl,a
2107  0093 7b03          	ld	a,(OFST+3,sp)
2108  0095 95            	ld	xh,a
2109  0096 cd0000        	call	L7_TI3_Config
2111  0099 84            	pop	a
2112                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2114  009a 7b06          	ld	a,(OFST+6,sp)
2115  009c cd0000        	call	_TIM1_SetIC3Prescaler
2118  009f 2012          	jra	L156
2119  00a1               L756:
2120                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2120                     ; 467                (uint8_t)TIM1_ICSelection,
2120                     ; 468                (uint8_t)TIM1_ICFilter);
2122  00a1 7b07          	ld	a,(OFST+7,sp)
2123  00a3 88            	push	a
2124  00a4 7b06          	ld	a,(OFST+6,sp)
2125  00a6 97            	ld	xl,a
2126  00a7 7b03          	ld	a,(OFST+3,sp)
2127  00a9 95            	ld	xh,a
2128  00aa cd0000        	call	L11_TI4_Config
2130  00ad 84            	pop	a
2131                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2133  00ae 7b06          	ld	a,(OFST+6,sp)
2134  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2136  00b3               L156:
2137                     ; 472 }
2140  00b3 85            	popw	x
2141  00b4 81            	ret	
2142  00b5               LC006:
2143  00b5 89            	pushw	x
2144  00b6 5f            	clrw	x
2145  00b7 89            	pushw	x
2146  00b8 ae0000        	ldw	x,#L37
2147  00bb cd0000        	call	_assert_failed
2149  00be 5b04          	addw	sp,#4
2150  00c0 81            	ret	
2241                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2241                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2241                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2241                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2241                     ; 492                      uint8_t TIM1_ICFilter)
2241                     ; 493 {
2242                     .text:	section	.text,new
2243  0000               _TIM1_PWMIConfig:
2245  0000 89            	pushw	x
2246  0001 89            	pushw	x
2247       00000002      OFST:	set	2
2250                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2252                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2254                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2256  0002 9e            	ld	a,xh
2257  0003 4d            	tnz	a
2258  0004 270a          	jreq	L015
2259  0006 9e            	ld	a,xh
2260  0007 4a            	dec	a
2261  0008 2706          	jreq	L015
2262  000a ae01f2        	ldw	x,#498
2263  000d cd00ac        	call	LC007
2264  0010               L015:
2265                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2267  0010 7b04          	ld	a,(OFST+2,sp)
2268  0012 2709          	jreq	L025
2269  0014 4a            	dec	a
2270  0015 2706          	jreq	L025
2271  0017 ae01f3        	ldw	x,#499
2272  001a cd00ac        	call	LC007
2273  001d               L025:
2274                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2276  001d 7b07          	ld	a,(OFST+5,sp)
2277  001f a101          	cp	a,#1
2278  0021 270d          	jreq	L035
2279  0023 a102          	cp	a,#2
2280  0025 2709          	jreq	L035
2281  0027 a103          	cp	a,#3
2282  0029 2705          	jreq	L035
2283  002b ae01f4        	ldw	x,#500
2284  002e ad7c          	call	LC007
2285  0030               L035:
2286                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2288  0030 7b08          	ld	a,(OFST+6,sp)
2289  0032 2711          	jreq	L045
2290  0034 a104          	cp	a,#4
2291  0036 270d          	jreq	L045
2292  0038 a108          	cp	a,#8
2293  003a 2709          	jreq	L045
2294  003c a10c          	cp	a,#12
2295  003e 2705          	jreq	L045
2296  0040 ae01f5        	ldw	x,#501
2297  0043 ad67          	call	LC007
2298  0045               L045:
2299                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2301  0045 7b04          	ld	a,(OFST+2,sp)
2302  0047 4a            	dec	a
2303  0048 2702          	jreq	L327
2304                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2306  004a a601          	ld	a,#1
2308  004c               L327:
2309                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2311  004c 6b01          	ld	(OFST-1,sp),a
2313                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2315  004e 7b07          	ld	a,(OFST+5,sp)
2316  0050 4a            	dec	a
2317  0051 2604          	jrne	L727
2318                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2320  0053 a602          	ld	a,#2
2322  0055 2002          	jra	L137
2323  0057               L727:
2324                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2326  0057 a601          	ld	a,#1
2327  0059               L137:
2328  0059 6b02          	ld	(OFST+0,sp),a
2330                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2332  005b 7b03          	ld	a,(OFST+1,sp)
2333  005d 2626          	jrne	L337
2334                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2334                     ; 527                (uint8_t)TIM1_ICFilter);
2336  005f 7b09          	ld	a,(OFST+7,sp)
2337  0061 88            	push	a
2338  0062 7b08          	ld	a,(OFST+6,sp)
2339  0064 97            	ld	xl,a
2340  0065 7b05          	ld	a,(OFST+3,sp)
2341  0067 95            	ld	xh,a
2342  0068 cd0000        	call	L3_TI1_Config
2344  006b 84            	pop	a
2345                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2347  006c 7b08          	ld	a,(OFST+6,sp)
2348  006e cd0000        	call	_TIM1_SetIC1Prescaler
2350                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2352  0071 7b09          	ld	a,(OFST+7,sp)
2353  0073 88            	push	a
2354  0074 7b03          	ld	a,(OFST+1,sp)
2355  0076 97            	ld	xl,a
2356  0077 7b02          	ld	a,(OFST+0,sp)
2357  0079 95            	ld	xh,a
2358  007a cd0000        	call	L5_TI2_Config
2360  007d 84            	pop	a
2361                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2363  007e 7b08          	ld	a,(OFST+6,sp)
2364  0080 cd0000        	call	_TIM1_SetIC2Prescaler
2367  0083 2024          	jra	L537
2368  0085               L337:
2369                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2369                     ; 542                (uint8_t)TIM1_ICFilter);
2371  0085 7b09          	ld	a,(OFST+7,sp)
2372  0087 88            	push	a
2373  0088 7b08          	ld	a,(OFST+6,sp)
2374  008a 97            	ld	xl,a
2375  008b 7b05          	ld	a,(OFST+3,sp)
2376  008d 95            	ld	xh,a
2377  008e cd0000        	call	L5_TI2_Config
2379  0091 84            	pop	a
2380                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2382  0092 7b08          	ld	a,(OFST+6,sp)
2383  0094 cd0000        	call	_TIM1_SetIC2Prescaler
2385                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2387  0097 7b09          	ld	a,(OFST+7,sp)
2388  0099 88            	push	a
2389  009a 7b03          	ld	a,(OFST+1,sp)
2390  009c 97            	ld	xl,a
2391  009d 7b02          	ld	a,(OFST+0,sp)
2392  009f 95            	ld	xh,a
2393  00a0 cd0000        	call	L3_TI1_Config
2395  00a3 84            	pop	a
2396                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2398  00a4 7b08          	ld	a,(OFST+6,sp)
2399  00a6 cd0000        	call	_TIM1_SetIC1Prescaler
2401  00a9               L537:
2402                     ; 553 }
2405  00a9 5b04          	addw	sp,#4
2406  00ab 81            	ret	
2407  00ac               LC007:
2408  00ac 89            	pushw	x
2409  00ad 5f            	clrw	x
2410  00ae 89            	pushw	x
2411  00af ae0000        	ldw	x,#L37
2412  00b2 cd0000        	call	_assert_failed
2414  00b5 5b04          	addw	sp,#4
2415  00b7 81            	ret	
2471                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2471                     ; 562 {
2472                     .text:	section	.text,new
2473  0000               _TIM1_Cmd:
2475  0000 88            	push	a
2476       00000000      OFST:	set	0
2479                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2481  0001 4d            	tnz	a
2482  0002 2711          	jreq	L275
2483  0004 4a            	dec	a
2484  0005 270e          	jreq	L275
2485  0007 ae0234        	ldw	x,#564
2486  000a 89            	pushw	x
2487  000b 5f            	clrw	x
2488  000c 89            	pushw	x
2489  000d ae0000        	ldw	x,#L37
2490  0010 cd0000        	call	_assert_failed
2492  0013 5b04          	addw	sp,#4
2493  0015               L275:
2494                     ; 567   if (NewState != DISABLE)
2496  0015 7b01          	ld	a,(OFST+1,sp)
2497  0017 2706          	jreq	L567
2498                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2500  0019 72105250      	bset	21072,#0
2502  001d 2004          	jra	L767
2503  001f               L567:
2504                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2506  001f 72115250      	bres	21072,#0
2507  0023               L767:
2508                     ; 575 }
2511  0023 84            	pop	a
2512  0024 81            	ret	
2549                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2549                     ; 584 {
2550                     .text:	section	.text,new
2551  0000               _TIM1_CtrlPWMOutputs:
2553  0000 88            	push	a
2554       00000000      OFST:	set	0
2557                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2559  0001 4d            	tnz	a
2560  0002 2711          	jreq	L406
2561  0004 4a            	dec	a
2562  0005 270e          	jreq	L406
2563  0007 ae024a        	ldw	x,#586
2564  000a 89            	pushw	x
2565  000b 5f            	clrw	x
2566  000c 89            	pushw	x
2567  000d ae0000        	ldw	x,#L37
2568  0010 cd0000        	call	_assert_failed
2570  0013 5b04          	addw	sp,#4
2571  0015               L406:
2572                     ; 590   if (NewState != DISABLE)
2574  0015 7b01          	ld	a,(OFST+1,sp)
2575  0017 2706          	jreq	L7001
2576                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2578  0019 721e526d      	bset	21101,#7
2580  001d 2004          	jra	L1101
2581  001f               L7001:
2582                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2584  001f 721f526d      	bres	21101,#7
2585  0023               L1101:
2586                     ; 598 }
2589  0023 84            	pop	a
2590  0024 81            	ret	
2698                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2698                     ; 618 {
2699                     .text:	section	.text,new
2700  0000               _TIM1_ITConfig:
2702  0000 89            	pushw	x
2703       00000000      OFST:	set	0
2706                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2708  0001 9e            	ld	a,xh
2709  0002 4d            	tnz	a
2710  0003 2605          	jrne	L416
2711  0005 ae026c        	ldw	x,#620
2712  0008 ad22          	call	LC008
2713  000a               L416:
2714                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2716  000a 7b02          	ld	a,(OFST+2,sp)
2717  000c 2708          	jreq	L426
2718  000e 4a            	dec	a
2719  000f 2705          	jreq	L426
2720  0011 ae026d        	ldw	x,#621
2721  0014 ad16          	call	LC008
2722  0016               L426:
2723                     ; 623   if (NewState != DISABLE)
2725  0016 7b02          	ld	a,(OFST+2,sp)
2726  0018 2707          	jreq	L1601
2727                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2729  001a c65254        	ld	a,21076
2730  001d 1a01          	or	a,(OFST+1,sp)
2732  001f 2006          	jra	L3601
2733  0021               L1601:
2734                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2736  0021 7b01          	ld	a,(OFST+1,sp)
2737  0023 43            	cpl	a
2738  0024 c45254        	and	a,21076
2739  0027               L3601:
2740  0027 c75254        	ld	21076,a
2741                     ; 633 }
2744  002a 85            	popw	x
2745  002b 81            	ret	
2746  002c               LC008:
2747  002c 89            	pushw	x
2748  002d 5f            	clrw	x
2749  002e 89            	pushw	x
2750  002f ae0000        	ldw	x,#L37
2751  0032 cd0000        	call	_assert_failed
2753  0035 5b04          	addw	sp,#4
2754  0037 81            	ret	
2778                     ; 640 void TIM1_InternalClockConfig(void)
2778                     ; 641 {
2779                     .text:	section	.text,new
2780  0000               _TIM1_InternalClockConfig:
2784                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2786  0000 c65252        	ld	a,21074
2787  0003 a4f8          	and	a,#248
2788  0005 c75252        	ld	21074,a
2789                     ; 644 }
2792  0008 81            	ret	
2908                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2908                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2908                     ; 664                               uint8_t ExtTRGFilter)
2908                     ; 665 {
2909                     .text:	section	.text,new
2910  0000               _TIM1_ETRClockMode1Config:
2912  0000 89            	pushw	x
2913       00000000      OFST:	set	0
2916                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2918  0001 9e            	ld	a,xh
2919  0002 4d            	tnz	a
2920  0003 2714          	jreq	L046
2921  0005 9e            	ld	a,xh
2922  0006 a110          	cp	a,#16
2923  0008 270f          	jreq	L046
2924  000a 9e            	ld	a,xh
2925  000b a120          	cp	a,#32
2926  000d 270a          	jreq	L046
2927  000f 9e            	ld	a,xh
2928  0010 a130          	cp	a,#48
2929  0012 2705          	jreq	L046
2930  0014 ae029b        	ldw	x,#667
2931  0017 ad25          	call	LC009
2932  0019               L046:
2933                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2935  0019 7b02          	ld	a,(OFST+2,sp)
2936  001b a180          	cp	a,#128
2937  001d 2708          	jreq	L056
2938  001f 4d            	tnz	a
2939  0020 2705          	jreq	L056
2940  0022 ae029c        	ldw	x,#668
2941  0025 ad17          	call	LC009
2942  0027               L056:
2943                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2945  0027 7b05          	ld	a,(OFST+5,sp)
2946  0029 88            	push	a
2947  002a 7b03          	ld	a,(OFST+3,sp)
2948  002c 97            	ld	xl,a
2949  002d 7b02          	ld	a,(OFST+2,sp)
2950  002f 95            	ld	xh,a
2951  0030 cd0000        	call	_TIM1_ETRConfig
2953  0033 84            	pop	a
2954                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2954                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2956  0034 c65252        	ld	a,21074
2957  0037 aa77          	or	a,#119
2958  0039 c75252        	ld	21074,a
2959                     ; 676 }
2962  003c 85            	popw	x
2963  003d 81            	ret	
2964  003e               LC009:
2965  003e 89            	pushw	x
2966  003f 5f            	clrw	x
2967  0040 89            	pushw	x
2968  0041 ae0000        	ldw	x,#L37
2969  0044 cd0000        	call	_assert_failed
2971  0047 5b04          	addw	sp,#4
2972  0049 81            	ret	
3029                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3029                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3029                     ; 696                               uint8_t ExtTRGFilter)
3029                     ; 697 {
3030                     .text:	section	.text,new
3031  0000               _TIM1_ETRClockMode2Config:
3033  0000 89            	pushw	x
3034       00000000      OFST:	set	0
3037                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3039  0001 9e            	ld	a,xh
3040  0002 4d            	tnz	a
3041  0003 2714          	jreq	L466
3042  0005 9e            	ld	a,xh
3043  0006 a110          	cp	a,#16
3044  0008 270f          	jreq	L466
3045  000a 9e            	ld	a,xh
3046  000b a120          	cp	a,#32
3047  000d 270a          	jreq	L466
3048  000f 9e            	ld	a,xh
3049  0010 a130          	cp	a,#48
3050  0012 2705          	jreq	L466
3051  0014 ae02bb        	ldw	x,#699
3052  0017 ad21          	call	LC010
3053  0019               L466:
3054                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3056  0019 7b02          	ld	a,(OFST+2,sp)
3057  001b a180          	cp	a,#128
3058  001d 2708          	jreq	L476
3059  001f 4d            	tnz	a
3060  0020 2705          	jreq	L476
3061  0022 ae02bc        	ldw	x,#700
3062  0025 ad13          	call	LC010
3063  0027               L476:
3064                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3066  0027 7b05          	ld	a,(OFST+5,sp)
3067  0029 88            	push	a
3068  002a 7b03          	ld	a,(OFST+3,sp)
3069  002c 97            	ld	xl,a
3070  002d 7b02          	ld	a,(OFST+2,sp)
3071  002f 95            	ld	xh,a
3072  0030 cd0000        	call	_TIM1_ETRConfig
3074  0033 721c5253      	bset	21075,#6
3075                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3077                     ; 707 }
3080  0037 5b03          	addw	sp,#3
3081  0039 81            	ret	
3082  003a               LC010:
3083  003a 89            	pushw	x
3084  003b 5f            	clrw	x
3085  003c 89            	pushw	x
3086  003d ae0000        	ldw	x,#L37
3087  0040 cd0000        	call	_assert_failed
3089  0043 5b04          	addw	sp,#4
3090  0045 81            	ret	
3145                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3145                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3145                     ; 727                     uint8_t ExtTRGFilter)
3145                     ; 728 {
3146                     .text:	section	.text,new
3147  0000               _TIM1_ETRConfig:
3149  0000 89            	pushw	x
3150       00000000      OFST:	set	0
3153                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3155  0001 7b05          	ld	a,(OFST+5,sp)
3156  0003 a110          	cp	a,#16
3157  0005 250e          	jrult	L607
3158  0007 ae02da        	ldw	x,#730
3159  000a 89            	pushw	x
3160  000b 5f            	clrw	x
3161  000c 89            	pushw	x
3162  000d ae0000        	ldw	x,#L37
3163  0010 cd0000        	call	_assert_failed
3165  0013 5b04          	addw	sp,#4
3166  0015               L607:
3167                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3167                     ; 733                          (uint8_t)ExtTRGFilter );
3169  0015 7b01          	ld	a,(OFST+1,sp)
3170  0017 1a02          	or	a,(OFST+2,sp)
3171  0019 1a05          	or	a,(OFST+5,sp)
3172  001b ca5253        	or	a,21075
3173  001e c75253        	ld	21075,a
3174                     ; 734 }
3177  0021 85            	popw	x
3178  0022 81            	ret	
3266                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3266                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3266                     ; 753                                  uint8_t ICFilter)
3266                     ; 754 {
3267                     .text:	section	.text,new
3268  0000               _TIM1_TIxExternalClockConfig:
3270  0000 89            	pushw	x
3271       00000000      OFST:	set	0
3274                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3276  0001 9e            	ld	a,xh
3277  0002 a140          	cp	a,#64
3278  0004 270f          	jreq	L027
3279  0006 9e            	ld	a,xh
3280  0007 a160          	cp	a,#96
3281  0009 270a          	jreq	L027
3282  000b 9e            	ld	a,xh
3283  000c a150          	cp	a,#80
3284  000e 2705          	jreq	L027
3285  0010 ae02f4        	ldw	x,#756
3286  0013 ad47          	call	LC011
3287  0015               L027:
3288                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3290  0015 7b02          	ld	a,(OFST+2,sp)
3291  0017 2708          	jreq	L037
3292  0019 4a            	dec	a
3293  001a 2705          	jreq	L037
3294  001c ae02f5        	ldw	x,#757
3295  001f ad3b          	call	LC011
3296  0021               L037:
3297                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3299  0021 7b05          	ld	a,(OFST+5,sp)
3300  0023 a110          	cp	a,#16
3301  0025 2505          	jrult	L637
3302  0027 ae02f6        	ldw	x,#758
3303  002a ad30          	call	LC011
3304  002c               L637:
3305                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3307  002c 7b01          	ld	a,(OFST+1,sp)
3308  002e a160          	cp	a,#96
3309  0030 260e          	jrne	L3521
3310                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3312  0032 7b05          	ld	a,(OFST+5,sp)
3313  0034 88            	push	a
3314  0035 7b03          	ld	a,(OFST+3,sp)
3315  0037 ae0001        	ldw	x,#1
3316  003a 95            	ld	xh,a
3317  003b cd0000        	call	L5_TI2_Config
3320  003e 200c          	jra	L5521
3321  0040               L3521:
3322                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3324  0040 7b05          	ld	a,(OFST+5,sp)
3325  0042 88            	push	a
3326  0043 7b03          	ld	a,(OFST+3,sp)
3327  0045 ae0001        	ldw	x,#1
3328  0048 95            	ld	xh,a
3329  0049 cd0000        	call	L3_TI1_Config
3331  004c               L5521:
3332  004c 84            	pop	a
3333                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3335  004d 7b01          	ld	a,(OFST+1,sp)
3336  004f cd0000        	call	_TIM1_SelectInputTrigger
3338                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3340  0052 c65252        	ld	a,21074
3341  0055 aa07          	or	a,#7
3342  0057 c75252        	ld	21074,a
3343                     ; 775 }
3346  005a 85            	popw	x
3347  005b 81            	ret	
3348  005c               LC011:
3349  005c 89            	pushw	x
3350  005d 5f            	clrw	x
3351  005e 89            	pushw	x
3352  005f ae0000        	ldw	x,#L37
3353  0062 cd0000        	call	_assert_failed
3355  0065 5b04          	addw	sp,#4
3356  0067 81            	ret	
3442                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3442                     ; 788 {
3443                     .text:	section	.text,new
3444  0000               _TIM1_SelectInputTrigger:
3446  0000 88            	push	a
3447       00000000      OFST:	set	0
3450                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3452  0001 a140          	cp	a,#64
3453  0003 2721          	jreq	L657
3454  0005 a150          	cp	a,#80
3455  0007 271d          	jreq	L657
3456  0009 a160          	cp	a,#96
3457  000b 2719          	jreq	L657
3458  000d a170          	cp	a,#112
3459  000f 2715          	jreq	L657
3460  0011 a130          	cp	a,#48
3461  0013 2711          	jreq	L657
3462  0015 4d            	tnz	a
3463  0016 270e          	jreq	L657
3464  0018 ae0316        	ldw	x,#790
3465  001b 89            	pushw	x
3466  001c 5f            	clrw	x
3467  001d 89            	pushw	x
3468  001e ae0000        	ldw	x,#L37
3469  0021 cd0000        	call	_assert_failed
3471  0024 5b04          	addw	sp,#4
3472  0026               L657:
3473                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3475  0026 c65252        	ld	a,21074
3476  0029 a48f          	and	a,#143
3477  002b 1a01          	or	a,(OFST+1,sp)
3478  002d c75252        	ld	21074,a
3479                     ; 794 }
3482  0030 84            	pop	a
3483  0031 81            	ret	
3520                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3520                     ; 804 {
3521                     .text:	section	.text,new
3522  0000               _TIM1_UpdateDisableConfig:
3524  0000 88            	push	a
3525       00000000      OFST:	set	0
3528                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3530  0001 4d            	tnz	a
3531  0002 2711          	jreq	L077
3532  0004 4a            	dec	a
3533  0005 270e          	jreq	L077
3534  0007 ae0326        	ldw	x,#806
3535  000a 89            	pushw	x
3536  000b 5f            	clrw	x
3537  000c 89            	pushw	x
3538  000d ae0000        	ldw	x,#L37
3539  0010 cd0000        	call	_assert_failed
3541  0013 5b04          	addw	sp,#4
3542  0015               L077:
3543                     ; 809   if (NewState != DISABLE)
3545  0015 7b01          	ld	a,(OFST+1,sp)
3546  0017 2706          	jreq	L3331
3547                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3549  0019 72125250      	bset	21072,#1
3551  001d 2004          	jra	L5331
3552  001f               L3331:
3553                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3555  001f 72135250      	bres	21072,#1
3556  0023               L5331:
3557                     ; 817 }
3560  0023 84            	pop	a
3561  0024 81            	ret	
3620                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3620                     ; 828 {
3621                     .text:	section	.text,new
3622  0000               _TIM1_UpdateRequestConfig:
3624  0000 88            	push	a
3625       00000000      OFST:	set	0
3628                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3630  0001 4d            	tnz	a
3631  0002 2711          	jreq	L2001
3632  0004 4a            	dec	a
3633  0005 270e          	jreq	L2001
3634  0007 ae033e        	ldw	x,#830
3635  000a 89            	pushw	x
3636  000b 5f            	clrw	x
3637  000c 89            	pushw	x
3638  000d ae0000        	ldw	x,#L37
3639  0010 cd0000        	call	_assert_failed
3641  0013 5b04          	addw	sp,#4
3642  0015               L2001:
3643                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3645  0015 7b01          	ld	a,(OFST+1,sp)
3646  0017 2706          	jreq	L5631
3647                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3649  0019 72145250      	bset	21072,#2
3651  001d 2004          	jra	L7631
3652  001f               L5631:
3653                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3655  001f 72155250      	bres	21072,#2
3656  0023               L7631:
3657                     ; 841 }
3660  0023 84            	pop	a
3661  0024 81            	ret	
3698                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3698                     ; 850 {
3699                     .text:	section	.text,new
3700  0000               _TIM1_SelectHallSensor:
3702  0000 88            	push	a
3703       00000000      OFST:	set	0
3706                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3708  0001 4d            	tnz	a
3709  0002 2711          	jreq	L4101
3710  0004 4a            	dec	a
3711  0005 270e          	jreq	L4101
3712  0007 ae0354        	ldw	x,#852
3713  000a 89            	pushw	x
3714  000b 5f            	clrw	x
3715  000c 89            	pushw	x
3716  000d ae0000        	ldw	x,#L37
3717  0010 cd0000        	call	_assert_failed
3719  0013 5b04          	addw	sp,#4
3720  0015               L4101:
3721                     ; 855   if (NewState != DISABLE)
3723  0015 7b01          	ld	a,(OFST+1,sp)
3724  0017 2706          	jreq	L7041
3725                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3727  0019 721e5251      	bset	21073,#7
3729  001d 2004          	jra	L1141
3730  001f               L7041:
3731                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3733  001f 721f5251      	bres	21073,#7
3734  0023               L1141:
3735                     ; 863 }
3738  0023 84            	pop	a
3739  0024 81            	ret	
3797                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3797                     ; 874 {
3798                     .text:	section	.text,new
3799  0000               _TIM1_SelectOnePulseMode:
3801  0000 88            	push	a
3802       00000000      OFST:	set	0
3805                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3807  0001 a101          	cp	a,#1
3808  0003 2711          	jreq	L6201
3809  0005 4d            	tnz	a
3810  0006 270e          	jreq	L6201
3811  0008 ae036c        	ldw	x,#876
3812  000b 89            	pushw	x
3813  000c 5f            	clrw	x
3814  000d 89            	pushw	x
3815  000e ae0000        	ldw	x,#L37
3816  0011 cd0000        	call	_assert_failed
3818  0014 5b04          	addw	sp,#4
3819  0016               L6201:
3820                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3822  0016 7b01          	ld	a,(OFST+1,sp)
3823  0018 2706          	jreq	L1441
3824                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3826  001a 72165250      	bset	21072,#3
3828  001e 2004          	jra	L3441
3829  0020               L1441:
3830                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3832  0020 72175250      	bres	21072,#3
3833  0024               L3441:
3834                     ; 888 }
3837  0024 84            	pop	a
3838  0025 81            	ret	
3937                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3937                     ; 904 {
3938                     .text:	section	.text,new
3939  0000               _TIM1_SelectOutputTrigger:
3941  0000 88            	push	a
3942       00000000      OFST:	set	0
3945                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3947  0001 4d            	tnz	a
3948  0002 2726          	jreq	L0401
3949  0004 a110          	cp	a,#16
3950  0006 2722          	jreq	L0401
3951  0008 a120          	cp	a,#32
3952  000a 271e          	jreq	L0401
3953  000c a130          	cp	a,#48
3954  000e 271a          	jreq	L0401
3955  0010 a140          	cp	a,#64
3956  0012 2716          	jreq	L0401
3957  0014 a150          	cp	a,#80
3958  0016 2712          	jreq	L0401
3959  0018 a160          	cp	a,#96
3960  001a 270e          	jreq	L0401
3961  001c ae038a        	ldw	x,#906
3962  001f 89            	pushw	x
3963  0020 5f            	clrw	x
3964  0021 89            	pushw	x
3965  0022 ae0000        	ldw	x,#L37
3966  0025 cd0000        	call	_assert_failed
3968  0028 5b04          	addw	sp,#4
3969  002a               L0401:
3970                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3970                     ; 910                         (uint8_t) TIM1_TRGOSource);
3972  002a c65251        	ld	a,21073
3973  002d a48f          	and	a,#143
3974  002f 1a01          	or	a,(OFST+1,sp)
3975  0031 c75251        	ld	21073,a
3976                     ; 911 }
3979  0034 84            	pop	a
3980  0035 81            	ret	
4055                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4055                     ; 924 {
4056                     .text:	section	.text,new
4057  0000               _TIM1_SelectSlaveMode:
4059  0000 88            	push	a
4060       00000000      OFST:	set	0
4063                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4065  0001 a104          	cp	a,#4
4066  0003 271a          	jreq	L2501
4067  0005 a105          	cp	a,#5
4068  0007 2716          	jreq	L2501
4069  0009 a106          	cp	a,#6
4070  000b 2712          	jreq	L2501
4071  000d a107          	cp	a,#7
4072  000f 270e          	jreq	L2501
4073  0011 ae039e        	ldw	x,#926
4074  0014 89            	pushw	x
4075  0015 5f            	clrw	x
4076  0016 89            	pushw	x
4077  0017 ae0000        	ldw	x,#L37
4078  001a cd0000        	call	_assert_failed
4080  001d 5b04          	addw	sp,#4
4081  001f               L2501:
4082                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4082                     ; 930                          (uint8_t)TIM1_SlaveMode);
4084  001f c65252        	ld	a,21074
4085  0022 a4f8          	and	a,#248
4086  0024 1a01          	or	a,(OFST+1,sp)
4087  0026 c75252        	ld	21074,a
4088                     ; 931 }
4091  0029 84            	pop	a
4092  002a 81            	ret	
4129                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4129                     ; 940 {
4130                     .text:	section	.text,new
4131  0000               _TIM1_SelectMasterSlaveMode:
4133  0000 88            	push	a
4134       00000000      OFST:	set	0
4137                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4139  0001 4d            	tnz	a
4140  0002 2711          	jreq	L4601
4141  0004 4a            	dec	a
4142  0005 270e          	jreq	L4601
4143  0007 ae03ae        	ldw	x,#942
4144  000a 89            	pushw	x
4145  000b 5f            	clrw	x
4146  000c 89            	pushw	x
4147  000d ae0000        	ldw	x,#L37
4148  0010 cd0000        	call	_assert_failed
4150  0013 5b04          	addw	sp,#4
4151  0015               L4601:
4152                     ; 945   if (NewState != DISABLE)
4154  0015 7b01          	ld	a,(OFST+1,sp)
4155  0017 2706          	jreq	L5551
4156                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4158  0019 721e5252      	bset	21074,#7
4160  001d 2004          	jra	L7551
4161  001f               L5551:
4162                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4164  001f 721f5252      	bres	21074,#7
4165  0023               L7551:
4166                     ; 953 }
4169  0023 84            	pop	a
4170  0024 81            	ret	
4257                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4257                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4257                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4257                     ; 978 {
4258                     .text:	section	.text,new
4259  0000               _TIM1_EncoderInterfaceConfig:
4261  0000 89            	pushw	x
4262       00000000      OFST:	set	0
4265                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4267  0001 9e            	ld	a,xh
4268  0002 4a            	dec	a
4269  0003 270f          	jreq	L6701
4270  0005 9e            	ld	a,xh
4271  0006 a102          	cp	a,#2
4272  0008 270a          	jreq	L6701
4273  000a 9e            	ld	a,xh
4274  000b a103          	cp	a,#3
4275  000d 2705          	jreq	L6701
4276  000f ae03d4        	ldw	x,#980
4277  0012 ad54          	call	LC012
4278  0014               L6701:
4279                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4281  0014 7b02          	ld	a,(OFST+2,sp)
4282  0016 2708          	jreq	L6011
4283  0018 4a            	dec	a
4284  0019 2705          	jreq	L6011
4285  001b ae03d5        	ldw	x,#981
4286  001e ad48          	call	LC012
4287  0020               L6011:
4288                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4290  0020 7b05          	ld	a,(OFST+5,sp)
4291  0022 2708          	jreq	L6111
4292  0024 4a            	dec	a
4293  0025 2705          	jreq	L6111
4294  0027 ae03d6        	ldw	x,#982
4295  002a ad3c          	call	LC012
4296  002c               L6111:
4297                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4299  002c 7b02          	ld	a,(OFST+2,sp)
4300  002e 2706          	jreq	L1261
4301                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4303  0030 7212525c      	bset	21084,#1
4305  0034 2004          	jra	L3261
4306  0036               L1261:
4307                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4309  0036 7213525c      	bres	21084,#1
4310  003a               L3261:
4311                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4313  003a 7b05          	ld	a,(OFST+5,sp)
4314  003c 2706          	jreq	L5261
4315                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4317  003e 721a525c      	bset	21084,#5
4319  0042 2004          	jra	L7261
4320  0044               L5261:
4321                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4323  0044 721b525c      	bres	21084,#5
4324  0048               L7261:
4325                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4325                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4327  0048 c65252        	ld	a,21074
4328  004b a4f0          	and	a,#240
4329  004d 1a01          	or	a,(OFST+1,sp)
4330  004f c75252        	ld	21074,a
4331                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4331                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4333  0052 c65258        	ld	a,21080
4334  0055 a4fc          	and	a,#252
4335  0057 aa01          	or	a,#1
4336  0059 c75258        	ld	21080,a
4337                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4337                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4339  005c c65259        	ld	a,21081
4340  005f a4fc          	and	a,#252
4341  0061 aa01          	or	a,#1
4342  0063 c75259        	ld	21081,a
4343                     ; 1011 }
4346  0066 85            	popw	x
4347  0067 81            	ret	
4348  0068               LC012:
4349  0068 89            	pushw	x
4350  0069 5f            	clrw	x
4351  006a 89            	pushw	x
4352  006b ae0000        	ldw	x,#L37
4353  006e cd0000        	call	_assert_failed
4355  0071 5b04          	addw	sp,#4
4356  0073 81            	ret	
4422                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4422                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4422                     ; 1025 {
4423                     .text:	section	.text,new
4424  0000               _TIM1_PrescalerConfig:
4426  0000 89            	pushw	x
4427       00000000      OFST:	set	0
4430                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4432  0001 7b05          	ld	a,(OFST+5,sp)
4433  0003 2711          	jreq	L0311
4434  0005 4a            	dec	a
4435  0006 270e          	jreq	L0311
4436  0008 ae0403        	ldw	x,#1027
4437  000b 89            	pushw	x
4438  000c 5f            	clrw	x
4439  000d 89            	pushw	x
4440  000e ae0000        	ldw	x,#L37
4441  0011 cd0000        	call	_assert_failed
4443  0014 5b04          	addw	sp,#4
4444  0016               L0311:
4445                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4447  0016 7b01          	ld	a,(OFST+1,sp)
4448  0018 c75260        	ld	21088,a
4449                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4451  001b 7b02          	ld	a,(OFST+2,sp)
4452  001d c75261        	ld	21089,a
4453                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4455  0020 7b05          	ld	a,(OFST+5,sp)
4456  0022 c75257        	ld	21079,a
4457                     ; 1035 }
4460  0025 85            	popw	x
4461  0026 81            	ret	
4498                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4498                     ; 1049 {
4499                     .text:	section	.text,new
4500  0000               _TIM1_CounterModeConfig:
4502  0000 88            	push	a
4503       00000000      OFST:	set	0
4506                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4508  0001 4d            	tnz	a
4509  0002 271e          	jreq	L2411
4510  0004 a110          	cp	a,#16
4511  0006 271a          	jreq	L2411
4512  0008 a120          	cp	a,#32
4513  000a 2716          	jreq	L2411
4514  000c a140          	cp	a,#64
4515  000e 2712          	jreq	L2411
4516  0010 a160          	cp	a,#96
4517  0012 270e          	jreq	L2411
4518  0014 ae041b        	ldw	x,#1051
4519  0017 89            	pushw	x
4520  0018 5f            	clrw	x
4521  0019 89            	pushw	x
4522  001a ae0000        	ldw	x,#L37
4523  001d cd0000        	call	_assert_failed
4525  0020 5b04          	addw	sp,#4
4526  0022               L2411:
4527                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4527                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4529  0022 c65250        	ld	a,21072
4530  0025 a48f          	and	a,#143
4531  0027 1a01          	or	a,(OFST+1,sp)
4532  0029 c75250        	ld	21072,a
4533                     ; 1057 }
4536  002c 84            	pop	a
4537  002d 81            	ret	
4596                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4596                     ; 1068 {
4597                     .text:	section	.text,new
4598  0000               _TIM1_ForcedOC1Config:
4600  0000 88            	push	a
4601       00000000      OFST:	set	0
4604                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4606  0001 a150          	cp	a,#80
4607  0003 2712          	jreq	L4511
4608  0005 a140          	cp	a,#64
4609  0007 270e          	jreq	L4511
4610  0009 ae042e        	ldw	x,#1070
4611  000c 89            	pushw	x
4612  000d 5f            	clrw	x
4613  000e 89            	pushw	x
4614  000f ae0000        	ldw	x,#L37
4615  0012 cd0000        	call	_assert_failed
4617  0015 5b04          	addw	sp,#4
4618  0017               L4511:
4619                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4619                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4621  0017 c65258        	ld	a,21080
4622  001a a48f          	and	a,#143
4623  001c 1a01          	or	a,(OFST+1,sp)
4624  001e c75258        	ld	21080,a
4625                     ; 1075 }
4628  0021 84            	pop	a
4629  0022 81            	ret	
4666                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4666                     ; 1086 {
4667                     .text:	section	.text,new
4668  0000               _TIM1_ForcedOC2Config:
4670  0000 88            	push	a
4671       00000000      OFST:	set	0
4674                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4676  0001 a150          	cp	a,#80
4677  0003 2712          	jreq	L6611
4678  0005 a140          	cp	a,#64
4679  0007 270e          	jreq	L6611
4680  0009 ae0440        	ldw	x,#1088
4681  000c 89            	pushw	x
4682  000d 5f            	clrw	x
4683  000e 89            	pushw	x
4684  000f ae0000        	ldw	x,#L37
4685  0012 cd0000        	call	_assert_failed
4687  0015 5b04          	addw	sp,#4
4688  0017               L6611:
4689                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4689                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4691  0017 c65259        	ld	a,21081
4692  001a a48f          	and	a,#143
4693  001c 1a01          	or	a,(OFST+1,sp)
4694  001e c75259        	ld	21081,a
4695                     ; 1093 }
4698  0021 84            	pop	a
4699  0022 81            	ret	
4736                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4736                     ; 1105 {
4737                     .text:	section	.text,new
4738  0000               _TIM1_ForcedOC3Config:
4740  0000 88            	push	a
4741       00000000      OFST:	set	0
4744                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4746  0001 a150          	cp	a,#80
4747  0003 2712          	jreq	L0021
4748  0005 a140          	cp	a,#64
4749  0007 270e          	jreq	L0021
4750  0009 ae0453        	ldw	x,#1107
4751  000c 89            	pushw	x
4752  000d 5f            	clrw	x
4753  000e 89            	pushw	x
4754  000f ae0000        	ldw	x,#L37
4755  0012 cd0000        	call	_assert_failed
4757  0015 5b04          	addw	sp,#4
4758  0017               L0021:
4759                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4759                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4761  0017 c6525a        	ld	a,21082
4762  001a a48f          	and	a,#143
4763  001c 1a01          	or	a,(OFST+1,sp)
4764  001e c7525a        	ld	21082,a
4765                     ; 1112 }
4768  0021 84            	pop	a
4769  0022 81            	ret	
4806                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4806                     ; 1124 {
4807                     .text:	section	.text,new
4808  0000               _TIM1_ForcedOC4Config:
4810  0000 88            	push	a
4811       00000000      OFST:	set	0
4814                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4816  0001 a150          	cp	a,#80
4817  0003 2712          	jreq	L2121
4818  0005 a140          	cp	a,#64
4819  0007 270e          	jreq	L2121
4820  0009 ae0466        	ldw	x,#1126
4821  000c 89            	pushw	x
4822  000d 5f            	clrw	x
4823  000e 89            	pushw	x
4824  000f ae0000        	ldw	x,#L37
4825  0012 cd0000        	call	_assert_failed
4827  0015 5b04          	addw	sp,#4
4828  0017               L2121:
4829                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4829                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4831  0017 c6525b        	ld	a,21083
4832  001a a48f          	and	a,#143
4833  001c 1a01          	or	a,(OFST+1,sp)
4834  001e c7525b        	ld	21083,a
4835                     ; 1131 }
4838  0021 84            	pop	a
4839  0022 81            	ret	
4876                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4876                     ; 1140 {
4877                     .text:	section	.text,new
4878  0000               _TIM1_ARRPreloadConfig:
4880  0000 88            	push	a
4881       00000000      OFST:	set	0
4884                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4886  0001 4d            	tnz	a
4887  0002 2711          	jreq	L4221
4888  0004 4a            	dec	a
4889  0005 270e          	jreq	L4221
4890  0007 ae0476        	ldw	x,#1142
4891  000a 89            	pushw	x
4892  000b 5f            	clrw	x
4893  000c 89            	pushw	x
4894  000d ae0000        	ldw	x,#L37
4895  0010 cd0000        	call	_assert_failed
4897  0013 5b04          	addw	sp,#4
4898  0015               L4221:
4899                     ; 1145   if (NewState != DISABLE)
4901  0015 7b01          	ld	a,(OFST+1,sp)
4902  0017 2706          	jreq	L5102
4903                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4905  0019 721e5250      	bset	21072,#7
4907  001d 2004          	jra	L7102
4908  001f               L5102:
4909                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4911  001f 721f5250      	bres	21072,#7
4912  0023               L7102:
4913                     ; 1153 }
4916  0023 84            	pop	a
4917  0024 81            	ret	
4953                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4953                     ; 1162 {
4954                     .text:	section	.text,new
4955  0000               _TIM1_SelectCOM:
4957  0000 88            	push	a
4958       00000000      OFST:	set	0
4961                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4963  0001 4d            	tnz	a
4964  0002 2711          	jreq	L6321
4965  0004 4a            	dec	a
4966  0005 270e          	jreq	L6321
4967  0007 ae048c        	ldw	x,#1164
4968  000a 89            	pushw	x
4969  000b 5f            	clrw	x
4970  000c 89            	pushw	x
4971  000d ae0000        	ldw	x,#L37
4972  0010 cd0000        	call	_assert_failed
4974  0013 5b04          	addw	sp,#4
4975  0015               L6321:
4976                     ; 1167   if (NewState != DISABLE)
4978  0015 7b01          	ld	a,(OFST+1,sp)
4979  0017 2706          	jreq	L7302
4980                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4982  0019 72145251      	bset	21073,#2
4984  001d 2004          	jra	L1402
4985  001f               L7302:
4986                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4988  001f 72155251      	bres	21073,#2
4989  0023               L1402:
4990                     ; 1175 }
4993  0023 84            	pop	a
4994  0024 81            	ret	
5031                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5031                     ; 1184 {
5032                     .text:	section	.text,new
5033  0000               _TIM1_CCPreloadControl:
5035  0000 88            	push	a
5036       00000000      OFST:	set	0
5039                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5041  0001 4d            	tnz	a
5042  0002 2711          	jreq	L0521
5043  0004 4a            	dec	a
5044  0005 270e          	jreq	L0521
5045  0007 ae04a2        	ldw	x,#1186
5046  000a 89            	pushw	x
5047  000b 5f            	clrw	x
5048  000c 89            	pushw	x
5049  000d ae0000        	ldw	x,#L37
5050  0010 cd0000        	call	_assert_failed
5052  0013 5b04          	addw	sp,#4
5053  0015               L0521:
5054                     ; 1189   if (NewState != DISABLE)
5056  0015 7b01          	ld	a,(OFST+1,sp)
5057  0017 2706          	jreq	L1602
5058                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5060  0019 72105251      	bset	21073,#0
5062  001d 2004          	jra	L3602
5063  001f               L1602:
5064                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5066  001f 72115251      	bres	21073,#0
5067  0023               L3602:
5068                     ; 1197 }
5071  0023 84            	pop	a
5072  0024 81            	ret	
5109                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5109                     ; 1206 {
5110                     .text:	section	.text,new
5111  0000               _TIM1_OC1PreloadConfig:
5113  0000 88            	push	a
5114       00000000      OFST:	set	0
5117                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5119  0001 4d            	tnz	a
5120  0002 2711          	jreq	L2621
5121  0004 4a            	dec	a
5122  0005 270e          	jreq	L2621
5123  0007 ae04b8        	ldw	x,#1208
5124  000a 89            	pushw	x
5125  000b 5f            	clrw	x
5126  000c 89            	pushw	x
5127  000d ae0000        	ldw	x,#L37
5128  0010 cd0000        	call	_assert_failed
5130  0013 5b04          	addw	sp,#4
5131  0015               L2621:
5132                     ; 1211   if (NewState != DISABLE)
5134  0015 7b01          	ld	a,(OFST+1,sp)
5135  0017 2706          	jreq	L3012
5136                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5138  0019 72165258      	bset	21080,#3
5140  001d 2004          	jra	L5012
5141  001f               L3012:
5142                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5144  001f 72175258      	bres	21080,#3
5145  0023               L5012:
5146                     ; 1219 }
5149  0023 84            	pop	a
5150  0024 81            	ret	
5187                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5187                     ; 1228 {
5188                     .text:	section	.text,new
5189  0000               _TIM1_OC2PreloadConfig:
5191  0000 88            	push	a
5192       00000000      OFST:	set	0
5195                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5197  0001 4d            	tnz	a
5198  0002 2711          	jreq	L4721
5199  0004 4a            	dec	a
5200  0005 270e          	jreq	L4721
5201  0007 ae04ce        	ldw	x,#1230
5202  000a 89            	pushw	x
5203  000b 5f            	clrw	x
5204  000c 89            	pushw	x
5205  000d ae0000        	ldw	x,#L37
5206  0010 cd0000        	call	_assert_failed
5208  0013 5b04          	addw	sp,#4
5209  0015               L4721:
5210                     ; 1233   if (NewState != DISABLE)
5212  0015 7b01          	ld	a,(OFST+1,sp)
5213  0017 2706          	jreq	L5212
5214                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5216  0019 72165259      	bset	21081,#3
5218  001d 2004          	jra	L7212
5219  001f               L5212:
5220                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5222  001f 72175259      	bres	21081,#3
5223  0023               L7212:
5224                     ; 1241 }
5227  0023 84            	pop	a
5228  0024 81            	ret	
5265                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5265                     ; 1250 {
5266                     .text:	section	.text,new
5267  0000               _TIM1_OC3PreloadConfig:
5269  0000 88            	push	a
5270       00000000      OFST:	set	0
5273                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5275  0001 4d            	tnz	a
5276  0002 2711          	jreq	L6031
5277  0004 4a            	dec	a
5278  0005 270e          	jreq	L6031
5279  0007 ae04e4        	ldw	x,#1252
5280  000a 89            	pushw	x
5281  000b 5f            	clrw	x
5282  000c 89            	pushw	x
5283  000d ae0000        	ldw	x,#L37
5284  0010 cd0000        	call	_assert_failed
5286  0013 5b04          	addw	sp,#4
5287  0015               L6031:
5288                     ; 1255   if (NewState != DISABLE)
5290  0015 7b01          	ld	a,(OFST+1,sp)
5291  0017 2706          	jreq	L7412
5292                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5294  0019 7216525a      	bset	21082,#3
5296  001d 2004          	jra	L1512
5297  001f               L7412:
5298                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5300  001f 7217525a      	bres	21082,#3
5301  0023               L1512:
5302                     ; 1263 }
5305  0023 84            	pop	a
5306  0024 81            	ret	
5343                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5343                     ; 1272 {
5344                     .text:	section	.text,new
5345  0000               _TIM1_OC4PreloadConfig:
5347  0000 88            	push	a
5348       00000000      OFST:	set	0
5351                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5353  0001 4d            	tnz	a
5354  0002 2711          	jreq	L0231
5355  0004 4a            	dec	a
5356  0005 270e          	jreq	L0231
5357  0007 ae04fa        	ldw	x,#1274
5358  000a 89            	pushw	x
5359  000b 5f            	clrw	x
5360  000c 89            	pushw	x
5361  000d ae0000        	ldw	x,#L37
5362  0010 cd0000        	call	_assert_failed
5364  0013 5b04          	addw	sp,#4
5365  0015               L0231:
5366                     ; 1277   if (NewState != DISABLE)
5368  0015 7b01          	ld	a,(OFST+1,sp)
5369  0017 2706          	jreq	L1712
5370                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5372  0019 7216525b      	bset	21083,#3
5374  001d 2004          	jra	L3712
5375  001f               L1712:
5376                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5378  001f 7217525b      	bres	21083,#3
5379  0023               L3712:
5380                     ; 1285 }
5383  0023 84            	pop	a
5384  0024 81            	ret	
5420                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5420                     ; 1294 {
5421                     .text:	section	.text,new
5422  0000               _TIM1_OC1FastConfig:
5424  0000 88            	push	a
5425       00000000      OFST:	set	0
5428                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5430  0001 4d            	tnz	a
5431  0002 2711          	jreq	L2331
5432  0004 4a            	dec	a
5433  0005 270e          	jreq	L2331
5434  0007 ae0510        	ldw	x,#1296
5435  000a 89            	pushw	x
5436  000b 5f            	clrw	x
5437  000c 89            	pushw	x
5438  000d ae0000        	ldw	x,#L37
5439  0010 cd0000        	call	_assert_failed
5441  0013 5b04          	addw	sp,#4
5442  0015               L2331:
5443                     ; 1299   if (NewState != DISABLE)
5445  0015 7b01          	ld	a,(OFST+1,sp)
5446  0017 2706          	jreq	L3122
5447                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5449  0019 72145258      	bset	21080,#2
5451  001d 2004          	jra	L5122
5452  001f               L3122:
5453                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5455  001f 72155258      	bres	21080,#2
5456  0023               L5122:
5457                     ; 1307 }
5460  0023 84            	pop	a
5461  0024 81            	ret	
5497                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5497                     ; 1316 {
5498                     .text:	section	.text,new
5499  0000               _TIM1_OC2FastConfig:
5501  0000 88            	push	a
5502       00000000      OFST:	set	0
5505                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5507  0001 4d            	tnz	a
5508  0002 2711          	jreq	L4431
5509  0004 4a            	dec	a
5510  0005 270e          	jreq	L4431
5511  0007 ae0526        	ldw	x,#1318
5512  000a 89            	pushw	x
5513  000b 5f            	clrw	x
5514  000c 89            	pushw	x
5515  000d ae0000        	ldw	x,#L37
5516  0010 cd0000        	call	_assert_failed
5518  0013 5b04          	addw	sp,#4
5519  0015               L4431:
5520                     ; 1321   if (NewState != DISABLE)
5522  0015 7b01          	ld	a,(OFST+1,sp)
5523  0017 2706          	jreq	L5322
5524                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5526  0019 72145259      	bset	21081,#2
5528  001d 2004          	jra	L7322
5529  001f               L5322:
5530                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5532  001f 72155259      	bres	21081,#2
5533  0023               L7322:
5534                     ; 1329 }
5537  0023 84            	pop	a
5538  0024 81            	ret	
5574                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5574                     ; 1338 {
5575                     .text:	section	.text,new
5576  0000               _TIM1_OC3FastConfig:
5578  0000 88            	push	a
5579       00000000      OFST:	set	0
5582                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5584  0001 4d            	tnz	a
5585  0002 2711          	jreq	L6531
5586  0004 4a            	dec	a
5587  0005 270e          	jreq	L6531
5588  0007 ae053c        	ldw	x,#1340
5589  000a 89            	pushw	x
5590  000b 5f            	clrw	x
5591  000c 89            	pushw	x
5592  000d ae0000        	ldw	x,#L37
5593  0010 cd0000        	call	_assert_failed
5595  0013 5b04          	addw	sp,#4
5596  0015               L6531:
5597                     ; 1343   if (NewState != DISABLE)
5599  0015 7b01          	ld	a,(OFST+1,sp)
5600  0017 2706          	jreq	L7522
5601                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5603  0019 7214525a      	bset	21082,#2
5605  001d 2004          	jra	L1622
5606  001f               L7522:
5607                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5609  001f 7215525a      	bres	21082,#2
5610  0023               L1622:
5611                     ; 1351 }
5614  0023 84            	pop	a
5615  0024 81            	ret	
5651                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5651                     ; 1360 {
5652                     .text:	section	.text,new
5653  0000               _TIM1_OC4FastConfig:
5655  0000 88            	push	a
5656       00000000      OFST:	set	0
5659                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5661  0001 4d            	tnz	a
5662  0002 2711          	jreq	L0731
5663  0004 4a            	dec	a
5664  0005 270e          	jreq	L0731
5665  0007 ae0552        	ldw	x,#1362
5666  000a 89            	pushw	x
5667  000b 5f            	clrw	x
5668  000c 89            	pushw	x
5669  000d ae0000        	ldw	x,#L37
5670  0010 cd0000        	call	_assert_failed
5672  0013 5b04          	addw	sp,#4
5673  0015               L0731:
5674                     ; 1365   if (NewState != DISABLE)
5676  0015 7b01          	ld	a,(OFST+1,sp)
5677  0017 2706          	jreq	L1032
5678                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5680  0019 7214525b      	bset	21083,#2
5682  001d 2004          	jra	L3032
5683  001f               L1032:
5684                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5686  001f 7215525b      	bres	21083,#2
5687  0023               L3032:
5688                     ; 1373 }
5691  0023 84            	pop	a
5692  0024 81            	ret	
5798                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5798                     ; 1390 {
5799                     .text:	section	.text,new
5800  0000               _TIM1_GenerateEvent:
5802  0000 88            	push	a
5803       00000000      OFST:	set	0
5806                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5808  0001 4d            	tnz	a
5809  0002 260e          	jrne	L0041
5810  0004 ae0570        	ldw	x,#1392
5811  0007 89            	pushw	x
5812  0008 5f            	clrw	x
5813  0009 89            	pushw	x
5814  000a ae0000        	ldw	x,#L37
5815  000d cd0000        	call	_assert_failed
5817  0010 5b04          	addw	sp,#4
5818  0012               L0041:
5819                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5821  0012 7b01          	ld	a,(OFST+1,sp)
5822  0014 c75257        	ld	21079,a
5823                     ; 1396 }
5826  0017 84            	pop	a
5827  0018 81            	ret	
5864                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5864                     ; 1407 {
5865                     .text:	section	.text,new
5866  0000               _TIM1_OC1PolarityConfig:
5868  0000 88            	push	a
5869       00000000      OFST:	set	0
5872                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5874  0001 4d            	tnz	a
5875  0002 2712          	jreq	L2141
5876  0004 a122          	cp	a,#34
5877  0006 270e          	jreq	L2141
5878  0008 ae0581        	ldw	x,#1409
5879  000b 89            	pushw	x
5880  000c 5f            	clrw	x
5881  000d 89            	pushw	x
5882  000e ae0000        	ldw	x,#L37
5883  0011 cd0000        	call	_assert_failed
5885  0014 5b04          	addw	sp,#4
5886  0016               L2141:
5887                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5889  0016 7b01          	ld	a,(OFST+1,sp)
5890  0018 2706          	jreq	L5632
5891                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5893  001a 7212525c      	bset	21084,#1
5895  001e 2004          	jra	L7632
5896  0020               L5632:
5897                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5899  0020 7213525c      	bres	21084,#1
5900  0024               L7632:
5901                     ; 1420 }
5904  0024 84            	pop	a
5905  0025 81            	ret	
5942                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5942                     ; 1431 {
5943                     .text:	section	.text,new
5944  0000               _TIM1_OC1NPolarityConfig:
5946  0000 88            	push	a
5947       00000000      OFST:	set	0
5950                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5952  0001 4d            	tnz	a
5953  0002 2712          	jreq	L4241
5954  0004 a188          	cp	a,#136
5955  0006 270e          	jreq	L4241
5956  0008 ae0599        	ldw	x,#1433
5957  000b 89            	pushw	x
5958  000c 5f            	clrw	x
5959  000d 89            	pushw	x
5960  000e ae0000        	ldw	x,#L37
5961  0011 cd0000        	call	_assert_failed
5963  0014 5b04          	addw	sp,#4
5964  0016               L4241:
5965                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5967  0016 7b01          	ld	a,(OFST+1,sp)
5968  0018 2706          	jreq	L7042
5969                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5971  001a 7216525c      	bset	21084,#3
5973  001e 2004          	jra	L1142
5974  0020               L7042:
5975                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5977  0020 7217525c      	bres	21084,#3
5978  0024               L1142:
5979                     ; 1444 }
5982  0024 84            	pop	a
5983  0025 81            	ret	
6020                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6020                     ; 1455 {
6021                     .text:	section	.text,new
6022  0000               _TIM1_OC2PolarityConfig:
6024  0000 88            	push	a
6025       00000000      OFST:	set	0
6028                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6030  0001 4d            	tnz	a
6031  0002 2712          	jreq	L6341
6032  0004 a122          	cp	a,#34
6033  0006 270e          	jreq	L6341
6034  0008 ae05b1        	ldw	x,#1457
6035  000b 89            	pushw	x
6036  000c 5f            	clrw	x
6037  000d 89            	pushw	x
6038  000e ae0000        	ldw	x,#L37
6039  0011 cd0000        	call	_assert_failed
6041  0014 5b04          	addw	sp,#4
6042  0016               L6341:
6043                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6045  0016 7b01          	ld	a,(OFST+1,sp)
6046  0018 2706          	jreq	L1342
6047                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6049  001a 721a525c      	bset	21084,#5
6051  001e 2004          	jra	L3342
6052  0020               L1342:
6053                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6055  0020 721b525c      	bres	21084,#5
6056  0024               L3342:
6057                     ; 1468 }
6060  0024 84            	pop	a
6061  0025 81            	ret	
6098                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6098                     ; 1479 {
6099                     .text:	section	.text,new
6100  0000               _TIM1_OC2NPolarityConfig:
6102  0000 88            	push	a
6103       00000000      OFST:	set	0
6106                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6108  0001 4d            	tnz	a
6109  0002 2712          	jreq	L0541
6110  0004 a188          	cp	a,#136
6111  0006 270e          	jreq	L0541
6112  0008 ae05c9        	ldw	x,#1481
6113  000b 89            	pushw	x
6114  000c 5f            	clrw	x
6115  000d 89            	pushw	x
6116  000e ae0000        	ldw	x,#L37
6117  0011 cd0000        	call	_assert_failed
6119  0014 5b04          	addw	sp,#4
6120  0016               L0541:
6121                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6123  0016 7b01          	ld	a,(OFST+1,sp)
6124  0018 2706          	jreq	L3542
6125                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6127  001a 721e525c      	bset	21084,#7
6129  001e 2004          	jra	L5542
6130  0020               L3542:
6131                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6133  0020 721f525c      	bres	21084,#7
6134  0024               L5542:
6135                     ; 1492 }
6138  0024 84            	pop	a
6139  0025 81            	ret	
6176                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6176                     ; 1503 {
6177                     .text:	section	.text,new
6178  0000               _TIM1_OC3PolarityConfig:
6180  0000 88            	push	a
6181       00000000      OFST:	set	0
6184                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6186  0001 4d            	tnz	a
6187  0002 2712          	jreq	L2641
6188  0004 a122          	cp	a,#34
6189  0006 270e          	jreq	L2641
6190  0008 ae05e1        	ldw	x,#1505
6191  000b 89            	pushw	x
6192  000c 5f            	clrw	x
6193  000d 89            	pushw	x
6194  000e ae0000        	ldw	x,#L37
6195  0011 cd0000        	call	_assert_failed
6197  0014 5b04          	addw	sp,#4
6198  0016               L2641:
6199                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6201  0016 7b01          	ld	a,(OFST+1,sp)
6202  0018 2706          	jreq	L5742
6203                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6205  001a 7212525d      	bset	21085,#1
6207  001e 2004          	jra	L7742
6208  0020               L5742:
6209                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6211  0020 7213525d      	bres	21085,#1
6212  0024               L7742:
6213                     ; 1516 }
6216  0024 84            	pop	a
6217  0025 81            	ret	
6254                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6254                     ; 1528 {
6255                     .text:	section	.text,new
6256  0000               _TIM1_OC3NPolarityConfig:
6258  0000 88            	push	a
6259       00000000      OFST:	set	0
6262                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6264  0001 4d            	tnz	a
6265  0002 2712          	jreq	L4741
6266  0004 a188          	cp	a,#136
6267  0006 270e          	jreq	L4741
6268  0008 ae05fa        	ldw	x,#1530
6269  000b 89            	pushw	x
6270  000c 5f            	clrw	x
6271  000d 89            	pushw	x
6272  000e ae0000        	ldw	x,#L37
6273  0011 cd0000        	call	_assert_failed
6275  0014 5b04          	addw	sp,#4
6276  0016               L4741:
6277                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6279  0016 7b01          	ld	a,(OFST+1,sp)
6280  0018 2706          	jreq	L7152
6281                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6283  001a 7216525d      	bset	21085,#3
6285  001e 2004          	jra	L1252
6286  0020               L7152:
6287                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6289  0020 7217525d      	bres	21085,#3
6290  0024               L1252:
6291                     ; 1541 }
6294  0024 84            	pop	a
6295  0025 81            	ret	
6332                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6332                     ; 1552 {
6333                     .text:	section	.text,new
6334  0000               _TIM1_OC4PolarityConfig:
6336  0000 88            	push	a
6337       00000000      OFST:	set	0
6340                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6342  0001 4d            	tnz	a
6343  0002 2712          	jreq	L6051
6344  0004 a122          	cp	a,#34
6345  0006 270e          	jreq	L6051
6346  0008 ae0612        	ldw	x,#1554
6347  000b 89            	pushw	x
6348  000c 5f            	clrw	x
6349  000d 89            	pushw	x
6350  000e ae0000        	ldw	x,#L37
6351  0011 cd0000        	call	_assert_failed
6353  0014 5b04          	addw	sp,#4
6354  0016               L6051:
6355                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6357  0016 7b01          	ld	a,(OFST+1,sp)
6358  0018 2706          	jreq	L1452
6359                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6361  001a 721a525d      	bset	21085,#5
6363  001e 2004          	jra	L3452
6364  0020               L1452:
6365                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6367  0020 721b525d      	bres	21085,#5
6368  0024               L3452:
6369                     ; 1565 }
6372  0024 84            	pop	a
6373  0025 81            	ret	
6419                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6419                     ; 1580 {
6420                     .text:	section	.text,new
6421  0000               _TIM1_CCxCmd:
6423  0000 89            	pushw	x
6424       00000000      OFST:	set	0
6427                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6429  0001 9e            	ld	a,xh
6430  0002 4d            	tnz	a
6431  0003 2713          	jreq	L0251
6432  0005 9e            	ld	a,xh
6433  0006 4a            	dec	a
6434  0007 270f          	jreq	L0251
6435  0009 9e            	ld	a,xh
6436  000a a102          	cp	a,#2
6437  000c 270a          	jreq	L0251
6438  000e 9e            	ld	a,xh
6439  000f a103          	cp	a,#3
6440  0011 2705          	jreq	L0251
6441  0013 ae062e        	ldw	x,#1582
6442  0016 ad58          	call	LC013
6443  0018               L0251:
6444                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6446  0018 7b02          	ld	a,(OFST+2,sp)
6447  001a 2708          	jreq	L0351
6448  001c 4a            	dec	a
6449  001d 2705          	jreq	L0351
6450  001f ae062f        	ldw	x,#1583
6451  0022 ad4c          	call	LC013
6452  0024               L0351:
6453                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6455  0024 7b01          	ld	a,(OFST+1,sp)
6456  0026 2610          	jrne	L7652
6457                     ; 1588     if (NewState != DISABLE)
6459  0028 7b02          	ld	a,(OFST+2,sp)
6460  002a 2706          	jreq	L1752
6461                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6463  002c 7210525c      	bset	21084,#0
6465  0030 203c          	jra	L5752
6466  0032               L1752:
6467                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6469  0032 7211525c      	bres	21084,#0
6470  0036 2036          	jra	L5752
6471  0038               L7652:
6472                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6474  0038 a101          	cp	a,#1
6475  003a 2610          	jrne	L7752
6476                     ; 1601     if (NewState != DISABLE)
6478  003c 7b02          	ld	a,(OFST+2,sp)
6479  003e 2706          	jreq	L1062
6480                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6482  0040 7218525c      	bset	21084,#4
6484  0044 2028          	jra	L5752
6485  0046               L1062:
6486                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6488  0046 7219525c      	bres	21084,#4
6489  004a 2022          	jra	L5752
6490  004c               L7752:
6491                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6493  004c a102          	cp	a,#2
6494  004e 2610          	jrne	L7062
6495                     ; 1613     if (NewState != DISABLE)
6497  0050 7b02          	ld	a,(OFST+2,sp)
6498  0052 2706          	jreq	L1162
6499                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6501  0054 7210525d      	bset	21085,#0
6503  0058 2014          	jra	L5752
6504  005a               L1162:
6505                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6507  005a 7211525d      	bres	21085,#0
6508  005e 200e          	jra	L5752
6509  0060               L7062:
6510                     ; 1625     if (NewState != DISABLE)
6512  0060 7b02          	ld	a,(OFST+2,sp)
6513  0062 2706          	jreq	L7162
6514                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6516  0064 7218525d      	bset	21085,#4
6518  0068 2004          	jra	L5752
6519  006a               L7162:
6520                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6522  006a 7219525d      	bres	21085,#4
6523  006e               L5752:
6524                     ; 1634 }
6527  006e 85            	popw	x
6528  006f 81            	ret	
6529  0070               LC013:
6530  0070 89            	pushw	x
6531  0071 5f            	clrw	x
6532  0072 89            	pushw	x
6533  0073 ae0000        	ldw	x,#L37
6534  0076 cd0000        	call	_assert_failed
6536  0079 5b04          	addw	sp,#4
6537  007b 81            	ret	
6583                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6583                     ; 1648 {
6584                     .text:	section	.text,new
6585  0000               _TIM1_CCxNCmd:
6587  0000 89            	pushw	x
6588       00000000      OFST:	set	0
6591                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6593  0001 9e            	ld	a,xh
6594  0002 4d            	tnz	a
6595  0003 270e          	jreq	L2451
6596  0005 9e            	ld	a,xh
6597  0006 4a            	dec	a
6598  0007 270a          	jreq	L2451
6599  0009 9e            	ld	a,xh
6600  000a a102          	cp	a,#2
6601  000c 2705          	jreq	L2451
6602  000e ae0672        	ldw	x,#1650
6603  0011 ad43          	call	LC014
6604  0013               L2451:
6605                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6607  0013 7b02          	ld	a,(OFST+2,sp)
6608  0015 2708          	jreq	L2551
6609  0017 4a            	dec	a
6610  0018 2705          	jreq	L2551
6611  001a ae0673        	ldw	x,#1651
6612  001d ad37          	call	LC014
6613  001f               L2551:
6614                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6616  001f 7b01          	ld	a,(OFST+1,sp)
6617  0021 2610          	jrne	L5462
6618                     ; 1656     if (NewState != DISABLE)
6620  0023 7b02          	ld	a,(OFST+2,sp)
6621  0025 2706          	jreq	L7462
6622                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6624  0027 7214525c      	bset	21084,#2
6626  002b 2027          	jra	L3562
6627  002d               L7462:
6628                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6630  002d 7215525c      	bres	21084,#2
6631  0031 2021          	jra	L3562
6632  0033               L5462:
6633                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6635  0033 4a            	dec	a
6636  0034 2610          	jrne	L5562
6637                     ; 1668     if (NewState != DISABLE)
6639  0036 7b02          	ld	a,(OFST+2,sp)
6640  0038 2706          	jreq	L7562
6641                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6643  003a 721c525c      	bset	21084,#6
6645  003e 2014          	jra	L3562
6646  0040               L7562:
6647                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6649  0040 721d525c      	bres	21084,#6
6650  0044 200e          	jra	L3562
6651  0046               L5562:
6652                     ; 1680     if (NewState != DISABLE)
6654  0046 7b02          	ld	a,(OFST+2,sp)
6655  0048 2706          	jreq	L5662
6656                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6658  004a 7214525d      	bset	21085,#2
6660  004e 2004          	jra	L3562
6661  0050               L5662:
6662                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6664  0050 7215525d      	bres	21085,#2
6665  0054               L3562:
6666                     ; 1689 }
6669  0054 85            	popw	x
6670  0055 81            	ret	
6671  0056               LC014:
6672  0056 89            	pushw	x
6673  0057 5f            	clrw	x
6674  0058 89            	pushw	x
6675  0059 ae0000        	ldw	x,#L37
6676  005c cd0000        	call	_assert_failed
6678  005f 5b04          	addw	sp,#4
6679  0061 81            	ret	
6725                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6725                     ; 1713 {
6726                     .text:	section	.text,new
6727  0000               _TIM1_SelectOCxM:
6729  0000 89            	pushw	x
6730       00000000      OFST:	set	0
6733                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6735  0001 9e            	ld	a,xh
6736  0002 4d            	tnz	a
6737  0003 2713          	jreq	L4651
6738  0005 9e            	ld	a,xh
6739  0006 4a            	dec	a
6740  0007 270f          	jreq	L4651
6741  0009 9e            	ld	a,xh
6742  000a a102          	cp	a,#2
6743  000c 270a          	jreq	L4651
6744  000e 9e            	ld	a,xh
6745  000f a103          	cp	a,#3
6746  0011 2705          	jreq	L4651
6747  0013 ae06b3        	ldw	x,#1715
6748  0016 ad71          	call	LC015
6749  0018               L4651:
6750                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6752  0018 7b02          	ld	a,(OFST+2,sp)
6753  001a 2721          	jreq	L4751
6754  001c a110          	cp	a,#16
6755  001e 271d          	jreq	L4751
6756  0020 a120          	cp	a,#32
6757  0022 2719          	jreq	L4751
6758  0024 a130          	cp	a,#48
6759  0026 2715          	jreq	L4751
6760  0028 a160          	cp	a,#96
6761  002a 2711          	jreq	L4751
6762  002c a170          	cp	a,#112
6763  002e 270d          	jreq	L4751
6764  0030 a150          	cp	a,#80
6765  0032 2709          	jreq	L4751
6766  0034 a140          	cp	a,#64
6767  0036 2705          	jreq	L4751
6768  0038 ae06b4        	ldw	x,#1716
6769  003b ad4c          	call	LC015
6770  003d               L4751:
6771                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6773  003d 7b01          	ld	a,(OFST+1,sp)
6774  003f 2610          	jrne	L3172
6775                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6777  0041 7211525c      	bres	21084,#0
6778                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6778                     ; 1725                             | (uint8_t)TIM1_OCMode);
6780  0045 c65258        	ld	a,21080
6781  0048 a48f          	and	a,#143
6782  004a 1a02          	or	a,(OFST+2,sp)
6783  004c c75258        	ld	21080,a
6785  004f 2036          	jra	L5172
6786  0051               L3172:
6787                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6789  0051 a101          	cp	a,#1
6790  0053 2610          	jrne	L7172
6791                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6793  0055 7219525c      	bres	21084,#4
6794                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6794                     ; 1734                             | (uint8_t)TIM1_OCMode);
6796  0059 c65259        	ld	a,21081
6797  005c a48f          	and	a,#143
6798  005e 1a02          	or	a,(OFST+2,sp)
6799  0060 c75259        	ld	21081,a
6801  0063 2022          	jra	L5172
6802  0065               L7172:
6803                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6805  0065 a102          	cp	a,#2
6806  0067 2610          	jrne	L3272
6807                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6809  0069 7211525d      	bres	21085,#0
6810                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6810                     ; 1743                             | (uint8_t)TIM1_OCMode);
6812  006d c6525a        	ld	a,21082
6813  0070 a48f          	and	a,#143
6814  0072 1a02          	or	a,(OFST+2,sp)
6815  0074 c7525a        	ld	21082,a
6817  0077 200e          	jra	L5172
6818  0079               L3272:
6819                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6821  0079 7219525d      	bres	21085,#4
6822                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6822                     ; 1752                             | (uint8_t)TIM1_OCMode);
6824  007d c6525b        	ld	a,21083
6825  0080 a48f          	and	a,#143
6826  0082 1a02          	or	a,(OFST+2,sp)
6827  0084 c7525b        	ld	21083,a
6828  0087               L5172:
6829                     ; 1754 }
6832  0087 85            	popw	x
6833  0088 81            	ret	
6834  0089               LC015:
6835  0089 89            	pushw	x
6836  008a 5f            	clrw	x
6837  008b 89            	pushw	x
6838  008c ae0000        	ldw	x,#L37
6839  008f cd0000        	call	_assert_failed
6841  0092 5b04          	addw	sp,#4
6842  0094 81            	ret	
6874                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6874                     ; 1763 {
6875                     .text:	section	.text,new
6876  0000               _TIM1_SetCounter:
6880                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6882  0000 9e            	ld	a,xh
6883  0001 c7525e        	ld	21086,a
6884                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6886  0004 9f            	ld	a,xl
6887  0005 c7525f        	ld	21087,a
6888                     ; 1767 }
6891  0008 81            	ret	
6923                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6923                     ; 1776 {
6924                     .text:	section	.text,new
6925  0000               _TIM1_SetAutoreload:
6929                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6931  0000 9e            	ld	a,xh
6932  0001 c75262        	ld	21090,a
6933                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6935  0004 9f            	ld	a,xl
6936  0005 c75263        	ld	21091,a
6937                     ; 1780  }
6940  0008 81            	ret	
6972                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6972                     ; 1789 {
6973                     .text:	section	.text,new
6974  0000               _TIM1_SetCompare1:
6978                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6980  0000 9e            	ld	a,xh
6981  0001 c75265        	ld	21093,a
6982                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
6984  0004 9f            	ld	a,xl
6985  0005 c75266        	ld	21094,a
6986                     ; 1793 }
6989  0008 81            	ret	
7021                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7021                     ; 1802 {
7022                     .text:	section	.text,new
7023  0000               _TIM1_SetCompare2:
7027                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7029  0000 9e            	ld	a,xh
7030  0001 c75267        	ld	21095,a
7031                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7033  0004 9f            	ld	a,xl
7034  0005 c75268        	ld	21096,a
7035                     ; 1806 }
7038  0008 81            	ret	
7070                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7070                     ; 1815 {
7071                     .text:	section	.text,new
7072  0000               _TIM1_SetCompare3:
7076                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7078  0000 9e            	ld	a,xh
7079  0001 c75269        	ld	21097,a
7080                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7082  0004 9f            	ld	a,xl
7083  0005 c7526a        	ld	21098,a
7084                     ; 1819 }
7087  0008 81            	ret	
7119                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7119                     ; 1828 {
7120                     .text:	section	.text,new
7121  0000               _TIM1_SetCompare4:
7125                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7127  0000 9e            	ld	a,xh
7128  0001 c7526b        	ld	21099,a
7129                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7131  0004 9f            	ld	a,xl
7132  0005 c7526c        	ld	21100,a
7133                     ; 1832 }
7136  0008 81            	ret	
7173                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7173                     ; 1845 {
7174                     .text:	section	.text,new
7175  0000               _TIM1_SetIC1Prescaler:
7177  0000 88            	push	a
7178       00000000      OFST:	set	0
7181                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7183  0001 4d            	tnz	a
7184  0002 271a          	jreq	L2261
7185  0004 a104          	cp	a,#4
7186  0006 2716          	jreq	L2261
7187  0008 a108          	cp	a,#8
7188  000a 2712          	jreq	L2261
7189  000c a10c          	cp	a,#12
7190  000e 270e          	jreq	L2261
7191  0010 ae0737        	ldw	x,#1847
7192  0013 89            	pushw	x
7193  0014 5f            	clrw	x
7194  0015 89            	pushw	x
7195  0016 ae0000        	ldw	x,#L37
7196  0019 cd0000        	call	_assert_failed
7198  001c 5b04          	addw	sp,#4
7199  001e               L2261:
7200                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7200                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7202  001e c65258        	ld	a,21080
7203  0021 a4f3          	and	a,#243
7204  0023 1a01          	or	a,(OFST+1,sp)
7205  0025 c75258        	ld	21080,a
7206                     ; 1852 }
7209  0028 84            	pop	a
7210  0029 81            	ret	
7247                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7247                     ; 1865 {
7248                     .text:	section	.text,new
7249  0000               _TIM1_SetIC2Prescaler:
7251  0000 88            	push	a
7252       00000000      OFST:	set	0
7255                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7257  0001 4d            	tnz	a
7258  0002 271a          	jreq	L4361
7259  0004 a104          	cp	a,#4
7260  0006 2716          	jreq	L4361
7261  0008 a108          	cp	a,#8
7262  000a 2712          	jreq	L4361
7263  000c a10c          	cp	a,#12
7264  000e 270e          	jreq	L4361
7265  0010 ae074c        	ldw	x,#1868
7266  0013 89            	pushw	x
7267  0014 5f            	clrw	x
7268  0015 89            	pushw	x
7269  0016 ae0000        	ldw	x,#L37
7270  0019 cd0000        	call	_assert_failed
7272  001c 5b04          	addw	sp,#4
7273  001e               L4361:
7274                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7274                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7276  001e c65259        	ld	a,21081
7277  0021 a4f3          	and	a,#243
7278  0023 1a01          	or	a,(OFST+1,sp)
7279  0025 c75259        	ld	21081,a
7280                     ; 1873 }
7283  0028 84            	pop	a
7284  0029 81            	ret	
7321                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7321                     ; 1886 {
7322                     .text:	section	.text,new
7323  0000               _TIM1_SetIC3Prescaler:
7325  0000 88            	push	a
7326       00000000      OFST:	set	0
7329                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7331  0001 4d            	tnz	a
7332  0002 271a          	jreq	L6461
7333  0004 a104          	cp	a,#4
7334  0006 2716          	jreq	L6461
7335  0008 a108          	cp	a,#8
7336  000a 2712          	jreq	L6461
7337  000c a10c          	cp	a,#12
7338  000e 270e          	jreq	L6461
7339  0010 ae0761        	ldw	x,#1889
7340  0013 89            	pushw	x
7341  0014 5f            	clrw	x
7342  0015 89            	pushw	x
7343  0016 ae0000        	ldw	x,#L37
7344  0019 cd0000        	call	_assert_failed
7346  001c 5b04          	addw	sp,#4
7347  001e               L6461:
7348                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7348                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7350  001e c6525a        	ld	a,21082
7351  0021 a4f3          	and	a,#243
7352  0023 1a01          	or	a,(OFST+1,sp)
7353  0025 c7525a        	ld	21082,a
7354                     ; 1894 }
7357  0028 84            	pop	a
7358  0029 81            	ret	
7395                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7395                     ; 1907 {
7396                     .text:	section	.text,new
7397  0000               _TIM1_SetIC4Prescaler:
7399  0000 88            	push	a
7400       00000000      OFST:	set	0
7403                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7405  0001 4d            	tnz	a
7406  0002 271a          	jreq	L0661
7407  0004 a104          	cp	a,#4
7408  0006 2716          	jreq	L0661
7409  0008 a108          	cp	a,#8
7410  000a 2712          	jreq	L0661
7411  000c a10c          	cp	a,#12
7412  000e 270e          	jreq	L0661
7413  0010 ae0776        	ldw	x,#1910
7414  0013 89            	pushw	x
7415  0014 5f            	clrw	x
7416  0015 89            	pushw	x
7417  0016 ae0000        	ldw	x,#L37
7418  0019 cd0000        	call	_assert_failed
7420  001c 5b04          	addw	sp,#4
7421  001e               L0661:
7422                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7422                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7424  001e c6525b        	ld	a,21083
7425  0021 a4f3          	and	a,#243
7426  0023 1a01          	or	a,(OFST+1,sp)
7427  0025 c7525b        	ld	21083,a
7428                     ; 1915 }
7431  0028 84            	pop	a
7432  0029 81            	ret	
7478                     ; 1922 uint16_t TIM1_GetCapture1(void)
7478                     ; 1923 {
7479                     .text:	section	.text,new
7480  0000               _TIM1_GetCapture1:
7482  0000 5204          	subw	sp,#4
7483       00000004      OFST:	set	4
7486                     ; 1926   uint16_t tmpccr1 = 0;
7488                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7492                     ; 1929   tmpccr1h = TIM1->CCR1H;
7494  0002 c65265        	ld	a,21093
7495  0005 6b02          	ld	(OFST-2,sp),a
7497                     ; 1930   tmpccr1l = TIM1->CCR1L;
7499  0007 c65266        	ld	a,21094
7500  000a 6b01          	ld	(OFST-3,sp),a
7502                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7504  000c 5f            	clrw	x
7505  000d 97            	ld	xl,a
7506  000e 1f03          	ldw	(OFST-1,sp),x
7508                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7510  0010 5f            	clrw	x
7511  0011 7b02          	ld	a,(OFST-2,sp)
7512  0013 97            	ld	xl,a
7513  0014 7b04          	ld	a,(OFST+0,sp)
7514  0016 01            	rrwa	x,a
7515  0017 1a03          	or	a,(OFST-1,sp)
7516  0019 01            	rrwa	x,a
7518                     ; 1935   return (uint16_t)tmpccr1;
7522  001a 5b04          	addw	sp,#4
7523  001c 81            	ret	
7569                     ; 1943 uint16_t TIM1_GetCapture2(void)
7569                     ; 1944 {
7570                     .text:	section	.text,new
7571  0000               _TIM1_GetCapture2:
7573  0000 5204          	subw	sp,#4
7574       00000004      OFST:	set	4
7577                     ; 1947   uint16_t tmpccr2 = 0;
7579                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7583                     ; 1950   tmpccr2h = TIM1->CCR2H;
7585  0002 c65267        	ld	a,21095
7586  0005 6b02          	ld	(OFST-2,sp),a
7588                     ; 1951   tmpccr2l = TIM1->CCR2L;
7590  0007 c65268        	ld	a,21096
7591  000a 6b01          	ld	(OFST-3,sp),a
7593                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7595  000c 5f            	clrw	x
7596  000d 97            	ld	xl,a
7597  000e 1f03          	ldw	(OFST-1,sp),x
7599                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7601  0010 5f            	clrw	x
7602  0011 7b02          	ld	a,(OFST-2,sp)
7603  0013 97            	ld	xl,a
7604  0014 7b04          	ld	a,(OFST+0,sp)
7605  0016 01            	rrwa	x,a
7606  0017 1a03          	or	a,(OFST-1,sp)
7607  0019 01            	rrwa	x,a
7609                     ; 1956   return (uint16_t)tmpccr2;
7613  001a 5b04          	addw	sp,#4
7614  001c 81            	ret	
7660                     ; 1964 uint16_t TIM1_GetCapture3(void)
7660                     ; 1965 {
7661                     .text:	section	.text,new
7662  0000               _TIM1_GetCapture3:
7664  0000 5204          	subw	sp,#4
7665       00000004      OFST:	set	4
7668                     ; 1967   uint16_t tmpccr3 = 0;
7670                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7674                     ; 1970   tmpccr3h = TIM1->CCR3H;
7676  0002 c65269        	ld	a,21097
7677  0005 6b02          	ld	(OFST-2,sp),a
7679                     ; 1971   tmpccr3l = TIM1->CCR3L;
7681  0007 c6526a        	ld	a,21098
7682  000a 6b01          	ld	(OFST-3,sp),a
7684                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7686  000c 5f            	clrw	x
7687  000d 97            	ld	xl,a
7688  000e 1f03          	ldw	(OFST-1,sp),x
7690                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7692  0010 5f            	clrw	x
7693  0011 7b02          	ld	a,(OFST-2,sp)
7694  0013 97            	ld	xl,a
7695  0014 7b04          	ld	a,(OFST+0,sp)
7696  0016 01            	rrwa	x,a
7697  0017 1a03          	or	a,(OFST-1,sp)
7698  0019 01            	rrwa	x,a
7700                     ; 1976   return (uint16_t)tmpccr3;
7704  001a 5b04          	addw	sp,#4
7705  001c 81            	ret	
7751                     ; 1984 uint16_t TIM1_GetCapture4(void)
7751                     ; 1985 {
7752                     .text:	section	.text,new
7753  0000               _TIM1_GetCapture4:
7755  0000 5204          	subw	sp,#4
7756       00000004      OFST:	set	4
7759                     ; 1987   uint16_t tmpccr4 = 0;
7761                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7765                     ; 1990   tmpccr4h = TIM1->CCR4H;
7767  0002 c6526b        	ld	a,21099
7768  0005 6b02          	ld	(OFST-2,sp),a
7770                     ; 1991   tmpccr4l = TIM1->CCR4L;
7772  0007 c6526c        	ld	a,21100
7773  000a 6b01          	ld	(OFST-3,sp),a
7775                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7777  000c 5f            	clrw	x
7778  000d 97            	ld	xl,a
7779  000e 1f03          	ldw	(OFST-1,sp),x
7781                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7783  0010 5f            	clrw	x
7784  0011 7b02          	ld	a,(OFST-2,sp)
7785  0013 97            	ld	xl,a
7786  0014 7b04          	ld	a,(OFST+0,sp)
7787  0016 01            	rrwa	x,a
7788  0017 1a03          	or	a,(OFST-1,sp)
7789  0019 01            	rrwa	x,a
7791                     ; 1996   return (uint16_t)tmpccr4;
7795  001a 5b04          	addw	sp,#4
7796  001c 81            	ret	
7828                     ; 2004 uint16_t TIM1_GetCounter(void)
7828                     ; 2005 {
7829                     .text:	section	.text,new
7830  0000               _TIM1_GetCounter:
7832  0000 89            	pushw	x
7833       00000002      OFST:	set	2
7836                     ; 2006   uint16_t tmpcntr = 0;
7838                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7840  0001 c6525e        	ld	a,21086
7841  0004 97            	ld	xl,a
7842  0005 4f            	clr	a
7843  0006 02            	rlwa	x,a
7844  0007 1f01          	ldw	(OFST-1,sp),x
7846                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7848  0009 c6525f        	ld	a,21087
7849  000c 5f            	clrw	x
7850  000d 97            	ld	xl,a
7851  000e 01            	rrwa	x,a
7852  000f 1a02          	or	a,(OFST+0,sp)
7853  0011 01            	rrwa	x,a
7854  0012 1a01          	or	a,(OFST-1,sp)
7855  0014 01            	rrwa	x,a
7858  0015 5b02          	addw	sp,#2
7859  0017 81            	ret	
7891                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7891                     ; 2020 {
7892                     .text:	section	.text,new
7893  0000               _TIM1_GetPrescaler:
7895  0000 89            	pushw	x
7896       00000002      OFST:	set	2
7899                     ; 2021   uint16_t temp = 0;
7901                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7903  0001 c65260        	ld	a,21088
7904  0004 97            	ld	xl,a
7905  0005 4f            	clr	a
7906  0006 02            	rlwa	x,a
7907  0007 1f01          	ldw	(OFST-1,sp),x
7909                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7911  0009 c65261        	ld	a,21089
7912  000c 5f            	clrw	x
7913  000d 97            	ld	xl,a
7914  000e 01            	rrwa	x,a
7915  000f 1a02          	or	a,(OFST+0,sp)
7916  0011 01            	rrwa	x,a
7917  0012 1a01          	or	a,(OFST-1,sp)
7918  0014 01            	rrwa	x,a
7921  0015 5b02          	addw	sp,#2
7922  0017 81            	ret	
8093                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8093                     ; 2048 {
8094                     .text:	section	.text,new
8095  0000               _TIM1_GetFlagStatus:
8097  0000 89            	pushw	x
8098  0001 89            	pushw	x
8099       00000002      OFST:	set	2
8102                     ; 2049   FlagStatus bitstatus = RESET;
8104                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8108                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8110  0002 a30001        	cpw	x,#1
8111  0005 2745          	jreq	L6071
8112  0007 a30002        	cpw	x,#2
8113  000a 2740          	jreq	L6071
8114  000c a30004        	cpw	x,#4
8115  000f 273b          	jreq	L6071
8116  0011 a30008        	cpw	x,#8
8117  0014 2736          	jreq	L6071
8118  0016 a30010        	cpw	x,#16
8119  0019 2731          	jreq	L6071
8120  001b a30020        	cpw	x,#32
8121  001e 272c          	jreq	L6071
8122  0020 a30040        	cpw	x,#64
8123  0023 2727          	jreq	L6071
8124  0025 a30080        	cpw	x,#128
8125  0028 2722          	jreq	L6071
8126  002a a30200        	cpw	x,#512
8127  002d 271d          	jreq	L6071
8128  002f a30400        	cpw	x,#1024
8129  0032 2718          	jreq	L6071
8130  0034 a30800        	cpw	x,#2048
8131  0037 2713          	jreq	L6071
8132  0039 a31000        	cpw	x,#4096
8133  003c 270e          	jreq	L6071
8134  003e ae0805        	ldw	x,#2053
8135  0041 89            	pushw	x
8136  0042 5f            	clrw	x
8137  0043 89            	pushw	x
8138  0044 ae0000        	ldw	x,#L37
8139  0047 cd0000        	call	_assert_failed
8141  004a 5b04          	addw	sp,#4
8142  004c               L6071:
8143                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8145  004c c65255        	ld	a,21077
8146  004f 1404          	and	a,(OFST+2,sp)
8147  0051 6b01          	ld	(OFST-1,sp),a
8149                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8151  0053 7b03          	ld	a,(OFST+1,sp)
8152  0055 6b02          	ld	(OFST+0,sp),a
8154                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8156  0057 c45256        	and	a,21078
8157  005a 1a01          	or	a,(OFST-1,sp)
8158  005c 2702          	jreq	L1533
8159                     ; 2060     bitstatus = SET;
8161  005e a601          	ld	a,#1
8164  0060               L1533:
8165                     ; 2064     bitstatus = RESET;
8168                     ; 2066   return (FlagStatus)(bitstatus);
8172  0060 5b04          	addw	sp,#4
8173  0062 81            	ret	
8209                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8209                     ; 2088 {
8210                     .text:	section	.text,new
8211  0000               _TIM1_ClearFlag:
8213  0000 89            	pushw	x
8214       00000000      OFST:	set	0
8217                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8219  0001 01            	rrwa	x,a
8220  0002 9f            	ld	a,xl
8221  0003 a4e1          	and	a,#225
8222  0005 97            	ld	xl,a
8223  0006 4f            	clr	a
8224  0007 02            	rlwa	x,a
8225  0008 5d            	tnzw	x
8226  0009 2604          	jrne	L4171
8227  000b 1e01          	ldw	x,(OFST+1,sp)
8228  000d 260e          	jrne	L6171
8229  000f               L4171:
8230  000f ae082a        	ldw	x,#2090
8231  0012 89            	pushw	x
8232  0013 5f            	clrw	x
8233  0014 89            	pushw	x
8234  0015 ae0000        	ldw	x,#L37
8235  0018 cd0000        	call	_assert_failed
8237  001b 5b04          	addw	sp,#4
8238  001d               L6171:
8239                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8241  001d 7b02          	ld	a,(OFST+2,sp)
8242  001f 43            	cpl	a
8243  0020 c75255        	ld	21077,a
8244                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8244                     ; 2095                         (uint8_t)0x1E);
8246  0023 7b01          	ld	a,(OFST+1,sp)
8247  0025 43            	cpl	a
8248  0026 a41e          	and	a,#30
8249  0028 c75256        	ld	21078,a
8250                     ; 2096 }
8253  002b 85            	popw	x
8254  002c 81            	ret	
8315                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8315                     ; 2113 {
8316                     .text:	section	.text,new
8317  0000               _TIM1_GetITStatus:
8319  0000 88            	push	a
8320  0001 89            	pushw	x
8321       00000002      OFST:	set	2
8324                     ; 2114   ITStatus bitstatus = RESET;
8326                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8330                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8332  0002 a101          	cp	a,#1
8333  0004 272a          	jreq	L0371
8334  0006 a102          	cp	a,#2
8335  0008 2726          	jreq	L0371
8336  000a a104          	cp	a,#4
8337  000c 2722          	jreq	L0371
8338  000e a108          	cp	a,#8
8339  0010 271e          	jreq	L0371
8340  0012 a110          	cp	a,#16
8341  0014 271a          	jreq	L0371
8342  0016 a120          	cp	a,#32
8343  0018 2716          	jreq	L0371
8344  001a a140          	cp	a,#64
8345  001c 2712          	jreq	L0371
8346  001e a180          	cp	a,#128
8347  0020 270e          	jreq	L0371
8348  0022 ae0846        	ldw	x,#2118
8349  0025 89            	pushw	x
8350  0026 5f            	clrw	x
8351  0027 89            	pushw	x
8352  0028 ae0000        	ldw	x,#L37
8353  002b cd0000        	call	_assert_failed
8355  002e 5b04          	addw	sp,#4
8356  0030               L0371:
8357                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8359  0030 c65255        	ld	a,21077
8360  0033 1403          	and	a,(OFST+1,sp)
8361  0035 6b01          	ld	(OFST-1,sp),a
8363                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8365  0037 c65254        	ld	a,21076
8366  003a 1403          	and	a,(OFST+1,sp)
8367  003c 6b02          	ld	(OFST+0,sp),a
8369                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8371  003e 7b01          	ld	a,(OFST-1,sp)
8372  0040 2708          	jreq	L1243
8374  0042 7b02          	ld	a,(OFST+0,sp)
8375  0044 2704          	jreq	L1243
8376                     ; 2126     bitstatus = SET;
8378  0046 a601          	ld	a,#1
8381  0048 2001          	jra	L3243
8382  004a               L1243:
8383                     ; 2130     bitstatus = RESET;
8385  004a 4f            	clr	a
8387  004b               L3243:
8388                     ; 2132   return (ITStatus)(bitstatus);
8392  004b 5b03          	addw	sp,#3
8393  004d 81            	ret	
8430                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8430                     ; 2150 {
8431                     .text:	section	.text,new
8432  0000               _TIM1_ClearITPendingBit:
8434  0000 88            	push	a
8435       00000000      OFST:	set	0
8438                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8440  0001 4d            	tnz	a
8441  0002 260e          	jrne	L0471
8442  0004 ae0868        	ldw	x,#2152
8443  0007 89            	pushw	x
8444  0008 5f            	clrw	x
8445  0009 89            	pushw	x
8446  000a ae0000        	ldw	x,#L37
8447  000d cd0000        	call	_assert_failed
8449  0010 5b04          	addw	sp,#4
8450  0012               L0471:
8451                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8453  0012 7b01          	ld	a,(OFST+1,sp)
8454  0014 43            	cpl	a
8455  0015 c75255        	ld	21077,a
8456                     ; 2156 }
8459  0018 84            	pop	a
8460  0019 81            	ret	
8506                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8506                     ; 2175                        uint8_t TIM1_ICSelection,
8506                     ; 2176                        uint8_t TIM1_ICFilter)
8506                     ; 2177 {
8507                     .text:	section	.text,new
8508  0000               L3_TI1_Config:
8510  0000 89            	pushw	x
8511  0001 88            	push	a
8512       00000001      OFST:	set	1
8515                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8517  0002 7211525c      	bres	21084,#0
8518                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8518                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8520  0006 7b06          	ld	a,(OFST+5,sp)
8521  0008 97            	ld	xl,a
8522  0009 a610          	ld	a,#16
8523  000b 42            	mul	x,a
8524  000c 9f            	ld	a,xl
8525  000d 1a03          	or	a,(OFST+2,sp)
8526  000f 6b01          	ld	(OFST+0,sp),a
8528  0011 c65258        	ld	a,21080
8529  0014 a40c          	and	a,#12
8530  0016 1a01          	or	a,(OFST+0,sp)
8531  0018 c75258        	ld	21080,a
8532                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8534  001b 7b02          	ld	a,(OFST+1,sp)
8535  001d 2706          	jreq	L3643
8536                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8538  001f 7212525c      	bset	21084,#1
8540  0023 2004          	jra	L5643
8541  0025               L3643:
8542                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8544  0025 7213525c      	bres	21084,#1
8545  0029               L5643:
8546                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8548  0029 7210525c      	bset	21084,#0
8549                     ; 2197 }
8552  002d 5b03          	addw	sp,#3
8553  002f 81            	ret	
8599                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8599                     ; 2216                        uint8_t TIM1_ICSelection,
8599                     ; 2217                        uint8_t TIM1_ICFilter)
8599                     ; 2218 {
8600                     .text:	section	.text,new
8601  0000               L5_TI2_Config:
8603  0000 89            	pushw	x
8604  0001 88            	push	a
8605       00000001      OFST:	set	1
8608                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8610  0002 7219525c      	bres	21084,#4
8611                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8611                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8613  0006 7b06          	ld	a,(OFST+5,sp)
8614  0008 97            	ld	xl,a
8615  0009 a610          	ld	a,#16
8616  000b 42            	mul	x,a
8617  000c 9f            	ld	a,xl
8618  000d 1a03          	or	a,(OFST+2,sp)
8619  000f 6b01          	ld	(OFST+0,sp),a
8621  0011 c65259        	ld	a,21081
8622  0014 a40c          	and	a,#12
8623  0016 1a01          	or	a,(OFST+0,sp)
8624  0018 c75259        	ld	21081,a
8625                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8627  001b 7b02          	ld	a,(OFST+1,sp)
8628  001d 2706          	jreq	L7053
8629                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8631  001f 721a525c      	bset	21084,#5
8633  0023 2004          	jra	L1153
8634  0025               L7053:
8635                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8637  0025 721b525c      	bres	21084,#5
8638  0029               L1153:
8639                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8641  0029 7218525c      	bset	21084,#4
8642                     ; 2236 }
8645  002d 5b03          	addw	sp,#3
8646  002f 81            	ret	
8692                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8692                     ; 2255                        uint8_t TIM1_ICSelection,
8692                     ; 2256                        uint8_t TIM1_ICFilter)
8692                     ; 2257 {
8693                     .text:	section	.text,new
8694  0000               L7_TI3_Config:
8696  0000 89            	pushw	x
8697  0001 88            	push	a
8698       00000001      OFST:	set	1
8701                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8703  0002 7211525d      	bres	21085,#0
8704                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8704                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8706  0006 7b06          	ld	a,(OFST+5,sp)
8707  0008 97            	ld	xl,a
8708  0009 a610          	ld	a,#16
8709  000b 42            	mul	x,a
8710  000c 9f            	ld	a,xl
8711  000d 1a03          	or	a,(OFST+2,sp)
8712  000f 6b01          	ld	(OFST+0,sp),a
8714  0011 c6525a        	ld	a,21082
8715  0014 a40c          	and	a,#12
8716  0016 1a01          	or	a,(OFST+0,sp)
8717  0018 c7525a        	ld	21082,a
8718                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8720  001b 7b02          	ld	a,(OFST+1,sp)
8721  001d 2706          	jreq	L3353
8722                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8724  001f 7212525d      	bset	21085,#1
8726  0023 2004          	jra	L5353
8727  0025               L3353:
8728                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8730  0025 7213525d      	bres	21085,#1
8731  0029               L5353:
8732                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8734  0029 7210525d      	bset	21085,#0
8735                     ; 2276 }
8738  002d 5b03          	addw	sp,#3
8739  002f 81            	ret	
8785                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8785                     ; 2295                        uint8_t TIM1_ICSelection,
8785                     ; 2296                        uint8_t TIM1_ICFilter)
8785                     ; 2297 {
8786                     .text:	section	.text,new
8787  0000               L11_TI4_Config:
8789  0000 89            	pushw	x
8790  0001 88            	push	a
8791       00000001      OFST:	set	1
8794                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8796  0002 7219525d      	bres	21085,#4
8797                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8797                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8799  0006 7b06          	ld	a,(OFST+5,sp)
8800  0008 97            	ld	xl,a
8801  0009 a610          	ld	a,#16
8802  000b 42            	mul	x,a
8803  000c 9f            	ld	a,xl
8804  000d 1a03          	or	a,(OFST+2,sp)
8805  000f 6b01          	ld	(OFST+0,sp),a
8807  0011 c6525b        	ld	a,21083
8808  0014 a40c          	and	a,#12
8809  0016 1a01          	or	a,(OFST+0,sp)
8810  0018 c7525b        	ld	21083,a
8811                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8813  001b 7b02          	ld	a,(OFST+1,sp)
8814  001d 2706          	jreq	L7553
8815                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8817  001f 721a525d      	bset	21085,#5
8819  0023 2004          	jra	L1653
8820  0025               L7553:
8821                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8823  0025 721b525d      	bres	21085,#5
8824  0029               L1653:
8825                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8827  0029 7218525d      	bset	21085,#4
8828                     ; 2317 }
8831  002d 5b03          	addw	sp,#3
8832  002f 81            	ret	
8845                     	xdef	_TIM1_ClearITPendingBit
8846                     	xdef	_TIM1_GetITStatus
8847                     	xdef	_TIM1_ClearFlag
8848                     	xdef	_TIM1_GetFlagStatus
8849                     	xdef	_TIM1_GetPrescaler
8850                     	xdef	_TIM1_GetCounter
8851                     	xdef	_TIM1_GetCapture4
8852                     	xdef	_TIM1_GetCapture3
8853                     	xdef	_TIM1_GetCapture2
8854                     	xdef	_TIM1_GetCapture1
8855                     	xdef	_TIM1_SetIC4Prescaler
8856                     	xdef	_TIM1_SetIC3Prescaler
8857                     	xdef	_TIM1_SetIC2Prescaler
8858                     	xdef	_TIM1_SetIC1Prescaler
8859                     	xdef	_TIM1_SetCompare4
8860                     	xdef	_TIM1_SetCompare3
8861                     	xdef	_TIM1_SetCompare2
8862                     	xdef	_TIM1_SetCompare1
8863                     	xdef	_TIM1_SetAutoreload
8864                     	xdef	_TIM1_SetCounter
8865                     	xdef	_TIM1_SelectOCxM
8866                     	xdef	_TIM1_CCxNCmd
8867                     	xdef	_TIM1_CCxCmd
8868                     	xdef	_TIM1_OC4PolarityConfig
8869                     	xdef	_TIM1_OC3NPolarityConfig
8870                     	xdef	_TIM1_OC3PolarityConfig
8871                     	xdef	_TIM1_OC2NPolarityConfig
8872                     	xdef	_TIM1_OC2PolarityConfig
8873                     	xdef	_TIM1_OC1NPolarityConfig
8874                     	xdef	_TIM1_OC1PolarityConfig
8875                     	xdef	_TIM1_GenerateEvent
8876                     	xdef	_TIM1_OC4FastConfig
8877                     	xdef	_TIM1_OC3FastConfig
8878                     	xdef	_TIM1_OC2FastConfig
8879                     	xdef	_TIM1_OC1FastConfig
8880                     	xdef	_TIM1_OC4PreloadConfig
8881                     	xdef	_TIM1_OC3PreloadConfig
8882                     	xdef	_TIM1_OC2PreloadConfig
8883                     	xdef	_TIM1_OC1PreloadConfig
8884                     	xdef	_TIM1_CCPreloadControl
8885                     	xdef	_TIM1_SelectCOM
8886                     	xdef	_TIM1_ARRPreloadConfig
8887                     	xdef	_TIM1_ForcedOC4Config
8888                     	xdef	_TIM1_ForcedOC3Config
8889                     	xdef	_TIM1_ForcedOC2Config
8890                     	xdef	_TIM1_ForcedOC1Config
8891                     	xdef	_TIM1_CounterModeConfig
8892                     	xdef	_TIM1_PrescalerConfig
8893                     	xdef	_TIM1_EncoderInterfaceConfig
8894                     	xdef	_TIM1_SelectMasterSlaveMode
8895                     	xdef	_TIM1_SelectSlaveMode
8896                     	xdef	_TIM1_SelectOutputTrigger
8897                     	xdef	_TIM1_SelectOnePulseMode
8898                     	xdef	_TIM1_SelectHallSensor
8899                     	xdef	_TIM1_UpdateRequestConfig
8900                     	xdef	_TIM1_UpdateDisableConfig
8901                     	xdef	_TIM1_SelectInputTrigger
8902                     	xdef	_TIM1_TIxExternalClockConfig
8903                     	xdef	_TIM1_ETRConfig
8904                     	xdef	_TIM1_ETRClockMode2Config
8905                     	xdef	_TIM1_ETRClockMode1Config
8906                     	xdef	_TIM1_InternalClockConfig
8907                     	xdef	_TIM1_ITConfig
8908                     	xdef	_TIM1_CtrlPWMOutputs
8909                     	xdef	_TIM1_Cmd
8910                     	xdef	_TIM1_PWMIConfig
8911                     	xdef	_TIM1_ICInit
8912                     	xdef	_TIM1_BDTRConfig
8913                     	xdef	_TIM1_OC4Init
8914                     	xdef	_TIM1_OC3Init
8915                     	xdef	_TIM1_OC2Init
8916                     	xdef	_TIM1_OC1Init
8917                     	xdef	_TIM1_TimeBaseInit
8918                     	xdef	_TIM1_DeInit
8919                     	xref	_assert_failed
8920                     .const:	section	.text
8921  0000               L37:
8922  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8923  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8924  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8925  0036 5f74696d312e  	dc.b	"_tim1.c",0
8945                     	end
