   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  50                     ; 56 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  50                     ; 57 {
  51                     .text:	section	.text,new
  52  0000               f_NonHandledInterrupt:
  56                     ; 61 }
  59  0000 80            	iret	
  81                     ; 69 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  81                     ; 70 {
  82                     .text:	section	.text,new
  83  0000               f_TRAP_IRQHandler:
  87                     ; 74 }
  90  0000 80            	iret	
 112                     ; 81 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 112                     ; 82 
 112                     ; 83 {
 113                     .text:	section	.text,new
 114  0000               f_TLI_IRQHandler:
 118                     ; 87 }
 121  0000 80            	iret	
 143                     ; 94 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 143                     ; 95 {
 144                     .text:	section	.text,new
 145  0000               f_AWU_IRQHandler:
 149                     ; 99 }
 152  0000 80            	iret	
 174                     ; 106 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 174                     ; 107 {
 175                     .text:	section	.text,new
 176  0000               f_CLK_IRQHandler:
 180                     ; 111 }
 183  0000 80            	iret	
 206                     ; 118 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 206                     ; 119 {
 207                     .text:	section	.text,new
 208  0000               f_EXTI_PORTA_IRQHandler:
 212                     ; 123 }
 215  0000 80            	iret	
 238                     ; 130 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 238                     ; 131 {
 239                     .text:	section	.text,new
 240  0000               f_EXTI_PORTB_IRQHandler:
 244                     ; 135 }
 247  0000 80            	iret	
 270                     ; 142 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 270                     ; 143 {
 271                     .text:	section	.text,new
 272  0000               f_EXTI_PORTC_IRQHandler:
 276                     ; 147 }
 279  0000 80            	iret	
 302                     ; 154 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 302                     ; 155 {
 303                     .text:	section	.text,new
 304  0000               f_EXTI_PORTD_IRQHandler:
 308                     ; 159 }
 311  0000 80            	iret	
 334                     ; 166 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 334                     ; 167 {
 335                     .text:	section	.text,new
 336  0000               f_EXTI_PORTE_IRQHandler:
 340                     ; 171 }
 343  0000 80            	iret	
 365                     ; 218 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 365                     ; 219 {
 366                     .text:	section	.text,new
 367  0000               f_SPI_IRQHandler:
 371                     ; 223 }
 374  0000 80            	iret	
 397                     ; 230 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 397                     ; 231 {
 398                     .text:	section	.text,new
 399  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 403                     ; 235 }
 406  0000 80            	iret	
 429                     ; 242 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 429                     ; 243 {
 430                     .text:	section	.text,new
 431  0000               f_TIM1_CAP_COM_IRQHandler:
 435                     ; 247 }
 438  0000 80            	iret	
 461                     ; 280  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 461                     ; 281  {
 462                     .text:	section	.text,new
 463  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 467                     ; 285  }
 470  0000 80            	iret	
 493                     ; 292  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 493                     ; 293  {
 494                     .text:	section	.text,new
 495  0000               f_TIM2_CAP_COM_IRQHandler:
 499                     ; 297  }
 502  0000 80            	iret	
 525                     ; 307  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 525                     ; 308  {
 526                     .text:	section	.text,new
 527  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 531                     ; 312  }
 534  0000 80            	iret	
 557                     ; 319  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 557                     ; 320  {
 558                     .text:	section	.text,new
 559  0000               f_TIM3_CAP_COM_IRQHandler:
 563                     ; 324  }
 566  0000 80            	iret	
 588                     ; 385 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 588                     ; 386 {
 589                     .text:	section	.text,new
 590  0000               f_I2C_IRQHandler:
 594                     ; 388 }
 597  0000 80            	iret	
 620                     ; 396  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 620                     ; 397  {
 621                     .text:	section	.text,new
 622  0000               f_UART2_TX_IRQHandler:
 626                     ; 401  }
 629  0000 80            	iret	
 652                     ; 408  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 652                     ; 409  {
 653                     .text:	section	.text,new
 654  0000               f_UART2_RX_IRQHandler:
 658                     ; 413  }
 661  0000 80            	iret	
 683                     ; 462  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 683                     ; 463  {
 684                     .text:	section	.text,new
 685  0000               f_ADC1_IRQHandler:
 689                     ; 467  }
 692  0000 80            	iret	
 716                     ; 488  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 716                     ; 489  {
 717                     .text:	section	.text,new
 718  0000               f_TIM4_UPD_OVF_IRQHandler:
 720  0000 8a            	push	cc
 721  0001 84            	pop	a
 722  0002 a4bf          	and	a,#191
 723  0004 88            	push	a
 724  0005 86            	pop	cc
 725  0006 3b0002        	push	c_x+2
 726  0009 be00          	ldw	x,c_x
 727  000b 89            	pushw	x
 728  000c 3b0002        	push	c_y+2
 729  000f be00          	ldw	x,c_y
 730  0011 89            	pushw	x
 733                     ; 502 	TIM4_ClearFlag(TIM4_FLAG_UPDATE);
 735  0012 a601          	ld	a,#1
 736  0014 cd0000        	call	_TIM4_ClearFlag
 738                     ; 504  }
 741  0017 85            	popw	x
 742  0018 bf00          	ldw	c_y,x
 743  001a 320002        	pop	c_y+2
 744  001d 85            	popw	x
 745  001e bf00          	ldw	c_x,x
 746  0020 320002        	pop	c_x+2
 747  0023 80            	iret	
 770                     ; 512 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 770                     ; 513 {
 771                     .text:	section	.text,new
 772  0000               f_EEPROM_EEC_IRQHandler:
 776                     ; 517 }
 779  0000 80            	iret	
 791                     	xdef	f_EEPROM_EEC_IRQHandler
 792                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 793                     	xdef	f_ADC1_IRQHandler
 794                     	xdef	f_UART2_TX_IRQHandler
 795                     	xdef	f_UART2_RX_IRQHandler
 796                     	xdef	f_I2C_IRQHandler
 797                     	xdef	f_TIM3_CAP_COM_IRQHandler
 798                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 799                     	xdef	f_TIM2_CAP_COM_IRQHandler
 800                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 801                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 802                     	xdef	f_TIM1_CAP_COM_IRQHandler
 803                     	xdef	f_SPI_IRQHandler
 804                     	xdef	f_EXTI_PORTE_IRQHandler
 805                     	xdef	f_EXTI_PORTD_IRQHandler
 806                     	xdef	f_EXTI_PORTC_IRQHandler
 807                     	xdef	f_EXTI_PORTB_IRQHandler
 808                     	xdef	f_EXTI_PORTA_IRQHandler
 809                     	xdef	f_CLK_IRQHandler
 810                     	xdef	f_AWU_IRQHandler
 811                     	xdef	f_TLI_IRQHandler
 812                     	xdef	f_TRAP_IRQHandler
 813                     	xdef	f_NonHandledInterrupt
 814                     	xref	_TIM4_ClearFlag
 815                     	xref.b	c_x
 816                     	xref.b	c_y
 835                     	end
