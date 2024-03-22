   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  82                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  82                     ; 88 {
  84                     .text:	section	.text,new
  85  0000               _FLASH_Unlock:
  87  0000 88            	push	a
  88       00000000      OFST:	set	0
  91                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  93  0001 a1fd          	cp	a,#253
  94  0003 2712          	jreq	L21
  95  0005 a1f7          	cp	a,#247
  96  0007 270e          	jreq	L21
  97  0009 ae005a        	ldw	x,#90
  98  000c 89            	pushw	x
  99  000d 5f            	clrw	x
 100  000e 89            	pushw	x
 101  000f ae0010        	ldw	x,#L73
 102  0012 cd0000        	call	_assert_failed
 104  0015 5b04          	addw	sp,#4
 105  0017               L21:
 106                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 108  0017 7b01          	ld	a,(OFST+1,sp)
 109  0019 a1fd          	cp	a,#253
 110  001b 260a          	jrne	L14
 111                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 113  001d 35565062      	mov	20578,#86
 114                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 116  0021 35ae5062      	mov	20578,#174
 118  0025 2008          	jra	L34
 119  0027               L14:
 120                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 122  0027 35ae5064      	mov	20580,#174
 123                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 125  002b 35565064      	mov	20580,#86
 126  002f               L34:
 127                     ; 104 }
 130  002f 84            	pop	a
 131  0030 81            	ret	
 167                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 167                     ; 113 {
 168                     .text:	section	.text,new
 169  0000               _FLASH_Lock:
 171  0000 88            	push	a
 172       00000000      OFST:	set	0
 175                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 177  0001 a1fd          	cp	a,#253
 178  0003 2712          	jreq	L42
 179  0005 a1f7          	cp	a,#247
 180  0007 270e          	jreq	L42
 181  0009 ae0073        	ldw	x,#115
 182  000c 89            	pushw	x
 183  000d 5f            	clrw	x
 184  000e 89            	pushw	x
 185  000f ae0010        	ldw	x,#L73
 186  0012 cd0000        	call	_assert_failed
 188  0015 5b04          	addw	sp,#4
 189  0017               L42:
 190                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 192  0017 c6505f        	ld	a,20575
 193  001a 1401          	and	a,(OFST+1,sp)
 194  001c c7505f        	ld	20575,a
 195                     ; 119 }
 198  001f 84            	pop	a
 199  0020 81            	ret	
 222                     ; 126 void FLASH_DeInit(void)
 222                     ; 127 {
 223                     .text:	section	.text,new
 224  0000               _FLASH_DeInit:
 228                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 230  0000 725f505a      	clr	20570
 231                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 233  0004 725f505b      	clr	20571
 234                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 236  0008 35ff505c      	mov	20572,#255
 237                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 239  000c 7217505f      	bres	20575,#3
 240                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 242  0010 7213505f      	bres	20575,#1
 243                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 245  0014 c6505f        	ld	a,20575
 246                     ; 134 }
 249  0017 81            	ret	
 305                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 305                     ; 143 {
 306                     .text:	section	.text,new
 307  0000               _FLASH_ITConfig:
 309  0000 88            	push	a
 310       00000000      OFST:	set	0
 313                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 315  0001 4d            	tnz	a
 316  0002 2711          	jreq	L04
 317  0004 4a            	dec	a
 318  0005 270e          	jreq	L04
 319  0007 ae0091        	ldw	x,#145
 320  000a 89            	pushw	x
 321  000b 5f            	clrw	x
 322  000c 89            	pushw	x
 323  000d ae0010        	ldw	x,#L73
 324  0010 cd0000        	call	_assert_failed
 326  0013 5b04          	addw	sp,#4
 327  0015               L04:
 328                     ; 147   if(NewState != DISABLE)
 330  0015 7b01          	ld	a,(OFST+1,sp)
 331  0017 2706          	jreq	L121
 332                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 334  0019 7212505a      	bset	20570,#1
 336  001d 2004          	jra	L321
 337  001f               L121:
 338                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 340  001f 7213505a      	bres	20570,#1
 341  0023               L321:
 342                     ; 155 }
 345  0023 84            	pop	a
 346  0024 81            	ret	
 379                     .const:	section	.text
 380  0000               L45:
 381  0000 00008000      	dc.l	32768
 382  0004               L65:
 383  0004 00010000      	dc.l	65536
 384  0008               L06:
 385  0008 00004000      	dc.l	16384
 386  000c               L26:
 387  000c 00004400      	dc.l	17408
 388                     ; 164 void FLASH_EraseByte(uint32_t Address)
 388                     ; 165 {
 389                     .text:	section	.text,new
 390  0000               _FLASH_EraseByte:
 392       00000000      OFST:	set	0
 395                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 397  0000 96            	ldw	x,sp
 398  0001 1c0003        	addw	x,#OFST+3
 399  0004 cd0000        	call	c_ltor
 401  0007 ae0000        	ldw	x,#L45
 402  000a cd0000        	call	c_lcmp
 404  000d 250f          	jrult	L25
 405  000f 96            	ldw	x,sp
 406  0010 1c0003        	addw	x,#OFST+3
 407  0013 cd0000        	call	c_ltor
 409  0016 ae0004        	ldw	x,#L65
 410  0019 cd0000        	call	c_lcmp
 412  001c 252c          	jrult	L46
 413  001e               L25:
 414  001e 96            	ldw	x,sp
 415  001f 1c0003        	addw	x,#OFST+3
 416  0022 cd0000        	call	c_ltor
 418  0025 ae0008        	ldw	x,#L06
 419  0028 cd0000        	call	c_lcmp
 421  002b 250f          	jrult	L64
 422  002d 96            	ldw	x,sp
 423  002e 1c0003        	addw	x,#OFST+3
 424  0031 cd0000        	call	c_ltor
 426  0034 ae000c        	ldw	x,#L26
 427  0037 cd0000        	call	c_lcmp
 429  003a 250e          	jrult	L46
 430  003c               L64:
 431  003c ae00a7        	ldw	x,#167
 432  003f 89            	pushw	x
 433  0040 5f            	clrw	x
 434  0041 89            	pushw	x
 435  0042 ae0010        	ldw	x,#L73
 436  0045 cd0000        	call	_assert_failed
 438  0048 5b04          	addw	sp,#4
 439  004a               L46:
 440                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 442  004a 1e05          	ldw	x,(OFST+5,sp)
 443  004c 7f            	clr	(x)
 444                     ; 171 }
 447  004d 81            	ret	
 487                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 487                     ; 182 {
 488                     .text:	section	.text,new
 489  0000               _FLASH_ProgramByte:
 491       00000000      OFST:	set	0
 494                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 496  0000 96            	ldw	x,sp
 497  0001 1c0003        	addw	x,#OFST+3
 498  0004 cd0000        	call	c_ltor
 500  0007 ae0000        	ldw	x,#L45
 501  000a cd0000        	call	c_lcmp
 503  000d 250f          	jrult	L67
 504  000f 96            	ldw	x,sp
 505  0010 1c0003        	addw	x,#OFST+3
 506  0013 cd0000        	call	c_ltor
 508  0016 ae0004        	ldw	x,#L65
 509  0019 cd0000        	call	c_lcmp
 511  001c 252c          	jrult	L001
 512  001e               L67:
 513  001e 96            	ldw	x,sp
 514  001f 1c0003        	addw	x,#OFST+3
 515  0022 cd0000        	call	c_ltor
 517  0025 ae0008        	ldw	x,#L06
 518  0028 cd0000        	call	c_lcmp
 520  002b 250f          	jrult	L27
 521  002d 96            	ldw	x,sp
 522  002e 1c0003        	addw	x,#OFST+3
 523  0031 cd0000        	call	c_ltor
 525  0034 ae000c        	ldw	x,#L26
 526  0037 cd0000        	call	c_lcmp
 528  003a 250e          	jrult	L001
 529  003c               L27:
 530  003c ae00b8        	ldw	x,#184
 531  003f 89            	pushw	x
 532  0040 5f            	clrw	x
 533  0041 89            	pushw	x
 534  0042 ae0010        	ldw	x,#L73
 535  0045 cd0000        	call	_assert_failed
 537  0048 5b04          	addw	sp,#4
 538  004a               L001:
 539                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 541  004a 1e05          	ldw	x,(OFST+5,sp)
 542  004c 7b07          	ld	a,(OFST+7,sp)
 543  004e f7            	ld	(x),a
 544                     ; 186 }
 547  004f 81            	ret	
 580                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 580                     ; 196 {
 581                     .text:	section	.text,new
 582  0000               _FLASH_ReadByte:
 584       00000000      OFST:	set	0
 587                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 589  0000 96            	ldw	x,sp
 590  0001 1c0003        	addw	x,#OFST+3
 591  0004 cd0000        	call	c_ltor
 593  0007 ae0000        	ldw	x,#L45
 594  000a cd0000        	call	c_lcmp
 596  000d 250f          	jrult	L211
 597  000f 96            	ldw	x,sp
 598  0010 1c0003        	addw	x,#OFST+3
 599  0013 cd0000        	call	c_ltor
 601  0016 ae0004        	ldw	x,#L65
 602  0019 cd0000        	call	c_lcmp
 604  001c 252c          	jrult	L411
 605  001e               L211:
 606  001e 96            	ldw	x,sp
 607  001f 1c0003        	addw	x,#OFST+3
 608  0022 cd0000        	call	c_ltor
 610  0025 ae0008        	ldw	x,#L06
 611  0028 cd0000        	call	c_lcmp
 613  002b 250f          	jrult	L601
 614  002d 96            	ldw	x,sp
 615  002e 1c0003        	addw	x,#OFST+3
 616  0031 cd0000        	call	c_ltor
 618  0034 ae000c        	ldw	x,#L26
 619  0037 cd0000        	call	c_lcmp
 621  003a 250e          	jrult	L411
 622  003c               L601:
 623  003c ae00c6        	ldw	x,#198
 624  003f 89            	pushw	x
 625  0040 5f            	clrw	x
 626  0041 89            	pushw	x
 627  0042 ae0010        	ldw	x,#L73
 628  0045 cd0000        	call	_assert_failed
 630  0048 5b04          	addw	sp,#4
 631  004a               L411:
 632                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 634  004a 1e05          	ldw	x,(OFST+5,sp)
 635  004c f6            	ld	a,(x)
 638  004d 81            	ret	
 678                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 678                     ; 213 {
 679                     .text:	section	.text,new
 680  0000               _FLASH_ProgramWord:
 682       00000000      OFST:	set	0
 685                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 687  0000 96            	ldw	x,sp
 688  0001 1c0003        	addw	x,#OFST+3
 689  0004 cd0000        	call	c_ltor
 691  0007 ae0000        	ldw	x,#L45
 692  000a cd0000        	call	c_lcmp
 694  000d 250f          	jrult	L621
 695  000f 96            	ldw	x,sp
 696  0010 1c0003        	addw	x,#OFST+3
 697  0013 cd0000        	call	c_ltor
 699  0016 ae0004        	ldw	x,#L65
 700  0019 cd0000        	call	c_lcmp
 702  001c 252c          	jrult	L031
 703  001e               L621:
 704  001e 96            	ldw	x,sp
 705  001f 1c0003        	addw	x,#OFST+3
 706  0022 cd0000        	call	c_ltor
 708  0025 ae0008        	ldw	x,#L06
 709  0028 cd0000        	call	c_lcmp
 711  002b 250f          	jrult	L221
 712  002d 96            	ldw	x,sp
 713  002e 1c0003        	addw	x,#OFST+3
 714  0031 cd0000        	call	c_ltor
 716  0034 ae000c        	ldw	x,#L26
 717  0037 cd0000        	call	c_lcmp
 719  003a 250e          	jrult	L031
 720  003c               L221:
 721  003c ae00d7        	ldw	x,#215
 722  003f 89            	pushw	x
 723  0040 5f            	clrw	x
 724  0041 89            	pushw	x
 725  0042 ae0010        	ldw	x,#L73
 726  0045 cd0000        	call	_assert_failed
 728  0048 5b04          	addw	sp,#4
 729  004a               L031:
 730                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 732  004a 721c505b      	bset	20571,#6
 733                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 735  004e 721d505c      	bres	20572,#6
 736                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 738  0052 1e05          	ldw	x,(OFST+5,sp)
 739  0054 7b07          	ld	a,(OFST+7,sp)
 740  0056 f7            	ld	(x),a
 741                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 743  0057 7b08          	ld	a,(OFST+8,sp)
 744  0059 e701          	ld	(1,x),a
 745                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 747  005b 7b09          	ld	a,(OFST+9,sp)
 748  005d e702          	ld	(2,x),a
 749                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 751  005f 7b0a          	ld	a,(OFST+10,sp)
 752  0061 e703          	ld	(3,x),a
 753                     ; 229 }
 756  0063 81            	ret	
 798                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 798                     ; 238 {
 799                     .text:	section	.text,new
 800  0000               _FLASH_ProgramOptionByte:
 802  0000 89            	pushw	x
 803       00000000      OFST:	set	0
 806                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 808  0001 a34800        	cpw	x,#18432
 809  0004 2505          	jrult	L631
 810  0006 a34880        	cpw	x,#18560
 811  0009 250e          	jrult	L041
 812  000b               L631:
 813  000b ae00f0        	ldw	x,#240
 814  000e 89            	pushw	x
 815  000f 5f            	clrw	x
 816  0010 89            	pushw	x
 817  0011 ae0010        	ldw	x,#L73
 818  0014 cd0000        	call	_assert_failed
 820  0017 5b04          	addw	sp,#4
 821  0019               L041:
 822                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 824  0019 721e505b      	bset	20571,#7
 825                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 827  001d 721f505c      	bres	20572,#7
 828                     ; 247   if(Address == 0x4800)
 830  0021 1e01          	ldw	x,(OFST+1,sp)
 831  0023 a34800        	cpw	x,#18432
 832  0026 2605          	jrne	L722
 833                     ; 250     *((NEAR uint8_t*)Address) = Data;
 835  0028 7b05          	ld	a,(OFST+5,sp)
 836  002a f7            	ld	(x),a
 838  002b 2006          	jra	L132
 839  002d               L722:
 840                     ; 255     *((NEAR uint8_t*)Address) = Data;
 842  002d 7b05          	ld	a,(OFST+5,sp)
 843  002f f7            	ld	(x),a
 844                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 846  0030 43            	cpl	a
 847  0031 e701          	ld	(1,x),a
 848  0033               L132:
 849                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 851  0033 a6fd          	ld	a,#253
 852  0035 cd0000        	call	_FLASH_WaitForLastOperation
 854                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 856  0038 721f505b      	bres	20571,#7
 857                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 859  003c 721e505c      	bset	20572,#7
 860                     ; 263 }
 863  0040 85            	popw	x
 864  0041 81            	ret	
 899                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 899                     ; 271 {
 900                     .text:	section	.text,new
 901  0000               _FLASH_EraseOptionByte:
 903  0000 89            	pushw	x
 904       00000000      OFST:	set	0
 907                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 909  0001 a34800        	cpw	x,#18432
 910  0004 2505          	jrult	L051
 911  0006 a34880        	cpw	x,#18560
 912  0009 250e          	jrult	L251
 913  000b               L051:
 914  000b ae0111        	ldw	x,#273
 915  000e 89            	pushw	x
 916  000f 5f            	clrw	x
 917  0010 89            	pushw	x
 918  0011 ae0010        	ldw	x,#L73
 919  0014 cd0000        	call	_assert_failed
 921  0017 5b04          	addw	sp,#4
 922  0019               L251:
 923                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 925  0019 721e505b      	bset	20571,#7
 926                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 928  001d 721f505c      	bres	20572,#7
 929                     ; 280   if(Address == 0x4800)
 931  0021 1e01          	ldw	x,(OFST+1,sp)
 932  0023 a34800        	cpw	x,#18432
 933  0026 2603          	jrne	L742
 934                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 936  0028 7f            	clr	(x)
 938  0029 2005          	jra	L152
 939  002b               L742:
 940                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 942  002b 7f            	clr	(x)
 943                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 945  002c a6ff          	ld	a,#255
 946  002e e701          	ld	(1,x),a
 947  0030               L152:
 948                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 950  0030 a6fd          	ld	a,#253
 951  0032 cd0000        	call	_FLASH_WaitForLastOperation
 953                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 955  0035 721f505b      	bres	20571,#7
 956                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 958  0039 721e505c      	bset	20572,#7
 959                     ; 296 }
 962  003d 85            	popw	x
 963  003e 81            	ret	
1019                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1019                     ; 304 {
1020                     .text:	section	.text,new
1021  0000               _FLASH_ReadOptionByte:
1023  0000 89            	pushw	x
1024  0001 5204          	subw	sp,#4
1025       00000004      OFST:	set	4
1028                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1030                     ; 306   uint16_t res_value = 0;
1032                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1034  0003 a34800        	cpw	x,#18432
1035  0006 2505          	jrult	L261
1036  0008 a34880        	cpw	x,#18560
1037  000b 250e          	jrult	L461
1038  000d               L261:
1039  000d ae0135        	ldw	x,#309
1040  0010 89            	pushw	x
1041  0011 5f            	clrw	x
1042  0012 89            	pushw	x
1043  0013 ae0010        	ldw	x,#L73
1044  0016 cd0000        	call	_assert_failed
1046  0019 5b04          	addw	sp,#4
1047  001b               L461:
1048                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1050  001b 1e05          	ldw	x,(OFST+1,sp)
1051  001d f6            	ld	a,(x)
1052  001e 6b01          	ld	(OFST-3,sp),a
1054                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1056  0020 e601          	ld	a,(1,x)
1057  0022 6b02          	ld	(OFST-2,sp),a
1059                     ; 315   if(Address == 0x4800)	 
1061  0024 a34800        	cpw	x,#18432
1062  0027 2606          	jrne	L572
1063                     ; 317     res_value =	 value_optbyte;
1065  0029 7b01          	ld	a,(OFST-3,sp)
1066  002b 5f            	clrw	x
1067  002c 97            	ld	xl,a
1070  002d 201c          	jra	L772
1071  002f               L572:
1072                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1074  002f 43            	cpl	a
1075  0030 1101          	cp	a,(OFST-3,sp)
1076  0032 2614          	jrne	L103
1077                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1079  0034 7b01          	ld	a,(OFST-3,sp)
1080  0036 97            	ld	xl,a
1081  0037 4f            	clr	a
1082  0038 02            	rlwa	x,a
1083  0039 1f03          	ldw	(OFST-1,sp),x
1085                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1087  003b 5f            	clrw	x
1088  003c 7b02          	ld	a,(OFST-2,sp)
1089  003e 97            	ld	xl,a
1090  003f 01            	rrwa	x,a
1091  0040 1a04          	or	a,(OFST+0,sp)
1092  0042 01            	rrwa	x,a
1093  0043 1a03          	or	a,(OFST-1,sp)
1094  0045 01            	rrwa	x,a
1097  0046 2003          	jra	L772
1098  0048               L103:
1099                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1101  0048 ae5555        	ldw	x,#21845
1103  004b               L772:
1104                     ; 331   return(res_value);
1108  004b 5b06          	addw	sp,#6
1109  004d 81            	ret	
1184                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1184                     ; 341 {
1185                     .text:	section	.text,new
1186  0000               _FLASH_SetLowPowerMode:
1188  0000 88            	push	a
1189       00000000      OFST:	set	0
1192                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1194  0001 a104          	cp	a,#4
1195  0003 2719          	jreq	L671
1196  0005 a108          	cp	a,#8
1197  0007 2715          	jreq	L671
1198  0009 4d            	tnz	a
1199  000a 2712          	jreq	L671
1200  000c a10c          	cp	a,#12
1201  000e 270e          	jreq	L671
1202  0010 ae0157        	ldw	x,#343
1203  0013 89            	pushw	x
1204  0014 5f            	clrw	x
1205  0015 89            	pushw	x
1206  0016 ae0010        	ldw	x,#L73
1207  0019 cd0000        	call	_assert_failed
1209  001c 5b04          	addw	sp,#4
1210  001e               L671:
1211                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1213  001e c6505a        	ld	a,20570
1214  0021 a4f3          	and	a,#243
1215  0023 c7505a        	ld	20570,a
1216                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1218  0026 c6505a        	ld	a,20570
1219  0029 1a01          	or	a,(OFST+1,sp)
1220  002b c7505a        	ld	20570,a
1221                     ; 350 }
1224  002e 84            	pop	a
1225  002f 81            	ret	
1284                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1284                     ; 359 {
1285                     .text:	section	.text,new
1286  0000               _FLASH_SetProgrammingTime:
1288  0000 88            	push	a
1289       00000000      OFST:	set	0
1292                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1294  0001 4d            	tnz	a
1295  0002 2711          	jreq	L012
1296  0004 4a            	dec	a
1297  0005 270e          	jreq	L012
1298  0007 ae0169        	ldw	x,#361
1299  000a 89            	pushw	x
1300  000b 5f            	clrw	x
1301  000c 89            	pushw	x
1302  000d ae0010        	ldw	x,#L73
1303  0010 cd0000        	call	_assert_failed
1305  0013 5b04          	addw	sp,#4
1306  0015               L012:
1307                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1309  0015 7211505a      	bres	20570,#0
1310                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1312  0019 c6505a        	ld	a,20570
1313  001c 1a01          	or	a,(OFST+1,sp)
1314  001e c7505a        	ld	20570,a
1315                     ; 365 }
1318  0021 84            	pop	a
1319  0022 81            	ret	
1344                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1344                     ; 373 {
1345                     .text:	section	.text,new
1346  0000               _FLASH_GetLowPowerMode:
1350                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1352  0000 c6505a        	ld	a,20570
1353  0003 a40c          	and	a,#12
1356  0005 81            	ret	
1381                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1381                     ; 383 {
1382                     .text:	section	.text,new
1383  0000               _FLASH_GetProgrammingTime:
1387                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1389  0000 c6505a        	ld	a,20570
1390  0003 a401          	and	a,#1
1393  0005 81            	ret	
1425                     ; 392 uint32_t FLASH_GetBootSize(void)
1425                     ; 393 {
1426                     .text:	section	.text,new
1427  0000               _FLASH_GetBootSize:
1429  0000 5204          	subw	sp,#4
1430       00000004      OFST:	set	4
1433                     ; 394   uint32_t temp = 0;
1435                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1437  0002 c6505d        	ld	a,20573
1438  0005 5f            	clrw	x
1439  0006 97            	ld	xl,a
1440  0007 90ae0200      	ldw	y,#512
1441  000b cd0000        	call	c_umul
1443  000e 96            	ldw	x,sp
1444  000f 5c            	incw	x
1445  0010 cd0000        	call	c_rtol
1448                     ; 400   if(FLASH->FPR == 0xFF)
1450  0013 c6505d        	ld	a,20573
1451  0016 4c            	inc	a
1452  0017 260d          	jrne	L124
1453                     ; 402     temp += 512;
1455  0019 ae0200        	ldw	x,#512
1456  001c bf02          	ldw	c_lreg+2,x
1457  001e 5f            	clrw	x
1458  001f bf00          	ldw	c_lreg,x
1459  0021 96            	ldw	x,sp
1460  0022 5c            	incw	x
1461  0023 cd0000        	call	c_lgadd
1464  0026               L124:
1465                     ; 406   return(temp);
1467  0026 96            	ldw	x,sp
1468  0027 5c            	incw	x
1469  0028 cd0000        	call	c_ltor
1473  002b 5b04          	addw	sp,#4
1474  002d 81            	ret	
1584                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1584                     ; 418 {
1585                     .text:	section	.text,new
1586  0000               _FLASH_GetFlagStatus:
1588  0000 88            	push	a
1589  0001 88            	push	a
1590       00000001      OFST:	set	1
1593                     ; 419   FlagStatus status = RESET;
1595                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1597  0002 a140          	cp	a,#64
1598  0004 271d          	jreq	L032
1599  0006 a108          	cp	a,#8
1600  0008 2719          	jreq	L032
1601  000a a104          	cp	a,#4
1602  000c 2715          	jreq	L032
1603  000e a102          	cp	a,#2
1604  0010 2711          	jreq	L032
1605  0012 4a            	dec	a
1606  0013 270e          	jreq	L032
1607  0015 ae01a5        	ldw	x,#421
1608  0018 89            	pushw	x
1609  0019 5f            	clrw	x
1610  001a 89            	pushw	x
1611  001b ae0010        	ldw	x,#L73
1612  001e cd0000        	call	_assert_failed
1614  0021 5b04          	addw	sp,#4
1615  0023               L032:
1616                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1618  0023 c6505f        	ld	a,20575
1619  0026 1502          	bcp	a,(OFST+1,sp)
1620  0028 2704          	jreq	L374
1621                     ; 426     status = SET; /* FLASH_FLAG is set */
1623  002a a601          	ld	a,#1
1626  002c 2001          	jra	L574
1627  002e               L374:
1628                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1630  002e 4f            	clr	a
1632  002f               L574:
1633                     ; 434   return status;
1637  002f 85            	popw	x
1638  0030 81            	ret	
1727                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1727                     ; 550 {
1728                     .text:	section	.text,new
1729  0000               _FLASH_WaitForLastOperation:
1731  0000 5203          	subw	sp,#3
1732       00000003      OFST:	set	3
1735                     ; 551   uint8_t flagstatus = 0x00;
1737  0002 0f03          	clr	(OFST+0,sp)
1739                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1741  0004 aeffff        	ldw	x,#65535
1742  0007 1f01          	ldw	(OFST-2,sp),x
1744                     ; 557     if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1746  0009 a1fd          	cp	a,#253
1747  000b 2620          	jrne	L355
1749  000d 200a          	jra	L145
1750  000f               L735:
1751                     ; 561         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1751                     ; 562                                                         FLASH_IAPSR_WR_PG_DIS));
1753  000f c6505f        	ld	a,20575
1754  0012 a405          	and	a,#5
1755  0014 6b03          	ld	(OFST+0,sp),a
1757                     ; 563         timeout--;
1759  0016 5a            	decw	x
1760  0017 1f01          	ldw	(OFST-2,sp),x
1762  0019               L145:
1763                     ; 559       while((flagstatus == 0x00) && (timeout != 0x00))
1765  0019 7b03          	ld	a,(OFST+0,sp)
1766  001b 2618          	jrne	L745
1768  001d 1e01          	ldw	x,(OFST-2,sp)
1769  001f 26ee          	jrne	L735
1770  0021 2012          	jra	L745
1771  0023               L155:
1772                     ; 570         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1772                     ; 571                                                         FLASH_IAPSR_WR_PG_DIS));
1774  0023 c6505f        	ld	a,20575
1775  0026 a441          	and	a,#65
1776  0028 6b03          	ld	(OFST+0,sp),a
1778                     ; 572         timeout--;
1780  002a 5a            	decw	x
1781  002b 1f01          	ldw	(OFST-2,sp),x
1783  002d               L355:
1784                     ; 568       while((flagstatus == 0x00) && (timeout != 0x00))
1786  002d 7b03          	ld	a,(OFST+0,sp)
1787  002f 2604          	jrne	L745
1789  0031 1e01          	ldw	x,(OFST-2,sp)
1790  0033 26ee          	jrne	L155
1791  0035               L745:
1792                     ; 584   if(timeout == 0x00 )
1794  0035 1e01          	ldw	x,(OFST-2,sp)
1795  0037 2602          	jrne	L165
1796                     ; 586     flagstatus = FLASH_STATUS_TIMEOUT;
1798  0039 a602          	ld	a,#2
1800  003b               L165:
1801                     ; 589   return((FLASH_Status_TypeDef)flagstatus);
1805  003b 5b03          	addw	sp,#3
1806  003d 81            	ret	
1866                     ; 599 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1866                     ; 600 {
1867                     .text:	section	.text,new
1868  0000               _FLASH_EraseBlock:
1870  0000 89            	pushw	x
1871  0001 5206          	subw	sp,#6
1872       00000006      OFST:	set	6
1875                     ; 601   uint32_t startaddress = 0;
1877                     ; 611   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1879  0003 7b0b          	ld	a,(OFST+5,sp)
1880  0005 a1fd          	cp	a,#253
1881  0007 270b          	jreq	L442
1882  0009 a1f7          	cp	a,#247
1883  000b 2707          	jreq	L442
1884  000d ae0263        	ldw	x,#611
1885  0010 ad50          	call	LC001
1886  0012 7b0b          	ld	a,(OFST+5,sp)
1887  0014               L442:
1888                     ; 612   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1890  0014 a1fd          	cp	a,#253
1891  0016 2611          	jrne	L116
1892                     ; 614     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1894  0018 1e07          	ldw	x,(OFST+1,sp)
1895  001a a30100        	cpw	x,#256
1896  001d 2505          	jrult	L252
1897  001f ae0266        	ldw	x,#614
1898  0022 ad3e          	call	LC001
1899  0024               L252:
1900                     ; 615     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1902  0024 ae8000        	ldw	x,#32768
1904  0027 200f          	jra	L316
1905  0029               L116:
1906                     ; 619     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1908  0029 1e07          	ldw	x,(OFST+1,sp)
1909  002b a30008        	cpw	x,#8
1910  002e 2505          	jrult	L062
1911  0030 ae026b        	ldw	x,#619
1912  0033 ad2d          	call	LC001
1913  0035               L062:
1914                     ; 620     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1916  0035 ae4000        	ldw	x,#16384
1917  0038               L316:
1918  0038 1f05          	ldw	(OFST-1,sp),x
1919  003a 5f            	clrw	x
1920  003b 1f03          	ldw	(OFST-3,sp),x
1922                     ; 628     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1924  003d a680          	ld	a,#128
1925  003f 1e07          	ldw	x,(OFST+1,sp)
1926  0041 cd0000        	call	c_cmulx
1928  0044 96            	ldw	x,sp
1929  0045 1c0003        	addw	x,#OFST-3
1930  0048 cd0000        	call	c_ladd
1932  004b be02          	ldw	x,c_lreg+2
1933  004d 1f01          	ldw	(OFST-5,sp),x
1935                     ; 632   FLASH->CR2 |= FLASH_CR2_ERASE;
1937  004f 721a505b      	bset	20571,#5
1938                     ; 633   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1940  0053 721b505c      	bres	20572,#5
1941                     ; 637     *pwFlash = (uint32_t)0;
1943  0057 4f            	clr	a
1944  0058 e703          	ld	(3,x),a
1945  005a e702          	ld	(2,x),a
1946  005c e701          	ld	(1,x),a
1947  005e f7            	ld	(x),a
1948                     ; 645 }
1951  005f 5b08          	addw	sp,#8
1952  0061 81            	ret	
1953  0062               LC001:
1954  0062 89            	pushw	x
1955  0063 5f            	clrw	x
1956  0064 89            	pushw	x
1957  0065 ae0010        	ldw	x,#L73
1958  0068 cd0000        	call	_assert_failed
1960  006b 5b04          	addw	sp,#4
1961  006d 81            	ret	
2060                     ; 656 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2060                     ; 657                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2060                     ; 658 {
2061                     .text:	section	.text,new
2062  0000               _FLASH_ProgramBlock:
2064  0000 89            	pushw	x
2065  0001 5206          	subw	sp,#6
2066       00000006      OFST:	set	6
2069                     ; 659   uint16_t Count = 0;
2071                     ; 660   uint32_t startaddress = 0;
2073                     ; 663   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2075  0003 7b0b          	ld	a,(OFST+5,sp)
2076  0005 a1fd          	cp	a,#253
2077  0007 2709          	jreq	L272
2078  0009 a1f7          	cp	a,#247
2079  000b 2705          	jreq	L272
2080  000d ae0297        	ldw	x,#663
2081  0010 ad76          	call	LC002
2082  0012               L272:
2083                     ; 664   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2085  0012 7b0c          	ld	a,(OFST+6,sp)
2086  0014 2709          	jreq	L203
2087  0016 a110          	cp	a,#16
2088  0018 2705          	jreq	L203
2089  001a ae0298        	ldw	x,#664
2090  001d ad69          	call	LC002
2091  001f               L203:
2092                     ; 665   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2094  001f 7b0b          	ld	a,(OFST+5,sp)
2095  0021 a1fd          	cp	a,#253
2096  0023 2611          	jrne	L166
2097                     ; 667     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2099  0025 1e07          	ldw	x,(OFST+1,sp)
2100  0027 a30100        	cpw	x,#256
2101  002a 2505          	jrult	L013
2102  002c ae029b        	ldw	x,#667
2103  002f ad57          	call	LC002
2104  0031               L013:
2105                     ; 668     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2107  0031 ae8000        	ldw	x,#32768
2109  0034 200f          	jra	L366
2110  0036               L166:
2111                     ; 672     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2113  0036 1e07          	ldw	x,(OFST+1,sp)
2114  0038 a30008        	cpw	x,#8
2115  003b 2505          	jrult	L613
2116  003d ae02a0        	ldw	x,#672
2117  0040 ad46          	call	LC002
2118  0042               L613:
2119                     ; 673     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2121  0042 ae4000        	ldw	x,#16384
2122  0045               L366:
2123  0045 1f03          	ldw	(OFST-3,sp),x
2124  0047 5f            	clrw	x
2125  0048 1f01          	ldw	(OFST-5,sp),x
2127                     ; 677   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2129  004a a680          	ld	a,#128
2130  004c 1e07          	ldw	x,(OFST+1,sp)
2131  004e cd0000        	call	c_cmulx
2133  0051 96            	ldw	x,sp
2134  0052 5c            	incw	x
2135  0053 cd0000        	call	c_lgadd
2138                     ; 680   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2140  0056 7b0c          	ld	a,(OFST+6,sp)
2141  0058 260a          	jrne	L566
2142                     ; 683     FLASH->CR2 |= FLASH_CR2_PRG;
2144  005a 7210505b      	bset	20571,#0
2145                     ; 684     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2147  005e 7211505c      	bres	20572,#0
2149  0062 2008          	jra	L766
2150  0064               L566:
2151                     ; 689     FLASH->CR2 |= FLASH_CR2_FPRG;
2153  0064 7218505b      	bset	20571,#4
2154                     ; 690     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2156  0068 7219505c      	bres	20572,#4
2157  006c               L766:
2158                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2160  006c 5f            	clrw	x
2161  006d 1f05          	ldw	(OFST-1,sp),x
2163  006f               L176:
2164                     ; 696     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2166  006f 1e0d          	ldw	x,(OFST+7,sp)
2167  0071 72fb05        	addw	x,(OFST-1,sp)
2168  0074 f6            	ld	a,(x)
2169  0075 1e03          	ldw	x,(OFST-3,sp)
2170  0077 72fb05        	addw	x,(OFST-1,sp)
2171  007a f7            	ld	(x),a
2172                     ; 694   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2174  007b 1e05          	ldw	x,(OFST-1,sp)
2175  007d 5c            	incw	x
2176  007e 1f05          	ldw	(OFST-1,sp),x
2180  0080 a30080        	cpw	x,#128
2181  0083 25ea          	jrult	L176
2182                     ; 698 }
2185  0085 5b08          	addw	sp,#8
2186  0087 81            	ret	
2187  0088               LC002:
2188  0088 89            	pushw	x
2189  0089 5f            	clrw	x
2190  008a 89            	pushw	x
2191  008b ae0010        	ldw	x,#L73
2192  008e cd0000        	call	_assert_failed
2194  0091 5b04          	addw	sp,#4
2195  0093 81            	ret	
2208                     	xdef	_FLASH_WaitForLastOperation
2209                     	xdef	_FLASH_ProgramBlock
2210                     	xdef	_FLASH_EraseBlock
2211                     	xdef	_FLASH_GetFlagStatus
2212                     	xdef	_FLASH_GetBootSize
2213                     	xdef	_FLASH_GetProgrammingTime
2214                     	xdef	_FLASH_GetLowPowerMode
2215                     	xdef	_FLASH_SetProgrammingTime
2216                     	xdef	_FLASH_SetLowPowerMode
2217                     	xdef	_FLASH_EraseOptionByte
2218                     	xdef	_FLASH_ProgramOptionByte
2219                     	xdef	_FLASH_ReadOptionByte
2220                     	xdef	_FLASH_ProgramWord
2221                     	xdef	_FLASH_ReadByte
2222                     	xdef	_FLASH_ProgramByte
2223                     	xdef	_FLASH_EraseByte
2224                     	xdef	_FLASH_ITConfig
2225                     	xdef	_FLASH_DeInit
2226                     	xdef	_FLASH_Lock
2227                     	xdef	_FLASH_Unlock
2228                     	xref	_assert_failed
2229                     	switch	.const
2230  0010               L73:
2231  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2232  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2233  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2234  0046 5f666c617368  	dc.b	"_flash.c",0
2235                     	xref.b	c_lreg
2236                     	xref.b	c_x
2237                     	xref.b	c_y
2257                     	xref	c_ladd
2258                     	xref	c_cmulx
2259                     	xref	c_lgadd
2260                     	xref	c_rtol
2261                     	xref	c_umul
2262                     	xref	c_lcmp
2263                     	xref	c_ltor
2264                     	end
