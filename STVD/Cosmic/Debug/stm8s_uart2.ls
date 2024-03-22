   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 53 void UART2_DeInit(void)
  49                     ; 54 {
  51                     .text:	section	.text,new
  52  0000               _UART2_DeInit:
  56                     ; 57   (void) UART2->SR;
  58  0000 c65240        	ld	a,21056
  59                     ; 58   (void)UART2->DR;
  61  0003 c65241        	ld	a,21057
  62                     ; 60   UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
  64  0006 725f5243      	clr	21059
  65                     ; 61   UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
  67  000a 725f5242      	clr	21058
  68                     ; 63   UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
  70  000e 725f5244      	clr	21060
  71                     ; 64   UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
  73  0012 725f5245      	clr	21061
  74                     ; 65   UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
  76  0016 725f5246      	clr	21062
  77                     ; 66   UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
  79  001a 725f5247      	clr	21063
  80                     ; 67   UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
  82  001e 725f5248      	clr	21064
  83                     ; 68   UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
  85  0022 725f5249      	clr	21065
  86                     ; 69 }
  89  0026 81            	ret	
 401                     .const:	section	.text
 402  0000               L21:
 403  0000 00098969      	dc.l	625001
 404  0004               L27:
 405  0004 00000064      	dc.l	100
 406                     ; 85 void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
 406                     ; 86 {
 407                     .text:	section	.text,new
 408  0000               _UART2_Init:
 410  0000 520e          	subw	sp,#14
 411       0000000e      OFST:	set	14
 414                     ; 87   uint8_t BRR2_1 = 0, BRR2_2 = 0;
 418                     ; 88   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 422                     ; 91   assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
 424  0002 96            	ldw	x,sp
 425  0003 1c0011        	addw	x,#OFST+3
 426  0006 cd0000        	call	c_ltor
 428  0009 ae0000        	ldw	x,#L21
 429  000c cd0000        	call	c_lcmp
 431  000f 2506          	jrult	L41
 432  0011 ae005b        	ldw	x,#91
 433  0014 cd01a0        	call	LC001
 434  0017               L41:
 435                     ; 92   assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
 437  0017 7b15          	ld	a,(OFST+7,sp)
 438  0019 270a          	jreq	L42
 439  001b a110          	cp	a,#16
 440  001d 2706          	jreq	L42
 441  001f ae005c        	ldw	x,#92
 442  0022 cd01a0        	call	LC001
 443  0025               L42:
 444                     ; 93   assert_param(IS_UART2_STOPBITS_OK(StopBits));
 446  0025 7b16          	ld	a,(OFST+8,sp)
 447  0027 2712          	jreq	L43
 448  0029 a110          	cp	a,#16
 449  002b 270e          	jreq	L43
 450  002d a120          	cp	a,#32
 451  002f 270a          	jreq	L43
 452  0031 a130          	cp	a,#48
 453  0033 2706          	jreq	L43
 454  0035 ae005d        	ldw	x,#93
 455  0038 cd01a0        	call	LC001
 456  003b               L43:
 457                     ; 94   assert_param(IS_UART2_PARITY_OK(Parity));
 459  003b 7b17          	ld	a,(OFST+9,sp)
 460  003d 270e          	jreq	L44
 461  003f a104          	cp	a,#4
 462  0041 270a          	jreq	L44
 463  0043 a106          	cp	a,#6
 464  0045 2706          	jreq	L44
 465  0047 ae005e        	ldw	x,#94
 466  004a cd01a0        	call	LC001
 467  004d               L44:
 468                     ; 95   assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
 470  004d 7b19          	ld	a,(OFST+11,sp)
 471  004f a108          	cp	a,#8
 472  0051 2722          	jreq	L45
 473  0053 a140          	cp	a,#64
 474  0055 271e          	jreq	L45
 475  0057 a104          	cp	a,#4
 476  0059 271a          	jreq	L45
 477  005b a180          	cp	a,#128
 478  005d 2716          	jreq	L45
 479  005f a10c          	cp	a,#12
 480  0061 2712          	jreq	L45
 481  0063 a144          	cp	a,#68
 482  0065 270e          	jreq	L45
 483  0067 a1c0          	cp	a,#192
 484  0069 270a          	jreq	L45
 485  006b a188          	cp	a,#136
 486  006d 2706          	jreq	L45
 487  006f ae005f        	ldw	x,#95
 488  0072 cd01a0        	call	LC001
 489  0075               L45:
 490                     ; 96   assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
 492  0075 7b18          	ld	a,(OFST+10,sp)
 493  0077 a488          	and	a,#136
 494  0079 a188          	cp	a,#136
 495  007b 2718          	jreq	L06
 496  007d 7b18          	ld	a,(OFST+10,sp)
 497  007f a444          	and	a,#68
 498  0081 a144          	cp	a,#68
 499  0083 2710          	jreq	L06
 500  0085 7b18          	ld	a,(OFST+10,sp)
 501  0087 a422          	and	a,#34
 502  0089 a122          	cp	a,#34
 503  008b 2708          	jreq	L06
 504  008d 7b18          	ld	a,(OFST+10,sp)
 505  008f a411          	and	a,#17
 506  0091 a111          	cp	a,#17
 507  0093 2606          	jrne	L26
 508  0095               L06:
 509  0095 ae0060        	ldw	x,#96
 510  0098 cd01a0        	call	LC001
 511  009b               L26:
 512                     ; 99   UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
 514  009b 72195244      	bres	21060,#4
 515                     ; 101   UART2->CR1 |= (uint8_t)WordLength; 
 517  009f c65244        	ld	a,21060
 518  00a2 1a15          	or	a,(OFST+7,sp)
 519  00a4 c75244        	ld	21060,a
 520                     ; 104   UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
 522  00a7 c65246        	ld	a,21062
 523  00aa a4cf          	and	a,#207
 524  00ac c75246        	ld	21062,a
 525                     ; 106   UART2->CR3 |= (uint8_t)StopBits; 
 527  00af c65246        	ld	a,21062
 528  00b2 1a16          	or	a,(OFST+8,sp)
 529  00b4 c75246        	ld	21062,a
 530                     ; 109   UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
 532  00b7 c65244        	ld	a,21060
 533  00ba a4f9          	and	a,#249
 534  00bc c75244        	ld	21060,a
 535                     ; 111   UART2->CR1 |= (uint8_t)Parity;
 537  00bf c65244        	ld	a,21060
 538  00c2 1a17          	or	a,(OFST+9,sp)
 539  00c4 c75244        	ld	21060,a
 540                     ; 114   UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
 542  00c7 725f5242      	clr	21058
 543                     ; 116   UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
 545  00cb c65243        	ld	a,21059
 546  00ce a40f          	and	a,#15
 547  00d0 c75243        	ld	21059,a
 548                     ; 118   UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
 550  00d3 c65243        	ld	a,21059
 551  00d6 a4f0          	and	a,#240
 552  00d8 c75243        	ld	21059,a
 553                     ; 121   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 555  00db 96            	ldw	x,sp
 556  00dc cd01ac        	call	LC002
 558  00df 96            	ldw	x,sp
 559  00e0 5c            	incw	x
 560  00e1 cd0000        	call	c_rtol
 563  00e4 cd0000        	call	_CLK_GetClockFreq
 565  00e7 96            	ldw	x,sp
 566  00e8 5c            	incw	x
 567  00e9 cd0000        	call	c_ludv
 569  00ec 96            	ldw	x,sp
 570  00ed 1c000b        	addw	x,#OFST-3
 571  00f0 cd0000        	call	c_rtol
 574                     ; 122   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 576  00f3 96            	ldw	x,sp
 577  00f4 cd01ac        	call	LC002
 579  00f7 96            	ldw	x,sp
 580  00f8 5c            	incw	x
 581  00f9 cd0000        	call	c_rtol
 584  00fc cd0000        	call	_CLK_GetClockFreq
 586  00ff a664          	ld	a,#100
 587  0101 cd0000        	call	c_smul
 589  0104 96            	ldw	x,sp
 590  0105 5c            	incw	x
 591  0106 cd0000        	call	c_ludv
 593  0109 96            	ldw	x,sp
 594  010a 1c0007        	addw	x,#OFST-7
 595  010d cd0000        	call	c_rtol
 598                     ; 126   BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 598                     ; 127                                 << 4) / 100) & (uint8_t)0x0F); 
 600  0110 96            	ldw	x,sp
 601  0111 1c000b        	addw	x,#OFST-3
 602  0114 cd0000        	call	c_ltor
 604  0117 a664          	ld	a,#100
 605  0119 cd0000        	call	c_smul
 607  011c 96            	ldw	x,sp
 608  011d 5c            	incw	x
 609  011e cd0000        	call	c_rtol
 612  0121 96            	ldw	x,sp
 613  0122 1c0007        	addw	x,#OFST-7
 614  0125 cd0000        	call	c_ltor
 616  0128 96            	ldw	x,sp
 617  0129 5c            	incw	x
 618  012a cd0000        	call	c_lsub
 620  012d a604          	ld	a,#4
 621  012f cd0000        	call	c_llsh
 623  0132 ae0004        	ldw	x,#L27
 624  0135 cd0000        	call	c_ludv
 626  0138 b603          	ld	a,c_lreg+3
 627  013a a40f          	and	a,#15
 628  013c 6b05          	ld	(OFST-9,sp),a
 630                     ; 128   BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 632  013e 1e0d          	ldw	x,(OFST-1,sp)
 633  0140 54            	srlw	x
 634  0141 54            	srlw	x
 635  0142 54            	srlw	x
 636  0143 54            	srlw	x
 637  0144 01            	rrwa	x,a
 638  0145 a4f0          	and	a,#240
 639  0147 6b06          	ld	(OFST-8,sp),a
 641                     ; 130   UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 643  0149 1a05          	or	a,(OFST-9,sp)
 644  014b c75243        	ld	21059,a
 645                     ; 132   UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
 647  014e 7b0e          	ld	a,(OFST+0,sp)
 648  0150 c75242        	ld	21058,a
 649                     ; 135   UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
 651  0153 c65245        	ld	a,21061
 652  0156 a4f3          	and	a,#243
 653  0158 c75245        	ld	21061,a
 654                     ; 137   UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
 656  015b c65246        	ld	a,21062
 657  015e a4f8          	and	a,#248
 658  0160 c75246        	ld	21062,a
 659                     ; 139   UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
 659                     ; 140     UART2_CR3_CPHA | UART2_CR3_LBCL));
 661  0163 7b18          	ld	a,(OFST+10,sp)
 662  0165 a407          	and	a,#7
 663  0167 ca5246        	or	a,21062
 664  016a c75246        	ld	21062,a
 665                     ; 142   if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
 667  016d 7b19          	ld	a,(OFST+11,sp)
 668  016f a504          	bcp	a,#4
 669  0171 2706          	jreq	L371
 670                     ; 145     UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
 672  0173 72165245      	bset	21061,#3
 674  0177 2004          	jra	L571
 675  0179               L371:
 676                     ; 150     UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
 678  0179 72175245      	bres	21061,#3
 679  017d               L571:
 680                     ; 152   if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
 682  017d a508          	bcp	a,#8
 683  017f 2706          	jreq	L771
 684                     ; 155     UART2->CR2 |= (uint8_t)UART2_CR2_REN;
 686  0181 72145245      	bset	21061,#2
 688  0185 2004          	jra	L102
 689  0187               L771:
 690                     ; 160     UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
 692  0187 72155245      	bres	21061,#2
 693  018b               L102:
 694                     ; 164   if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
 696  018b 7b18          	ld	a,(OFST+10,sp)
 697  018d 2a06          	jrpl	L302
 698                     ; 167     UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
 700  018f 72175246      	bres	21062,#3
 702  0193 2008          	jra	L502
 703  0195               L302:
 704                     ; 171     UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
 706  0195 a408          	and	a,#8
 707  0197 ca5246        	or	a,21062
 708  019a c75246        	ld	21062,a
 709  019d               L502:
 710                     ; 173 }
 713  019d 5b0e          	addw	sp,#14
 714  019f 81            	ret	
 715  01a0               LC001:
 716  01a0 89            	pushw	x
 717  01a1 5f            	clrw	x
 718  01a2 89            	pushw	x
 719  01a3 ae0008        	ldw	x,#L171
 720  01a6 cd0000        	call	_assert_failed
 722  01a9 5b04          	addw	sp,#4
 723  01ab 81            	ret	
 724  01ac               LC002:
 725  01ac 1c0011        	addw	x,#OFST+3
 726  01af cd0000        	call	c_ltor
 728  01b2 a604          	ld	a,#4
 729  01b4 cc0000        	jp	c_llsh
 784                     ; 181 void UART2_Cmd(FunctionalState NewState)
 784                     ; 182 {
 785                     .text:	section	.text,new
 786  0000               _UART2_Cmd:
 790                     ; 183   if (NewState != DISABLE)
 792  0000 4d            	tnz	a
 793  0001 2705          	jreq	L532
 794                     ; 186     UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
 796  0003 721b5244      	bres	21060,#5
 799  0007 81            	ret	
 800  0008               L532:
 801                     ; 191     UART2->CR1 |= UART2_CR1_UARTD; 
 803  0008 721a5244      	bset	21060,#5
 804                     ; 193 }
 807  000c 81            	ret	
 936                     ; 210 void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
 936                     ; 211 {
 937                     .text:	section	.text,new
 938  0000               _UART2_ITConfig:
 940  0000 89            	pushw	x
 941  0001 89            	pushw	x
 942       00000002      OFST:	set	2
 945                     ; 212   uint8_t uartreg = 0, itpos = 0x00;
 949                     ; 215   assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
 951  0002 a30100        	cpw	x,#256
 952  0005 2724          	jreq	L401
 953  0007 a30277        	cpw	x,#631
 954  000a 271f          	jreq	L401
 955  000c a30266        	cpw	x,#614
 956  000f 271a          	jreq	L401
 957  0011 a30205        	cpw	x,#517
 958  0014 2715          	jreq	L401
 959  0016 a30244        	cpw	x,#580
 960  0019 2710          	jreq	L401
 961  001b a30412        	cpw	x,#1042
 962  001e 270b          	jreq	L401
 963  0020 a30346        	cpw	x,#838
 964  0023 2706          	jreq	L401
 965  0025 ae00d7        	ldw	x,#215
 966  0028 cd00b5        	call	LC007
 967  002b               L401:
 968                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 970  002b 7b07          	ld	a,(OFST+5,sp)
 971  002d 2708          	jreq	L411
 972  002f 4a            	dec	a
 973  0030 2705          	jreq	L411
 974  0032 ae00d8        	ldw	x,#216
 975  0035 ad7e          	call	LC007
 976  0037               L411:
 977                     ; 219   uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
 979  0037 7b03          	ld	a,(OFST+1,sp)
 980  0039 6b01          	ld	(OFST-1,sp),a
 982                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
 984  003b 7b04          	ld	a,(OFST+2,sp)
 985  003d a40f          	and	a,#15
 986  003f 5f            	clrw	x
 987  0040 97            	ld	xl,a
 988  0041 a601          	ld	a,#1
 989  0043 5d            	tnzw	x
 990  0044 2704          	jreq	L021
 991  0046               L221:
 992  0046 48            	sll	a
 993  0047 5a            	decw	x
 994  0048 26fc          	jrne	L221
 995  004a               L021:
 996  004a 6b02          	ld	(OFST+0,sp),a
 998                     ; 224   if (NewState != DISABLE)
1000  004c 7b07          	ld	a,(OFST+5,sp)
1001  004e 272a          	jreq	L513
1002                     ; 227     if (uartreg == 0x01)
1004  0050 7b01          	ld	a,(OFST-1,sp)
1005  0052 a101          	cp	a,#1
1006  0054 2607          	jrne	L713
1007                     ; 229       UART2->CR1 |= itpos;
1009  0056 c65244        	ld	a,21060
1010  0059 1a02          	or	a,(OFST+0,sp)
1012  005b 2029          	jp	LC005
1013  005d               L713:
1014                     ; 231     else if (uartreg == 0x02)
1016  005d a102          	cp	a,#2
1017  005f 2607          	jrne	L323
1018                     ; 233       UART2->CR2 |= itpos;
1020  0061 c65245        	ld	a,21061
1021  0064 1a02          	or	a,(OFST+0,sp)
1023  0066 202d          	jp	LC004
1024  0068               L323:
1025                     ; 235     else if (uartreg == 0x03)
1027  0068 a103          	cp	a,#3
1028  006a 2607          	jrne	L723
1029                     ; 237       UART2->CR4 |= itpos;
1031  006c c65247        	ld	a,21063
1032  006f 1a02          	or	a,(OFST+0,sp)
1034  0071 2031          	jp	LC006
1035  0073               L723:
1036                     ; 241       UART2->CR6 |= itpos;
1038  0073 c65249        	ld	a,21065
1039  0076 1a02          	or	a,(OFST+0,sp)
1040  0078 2035          	jp	LC003
1041  007a               L513:
1042                     ; 247     if (uartreg == 0x01)
1044  007a 7b01          	ld	a,(OFST-1,sp)
1045  007c a101          	cp	a,#1
1046  007e 260b          	jrne	L533
1047                     ; 249       UART2->CR1 &= (uint8_t)(~itpos);
1049  0080 7b02          	ld	a,(OFST+0,sp)
1050  0082 43            	cpl	a
1051  0083 c45244        	and	a,21060
1052  0086               LC005:
1053  0086 c75244        	ld	21060,a
1055  0089 2027          	jra	L333
1056  008b               L533:
1057                     ; 251     else if (uartreg == 0x02)
1059  008b a102          	cp	a,#2
1060  008d 260b          	jrne	L143
1061                     ; 253       UART2->CR2 &= (uint8_t)(~itpos);
1063  008f 7b02          	ld	a,(OFST+0,sp)
1064  0091 43            	cpl	a
1065  0092 c45245        	and	a,21061
1066  0095               LC004:
1067  0095 c75245        	ld	21061,a
1069  0098 2018          	jra	L333
1070  009a               L143:
1071                     ; 255     else if (uartreg == 0x03)
1073  009a a103          	cp	a,#3
1074  009c 260b          	jrne	L543
1075                     ; 257       UART2->CR4 &= (uint8_t)(~itpos);
1077  009e 7b02          	ld	a,(OFST+0,sp)
1078  00a0 43            	cpl	a
1079  00a1 c45247        	and	a,21063
1080  00a4               LC006:
1081  00a4 c75247        	ld	21063,a
1083  00a7 2009          	jra	L333
1084  00a9               L543:
1085                     ; 261       UART2->CR6 &= (uint8_t)(~itpos);
1087  00a9 7b02          	ld	a,(OFST+0,sp)
1088  00ab 43            	cpl	a
1089  00ac c45249        	and	a,21065
1090  00af               LC003:
1091  00af c75249        	ld	21065,a
1092  00b2               L333:
1093                     ; 264 }
1096  00b2 5b04          	addw	sp,#4
1097  00b4 81            	ret	
1098  00b5               LC007:
1099  00b5 89            	pushw	x
1100  00b6 5f            	clrw	x
1101  00b7 89            	pushw	x
1102  00b8 ae0008        	ldw	x,#L171
1103  00bb cd0000        	call	_assert_failed
1105  00be 5b04          	addw	sp,#4
1106  00c0 81            	ret	
1164                     ; 272 void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
1164                     ; 273 {
1165                     .text:	section	.text,new
1166  0000               _UART2_IrDAConfig:
1168  0000 88            	push	a
1169       00000000      OFST:	set	0
1172                     ; 274   assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
1174  0001 a101          	cp	a,#1
1175  0003 2711          	jreq	L231
1176  0005 4d            	tnz	a
1177  0006 270e          	jreq	L231
1178  0008 ae0112        	ldw	x,#274
1179  000b 89            	pushw	x
1180  000c 5f            	clrw	x
1181  000d 89            	pushw	x
1182  000e ae0008        	ldw	x,#L171
1183  0011 cd0000        	call	_assert_failed
1185  0014 5b04          	addw	sp,#4
1186  0016               L231:
1187                     ; 276   if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
1189  0016 7b01          	ld	a,(OFST+1,sp)
1190  0018 2706          	jreq	L773
1191                     ; 278     UART2->CR5 |= UART2_CR5_IRLP;
1193  001a 72145248      	bset	21064,#2
1195  001e 2004          	jra	L104
1196  0020               L773:
1197                     ; 282     UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
1199  0020 72155248      	bres	21064,#2
1200  0024               L104:
1201                     ; 284 }
1204  0024 84            	pop	a
1205  0025 81            	ret	
1241                     ; 292 void UART2_IrDACmd(FunctionalState NewState)
1241                     ; 293 {
1242                     .text:	section	.text,new
1243  0000               _UART2_IrDACmd:
1245  0000 88            	push	a
1246       00000000      OFST:	set	0
1249                     ; 295   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1251  0001 4d            	tnz	a
1252  0002 2711          	jreq	L441
1253  0004 4a            	dec	a
1254  0005 270e          	jreq	L441
1255  0007 ae0127        	ldw	x,#295
1256  000a 89            	pushw	x
1257  000b 5f            	clrw	x
1258  000c 89            	pushw	x
1259  000d ae0008        	ldw	x,#L171
1260  0010 cd0000        	call	_assert_failed
1262  0013 5b04          	addw	sp,#4
1263  0015               L441:
1264                     ; 297   if (NewState != DISABLE)
1266  0015 7b01          	ld	a,(OFST+1,sp)
1267  0017 2706          	jreq	L124
1268                     ; 300     UART2->CR5 |= UART2_CR5_IREN;
1270  0019 72125248      	bset	21064,#1
1272  001d 2004          	jra	L324
1273  001f               L124:
1274                     ; 305     UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
1276  001f 72135248      	bres	21064,#1
1277  0023               L324:
1278                     ; 307 }
1281  0023 84            	pop	a
1282  0024 81            	ret	
1342                     ; 316 void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
1342                     ; 317 {
1343                     .text:	section	.text,new
1344  0000               _UART2_LINBreakDetectionConfig:
1346  0000 88            	push	a
1347       00000000      OFST:	set	0
1350                     ; 319   assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
1352  0001 4d            	tnz	a
1353  0002 2711          	jreq	L651
1354  0004 4a            	dec	a
1355  0005 270e          	jreq	L651
1356  0007 ae013f        	ldw	x,#319
1357  000a 89            	pushw	x
1358  000b 5f            	clrw	x
1359  000c 89            	pushw	x
1360  000d ae0008        	ldw	x,#L171
1361  0010 cd0000        	call	_assert_failed
1363  0013 5b04          	addw	sp,#4
1364  0015               L651:
1365                     ; 321   if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
1367  0015 7b01          	ld	a,(OFST+1,sp)
1368  0017 2706          	jreq	L354
1369                     ; 323     UART2->CR4 |= UART2_CR4_LBDL;
1371  0019 721a5247      	bset	21063,#5
1373  001d 2004          	jra	L554
1374  001f               L354:
1375                     ; 327     UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
1377  001f 721b5247      	bres	21063,#5
1378  0023               L554:
1379                     ; 329 }
1382  0023 84            	pop	a
1383  0024 81            	ret	
1505                     ; 341 void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
1505                     ; 342                      UART2_LinAutosync_TypeDef UART2_Autosync, 
1505                     ; 343                      UART2_LinDivUp_TypeDef UART2_DivUp)
1505                     ; 344 {
1506                     .text:	section	.text,new
1507  0000               _UART2_LINConfig:
1509  0000 89            	pushw	x
1510       00000000      OFST:	set	0
1513                     ; 346   assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
1515  0001 9e            	ld	a,xh
1516  0002 4d            	tnz	a
1517  0003 2709          	jreq	L071
1518  0005 9e            	ld	a,xh
1519  0006 4a            	dec	a
1520  0007 2705          	jreq	L071
1521  0009 ae015a        	ldw	x,#346
1522  000c ad46          	call	LC008
1523  000e               L071:
1524                     ; 347   assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
1526  000e 7b02          	ld	a,(OFST+2,sp)
1527  0010 4a            	dec	a
1528  0011 2709          	jreq	L002
1529  0013 7b02          	ld	a,(OFST+2,sp)
1530  0015 2705          	jreq	L002
1531  0017 ae015b        	ldw	x,#347
1532  001a ad38          	call	LC008
1533  001c               L002:
1534                     ; 348   assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
1536  001c 7b05          	ld	a,(OFST+5,sp)
1537  001e 2708          	jreq	L012
1538  0020 4a            	dec	a
1539  0021 2705          	jreq	L012
1540  0023 ae015c        	ldw	x,#348
1541  0026 ad2c          	call	LC008
1542  0028               L012:
1543                     ; 350   if (UART2_Mode != UART2_LIN_MODE_MASTER)
1545  0028 7b01          	ld	a,(OFST+1,sp)
1546  002a 2706          	jreq	L535
1547                     ; 352     UART2->CR6 |=  UART2_CR6_LSLV;
1549  002c 721a5249      	bset	21065,#5
1551  0030 2004          	jra	L735
1552  0032               L535:
1553                     ; 356     UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
1555  0032 721b5249      	bres	21065,#5
1556  0036               L735:
1557                     ; 359   if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
1559  0036 7b02          	ld	a,(OFST+2,sp)
1560  0038 2706          	jreq	L145
1561                     ; 361     UART2->CR6 |=  UART2_CR6_LASE ;
1563  003a 72185249      	bset	21065,#4
1565  003e 2004          	jra	L345
1566  0040               L145:
1567                     ; 365     UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
1569  0040 72195249      	bres	21065,#4
1570  0044               L345:
1571                     ; 368   if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
1573  0044 7b05          	ld	a,(OFST+5,sp)
1574  0046 2706          	jreq	L545
1575                     ; 370     UART2->CR6 |=  UART2_CR6_LDUM;
1577  0048 721e5249      	bset	21065,#7
1579  004c 2004          	jra	L745
1580  004e               L545:
1581                     ; 374     UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
1583  004e 721f5249      	bres	21065,#7
1584  0052               L745:
1585                     ; 376 }
1588  0052 85            	popw	x
1589  0053 81            	ret	
1590  0054               LC008:
1591  0054 89            	pushw	x
1592  0055 5f            	clrw	x
1593  0056 89            	pushw	x
1594  0057 ae0008        	ldw	x,#L171
1595  005a cd0000        	call	_assert_failed
1597  005d 5b04          	addw	sp,#4
1598  005f 81            	ret	
1634                     ; 384 void UART2_LINCmd(FunctionalState NewState)
1634                     ; 385 {
1635                     .text:	section	.text,new
1636  0000               _UART2_LINCmd:
1638  0000 88            	push	a
1639       00000000      OFST:	set	0
1642                     ; 386   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1644  0001 4d            	tnz	a
1645  0002 2711          	jreq	L222
1646  0004 4a            	dec	a
1647  0005 270e          	jreq	L222
1648  0007 ae0182        	ldw	x,#386
1649  000a 89            	pushw	x
1650  000b 5f            	clrw	x
1651  000c 89            	pushw	x
1652  000d ae0008        	ldw	x,#L171
1653  0010 cd0000        	call	_assert_failed
1655  0013 5b04          	addw	sp,#4
1656  0015               L222:
1657                     ; 388   if (NewState != DISABLE)
1659  0015 7b01          	ld	a,(OFST+1,sp)
1660  0017 2706          	jreq	L765
1661                     ; 391     UART2->CR3 |= UART2_CR3_LINEN;
1663  0019 721c5246      	bset	21062,#6
1665  001d 2004          	jra	L175
1666  001f               L765:
1667                     ; 396     UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
1669  001f 721d5246      	bres	21062,#6
1670  0023               L175:
1671                     ; 398 }
1674  0023 84            	pop	a
1675  0024 81            	ret	
1711                     ; 406 void UART2_SmartCardCmd(FunctionalState NewState)
1711                     ; 407 {
1712                     .text:	section	.text,new
1713  0000               _UART2_SmartCardCmd:
1715  0000 88            	push	a
1716       00000000      OFST:	set	0
1719                     ; 409   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1721  0001 4d            	tnz	a
1722  0002 2711          	jreq	L432
1723  0004 4a            	dec	a
1724  0005 270e          	jreq	L432
1725  0007 ae0199        	ldw	x,#409
1726  000a 89            	pushw	x
1727  000b 5f            	clrw	x
1728  000c 89            	pushw	x
1729  000d ae0008        	ldw	x,#L171
1730  0010 cd0000        	call	_assert_failed
1732  0013 5b04          	addw	sp,#4
1733  0015               L432:
1734                     ; 411   if (NewState != DISABLE)
1736  0015 7b01          	ld	a,(OFST+1,sp)
1737  0017 2706          	jreq	L116
1738                     ; 414     UART2->CR5 |= UART2_CR5_SCEN;
1740  0019 721a5248      	bset	21064,#5
1742  001d 2004          	jra	L316
1743  001f               L116:
1744                     ; 419     UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
1746  001f 721b5248      	bres	21064,#5
1747  0023               L316:
1748                     ; 421 }
1751  0023 84            	pop	a
1752  0024 81            	ret	
1789                     ; 429 void UART2_SmartCardNACKCmd(FunctionalState NewState)
1789                     ; 430 {
1790                     .text:	section	.text,new
1791  0000               _UART2_SmartCardNACKCmd:
1793  0000 88            	push	a
1794       00000000      OFST:	set	0
1797                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1799  0001 4d            	tnz	a
1800  0002 2711          	jreq	L642
1801  0004 4a            	dec	a
1802  0005 270e          	jreq	L642
1803  0007 ae01b0        	ldw	x,#432
1804  000a 89            	pushw	x
1805  000b 5f            	clrw	x
1806  000c 89            	pushw	x
1807  000d ae0008        	ldw	x,#L171
1808  0010 cd0000        	call	_assert_failed
1810  0013 5b04          	addw	sp,#4
1811  0015               L642:
1812                     ; 434   if (NewState != DISABLE)
1814  0015 7b01          	ld	a,(OFST+1,sp)
1815  0017 2706          	jreq	L336
1816                     ; 437     UART2->CR5 |= UART2_CR5_NACK;
1818  0019 72185248      	bset	21064,#4
1820  001d 2004          	jra	L536
1821  001f               L336:
1822                     ; 442     UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
1824  001f 72195248      	bres	21064,#4
1825  0023               L536:
1826                     ; 444 }
1829  0023 84            	pop	a
1830  0024 81            	ret	
1888                     ; 452 void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
1888                     ; 453 {
1889                     .text:	section	.text,new
1890  0000               _UART2_WakeUpConfig:
1892  0000 88            	push	a
1893       00000000      OFST:	set	0
1896                     ; 454   assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
1898  0001 4d            	tnz	a
1899  0002 2712          	jreq	L062
1900  0004 a108          	cp	a,#8
1901  0006 270e          	jreq	L062
1902  0008 ae01c6        	ldw	x,#454
1903  000b 89            	pushw	x
1904  000c 5f            	clrw	x
1905  000d 89            	pushw	x
1906  000e ae0008        	ldw	x,#L171
1907  0011 cd0000        	call	_assert_failed
1909  0014 5b04          	addw	sp,#4
1910  0016               L062:
1911                     ; 456   UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
1913  0016 72175244      	bres	21060,#3
1914                     ; 457   UART2->CR1 |= (uint8_t)UART2_WakeUp;
1916  001a c65244        	ld	a,21060
1917  001d 1a01          	or	a,(OFST+1,sp)
1918  001f c75244        	ld	21060,a
1919                     ; 458 }
1922  0022 84            	pop	a
1923  0023 81            	ret	
1960                     ; 466 void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
1960                     ; 467 {
1961                     .text:	section	.text,new
1962  0000               _UART2_ReceiverWakeUpCmd:
1964  0000 88            	push	a
1965       00000000      OFST:	set	0
1968                     ; 468   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1970  0001 4d            	tnz	a
1971  0002 2711          	jreq	L272
1972  0004 4a            	dec	a
1973  0005 270e          	jreq	L272
1974  0007 ae01d4        	ldw	x,#468
1975  000a 89            	pushw	x
1976  000b 5f            	clrw	x
1977  000c 89            	pushw	x
1978  000d ae0008        	ldw	x,#L171
1979  0010 cd0000        	call	_assert_failed
1981  0013 5b04          	addw	sp,#4
1982  0015               L272:
1983                     ; 470   if (NewState != DISABLE)
1985  0015 7b01          	ld	a,(OFST+1,sp)
1986  0017 2706          	jreq	L307
1987                     ; 473     UART2->CR2 |= UART2_CR2_RWU;
1989  0019 72125245      	bset	21061,#1
1991  001d 2004          	jra	L507
1992  001f               L307:
1993                     ; 478     UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
1995  001f 72135245      	bres	21061,#1
1996  0023               L507:
1997                     ; 480 }
2000  0023 84            	pop	a
2001  0024 81            	ret	
2024                     ; 487 uint8_t UART2_ReceiveData8(void)
2024                     ; 488 {
2025                     .text:	section	.text,new
2026  0000               _UART2_ReceiveData8:
2030                     ; 489   return ((uint8_t)UART2->DR);
2032  0000 c65241        	ld	a,21057
2035  0003 81            	ret	
2067                     ; 497 uint16_t UART2_ReceiveData9(void)
2067                     ; 498 {
2068                     .text:	section	.text,new
2069  0000               _UART2_ReceiveData9:
2071  0000 89            	pushw	x
2072       00000002      OFST:	set	2
2075                     ; 499   uint16_t temp = 0;
2077                     ; 501   temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
2079  0001 c65244        	ld	a,21060
2080  0004 a480          	and	a,#128
2081  0006 5f            	clrw	x
2082  0007 02            	rlwa	x,a
2083  0008 58            	sllw	x
2084  0009 1f01          	ldw	(OFST-1,sp),x
2086                     ; 503   return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
2088  000b c65241        	ld	a,21057
2089  000e 5f            	clrw	x
2090  000f 97            	ld	xl,a
2091  0010 01            	rrwa	x,a
2092  0011 1a02          	or	a,(OFST+0,sp)
2093  0013 01            	rrwa	x,a
2094  0014 1a01          	or	a,(OFST-1,sp)
2095  0016 a401          	and	a,#1
2096  0018 01            	rrwa	x,a
2099  0019 5b02          	addw	sp,#2
2100  001b 81            	ret	
2132                     ; 511 void UART2_SendData8(uint8_t Data)
2132                     ; 512 {
2133                     .text:	section	.text,new
2134  0000               _UART2_SendData8:
2138                     ; 514   UART2->DR = Data;
2140  0000 c75241        	ld	21057,a
2141                     ; 515 }
2144  0003 81            	ret	
2176                     ; 522 void UART2_SendData9(uint16_t Data)
2176                     ; 523 {
2177                     .text:	section	.text,new
2178  0000               _UART2_SendData9:
2180  0000 89            	pushw	x
2181       00000000      OFST:	set	0
2184                     ; 525   UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
2186  0001 721d5244      	bres	21060,#6
2187                     ; 528   UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
2189  0005 54            	srlw	x
2190  0006 54            	srlw	x
2191  0007 9f            	ld	a,xl
2192  0008 a440          	and	a,#64
2193  000a ca5244        	or	a,21060
2194  000d c75244        	ld	21060,a
2195                     ; 531   UART2->DR   = (uint8_t)(Data);                    
2197  0010 7b02          	ld	a,(OFST+2,sp)
2198  0012 c75241        	ld	21057,a
2199                     ; 532 }
2202  0015 85            	popw	x
2203  0016 81            	ret	
2226                     ; 539 void UART2_SendBreak(void)
2226                     ; 540 {
2227                     .text:	section	.text,new
2228  0000               _UART2_SendBreak:
2232                     ; 541   UART2->CR2 |= UART2_CR2_SBK;
2234  0000 72105245      	bset	21061,#0
2235                     ; 542 }
2238  0004 81            	ret	
2271                     ; 549 void UART2_SetAddress(uint8_t UART2_Address)
2271                     ; 550 {
2272                     .text:	section	.text,new
2273  0000               _UART2_SetAddress:
2275  0000 88            	push	a
2276       00000000      OFST:	set	0
2279                     ; 552   assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
2281  0001 a110          	cp	a,#16
2282  0003 250e          	jrult	L413
2283  0005 ae0228        	ldw	x,#552
2284  0008 89            	pushw	x
2285  0009 5f            	clrw	x
2286  000a 89            	pushw	x
2287  000b ae0008        	ldw	x,#L171
2288  000e cd0000        	call	_assert_failed
2290  0011 5b04          	addw	sp,#4
2291  0013               L413:
2292                     ; 555   UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
2294  0013 c65247        	ld	a,21063
2295  0016 a4f0          	and	a,#240
2296  0018 c75247        	ld	21063,a
2297                     ; 557   UART2->CR4 |= UART2_Address;
2299  001b c65247        	ld	a,21063
2300  001e 1a01          	or	a,(OFST+1,sp)
2301  0020 c75247        	ld	21063,a
2302                     ; 558 }
2305  0023 84            	pop	a
2306  0024 81            	ret	
2338                     ; 566 void UART2_SetGuardTime(uint8_t UART2_GuardTime)
2338                     ; 567 {
2339                     .text:	section	.text,new
2340  0000               _UART2_SetGuardTime:
2344                     ; 569   UART2->GTR = UART2_GuardTime;
2346  0000 c7524a        	ld	21066,a
2347                     ; 570 }
2350  0003 81            	ret	
2382                     ; 594 void UART2_SetPrescaler(uint8_t UART2_Prescaler)
2382                     ; 595 {
2383                     .text:	section	.text,new
2384  0000               _UART2_SetPrescaler:
2388                     ; 597   UART2->PSCR = UART2_Prescaler;
2390  0000 c7524b        	ld	21067,a
2391                     ; 598 }
2394  0003 81            	ret	
2552                     ; 606 FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
2552                     ; 607 {
2553                     .text:	section	.text,new
2554  0000               _UART2_GetFlagStatus:
2556  0000 89            	pushw	x
2557  0001 88            	push	a
2558       00000001      OFST:	set	1
2561                     ; 608   FlagStatus status = RESET;
2563                     ; 611   assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
2565  0002 a30080        	cpw	x,#128
2566  0005 2745          	jreq	L233
2567  0007 a30040        	cpw	x,#64
2568  000a 2740          	jreq	L233
2569  000c a30020        	cpw	x,#32
2570  000f 273b          	jreq	L233
2571  0011 a30010        	cpw	x,#16
2572  0014 2736          	jreq	L233
2573  0016 a30008        	cpw	x,#8
2574  0019 2731          	jreq	L233
2575  001b a30004        	cpw	x,#4
2576  001e 272c          	jreq	L233
2577  0020 a30002        	cpw	x,#2
2578  0023 2727          	jreq	L233
2579  0025 a30001        	cpw	x,#1
2580  0028 2722          	jreq	L233
2581  002a a30101        	cpw	x,#257
2582  002d 271d          	jreq	L233
2583  002f a30301        	cpw	x,#769
2584  0032 2718          	jreq	L233
2585  0034 a30302        	cpw	x,#770
2586  0037 2713          	jreq	L233
2587  0039 a30210        	cpw	x,#528
2588  003c 270e          	jreq	L233
2589  003e ae0263        	ldw	x,#611
2590  0041 89            	pushw	x
2591  0042 5f            	clrw	x
2592  0043 89            	pushw	x
2593  0044 ae0008        	ldw	x,#L171
2594  0047 cd0000        	call	_assert_failed
2596  004a 5b04          	addw	sp,#4
2597  004c               L233:
2598                     ; 614   if (UART2_FLAG == UART2_FLAG_LBDF)
2600  004c 1e02          	ldw	x,(OFST+1,sp)
2601  004e a30210        	cpw	x,#528
2602  0051 2609          	jrne	L5211
2603                     ; 616     if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2605  0053 c65247        	ld	a,21063
2606  0056 1503          	bcp	a,(OFST+2,sp)
2607  0058 2725          	jreq	L1511
2608                     ; 619       status = SET;
2610  005a 201f          	jp	LC010
2611                     ; 624       status = RESET;
2612  005c               L5211:
2613                     ; 627   else if (UART2_FLAG == UART2_FLAG_SBK)
2615  005c a30101        	cpw	x,#257
2616  005f 2609          	jrne	L5311
2617                     ; 629     if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2619  0061 c65245        	ld	a,21061
2620  0064 1503          	bcp	a,(OFST+2,sp)
2621  0066 2717          	jreq	L1511
2622                     ; 632       status = SET;
2624  0068 2011          	jp	LC010
2625                     ; 637       status = RESET;
2626  006a               L5311:
2627                     ; 640   else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
2629  006a a30302        	cpw	x,#770
2630  006d 2705          	jreq	L7411
2632  006f a30301        	cpw	x,#769
2633  0072 260f          	jrne	L5411
2634  0074               L7411:
2635                     ; 642     if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2637  0074 c65249        	ld	a,21065
2638  0077 1503          	bcp	a,(OFST+2,sp)
2639  0079 2704          	jreq	L1511
2640                     ; 645       status = SET;
2642  007b               LC010:
2646  007b a601          	ld	a,#1
2649  007d 2001          	jra	L3311
2650  007f               L1511:
2651                     ; 650       status = RESET;
2656  007f 4f            	clr	a
2658  0080               L3311:
2659                     ; 668   return  status;
2663  0080 5b03          	addw	sp,#3
2664  0082 81            	ret	
2665  0083               L5411:
2666                     ; 655     if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2668  0083 c65240        	ld	a,21056
2669  0086 1503          	bcp	a,(OFST+2,sp)
2670  0088 27f5          	jreq	L1511
2671                     ; 658       status = SET;
2673  008a 20ef          	jp	LC010
2674                     ; 663       status = RESET;
2710                     ; 699 void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
2710                     ; 700 {
2711                     .text:	section	.text,new
2712  0000               _UART2_ClearFlag:
2714  0000 89            	pushw	x
2715       00000000      OFST:	set	0
2718                     ; 701   assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
2720  0001 a30020        	cpw	x,#32
2721  0004 271d          	jreq	L443
2722  0006 a30302        	cpw	x,#770
2723  0009 2718          	jreq	L443
2724  000b a30301        	cpw	x,#769
2725  000e 2713          	jreq	L443
2726  0010 a30210        	cpw	x,#528
2727  0013 270e          	jreq	L443
2728  0015 ae02bd        	ldw	x,#701
2729  0018 89            	pushw	x
2730  0019 5f            	clrw	x
2731  001a 89            	pushw	x
2732  001b ae0008        	ldw	x,#L171
2733  001e cd0000        	call	_assert_failed
2735  0021 5b04          	addw	sp,#4
2736  0023               L443:
2737                     ; 704   if (UART2_FLAG == UART2_FLAG_RXNE)
2739  0023 1e01          	ldw	x,(OFST+1,sp)
2740  0025 a30020        	cpw	x,#32
2741  0028 2606          	jrne	L1021
2742                     ; 706     UART2->SR = (uint8_t)~(UART2_SR_RXNE);
2744  002a 35df5240      	mov	21056,#223
2746  002e 201a          	jra	L3021
2747  0030               L1021:
2748                     ; 709   else if (UART2_FLAG == UART2_FLAG_LBDF)
2750  0030 a30210        	cpw	x,#528
2751  0033 2606          	jrne	L5021
2752                     ; 711     UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
2754  0035 72195247      	bres	21063,#4
2756  0039 200f          	jra	L3021
2757  003b               L5021:
2758                     ; 714   else if (UART2_FLAG == UART2_FLAG_LHDF)
2760  003b a30302        	cpw	x,#770
2761  003e 2606          	jrne	L1121
2762                     ; 716     UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
2764  0040 72135249      	bres	21065,#1
2766  0044 2004          	jra	L3021
2767  0046               L1121:
2768                     ; 721     UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
2770  0046 72115249      	bres	21065,#0
2771  004a               L3021:
2772                     ; 723 }
2775  004a 85            	popw	x
2776  004b 81            	ret	
2851                     ; 738 ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
2851                     ; 739 {
2852                     .text:	section	.text,new
2853  0000               _UART2_GetITStatus:
2855  0000 89            	pushw	x
2856  0001 89            	pushw	x
2857       00000002      OFST:	set	2
2860                     ; 740   ITStatus pendingbitstatus = RESET;
2862                     ; 741   uint8_t itpos = 0;
2864                     ; 742   uint8_t itmask1 = 0;
2866                     ; 743   uint8_t itmask2 = 0;
2868                     ; 744   uint8_t enablestatus = 0;
2870                     ; 747   assert_param(IS_UART2_GET_IT_OK(UART2_IT));
2872  0002 a30277        	cpw	x,#631
2873  0005 2731          	jreq	L653
2874  0007 a30266        	cpw	x,#614
2875  000a 272c          	jreq	L653
2876  000c a30255        	cpw	x,#597
2877  000f 2727          	jreq	L653
2878  0011 a30244        	cpw	x,#580
2879  0014 2722          	jreq	L653
2880  0016 a30235        	cpw	x,#565
2881  0019 271d          	jreq	L653
2882  001b a30346        	cpw	x,#838
2883  001e 2718          	jreq	L653
2884  0020 a30412        	cpw	x,#1042
2885  0023 2713          	jreq	L653
2886  0025 a30100        	cpw	x,#256
2887  0028 270e          	jreq	L653
2888  002a ae02eb        	ldw	x,#747
2889  002d 89            	pushw	x
2890  002e 5f            	clrw	x
2891  002f 89            	pushw	x
2892  0030 ae0008        	ldw	x,#L171
2893  0033 cd0000        	call	_assert_failed
2895  0036 5b04          	addw	sp,#4
2896  0038               L653:
2897                     ; 750   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
2899  0038 7b04          	ld	a,(OFST+2,sp)
2900  003a a40f          	and	a,#15
2901  003c 5f            	clrw	x
2902  003d 97            	ld	xl,a
2903  003e a601          	ld	a,#1
2904  0040 5d            	tnzw	x
2905  0041 2704          	jreq	L263
2906  0043               L463:
2907  0043 48            	sll	a
2908  0044 5a            	decw	x
2909  0045 26fc          	jrne	L463
2910  0047               L263:
2911  0047 6b01          	ld	(OFST-1,sp),a
2913                     ; 752   itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
2915  0049 7b04          	ld	a,(OFST+2,sp)
2916  004b 4e            	swap	a
2917  004c a40f          	and	a,#15
2918  004e 6b02          	ld	(OFST+0,sp),a
2920                     ; 754   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2922  0050 5f            	clrw	x
2923  0051 97            	ld	xl,a
2924  0052 a601          	ld	a,#1
2925  0054 5d            	tnzw	x
2926  0055 2704          	jreq	L663
2927  0057               L073:
2928  0057 48            	sll	a
2929  0058 5a            	decw	x
2930  0059 26fc          	jrne	L073
2931  005b               L663:
2932  005b 6b02          	ld	(OFST+0,sp),a
2934                     ; 757   if (UART2_IT == UART2_IT_PE)
2936  005d 1e03          	ldw	x,(OFST+1,sp)
2937  005f a30100        	cpw	x,#256
2938  0062 260c          	jrne	L7421
2939                     ; 760     enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
2941  0064 c65244        	ld	a,21060
2942  0067 1402          	and	a,(OFST+0,sp)
2943  0069 6b02          	ld	(OFST+0,sp),a
2945                     ; 763     if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
2947  006b c65240        	ld	a,21056
2949                     ; 766       pendingbitstatus = SET;
2951  006e 2020          	jp	LC013
2952                     ; 771       pendingbitstatus = RESET;
2953  0070               L7421:
2954                     ; 774   else if (UART2_IT == UART2_IT_LBDF)
2956  0070 a30346        	cpw	x,#838
2957  0073 260c          	jrne	L7521
2958                     ; 777     enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
2960  0075 c65247        	ld	a,21063
2961  0078 1402          	and	a,(OFST+0,sp)
2962  007a 6b02          	ld	(OFST+0,sp),a
2964                     ; 779     if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2966  007c c65247        	ld	a,21063
2968                     ; 782       pendingbitstatus = SET;
2970  007f 200f          	jp	LC013
2971                     ; 787       pendingbitstatus = RESET;
2972  0081               L7521:
2973                     ; 790   else if (UART2_IT == UART2_IT_LHDF)
2975  0081 a30412        	cpw	x,#1042
2976  0084 2616          	jrne	L7621
2977                     ; 793     enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
2979  0086 c65249        	ld	a,21065
2980  0089 1402          	and	a,(OFST+0,sp)
2981  008b 6b02          	ld	(OFST+0,sp),a
2983                     ; 795     if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2985  008d c65249        	ld	a,21065
2987  0090               LC013:
2988  0090 1501          	bcp	a,(OFST-1,sp)
2989  0092 271a          	jreq	L7721
2990  0094 7b02          	ld	a,(OFST+0,sp)
2991  0096 2716          	jreq	L7721
2992                     ; 798       pendingbitstatus = SET;
2994  0098               LC012:
2998  0098 a601          	ld	a,#1
3001  009a 2013          	jra	L5521
3002                     ; 803       pendingbitstatus = RESET;
3003  009c               L7621:
3004                     ; 809     enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
3006  009c c65245        	ld	a,21061
3007  009f 1402          	and	a,(OFST+0,sp)
3008  00a1 6b02          	ld	(OFST+0,sp),a
3010                     ; 811     if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
3012  00a3 c65240        	ld	a,21056
3013  00a6 1501          	bcp	a,(OFST-1,sp)
3014  00a8 2704          	jreq	L7721
3016  00aa 7b02          	ld	a,(OFST+0,sp)
3017                     ; 814       pendingbitstatus = SET;
3019  00ac 26ea          	jrne	LC012
3020  00ae               L7721:
3021                     ; 819       pendingbitstatus = RESET;
3026  00ae 4f            	clr	a
3028  00af               L5521:
3029                     ; 823   return  pendingbitstatus;
3033  00af 5b04          	addw	sp,#4
3034  00b1 81            	ret	
3071                     ; 852 void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
3071                     ; 853 {
3072                     .text:	section	.text,new
3073  0000               _UART2_ClearITPendingBit:
3075  0000 89            	pushw	x
3076       00000000      OFST:	set	0
3079                     ; 854   assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
3081  0001 a30255        	cpw	x,#597
3082  0004 2718          	jreq	L004
3083  0006 a30412        	cpw	x,#1042
3084  0009 2713          	jreq	L004
3085  000b a30346        	cpw	x,#838
3086  000e 270e          	jreq	L004
3087  0010 ae0356        	ldw	x,#854
3088  0013 89            	pushw	x
3089  0014 5f            	clrw	x
3090  0015 89            	pushw	x
3091  0016 ae0008        	ldw	x,#L171
3092  0019 cd0000        	call	_assert_failed
3094  001c 5b04          	addw	sp,#4
3095  001e               L004:
3096                     ; 857   if (UART2_IT == UART2_IT_RXNE)
3098  001e 1e01          	ldw	x,(OFST+1,sp)
3099  0020 a30255        	cpw	x,#597
3100  0023 2606          	jrne	L1231
3101                     ; 859     UART2->SR = (uint8_t)~(UART2_SR_RXNE);
3103  0025 35df5240      	mov	21056,#223
3105  0029 200f          	jra	L3231
3106  002b               L1231:
3107                     ; 862   else if (UART2_IT == UART2_IT_LBDF)
3109  002b a30346        	cpw	x,#838
3110  002e 2606          	jrne	L5231
3111                     ; 864     UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
3113  0030 72195247      	bres	21063,#4
3115  0034 2004          	jra	L3231
3116  0036               L5231:
3117                     ; 869     UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
3119  0036 72135249      	bres	21065,#1
3120  003a               L3231:
3121                     ; 871 }
3124  003a 85            	popw	x
3125  003b 81            	ret	
3138                     	xdef	_UART2_ClearITPendingBit
3139                     	xdef	_UART2_GetITStatus
3140                     	xdef	_UART2_ClearFlag
3141                     	xdef	_UART2_GetFlagStatus
3142                     	xdef	_UART2_SetPrescaler
3143                     	xdef	_UART2_SetGuardTime
3144                     	xdef	_UART2_SetAddress
3145                     	xdef	_UART2_SendBreak
3146                     	xdef	_UART2_SendData9
3147                     	xdef	_UART2_SendData8
3148                     	xdef	_UART2_ReceiveData9
3149                     	xdef	_UART2_ReceiveData8
3150                     	xdef	_UART2_ReceiverWakeUpCmd
3151                     	xdef	_UART2_WakeUpConfig
3152                     	xdef	_UART2_SmartCardNACKCmd
3153                     	xdef	_UART2_SmartCardCmd
3154                     	xdef	_UART2_LINCmd
3155                     	xdef	_UART2_LINConfig
3156                     	xdef	_UART2_LINBreakDetectionConfig
3157                     	xdef	_UART2_IrDACmd
3158                     	xdef	_UART2_IrDAConfig
3159                     	xdef	_UART2_ITConfig
3160                     	xdef	_UART2_Cmd
3161                     	xdef	_UART2_Init
3162                     	xdef	_UART2_DeInit
3163                     	xref	_assert_failed
3164                     	xref	_CLK_GetClockFreq
3165                     	switch	.const
3166  0008               L171:
3167  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3168  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3169  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
3170  003e 5f7561727432  	dc.b	"_uart2.c",0
3171                     	xref.b	c_lreg
3172                     	xref.b	c_x
3192                     	xref	c_lsub
3193                     	xref	c_smul
3194                     	xref	c_ludv
3195                     	xref	c_rtol
3196                     	xref	c_llsh
3197                     	xref	c_lcmp
3198                     	xref	c_ltor
3199                     	end
