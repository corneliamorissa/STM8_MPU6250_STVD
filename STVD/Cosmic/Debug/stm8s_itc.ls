   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  49                     ; 50 uint8_t ITC_GetCPUCC(void)
  49                     ; 51 {
  51                     .text:	section	.text,new
  52  0000               _ITC_GetCPUCC:
  56                     ; 53   _asm("push cc");
  59  0000 8a            	push	cc
  61                     ; 54   _asm("pop a");
  64  0001 84            	pop	a
  66                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  69  0002 81            	ret	
  92                     ; 80 void ITC_DeInit(void)
  92                     ; 81 {
  93                     .text:	section	.text,new
  94  0000               _ITC_DeInit:
  98                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
 100  0000 35ff7f70      	mov	32624,#255
 101                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 103  0004 35ff7f71      	mov	32625,#255
 104                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 106  0008 35ff7f72      	mov	32626,#255
 107                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 109  000c 35ff7f73      	mov	32627,#255
 110                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 112  0010 35ff7f74      	mov	32628,#255
 113                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 115  0014 35ff7f75      	mov	32629,#255
 116                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 118  0018 35ff7f76      	mov	32630,#255
 119                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 121  001c 35ff7f77      	mov	32631,#255
 122                     ; 90 }
 125  0020 81            	ret	
 150                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 150                     ; 98 {
 151                     .text:	section	.text,new
 152  0000               _ITC_GetSoftIntStatus:
 156                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 158  0000 cd0000        	call	_ITC_GetCPUCC
 160  0003 a428          	and	a,#40
 163  0005 81            	ret	
 409                     .const:	section	.text
 410  0000               L23:
 411  0000 0035          	dc.w	L14
 412  0002 0035          	dc.w	L14
 413  0004 0035          	dc.w	L14
 414  0006 0035          	dc.w	L14
 415  0008 003a          	dc.w	L34
 416  000a 003a          	dc.w	L34
 417  000c 003a          	dc.w	L34
 418  000e 003a          	dc.w	L34
 419  0010 005a          	dc.w	L102
 420  0012 005a          	dc.w	L102
 421  0014 003f          	dc.w	L54
 422  0016 003f          	dc.w	L54
 423  0018 0044          	dc.w	L74
 424  001a 0044          	dc.w	L74
 425  001c 0044          	dc.w	L74
 426  001e 0044          	dc.w	L74
 427  0020 0049          	dc.w	L15
 428  0022 005a          	dc.w	L102
 429  0024 005a          	dc.w	L102
 430  0026 0049          	dc.w	L15
 431  0028 004e          	dc.w	L35
 432  002a 004e          	dc.w	L35
 433  002c 004e          	dc.w	L35
 434  002e 004e          	dc.w	L35
 435  0030 0053          	dc.w	L55
 436                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 436                     ; 108 {
 437                     .text:	section	.text,new
 438  0000               _ITC_GetSoftwarePriority:
 440  0000 88            	push	a
 441  0001 89            	pushw	x
 442       00000002      OFST:	set	2
 445                     ; 109   uint8_t Value = 0;
 447  0002 0f02          	clr	(OFST+0,sp)
 449                     ; 110   uint8_t Mask = 0;
 451                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 453  0004 a119          	cp	a,#25
 454  0006 250e          	jrult	L02
 455  0008 ae0071        	ldw	x,#113
 456  000b 89            	pushw	x
 457  000c 5f            	clrw	x
 458  000d 89            	pushw	x
 459  000e ae0064        	ldw	x,#L571
 460  0011 cd0000        	call	_assert_failed
 462  0014 5b04          	addw	sp,#4
 463  0016               L02:
 464                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 466  0016 7b03          	ld	a,(OFST+1,sp)
 467  0018 a403          	and	a,#3
 468  001a 48            	sll	a
 469  001b 5f            	clrw	x
 470  001c 97            	ld	xl,a
 471  001d a603          	ld	a,#3
 472  001f 5d            	tnzw	x
 473  0020 2704          	jreq	L42
 474  0022               L62:
 475  0022 48            	sll	a
 476  0023 5a            	decw	x
 477  0024 26fc          	jrne	L62
 478  0026               L42:
 479  0026 6b01          	ld	(OFST-1,sp),a
 481                     ; 118   switch (IrqNum)
 483  0028 7b03          	ld	a,(OFST+1,sp)
 485                     ; 198   default:
 485                     ; 199     break;
 486  002a a119          	cp	a,#25
 487  002c 242c          	jruge	L102
 488  002e 5f            	clrw	x
 489  002f 97            	ld	xl,a
 490  0030 58            	sllw	x
 491  0031 de0000        	ldw	x,(L23,x)
 492  0034 fc            	jp	(x)
 493  0035               L14:
 494                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 494                     ; 121   case ITC_IRQ_AWU:
 494                     ; 122   case ITC_IRQ_CLK:
 494                     ; 123   case ITC_IRQ_PORTA:
 494                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 496  0035 c67f70        	ld	a,32624
 497                     ; 125     break;
 499  0038 201c          	jp	LC001
 500  003a               L34:
 501                     ; 127   case ITC_IRQ_PORTB:
 501                     ; 128   case ITC_IRQ_PORTC:
 501                     ; 129   case ITC_IRQ_PORTD:
 501                     ; 130   case ITC_IRQ_PORTE:
 501                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 503  003a c67f71        	ld	a,32625
 504                     ; 132     break;
 506  003d 2017          	jp	LC001
 507  003f               L54:
 508                     ; 141   case ITC_IRQ_SPI:
 508                     ; 142   case ITC_IRQ_TIM1_OVF:
 508                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 510  003f c67f72        	ld	a,32626
 511                     ; 144     break;
 513  0042 2012          	jp	LC001
 514  0044               L74:
 515                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 515                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 515                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 515                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 515                     ; 150 #else
 515                     ; 151   case ITC_IRQ_TIM2_OVF:
 515                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 515                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 515                     ; 154   case ITC_IRQ_TIM3_OVF:
 515                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 517  0044 c67f73        	ld	a,32627
 518                     ; 156     break;
 520  0047 200d          	jp	LC001
 521  0049               L15:
 522                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 522                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 522                     ; 160     defined(STM8S003) ||defined(STM8S001) || defined (STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 522                     ; 161   case ITC_IRQ_UART1_TX:
 522                     ; 162   case ITC_IRQ_UART1_RX:
 522                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 522                     ; 164 #if defined(STM8AF622x)
 522                     ; 165   case ITC_IRQ_UART4_TX:
 522                     ; 166   case ITC_IRQ_UART4_RX:
 522                     ; 167 #endif /*STM8AF622x */
 522                     ; 168   case ITC_IRQ_I2C:
 522                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 524  0049 c67f74        	ld	a,32628
 525                     ; 170     break;
 527  004c 2008          	jp	LC001
 528  004e               L35:
 529                     ; 173   case ITC_IRQ_UART2_TX:
 529                     ; 174   case ITC_IRQ_UART2_RX:
 529                     ; 175 #endif /*STM8S105 or STM8AF626x*/
 529                     ; 176 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 529                     ; 177     defined(STM8AF62Ax)
 529                     ; 178   case ITC_IRQ_UART3_TX:
 529                     ; 179   case ITC_IRQ_UART3_RX:
 529                     ; 180   case ITC_IRQ_ADC2:
 529                     ; 181 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 529                     ; 182 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 529                     ; 183     defined(STM8S001) || defined(STM8S903) || defined(STM8AF626x) || defined(STM8AF622x)
 529                     ; 184   case ITC_IRQ_ADC1:
 529                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 529                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 529                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 529                     ; 188 #else
 529                     ; 189   case ITC_IRQ_TIM4_OVF:
 529                     ; 190 #endif /*STM8S903 or STM8AF622x */
 529                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 531  004e c67f75        	ld	a,32629
 532                     ; 192     break;
 534  0051 2003          	jp	LC001
 535  0053               L55:
 536                     ; 194   case ITC_IRQ_EEPROM_EEC:
 536                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 538  0053 c67f76        	ld	a,32630
 539  0056               LC001:
 540  0056 1401          	and	a,(OFST-1,sp)
 541  0058 6b02          	ld	(OFST+0,sp),a
 543                     ; 196     break;
 545                     ; 198   default:
 545                     ; 199     break;
 547  005a               L102:
 548                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 550  005a 7b03          	ld	a,(OFST+1,sp)
 551  005c a403          	and	a,#3
 552  005e 48            	sll	a
 553  005f 5f            	clrw	x
 554  0060 97            	ld	xl,a
 555  0061 7b02          	ld	a,(OFST+0,sp)
 556  0063 5d            	tnzw	x
 557  0064 2704          	jreq	L43
 558  0066               L63:
 559  0066 44            	srl	a
 560  0067 5a            	decw	x
 561  0068 26fc          	jrne	L63
 562  006a               L43:
 564                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 568  006a 5b03          	addw	sp,#3
 569  006c 81            	ret	
 631                     	switch	.const
 632  0032               L201:
 633  0032 0066          	dc.w	L302
 634  0034 0066          	dc.w	L302
 635  0036 0066          	dc.w	L302
 636  0038 0066          	dc.w	L302
 637  003a 0078          	dc.w	L502
 638  003c 0078          	dc.w	L502
 639  003e 0078          	dc.w	L502
 640  0040 0078          	dc.w	L502
 641  0042 00e2          	dc.w	L352
 642  0044 00e2          	dc.w	L352
 643  0046 008a          	dc.w	L702
 644  0048 008a          	dc.w	L702
 645  004a 009c          	dc.w	L112
 646  004c 009c          	dc.w	L112
 647  004e 009c          	dc.w	L112
 648  0050 009c          	dc.w	L112
 649  0052 00ae          	dc.w	L312
 650  0054 00e2          	dc.w	L352
 651  0056 00e2          	dc.w	L352
 652  0058 00ae          	dc.w	L312
 653  005a 00c0          	dc.w	L512
 654  005c 00c0          	dc.w	L512
 655  005e 00c0          	dc.w	L512
 656  0060 00c0          	dc.w	L512
 657  0062 00d2          	dc.w	L712
 658                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 658                     ; 221 {
 659                     .text:	section	.text,new
 660  0000               _ITC_SetSoftwarePriority:
 662  0000 89            	pushw	x
 663  0001 89            	pushw	x
 664       00000002      OFST:	set	2
 667                     ; 222   uint8_t Mask = 0;
 669                     ; 223   uint8_t NewPriority = 0;
 671                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 673  0002 9e            	ld	a,xh
 674  0003 a119          	cp	a,#25
 675  0005 2506          	jrult	L44
 676  0007 ae00e2        	ldw	x,#226
 677  000a cd00e5        	call	LC002
 678  000d               L44:
 679                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 681  000d 7b04          	ld	a,(OFST+2,sp)
 682  000f a102          	cp	a,#2
 683  0011 2711          	jreq	L45
 684  0013 a101          	cp	a,#1
 685  0015 270d          	jreq	L45
 686  0017 4d            	tnz	a
 687  0018 270a          	jreq	L45
 688  001a a103          	cp	a,#3
 689  001c 2706          	jreq	L45
 690  001e ae00e3        	ldw	x,#227
 691  0021 cd00e5        	call	LC002
 692  0024               L45:
 693                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 695  0024 cd0000        	call	_ITC_GetSoftIntStatus
 697  0027 a128          	cp	a,#40
 698  0029 2706          	jreq	L46
 699  002b ae00e6        	ldw	x,#230
 700  002e cd00e5        	call	LC002
 701  0031               L46:
 702                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 704  0031 7b03          	ld	a,(OFST+1,sp)
 705  0033 a403          	and	a,#3
 706  0035 48            	sll	a
 707  0036 5f            	clrw	x
 708  0037 97            	ld	xl,a
 709  0038 a603          	ld	a,#3
 710  003a 5d            	tnzw	x
 711  003b 2704          	jreq	L07
 712  003d               L27:
 713  003d 48            	sll	a
 714  003e 5a            	decw	x
 715  003f 26fc          	jrne	L27
 716  0041               L07:
 717  0041 43            	cpl	a
 718  0042 6b01          	ld	(OFST-1,sp),a
 720                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 722  0044 7b03          	ld	a,(OFST+1,sp)
 723  0046 a403          	and	a,#3
 724  0048 48            	sll	a
 725  0049 5f            	clrw	x
 726  004a 97            	ld	xl,a
 727  004b 7b04          	ld	a,(OFST+2,sp)
 728  004d 5d            	tnzw	x
 729  004e 2704          	jreq	L47
 730  0050               L67:
 731  0050 48            	sll	a
 732  0051 5a            	decw	x
 733  0052 26fc          	jrne	L67
 734  0054               L47:
 735  0054 6b02          	ld	(OFST+0,sp),a
 737                     ; 239   switch (IrqNum)
 739  0056 7b03          	ld	a,(OFST+1,sp)
 741                     ; 329   default:
 741                     ; 330     break;
 742  0058 a119          	cp	a,#25
 743  005a 2503cc00e2    	jruge	L352
 744  005f 5f            	clrw	x
 745  0060 97            	ld	xl,a
 746  0061 58            	sllw	x
 747  0062 de0032        	ldw	x,(L201,x)
 748  0065 fc            	jp	(x)
 749  0066               L302:
 750                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 750                     ; 242   case ITC_IRQ_AWU:
 750                     ; 243   case ITC_IRQ_CLK:
 750                     ; 244   case ITC_IRQ_PORTA:
 750                     ; 245     ITC->ISPR1 &= Mask;
 752  0066 c67f70        	ld	a,32624
 753  0069 1401          	and	a,(OFST-1,sp)
 754  006b c77f70        	ld	32624,a
 755                     ; 246     ITC->ISPR1 |= NewPriority;
 757  006e c67f70        	ld	a,32624
 758  0071 1a02          	or	a,(OFST+0,sp)
 759  0073 c77f70        	ld	32624,a
 760                     ; 247     break;
 762  0076 206a          	jra	L352
 763  0078               L502:
 764                     ; 249   case ITC_IRQ_PORTB:
 764                     ; 250   case ITC_IRQ_PORTC:
 764                     ; 251   case ITC_IRQ_PORTD:
 764                     ; 252   case ITC_IRQ_PORTE:
 764                     ; 253     ITC->ISPR2 &= Mask;
 766  0078 c67f71        	ld	a,32625
 767  007b 1401          	and	a,(OFST-1,sp)
 768  007d c77f71        	ld	32625,a
 769                     ; 254     ITC->ISPR2 |= NewPriority;
 771  0080 c67f71        	ld	a,32625
 772  0083 1a02          	or	a,(OFST+0,sp)
 773  0085 c77f71        	ld	32625,a
 774                     ; 255     break;
 776  0088 2058          	jra	L352
 777  008a               L702:
 778                     ; 264   case ITC_IRQ_SPI:
 778                     ; 265   case ITC_IRQ_TIM1_OVF:
 778                     ; 266     ITC->ISPR3 &= Mask;
 780  008a c67f72        	ld	a,32626
 781  008d 1401          	and	a,(OFST-1,sp)
 782  008f c77f72        	ld	32626,a
 783                     ; 267     ITC->ISPR3 |= NewPriority;
 785  0092 c67f72        	ld	a,32626
 786  0095 1a02          	or	a,(OFST+0,sp)
 787  0097 c77f72        	ld	32626,a
 788                     ; 268     break;
 790  009a 2046          	jra	L352
 791  009c               L112:
 792                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 792                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 792                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 792                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 792                     ; 274 #else
 792                     ; 275   case ITC_IRQ_TIM2_OVF:
 792                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 792                     ; 277 #endif /*STM8S903 or STM8AF622x */
 792                     ; 278   case ITC_IRQ_TIM3_OVF:
 792                     ; 279     ITC->ISPR4 &= Mask;
 794  009c c67f73        	ld	a,32627
 795  009f 1401          	and	a,(OFST-1,sp)
 796  00a1 c77f73        	ld	32627,a
 797                     ; 280     ITC->ISPR4 |= NewPriority;
 799  00a4 c67f73        	ld	a,32627
 800  00a7 1a02          	or	a,(OFST+0,sp)
 801  00a9 c77f73        	ld	32627,a
 802                     ; 281     break;
 804  00ac 2034          	jra	L352
 805  00ae               L312:
 806                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 806                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 806                     ; 285     defined(STM8S001) ||defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 806                     ; 286   case ITC_IRQ_UART1_TX:
 806                     ; 287   case ITC_IRQ_UART1_RX:
 806                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 806                     ; 289 #if defined(STM8AF622x)
 806                     ; 290   case ITC_IRQ_UART4_TX:
 806                     ; 291   case ITC_IRQ_UART4_RX:
 806                     ; 292 #endif /*STM8AF622x */
 806                     ; 293   case ITC_IRQ_I2C:
 806                     ; 294     ITC->ISPR5 &= Mask;
 808  00ae c67f74        	ld	a,32628
 809  00b1 1401          	and	a,(OFST-1,sp)
 810  00b3 c77f74        	ld	32628,a
 811                     ; 295     ITC->ISPR5 |= NewPriority;
 813  00b6 c67f74        	ld	a,32628
 814  00b9 1a02          	or	a,(OFST+0,sp)
 815  00bb c77f74        	ld	32628,a
 816                     ; 296     break;
 818  00be 2022          	jra	L352
 819  00c0               L512:
 820                     ; 299   case ITC_IRQ_UART2_TX:
 820                     ; 300   case ITC_IRQ_UART2_RX:
 820                     ; 301 #endif /*STM8S105 or STM8AF626x */
 820                     ; 302     
 820                     ; 303 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 820                     ; 304     defined(STM8AF62Ax)
 820                     ; 305   case ITC_IRQ_UART3_TX:
 820                     ; 306   case ITC_IRQ_UART3_RX:
 820                     ; 307   case ITC_IRQ_ADC2:
 820                     ; 308 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 820                     ; 309     
 820                     ; 310 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 820                     ; 311     defined(STM8S001) || defined(STM8S903) || defined(STM8AF626x) || defined (STM8AF622x)
 820                     ; 312   case ITC_IRQ_ADC1:
 820                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S001 or STM8S903 or STM8AF626x or STM8AF622x */
 820                     ; 314     
 820                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 820                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 820                     ; 317 #else
 820                     ; 318   case ITC_IRQ_TIM4_OVF:
 820                     ; 319 #endif /* STM8S903 or STM8AF622x */
 820                     ; 320     ITC->ISPR6 &= Mask;
 822  00c0 c67f75        	ld	a,32629
 823  00c3 1401          	and	a,(OFST-1,sp)
 824  00c5 c77f75        	ld	32629,a
 825                     ; 321     ITC->ISPR6 |= NewPriority;
 827  00c8 c67f75        	ld	a,32629
 828  00cb 1a02          	or	a,(OFST+0,sp)
 829  00cd c77f75        	ld	32629,a
 830                     ; 322     break;
 832  00d0 2010          	jra	L352
 833  00d2               L712:
 834                     ; 324   case ITC_IRQ_EEPROM_EEC:
 834                     ; 325     ITC->ISPR7 &= Mask;
 836  00d2 c67f76        	ld	a,32630
 837  00d5 1401          	and	a,(OFST-1,sp)
 838  00d7 c77f76        	ld	32630,a
 839                     ; 326     ITC->ISPR7 |= NewPriority;
 841  00da c67f76        	ld	a,32630
 842  00dd 1a02          	or	a,(OFST+0,sp)
 843  00df c77f76        	ld	32630,a
 844                     ; 327     break;
 846                     ; 329   default:
 846                     ; 330     break;
 848  00e2               L352:
 849                     ; 332 }
 852  00e2 5b04          	addw	sp,#4
 853  00e4 81            	ret	
 854  00e5               LC002:
 855  00e5 89            	pushw	x
 856  00e6 5f            	clrw	x
 857  00e7 89            	pushw	x
 858  00e8 ae0064        	ldw	x,#L571
 859  00eb cd0000        	call	_assert_failed
 861  00ee 5b04          	addw	sp,#4
 862  00f0 81            	ret	
 875                     	xdef	_ITC_GetSoftwarePriority
 876                     	xdef	_ITC_SetSoftwarePriority
 877                     	xdef	_ITC_GetSoftIntStatus
 878                     	xdef	_ITC_DeInit
 879                     	xdef	_ITC_GetCPUCC
 880                     	xref	_assert_failed
 881                     	switch	.const
 882  0064               L571:
 883  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 884  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 885  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 886  009a 5f6974632e63  	dc.b	"_itc.c",0
 906                     	end
