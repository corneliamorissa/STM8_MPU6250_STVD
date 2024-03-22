   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  66                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  66                     ; 54 {
  68                     .text:	section	.text,new
  69  0000               _WWDG_Init:
  71  0000 89            	pushw	x
  72       00000000      OFST:	set	0
  75                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  77  0001 9f            	ld	a,xl
  78  0002 a180          	cp	a,#128
  79  0004 250e          	jrult	L01
  80  0006 ae0038        	ldw	x,#56
  81  0009 89            	pushw	x
  82  000a 5f            	clrw	x
  83  000b 89            	pushw	x
  84  000c ae0000        	ldw	x,#L72
  85  000f cd0000        	call	_assert_failed
  87  0012 5b04          	addw	sp,#4
  88  0014               L01:
  89                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  91  0014 357f50d2      	mov	20690,#127
  92                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  94  0018 7b01          	ld	a,(OFST+1,sp)
  95  001a aac0          	or	a,#192
  96  001c c750d1        	ld	20689,a
  97                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  99  001f 7b02          	ld	a,(OFST+2,sp)
 100  0021 a47f          	and	a,#127
 101  0023 aa40          	or	a,#64
 102  0025 c750d2        	ld	20690,a
 103                     ; 61 }
 106  0028 85            	popw	x
 107  0029 81            	ret	
 140                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 140                     ; 70 {
 141                     .text:	section	.text,new
 142  0000               _WWDG_SetCounter:
 144  0000 88            	push	a
 145       00000000      OFST:	set	0
 148                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 150  0001 a180          	cp	a,#128
 151  0003 250e          	jrult	L02
 152  0005 ae0048        	ldw	x,#72
 153  0008 89            	pushw	x
 154  0009 5f            	clrw	x
 155  000a 89            	pushw	x
 156  000b ae0000        	ldw	x,#L72
 157  000e cd0000        	call	_assert_failed
 159  0011 5b04          	addw	sp,#4
 160  0013               L02:
 161                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 163  0013 7b01          	ld	a,(OFST+1,sp)
 164  0015 a47f          	and	a,#127
 165  0017 c750d1        	ld	20689,a
 166                     ; 77 }
 169  001a 84            	pop	a
 170  001b 81            	ret	
 193                     ; 86 uint8_t WWDG_GetCounter(void)
 193                     ; 87 {
 194                     .text:	section	.text,new
 195  0000               _WWDG_GetCounter:
 199                     ; 88   return(WWDG->CR);
 201  0000 c650d1        	ld	a,20689
 204  0003 81            	ret	
 227                     ; 96 void WWDG_SWReset(void)
 227                     ; 97 {
 228                     .text:	section	.text,new
 229  0000               _WWDG_SWReset:
 233                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 235  0000 358050d1      	mov	20689,#128
 236                     ; 99 }
 239  0004 81            	ret	
 273                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 273                     ; 109 {
 274                     .text:	section	.text,new
 275  0000               _WWDG_SetWindowValue:
 277  0000 88            	push	a
 278       00000000      OFST:	set	0
 281                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 283  0001 a180          	cp	a,#128
 284  0003 250e          	jrult	L43
 285  0005 ae006f        	ldw	x,#111
 286  0008 89            	pushw	x
 287  0009 5f            	clrw	x
 288  000a 89            	pushw	x
 289  000b ae0000        	ldw	x,#L72
 290  000e cd0000        	call	_assert_failed
 292  0011 5b04          	addw	sp,#4
 293  0013               L43:
 294                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 296  0013 7b01          	ld	a,(OFST+1,sp)
 297  0015 a47f          	and	a,#127
 298  0017 aa40          	or	a,#64
 299  0019 c750d2        	ld	20690,a
 300                     ; 114 }
 303  001c 84            	pop	a
 304  001d 81            	ret	
 317                     	xdef	_WWDG_SetWindowValue
 318                     	xdef	_WWDG_SWReset
 319                     	xdef	_WWDG_GetCounter
 320                     	xdef	_WWDG_SetCounter
 321                     	xdef	_WWDG_Init
 322                     	xref	_assert_failed
 323                     .const:	section	.text
 324  0000               L72:
 325  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 326  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 327  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 328  0036 5f777764672e  	dc.b	"_wwdg.c",0
 348                     	end
