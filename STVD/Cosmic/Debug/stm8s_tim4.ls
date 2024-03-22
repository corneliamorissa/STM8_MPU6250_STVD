   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 49 void TIM4_DeInit(void)
  49                     ; 50 {
  51                     .text:	section	.text,new
  52  0000               _TIM4_DeInit:
  56                     ; 51   TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  58  0000 725f5340      	clr	21312
  59                     ; 52   TIM4->IER = TIM4_IER_RESET_VALUE;
  61  0004 725f5341      	clr	21313
  62                     ; 53   TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  64  0008 725f5344      	clr	21316
  65                     ; 54   TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  67  000c 725f5345      	clr	21317
  68                     ; 55   TIM4->ARR = TIM4_ARR_RESET_VALUE;
  70  0010 35ff5346      	mov	21318,#255
  71                     ; 56   TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  73  0014 725f5342      	clr	21314
  74                     ; 57 }
  77  0018 81            	ret	
 182                     ; 65 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 182                     ; 66 {
 183                     .text:	section	.text,new
 184  0000               _TIM4_TimeBaseInit:
 186  0000 89            	pushw	x
 187       00000000      OFST:	set	0
 190                     ; 68   assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 192  0001 9e            	ld	a,xh
 193  0002 4d            	tnz	a
 194  0003 2730          	jreq	L41
 195  0005 9e            	ld	a,xh
 196  0006 4a            	dec	a
 197  0007 272c          	jreq	L41
 198  0009 9e            	ld	a,xh
 199  000a a102          	cp	a,#2
 200  000c 2727          	jreq	L41
 201  000e 9e            	ld	a,xh
 202  000f a103          	cp	a,#3
 203  0011 2722          	jreq	L41
 204  0013 9e            	ld	a,xh
 205  0014 a104          	cp	a,#4
 206  0016 271d          	jreq	L41
 207  0018 9e            	ld	a,xh
 208  0019 a105          	cp	a,#5
 209  001b 2718          	jreq	L41
 210  001d 9e            	ld	a,xh
 211  001e a106          	cp	a,#6
 212  0020 2713          	jreq	L41
 213  0022 9e            	ld	a,xh
 214  0023 a107          	cp	a,#7
 215  0025 270e          	jreq	L41
 216  0027 ae0044        	ldw	x,#68
 217  002a 89            	pushw	x
 218  002b 5f            	clrw	x
 219  002c 89            	pushw	x
 220  002d ae0000        	ldw	x,#L56
 221  0030 cd0000        	call	_assert_failed
 223  0033 5b04          	addw	sp,#4
 224  0035               L41:
 225                     ; 70   TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 227  0035 7b01          	ld	a,(OFST+1,sp)
 228  0037 c75345        	ld	21317,a
 229                     ; 72   TIM4->ARR = (uint8_t)(TIM4_Period);
 231  003a 7b02          	ld	a,(OFST+2,sp)
 232  003c c75346        	ld	21318,a
 233                     ; 73 }
 236  003f 85            	popw	x
 237  0040 81            	ret	
 293                     ; 81 void TIM4_Cmd(FunctionalState NewState)
 293                     ; 82 {
 294                     .text:	section	.text,new
 295  0000               _TIM4_Cmd:
 297  0000 88            	push	a
 298       00000000      OFST:	set	0
 301                     ; 84   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 303  0001 4d            	tnz	a
 304  0002 2711          	jreq	L62
 305  0004 4a            	dec	a
 306  0005 270e          	jreq	L62
 307  0007 ae0054        	ldw	x,#84
 308  000a 89            	pushw	x
 309  000b 5f            	clrw	x
 310  000c 89            	pushw	x
 311  000d ae0000        	ldw	x,#L56
 312  0010 cd0000        	call	_assert_failed
 314  0013 5b04          	addw	sp,#4
 315  0015               L62:
 316                     ; 87   if (NewState != DISABLE)
 318  0015 7b01          	ld	a,(OFST+1,sp)
 319  0017 2706          	jreq	L511
 320                     ; 89     TIM4->CR1 |= TIM4_CR1_CEN;
 322  0019 72105340      	bset	21312,#0
 324  001d 2004          	jra	L711
 325  001f               L511:
 326                     ; 93     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 328  001f 72115340      	bres	21312,#0
 329  0023               L711:
 330                     ; 95 }
 333  0023 84            	pop	a
 334  0024 81            	ret	
 393                     ; 107 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 393                     ; 108 {
 394                     .text:	section	.text,new
 395  0000               _TIM4_ITConfig:
 397  0000 89            	pushw	x
 398       00000000      OFST:	set	0
 401                     ; 110   assert_param(IS_TIM4_IT_OK(TIM4_IT));
 403  0001 9e            	ld	a,xh
 404  0002 4a            	dec	a
 405  0003 2705          	jreq	L63
 406  0005 ae006e        	ldw	x,#110
 407  0008 ad22          	call	LC001
 408  000a               L63:
 409                     ; 111   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 411  000a 7b02          	ld	a,(OFST+2,sp)
 412  000c 2708          	jreq	L64
 413  000e 4a            	dec	a
 414  000f 2705          	jreq	L64
 415  0011 ae006f        	ldw	x,#111
 416  0014 ad16          	call	LC001
 417  0016               L64:
 418                     ; 113   if (NewState != DISABLE)
 420  0016 7b02          	ld	a,(OFST+2,sp)
 421  0018 2707          	jreq	L151
 422                     ; 116     TIM4->IER |= (uint8_t)TIM4_IT;
 424  001a c65341        	ld	a,21313
 425  001d 1a01          	or	a,(OFST+1,sp)
 427  001f 2006          	jra	L351
 428  0021               L151:
 429                     ; 121     TIM4->IER &= (uint8_t)(~TIM4_IT);
 431  0021 7b01          	ld	a,(OFST+1,sp)
 432  0023 43            	cpl	a
 433  0024 c45341        	and	a,21313
 434  0027               L351:
 435  0027 c75341        	ld	21313,a
 436                     ; 123 }
 439  002a 85            	popw	x
 440  002b 81            	ret	
 441  002c               LC001:
 442  002c 89            	pushw	x
 443  002d 5f            	clrw	x
 444  002e 89            	pushw	x
 445  002f ae0000        	ldw	x,#L56
 446  0032 cd0000        	call	_assert_failed
 448  0035 5b04          	addw	sp,#4
 449  0037 81            	ret	
 486                     ; 131 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 486                     ; 132 {
 487                     .text:	section	.text,new
 488  0000               _TIM4_UpdateDisableConfig:
 490  0000 88            	push	a
 491       00000000      OFST:	set	0
 494                     ; 134   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 496  0001 4d            	tnz	a
 497  0002 2711          	jreq	L06
 498  0004 4a            	dec	a
 499  0005 270e          	jreq	L06
 500  0007 ae0086        	ldw	x,#134
 501  000a 89            	pushw	x
 502  000b 5f            	clrw	x
 503  000c 89            	pushw	x
 504  000d ae0000        	ldw	x,#L56
 505  0010 cd0000        	call	_assert_failed
 507  0013 5b04          	addw	sp,#4
 508  0015               L06:
 509                     ; 137   if (NewState != DISABLE)
 511  0015 7b01          	ld	a,(OFST+1,sp)
 512  0017 2706          	jreq	L371
 513                     ; 139     TIM4->CR1 |= TIM4_CR1_UDIS;
 515  0019 72125340      	bset	21312,#1
 517  001d 2004          	jra	L571
 518  001f               L371:
 519                     ; 143     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 521  001f 72135340      	bres	21312,#1
 522  0023               L571:
 523                     ; 145 }
 526  0023 84            	pop	a
 527  0024 81            	ret	
 586                     ; 155 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 586                     ; 156 {
 587                     .text:	section	.text,new
 588  0000               _TIM4_UpdateRequestConfig:
 590  0000 88            	push	a
 591       00000000      OFST:	set	0
 594                     ; 158   assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 596  0001 4d            	tnz	a
 597  0002 2711          	jreq	L27
 598  0004 4a            	dec	a
 599  0005 270e          	jreq	L27
 600  0007 ae009e        	ldw	x,#158
 601  000a 89            	pushw	x
 602  000b 5f            	clrw	x
 603  000c 89            	pushw	x
 604  000d ae0000        	ldw	x,#L56
 605  0010 cd0000        	call	_assert_failed
 607  0013 5b04          	addw	sp,#4
 608  0015               L27:
 609                     ; 161   if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 611  0015 7b01          	ld	a,(OFST+1,sp)
 612  0017 2706          	jreq	L522
 613                     ; 163     TIM4->CR1 |= TIM4_CR1_URS;
 615  0019 72145340      	bset	21312,#2
 617  001d 2004          	jra	L722
 618  001f               L522:
 619                     ; 167     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 621  001f 72155340      	bres	21312,#2
 622  0023               L722:
 623                     ; 169 }
 626  0023 84            	pop	a
 627  0024 81            	ret	
 685                     ; 179 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 685                     ; 180 {
 686                     .text:	section	.text,new
 687  0000               _TIM4_SelectOnePulseMode:
 689  0000 88            	push	a
 690       00000000      OFST:	set	0
 693                     ; 182   assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 695  0001 a101          	cp	a,#1
 696  0003 2711          	jreq	L401
 697  0005 4d            	tnz	a
 698  0006 270e          	jreq	L401
 699  0008 ae00b6        	ldw	x,#182
 700  000b 89            	pushw	x
 701  000c 5f            	clrw	x
 702  000d 89            	pushw	x
 703  000e ae0000        	ldw	x,#L56
 704  0011 cd0000        	call	_assert_failed
 706  0014 5b04          	addw	sp,#4
 707  0016               L401:
 708                     ; 185   if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 710  0016 7b01          	ld	a,(OFST+1,sp)
 711  0018 2706          	jreq	L752
 712                     ; 187     TIM4->CR1 |= TIM4_CR1_OPM;
 714  001a 72165340      	bset	21312,#3
 716  001e 2004          	jra	L162
 717  0020               L752:
 718                     ; 191     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 720  0020 72175340      	bres	21312,#3
 721  0024               L162:
 722                     ; 193 }
 725  0024 84            	pop	a
 726  0025 81            	ret	
 795                     ; 215 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 795                     ; 216 {
 796                     .text:	section	.text,new
 797  0000               _TIM4_PrescalerConfig:
 799  0000 89            	pushw	x
 800       00000000      OFST:	set	0
 803                     ; 218   assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 805  0001 9f            	ld	a,xl
 806  0002 4d            	tnz	a
 807  0003 2709          	jreq	L611
 808  0005 9f            	ld	a,xl
 809  0006 4a            	dec	a
 810  0007 2705          	jreq	L611
 811  0009 ae00da        	ldw	x,#218
 812  000c ad31          	call	LC002
 813  000e               L611:
 814                     ; 219   assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 816  000e 7b01          	ld	a,(OFST+1,sp)
 817  0010 2723          	jreq	L621
 818  0012 a101          	cp	a,#1
 819  0014 271f          	jreq	L621
 820  0016 a102          	cp	a,#2
 821  0018 271b          	jreq	L621
 822  001a a103          	cp	a,#3
 823  001c 2717          	jreq	L621
 824  001e a104          	cp	a,#4
 825  0020 2713          	jreq	L621
 826  0022 a105          	cp	a,#5
 827  0024 270f          	jreq	L621
 828  0026 a106          	cp	a,#6
 829  0028 270b          	jreq	L621
 830  002a a107          	cp	a,#7
 831  002c 2707          	jreq	L621
 832  002e ae00db        	ldw	x,#219
 833  0031 ad0c          	call	LC002
 834  0033 7b01          	ld	a,(OFST+1,sp)
 835  0035               L621:
 836                     ; 222   TIM4->PSCR = (uint8_t)Prescaler;
 838  0035 c75345        	ld	21317,a
 839                     ; 225   TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 841  0038 7b02          	ld	a,(OFST+2,sp)
 842  003a c75343        	ld	21315,a
 843                     ; 226 }
 846  003d 85            	popw	x
 847  003e 81            	ret	
 848  003f               LC002:
 849  003f 89            	pushw	x
 850  0040 5f            	clrw	x
 851  0041 89            	pushw	x
 852  0042 ae0000        	ldw	x,#L56
 853  0045 cd0000        	call	_assert_failed
 855  0048 5b04          	addw	sp,#4
 856  004a 81            	ret	
 893                     ; 234 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 893                     ; 235 {
 894                     .text:	section	.text,new
 895  0000               _TIM4_ARRPreloadConfig:
 897  0000 88            	push	a
 898       00000000      OFST:	set	0
 901                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 903  0001 4d            	tnz	a
 904  0002 2711          	jreq	L041
 905  0004 4a            	dec	a
 906  0005 270e          	jreq	L041
 907  0007 ae00ed        	ldw	x,#237
 908  000a 89            	pushw	x
 909  000b 5f            	clrw	x
 910  000c 89            	pushw	x
 911  000d ae0000        	ldw	x,#L56
 912  0010 cd0000        	call	_assert_failed
 914  0013 5b04          	addw	sp,#4
 915  0015               L041:
 916                     ; 240   if (NewState != DISABLE)
 918  0015 7b01          	ld	a,(OFST+1,sp)
 919  0017 2706          	jreq	L333
 920                     ; 242     TIM4->CR1 |= TIM4_CR1_ARPE;
 922  0019 721e5340      	bset	21312,#7
 924  001d 2004          	jra	L533
 925  001f               L333:
 926                     ; 246     TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 928  001f 721f5340      	bres	21312,#7
 929  0023               L533:
 930                     ; 248 }
 933  0023 84            	pop	a
 934  0024 81            	ret	
 984                     ; 257 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 984                     ; 258 {
 985                     .text:	section	.text,new
 986  0000               _TIM4_GenerateEvent:
 988  0000 88            	push	a
 989       00000000      OFST:	set	0
 992                     ; 260   assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 994  0001 4a            	dec	a
 995  0002 270e          	jreq	L051
 996  0004 ae0104        	ldw	x,#260
 997  0007 89            	pushw	x
 998  0008 5f            	clrw	x
 999  0009 89            	pushw	x
1000  000a ae0000        	ldw	x,#L56
1001  000d cd0000        	call	_assert_failed
1003  0010 5b04          	addw	sp,#4
1004  0012               L051:
1005                     ; 263   TIM4->EGR = (uint8_t)(TIM4_EventSource);
1007  0012 7b01          	ld	a,(OFST+1,sp)
1008  0014 c75343        	ld	21315,a
1009                     ; 264 }
1012  0017 84            	pop	a
1013  0018 81            	ret	
1045                     ; 272 void TIM4_SetCounter(uint8_t Counter)
1045                     ; 273 {
1046                     .text:	section	.text,new
1047  0000               _TIM4_SetCounter:
1051                     ; 275   TIM4->CNTR = (uint8_t)(Counter);
1053  0000 c75344        	ld	21316,a
1054                     ; 276 }
1057  0003 81            	ret	
1089                     ; 284 void TIM4_SetAutoreload(uint8_t Autoreload)
1089                     ; 285 {
1090                     .text:	section	.text,new
1091  0000               _TIM4_SetAutoreload:
1095                     ; 287   TIM4->ARR = (uint8_t)(Autoreload);
1097  0000 c75346        	ld	21318,a
1098                     ; 288 }
1101  0003 81            	ret	
1124                     ; 295 uint8_t TIM4_GetCounter(void)
1124                     ; 296 {
1125                     .text:	section	.text,new
1126  0000               _TIM4_GetCounter:
1130                     ; 298   return (uint8_t)(TIM4->CNTR);
1132  0000 c65344        	ld	a,21316
1135  0003 81            	ret	
1159                     ; 306 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1159                     ; 307 {
1160                     .text:	section	.text,new
1161  0000               _TIM4_GetPrescaler:
1165                     ; 309   return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1167  0000 c65345        	ld	a,21317
1170  0003 81            	ret	
1250                     ; 319 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1250                     ; 320 {
1251                     .text:	section	.text,new
1252  0000               _TIM4_GetFlagStatus:
1254  0000 88            	push	a
1255  0001 88            	push	a
1256       00000001      OFST:	set	1
1259                     ; 321   FlagStatus bitstatus = RESET;
1261                     ; 324   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1263  0002 4a            	dec	a
1264  0003 270e          	jreq	L071
1265  0005 ae0144        	ldw	x,#324
1266  0008 89            	pushw	x
1267  0009 5f            	clrw	x
1268  000a 89            	pushw	x
1269  000b ae0000        	ldw	x,#L56
1270  000e cd0000        	call	_assert_failed
1272  0011 5b04          	addw	sp,#4
1273  0013               L071:
1274                     ; 326   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1276  0013 c65342        	ld	a,21314
1277  0016 1502          	bcp	a,(OFST+1,sp)
1278  0018 2704          	jreq	L374
1279                     ; 328     bitstatus = SET;
1281  001a a601          	ld	a,#1
1284  001c 2001          	jra	L574
1285  001e               L374:
1286                     ; 332     bitstatus = RESET;
1288  001e 4f            	clr	a
1290  001f               L574:
1291                     ; 334   return ((FlagStatus)bitstatus);
1295  001f 85            	popw	x
1296  0020 81            	ret	
1332                     ; 344 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1332                     ; 345 {
1333                     .text:	section	.text,new
1334  0000               _TIM4_ClearFlag:
1336  0000 88            	push	a
1337       00000000      OFST:	set	0
1340                     ; 347   assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1342  0001 4a            	dec	a
1343  0002 270e          	jreq	L002
1344  0004 ae015b        	ldw	x,#347
1345  0007 89            	pushw	x
1346  0008 5f            	clrw	x
1347  0009 89            	pushw	x
1348  000a ae0000        	ldw	x,#L56
1349  000d cd0000        	call	_assert_failed
1351  0010 5b04          	addw	sp,#4
1352  0012               L002:
1353                     ; 350   TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1355  0012 7b01          	ld	a,(OFST+1,sp)
1356  0014 43            	cpl	a
1357  0015 c75342        	ld	21314,a
1358                     ; 351 }
1361  0018 84            	pop	a
1362  0019 81            	ret	
1423                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1423                     ; 361 {
1424                     .text:	section	.text,new
1425  0000               _TIM4_GetITStatus:
1427  0000 88            	push	a
1428  0001 89            	pushw	x
1429       00000002      OFST:	set	2
1432                     ; 362   ITStatus bitstatus = RESET;
1434                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1438                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1440  0002 4a            	dec	a
1441  0003 270e          	jreq	L012
1442  0005 ae016f        	ldw	x,#367
1443  0008 89            	pushw	x
1444  0009 5f            	clrw	x
1445  000a 89            	pushw	x
1446  000b ae0000        	ldw	x,#L56
1447  000e cd0000        	call	_assert_failed
1449  0011 5b04          	addw	sp,#4
1450  0013               L012:
1451                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1453  0013 c65342        	ld	a,21314
1454  0016 1403          	and	a,(OFST+1,sp)
1455  0018 6b01          	ld	(OFST-1,sp),a
1457                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1459  001a c65341        	ld	a,21313
1460  001d 1403          	and	a,(OFST+1,sp)
1461  001f 6b02          	ld	(OFST+0,sp),a
1463                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1465  0021 7b01          	ld	a,(OFST-1,sp)
1466  0023 2708          	jreq	L345
1468  0025 7b02          	ld	a,(OFST+0,sp)
1469  0027 2704          	jreq	L345
1470                     ; 375     bitstatus = (ITStatus)SET;
1472  0029 a601          	ld	a,#1
1475  002b 2001          	jra	L545
1476  002d               L345:
1477                     ; 379     bitstatus = (ITStatus)RESET;
1479  002d 4f            	clr	a
1481  002e               L545:
1482                     ; 381   return ((ITStatus)bitstatus);
1486  002e 5b03          	addw	sp,#3
1487  0030 81            	ret	
1524                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1524                     ; 392 {
1525                     .text:	section	.text,new
1526  0000               _TIM4_ClearITPendingBit:
1528  0000 88            	push	a
1529       00000000      OFST:	set	0
1532                     ; 394   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1534  0001 4a            	dec	a
1535  0002 270e          	jreq	L022
1536  0004 ae018a        	ldw	x,#394
1537  0007 89            	pushw	x
1538  0008 5f            	clrw	x
1539  0009 89            	pushw	x
1540  000a ae0000        	ldw	x,#L56
1541  000d cd0000        	call	_assert_failed
1543  0010 5b04          	addw	sp,#4
1544  0012               L022:
1545                     ; 397   TIM4->SR1 = (uint8_t)(~TIM4_IT);
1547  0012 7b01          	ld	a,(OFST+1,sp)
1548  0014 43            	cpl	a
1549  0015 c75342        	ld	21314,a
1550                     ; 398 }
1553  0018 84            	pop	a
1554  0019 81            	ret	
1567                     	xdef	_TIM4_ClearITPendingBit
1568                     	xdef	_TIM4_GetITStatus
1569                     	xdef	_TIM4_ClearFlag
1570                     	xdef	_TIM4_GetFlagStatus
1571                     	xdef	_TIM4_GetPrescaler
1572                     	xdef	_TIM4_GetCounter
1573                     	xdef	_TIM4_SetAutoreload
1574                     	xdef	_TIM4_SetCounter
1575                     	xdef	_TIM4_GenerateEvent
1576                     	xdef	_TIM4_ARRPreloadConfig
1577                     	xdef	_TIM4_PrescalerConfig
1578                     	xdef	_TIM4_SelectOnePulseMode
1579                     	xdef	_TIM4_UpdateRequestConfig
1580                     	xdef	_TIM4_UpdateDisableConfig
1581                     	xdef	_TIM4_ITConfig
1582                     	xdef	_TIM4_Cmd
1583                     	xdef	_TIM4_TimeBaseInit
1584                     	xdef	_TIM4_DeInit
1585                     	xref	_assert_failed
1586                     .const:	section	.text
1587  0000               L56:
1588  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1589  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1590  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1591  0036 5f74696d342e  	dc.b	"_tim4.c",0
1611                     	end
