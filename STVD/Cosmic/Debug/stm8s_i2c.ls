   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 67 void I2C_DeInit(void)
  49                     ; 68 {
  51                     .text:	section	.text,new
  52  0000               _I2C_DeInit:
  56                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  58  0000 725f5210      	clr	21008
  59                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  61  0004 725f5211      	clr	21009
  62                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  64  0008 725f5212      	clr	21010
  65                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  67  000c 725f5213      	clr	21011
  68                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  70  0010 725f5214      	clr	21012
  71                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  73  0014 725f521a      	clr	21018
  74                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  76  0018 725f521b      	clr	21019
  77                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  79  001c 725f521c      	clr	21020
  80                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  82  0020 3502521d      	mov	21021,#2
  83                     ; 78 }
  86  0024 81            	ret	
 254                     .const:	section	.text
 255  0000               L65:
 256  0000 00061a81      	dc.l	400001
 257  0004               L46:
 258  0004 000186a1      	dc.l	100001
 259  0008               L66:
 260  0008 000f4240      	dc.l	1000000
 261                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 261                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 261                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 261                     ; 99 {
 262                     .text:	section	.text,new
 263  0000               _I2C_Init:
 265  0000 5209          	subw	sp,#9
 266       00000009      OFST:	set	9
 269                     ; 100   uint16_t result = 0x0004;
 271                     ; 101   uint16_t tmpval = 0;
 273                     ; 102   uint8_t tmpccrh = 0;
 275  0002 0f07          	clr	(OFST-2,sp)
 277                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 279  0004 7b13          	ld	a,(OFST+10,sp)
 280  0006 270e          	jreq	L41
 281  0008 a101          	cp	a,#1
 282  000a 270a          	jreq	L41
 283  000c a102          	cp	a,#2
 284  000e 2706          	jreq	L41
 285  0010 ae0069        	ldw	x,#105
 286  0013 cd0158        	call	LC001
 287  0016               L41:
 288                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 290  0016 7b14          	ld	a,(OFST+11,sp)
 291  0018 270a          	jreq	L42
 292  001a a180          	cp	a,#128
 293  001c 2706          	jreq	L42
 294  001e ae006a        	ldw	x,#106
 295  0021 cd0158        	call	LC001
 296  0024               L42:
 297                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 299  0024 1e10          	ldw	x,(OFST+7,sp)
 300  0026 a30400        	cpw	x,#1024
 301  0029 2506          	jrult	L23
 302  002b ae006b        	ldw	x,#107
 303  002e cd0158        	call	LC001
 304  0031               L23:
 305                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 307  0031 7b12          	ld	a,(OFST+9,sp)
 308  0033 270a          	jreq	L24
 309  0035 a140          	cp	a,#64
 310  0037 2706          	jreq	L24
 311  0039 ae006c        	ldw	x,#108
 312  003c cd0158        	call	LC001
 313  003f               L24:
 314                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 316  003f 7b15          	ld	a,(OFST+12,sp)
 317  0041 2704          	jreq	L64
 318  0043 a111          	cp	a,#17
 319  0045 2506          	jrult	L05
 320  0047               L64:
 321  0047 ae006d        	ldw	x,#109
 322  004a cd0158        	call	LC001
 323  004d               L05:
 324                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 326  004d 96            	ldw	x,sp
 327  004e 1c000c        	addw	x,#OFST+3
 328  0051 cd0000        	call	c_lzmp
 330  0054 270f          	jreq	L45
 331  0056 96            	ldw	x,sp
 332  0057 1c000c        	addw	x,#OFST+3
 333  005a cd0000        	call	c_ltor
 335  005d ae0000        	ldw	x,#L65
 336  0060 cd0000        	call	c_lcmp
 338  0063 2506          	jrult	L06
 339  0065               L45:
 340  0065 ae006e        	ldw	x,#110
 341  0068 cd0158        	call	LC001
 342  006b               L06:
 343                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 345  006b c65212        	ld	a,21010
 346  006e a4c0          	and	a,#192
 347  0070 c75212        	ld	21010,a
 348                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 350  0073 c65212        	ld	a,21010
 351  0076 1a15          	or	a,(OFST+12,sp)
 352  0078 c75212        	ld	21010,a
 353                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 355  007b 72115210      	bres	21008,#0
 356                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 358  007f c6521c        	ld	a,21020
 359  0082 a430          	and	a,#48
 360  0084 c7521c        	ld	21020,a
 361                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 363  0087 725f521b      	clr	21019
 364                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 366  008b 96            	ldw	x,sp
 367  008c 1c000c        	addw	x,#OFST+3
 368  008f cd0000        	call	c_ltor
 370  0092 ae0004        	ldw	x,#L46
 371  0095 cd0000        	call	c_lcmp
 373  0098 2560          	jrult	L711
 374                     ; 131     tmpccrh = I2C_CCRH_FS;
 376  009a a680          	ld	a,#128
 377  009c 6b07          	ld	(OFST-2,sp),a
 379                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 381  009e 96            	ldw	x,sp
 382  009f 0d12          	tnz	(OFST+9,sp)
 383  00a1 261d          	jrne	L121
 384                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 386  00a3 1c000c        	addw	x,#OFST+3
 387  00a6 cd0000        	call	c_ltor
 389  00a9 a603          	ld	a,#3
 390  00ab cd0000        	call	c_smul
 392  00ae 96            	ldw	x,sp
 393  00af 5c            	incw	x
 394  00b0 cd0000        	call	c_rtol
 397  00b3 7b15          	ld	a,(OFST+12,sp)
 398  00b5 cd0164        	call	LC002
 400  00b8 96            	ldw	x,sp
 401  00b9 cd0172        	call	LC003
 402  00bc 1f08          	ldw	(OFST-1,sp),x
 405  00be 2021          	jra	L321
 406  00c0               L121:
 407                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 409  00c0 1c000c        	addw	x,#OFST+3
 410  00c3 cd0000        	call	c_ltor
 412  00c6 a619          	ld	a,#25
 413  00c8 cd0000        	call	c_smul
 415  00cb 96            	ldw	x,sp
 416  00cc 5c            	incw	x
 417  00cd cd0000        	call	c_rtol
 420  00d0 7b15          	ld	a,(OFST+12,sp)
 421  00d2 cd0164        	call	LC002
 423  00d5 96            	ldw	x,sp
 424  00d6 cd0172        	call	LC003
 425  00d9 1f08          	ldw	(OFST-1,sp),x
 427                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 429  00db 7b07          	ld	a,(OFST-2,sp)
 430  00dd aa40          	or	a,#64
 431  00df 6b07          	ld	(OFST-2,sp),a
 433  00e1               L321:
 434                     ; 147     if (result < (uint16_t)0x01)
 436  00e1 1e08          	ldw	x,(OFST-1,sp)
 437  00e3 2603          	jrne	L521
 438                     ; 150       result = (uint16_t)0x0001;
 440  00e5 5c            	incw	x
 441  00e6 1f08          	ldw	(OFST-1,sp),x
 443  00e8               L521:
 444                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 446  00e8 7b15          	ld	a,(OFST+12,sp)
 447  00ea 97            	ld	xl,a
 448  00eb a603          	ld	a,#3
 449  00ed 42            	mul	x,a
 450  00ee a60a          	ld	a,#10
 451  00f0 cd0000        	call	c_sdivx
 453  00f3 5c            	incw	x
 454  00f4 1f05          	ldw	(OFST-4,sp),x
 456                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 458  00f6 7b06          	ld	a,(OFST-3,sp)
 460  00f8 2028          	jra	L721
 461  00fa               L711:
 462                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 464  00fa 96            	ldw	x,sp
 465  00fb 1c000c        	addw	x,#OFST+3
 466  00fe cd0000        	call	c_ltor
 468  0101 3803          	sll	c_lreg+3
 469  0103 3902          	rlc	c_lreg+2
 470  0105 3901          	rlc	c_lreg+1
 471  0107 96            	ldw	x,sp
 472  0108 3900          	rlc	c_lreg
 473  010a 5c            	incw	x
 474  010b cd0000        	call	c_rtol
 477  010e 7b15          	ld	a,(OFST+12,sp)
 478  0110 ad52          	call	LC002
 480  0112 96            	ldw	x,sp
 481  0113 ad5d          	call	LC003
 483                     ; 167     if (result < (uint16_t)0x0004)
 485  0115 a30004        	cpw	x,#4
 486  0118 2403          	jruge	L131
 487                     ; 170       result = (uint16_t)0x0004;
 489  011a ae0004        	ldw	x,#4
 491  011d               L131:
 492  011d 1f08          	ldw	(OFST-1,sp),x
 493                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 495  011f 7b15          	ld	a,(OFST+12,sp)
 496  0121 4c            	inc	a
 497  0122               L721:
 498  0122 c7521d        	ld	21021,a
 499                     ; 181   I2C->CCRL = (uint8_t)result;
 501  0125 7b09          	ld	a,(OFST+0,sp)
 502  0127 c7521b        	ld	21019,a
 503                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 505  012a 7b08          	ld	a,(OFST-1,sp)
 506  012c a40f          	and	a,#15
 507  012e 1a07          	or	a,(OFST-2,sp)
 508  0130 c7521c        	ld	21020,a
 509                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 511  0133 72105210      	bset	21008,#0
 512                     ; 188   I2C_AcknowledgeConfig(Ack);
 514  0137 7b13          	ld	a,(OFST+10,sp)
 515  0139 cd0000        	call	_I2C_AcknowledgeConfig
 517                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 519  013c 7b11          	ld	a,(OFST+8,sp)
 520  013e c75213        	ld	21011,a
 521                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 521                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 523  0141 1e10          	ldw	x,(OFST+7,sp)
 524  0143 4f            	clr	a
 525  0144 01            	rrwa	x,a
 526  0145 48            	sll	a
 527  0146 01            	rrwa	x,a
 528  0147 49            	rlc	a
 529  0148 a406          	and	a,#6
 530  014a 6b04          	ld	(OFST-5,sp),a
 532  014c 7b14          	ld	a,(OFST+11,sp)
 533  014e aa40          	or	a,#64
 534  0150 1a04          	or	a,(OFST-5,sp)
 535  0152 c75214        	ld	21012,a
 536                     ; 194 }
 539  0155 5b09          	addw	sp,#9
 540  0157 81            	ret	
 541  0158               LC001:
 542  0158 89            	pushw	x
 543  0159 5f            	clrw	x
 544  015a 89            	pushw	x
 545  015b ae000c        	ldw	x,#L511
 546  015e cd0000        	call	_assert_failed
 548  0161 5b04          	addw	sp,#4
 549  0163 81            	ret	
 550  0164               LC002:
 551  0164 b703          	ld	c_lreg+3,a
 552  0166 3f02          	clr	c_lreg+2
 553  0168 3f01          	clr	c_lreg+1
 554  016a 3f00          	clr	c_lreg
 555  016c ae0008        	ldw	x,#L66
 556  016f cc0000        	jp	c_lmul
 557  0172               LC003:
 558  0172 5c            	incw	x
 559  0173 cd0000        	call	c_ludv
 561  0176 be02          	ldw	x,c_lreg+2
 562  0178 81            	ret	
 618                     ; 202 void I2C_Cmd(FunctionalState NewState)
 618                     ; 203 {
 619                     .text:	section	.text,new
 620  0000               _I2C_Cmd:
 622  0000 88            	push	a
 623       00000000      OFST:	set	0
 626                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 628  0001 4d            	tnz	a
 629  0002 2711          	jreq	L001
 630  0004 4a            	dec	a
 631  0005 270e          	jreq	L001
 632  0007 ae00cd        	ldw	x,#205
 633  000a 89            	pushw	x
 634  000b 5f            	clrw	x
 635  000c 89            	pushw	x
 636  000d ae000c        	ldw	x,#L511
 637  0010 cd0000        	call	_assert_failed
 639  0013 5b04          	addw	sp,#4
 640  0015               L001:
 641                     ; 207   if (NewState != DISABLE)
 643  0015 7b01          	ld	a,(OFST+1,sp)
 644  0017 2706          	jreq	L161
 645                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 647  0019 72105210      	bset	21008,#0
 649  001d 2004          	jra	L361
 650  001f               L161:
 651                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 653  001f 72115210      	bres	21008,#0
 654  0023               L361:
 655                     ; 217 }
 658  0023 84            	pop	a
 659  0024 81            	ret	
 695                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 695                     ; 226 {
 696                     .text:	section	.text,new
 697  0000               _I2C_GeneralCallCmd:
 699  0000 88            	push	a
 700       00000000      OFST:	set	0
 703                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 705  0001 4d            	tnz	a
 706  0002 2711          	jreq	L211
 707  0004 4a            	dec	a
 708  0005 270e          	jreq	L211
 709  0007 ae00e4        	ldw	x,#228
 710  000a 89            	pushw	x
 711  000b 5f            	clrw	x
 712  000c 89            	pushw	x
 713  000d ae000c        	ldw	x,#L511
 714  0010 cd0000        	call	_assert_failed
 716  0013 5b04          	addw	sp,#4
 717  0015               L211:
 718                     ; 230   if (NewState != DISABLE)
 720  0015 7b01          	ld	a,(OFST+1,sp)
 721  0017 2706          	jreq	L302
 722                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 724  0019 721c5210      	bset	21008,#6
 726  001d 2004          	jra	L502
 727  001f               L302:
 728                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 730  001f 721d5210      	bres	21008,#6
 731  0023               L502:
 732                     ; 240 }
 735  0023 84            	pop	a
 736  0024 81            	ret	
 772                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 772                     ; 251 {
 773                     .text:	section	.text,new
 774  0000               _I2C_GenerateSTART:
 776  0000 88            	push	a
 777       00000000      OFST:	set	0
 780                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 782  0001 4d            	tnz	a
 783  0002 2711          	jreq	L421
 784  0004 4a            	dec	a
 785  0005 270e          	jreq	L421
 786  0007 ae00fd        	ldw	x,#253
 787  000a 89            	pushw	x
 788  000b 5f            	clrw	x
 789  000c 89            	pushw	x
 790  000d ae000c        	ldw	x,#L511
 791  0010 cd0000        	call	_assert_failed
 793  0013 5b04          	addw	sp,#4
 794  0015               L421:
 795                     ; 255   if (NewState != DISABLE)
 797  0015 7b01          	ld	a,(OFST+1,sp)
 798  0017 2706          	jreq	L522
 799                     ; 258     I2C->CR2 |= I2C_CR2_START;
 801  0019 72105211      	bset	21009,#0
 803  001d 2004          	jra	L722
 804  001f               L522:
 805                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 807  001f 72115211      	bres	21009,#0
 808  0023               L722:
 809                     ; 265 }
 812  0023 84            	pop	a
 813  0024 81            	ret	
 849                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 849                     ; 274 {
 850                     .text:	section	.text,new
 851  0000               _I2C_GenerateSTOP:
 853  0000 88            	push	a
 854       00000000      OFST:	set	0
 857                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 859  0001 4d            	tnz	a
 860  0002 2711          	jreq	L631
 861  0004 4a            	dec	a
 862  0005 270e          	jreq	L631
 863  0007 ae0114        	ldw	x,#276
 864  000a 89            	pushw	x
 865  000b 5f            	clrw	x
 866  000c 89            	pushw	x
 867  000d ae000c        	ldw	x,#L511
 868  0010 cd0000        	call	_assert_failed
 870  0013 5b04          	addw	sp,#4
 871  0015               L631:
 872                     ; 278   if (NewState != DISABLE)
 874  0015 7b01          	ld	a,(OFST+1,sp)
 875  0017 2706          	jreq	L742
 876                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 878  0019 72125211      	bset	21009,#1
 880  001d 2004          	jra	L152
 881  001f               L742:
 882                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 884  001f 72135211      	bres	21009,#1
 885  0023               L152:
 886                     ; 288 }
 889  0023 84            	pop	a
 890  0024 81            	ret	
 927                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
 927                     ; 297 {
 928                     .text:	section	.text,new
 929  0000               _I2C_SoftwareResetCmd:
 931  0000 88            	push	a
 932       00000000      OFST:	set	0
 935                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 937  0001 4d            	tnz	a
 938  0002 2711          	jreq	L051
 939  0004 4a            	dec	a
 940  0005 270e          	jreq	L051
 941  0007 ae012b        	ldw	x,#299
 942  000a 89            	pushw	x
 943  000b 5f            	clrw	x
 944  000c 89            	pushw	x
 945  000d ae000c        	ldw	x,#L511
 946  0010 cd0000        	call	_assert_failed
 948  0013 5b04          	addw	sp,#4
 949  0015               L051:
 950                     ; 301   if (NewState != DISABLE)
 952  0015 7b01          	ld	a,(OFST+1,sp)
 953  0017 2706          	jreq	L172
 954                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
 956  0019 721e5211      	bset	21009,#7
 958  001d 2004          	jra	L372
 959  001f               L172:
 960                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 962  001f 721f5211      	bres	21009,#7
 963  0023               L372:
 964                     ; 311 }
 967  0023 84            	pop	a
 968  0024 81            	ret	
1005                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1005                     ; 321 {
1006                     .text:	section	.text,new
1007  0000               _I2C_StretchClockCmd:
1009  0000 88            	push	a
1010       00000000      OFST:	set	0
1013                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1015  0001 4d            	tnz	a
1016  0002 2711          	jreq	L261
1017  0004 4a            	dec	a
1018  0005 270e          	jreq	L261
1019  0007 ae0143        	ldw	x,#323
1020  000a 89            	pushw	x
1021  000b 5f            	clrw	x
1022  000c 89            	pushw	x
1023  000d ae000c        	ldw	x,#L511
1024  0010 cd0000        	call	_assert_failed
1026  0013 5b04          	addw	sp,#4
1027  0015               L261:
1028                     ; 325   if (NewState != DISABLE)
1030  0015 7b01          	ld	a,(OFST+1,sp)
1031  0017 2706          	jreq	L313
1032                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1034  0019 721f5210      	bres	21008,#7
1036  001d 2004          	jra	L513
1037  001f               L313:
1038                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1040  001f 721e5210      	bset	21008,#7
1041  0023               L513:
1042                     ; 336 }
1045  0023 84            	pop	a
1046  0024 81            	ret	
1083                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1083                     ; 346 {
1084                     .text:	section	.text,new
1085  0000               _I2C_AcknowledgeConfig:
1087  0000 88            	push	a
1088       00000000      OFST:	set	0
1091                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1093  0001 4d            	tnz	a
1094  0002 2716          	jreq	L471
1095  0004 a101          	cp	a,#1
1096  0006 2712          	jreq	L471
1097  0008 a102          	cp	a,#2
1098  000a 270e          	jreq	L471
1099  000c ae015c        	ldw	x,#348
1100  000f 89            	pushw	x
1101  0010 5f            	clrw	x
1102  0011 89            	pushw	x
1103  0012 ae000c        	ldw	x,#L511
1104  0015 cd0000        	call	_assert_failed
1106  0018 5b04          	addw	sp,#4
1107  001a               L471:
1108                     ; 350   if (Ack == I2C_ACK_NONE)
1110  001a 7b01          	ld	a,(OFST+1,sp)
1111  001c 2606          	jrne	L533
1112                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1114  001e 72155211      	bres	21009,#2
1116  0022 2011          	jra	L733
1117  0024               L533:
1118                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1120  0024 72145211      	bset	21009,#2
1121                     ; 360     if (Ack == I2C_ACK_CURR)
1123  0028 4a            	dec	a
1124  0029 2606          	jrne	L143
1125                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1127  002b 72175211      	bres	21009,#3
1129  002f 2004          	jra	L733
1130  0031               L143:
1131                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1133  0031 72165211      	bset	21009,#3
1134  0035               L733:
1135                     ; 371 }
1138  0035 84            	pop	a
1139  0036 81            	ret	
1212                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1212                     ; 382 {
1213                     .text:	section	.text,new
1214  0000               _I2C_ITConfig:
1216  0000 89            	pushw	x
1217       00000000      OFST:	set	0
1220                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1222  0001 9e            	ld	a,xh
1223  0002 4a            	dec	a
1224  0003 2723          	jreq	L602
1225  0005 9e            	ld	a,xh
1226  0006 a102          	cp	a,#2
1227  0008 271e          	jreq	L602
1228  000a 9e            	ld	a,xh
1229  000b a104          	cp	a,#4
1230  000d 2719          	jreq	L602
1231  000f 9e            	ld	a,xh
1232  0010 a103          	cp	a,#3
1233  0012 2714          	jreq	L602
1234  0014 9e            	ld	a,xh
1235  0015 a105          	cp	a,#5
1236  0017 270f          	jreq	L602
1237  0019 9e            	ld	a,xh
1238  001a a106          	cp	a,#6
1239  001c 270a          	jreq	L602
1240  001e 9e            	ld	a,xh
1241  001f a107          	cp	a,#7
1242  0021 2705          	jreq	L602
1243  0023 ae0180        	ldw	x,#384
1244  0026 ad22          	call	LC004
1245  0028               L602:
1246                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1248  0028 7b02          	ld	a,(OFST+2,sp)
1249  002a 2708          	jreq	L612
1250  002c 4a            	dec	a
1251  002d 2705          	jreq	L612
1252  002f ae0181        	ldw	x,#385
1253  0032 ad16          	call	LC004
1254  0034               L612:
1255                     ; 387   if (NewState != DISABLE)
1257  0034 7b02          	ld	a,(OFST+2,sp)
1258  0036 2707          	jreq	L104
1259                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1261  0038 c6521a        	ld	a,21018
1262  003b 1a01          	or	a,(OFST+1,sp)
1264  003d 2006          	jra	L304
1265  003f               L104:
1266                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1268  003f 7b01          	ld	a,(OFST+1,sp)
1269  0041 43            	cpl	a
1270  0042 c4521a        	and	a,21018
1271  0045               L304:
1272  0045 c7521a        	ld	21018,a
1273                     ; 397 }
1276  0048 85            	popw	x
1277  0049 81            	ret	
1278  004a               LC004:
1279  004a 89            	pushw	x
1280  004b 5f            	clrw	x
1281  004c 89            	pushw	x
1282  004d ae000c        	ldw	x,#L511
1283  0050 cd0000        	call	_assert_failed
1285  0053 5b04          	addw	sp,#4
1286  0055 81            	ret	
1323                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1323                     ; 406 {
1324                     .text:	section	.text,new
1325  0000               _I2C_FastModeDutyCycleConfig:
1327  0000 88            	push	a
1328       00000000      OFST:	set	0
1331                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1333  0001 4d            	tnz	a
1334  0002 2712          	jreq	L032
1335  0004 a140          	cp	a,#64
1336  0006 270e          	jreq	L032
1337  0008 ae0198        	ldw	x,#408
1338  000b 89            	pushw	x
1339  000c 5f            	clrw	x
1340  000d 89            	pushw	x
1341  000e ae000c        	ldw	x,#L511
1342  0011 cd0000        	call	_assert_failed
1344  0014 5b04          	addw	sp,#4
1345  0016               L032:
1346                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1348  0016 7b01          	ld	a,(OFST+1,sp)
1349  0018 a140          	cp	a,#64
1350  001a 2606          	jrne	L324
1351                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1353  001c 721c521c      	bset	21020,#6
1355  0020 2004          	jra	L524
1356  0022               L324:
1357                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1359  0022 721d521c      	bres	21020,#6
1360  0026               L524:
1361                     ; 420 }
1364  0026 84            	pop	a
1365  0027 81            	ret	
1388                     ; 427 uint8_t I2C_ReceiveData(void)
1388                     ; 428 {
1389                     .text:	section	.text,new
1390  0000               _I2C_ReceiveData:
1394                     ; 430   return ((uint8_t)I2C->DR);
1396  0000 c65216        	ld	a,21014
1399  0003 81            	ret	
1463                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1463                     ; 441 {
1464                     .text:	section	.text,new
1465  0000               _I2C_Send7bitAddress:
1467  0000 89            	pushw	x
1468       00000000      OFST:	set	0
1471                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1473  0001 9e            	ld	a,xh
1474  0002 a501          	bcp	a,#1
1475  0004 2705          	jreq	L242
1476  0006 ae01bb        	ldw	x,#443
1477  0009 ad19          	call	LC005
1478  000b               L242:
1479                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1481  000b 7b02          	ld	a,(OFST+2,sp)
1482  000d 2708          	jreq	L252
1483  000f 4a            	dec	a
1484  0010 2705          	jreq	L252
1485  0012 ae01bc        	ldw	x,#444
1486  0015 ad0d          	call	LC005
1487  0017               L252:
1488                     ; 447   Address &= (uint8_t)0xFE;
1490  0017 7b01          	ld	a,(OFST+1,sp)
1491  0019 a4fe          	and	a,#254
1492  001b 6b01          	ld	(OFST+1,sp),a
1493                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1495  001d 1a02          	or	a,(OFST+2,sp)
1496  001f c75216        	ld	21014,a
1497                     ; 451 }
1500  0022 85            	popw	x
1501  0023 81            	ret	
1502  0024               LC005:
1503  0024 89            	pushw	x
1504  0025 5f            	clrw	x
1505  0026 89            	pushw	x
1506  0027 ae000c        	ldw	x,#L511
1507  002a cd0000        	call	_assert_failed
1509  002d 5b04          	addw	sp,#4
1510  002f 81            	ret	
1542                     ; 458 void I2C_SendData(uint8_t Data)
1542                     ; 459 {
1543                     .text:	section	.text,new
1544  0000               _I2C_SendData:
1548                     ; 461   I2C->DR = Data;
1550  0000 c75216        	ld	21014,a
1551                     ; 462 }
1554  0003 81            	ret	
1775                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1775                     ; 579 {
1776                     .text:	section	.text,new
1777  0000               _I2C_CheckEvent:
1779  0000 89            	pushw	x
1780  0001 5206          	subw	sp,#6
1781       00000006      OFST:	set	6
1784                     ; 580   __IO uint16_t lastevent = 0x00;
1786  0003 5f            	clrw	x
1787  0004 1f04          	ldw	(OFST-2,sp),x
1789                     ; 581   uint8_t flag1 = 0x00 ;
1791                     ; 582   uint8_t flag2 = 0x00;
1793                     ; 583   ErrorStatus status = ERROR;
1795                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1797  0006 1e07          	ldw	x,(OFST+1,sp)
1798  0008 a30682        	cpw	x,#1666
1799  000b 275b          	jreq	L662
1800  000d a30202        	cpw	x,#514
1801  0010 2756          	jreq	L662
1802  0012 a31200        	cpw	x,#4608
1803  0015 2751          	jreq	L662
1804  0017 a30240        	cpw	x,#576
1805  001a 274c          	jreq	L662
1806  001c a30350        	cpw	x,#848
1807  001f 2747          	jreq	L662
1808  0021 a30684        	cpw	x,#1668
1809  0024 2742          	jreq	L662
1810  0026 a30794        	cpw	x,#1940
1811  0029 273d          	jreq	L662
1812  002b a30004        	cpw	x,#4
1813  002e 2738          	jreq	L662
1814  0030 a30010        	cpw	x,#16
1815  0033 2733          	jreq	L662
1816  0035 a30301        	cpw	x,#769
1817  0038 272e          	jreq	L662
1818  003a a30782        	cpw	x,#1922
1819  003d 2729          	jreq	L662
1820  003f a30302        	cpw	x,#770
1821  0042 2724          	jreq	L662
1822  0044 a30340        	cpw	x,#832
1823  0047 271f          	jreq	L662
1824  0049 a30784        	cpw	x,#1924
1825  004c 271a          	jreq	L662
1826  004e a30780        	cpw	x,#1920
1827  0051 2715          	jreq	L662
1828  0053 a30308        	cpw	x,#776
1829  0056 2710          	jreq	L662
1830  0058 ae024a        	ldw	x,#586
1831  005b 89            	pushw	x
1832  005c 5f            	clrw	x
1833  005d 89            	pushw	x
1834  005e ae000c        	ldw	x,#L511
1835  0061 cd0000        	call	_assert_failed
1837  0064 5b04          	addw	sp,#4
1838  0066 1e07          	ldw	x,(OFST+1,sp)
1839  0068               L662:
1840                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1842  0068 a30004        	cpw	x,#4
1843  006b 2609          	jrne	L706
1844                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1846  006d c65218        	ld	a,21016
1847  0070 a404          	and	a,#4
1848  0072 5f            	clrw	x
1849  0073 97            	ld	xl,a
1851  0074 201a          	jra	L116
1852  0076               L706:
1853                     ; 594     flag1 = I2C->SR1;
1855  0076 c65217        	ld	a,21015
1856  0079 6b03          	ld	(OFST-3,sp),a
1858                     ; 595     flag2 = I2C->SR3;
1860  007b c65219        	ld	a,21017
1861  007e 6b06          	ld	(OFST+0,sp),a
1863                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1865  0080 5f            	clrw	x
1866  0081 7b03          	ld	a,(OFST-3,sp)
1867  0083 97            	ld	xl,a
1868  0084 1f01          	ldw	(OFST-5,sp),x
1870  0086 5f            	clrw	x
1871  0087 7b06          	ld	a,(OFST+0,sp)
1872  0089 97            	ld	xl,a
1873  008a 7b02          	ld	a,(OFST-4,sp)
1874  008c 01            	rrwa	x,a
1875  008d 1a01          	or	a,(OFST-5,sp)
1876  008f 01            	rrwa	x,a
1877  0090               L116:
1878  0090 1f04          	ldw	(OFST-2,sp),x
1880                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1882  0092 1e04          	ldw	x,(OFST-2,sp)
1883  0094 01            	rrwa	x,a
1884  0095 1408          	and	a,(OFST+2,sp)
1885  0097 01            	rrwa	x,a
1886  0098 1407          	and	a,(OFST+1,sp)
1887  009a 01            	rrwa	x,a
1888  009b 1307          	cpw	x,(OFST+1,sp)
1889  009d 2604          	jrne	L316
1890                     ; 602     status = SUCCESS;
1892  009f a601          	ld	a,#1
1895  00a1 2001          	jra	L516
1896  00a3               L316:
1897                     ; 607     status = ERROR;
1899  00a3 4f            	clr	a
1901  00a4               L516:
1902                     ; 611   return status;
1906  00a4 5b08          	addw	sp,#8
1907  00a6 81            	ret	
1956                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
1956                     ; 629 {
1957                     .text:	section	.text,new
1958  0000               _I2C_GetLastEvent:
1960  0000 5206          	subw	sp,#6
1961       00000006      OFST:	set	6
1964                     ; 630   __IO uint16_t lastevent = 0;
1966  0002 5f            	clrw	x
1967  0003 1f05          	ldw	(OFST-1,sp),x
1969                     ; 631   uint16_t flag1 = 0;
1971                     ; 632   uint16_t flag2 = 0;
1973                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1975  0005 7205521805    	btjf	21016,#2,L146
1976                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1978  000a ae0004        	ldw	x,#4
1980  000d 2013          	jra	L346
1981  000f               L146:
1982                     ; 641     flag1 = I2C->SR1;
1984  000f c65217        	ld	a,21015
1985  0012 97            	ld	xl,a
1986  0013 1f01          	ldw	(OFST-5,sp),x
1988                     ; 642     flag2 = I2C->SR3;
1990  0015 c65219        	ld	a,21017
1991  0018 5f            	clrw	x
1992  0019 97            	ld	xl,a
1993  001a 1f03          	ldw	(OFST-3,sp),x
1995                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1997  001c 7b02          	ld	a,(OFST-4,sp)
1998  001e 01            	rrwa	x,a
1999  001f 1a01          	or	a,(OFST-5,sp)
2000  0021 01            	rrwa	x,a
2001  0022               L346:
2002  0022 1f05          	ldw	(OFST-1,sp),x
2004                     ; 648   return (I2C_Event_TypeDef)lastevent;
2006  0024 1e05          	ldw	x,(OFST-1,sp)
2009  0026 5b06          	addw	sp,#6
2010  0028 81            	ret	
2222                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2222                     ; 680 {
2223                     .text:	section	.text,new
2224  0000               _I2C_GetFlagStatus:
2226  0000 89            	pushw	x
2227  0001 89            	pushw	x
2228       00000002      OFST:	set	2
2231                     ; 681   uint8_t tempreg = 0;
2233  0002 0f02          	clr	(OFST+0,sp)
2235                     ; 682   uint8_t regindex = 0;
2237                     ; 683   FlagStatus bitstatus = RESET;
2239                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2241  0004 a30180        	cpw	x,#384
2242  0007 2759          	jreq	L203
2243  0009 a30140        	cpw	x,#320
2244  000c 2754          	jreq	L203
2245  000e a30110        	cpw	x,#272
2246  0011 274f          	jreq	L203
2247  0013 a30108        	cpw	x,#264
2248  0016 274a          	jreq	L203
2249  0018 a30104        	cpw	x,#260
2250  001b 2745          	jreq	L203
2251  001d a30102        	cpw	x,#258
2252  0020 2740          	jreq	L203
2253  0022 a30101        	cpw	x,#257
2254  0025 273b          	jreq	L203
2255  0027 a30220        	cpw	x,#544
2256  002a 2736          	jreq	L203
2257  002c a30208        	cpw	x,#520
2258  002f 2731          	jreq	L203
2259  0031 a30204        	cpw	x,#516
2260  0034 272c          	jreq	L203
2261  0036 a30202        	cpw	x,#514
2262  0039 2727          	jreq	L203
2263  003b a30201        	cpw	x,#513
2264  003e 2722          	jreq	L203
2265  0040 a30310        	cpw	x,#784
2266  0043 271d          	jreq	L203
2267  0045 a30304        	cpw	x,#772
2268  0048 2718          	jreq	L203
2269  004a a30302        	cpw	x,#770
2270  004d 2713          	jreq	L203
2271  004f a30301        	cpw	x,#769
2272  0052 270e          	jreq	L203
2273  0054 ae02ae        	ldw	x,#686
2274  0057 89            	pushw	x
2275  0058 5f            	clrw	x
2276  0059 89            	pushw	x
2277  005a ae000c        	ldw	x,#L511
2278  005d cd0000        	call	_assert_failed
2280  0060 5b04          	addw	sp,#4
2281  0062               L203:
2282                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2284  0062 7b03          	ld	a,(OFST+1,sp)
2285  0064 6b01          	ld	(OFST-1,sp),a
2287                     ; 691   switch (regindex)
2290                     ; 708     default:
2290                     ; 709       break;
2291  0066 4a            	dec	a
2292  0067 2708          	jreq	L546
2293  0069 4a            	dec	a
2294  006a 270a          	jreq	L746
2295  006c 4a            	dec	a
2296  006d 270c          	jreq	L156
2297  006f 200f          	jra	L167
2298  0071               L546:
2299                     ; 694     case 0x01:
2299                     ; 695       tempreg = (uint8_t)I2C->SR1;
2301  0071 c65217        	ld	a,21015
2302                     ; 696       break;
2304  0074 2008          	jp	LC006
2305  0076               L746:
2306                     ; 699     case 0x02:
2306                     ; 700       tempreg = (uint8_t)I2C->SR2;
2308  0076 c65218        	ld	a,21016
2309                     ; 701       break;
2311  0079 2003          	jp	LC006
2312  007b               L156:
2313                     ; 704     case 0x03:
2313                     ; 705       tempreg = (uint8_t)I2C->SR3;
2315  007b c65219        	ld	a,21017
2316  007e               LC006:
2317  007e 6b02          	ld	(OFST+0,sp),a
2319                     ; 706       break;
2321                     ; 708     default:
2321                     ; 709       break;
2323  0080               L167:
2324                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2326  0080 7b04          	ld	a,(OFST+2,sp)
2327  0082 1502          	bcp	a,(OFST+0,sp)
2328  0084 2704          	jreq	L367
2329                     ; 716     bitstatus = SET;
2331  0086 a601          	ld	a,#1
2334  0088 2001          	jra	L567
2335  008a               L367:
2336                     ; 721     bitstatus = RESET;
2338  008a 4f            	clr	a
2340  008b               L567:
2341                     ; 724   return bitstatus;
2345  008b 5b04          	addw	sp,#4
2346  008d 81            	ret	
2389                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2389                     ; 760 {
2390                     .text:	section	.text,new
2391  0000               _I2C_ClearFlag:
2393  0000 89            	pushw	x
2394  0001 89            	pushw	x
2395       00000002      OFST:	set	2
2398                     ; 761   uint16_t flagpos = 0;
2400                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2402  0002 01            	rrwa	x,a
2403  0003 9f            	ld	a,xl
2404  0004 a4fd          	and	a,#253
2405  0006 97            	ld	xl,a
2406  0007 4f            	clr	a
2407  0008 02            	rlwa	x,a
2408  0009 5d            	tnzw	x
2409  000a 2604          	jrne	L013
2410  000c 1e03          	ldw	x,(OFST+1,sp)
2411  000e 260e          	jrne	L213
2412  0010               L013:
2413  0010 ae02fb        	ldw	x,#763
2414  0013 89            	pushw	x
2415  0014 5f            	clrw	x
2416  0015 89            	pushw	x
2417  0016 ae000c        	ldw	x,#L511
2418  0019 cd0000        	call	_assert_failed
2420  001c 5b04          	addw	sp,#4
2421  001e               L213:
2422                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2424  001e 7b04          	ld	a,(OFST+2,sp)
2425  0020 5f            	clrw	x
2426  0021 02            	rlwa	x,a
2427  0022 1f01          	ldw	(OFST-1,sp),x
2429                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2431  0024 7b02          	ld	a,(OFST+0,sp)
2432  0026 43            	cpl	a
2433  0027 c75218        	ld	21016,a
2434                     ; 769 }
2437  002a 5b04          	addw	sp,#4
2438  002c 81            	ret	
2603                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2603                     ; 792 {
2604                     .text:	section	.text,new
2605  0000               _I2C_GetITStatus:
2607  0000 89            	pushw	x
2608  0001 5204          	subw	sp,#4
2609       00000004      OFST:	set	4
2612                     ; 793   ITStatus bitstatus = RESET;
2614                     ; 794   __IO uint8_t enablestatus = 0;
2616  0003 0f03          	clr	(OFST-1,sp)
2618                     ; 795   uint16_t tempregister = 0;
2620                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2622  0005 a31680        	cpw	x,#5760
2623  0008 2745          	jreq	L423
2624  000a a31640        	cpw	x,#5696
2625  000d 2740          	jreq	L423
2626  000f a31210        	cpw	x,#4624
2627  0012 273b          	jreq	L423
2628  0014 a31208        	cpw	x,#4616
2629  0017 2736          	jreq	L423
2630  0019 a31204        	cpw	x,#4612
2631  001c 2731          	jreq	L423
2632  001e a31202        	cpw	x,#4610
2633  0021 272c          	jreq	L423
2634  0023 a31201        	cpw	x,#4609
2635  0026 2727          	jreq	L423
2636  0028 a32220        	cpw	x,#8736
2637  002b 2722          	jreq	L423
2638  002d a32108        	cpw	x,#8456
2639  0030 271d          	jreq	L423
2640  0032 a32104        	cpw	x,#8452
2641  0035 2718          	jreq	L423
2642  0037 a32102        	cpw	x,#8450
2643  003a 2713          	jreq	L423
2644  003c a32101        	cpw	x,#8449
2645  003f 270e          	jreq	L423
2646  0041 ae031e        	ldw	x,#798
2647  0044 89            	pushw	x
2648  0045 5f            	clrw	x
2649  0046 89            	pushw	x
2650  0047 ae000c        	ldw	x,#L511
2651  004a cd0000        	call	_assert_failed
2653  004d 5b04          	addw	sp,#4
2654  004f               L423:
2655                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2657  004f 7b05          	ld	a,(OFST+1,sp)
2658  0051 a407          	and	a,#7
2659  0053 5f            	clrw	x
2660  0054 97            	ld	xl,a
2661  0055 1f01          	ldw	(OFST-3,sp),x
2663                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2665  0057 c6521a        	ld	a,21018
2666  005a 1402          	and	a,(OFST-2,sp)
2667  005c 6b03          	ld	(OFST-1,sp),a
2669                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2671  005e 7b05          	ld	a,(OFST+1,sp)
2672  0060 a430          	and	a,#48
2673  0062 97            	ld	xl,a
2674  0063 4f            	clr	a
2675  0064 02            	rlwa	x,a
2676  0065 a30100        	cpw	x,#256
2677  0068 260d          	jrne	L3701
2678                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2680  006a c65217        	ld	a,21015
2681  006d 1506          	bcp	a,(OFST+2,sp)
2682  006f 2715          	jreq	L3011
2684  0071 0d03          	tnz	(OFST-1,sp)
2685  0073 2711          	jreq	L3011
2686                     ; 811       bitstatus = SET;
2688  0075 200b          	jp	LC008
2689                     ; 816       bitstatus = RESET;
2690  0077               L3701:
2691                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2693  0077 c65218        	ld	a,21016
2694  007a 1506          	bcp	a,(OFST+2,sp)
2695  007c 2708          	jreq	L3011
2697  007e 0d03          	tnz	(OFST-1,sp)
2698  0080 2704          	jreq	L3011
2699                     ; 825       bitstatus = SET;
2701  0082               LC008:
2703  0082 a601          	ld	a,#1
2706  0084 2001          	jra	L1011
2707  0086               L3011:
2708                     ; 830       bitstatus = RESET;
2711  0086 4f            	clr	a
2713  0087               L1011:
2714                     ; 834   return  bitstatus;
2718  0087 5b06          	addw	sp,#6
2719  0089 81            	ret	
2763                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2763                     ; 872 {
2764                     .text:	section	.text,new
2765  0000               _I2C_ClearITPendingBit:
2767  0000 89            	pushw	x
2768  0001 89            	pushw	x
2769       00000002      OFST:	set	2
2772                     ; 873   uint16_t flagpos = 0;
2774                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2776  0002 a32220        	cpw	x,#8736
2777  0005 2722          	jreq	L633
2778  0007 a32108        	cpw	x,#8456
2779  000a 271d          	jreq	L633
2780  000c a32104        	cpw	x,#8452
2781  000f 2718          	jreq	L633
2782  0011 a32102        	cpw	x,#8450
2783  0014 2713          	jreq	L633
2784  0016 a32101        	cpw	x,#8449
2785  0019 270e          	jreq	L633
2786  001b ae036c        	ldw	x,#876
2787  001e 89            	pushw	x
2788  001f 5f            	clrw	x
2789  0020 89            	pushw	x
2790  0021 ae000c        	ldw	x,#L511
2791  0024 cd0000        	call	_assert_failed
2793  0027 5b04          	addw	sp,#4
2794  0029               L633:
2795                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2797  0029 7b04          	ld	a,(OFST+2,sp)
2798  002b 5f            	clrw	x
2799  002c 02            	rlwa	x,a
2800  002d 1f01          	ldw	(OFST-1,sp),x
2802                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2804  002f 7b02          	ld	a,(OFST+0,sp)
2805  0031 43            	cpl	a
2806  0032 c75218        	ld	21016,a
2807                     ; 883 }
2810  0035 5b04          	addw	sp,#4
2811  0037 81            	ret	
2824                     	xdef	_I2C_ClearITPendingBit
2825                     	xdef	_I2C_GetITStatus
2826                     	xdef	_I2C_ClearFlag
2827                     	xdef	_I2C_GetFlagStatus
2828                     	xdef	_I2C_GetLastEvent
2829                     	xdef	_I2C_CheckEvent
2830                     	xdef	_I2C_SendData
2831                     	xdef	_I2C_Send7bitAddress
2832                     	xdef	_I2C_ReceiveData
2833                     	xdef	_I2C_ITConfig
2834                     	xdef	_I2C_FastModeDutyCycleConfig
2835                     	xdef	_I2C_AcknowledgeConfig
2836                     	xdef	_I2C_StretchClockCmd
2837                     	xdef	_I2C_SoftwareResetCmd
2838                     	xdef	_I2C_GenerateSTOP
2839                     	xdef	_I2C_GenerateSTART
2840                     	xdef	_I2C_GeneralCallCmd
2841                     	xdef	_I2C_Cmd
2842                     	xdef	_I2C_Init
2843                     	xdef	_I2C_DeInit
2844                     	xref	_assert_failed
2845                     	switch	.const
2846  000c               L511:
2847  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2848  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2849  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2850  0042 5f6932632e63  	dc.b	"_i2c.c",0
2851                     	xref.b	c_lreg
2852                     	xref.b	c_x
2872                     	xref	c_sdivx
2873                     	xref	c_ludv
2874                     	xref	c_rtol
2875                     	xref	c_smul
2876                     	xref	c_lmul
2877                     	xref	c_lcmp
2878                     	xref	c_ltor
2879                     	xref	c_lzmp
2880                     	end
