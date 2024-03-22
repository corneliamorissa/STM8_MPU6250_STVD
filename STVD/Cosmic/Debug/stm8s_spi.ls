   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 50 void SPI_DeInit(void)
  49                     ; 51 {
  51                     .text:	section	.text,new
  52  0000               _SPI_DeInit:
  56                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  58  0000 725f5200      	clr	20992
  59                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  61  0004 725f5201      	clr	20993
  62                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  64  0008 725f5202      	clr	20994
  65                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  67  000c 35025203      	mov	20995,#2
  68                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  70  0010 35075205      	mov	20997,#7
  71                     ; 57 }
  74  0014 81            	ret	
 389                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 389                     ; 79 {
 390                     .text:	section	.text,new
 391  0000               _SPI_Init:
 393  0000 89            	pushw	x
 394  0001 88            	push	a
 395       00000001      OFST:	set	1
 398                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 400  0002 9e            	ld	a,xh
 401  0003 4d            	tnz	a
 402  0004 270b          	jreq	L41
 403  0006 9e            	ld	a,xh
 404  0007 a180          	cp	a,#128
 405  0009 2706          	jreq	L41
 406  000b ae0051        	ldw	x,#81
 407  000e cd00c0        	call	LC001
 408  0011               L41:
 409                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 411  0011 7b03          	ld	a,(OFST+2,sp)
 412  0013 2722          	jreq	L42
 413  0015 a108          	cp	a,#8
 414  0017 271e          	jreq	L42
 415  0019 a110          	cp	a,#16
 416  001b 271a          	jreq	L42
 417  001d a118          	cp	a,#24
 418  001f 2716          	jreq	L42
 419  0021 a120          	cp	a,#32
 420  0023 2712          	jreq	L42
 421  0025 a128          	cp	a,#40
 422  0027 270e          	jreq	L42
 423  0029 a130          	cp	a,#48
 424  002b 270a          	jreq	L42
 425  002d a138          	cp	a,#56
 426  002f 2706          	jreq	L42
 427  0031 ae0052        	ldw	x,#82
 428  0034 cd00c0        	call	LC001
 429  0037               L42:
 430                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 432  0037 7b06          	ld	a,(OFST+5,sp)
 433  0039 a104          	cp	a,#4
 434  003b 2708          	jreq	L43
 435  003d 4d            	tnz	a
 436  003e 2705          	jreq	L43
 437  0040 ae0053        	ldw	x,#83
 438  0043 ad7b          	call	LC001
 439  0045               L43:
 440                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 442  0045 7b07          	ld	a,(OFST+6,sp)
 443  0047 2709          	jreq	L44
 444  0049 a102          	cp	a,#2
 445  004b 2705          	jreq	L44
 446  004d ae0054        	ldw	x,#84
 447  0050 ad6e          	call	LC001
 448  0052               L44:
 449                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 451  0052 7b08          	ld	a,(OFST+7,sp)
 452  0054 2708          	jreq	L45
 453  0056 4a            	dec	a
 454  0057 2705          	jreq	L45
 455  0059 ae0055        	ldw	x,#85
 456  005c ad62          	call	LC001
 457  005e               L45:
 458                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 460  005e 7b09          	ld	a,(OFST+8,sp)
 461  0060 2711          	jreq	L46
 462  0062 a104          	cp	a,#4
 463  0064 270d          	jreq	L46
 464  0066 a180          	cp	a,#128
 465  0068 2709          	jreq	L46
 466  006a a1c0          	cp	a,#192
 467  006c 2705          	jreq	L46
 468  006e ae0056        	ldw	x,#86
 469  0071 ad4d          	call	LC001
 470  0073               L46:
 471                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 473  0073 7b0a          	ld	a,(OFST+9,sp)
 474  0075 a102          	cp	a,#2
 475  0077 2708          	jreq	L47
 476  0079 4d            	tnz	a
 477  007a 2705          	jreq	L47
 478  007c ae0057        	ldw	x,#87
 479  007f ad3f          	call	LC001
 480  0081               L47:
 481                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 483  0081 7b0b          	ld	a,(OFST+10,sp)
 484  0083 2605          	jrne	L201
 485  0085 ae0058        	ldw	x,#88
 486  0088 ad36          	call	LC001
 487  008a               L201:
 488                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 488                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 490  008a 7b07          	ld	a,(OFST+6,sp)
 491  008c 1a08          	or	a,(OFST+7,sp)
 492  008e 6b01          	ld	(OFST+0,sp),a
 494  0090 7b02          	ld	a,(OFST+1,sp)
 495  0092 1a03          	or	a,(OFST+2,sp)
 496  0094 1a01          	or	a,(OFST+0,sp)
 497  0096 c75200        	ld	20992,a
 498                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 500  0099 7b09          	ld	a,(OFST+8,sp)
 501  009b 1a0a          	or	a,(OFST+9,sp)
 502  009d c75201        	ld	20993,a
 503                     ; 97   if (Mode == SPI_MODE_MASTER)
 505  00a0 7b06          	ld	a,(OFST+5,sp)
 506  00a2 a104          	cp	a,#4
 507  00a4 2606          	jrne	L302
 508                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 510  00a6 72105201      	bset	20993,#0
 512  00aa 2004          	jra	L502
 513  00ac               L302:
 514                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 516  00ac 72115201      	bres	20993,#0
 517  00b0               L502:
 518                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 520  00b0 c65200        	ld	a,20992
 521  00b3 1a06          	or	a,(OFST+5,sp)
 522  00b5 c75200        	ld	20992,a
 523                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 525  00b8 7b0b          	ld	a,(OFST+10,sp)
 526  00ba c75205        	ld	20997,a
 527                     ; 111 }
 530  00bd 5b03          	addw	sp,#3
 531  00bf 81            	ret	
 532  00c0               LC001:
 533  00c0 89            	pushw	x
 534  00c1 5f            	clrw	x
 535  00c2 89            	pushw	x
 536  00c3 ae0000        	ldw	x,#L102
 537  00c6 cd0000        	call	_assert_failed
 539  00c9 5b04          	addw	sp,#4
 540  00cb 81            	ret	
 596                     ; 119 void SPI_Cmd(FunctionalState NewState)
 596                     ; 120 {
 597                     .text:	section	.text,new
 598  0000               _SPI_Cmd:
 600  0000 88            	push	a
 601       00000000      OFST:	set	0
 604                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 606  0001 4d            	tnz	a
 607  0002 2711          	jreq	L411
 608  0004 4a            	dec	a
 609  0005 270e          	jreq	L411
 610  0007 ae007a        	ldw	x,#122
 611  000a 89            	pushw	x
 612  000b 5f            	clrw	x
 613  000c 89            	pushw	x
 614  000d ae0000        	ldw	x,#L102
 615  0010 cd0000        	call	_assert_failed
 617  0013 5b04          	addw	sp,#4
 618  0015               L411:
 619                     ; 124   if (NewState != DISABLE)
 621  0015 7b01          	ld	a,(OFST+1,sp)
 622  0017 2706          	jreq	L532
 623                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 625  0019 721c5200      	bset	20992,#6
 627  001d 2004          	jra	L732
 628  001f               L532:
 629                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 631  001f 721d5200      	bres	20992,#6
 632  0023               L732:
 633                     ; 132 }
 636  0023 84            	pop	a
 637  0024 81            	ret	
 745                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 745                     ; 142 {
 746                     .text:	section	.text,new
 747  0000               _SPI_ITConfig:
 749  0000 89            	pushw	x
 750  0001 88            	push	a
 751       00000001      OFST:	set	1
 754                     ; 143   uint8_t itpos = 0;
 756                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 758  0002 9e            	ld	a,xh
 759  0003 a117          	cp	a,#23
 760  0005 2714          	jreq	L621
 761  0007 9e            	ld	a,xh
 762  0008 a106          	cp	a,#6
 763  000a 270f          	jreq	L621
 764  000c 9e            	ld	a,xh
 765  000d a105          	cp	a,#5
 766  000f 270a          	jreq	L621
 767  0011 9e            	ld	a,xh
 768  0012 a134          	cp	a,#52
 769  0014 2705          	jreq	L621
 770  0016 ae0091        	ldw	x,#145
 771  0019 ad32          	call	LC002
 772  001b               L621:
 773                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 775  001b 7b03          	ld	a,(OFST+2,sp)
 776  001d 2708          	jreq	L631
 777  001f 4a            	dec	a
 778  0020 2705          	jreq	L631
 779  0022 ae0092        	ldw	x,#146
 780  0025 ad26          	call	LC002
 781  0027               L631:
 782                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 784  0027 7b02          	ld	a,(OFST+1,sp)
 785  0029 a40f          	and	a,#15
 786  002b 5f            	clrw	x
 787  002c 97            	ld	xl,a
 788  002d a601          	ld	a,#1
 789  002f 5d            	tnzw	x
 790  0030 2704          	jreq	L241
 791  0032               L441:
 792  0032 48            	sll	a
 793  0033 5a            	decw	x
 794  0034 26fc          	jrne	L441
 795  0036               L241:
 796  0036 6b01          	ld	(OFST+0,sp),a
 798                     ; 151   if (NewState != DISABLE)
 800  0038 0d03          	tnz	(OFST+2,sp)
 801  003a 2707          	jreq	L703
 802                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 804  003c c65202        	ld	a,20994
 805  003f 1a01          	or	a,(OFST+0,sp)
 807  0041 2004          	jra	L113
 808  0043               L703:
 809                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 811  0043 43            	cpl	a
 812  0044 c45202        	and	a,20994
 813  0047               L113:
 814  0047 c75202        	ld	20994,a
 815                     ; 159 }
 818  004a 5b03          	addw	sp,#3
 819  004c 81            	ret	
 820  004d               LC002:
 821  004d 89            	pushw	x
 822  004e 5f            	clrw	x
 823  004f 89            	pushw	x
 824  0050 ae0000        	ldw	x,#L102
 825  0053 cd0000        	call	_assert_failed
 827  0056 5b04          	addw	sp,#4
 828  0058 81            	ret	
 860                     ; 166 void SPI_SendData(uint8_t Data)
 860                     ; 167 {
 861                     .text:	section	.text,new
 862  0000               _SPI_SendData:
 866                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 868  0000 c75204        	ld	20996,a
 869                     ; 169 }
 872  0003 81            	ret	
 895                     ; 176 uint8_t SPI_ReceiveData(void)
 895                     ; 177 {
 896                     .text:	section	.text,new
 897  0000               _SPI_ReceiveData:
 901                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 903  0000 c65204        	ld	a,20996
 906  0003 81            	ret	
 943                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 943                     ; 188 {
 944                     .text:	section	.text,new
 945  0000               _SPI_NSSInternalSoftwareCmd:
 947  0000 88            	push	a
 948       00000000      OFST:	set	0
 951                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 953  0001 4d            	tnz	a
 954  0002 2711          	jreq	L061
 955  0004 4a            	dec	a
 956  0005 270e          	jreq	L061
 957  0007 ae00be        	ldw	x,#190
 958  000a 89            	pushw	x
 959  000b 5f            	clrw	x
 960  000c 89            	pushw	x
 961  000d ae0000        	ldw	x,#L102
 962  0010 cd0000        	call	_assert_failed
 964  0013 5b04          	addw	sp,#4
 965  0015               L061:
 966                     ; 192   if (NewState != DISABLE)
 968  0015 7b01          	ld	a,(OFST+1,sp)
 969  0017 2706          	jreq	L553
 970                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 972  0019 72105201      	bset	20993,#0
 974  001d 2004          	jra	L753
 975  001f               L553:
 976                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 978  001f 72115201      	bres	20993,#0
 979  0023               L753:
 980                     ; 200 }
 983  0023 84            	pop	a
 984  0024 81            	ret	
1007                     ; 207 void SPI_TransmitCRC(void)
1007                     ; 208 {
1008                     .text:	section	.text,new
1009  0000               _SPI_TransmitCRC:
1013                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1015  0000 72185201      	bset	20993,#4
1016                     ; 210 }
1019  0004 81            	ret	
1056                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1056                     ; 219 {
1057                     .text:	section	.text,new
1058  0000               _SPI_CalculateCRCCmd:
1060  0000 88            	push	a
1061       00000000      OFST:	set	0
1064                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1066  0001 4d            	tnz	a
1067  0002 2711          	jreq	L471
1068  0004 4a            	dec	a
1069  0005 270e          	jreq	L471
1070  0007 ae00dd        	ldw	x,#221
1071  000a 89            	pushw	x
1072  000b 5f            	clrw	x
1073  000c 89            	pushw	x
1074  000d ae0000        	ldw	x,#L102
1075  0010 cd0000        	call	_assert_failed
1077  0013 5b04          	addw	sp,#4
1078  0015               L471:
1079                     ; 223   if (NewState != DISABLE)
1081  0015 7b01          	ld	a,(OFST+1,sp)
1082  0017 2706          	jreq	L704
1083                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1085  0019 721a5201      	bset	20993,#5
1087  001d 2004          	jra	L114
1088  001f               L704:
1089                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1091  001f 721b5201      	bres	20993,#5
1092  0023               L114:
1093                     ; 231 }
1096  0023 84            	pop	a
1097  0024 81            	ret	
1160                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1160                     ; 239 {
1161                     .text:	section	.text,new
1162  0000               _SPI_GetCRC:
1164  0000 88            	push	a
1165  0001 88            	push	a
1166       00000001      OFST:	set	1
1169                     ; 240   uint8_t crcreg = 0;
1171                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1173  0002 a101          	cp	a,#1
1174  0004 2711          	jreq	L602
1175  0006 4d            	tnz	a
1176  0007 270e          	jreq	L602
1177  0009 ae00f3        	ldw	x,#243
1178  000c 89            	pushw	x
1179  000d 5f            	clrw	x
1180  000e 89            	pushw	x
1181  000f ae0000        	ldw	x,#L102
1182  0012 cd0000        	call	_assert_failed
1184  0015 5b04          	addw	sp,#4
1185  0017               L602:
1186                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1188  0017 7b02          	ld	a,(OFST+1,sp)
1189  0019 2705          	jreq	L344
1190                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1192  001b c65207        	ld	a,20999
1195  001e 2003          	jra	L544
1196  0020               L344:
1197                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1199  0020 c65206        	ld	a,20998
1201  0023               L544:
1202                     ; 255   return crcreg;
1206  0023 85            	popw	x
1207  0024 81            	ret	
1232                     ; 263 void SPI_ResetCRC(void)
1232                     ; 264 {
1233                     .text:	section	.text,new
1234  0000               _SPI_ResetCRC:
1238                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1240  0000 a601          	ld	a,#1
1241  0002 cd0000        	call	_SPI_CalculateCRCCmd
1243                     ; 270   SPI_Cmd(ENABLE);
1245  0005 a601          	ld	a,#1
1247                     ; 271 }
1250  0007 cc0000        	jp	_SPI_Cmd
1274                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1274                     ; 279 {
1275                     .text:	section	.text,new
1276  0000               _SPI_GetCRCPolynomial:
1280                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1282  0000 c65205        	ld	a,20997
1285  0003 81            	ret	
1342                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1342                     ; 289 {
1343                     .text:	section	.text,new
1344  0000               _SPI_BiDirectionalLineConfig:
1346  0000 88            	push	a
1347       00000000      OFST:	set	0
1350                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1352  0001 4d            	tnz	a
1353  0002 2711          	jreq	L032
1354  0004 4a            	dec	a
1355  0005 270e          	jreq	L032
1356  0007 ae0123        	ldw	x,#291
1357  000a 89            	pushw	x
1358  000b 5f            	clrw	x
1359  000c 89            	pushw	x
1360  000d ae0000        	ldw	x,#L102
1361  0010 cd0000        	call	_assert_failed
1363  0013 5b04          	addw	sp,#4
1364  0015               L032:
1365                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1367  0015 7b01          	ld	a,(OFST+1,sp)
1368  0017 2706          	jreq	L515
1369                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1371  0019 721c5201      	bset	20993,#6
1373  001d 2004          	jra	L715
1374  001f               L515:
1375                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1377  001f 721d5201      	bres	20993,#6
1378  0023               L715:
1379                     ; 301 }
1382  0023 84            	pop	a
1383  0024 81            	ret	
1505                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1505                     ; 312 {
1506                     .text:	section	.text,new
1507  0000               _SPI_GetFlagStatus:
1509  0000 88            	push	a
1510  0001 88            	push	a
1511       00000001      OFST:	set	1
1514                     ; 313   FlagStatus status = RESET;
1516                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1518  0002 a140          	cp	a,#64
1519  0004 2726          	jreq	L242
1520  0006 a120          	cp	a,#32
1521  0008 2722          	jreq	L242
1522  000a a110          	cp	a,#16
1523  000c 271e          	jreq	L242
1524  000e a108          	cp	a,#8
1525  0010 271a          	jreq	L242
1526  0012 a102          	cp	a,#2
1527  0014 2716          	jreq	L242
1528  0016 a101          	cp	a,#1
1529  0018 2712          	jreq	L242
1530  001a a180          	cp	a,#128
1531  001c 270e          	jreq	L242
1532  001e ae013b        	ldw	x,#315
1533  0021 89            	pushw	x
1534  0022 5f            	clrw	x
1535  0023 89            	pushw	x
1536  0024 ae0000        	ldw	x,#L102
1537  0027 cd0000        	call	_assert_failed
1539  002a 5b04          	addw	sp,#4
1540  002c               L242:
1541                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1543  002c c65203        	ld	a,20995
1544  002f 1502          	bcp	a,(OFST+1,sp)
1545  0031 2704          	jreq	L575
1546                     ; 320     status = SET; /* SPI_FLAG is set */
1548  0033 a601          	ld	a,#1
1551  0035 2001          	jra	L775
1552  0037               L575:
1553                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1555  0037 4f            	clr	a
1557  0038               L775:
1558                     ; 328   return status;
1562  0038 85            	popw	x
1563  0039 81            	ret	
1599                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1599                     ; 347 {
1600                     .text:	section	.text,new
1601  0000               _SPI_ClearFlag:
1603  0000 88            	push	a
1604       00000000      OFST:	set	0
1607                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1609  0001 a110          	cp	a,#16
1610  0003 2712          	jreq	L452
1611  0005 a108          	cp	a,#8
1612  0007 270e          	jreq	L452
1613  0009 ae015c        	ldw	x,#348
1614  000c 89            	pushw	x
1615  000d 5f            	clrw	x
1616  000e 89            	pushw	x
1617  000f ae0000        	ldw	x,#L102
1618  0012 cd0000        	call	_assert_failed
1620  0015 5b04          	addw	sp,#4
1621  0017               L452:
1622                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1624  0017 7b01          	ld	a,(OFST+1,sp)
1625  0019 43            	cpl	a
1626  001a c75203        	ld	20995,a
1627                     ; 351 }
1630  001d 84            	pop	a
1631  001e 81            	ret	
1706                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1706                     ; 367 {
1707                     .text:	section	.text,new
1708  0000               _SPI_GetITStatus:
1710  0000 88            	push	a
1711  0001 89            	pushw	x
1712       00000002      OFST:	set	2
1715                     ; 368   ITStatus pendingbitstatus = RESET;
1717                     ; 369   uint8_t itpos = 0;
1719                     ; 370   uint8_t itmask1 = 0;
1721                     ; 371   uint8_t itmask2 = 0;
1723                     ; 372   uint8_t enablestatus = 0;
1725                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1727  0002 a165          	cp	a,#101
1728  0004 2722          	jreq	L662
1729  0006 a155          	cp	a,#85
1730  0008 271e          	jreq	L662
1731  000a a145          	cp	a,#69
1732  000c 271a          	jreq	L662
1733  000e a134          	cp	a,#52
1734  0010 2716          	jreq	L662
1735  0012 a117          	cp	a,#23
1736  0014 2712          	jreq	L662
1737  0016 a106          	cp	a,#6
1738  0018 270e          	jreq	L662
1739  001a ae0175        	ldw	x,#373
1740  001d 89            	pushw	x
1741  001e 5f            	clrw	x
1742  001f 89            	pushw	x
1743  0020 ae0000        	ldw	x,#L102
1744  0023 cd0000        	call	_assert_failed
1746  0026 5b04          	addw	sp,#4
1747  0028               L662:
1748                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1750  0028 7b03          	ld	a,(OFST+1,sp)
1751  002a a40f          	and	a,#15
1752  002c 5f            	clrw	x
1753  002d 97            	ld	xl,a
1754  002e a601          	ld	a,#1
1755  0030 5d            	tnzw	x
1756  0031 2704          	jreq	L272
1757  0033               L472:
1758  0033 48            	sll	a
1759  0034 5a            	decw	x
1760  0035 26fc          	jrne	L472
1761  0037               L272:
1762  0037 6b01          	ld	(OFST-1,sp),a
1764                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1766  0039 7b03          	ld	a,(OFST+1,sp)
1767  003b 4e            	swap	a
1768  003c a40f          	and	a,#15
1769  003e 6b02          	ld	(OFST+0,sp),a
1771                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1773  0040 5f            	clrw	x
1774  0041 97            	ld	xl,a
1775  0042 a601          	ld	a,#1
1776  0044 5d            	tnzw	x
1777  0045 2704          	jreq	L672
1778  0047               L003:
1779  0047 48            	sll	a
1780  0048 5a            	decw	x
1781  0049 26fc          	jrne	L003
1782  004b               L672:
1784                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1786  004b c45203        	and	a,20995
1787  004e 6b02          	ld	(OFST+0,sp),a
1789                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1791  0050 c65202        	ld	a,20994
1792  0053 1501          	bcp	a,(OFST-1,sp)
1793  0055 2708          	jreq	L156
1795  0057 7b02          	ld	a,(OFST+0,sp)
1796  0059 2704          	jreq	L156
1797                     ; 387     pendingbitstatus = SET;
1799  005b a601          	ld	a,#1
1802  005d 2001          	jra	L356
1803  005f               L156:
1804                     ; 392     pendingbitstatus = RESET;
1806  005f 4f            	clr	a
1808  0060               L356:
1809                     ; 395   return  pendingbitstatus;
1813  0060 5b03          	addw	sp,#3
1814  0062 81            	ret	
1858                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1858                     ; 413 {
1859                     .text:	section	.text,new
1860  0000               _SPI_ClearITPendingBit:
1862  0000 88            	push	a
1863  0001 88            	push	a
1864       00000001      OFST:	set	1
1867                     ; 414   uint8_t itpos = 0;
1869                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1871  0002 a145          	cp	a,#69
1872  0004 2712          	jreq	L013
1873  0006 a134          	cp	a,#52
1874  0008 270e          	jreq	L013
1875  000a ae019f        	ldw	x,#415
1876  000d 89            	pushw	x
1877  000e 5f            	clrw	x
1878  000f 89            	pushw	x
1879  0010 ae0000        	ldw	x,#L102
1880  0013 cd0000        	call	_assert_failed
1882  0016 5b04          	addw	sp,#4
1883  0018               L013:
1884                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1886  0018 7b02          	ld	a,(OFST+1,sp)
1887  001a 4e            	swap	a
1888  001b a40f          	and	a,#15
1889  001d 5f            	clrw	x
1890  001e 97            	ld	xl,a
1891  001f a601          	ld	a,#1
1892  0021 5d            	tnzw	x
1893  0022 2704          	jreq	L413
1894  0024               L613:
1895  0024 48            	sll	a
1896  0025 5a            	decw	x
1897  0026 26fc          	jrne	L613
1898  0028               L413:
1900                     ; 422   SPI->SR = (uint8_t)(~itpos);
1902  0028 43            	cpl	a
1903  0029 c75203        	ld	20995,a
1904                     ; 424 }
1907  002c 85            	popw	x
1908  002d 81            	ret	
1921                     	xdef	_SPI_ClearITPendingBit
1922                     	xdef	_SPI_GetITStatus
1923                     	xdef	_SPI_ClearFlag
1924                     	xdef	_SPI_GetFlagStatus
1925                     	xdef	_SPI_BiDirectionalLineConfig
1926                     	xdef	_SPI_GetCRCPolynomial
1927                     	xdef	_SPI_ResetCRC
1928                     	xdef	_SPI_GetCRC
1929                     	xdef	_SPI_CalculateCRCCmd
1930                     	xdef	_SPI_TransmitCRC
1931                     	xdef	_SPI_NSSInternalSoftwareCmd
1932                     	xdef	_SPI_ReceiveData
1933                     	xdef	_SPI_SendData
1934                     	xdef	_SPI_ITConfig
1935                     	xdef	_SPI_Cmd
1936                     	xdef	_SPI_Init
1937                     	xdef	_SPI_DeInit
1938                     	xref	_assert_failed
1939                     .const:	section	.text
1940  0000               L102:
1941  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1942  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1943  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1944  0036 5f7370692e63  	dc.b	"_spi.c",0
1964                     	end
