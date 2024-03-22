   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 52 void ADC1_DeInit(void)
  49                     ; 53 {
  51                     .text:	section	.text,new
  52  0000               _ADC1_DeInit:
  56                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  58  0000 725f5400      	clr	21504
  59                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  61  0004 725f5401      	clr	21505
  62                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  64  0008 725f5402      	clr	21506
  65                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  67  000c 725f5403      	clr	21507
  68                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  70  0010 725f5406      	clr	21510
  71                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  73  0014 725f5407      	clr	21511
  74                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  76  0018 35ff5408      	mov	21512,#255
  77                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  79  001c 35035409      	mov	21513,#3
  80                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  82  0020 725f540a      	clr	21514
  83                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  85  0024 725f540b      	clr	21515
  86                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  88  0028 725f540e      	clr	21518
  89                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  91  002c 725f540f      	clr	21519
  92                     ; 66 }
  95  0030 81            	ret	
 547                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 547                     ; 89 {
 548                     .text:	section	.text,new
 549  0000               _ADC1_Init:
 551  0000 89            	pushw	x
 552       00000000      OFST:	set	0
 555                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 557  0001 9e            	ld	a,xh
 558  0002 4d            	tnz	a
 559  0003 270a          	jreq	L41
 560  0005 9e            	ld	a,xh
 561  0006 4a            	dec	a
 562  0007 2706          	jreq	L41
 563  0009 ae005b        	ldw	x,#91
 564  000c cd00f9        	call	LC001
 565  000f               L41:
 566                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 568  000f 7b02          	ld	a,(OFST+2,sp)
 569  0011 272e          	jreq	L42
 570  0013 a101          	cp	a,#1
 571  0015 272a          	jreq	L42
 572  0017 a102          	cp	a,#2
 573  0019 2726          	jreq	L42
 574  001b a103          	cp	a,#3
 575  001d 2722          	jreq	L42
 576  001f a104          	cp	a,#4
 577  0021 271e          	jreq	L42
 578  0023 a105          	cp	a,#5
 579  0025 271a          	jreq	L42
 580  0027 a106          	cp	a,#6
 581  0029 2716          	jreq	L42
 582  002b a107          	cp	a,#7
 583  002d 2712          	jreq	L42
 584  002f a108          	cp	a,#8
 585  0031 270e          	jreq	L42
 586  0033 a10c          	cp	a,#12
 587  0035 270a          	jreq	L42
 588  0037 a109          	cp	a,#9
 589  0039 2706          	jreq	L42
 590  003b ae005c        	ldw	x,#92
 591  003e cd00f9        	call	LC001
 592  0041               L42:
 593                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 595  0041 7b05          	ld	a,(OFST+5,sp)
 596  0043 2722          	jreq	L43
 597  0045 a110          	cp	a,#16
 598  0047 271e          	jreq	L43
 599  0049 a120          	cp	a,#32
 600  004b 271a          	jreq	L43
 601  004d a130          	cp	a,#48
 602  004f 2716          	jreq	L43
 603  0051 a140          	cp	a,#64
 604  0053 2712          	jreq	L43
 605  0055 a150          	cp	a,#80
 606  0057 270e          	jreq	L43
 607  0059 a160          	cp	a,#96
 608  005b 270a          	jreq	L43
 609  005d a170          	cp	a,#112
 610  005f 2706          	jreq	L43
 611  0061 ae005d        	ldw	x,#93
 612  0064 cd00f9        	call	LC001
 613  0067               L43:
 614                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 616  0067 7b06          	ld	a,(OFST+6,sp)
 617  0069 270a          	jreq	L44
 618  006b a110          	cp	a,#16
 619  006d 2706          	jreq	L44
 620  006f ae005e        	ldw	x,#94
 621  0072 cd00f9        	call	LC001
 622  0075               L44:
 623                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 625  0075 7b07          	ld	a,(OFST+7,sp)
 626  0077 2708          	jreq	L45
 627  0079 4a            	dec	a
 628  007a 2705          	jreq	L45
 629  007c ae005f        	ldw	x,#95
 630  007f ad78          	call	LC001
 631  0081               L45:
 632                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 634  0081 7b08          	ld	a,(OFST+8,sp)
 635  0083 2709          	jreq	L46
 636  0085 a108          	cp	a,#8
 637  0087 2705          	jreq	L46
 638  0089 ae0060        	ldw	x,#96
 639  008c ad6b          	call	LC001
 640  008e               L46:
 641                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 643  008e 7b09          	ld	a,(OFST+9,sp)
 644  0090 2731          	jreq	L47
 645  0092 a101          	cp	a,#1
 646  0094 272d          	jreq	L47
 647  0096 a102          	cp	a,#2
 648  0098 2729          	jreq	L47
 649  009a a103          	cp	a,#3
 650  009c 2725          	jreq	L47
 651  009e a104          	cp	a,#4
 652  00a0 2721          	jreq	L47
 653  00a2 a105          	cp	a,#5
 654  00a4 271d          	jreq	L47
 655  00a6 a106          	cp	a,#6
 656  00a8 2719          	jreq	L47
 657  00aa a107          	cp	a,#7
 658  00ac 2715          	jreq	L47
 659  00ae a108          	cp	a,#8
 660  00b0 2711          	jreq	L47
 661  00b2 a10c          	cp	a,#12
 662  00b4 270d          	jreq	L47
 663  00b6 a1ff          	cp	a,#255
 664  00b8 2709          	jreq	L47
 665  00ba a109          	cp	a,#9
 666  00bc 2705          	jreq	L47
 667  00be ae0061        	ldw	x,#97
 668  00c1 ad36          	call	LC001
 669  00c3               L47:
 670                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 672  00c3 7b0a          	ld	a,(OFST+10,sp)
 673  00c5 2708          	jreq	L401
 674  00c7 4a            	dec	a
 675  00c8 2705          	jreq	L401
 676  00ca ae0062        	ldw	x,#98
 677  00cd ad2a          	call	LC001
 678  00cf               L401:
 679                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 681  00cf 7b08          	ld	a,(OFST+8,sp)
 682  00d1 88            	push	a
 683  00d2 7b03          	ld	a,(OFST+3,sp)
 684  00d4 97            	ld	xl,a
 685  00d5 7b02          	ld	a,(OFST+2,sp)
 686  00d7 95            	ld	xh,a
 687  00d8 cd0000        	call	_ADC1_ConversionConfig
 689  00db 84            	pop	a
 690                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 692  00dc 7b05          	ld	a,(OFST+5,sp)
 693  00de cd0000        	call	_ADC1_PrescalerConfig
 695                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 697  00e1 7b07          	ld	a,(OFST+7,sp)
 698  00e3 97            	ld	xl,a
 699  00e4 7b06          	ld	a,(OFST+6,sp)
 700  00e6 95            	ld	xh,a
 701  00e7 cd0000        	call	_ADC1_ExternalTriggerConfig
 703                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 705  00ea 7b0a          	ld	a,(OFST+10,sp)
 706  00ec 97            	ld	xl,a
 707  00ed 7b09          	ld	a,(OFST+9,sp)
 708  00ef 95            	ld	xh,a
 709  00f0 cd0000        	call	_ADC1_SchmittTriggerConfig
 711                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 713  00f3 72105401      	bset	21505,#0
 714                     ; 119 }
 717  00f7 85            	popw	x
 718  00f8 81            	ret	
 719  00f9               LC001:
 720  00f9 89            	pushw	x
 721  00fa 5f            	clrw	x
 722  00fb 89            	pushw	x
 723  00fc ae0000        	ldw	x,#L542
 724  00ff cd0000        	call	_assert_failed
 726  0102 5b04          	addw	sp,#4
 727  0104 81            	ret	
 763                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 763                     ; 127 {
 764                     .text:	section	.text,new
 765  0000               _ADC1_Cmd:
 767  0000 88            	push	a
 768       00000000      OFST:	set	0
 771                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 773  0001 4d            	tnz	a
 774  0002 2711          	jreq	L621
 775  0004 4a            	dec	a
 776  0005 270e          	jreq	L621
 777  0007 ae0081        	ldw	x,#129
 778  000a 89            	pushw	x
 779  000b 5f            	clrw	x
 780  000c 89            	pushw	x
 781  000d ae0000        	ldw	x,#L542
 782  0010 cd0000        	call	_assert_failed
 784  0013 5b04          	addw	sp,#4
 785  0015               L621:
 786                     ; 131   if (NewState != DISABLE)
 788  0015 7b01          	ld	a,(OFST+1,sp)
 789  0017 2706          	jreq	L562
 790                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 792  0019 72105401      	bset	21505,#0
 794  001d 2004          	jra	L762
 795  001f               L562:
 796                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 798  001f 72115401      	bres	21505,#0
 799  0023               L762:
 800                     ; 139 }
 803  0023 84            	pop	a
 804  0024 81            	ret	
 840                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 840                     ; 147 {
 841                     .text:	section	.text,new
 842  0000               _ADC1_ScanModeCmd:
 844  0000 88            	push	a
 845       00000000      OFST:	set	0
 848                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 850  0001 4d            	tnz	a
 851  0002 2711          	jreq	L041
 852  0004 4a            	dec	a
 853  0005 270e          	jreq	L041
 854  0007 ae0095        	ldw	x,#149
 855  000a 89            	pushw	x
 856  000b 5f            	clrw	x
 857  000c 89            	pushw	x
 858  000d ae0000        	ldw	x,#L542
 859  0010 cd0000        	call	_assert_failed
 861  0013 5b04          	addw	sp,#4
 862  0015               L041:
 863                     ; 151   if (NewState != DISABLE)
 865  0015 7b01          	ld	a,(OFST+1,sp)
 866  0017 2706          	jreq	L703
 867                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 869  0019 72125402      	bset	21506,#1
 871  001d 2004          	jra	L113
 872  001f               L703:
 873                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 875  001f 72135402      	bres	21506,#1
 876  0023               L113:
 877                     ; 159 }
 880  0023 84            	pop	a
 881  0024 81            	ret	
 917                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
 917                     ; 167 {
 918                     .text:	section	.text,new
 919  0000               _ADC1_DataBufferCmd:
 921  0000 88            	push	a
 922       00000000      OFST:	set	0
 925                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 927  0001 4d            	tnz	a
 928  0002 2711          	jreq	L251
 929  0004 4a            	dec	a
 930  0005 270e          	jreq	L251
 931  0007 ae00a9        	ldw	x,#169
 932  000a 89            	pushw	x
 933  000b 5f            	clrw	x
 934  000c 89            	pushw	x
 935  000d ae0000        	ldw	x,#L542
 936  0010 cd0000        	call	_assert_failed
 938  0013 5b04          	addw	sp,#4
 939  0015               L251:
 940                     ; 171   if (NewState != DISABLE)
 942  0015 7b01          	ld	a,(OFST+1,sp)
 943  0017 2706          	jreq	L133
 944                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
 946  0019 721e5403      	bset	21507,#7
 948  001d 2004          	jra	L333
 949  001f               L133:
 950                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 952  001f 721f5403      	bres	21507,#7
 953  0023               L333:
 954                     ; 179 }
 957  0023 84            	pop	a
 958  0024 81            	ret	
1115                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1115                     ; 191 {
1116                     .text:	section	.text,new
1117  0000               _ADC1_ITConfig:
1119  0000 89            	pushw	x
1120       00000000      OFST:	set	0
1123                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1125  0001 a30020        	cpw	x,#32
1126  0004 270a          	jreq	L461
1127  0006 a30010        	cpw	x,#16
1128  0009 2705          	jreq	L461
1129  000b ae00c1        	ldw	x,#193
1130  000e ad22          	call	LC002
1131  0010               L461:
1132                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1134  0010 7b05          	ld	a,(OFST+5,sp)
1135  0012 2708          	jreq	L471
1136  0014 4a            	dec	a
1137  0015 2705          	jreq	L471
1138  0017 ae00c2        	ldw	x,#194
1139  001a ad16          	call	LC002
1140  001c               L471:
1141                     ; 196   if (NewState != DISABLE)
1143  001c 7b05          	ld	a,(OFST+5,sp)
1144  001e 2707          	jreq	L124
1145                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1147  0020 c65400        	ld	a,21504
1148  0023 1a02          	or	a,(OFST+2,sp)
1150  0025 2006          	jra	L324
1151  0027               L124:
1152                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1154  0027 7b02          	ld	a,(OFST+2,sp)
1155  0029 43            	cpl	a
1156  002a c45400        	and	a,21504
1157  002d               L324:
1158  002d c75400        	ld	21504,a
1159                     ; 206 }
1162  0030 85            	popw	x
1163  0031 81            	ret	
1164  0032               LC002:
1165  0032 89            	pushw	x
1166  0033 5f            	clrw	x
1167  0034 89            	pushw	x
1168  0035 ae0000        	ldw	x,#L542
1169  0038 cd0000        	call	_assert_failed
1171  003b 5b04          	addw	sp,#4
1172  003d 81            	ret	
1209                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1209                     ; 215 {
1210                     .text:	section	.text,new
1211  0000               _ADC1_PrescalerConfig:
1213  0000 88            	push	a
1214       00000000      OFST:	set	0
1217                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1219  0001 4d            	tnz	a
1220  0002 272a          	jreq	L602
1221  0004 a110          	cp	a,#16
1222  0006 2726          	jreq	L602
1223  0008 a120          	cp	a,#32
1224  000a 2722          	jreq	L602
1225  000c a130          	cp	a,#48
1226  000e 271e          	jreq	L602
1227  0010 a140          	cp	a,#64
1228  0012 271a          	jreq	L602
1229  0014 a150          	cp	a,#80
1230  0016 2716          	jreq	L602
1231  0018 a160          	cp	a,#96
1232  001a 2712          	jreq	L602
1233  001c a170          	cp	a,#112
1234  001e 270e          	jreq	L602
1235  0020 ae00d9        	ldw	x,#217
1236  0023 89            	pushw	x
1237  0024 5f            	clrw	x
1238  0025 89            	pushw	x
1239  0026 ae0000        	ldw	x,#L542
1240  0029 cd0000        	call	_assert_failed
1242  002c 5b04          	addw	sp,#4
1243  002e               L602:
1244                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1246  002e c65401        	ld	a,21505
1247  0031 a48f          	and	a,#143
1248  0033 c75401        	ld	21505,a
1249                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1251  0036 c65401        	ld	a,21505
1252  0039 1a01          	or	a,(OFST+1,sp)
1253  003b c75401        	ld	21505,a
1254                     ; 223 }
1257  003e 84            	pop	a
1258  003f 81            	ret	
1306                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1306                     ; 234 {
1307                     .text:	section	.text,new
1308  0000               _ADC1_SchmittTriggerConfig:
1310  0000 89            	pushw	x
1311       00000000      OFST:	set	0
1314                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1316  0001 9e            	ld	a,xh
1317  0002 4d            	tnz	a
1318  0003 273b          	jreq	L022
1319  0005 9e            	ld	a,xh
1320  0006 4a            	dec	a
1321  0007 2737          	jreq	L022
1322  0009 9e            	ld	a,xh
1323  000a a102          	cp	a,#2
1324  000c 2732          	jreq	L022
1325  000e 9e            	ld	a,xh
1326  000f a103          	cp	a,#3
1327  0011 272d          	jreq	L022
1328  0013 9e            	ld	a,xh
1329  0014 a104          	cp	a,#4
1330  0016 2728          	jreq	L022
1331  0018 9e            	ld	a,xh
1332  0019 a105          	cp	a,#5
1333  001b 2723          	jreq	L022
1334  001d 9e            	ld	a,xh
1335  001e a106          	cp	a,#6
1336  0020 271e          	jreq	L022
1337  0022 9e            	ld	a,xh
1338  0023 a107          	cp	a,#7
1339  0025 2719          	jreq	L022
1340  0027 9e            	ld	a,xh
1341  0028 a108          	cp	a,#8
1342  002a 2714          	jreq	L022
1343  002c 9e            	ld	a,xh
1344  002d a10c          	cp	a,#12
1345  002f 270f          	jreq	L022
1346  0031 9e            	ld	a,xh
1347  0032 4c            	inc	a
1348  0033 270b          	jreq	L022
1349  0035 9e            	ld	a,xh
1350  0036 a109          	cp	a,#9
1351  0038 2706          	jreq	L022
1352  003a ae00ec        	ldw	x,#236
1353  003d cd00bf        	call	LC006
1354  0040               L022:
1355                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1357  0040 7b02          	ld	a,(OFST+2,sp)
1358  0042 2708          	jreq	L032
1359  0044 4a            	dec	a
1360  0045 2705          	jreq	L032
1361  0047 ae00ed        	ldw	x,#237
1362  004a ad73          	call	LC006
1363  004c               L032:
1364                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1366  004c 7b01          	ld	a,(OFST+1,sp)
1367  004e a1ff          	cp	a,#255
1368  0050 261d          	jrne	L564
1369                     ; 241     if (NewState != DISABLE)
1371  0052 7b02          	ld	a,(OFST+2,sp)
1372  0054 270a          	jreq	L764
1373                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1375  0056 725f5407      	clr	21511
1376                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1378  005a 725f5406      	clr	21510
1380  005e 2057          	jra	L374
1381  0060               L764:
1382                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1384  0060 c65407        	ld	a,21511
1385  0063 aaff          	or	a,#255
1386  0065 c75407        	ld	21511,a
1387                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1389  0068 c65406        	ld	a,21510
1390  006b aaff          	or	a,#255
1391  006d 2045          	jp	LC003
1392  006f               L564:
1393                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1395  006f a108          	cp	a,#8
1396  0071 0d02          	tnz	(OFST+2,sp)
1397  0073 2420          	jruge	L574
1398                     ; 254     if (NewState != DISABLE)
1400  0075 2711          	jreq	L774
1401                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1403  0077 ad40          	call	LC005
1404  0079 2704          	jreq	L432
1405  007b               L632:
1406  007b 48            	sll	a
1407  007c 5a            	decw	x
1408  007d 26fc          	jrne	L632
1409  007f               L432:
1410  007f 43            	cpl	a
1411  0080 c45407        	and	a,21511
1412  0083               LC004:
1413  0083 c75407        	ld	21511,a
1415  0086 202f          	jra	L374
1416  0088               L774:
1417                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1419  0088 ad2f          	call	LC005
1420  008a 2704          	jreq	L042
1421  008c               L242:
1422  008c 48            	sll	a
1423  008d 5a            	decw	x
1424  008e 26fc          	jrne	L242
1425  0090               L042:
1426  0090 ca5407        	or	a,21511
1427  0093 20ee          	jp	LC004
1428  0095               L574:
1429                     ; 265     if (NewState != DISABLE)
1431  0095 2710          	jreq	L505
1432                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1434  0097 a008          	sub	a,#8
1435  0099 ad1e          	call	LC005
1436  009b 2704          	jreq	L442
1437  009d               L642:
1438  009d 48            	sll	a
1439  009e 5a            	decw	x
1440  009f 26fc          	jrne	L642
1441  00a1               L442:
1442  00a1 43            	cpl	a
1443  00a2 c45406        	and	a,21510
1445  00a5 200d          	jp	LC003
1446  00a7               L505:
1447                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1449  00a7 a008          	sub	a,#8
1450  00a9 ad0e          	call	LC005
1451  00ab 2704          	jreq	L052
1452  00ad               L252:
1453  00ad 48            	sll	a
1454  00ae 5a            	decw	x
1455  00af 26fc          	jrne	L252
1456  00b1               L052:
1457  00b1 ca5406        	or	a,21510
1458  00b4               LC003:
1459  00b4 c75406        	ld	21510,a
1460  00b7               L374:
1461                     ; 274 }
1464  00b7 85            	popw	x
1465  00b8 81            	ret	
1466  00b9               LC005:
1467  00b9 5f            	clrw	x
1468  00ba 97            	ld	xl,a
1469  00bb a601          	ld	a,#1
1470  00bd 5d            	tnzw	x
1471  00be 81            	ret	
1472  00bf               LC006:
1473  00bf 89            	pushw	x
1474  00c0 5f            	clrw	x
1475  00c1 89            	pushw	x
1476  00c2 ae0000        	ldw	x,#L542
1477  00c5 cd0000        	call	_assert_failed
1479  00c8 5b04          	addw	sp,#4
1480  00ca 81            	ret	
1538                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1538                     ; 287 {
1539                     .text:	section	.text,new
1540  0000               _ADC1_ConversionConfig:
1542  0000 89            	pushw	x
1543       00000000      OFST:	set	0
1546                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1548  0001 9e            	ld	a,xh
1549  0002 4d            	tnz	a
1550  0003 2709          	jreq	L262
1551  0005 9e            	ld	a,xh
1552  0006 4a            	dec	a
1553  0007 2705          	jreq	L262
1554  0009 ae0121        	ldw	x,#289
1555  000c ad6b          	call	LC007
1556  000e               L262:
1557                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1559  000e 7b02          	ld	a,(OFST+2,sp)
1560  0010 272d          	jreq	L272
1561  0012 a101          	cp	a,#1
1562  0014 2729          	jreq	L272
1563  0016 a102          	cp	a,#2
1564  0018 2725          	jreq	L272
1565  001a a103          	cp	a,#3
1566  001c 2721          	jreq	L272
1567  001e a104          	cp	a,#4
1568  0020 271d          	jreq	L272
1569  0022 a105          	cp	a,#5
1570  0024 2719          	jreq	L272
1571  0026 a106          	cp	a,#6
1572  0028 2715          	jreq	L272
1573  002a a107          	cp	a,#7
1574  002c 2711          	jreq	L272
1575  002e a108          	cp	a,#8
1576  0030 270d          	jreq	L272
1577  0032 a10c          	cp	a,#12
1578  0034 2709          	jreq	L272
1579  0036 a109          	cp	a,#9
1580  0038 2705          	jreq	L272
1581  003a ae0122        	ldw	x,#290
1582  003d ad3a          	call	LC007
1583  003f               L272:
1584                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1586  003f 7b05          	ld	a,(OFST+5,sp)
1587  0041 2709          	jreq	L203
1588  0043 a108          	cp	a,#8
1589  0045 2705          	jreq	L203
1590  0047 ae0123        	ldw	x,#291
1591  004a ad2d          	call	LC007
1592  004c               L203:
1593                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1595  004c 72175402      	bres	21506,#3
1596                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1598  0050 c65402        	ld	a,21506
1599  0053 1a05          	or	a,(OFST+5,sp)
1600  0055 c75402        	ld	21506,a
1601                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1603  0058 7b01          	ld	a,(OFST+1,sp)
1604  005a 4a            	dec	a
1605  005b 2606          	jrne	L735
1606                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1608  005d 72125401      	bset	21505,#1
1610  0061 2004          	jra	L145
1611  0063               L735:
1612                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1614  0063 72135401      	bres	21505,#1
1615  0067               L145:
1616                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1618  0067 c65400        	ld	a,21504
1619  006a a4f0          	and	a,#240
1620  006c c75400        	ld	21504,a
1621                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1623  006f c65400        	ld	a,21504
1624  0072 1a02          	or	a,(OFST+2,sp)
1625  0074 c75400        	ld	21504,a
1626                     ; 313 }
1629  0077 85            	popw	x
1630  0078 81            	ret	
1631  0079               LC007:
1632  0079 89            	pushw	x
1633  007a 5f            	clrw	x
1634  007b 89            	pushw	x
1635  007c ae0000        	ldw	x,#L542
1636  007f cd0000        	call	_assert_failed
1638  0082 5b04          	addw	sp,#4
1639  0084 81            	ret	
1686                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1686                     ; 326 {
1687                     .text:	section	.text,new
1688  0000               _ADC1_ExternalTriggerConfig:
1690  0000 89            	pushw	x
1691       00000000      OFST:	set	0
1694                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1696  0001 9e            	ld	a,xh
1697  0002 4d            	tnz	a
1698  0003 270a          	jreq	L413
1699  0005 9e            	ld	a,xh
1700  0006 a110          	cp	a,#16
1701  0008 2705          	jreq	L413
1702  000a ae0148        	ldw	x,#328
1703  000d ad2c          	call	LC008
1704  000f               L413:
1705                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1707  000f 7b02          	ld	a,(OFST+2,sp)
1708  0011 2708          	jreq	L423
1709  0013 4a            	dec	a
1710  0014 2705          	jreq	L423
1711  0016 ae0149        	ldw	x,#329
1712  0019 ad20          	call	LC008
1713  001b               L423:
1714                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1716  001b c65402        	ld	a,21506
1717  001e a4cf          	and	a,#207
1718  0020 c75402        	ld	21506,a
1719                     ; 334   if (NewState != DISABLE)
1721  0023 7b02          	ld	a,(OFST+2,sp)
1722  0025 2706          	jreq	L565
1723                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1725  0027 721c5402      	bset	21506,#6
1727  002b 2004          	jra	L765
1728  002d               L565:
1729                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1731  002d 721d5402      	bres	21506,#6
1732  0031               L765:
1733                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1735  0031 c65402        	ld	a,21506
1736  0034 1a01          	or	a,(OFST+1,sp)
1737  0036 c75402        	ld	21506,a
1738                     ; 347 }
1741  0039 85            	popw	x
1742  003a 81            	ret	
1743  003b               LC008:
1744  003b 89            	pushw	x
1745  003c 5f            	clrw	x
1746  003d 89            	pushw	x
1747  003e ae0000        	ldw	x,#L542
1748  0041 cd0000        	call	_assert_failed
1750  0044 5b04          	addw	sp,#4
1751  0046 81            	ret	
1775                     ; 358 void ADC1_StartConversion(void)
1775                     ; 359 {
1776                     .text:	section	.text,new
1777  0000               _ADC1_StartConversion:
1781                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1783  0000 72105401      	bset	21505,#0
1784                     ; 361 }
1787  0004 81            	ret	
1827                     ; 370 uint16_t ADC1_GetConversionValue(void)
1827                     ; 371 {
1828                     .text:	section	.text,new
1829  0000               _ADC1_GetConversionValue:
1831  0000 5205          	subw	sp,#5
1832       00000005      OFST:	set	5
1835                     ; 372   uint16_t temph = 0;
1837                     ; 373   uint8_t templ = 0;
1839                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1841  0002 720754020e    	btjf	21506,#3,L716
1842                     ; 378     templ = ADC1->DRL;
1844  0007 c65405        	ld	a,21509
1845  000a 6b03          	ld	(OFST-2,sp),a
1847                     ; 380     temph = ADC1->DRH;
1849  000c c65404        	ld	a,21508
1850  000f 97            	ld	xl,a
1852                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1854  0010 7b03          	ld	a,(OFST-2,sp)
1855  0012 02            	rlwa	x,a
1858  0013 201a          	jra	L126
1859  0015               L716:
1860                     ; 387     temph = ADC1->DRH;
1862  0015 c65404        	ld	a,21508
1863  0018 97            	ld	xl,a
1865                     ; 389     templ = ADC1->DRL;
1867  0019 c65405        	ld	a,21509
1868  001c 6b03          	ld	(OFST-2,sp),a
1870                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1872  001e 4f            	clr	a
1873  001f 02            	rlwa	x,a
1874  0020 1f01          	ldw	(OFST-4,sp),x
1876  0022 7b03          	ld	a,(OFST-2,sp)
1877  0024 97            	ld	xl,a
1878  0025 a640          	ld	a,#64
1879  0027 42            	mul	x,a
1880  0028 01            	rrwa	x,a
1881  0029 1a02          	or	a,(OFST-3,sp)
1882  002b 01            	rrwa	x,a
1883  002c 1a01          	or	a,(OFST-4,sp)
1884  002e 01            	rrwa	x,a
1886  002f               L126:
1887                     ; 394   return ((uint16_t)temph);
1891  002f 5b05          	addw	sp,#5
1892  0031 81            	ret	
1939                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1939                     ; 406 {
1940                     .text:	section	.text,new
1941  0000               _ADC1_AWDChannelConfig:
1943  0000 89            	pushw	x
1944       00000000      OFST:	set	0
1947                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1949  0001 9f            	ld	a,xl
1950  0002 4d            	tnz	a
1951  0003 270a          	jreq	L243
1952  0005 9f            	ld	a,xl
1953  0006 4a            	dec	a
1954  0007 2706          	jreq	L243
1955  0009 ae0198        	ldw	x,#408
1956  000c cd0092        	call	LC012
1957  000f               L243:
1958                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
1960  000f 7b01          	ld	a,(OFST+1,sp)
1961  0011 272f          	jreq	L253
1962  0013 a101          	cp	a,#1
1963  0015 272b          	jreq	L253
1964  0017 a102          	cp	a,#2
1965  0019 2727          	jreq	L253
1966  001b a103          	cp	a,#3
1967  001d 2723          	jreq	L253
1968  001f a104          	cp	a,#4
1969  0021 271f          	jreq	L253
1970  0023 a105          	cp	a,#5
1971  0025 271b          	jreq	L253
1972  0027 a106          	cp	a,#6
1973  0029 2717          	jreq	L253
1974  002b a107          	cp	a,#7
1975  002d 2713          	jreq	L253
1976  002f a108          	cp	a,#8
1977  0031 270f          	jreq	L253
1978  0033 a10c          	cp	a,#12
1979  0035 270b          	jreq	L253
1980  0037 a109          	cp	a,#9
1981  0039 2707          	jreq	L253
1982  003b ae0199        	ldw	x,#409
1983  003e ad52          	call	LC012
1984  0040 7b01          	ld	a,(OFST+1,sp)
1985  0042               L253:
1986                     ; 411   if (Channel < (uint8_t)8)
1988  0042 a108          	cp	a,#8
1989  0044 0d02          	tnz	(OFST+2,sp)
1990  0046 2420          	jruge	L546
1991                     ; 413     if (NewState != DISABLE)
1993  0048 270d          	jreq	L746
1994                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1996  004a ad40          	call	LC011
1997  004c 2704          	jreq	L653
1998  004e               L063:
1999  004e 48            	sll	a
2000  004f 5a            	decw	x
2001  0050 26fc          	jrne	L063
2002  0052               L653:
2003  0052 ca540f        	or	a,21519
2005  0055 200c          	jp	LC010
2006  0057               L746:
2007                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2009  0057 ad33          	call	LC011
2010  0059 2704          	jreq	L263
2011  005b               L463:
2012  005b 48            	sll	a
2013  005c 5a            	decw	x
2014  005d 26fc          	jrne	L463
2015  005f               L263:
2016  005f 43            	cpl	a
2017  0060 c4540f        	and	a,21519
2018  0063               LC010:
2019  0063 c7540f        	ld	21519,a
2020  0066 2022          	jra	L356
2021  0068               L546:
2022                     ; 424     if (NewState != DISABLE)
2024  0068 270f          	jreq	L556
2025                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2027  006a a008          	sub	a,#8
2028  006c ad1e          	call	LC011
2029  006e 2704          	jreq	L663
2030  0070               L073:
2031  0070 48            	sll	a
2032  0071 5a            	decw	x
2033  0072 26fc          	jrne	L073
2034  0074               L663:
2035  0074 ca540e        	or	a,21518
2037  0077 200e          	jp	LC009
2038  0079               L556:
2039                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2041  0079 a008          	sub	a,#8
2042  007b ad0f          	call	LC011
2043  007d 2704          	jreq	L273
2044  007f               L473:
2045  007f 48            	sll	a
2046  0080 5a            	decw	x
2047  0081 26fc          	jrne	L473
2048  0083               L273:
2049  0083 43            	cpl	a
2050  0084 c4540e        	and	a,21518
2051  0087               LC009:
2052  0087 c7540e        	ld	21518,a
2053  008a               L356:
2054                     ; 433 }
2057  008a 85            	popw	x
2058  008b 81            	ret	
2059  008c               LC011:
2060  008c 5f            	clrw	x
2061  008d 97            	ld	xl,a
2062  008e a601          	ld	a,#1
2063  0090 5d            	tnzw	x
2064  0091 81            	ret	
2065  0092               LC012:
2066  0092 89            	pushw	x
2067  0093 5f            	clrw	x
2068  0094 89            	pushw	x
2069  0095 ae0000        	ldw	x,#L542
2070  0098 cd0000        	call	_assert_failed
2072  009b 5b04          	addw	sp,#4
2073  009d 81            	ret	
2106                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2106                     ; 442 {
2107                     .text:	section	.text,new
2108  0000               _ADC1_SetHighThreshold:
2110  0000 89            	pushw	x
2111       00000000      OFST:	set	0
2114                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2116  0001 54            	srlw	x
2117  0002 54            	srlw	x
2118  0003 9f            	ld	a,xl
2119  0004 c75408        	ld	21512,a
2120                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2122  0007 7b02          	ld	a,(OFST+2,sp)
2123  0009 c75409        	ld	21513,a
2124                     ; 445 }
2127  000c 85            	popw	x
2128  000d 81            	ret	
2161                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2161                     ; 454 {
2162                     .text:	section	.text,new
2163  0000               _ADC1_SetLowThreshold:
2167                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2169  0000 9f            	ld	a,xl
2170  0001 c7540b        	ld	21515,a
2171                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2173  0004 54            	srlw	x
2174  0005 54            	srlw	x
2175  0006 9f            	ld	a,xl
2176  0007 c7540a        	ld	21514,a
2177                     ; 457 }
2180  000a 81            	ret	
2228                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2228                     ; 467 {
2229                     .text:	section	.text,new
2230  0000               _ADC1_GetBufferValue:
2232  0000 88            	push	a
2233  0001 5205          	subw	sp,#5
2234       00000005      OFST:	set	5
2237                     ; 468   uint16_t temph = 0;
2239                     ; 469   uint8_t templ = 0;
2241                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2243  0003 a10a          	cp	a,#10
2244  0005 250e          	jrult	L604
2245  0007 ae01d8        	ldw	x,#472
2246  000a 89            	pushw	x
2247  000b 5f            	clrw	x
2248  000c 89            	pushw	x
2249  000d ae0000        	ldw	x,#L542
2250  0010 cd0000        	call	_assert_failed
2252  0013 5b04          	addw	sp,#4
2253  0015               L604:
2254                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2256  0015 7b06          	ld	a,(OFST+1,sp)
2257  0017 48            	sll	a
2258  0018 5f            	clrw	x
2259  0019 97            	ld	xl,a
2260  001a 7207540213    	btjf	21506,#3,L137
2261                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2263  001f d653e1        	ld	a,(21473,x)
2264  0022 6b03          	ld	(OFST-2,sp),a
2266                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2268  0024 7b06          	ld	a,(OFST+1,sp)
2269  0026 48            	sll	a
2270  0027 5f            	clrw	x
2271  0028 97            	ld	xl,a
2272  0029 d653e0        	ld	a,(21472,x)
2273  002c 97            	ld	xl,a
2275                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2277  002d 7b03          	ld	a,(OFST-2,sp)
2278  002f 02            	rlwa	x,a
2281  0030 2024          	jra	L337
2282  0032               L137:
2283                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2285  0032 d653e0        	ld	a,(21472,x)
2286  0035 5f            	clrw	x
2287  0036 97            	ld	xl,a
2288  0037 1f04          	ldw	(OFST-1,sp),x
2290                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2292  0039 7b06          	ld	a,(OFST+1,sp)
2293  003b 48            	sll	a
2294  003c 5f            	clrw	x
2295  003d 97            	ld	xl,a
2296  003e d653e1        	ld	a,(21473,x)
2297  0041 6b03          	ld	(OFST-2,sp),a
2299                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2301  0043 4f            	clr	a
2302  0044 1e04          	ldw	x,(OFST-1,sp)
2303  0046 02            	rlwa	x,a
2304  0047 1f01          	ldw	(OFST-4,sp),x
2306  0049 7b03          	ld	a,(OFST-2,sp)
2307  004b 97            	ld	xl,a
2308  004c a640          	ld	a,#64
2309  004e 42            	mul	x,a
2310  004f 01            	rrwa	x,a
2311  0050 1a02          	or	a,(OFST-3,sp)
2312  0052 01            	rrwa	x,a
2313  0053 1a01          	or	a,(OFST-4,sp)
2314  0055 01            	rrwa	x,a
2316  0056               L337:
2317                     ; 493   return ((uint16_t)temph);
2321  0056 5b06          	addw	sp,#6
2322  0058 81            	ret	
2387                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2387                     ; 503 {
2388                     .text:	section	.text,new
2389  0000               _ADC1_GetAWDChannelStatus:
2391  0000 88            	push	a
2392  0001 88            	push	a
2393       00000001      OFST:	set	1
2396                     ; 504   uint8_t status = 0;
2398                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2400  0002 4d            	tnz	a
2401  0003 2736          	jreq	L024
2402  0005 a101          	cp	a,#1
2403  0007 2732          	jreq	L024
2404  0009 a102          	cp	a,#2
2405  000b 272e          	jreq	L024
2406  000d a103          	cp	a,#3
2407  000f 272a          	jreq	L024
2408  0011 a104          	cp	a,#4
2409  0013 2726          	jreq	L024
2410  0015 a105          	cp	a,#5
2411  0017 2722          	jreq	L024
2412  0019 a106          	cp	a,#6
2413  001b 271e          	jreq	L024
2414  001d a107          	cp	a,#7
2415  001f 271a          	jreq	L024
2416  0021 a108          	cp	a,#8
2417  0023 2716          	jreq	L024
2418  0025 a10c          	cp	a,#12
2419  0027 2712          	jreq	L024
2420  0029 a109          	cp	a,#9
2421  002b 270e          	jreq	L024
2422  002d ae01fb        	ldw	x,#507
2423  0030 89            	pushw	x
2424  0031 5f            	clrw	x
2425  0032 89            	pushw	x
2426  0033 ae0000        	ldw	x,#L542
2427  0036 cd0000        	call	_assert_failed
2429  0039 5b04          	addw	sp,#4
2430  003b               L024:
2431                     ; 509   if (Channel < (uint8_t)8)
2433  003b 7b02          	ld	a,(OFST+1,sp)
2434  003d a108          	cp	a,#8
2435  003f 2410          	jruge	L567
2436                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2438  0041 5f            	clrw	x
2439  0042 97            	ld	xl,a
2440  0043 a601          	ld	a,#1
2441  0045 5d            	tnzw	x
2442  0046 2704          	jreq	L424
2443  0048               L624:
2444  0048 48            	sll	a
2445  0049 5a            	decw	x
2446  004a 26fc          	jrne	L624
2447  004c               L424:
2448  004c c4540d        	and	a,21517
2451  004f 2010          	jra	L767
2452  0051               L567:
2453                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2455  0051 a008          	sub	a,#8
2456  0053 5f            	clrw	x
2457  0054 97            	ld	xl,a
2458  0055 a601          	ld	a,#1
2459  0057 5d            	tnzw	x
2460  0058 2704          	jreq	L034
2461  005a               L234:
2462  005a 48            	sll	a
2463  005b 5a            	decw	x
2464  005c 26fc          	jrne	L234
2465  005e               L034:
2466  005e c4540c        	and	a,21516
2468  0061               L767:
2469                     ; 518   return ((FlagStatus)status);
2473  0061 85            	popw	x
2474  0062 81            	ret	
2629                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2629                     ; 528 {
2630                     .text:	section	.text,new
2631  0000               _ADC1_GetFlagStatus:
2633  0000 88            	push	a
2634  0001 88            	push	a
2635       00000001      OFST:	set	1
2638                     ; 529   uint8_t flagstatus = 0;
2640                     ; 530   uint8_t temp = 0;
2642                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2644  0002 a180          	cp	a,#128
2645  0004 273e          	jreq	L244
2646  0006 a141          	cp	a,#65
2647  0008 273a          	jreq	L244
2648  000a a140          	cp	a,#64
2649  000c 2736          	jreq	L244
2650  000e a110          	cp	a,#16
2651  0010 2732          	jreq	L244
2652  0012 a111          	cp	a,#17
2653  0014 272e          	jreq	L244
2654  0016 a112          	cp	a,#18
2655  0018 272a          	jreq	L244
2656  001a a113          	cp	a,#19
2657  001c 2726          	jreq	L244
2658  001e a114          	cp	a,#20
2659  0020 2722          	jreq	L244
2660  0022 a115          	cp	a,#21
2661  0024 271e          	jreq	L244
2662  0026 a116          	cp	a,#22
2663  0028 271a          	jreq	L244
2664  002a a117          	cp	a,#23
2665  002c 2716          	jreq	L244
2666  002e a118          	cp	a,#24
2667  0030 2712          	jreq	L244
2668  0032 a119          	cp	a,#25
2669  0034 270e          	jreq	L244
2670  0036 ae0215        	ldw	x,#533
2671  0039 89            	pushw	x
2672  003a 5f            	clrw	x
2673  003b 89            	pushw	x
2674  003c ae0000        	ldw	x,#L542
2675  003f cd0000        	call	_assert_failed
2677  0042 5b04          	addw	sp,#4
2678  0044               L244:
2679                     ; 535   if ((Flag & 0x0F) == 0x01)
2681  0044 7b02          	ld	a,(OFST+1,sp)
2682  0046 a40f          	and	a,#15
2683  0048 4a            	dec	a
2684  0049 2607          	jrne	L3501
2685                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2687  004b c65403        	ld	a,21507
2688  004e a440          	and	a,#64
2691  0050 2039          	jra	L5501
2692  0052               L3501:
2693                     ; 540   else if ((Flag & 0xF0) == 0x10)
2695  0052 7b02          	ld	a,(OFST+1,sp)
2696  0054 a4f0          	and	a,#240
2697  0056 a110          	cp	a,#16
2698  0058 262c          	jrne	L7501
2699                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2701  005a 7b02          	ld	a,(OFST+1,sp)
2702  005c a40f          	and	a,#15
2703  005e 6b01          	ld	(OFST+0,sp),a
2705                     ; 544     if (temp < 8)
2707  0060 a108          	cp	a,#8
2708  0062 2410          	jruge	L1601
2709                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2711  0064 5f            	clrw	x
2712  0065 97            	ld	xl,a
2713  0066 a601          	ld	a,#1
2714  0068 5d            	tnzw	x
2715  0069 2704          	jreq	L644
2716  006b               L054:
2717  006b 48            	sll	a
2718  006c 5a            	decw	x
2719  006d 26fc          	jrne	L054
2720  006f               L644:
2721  006f c4540d        	and	a,21517
2724  0072 2017          	jra	L5501
2725  0074               L1601:
2726                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2728  0074 a008          	sub	a,#8
2729  0076 5f            	clrw	x
2730  0077 97            	ld	xl,a
2731  0078 a601          	ld	a,#1
2732  007a 5d            	tnzw	x
2733  007b 2704          	jreq	L254
2734  007d               L454:
2735  007d 48            	sll	a
2736  007e 5a            	decw	x
2737  007f 26fc          	jrne	L454
2738  0081               L254:
2739  0081 c4540c        	and	a,21516
2741  0084 2005          	jra	L5501
2742  0086               L7501:
2743                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
2745  0086 c65400        	ld	a,21504
2746  0089 1402          	and	a,(OFST+1,sp)
2748  008b               L5501:
2749                     ; 557   return ((FlagStatus)flagstatus);
2753  008b 85            	popw	x
2754  008c 81            	ret	
2797                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2797                     ; 568 {
2798                     .text:	section	.text,new
2799  0000               _ADC1_ClearFlag:
2801  0000 88            	push	a
2802  0001 88            	push	a
2803       00000001      OFST:	set	1
2806                     ; 569   uint8_t temp = 0;
2808                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
2810  0002 a180          	cp	a,#128
2811  0004 273e          	jreq	L464
2812  0006 a141          	cp	a,#65
2813  0008 273a          	jreq	L464
2814  000a a140          	cp	a,#64
2815  000c 2736          	jreq	L464
2816  000e a110          	cp	a,#16
2817  0010 2732          	jreq	L464
2818  0012 a111          	cp	a,#17
2819  0014 272e          	jreq	L464
2820  0016 a112          	cp	a,#18
2821  0018 272a          	jreq	L464
2822  001a a113          	cp	a,#19
2823  001c 2726          	jreq	L464
2824  001e a114          	cp	a,#20
2825  0020 2722          	jreq	L464
2826  0022 a115          	cp	a,#21
2827  0024 271e          	jreq	L464
2828  0026 a116          	cp	a,#22
2829  0028 271a          	jreq	L464
2830  002a a117          	cp	a,#23
2831  002c 2716          	jreq	L464
2832  002e a118          	cp	a,#24
2833  0030 2712          	jreq	L464
2834  0032 a119          	cp	a,#25
2835  0034 270e          	jreq	L464
2836  0036 ae023c        	ldw	x,#572
2837  0039 89            	pushw	x
2838  003a 5f            	clrw	x
2839  003b 89            	pushw	x
2840  003c ae0000        	ldw	x,#L542
2841  003f cd0000        	call	_assert_failed
2843  0042 5b04          	addw	sp,#4
2844  0044               L464:
2845                     ; 574   if ((Flag & 0x0F) == 0x01)
2847  0044 7b02          	ld	a,(OFST+1,sp)
2848  0046 a40f          	and	a,#15
2849  0048 4a            	dec	a
2850  0049 2606          	jrne	L7011
2851                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2853  004b 721d5403      	bres	21507,#6
2855  004f 2045          	jra	L1111
2856  0051               L7011:
2857                     ; 579   else if ((Flag & 0xF0) == 0x10)
2859  0051 7b02          	ld	a,(OFST+1,sp)
2860  0053 a4f0          	and	a,#240
2861  0055 a110          	cp	a,#16
2862  0057 2634          	jrne	L3111
2863                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2865  0059 7b02          	ld	a,(OFST+1,sp)
2866  005b a40f          	and	a,#15
2867  005d 6b01          	ld	(OFST+0,sp),a
2869                     ; 583     if (temp < 8)
2871  005f a108          	cp	a,#8
2872  0061 2414          	jruge	L5111
2873                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2875  0063 5f            	clrw	x
2876  0064 97            	ld	xl,a
2877  0065 a601          	ld	a,#1
2878  0067 5d            	tnzw	x
2879  0068 2704          	jreq	L074
2880  006a               L274:
2881  006a 48            	sll	a
2882  006b 5a            	decw	x
2883  006c 26fc          	jrne	L274
2884  006e               L074:
2885  006e 43            	cpl	a
2886  006f c4540d        	and	a,21517
2887  0072 c7540d        	ld	21517,a
2889  0075 201f          	jra	L1111
2890  0077               L5111:
2891                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2893  0077 a008          	sub	a,#8
2894  0079 5f            	clrw	x
2895  007a 97            	ld	xl,a
2896  007b a601          	ld	a,#1
2897  007d 5d            	tnzw	x
2898  007e 2704          	jreq	L474
2899  0080               L674:
2900  0080 48            	sll	a
2901  0081 5a            	decw	x
2902  0082 26fc          	jrne	L674
2903  0084               L474:
2904  0084 43            	cpl	a
2905  0085 c4540c        	and	a,21516
2906  0088 c7540c        	ld	21516,a
2907  008b 2009          	jra	L1111
2908  008d               L3111:
2909                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
2911  008d 7b02          	ld	a,(OFST+1,sp)
2912  008f 43            	cpl	a
2913  0090 c45400        	and	a,21504
2914  0093 c75400        	ld	21504,a
2915  0096               L1111:
2916                     ; 596 }
2919  0096 85            	popw	x
2920  0097 81            	ret	
2974                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2974                     ; 617 {
2975                     .text:	section	.text,new
2976  0000               _ADC1_GetITStatus:
2978  0000 89            	pushw	x
2979  0001 88            	push	a
2980       00000001      OFST:	set	1
2983                     ; 618   ITStatus itstatus = RESET;
2985                     ; 619   uint8_t temp = 0;
2987                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2989  0002 a30080        	cpw	x,#128
2990  0005 274a          	jreq	L605
2991  0007 a30140        	cpw	x,#320
2992  000a 2745          	jreq	L605
2993  000c a30110        	cpw	x,#272
2994  000f 2740          	jreq	L605
2995  0011 a30111        	cpw	x,#273
2996  0014 273b          	jreq	L605
2997  0016 a30112        	cpw	x,#274
2998  0019 2736          	jreq	L605
2999  001b a30113        	cpw	x,#275
3000  001e 2731          	jreq	L605
3001  0020 a30114        	cpw	x,#276
3002  0023 272c          	jreq	L605
3003  0025 a30115        	cpw	x,#277
3004  0028 2727          	jreq	L605
3005  002a a30116        	cpw	x,#278
3006  002d 2722          	jreq	L605
3007  002f a30117        	cpw	x,#279
3008  0032 271d          	jreq	L605
3009  0034 a30118        	cpw	x,#280
3010  0037 2718          	jreq	L605
3011  0039 a3011c        	cpw	x,#284
3012  003c 2713          	jreq	L605
3013  003e a30119        	cpw	x,#281
3014  0041 270e          	jreq	L605
3015  0043 ae026e        	ldw	x,#622
3016  0046 89            	pushw	x
3017  0047 5f            	clrw	x
3018  0048 89            	pushw	x
3019  0049 ae0000        	ldw	x,#L542
3020  004c cd0000        	call	_assert_failed
3022  004f 5b04          	addw	sp,#4
3023  0051               L605:
3024                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3026  0051 7b03          	ld	a,(OFST+2,sp)
3027  0053 a4f0          	and	a,#240
3028  0055 5f            	clrw	x
3029  0056 02            	rlwa	x,a
3030  0057 a30010        	cpw	x,#16
3031  005a 262c          	jrne	L7411
3032                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3034  005c 7b03          	ld	a,(OFST+2,sp)
3035  005e a40f          	and	a,#15
3036  0060 6b01          	ld	(OFST+0,sp),a
3038                     ; 628     if (temp < 8)
3040  0062 a108          	cp	a,#8
3041  0064 2410          	jruge	L1511
3042                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3044  0066 5f            	clrw	x
3045  0067 97            	ld	xl,a
3046  0068 a601          	ld	a,#1
3047  006a 5d            	tnzw	x
3048  006b 2704          	jreq	L215
3049  006d               L415:
3050  006d 48            	sll	a
3051  006e 5a            	decw	x
3052  006f 26fc          	jrne	L415
3053  0071               L215:
3054  0071 c4540d        	and	a,21517
3057  0074 2017          	jra	L5511
3058  0076               L1511:
3059                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3061  0076 a008          	sub	a,#8
3062  0078 5f            	clrw	x
3063  0079 97            	ld	xl,a
3064  007a a601          	ld	a,#1
3065  007c 5d            	tnzw	x
3066  007d 2704          	jreq	L615
3067  007f               L025:
3068  007f 48            	sll	a
3069  0080 5a            	decw	x
3070  0081 26fc          	jrne	L025
3071  0083               L615:
3072  0083 c4540c        	and	a,21516
3074  0086 2005          	jra	L5511
3075  0088               L7411:
3076                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3078  0088 c65400        	ld	a,21504
3079  008b 1403          	and	a,(OFST+2,sp)
3081  008d               L5511:
3082                     ; 641   return ((ITStatus)itstatus);
3086  008d 5b03          	addw	sp,#3
3087  008f 81            	ret	
3131                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3131                     ; 663 {
3132                     .text:	section	.text,new
3133  0000               _ADC1_ClearITPendingBit:
3135  0000 89            	pushw	x
3136  0001 88            	push	a
3137       00000001      OFST:	set	1
3140                     ; 664   uint8_t temp = 0;
3142                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3144  0002 a30080        	cpw	x,#128
3145  0005 274a          	jreq	L035
3146  0007 a30140        	cpw	x,#320
3147  000a 2745          	jreq	L035
3148  000c a30110        	cpw	x,#272
3149  000f 2740          	jreq	L035
3150  0011 a30111        	cpw	x,#273
3151  0014 273b          	jreq	L035
3152  0016 a30112        	cpw	x,#274
3153  0019 2736          	jreq	L035
3154  001b a30113        	cpw	x,#275
3155  001e 2731          	jreq	L035
3156  0020 a30114        	cpw	x,#276
3157  0023 272c          	jreq	L035
3158  0025 a30115        	cpw	x,#277
3159  0028 2727          	jreq	L035
3160  002a a30116        	cpw	x,#278
3161  002d 2722          	jreq	L035
3162  002f a30117        	cpw	x,#279
3163  0032 271d          	jreq	L035
3164  0034 a30118        	cpw	x,#280
3165  0037 2718          	jreq	L035
3166  0039 a3011c        	cpw	x,#284
3167  003c 2713          	jreq	L035
3168  003e a30119        	cpw	x,#281
3169  0041 270e          	jreq	L035
3170  0043 ae029b        	ldw	x,#667
3171  0046 89            	pushw	x
3172  0047 5f            	clrw	x
3173  0048 89            	pushw	x
3174  0049 ae0000        	ldw	x,#L542
3175  004c cd0000        	call	_assert_failed
3177  004f 5b04          	addw	sp,#4
3178  0051               L035:
3179                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3181  0051 7b03          	ld	a,(OFST+2,sp)
3182  0053 a4f0          	and	a,#240
3183  0055 5f            	clrw	x
3184  0056 02            	rlwa	x,a
3185  0057 a30010        	cpw	x,#16
3186  005a 2634          	jrne	L7711
3187                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3189  005c 7b03          	ld	a,(OFST+2,sp)
3190  005e a40f          	and	a,#15
3191  0060 6b01          	ld	(OFST+0,sp),a
3193                     ; 673     if (temp < 8)
3195  0062 a108          	cp	a,#8
3196  0064 2414          	jruge	L1021
3197                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3199  0066 5f            	clrw	x
3200  0067 97            	ld	xl,a
3201  0068 a601          	ld	a,#1
3202  006a 5d            	tnzw	x
3203  006b 2704          	jreq	L435
3204  006d               L635:
3205  006d 48            	sll	a
3206  006e 5a            	decw	x
3207  006f 26fc          	jrne	L635
3208  0071               L435:
3209  0071 43            	cpl	a
3210  0072 c4540d        	and	a,21517
3211  0075 c7540d        	ld	21517,a
3213  0078 201f          	jra	L5021
3214  007a               L1021:
3215                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3217  007a a008          	sub	a,#8
3218  007c 5f            	clrw	x
3219  007d 97            	ld	xl,a
3220  007e a601          	ld	a,#1
3221  0080 5d            	tnzw	x
3222  0081 2704          	jreq	L045
3223  0083               L245:
3224  0083 48            	sll	a
3225  0084 5a            	decw	x
3226  0085 26fc          	jrne	L245
3227  0087               L045:
3228  0087 43            	cpl	a
3229  0088 c4540c        	and	a,21516
3230  008b c7540c        	ld	21516,a
3231  008e 2009          	jra	L5021
3232  0090               L7711:
3233                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3235  0090 7b03          	ld	a,(OFST+2,sp)
3236  0092 43            	cpl	a
3237  0093 c45400        	and	a,21504
3238  0096 c75400        	ld	21504,a
3239  0099               L5021:
3240                     ; 686 }
3243  0099 5b03          	addw	sp,#3
3244  009b 81            	ret	
3257                     	xdef	_ADC1_ClearITPendingBit
3258                     	xdef	_ADC1_GetITStatus
3259                     	xdef	_ADC1_ClearFlag
3260                     	xdef	_ADC1_GetFlagStatus
3261                     	xdef	_ADC1_GetAWDChannelStatus
3262                     	xdef	_ADC1_GetBufferValue
3263                     	xdef	_ADC1_SetLowThreshold
3264                     	xdef	_ADC1_SetHighThreshold
3265                     	xdef	_ADC1_GetConversionValue
3266                     	xdef	_ADC1_StartConversion
3267                     	xdef	_ADC1_AWDChannelConfig
3268                     	xdef	_ADC1_ExternalTriggerConfig
3269                     	xdef	_ADC1_ConversionConfig
3270                     	xdef	_ADC1_SchmittTriggerConfig
3271                     	xdef	_ADC1_PrescalerConfig
3272                     	xdef	_ADC1_ITConfig
3273                     	xdef	_ADC1_DataBufferCmd
3274                     	xdef	_ADC1_ScanModeCmd
3275                     	xdef	_ADC1_Cmd
3276                     	xdef	_ADC1_Init
3277                     	xdef	_ADC1_DeInit
3278                     	xref	_assert_failed
3279                     .const:	section	.text
3280  0000               L542:
3281  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3282  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3283  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
3284  0036 5f616463312e  	dc.b	"_adc1.c",0
3304                     	end
