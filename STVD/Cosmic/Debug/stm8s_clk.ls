   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  21                     .const:	section	.text
  22  0000               _HSIDivFactor:
  23  0000 01            	dc.b	1
  24  0001 02            	dc.b	2
  25  0002 04            	dc.b	4
  26  0003 08            	dc.b	8
  27  0004               _CLKPrescTable:
  28  0004 01            	dc.b	1
  29  0005 02            	dc.b	2
  30  0006 04            	dc.b	4
  31  0007 08            	dc.b	8
  32  0008 0a            	dc.b	10
  33  0009 10            	dc.b	16
  34  000a 14            	dc.b	20
  35  000b 28            	dc.b	40
  64                     ; 72 void CLK_DeInit(void)
  64                     ; 73 {
  66                     .text:	section	.text,new
  67  0000               _CLK_DeInit:
  71                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  73  0000 350150c0      	mov	20672,#1
  74                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  76  0004 725f50c1      	clr	20673
  77                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  79  0008 35e150c4      	mov	20676,#225
  80                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  82  000c 725f50c5      	clr	20677
  83                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  85  0010 351850c6      	mov	20678,#24
  86                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  88  0014 35ff50c7      	mov	20679,#255
  89                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  91  0018 35ff50ca      	mov	20682,#255
  92                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  94  001c 725f50c8      	clr	20680
  95                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  97  0020 725f50c9      	clr	20681
  99  0024               L52:
 100                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 102  0024 720050c9fb    	btjt	20681,#0,L52
 103                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 105  0029 725f50c9      	clr	20681
 106                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 108  002d 725f50cc      	clr	20684
 109                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 111  0031 725f50cd      	clr	20685
 112                     ; 88 }
 115  0035 81            	ret	
 172                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 172                     ; 100 {
 173                     .text:	section	.text,new
 174  0000               _CLK_FastHaltWakeUpCmd:
 176  0000 88            	push	a
 177       00000000      OFST:	set	0
 180                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 182  0001 4d            	tnz	a
 183  0002 2711          	jreq	L41
 184  0004 4a            	dec	a
 185  0005 270e          	jreq	L41
 186  0007 ae0066        	ldw	x,#102
 187  000a 89            	pushw	x
 188  000b 5f            	clrw	x
 189  000c 89            	pushw	x
 190  000d ae000c        	ldw	x,#L75
 191  0010 cd0000        	call	_assert_failed
 193  0013 5b04          	addw	sp,#4
 194  0015               L41:
 195                     ; 104   if (NewState != DISABLE)
 197  0015 7b01          	ld	a,(OFST+1,sp)
 198  0017 2706          	jreq	L16
 199                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 201  0019 721450c0      	bset	20672,#2
 203  001d 2004          	jra	L36
 204  001f               L16:
 205                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 207  001f 721550c0      	bres	20672,#2
 208  0023               L36:
 209                     ; 114 }
 212  0023 84            	pop	a
 213  0024 81            	ret	
 249                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 249                     ; 122 {
 250                     .text:	section	.text,new
 251  0000               _CLK_HSECmd:
 253  0000 88            	push	a
 254       00000000      OFST:	set	0
 257                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 259  0001 4d            	tnz	a
 260  0002 2711          	jreq	L62
 261  0004 4a            	dec	a
 262  0005 270e          	jreq	L62
 263  0007 ae007c        	ldw	x,#124
 264  000a 89            	pushw	x
 265  000b 5f            	clrw	x
 266  000c 89            	pushw	x
 267  000d ae000c        	ldw	x,#L75
 268  0010 cd0000        	call	_assert_failed
 270  0013 5b04          	addw	sp,#4
 271  0015               L62:
 272                     ; 126   if (NewState != DISABLE)
 274  0015 7b01          	ld	a,(OFST+1,sp)
 275  0017 2706          	jreq	L301
 276                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 278  0019 721050c1      	bset	20673,#0
 280  001d 2004          	jra	L501
 281  001f               L301:
 282                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 284  001f 721150c1      	bres	20673,#0
 285  0023               L501:
 286                     ; 136 }
 289  0023 84            	pop	a
 290  0024 81            	ret	
 326                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 326                     ; 144 {
 327                     .text:	section	.text,new
 328  0000               _CLK_HSICmd:
 330  0000 88            	push	a
 331       00000000      OFST:	set	0
 334                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 336  0001 4d            	tnz	a
 337  0002 2711          	jreq	L04
 338  0004 4a            	dec	a
 339  0005 270e          	jreq	L04
 340  0007 ae0092        	ldw	x,#146
 341  000a 89            	pushw	x
 342  000b 5f            	clrw	x
 343  000c 89            	pushw	x
 344  000d ae000c        	ldw	x,#L75
 345  0010 cd0000        	call	_assert_failed
 347  0013 5b04          	addw	sp,#4
 348  0015               L04:
 349                     ; 148   if (NewState != DISABLE)
 351  0015 7b01          	ld	a,(OFST+1,sp)
 352  0017 2706          	jreq	L521
 353                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 355  0019 721050c0      	bset	20672,#0
 357  001d 2004          	jra	L721
 358  001f               L521:
 359                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 361  001f 721150c0      	bres	20672,#0
 362  0023               L721:
 363                     ; 158 }
 366  0023 84            	pop	a
 367  0024 81            	ret	
 403                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 403                     ; 167 {
 404                     .text:	section	.text,new
 405  0000               _CLK_LSICmd:
 407  0000 88            	push	a
 408       00000000      OFST:	set	0
 411                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 413  0001 4d            	tnz	a
 414  0002 2711          	jreq	L25
 415  0004 4a            	dec	a
 416  0005 270e          	jreq	L25
 417  0007 ae00a9        	ldw	x,#169
 418  000a 89            	pushw	x
 419  000b 5f            	clrw	x
 420  000c 89            	pushw	x
 421  000d ae000c        	ldw	x,#L75
 422  0010 cd0000        	call	_assert_failed
 424  0013 5b04          	addw	sp,#4
 425  0015               L25:
 426                     ; 171   if (NewState != DISABLE)
 428  0015 7b01          	ld	a,(OFST+1,sp)
 429  0017 2706          	jreq	L741
 430                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 432  0019 721650c0      	bset	20672,#3
 434  001d 2004          	jra	L151
 435  001f               L741:
 436                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 438  001f 721750c0      	bres	20672,#3
 439  0023               L151:
 440                     ; 181 }
 443  0023 84            	pop	a
 444  0024 81            	ret	
 480                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 480                     ; 190 {
 481                     .text:	section	.text,new
 482  0000               _CLK_CCOCmd:
 484  0000 88            	push	a
 485       00000000      OFST:	set	0
 488                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 490  0001 4d            	tnz	a
 491  0002 2711          	jreq	L46
 492  0004 4a            	dec	a
 493  0005 270e          	jreq	L46
 494  0007 ae00c0        	ldw	x,#192
 495  000a 89            	pushw	x
 496  000b 5f            	clrw	x
 497  000c 89            	pushw	x
 498  000d ae000c        	ldw	x,#L75
 499  0010 cd0000        	call	_assert_failed
 501  0013 5b04          	addw	sp,#4
 502  0015               L46:
 503                     ; 194   if (NewState != DISABLE)
 505  0015 7b01          	ld	a,(OFST+1,sp)
 506  0017 2706          	jreq	L171
 507                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 509  0019 721050c9      	bset	20681,#0
 511  001d 2004          	jra	L371
 512  001f               L171:
 513                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 515  001f 721150c9      	bres	20681,#0
 516  0023               L371:
 517                     ; 204 }
 520  0023 84            	pop	a
 521  0024 81            	ret	
 557                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 557                     ; 214 {
 558                     .text:	section	.text,new
 559  0000               _CLK_ClockSwitchCmd:
 561  0000 88            	push	a
 562       00000000      OFST:	set	0
 565                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 567  0001 4d            	tnz	a
 568  0002 2711          	jreq	L67
 569  0004 4a            	dec	a
 570  0005 270e          	jreq	L67
 571  0007 ae00d8        	ldw	x,#216
 572  000a 89            	pushw	x
 573  000b 5f            	clrw	x
 574  000c 89            	pushw	x
 575  000d ae000c        	ldw	x,#L75
 576  0010 cd0000        	call	_assert_failed
 578  0013 5b04          	addw	sp,#4
 579  0015               L67:
 580                     ; 218   if (NewState != DISABLE )
 582  0015 7b01          	ld	a,(OFST+1,sp)
 583  0017 2706          	jreq	L312
 584                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 586  0019 721250c5      	bset	20677,#1
 588  001d 2004          	jra	L512
 589  001f               L312:
 590                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 592  001f 721350c5      	bres	20677,#1
 593  0023               L512:
 594                     ; 228 }
 597  0023 84            	pop	a
 598  0024 81            	ret	
 635                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 635                     ; 239 {
 636                     .text:	section	.text,new
 637  0000               _CLK_SlowActiveHaltWakeUpCmd:
 639  0000 88            	push	a
 640       00000000      OFST:	set	0
 643                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 645  0001 4d            	tnz	a
 646  0002 2711          	jreq	L011
 647  0004 4a            	dec	a
 648  0005 270e          	jreq	L011
 649  0007 ae00f1        	ldw	x,#241
 650  000a 89            	pushw	x
 651  000b 5f            	clrw	x
 652  000c 89            	pushw	x
 653  000d ae000c        	ldw	x,#L75
 654  0010 cd0000        	call	_assert_failed
 656  0013 5b04          	addw	sp,#4
 657  0015               L011:
 658                     ; 243   if (NewState != DISABLE)
 660  0015 7b01          	ld	a,(OFST+1,sp)
 661  0017 2706          	jreq	L532
 662                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 664  0019 721a50c0      	bset	20672,#5
 666  001d 2004          	jra	L732
 667  001f               L532:
 668                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 670  001f 721b50c0      	bres	20672,#5
 671  0023               L732:
 672                     ; 253 }
 675  0023 84            	pop	a
 676  0024 81            	ret	
 836                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 836                     ; 264 {
 837                     .text:	section	.text,new
 838  0000               _CLK_PeripheralClockConfig:
 840  0000 89            	pushw	x
 841       00000000      OFST:	set	0
 844                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 846  0001 9f            	ld	a,xl
 847  0002 4d            	tnz	a
 848  0003 270a          	jreq	L221
 849  0005 9f            	ld	a,xl
 850  0006 4a            	dec	a
 851  0007 2706          	jreq	L221
 852  0009 ae010a        	ldw	x,#266
 853  000c cd0092        	call	LC004
 854  000f               L221:
 855                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 857  000f 7b01          	ld	a,(OFST+1,sp)
 858  0011 272f          	jreq	L231
 859  0013 a101          	cp	a,#1
 860  0015 272b          	jreq	L231
 861  0017 a103          	cp	a,#3
 862  0019 2727          	jreq	L231
 863  001b a104          	cp	a,#4
 864  001d 2723          	jreq	L231
 865  001f a105          	cp	a,#5
 866  0021 271f          	jreq	L231
 867  0023 a104          	cp	a,#4
 868  0025 271b          	jreq	L231
 869  0027 a106          	cp	a,#6
 870  0029 2717          	jreq	L231
 871  002b a107          	cp	a,#7
 872  002d 2713          	jreq	L231
 873  002f a117          	cp	a,#23
 874  0031 270f          	jreq	L231
 875  0033 a113          	cp	a,#19
 876  0035 270b          	jreq	L231
 877  0037 a112          	cp	a,#18
 878  0039 2707          	jreq	L231
 879  003b ae010b        	ldw	x,#267
 880  003e ad52          	call	LC004
 881  0040 7b01          	ld	a,(OFST+1,sp)
 882  0042               L231:
 883                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 885  0042 a510          	bcp	a,#16
 886  0044 2622          	jrne	L323
 887                     ; 271     if (NewState != DISABLE)
 889  0046 0d02          	tnz	(OFST+2,sp)
 890  0048 270d          	jreq	L523
 891                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 893  004a ad3e          	call	LC003
 894  004c 2704          	jreq	L631
 895  004e               L041:
 896  004e 48            	sll	a
 897  004f 5a            	decw	x
 898  0050 26fc          	jrne	L041
 899  0052               L631:
 900  0052 ca50c7        	or	a,20679
 902  0055 200c          	jp	LC002
 903  0057               L523:
 904                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 906  0057 ad31          	call	LC003
 907  0059 2704          	jreq	L241
 908  005b               L441:
 909  005b 48            	sll	a
 910  005c 5a            	decw	x
 911  005d 26fc          	jrne	L441
 912  005f               L241:
 913  005f 43            	cpl	a
 914  0060 c450c7        	and	a,20679
 915  0063               LC002:
 916  0063 c750c7        	ld	20679,a
 917  0066 2020          	jra	L133
 918  0068               L323:
 919                     ; 284     if (NewState != DISABLE)
 921  0068 0d02          	tnz	(OFST+2,sp)
 922  006a 270d          	jreq	L333
 923                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 925  006c ad1c          	call	LC003
 926  006e 2704          	jreq	L641
 927  0070               L051:
 928  0070 48            	sll	a
 929  0071 5a            	decw	x
 930  0072 26fc          	jrne	L051
 931  0074               L641:
 932  0074 ca50ca        	or	a,20682
 934  0077 200c          	jp	LC001
 935  0079               L333:
 936                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 938  0079 ad0f          	call	LC003
 939  007b 2704          	jreq	L251
 940  007d               L451:
 941  007d 48            	sll	a
 942  007e 5a            	decw	x
 943  007f 26fc          	jrne	L451
 944  0081               L251:
 945  0081 43            	cpl	a
 946  0082 c450ca        	and	a,20682
 947  0085               LC001:
 948  0085 c750ca        	ld	20682,a
 949  0088               L133:
 950                     ; 295 }
 953  0088 85            	popw	x
 954  0089 81            	ret	
 955  008a               LC003:
 956  008a a40f          	and	a,#15
 957  008c 5f            	clrw	x
 958  008d 97            	ld	xl,a
 959  008e a601          	ld	a,#1
 960  0090 5d            	tnzw	x
 961  0091 81            	ret	
 962  0092               LC004:
 963  0092 89            	pushw	x
 964  0093 5f            	clrw	x
 965  0094 89            	pushw	x
 966  0095 ae000c        	ldw	x,#L75
 967  0098 cd0000        	call	_assert_failed
 969  009b 5b04          	addw	sp,#4
 970  009d 81            	ret	
1157                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1157                     ; 310 {
1158                     .text:	section	.text,new
1159  0000               _CLK_ClockSwitchConfig:
1161  0000 89            	pushw	x
1162  0001 5204          	subw	sp,#4
1163       00000004      OFST:	set	4
1166                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1168  0003 aeffff        	ldw	x,#65535
1169  0006 1f03          	ldw	(OFST-1,sp),x
1171                     ; 313   ErrorStatus Swif = ERROR;
1173                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1175  0008 7b06          	ld	a,(OFST+2,sp)
1176  000a a1e1          	cp	a,#225
1177  000c 270e          	jreq	L461
1178  000e a1d2          	cp	a,#210
1179  0010 270a          	jreq	L461
1180  0012 a1b4          	cp	a,#180
1181  0014 2706          	jreq	L461
1182  0016 ae013c        	ldw	x,#316
1183  0019 cd00dc        	call	LC007
1184  001c               L461:
1185                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1187  001c 7b05          	ld	a,(OFST+1,sp)
1188  001e 2709          	jreq	L471
1189  0020 4a            	dec	a
1190  0021 2706          	jreq	L471
1191  0023 ae013d        	ldw	x,#317
1192  0026 cd00dc        	call	LC007
1193  0029               L471:
1194                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1196  0029 7b09          	ld	a,(OFST+5,sp)
1197  002b 2709          	jreq	L402
1198  002d 4a            	dec	a
1199  002e 2706          	jreq	L402
1200  0030 ae013e        	ldw	x,#318
1201  0033 cd00dc        	call	LC007
1202  0036               L402:
1203                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1205  0036 7b0a          	ld	a,(OFST+6,sp)
1206  0038 2709          	jreq	L412
1207  003a 4a            	dec	a
1208  003b 2706          	jreq	L412
1209  003d ae013f        	ldw	x,#319
1210  0040 cd00dc        	call	LC007
1211  0043               L412:
1212                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1214  0043 c650c3        	ld	a,20675
1215  0046 6b01          	ld	(OFST-3,sp),a
1217                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1219  0048 7b05          	ld	a,(OFST+1,sp)
1220  004a 4a            	dec	a
1221  004b 263d          	jrne	L544
1222                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1224  004d 721250c5      	bset	20677,#1
1225                     ; 331     if (ITState != DISABLE)
1227  0051 7b09          	ld	a,(OFST+5,sp)
1228  0053 2706          	jreq	L744
1229                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1231  0055 721450c5      	bset	20677,#2
1233  0059 2004          	jra	L154
1234  005b               L744:
1235                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1237  005b 721550c5      	bres	20677,#2
1238  005f               L154:
1239                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1241  005f 7b06          	ld	a,(OFST+2,sp)
1242  0061 c750c4        	ld	20676,a
1244  0064 2003          	jra	L754
1245  0066               L354:
1246                     ; 346       DownCounter--;
1248  0066 5a            	decw	x
1249  0067 1f03          	ldw	(OFST-1,sp),x
1251  0069               L754:
1252                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1254  0069 720150c504    	btjf	20677,#0,L364
1256  006e 1e03          	ldw	x,(OFST-1,sp)
1257  0070 26f4          	jrne	L354
1258  0072               L364:
1259                     ; 349     if(DownCounter != 0)
1261  0072 1e03          	ldw	x,(OFST-1,sp)
1262                     ; 351       Swif = SUCCESS;
1264  0074 263d          	jrne	LC006
1265  0076               L564:
1266                     ; 355       Swif = ERROR;
1269  0076 0f02          	clr	(OFST-2,sp)
1271  0078               L174:
1272                     ; 390   if(Swif != ERROR)
1274  0078 275d          	jreq	L515
1275                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1277  007a 7b0a          	ld	a,(OFST+6,sp)
1278  007c 263b          	jrne	L715
1280  007e 7b01          	ld	a,(OFST-3,sp)
1281  0080 a1e1          	cp	a,#225
1282  0082 2635          	jrne	L715
1283                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1285  0084 721150c0      	bres	20672,#0
1287  0088 204d          	jra	L515
1288  008a               L544:
1289                     ; 361     if (ITState != DISABLE)
1291  008a 7b09          	ld	a,(OFST+5,sp)
1292  008c 2706          	jreq	L374
1293                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1295  008e 721450c5      	bset	20677,#2
1297  0092 2004          	jra	L574
1298  0094               L374:
1299                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1301  0094 721550c5      	bres	20677,#2
1302  0098               L574:
1303                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1305  0098 7b06          	ld	a,(OFST+2,sp)
1306  009a c750c4        	ld	20676,a
1308  009d 2003          	jra	L305
1309  009f               L774:
1310                     ; 376       DownCounter--;
1312  009f 5a            	decw	x
1313  00a0 1f03          	ldw	(OFST-1,sp),x
1315  00a2               L305:
1316                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1318  00a2 720750c504    	btjf	20677,#3,L705
1320  00a7 1e03          	ldw	x,(OFST-1,sp)
1321  00a9 26f4          	jrne	L774
1322  00ab               L705:
1323                     ; 379     if(DownCounter != 0)
1325  00ab 1e03          	ldw	x,(OFST-1,sp)
1326  00ad 27c7          	jreq	L564
1327                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1329  00af 721250c5      	bset	20677,#1
1330                     ; 383       Swif = SUCCESS;
1332  00b3               LC006:
1334  00b3 a601          	ld	a,#1
1335  00b5 6b02          	ld	(OFST-2,sp),a
1338  00b7 20bf          	jra	L174
1339                     ; 387       Swif = ERROR;
1340  00b9               L715:
1341                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1343  00b9 7b0a          	ld	a,(OFST+6,sp)
1344  00bb 260c          	jrne	L325
1346  00bd 7b01          	ld	a,(OFST-3,sp)
1347  00bf a1d2          	cp	a,#210
1348  00c1 2606          	jrne	L325
1349                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1351  00c3 721750c0      	bres	20672,#3
1353  00c7 200e          	jra	L515
1354  00c9               L325:
1355                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1357  00c9 7b0a          	ld	a,(OFST+6,sp)
1358  00cb 260a          	jrne	L515
1360  00cd 7b01          	ld	a,(OFST-3,sp)
1361  00cf a1b4          	cp	a,#180
1362  00d1 2604          	jrne	L515
1363                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1365  00d3 721150c1      	bres	20673,#0
1366  00d7               L515:
1367                     ; 406   return(Swif);
1369  00d7 7b02          	ld	a,(OFST-2,sp)
1372  00d9 5b06          	addw	sp,#6
1373  00db 81            	ret	
1374  00dc               LC007:
1375  00dc 89            	pushw	x
1376  00dd 5f            	clrw	x
1377  00de 89            	pushw	x
1378  00df ae000c        	ldw	x,#L75
1379  00e2 cd0000        	call	_assert_failed
1381  00e5 5b04          	addw	sp,#4
1382  00e7 81            	ret	
1521                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1521                     ; 416 {
1522                     .text:	section	.text,new
1523  0000               _CLK_HSIPrescalerConfig:
1525  0000 88            	push	a
1526       00000000      OFST:	set	0
1529                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1531  0001 4d            	tnz	a
1532  0002 271a          	jreq	L622
1533  0004 a108          	cp	a,#8
1534  0006 2716          	jreq	L622
1535  0008 a110          	cp	a,#16
1536  000a 2712          	jreq	L622
1537  000c a118          	cp	a,#24
1538  000e 270e          	jreq	L622
1539  0010 ae01a2        	ldw	x,#418
1540  0013 89            	pushw	x
1541  0014 5f            	clrw	x
1542  0015 89            	pushw	x
1543  0016 ae000c        	ldw	x,#L75
1544  0019 cd0000        	call	_assert_failed
1546  001c 5b04          	addw	sp,#4
1547  001e               L622:
1548                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1550  001e c650c6        	ld	a,20678
1551  0021 a4e7          	and	a,#231
1552  0023 c750c6        	ld	20678,a
1553                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1555  0026 c650c6        	ld	a,20678
1556  0029 1a01          	or	a,(OFST+1,sp)
1557  002b c750c6        	ld	20678,a
1558                     ; 425 }
1561  002e 84            	pop	a
1562  002f 81            	ret	
1698                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1698                     ; 437 {
1699                     .text:	section	.text,new
1700  0000               _CLK_CCOConfig:
1702  0000 88            	push	a
1703       00000000      OFST:	set	0
1706                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1708  0001 4d            	tnz	a
1709  0002 273e          	jreq	L042
1710  0004 a104          	cp	a,#4
1711  0006 273a          	jreq	L042
1712  0008 a102          	cp	a,#2
1713  000a 2736          	jreq	L042
1714  000c a108          	cp	a,#8
1715  000e 2732          	jreq	L042
1716  0010 a10a          	cp	a,#10
1717  0012 272e          	jreq	L042
1718  0014 a10c          	cp	a,#12
1719  0016 272a          	jreq	L042
1720  0018 a10e          	cp	a,#14
1721  001a 2726          	jreq	L042
1722  001c a110          	cp	a,#16
1723  001e 2722          	jreq	L042
1724  0020 a112          	cp	a,#18
1725  0022 271e          	jreq	L042
1726  0024 a114          	cp	a,#20
1727  0026 271a          	jreq	L042
1728  0028 a116          	cp	a,#22
1729  002a 2716          	jreq	L042
1730  002c a118          	cp	a,#24
1731  002e 2712          	jreq	L042
1732  0030 a11a          	cp	a,#26
1733  0032 270e          	jreq	L042
1734  0034 ae01b7        	ldw	x,#439
1735  0037 89            	pushw	x
1736  0038 5f            	clrw	x
1737  0039 89            	pushw	x
1738  003a ae000c        	ldw	x,#L75
1739  003d cd0000        	call	_assert_failed
1741  0040 5b04          	addw	sp,#4
1742  0042               L042:
1743                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1745  0042 c650c9        	ld	a,20681
1746  0045 a4e1          	and	a,#225
1747  0047 c750c9        	ld	20681,a
1748                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1750  004a c650c9        	ld	a,20681
1751  004d 1a01          	or	a,(OFST+1,sp)
1752  004f c750c9        	ld	20681,a
1753                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1755  0052 721050c9      	bset	20681,#0
1756                     ; 449 }
1759  0056 84            	pop	a
1760  0057 81            	ret	
1826                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1826                     ; 460 {
1827                     .text:	section	.text,new
1828  0000               _CLK_ITConfig:
1830  0000 89            	pushw	x
1831       00000000      OFST:	set	0
1834                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1836  0001 9f            	ld	a,xl
1837  0002 4d            	tnz	a
1838  0003 2709          	jreq	L252
1839  0005 9f            	ld	a,xl
1840  0006 4a            	dec	a
1841  0007 2705          	jreq	L252
1842  0009 ae01ce        	ldw	x,#462
1843  000c ad3f          	call	LC008
1844  000e               L252:
1845                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1847  000e 7b01          	ld	a,(OFST+1,sp)
1848  0010 a10c          	cp	a,#12
1849  0012 2709          	jreq	L262
1850  0014 a11c          	cp	a,#28
1851  0016 2705          	jreq	L262
1852  0018 ae01cf        	ldw	x,#463
1853  001b ad30          	call	LC008
1854  001d               L262:
1855                     ; 465   if (NewState != DISABLE)
1857  001d 7b02          	ld	a,(OFST+2,sp)
1858  001f 2716          	jreq	L527
1859                     ; 467     switch (CLK_IT)
1861  0021 7b01          	ld	a,(OFST+1,sp)
1863                     ; 475     default:
1863                     ; 476       break;
1864  0023 a00c          	sub	a,#12
1865  0025 270a          	jreq	L166
1866  0027 a010          	sub	a,#16
1867  0029 2620          	jrne	L337
1868                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1868                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1870  002b 721450c5      	bset	20677,#2
1871                     ; 471       break;
1873  002f 201a          	jra	L337
1874  0031               L166:
1875                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1875                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1877  0031 721450c8      	bset	20680,#2
1878                     ; 474       break;
1880  0035 2014          	jra	L337
1881                     ; 475     default:
1881                     ; 476       break;
1884  0037               L527:
1885                     ; 481     switch (CLK_IT)
1887  0037 7b01          	ld	a,(OFST+1,sp)
1889                     ; 489     default:
1889                     ; 490       break;
1890  0039 a00c          	sub	a,#12
1891  003b 270a          	jreq	L766
1892  003d a010          	sub	a,#16
1893  003f 260a          	jrne	L337
1894                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1894                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1896  0041 721550c5      	bres	20677,#2
1897                     ; 485       break;
1899  0045 2004          	jra	L337
1900  0047               L766:
1901                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1901                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1903  0047 721550c8      	bres	20680,#2
1904                     ; 488       break;
1905  004b               L337:
1906                     ; 493 }
1909  004b 85            	popw	x
1910  004c 81            	ret	
1911                     ; 489     default:
1911                     ; 490       break;
1913  004d               LC008:
1914  004d 89            	pushw	x
1915  004e 5f            	clrw	x
1916  004f 89            	pushw	x
1917  0050 ae000c        	ldw	x,#L75
1918  0053 cd0000        	call	_assert_failed
1920  0056 5b04          	addw	sp,#4
1921  0058 81            	ret	
1957                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1957                     ; 501 {
1958                     .text:	section	.text,new
1959  0000               _CLK_SYSCLKConfig:
1961  0000 88            	push	a
1962       00000000      OFST:	set	0
1965                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1967  0001 4d            	tnz	a
1968  0002 273a          	jreq	L472
1969  0004 a108          	cp	a,#8
1970  0006 2736          	jreq	L472
1971  0008 a110          	cp	a,#16
1972  000a 2732          	jreq	L472
1973  000c a118          	cp	a,#24
1974  000e 272e          	jreq	L472
1975  0010 a180          	cp	a,#128
1976  0012 272a          	jreq	L472
1977  0014 a181          	cp	a,#129
1978  0016 2726          	jreq	L472
1979  0018 a182          	cp	a,#130
1980  001a 2722          	jreq	L472
1981  001c a183          	cp	a,#131
1982  001e 271e          	jreq	L472
1983  0020 a184          	cp	a,#132
1984  0022 271a          	jreq	L472
1985  0024 a185          	cp	a,#133
1986  0026 2716          	jreq	L472
1987  0028 a186          	cp	a,#134
1988  002a 2712          	jreq	L472
1989  002c a187          	cp	a,#135
1990  002e 270e          	jreq	L472
1991  0030 ae01f7        	ldw	x,#503
1992  0033 89            	pushw	x
1993  0034 5f            	clrw	x
1994  0035 89            	pushw	x
1995  0036 ae000c        	ldw	x,#L75
1996  0039 cd0000        	call	_assert_failed
1998  003c 5b04          	addw	sp,#4
1999  003e               L472:
2000                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2002  003e 7b01          	ld	a,(OFST+1,sp)
2003  0040 2b0e          	jrmi	L757
2004                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2006  0042 c650c6        	ld	a,20678
2007  0045 a4e7          	and	a,#231
2008  0047 c750c6        	ld	20678,a
2009                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2011  004a 7b01          	ld	a,(OFST+1,sp)
2012  004c a418          	and	a,#24
2014  004e 200c          	jra	L167
2015  0050               L757:
2016                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2018  0050 c650c6        	ld	a,20678
2019  0053 a4f8          	and	a,#248
2020  0055 c750c6        	ld	20678,a
2021                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2023  0058 7b01          	ld	a,(OFST+1,sp)
2024  005a a407          	and	a,#7
2025  005c               L167:
2026  005c ca50c6        	or	a,20678
2027  005f c750c6        	ld	20678,a
2028                     ; 515 }
2031  0062 84            	pop	a
2032  0063 81            	ret	
2089                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2089                     ; 524 {
2090                     .text:	section	.text,new
2091  0000               _CLK_SWIMConfig:
2093  0000 88            	push	a
2094       00000000      OFST:	set	0
2097                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2099  0001 4d            	tnz	a
2100  0002 2711          	jreq	L603
2101  0004 4a            	dec	a
2102  0005 270e          	jreq	L603
2103  0007 ae020e        	ldw	x,#526
2104  000a 89            	pushw	x
2105  000b 5f            	clrw	x
2106  000c 89            	pushw	x
2107  000d ae000c        	ldw	x,#L75
2108  0010 cd0000        	call	_assert_failed
2110  0013 5b04          	addw	sp,#4
2111  0015               L603:
2112                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2114  0015 7b01          	ld	a,(OFST+1,sp)
2115  0017 2706          	jreq	L1101
2116                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2118  0019 721050cd      	bset	20685,#0
2120  001d 2004          	jra	L3101
2121  001f               L1101:
2122                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2124  001f 721150cd      	bres	20685,#0
2125  0023               L3101:
2126                     ; 538 }
2129  0023 84            	pop	a
2130  0024 81            	ret	
2154                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2154                     ; 548 {
2155                     .text:	section	.text,new
2156  0000               _CLK_ClockSecuritySystemEnable:
2160                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2162  0000 721050c8      	bset	20680,#0
2163                     ; 551 }
2166  0004 81            	ret	
2191                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2191                     ; 560 {
2192                     .text:	section	.text,new
2193  0000               _CLK_GetSYSCLKSource:
2197                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2199  0000 c650c3        	ld	a,20675
2202  0003 81            	ret	
2259                     ; 569 uint32_t CLK_GetClockFreq(void)
2259                     ; 570 {
2260                     .text:	section	.text,new
2261  0000               _CLK_GetClockFreq:
2263  0000 5209          	subw	sp,#9
2264       00000009      OFST:	set	9
2267                     ; 571   uint32_t clockfrequency = 0;
2269                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2271                     ; 573   uint8_t tmp = 0, presc = 0;
2275                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2277  0002 c650c3        	ld	a,20675
2278  0005 6b09          	ld	(OFST+0,sp),a
2280                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2282  0007 a1e1          	cp	a,#225
2283  0009 2634          	jrne	L1601
2284                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2286  000b c650c6        	ld	a,20678
2287  000e a418          	and	a,#24
2288  0010 44            	srl	a
2289  0011 44            	srl	a
2290  0012 44            	srl	a
2292                     ; 581     tmp = (uint8_t)(tmp >> 3);
2295                     ; 582     presc = HSIDivFactor[tmp];
2297  0013 5f            	clrw	x
2298  0014 97            	ld	xl,a
2299  0015 d60000        	ld	a,(_HSIDivFactor,x)
2300  0018 6b09          	ld	(OFST+0,sp),a
2302                     ; 583     clockfrequency = HSI_VALUE / presc;
2304  001a b703          	ld	c_lreg+3,a
2305  001c 3f02          	clr	c_lreg+2
2306  001e 3f01          	clr	c_lreg+1
2307  0020 3f00          	clr	c_lreg
2308  0022 96            	ldw	x,sp
2309  0023 5c            	incw	x
2310  0024 cd0000        	call	c_rtol
2313  0027 ae2400        	ldw	x,#9216
2314  002a bf02          	ldw	c_lreg+2,x
2315  002c ae00f4        	ldw	x,#244
2316  002f bf00          	ldw	c_lreg,x
2317  0031 96            	ldw	x,sp
2318  0032 5c            	incw	x
2319  0033 cd0000        	call	c_ludv
2321  0036 96            	ldw	x,sp
2322  0037 1c0005        	addw	x,#OFST-4
2323  003a cd0000        	call	c_rtol
2327  003d 2018          	jra	L3601
2328  003f               L1601:
2329                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2331  003f a1d2          	cp	a,#210
2332  0041 260a          	jrne	L5601
2333                     ; 587     clockfrequency = LSI_VALUE;
2335  0043 aef400        	ldw	x,#62464
2336  0046 1f07          	ldw	(OFST-2,sp),x
2337  0048 ae0001        	ldw	x,#1
2339  004b 2008          	jp	LC009
2340  004d               L5601:
2341                     ; 591     clockfrequency = HSE_VALUE;
2343  004d ae2400        	ldw	x,#9216
2344  0050 1f07          	ldw	(OFST-2,sp),x
2345  0052 ae00f4        	ldw	x,#244
2346  0055               LC009:
2347  0055 1f05          	ldw	(OFST-4,sp),x
2349  0057               L3601:
2350                     ; 594   return((uint32_t)clockfrequency);
2352  0057 96            	ldw	x,sp
2353  0058 1c0005        	addw	x,#OFST-4
2354  005b cd0000        	call	c_ltor
2358  005e 5b09          	addw	sp,#9
2359  0060 81            	ret	
2459                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2459                     ; 605 {
2460                     .text:	section	.text,new
2461  0000               _CLK_AdjustHSICalibrationValue:
2463  0000 88            	push	a
2464       00000000      OFST:	set	0
2467                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2469  0001 4d            	tnz	a
2470  0002 272a          	jreq	L623
2471  0004 a101          	cp	a,#1
2472  0006 2726          	jreq	L623
2473  0008 a102          	cp	a,#2
2474  000a 2722          	jreq	L623
2475  000c a103          	cp	a,#3
2476  000e 271e          	jreq	L623
2477  0010 a104          	cp	a,#4
2478  0012 271a          	jreq	L623
2479  0014 a105          	cp	a,#5
2480  0016 2716          	jreq	L623
2481  0018 a106          	cp	a,#6
2482  001a 2712          	jreq	L623
2483  001c a107          	cp	a,#7
2484  001e 270e          	jreq	L623
2485  0020 ae025f        	ldw	x,#607
2486  0023 89            	pushw	x
2487  0024 5f            	clrw	x
2488  0025 89            	pushw	x
2489  0026 ae000c        	ldw	x,#L75
2490  0029 cd0000        	call	_assert_failed
2492  002c 5b04          	addw	sp,#4
2493  002e               L623:
2494                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2496  002e c650cc        	ld	a,20684
2497  0031 a4f8          	and	a,#248
2498  0033 1a01          	or	a,(OFST+1,sp)
2499  0035 c750cc        	ld	20684,a
2500                     ; 611 }
2503  0038 84            	pop	a
2504  0039 81            	ret	
2528                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2528                     ; 623 {
2529                     .text:	section	.text,new
2530  0000               _CLK_SYSCLKEmergencyClear:
2534                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2536  0000 721150c5      	bres	20677,#0
2537                     ; 625 }
2540  0004 81            	ret	
2690                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2690                     ; 635 {
2691                     .text:	section	.text,new
2692  0000               _CLK_GetFlagStatus:
2694  0000 89            	pushw	x
2695  0001 5203          	subw	sp,#3
2696       00000003      OFST:	set	3
2699                     ; 636   uint16_t statusreg = 0;
2701                     ; 637   uint8_t tmpreg = 0;
2703                     ; 638   FlagStatus bitstatus = RESET;
2705                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2707  0003 a30110        	cpw	x,#272
2708  0006 2736          	jreq	L243
2709  0008 a30102        	cpw	x,#258
2710  000b 2731          	jreq	L243
2711  000d a30202        	cpw	x,#514
2712  0010 272c          	jreq	L243
2713  0012 a30308        	cpw	x,#776
2714  0015 2727          	jreq	L243
2715  0017 a30301        	cpw	x,#769
2716  001a 2722          	jreq	L243
2717  001c a30408        	cpw	x,#1032
2718  001f 271d          	jreq	L243
2719  0021 a30402        	cpw	x,#1026
2720  0024 2718          	jreq	L243
2721  0026 a30504        	cpw	x,#1284
2722  0029 2713          	jreq	L243
2723  002b a30502        	cpw	x,#1282
2724  002e 270e          	jreq	L243
2725  0030 ae0281        	ldw	x,#641
2726  0033 89            	pushw	x
2727  0034 5f            	clrw	x
2728  0035 89            	pushw	x
2729  0036 ae000c        	ldw	x,#L75
2730  0039 cd0000        	call	_assert_failed
2732  003c 5b04          	addw	sp,#4
2733  003e               L243:
2734                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2736  003e 7b04          	ld	a,(OFST+1,sp)
2737  0040 97            	ld	xl,a
2738  0041 4f            	clr	a
2739  0042 02            	rlwa	x,a
2740  0043 1f01          	ldw	(OFST-2,sp),x
2742                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2744  0045 a30100        	cpw	x,#256
2745  0048 2605          	jrne	L7221
2746                     ; 649     tmpreg = CLK->ICKR;
2748  004a c650c0        	ld	a,20672
2750  004d 2021          	jra	L1321
2751  004f               L7221:
2752                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2754  004f a30200        	cpw	x,#512
2755  0052 2605          	jrne	L3321
2756                     ; 653     tmpreg = CLK->ECKR;
2758  0054 c650c1        	ld	a,20673
2760  0057 2017          	jra	L1321
2761  0059               L3321:
2762                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2764  0059 a30300        	cpw	x,#768
2765  005c 2605          	jrne	L7321
2766                     ; 657     tmpreg = CLK->SWCR;
2768  005e c650c5        	ld	a,20677
2770  0061 200d          	jra	L1321
2771  0063               L7321:
2772                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2774  0063 a30400        	cpw	x,#1024
2775  0066 2605          	jrne	L3421
2776                     ; 661     tmpreg = CLK->CSSR;
2778  0068 c650c8        	ld	a,20680
2780  006b 2003          	jra	L1321
2781  006d               L3421:
2782                     ; 665     tmpreg = CLK->CCOR;
2784  006d c650c9        	ld	a,20681
2785  0070               L1321:
2786  0070 6b03          	ld	(OFST+0,sp),a
2788                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2790  0072 7b05          	ld	a,(OFST+2,sp)
2791  0074 1503          	bcp	a,(OFST+0,sp)
2792  0076 2704          	jreq	L7421
2793                     ; 670     bitstatus = SET;
2795  0078 a601          	ld	a,#1
2798  007a 2001          	jra	L1521
2799  007c               L7421:
2800                     ; 674     bitstatus = RESET;
2802  007c 4f            	clr	a
2804  007d               L1521:
2805                     ; 678   return((FlagStatus)bitstatus);
2809  007d 5b05          	addw	sp,#5
2810  007f 81            	ret	
2857                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2857                     ; 688 {
2858                     .text:	section	.text,new
2859  0000               _CLK_GetITStatus:
2861  0000 88            	push	a
2862  0001 88            	push	a
2863       00000001      OFST:	set	1
2866                     ; 689   ITStatus bitstatus = RESET;
2868                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2870  0002 a10c          	cp	a,#12
2871  0004 2712          	jreq	L453
2872  0006 a11c          	cp	a,#28
2873  0008 270e          	jreq	L453
2874  000a ae02b4        	ldw	x,#692
2875  000d 89            	pushw	x
2876  000e 5f            	clrw	x
2877  000f 89            	pushw	x
2878  0010 ae000c        	ldw	x,#L75
2879  0013 cd0000        	call	_assert_failed
2881  0016 5b04          	addw	sp,#4
2882  0018               L453:
2883                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2885  0018 7b02          	ld	a,(OFST+1,sp)
2886  001a a11c          	cp	a,#28
2887  001c 260b          	jrne	L5721
2888                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2890  001e c650c5        	ld	a,20677
2891  0021 1402          	and	a,(OFST+1,sp)
2892  0023 a10c          	cp	a,#12
2893  0025 260f          	jrne	L5031
2894                     ; 699       bitstatus = SET;
2896  0027 2009          	jp	LC011
2897                     ; 703       bitstatus = RESET;
2898  0029               L5721:
2899                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2901  0029 c650c8        	ld	a,20680
2902  002c 1402          	and	a,(OFST+1,sp)
2903  002e a10c          	cp	a,#12
2904  0030 2604          	jrne	L5031
2905                     ; 711       bitstatus = SET;
2907  0032               LC011:
2909  0032 a601          	ld	a,#1
2912  0034 2001          	jra	L3031
2913  0036               L5031:
2914                     ; 715       bitstatus = RESET;
2917  0036 4f            	clr	a
2919  0037               L3031:
2920                     ; 720   return bitstatus;
2924  0037 85            	popw	x
2925  0038 81            	ret	
2962                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2962                     ; 730 {
2963                     .text:	section	.text,new
2964  0000               _CLK_ClearITPendingBit:
2966  0000 88            	push	a
2967       00000000      OFST:	set	0
2970                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2972  0001 a10c          	cp	a,#12
2973  0003 2712          	jreq	L663
2974  0005 a11c          	cp	a,#28
2975  0007 270e          	jreq	L663
2976  0009 ae02dc        	ldw	x,#732
2977  000c 89            	pushw	x
2978  000d 5f            	clrw	x
2979  000e 89            	pushw	x
2980  000f ae000c        	ldw	x,#L75
2981  0012 cd0000        	call	_assert_failed
2983  0015 5b04          	addw	sp,#4
2984  0017               L663:
2985                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2987  0017 7b01          	ld	a,(OFST+1,sp)
2988  0019 a10c          	cp	a,#12
2989  001b 2606          	jrne	L7231
2990                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2992  001d 721750c8      	bres	20680,#3
2994  0021 2004          	jra	L1331
2995  0023               L7231:
2996                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2998  0023 721750c5      	bres	20677,#3
2999  0027               L1331:
3000                     ; 745 }
3003  0027 84            	pop	a
3004  0028 81            	ret	
3039                     	xdef	_CLKPrescTable
3040                     	xdef	_HSIDivFactor
3041                     	xdef	_CLK_ClearITPendingBit
3042                     	xdef	_CLK_GetITStatus
3043                     	xdef	_CLK_GetFlagStatus
3044                     	xdef	_CLK_GetSYSCLKSource
3045                     	xdef	_CLK_GetClockFreq
3046                     	xdef	_CLK_AdjustHSICalibrationValue
3047                     	xdef	_CLK_SYSCLKEmergencyClear
3048                     	xdef	_CLK_ClockSecuritySystemEnable
3049                     	xdef	_CLK_SWIMConfig
3050                     	xdef	_CLK_SYSCLKConfig
3051                     	xdef	_CLK_ITConfig
3052                     	xdef	_CLK_CCOConfig
3053                     	xdef	_CLK_HSIPrescalerConfig
3054                     	xdef	_CLK_ClockSwitchConfig
3055                     	xdef	_CLK_PeripheralClockConfig
3056                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3057                     	xdef	_CLK_FastHaltWakeUpCmd
3058                     	xdef	_CLK_ClockSwitchCmd
3059                     	xdef	_CLK_CCOCmd
3060                     	xdef	_CLK_LSICmd
3061                     	xdef	_CLK_HSICmd
3062                     	xdef	_CLK_HSECmd
3063                     	xdef	_CLK_DeInit
3064                     	xref	_assert_failed
3065                     	switch	.const
3066  000c               L75:
3067  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3068  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3069  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3070  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3071                     	xref.b	c_lreg
3072                     	xref.b	c_x
3092                     	xref	c_ltor
3093                     	xref	c_ludv
3094                     	xref	c_rtol
3095                     	end
