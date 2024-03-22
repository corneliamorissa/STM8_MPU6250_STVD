   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.9 - 19 Apr 2023
   3                     ; Generator (Limited) V4.5.6 - 18 Jul 2023
   4                     ; Optimizer V4.5.6 - 18 Jul 2023
  21                     	switch	.data
  22  0000               _MPU_Address:
  23  0000 d0            	dc.b	208
  24  0001               _WHO_AM_I:
  25  0001 71            	dc.b	113
  26  0002               _normalizedAccelX:
  27  0002 00000000      	dc.w	0,0
  28  0006               _normalizedAccelY:
  29  0006 00000000      	dc.w	0,0
  30  000a               _normalizedAccelZ:
  31  000a 00000000      	dc.w	0,0
  32  000e               _normalizedGyroX:
  33  000e 00000000      	dc.w	0,0
  34  0012               _normalizedGyroY:
  35  0012 00000000      	dc.w	0,0
  36  0016               _normalizedGyroZ:
  37  0016 00000000      	dc.w	0,0
  38  001a               _Input_Clock:
  39  001a 00            	dc.b	0
  40  001b               _highByte:
  41  001b 00            	dc.b	0
  42  001c               _lowByte:
  43  001c 00            	dc.b	0
  44  001d               _accelX:
  45  001d 0000          	dc.w	0
  46  001f               _accelY:
  47  001f 0000          	dc.w	0
  48  0021               _accelZ:
  49  0021 0000          	dc.w	0
  50  0023               _gyroX:
  51  0023 0000          	dc.w	0
  52  0025               _gyroY:
  53  0025 0000          	dc.w	0
  54  0027               _gyroZ:
  55  0027 0000          	dc.w	0
  56  0029               _j:
  57  0029 0000          	dc.w	0
  58  002b               _accelDataReceived:
  59  002b 00            	dc.b	0
  60  002c               _gyroDataReceived:
  61  002c 00            	dc.b	0
  62                     .const:	section	.text
  63  0000               _accelRegisterAddresses:
  64  0000 3b            	dc.b	59
  65  0001 3c            	dc.b	60
  66  0002 3d            	dc.b	61
  67  0003 3e            	dc.b	62
  68  0004 3f            	dc.b	63
  69  0005 40            	dc.b	64
  70  0006               _gyroRegisterAddresses:
  71  0006 43            	dc.b	67
  72  0007 44            	dc.b	68
  73  0008 45            	dc.b	69
  74  0009 46            	dc.b	70
  75  000a 47            	dc.b	71
  76  000b 48            	dc.b	72
 114                     ; 107 int abs(int x) {
 116                     .text:	section	.text,new
 117  0000               _abs:
 121                     ; 108     return (x < 0) ? -x : x;
 123  0000 a30000        	cpw	x,#0
 124  0003 2e01          	jrsge	L6
 125  0005 50            	negw	x
 126  0006               L6:
 129  0006 81            	ret	
 169                     ; 111 void delay(uint16_t milliseconds) {
 170                     .text:	section	.text,new
 171  0000               _delay:
 173  0000 89            	pushw	x
 174       00000002      OFST:	set	2
 177                     ; 114     uint16_t loop_count = (uint16_t)milliseconds * 16000;
 179  0001 90ae3e80      	ldw	y,#16000
 180  0005 cd0000        	call	c_imul
 182  0008 1f01          	ldw	(OFST-1,sp),x
 184                     ; 116     for (j = 0; j < loop_count; j++) {
 186  000a 5f            	clrw	x
 188  000b 2001          	jra	L74
 189  000d               L34:
 192  000d 5c            	incw	x
 193  000e               L74:
 194  000e cf0029        	ldw	_j,x
 197  0011 1301          	cpw	x,(OFST-1,sp)
 198  0013 25f8          	jrult	L34
 199                     ; 119 }
 202  0015 85            	popw	x
 203  0016 81            	ret	
 230                     ; 122 void IO_Init(void) {
 231                     .text:	section	.text,new
 232  0000               _IO_Init:
 236                     ; 124 		CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C , ENABLE);
 238  0000 ae0001        	ldw	x,#1
 239  0003 cd0000        	call	_CLK_PeripheralClockConfig
 241                     ; 127 		I2C_DeInit();
 243  0006 cd0000        	call	_I2C_DeInit
 245                     ; 128 		GPIO_DeInit(GPIOB);
 247  0009 ae5005        	ldw	x,#20485
 248  000c cd0000        	call	_GPIO_DeInit
 250                     ; 129 		GPIO_Init(GPIOD, GPIO_PIN_0 |  GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 | GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);
 252  000f 4be0          	push	#224
 253  0011 4bff          	push	#255
 254  0013 ae500f        	ldw	x,#20495
 255  0016 cd0000        	call	_GPIO_Init
 257  0019 85            	popw	x
 258                     ; 130     GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_FAST);
 260  001a 4bb0          	push	#176
 261  001c 4b10          	push	#16
 262  001e ae5005        	ldw	x,#20485
 263  0021 cd0000        	call	_GPIO_Init
 265  0024 85            	popw	x
 266                     ; 131     GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_FAST);
 268  0025 4bb0          	push	#176
 269  0027 4b20          	push	#32
 270  0029 ae5005        	ldw	x,#20485
 271  002c cd0000        	call	_GPIO_Init
 273  002f 85            	popw	x
 274                     ; 133 }
 277  0030 81            	ret	
 301                     ; 135 void Timer_Init(void) {
 302                     .text:	section	.text,new
 303  0000               _Timer_Init:
 307                     ; 136 	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 309  0000 4f            	clr	a
 311                     ; 137 }
 314  0001 cc0000        	jp	_CLK_HSIPrescalerConfig
 343                     	switch	.const
 344  000c               L24:
 345  000c 000f4240      	dc.l	1000000
 346                     ; 139 void I2C_Config(void){
 347                     .text:	section	.text,new
 348  0000               _I2C_Config:
 352                     ; 140 	Input_Clock = CLK_GetClockFreq() / 1000000;
 354  0000 cd0000        	call	_CLK_GetClockFreq
 356  0003 ae000c        	ldw	x,#L24
 357  0006 cd0000        	call	c_ludv
 359  0009 550003001a    	mov	_Input_Clock,c_lreg+3
 360                     ; 142 	I2C_Cmd(ENABLE);
 362  000e a601          	ld	a,#1
 363  0010 cd0000        	call	_I2C_Cmd
 365                     ; 143 	I2C_Init(I2C_Speed,MPU_Address, 
 365                     ; 144               I2C_DUTYCYCLE_2, I2C_ACK_CURR, 
 365                     ; 145               I2C_ADDMODE_7BIT,Input_Clock);
 367  0013 3b001a        	push	_Input_Clock
 368  0016 4b00          	push	#0
 369  0018 4b01          	push	#1
 370  001a 4b00          	push	#0
 371  001c c60000        	ld	a,_MPU_Address
 372  001f 5f            	clrw	x
 373  0020 97            	ld	xl,a
 374  0021 89            	pushw	x
 375  0022 ae86a0        	ldw	x,#34464
 376  0025 89            	pushw	x
 377  0026 ae0001        	ldw	x,#1
 378  0029 89            	pushw	x
 379  002a cd0000        	call	_I2C_Init
 381  002d 5b0a          	addw	sp,#10
 382                     ; 147 	I2C_AcknowledgeConfig(ENABLE);
 384  002f a601          	ld	a,#1
 386                     ; 153 }
 389  0031 cc0000        	jp	_I2C_AcknowledgeConfig
 435                     ; 155 void I2C_ACC_ByteWrite(u8 SLAVE_ADDR , u8 iData){
 436                     .text:	section	.text,new
 437  0000               _I2C_ACC_ByteWrite:
 439  0000 89            	pushw	x
 440       00000000      OFST:	set	0
 443                     ; 157 	I2C_GenerateSTART(ENABLE);
 445  0001 a601          	ld	a,#1
 446  0003 cd0000        	call	_I2C_GenerateSTART
 449  0006               L321:
 450                     ; 160 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
 452  0006 ae0301        	ldw	x,#769
 453  0009 cd0000        	call	_I2C_CheckEvent
 455  000c 4d            	tnz	a
 456  000d 27f7          	jreq	L321
 457                     ; 163 	I2C_Send7bitAddress(MPU_Address, I2C_DIRECTION_TX);
 459  000f c60000        	ld	a,_MPU_Address
 460  0012 5f            	clrw	x
 461  0013 95            	ld	xh,a
 462  0014 cd0000        	call	_I2C_Send7bitAddress
 465  0017               L131:
 466                     ; 166 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
 468  0017 ae0782        	ldw	x,#1922
 469  001a cd0000        	call	_I2C_CheckEvent
 471  001d 4d            	tnz	a
 472  001e 27f7          	jreq	L131
 473                     ; 169 	I2C_SendData(iData);
 475  0020 7b02          	ld	a,(OFST+2,sp)
 476  0022 cd0000        	call	_I2C_SendData
 479  0025               L731:
 480                     ; 172 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
 482  0025 ae0784        	ldw	x,#1924
 483  0028 cd0000        	call	_I2C_CheckEvent
 485  002b 4d            	tnz	a
 486  002c 27f7          	jreq	L731
 487                     ; 174 	if(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED) == SUCCESS){
 489  002e ae0784        	ldw	x,#1924
 490  0031 cd0000        	call	_I2C_CheckEvent
 492  0034 4a            	dec	a
 493  0035 2609          	jrne	L341
 494                     ; 175 		GPIO_Write(LED_PORT, 0x06);
 496  0037 4b06          	push	#6
 497  0039 ae500f        	ldw	x,#20495
 498  003c cd0000        	call	_GPIO_Write
 500  003f 84            	pop	a
 501  0040               L341:
 502                     ; 180 	I2C_GenerateSTOP(ENABLE); 
 504  0040 a601          	ld	a,#1
 505  0042 cd0000        	call	_I2C_GenerateSTOP
 507                     ; 182 }
 510  0045 85            	popw	x
 511  0046 81            	ret	
 569                     ; 185 void I2C_ACC_ByteRead(u8 SLAVE_ADDR, u8 ReadAddr , u8* pBuffer){
 570                     .text:	section	.text,new
 571  0000               _I2C_ACC_ByteRead:
 573  0000 89            	pushw	x
 574       00000000      OFST:	set	0
 577  0001               L171:
 578                     ; 187 	while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));
 580  0001 ae0302        	ldw	x,#770
 581  0004 cd0000        	call	_I2C_GetFlagStatus
 583  0007 4d            	tnz	a
 584  0008 26f7          	jrne	L171
 585                     ; 189 	I2C_GenerateSTART(ENABLE);
 587  000a 4c            	inc	a
 588  000b cd0000        	call	_I2C_GenerateSTART
 591  000e               L771:
 592                     ; 192 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
 594  000e ae0301        	ldw	x,#769
 595  0011 cd0000        	call	_I2C_CheckEvent
 597  0014 4d            	tnz	a
 598  0015 27f7          	jreq	L771
 599                     ; 195 	I2C_Send7bitAddress(SLAVE_ADDR,I2C_DIRECTION_TX);
 601  0017 7b01          	ld	a,(OFST+1,sp)
 602  0019 5f            	clrw	x
 603  001a 95            	ld	xh,a
 604  001b cd0000        	call	_I2C_Send7bitAddress
 606                     ; 197 	delay(10);
 608  001e ae000a        	ldw	x,#10
 609  0021 cd0000        	call	_delay
 612  0024               L502:
 613                     ; 200 	while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
 615  0024 ae0782        	ldw	x,#1922
 616  0027 cd0000        	call	_I2C_CheckEvent
 618  002a 4d            	tnz	a
 619  002b 27f7          	jreq	L502
 620                     ; 203 	I2C_SendData((u8) (ReadAddr)); /*LSB*/
 622  002d 7b02          	ld	a,(OFST+2,sp)
 623  002f cd0000        	call	_I2C_SendData
 626  0032               L312:
 627                     ; 206 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
 629  0032 ae0784        	ldw	x,#1924
 630  0035 cd0000        	call	_I2C_CheckEvent
 632  0038 4d            	tnz	a
 633  0039 27f7          	jreq	L312
 634                     ; 209 	I2C_GenerateSTART(ENABLE);
 636  003b a601          	ld	a,#1
 637  003d cd0000        	call	_I2C_GenerateSTART
 640  0040               L122:
 641                     ; 212 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
 643  0040 ae0301        	ldw	x,#769
 644  0043 cd0000        	call	_I2C_CheckEvent
 646  0046 4d            	tnz	a
 647  0047 27f7          	jreq	L122
 648                     ; 215 	I2C_Send7bitAddress(SLAVE_ADDR, I2C_DIRECTION_RX);
 650  0049 7b01          	ld	a,(OFST+1,sp)
 651  004b ae0001        	ldw	x,#1
 652  004e 95            	ld	xh,a
 653  004f cd0000        	call	_I2C_Send7bitAddress
 656  0052               L722:
 657                     ; 220 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));
 659  0052 ae0302        	ldw	x,#770
 660  0055 cd0000        	call	_I2C_CheckEvent
 662  0058 4d            	tnz	a
 663  0059 27f7          	jreq	L722
 665  005b               L532:
 666                     ; 222 	while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));
 668  005b ae0340        	ldw	x,#832
 669  005e cd0000        	call	_I2C_CheckEvent
 671  0061 4d            	tnz	a
 672  0062 27f7          	jreq	L532
 673                     ; 224 	*pBuffer = I2C_ReceiveData();
 675  0064 cd0000        	call	_I2C_ReceiveData
 677  0067 1e05          	ldw	x,(OFST+5,sp)
 678  0069 f7            	ld	(x),a
 679                     ; 226 	I2C_AcknowledgeConfig(I2C_ACK_NONE);
 681  006a 4f            	clr	a
 682  006b cd0000        	call	_I2C_AcknowledgeConfig
 684                     ; 228 	I2C_GenerateSTOP(ENABLE);
 686  006e a601          	ld	a,#1
 687  0070 cd0000        	call	_I2C_GenerateSTOP
 689                     ; 229 }
 692  0073 85            	popw	x
 693  0074 81            	ret	
 719                     ; 232 void init(void){
 720                     .text:	section	.text,new
 721  0000               _init:
 725                     ; 233 	IO_Init();
 727  0000 cd0000        	call	_IO_Init
 729                     ; 234 	Timer_Init();
 731  0003 cd0000        	call	_Timer_Init
 733                     ; 235 	I2C_Config();
 736                     ; 237 }
 739  0006 cc0000        	jp	_I2C_Config
 777                     ; 240 void read_data(void) {
 778                     .text:	section	.text,new
 779  0000               _read_data:
 783                     ; 241     accelDataReceived = 0;
 785  0000 725f002b      	clr	_accelDataReceived
 786                     ; 242     gyroDataReceived = 0;
 788  0004 725f002c      	clr	_gyroDataReceived
 790  0008 cc0104        	jra	L562
 791  000b               L162:
 792                     ; 246         I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[0], &highByte);
 794  000b ae001b        	ldw	x,#_highByte
 795  000e 89            	pushw	x
 796  000f c60000        	ld	a,_MPU_Address
 797  0012 ae003b        	ldw	x,#59
 798  0015 95            	ld	xh,a
 799  0016 cd0000        	call	_I2C_ACC_ByteRead
 801  0019 85            	popw	x
 802                     ; 247         delay(3);
 804  001a cd0121        	call	LC002
 805  001d 89            	pushw	x
 806  001e c60000        	ld	a,_MPU_Address
 807  0021 ae003c        	ldw	x,#60
 808  0024 95            	ld	xh,a
 809  0025 cd0000        	call	_I2C_ACC_ByteRead
 811  0028 85            	popw	x
 812                     ; 249         delay(3);
 814  0029 cd0112        	call	LC001
 815  002c cf001d        	ldw	_accelX,x
 816                     ; 253         I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[2], &highByte);
 818  002f ae001b        	ldw	x,#_highByte
 819  0032 89            	pushw	x
 820  0033 c60000        	ld	a,_MPU_Address
 821  0036 ae003d        	ldw	x,#61
 822  0039 95            	ld	xh,a
 823  003a cd0000        	call	_I2C_ACC_ByteRead
 825  003d 85            	popw	x
 826                     ; 254         delay(3);
 828  003e cd0121        	call	LC002
 829  0041 89            	pushw	x
 830  0042 c60000        	ld	a,_MPU_Address
 831  0045 ae003e        	ldw	x,#62
 832  0048 95            	ld	xh,a
 833  0049 cd0000        	call	_I2C_ACC_ByteRead
 835  004c 85            	popw	x
 836                     ; 256         delay(3);
 838  004d cd0112        	call	LC001
 839  0050 cf001f        	ldw	_accelY,x
 840                     ; 260         I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[4], &highByte);
 842  0053 ae001b        	ldw	x,#_highByte
 843  0056 89            	pushw	x
 844  0057 c60000        	ld	a,_MPU_Address
 845  005a ae003f        	ldw	x,#63
 846  005d 95            	ld	xh,a
 847  005e cd0000        	call	_I2C_ACC_ByteRead
 849  0061 85            	popw	x
 850                     ; 261         delay(3);
 852  0062 cd0121        	call	LC002
 853  0065 89            	pushw	x
 854  0066 c60000        	ld	a,_MPU_Address
 855  0069 ae0040        	ldw	x,#64
 856  006c 95            	ld	xh,a
 857  006d cd0000        	call	_I2C_ACC_ByteRead
 859  0070 85            	popw	x
 860                     ; 263         delay(3);
 862  0071 cd0112        	call	LC001
 863  0074 cf0021        	ldw	_accelZ,x
 864                     ; 267         I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[0], &highByte);
 866  0077 ae001b        	ldw	x,#_highByte
 867  007a 89            	pushw	x
 868  007b c60000        	ld	a,_MPU_Address
 869  007e ae0043        	ldw	x,#67
 870  0081 95            	ld	xh,a
 871  0082 cd0000        	call	_I2C_ACC_ByteRead
 873  0085 85            	popw	x
 874                     ; 268         delay(3);
 876  0086 cd0121        	call	LC002
 877  0089 89            	pushw	x
 878  008a c60000        	ld	a,_MPU_Address
 879  008d ae0044        	ldw	x,#68
 880  0090 95            	ld	xh,a
 881  0091 cd0000        	call	_I2C_ACC_ByteRead
 883  0094 85            	popw	x
 884                     ; 270         delay(3);
 886  0095 ad7b          	call	LC001
 887  0097 cf0023        	ldw	_gyroX,x
 888                     ; 274         I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[2], &highByte);
 890  009a ae001b        	ldw	x,#_highByte
 891  009d 89            	pushw	x
 892  009e c60000        	ld	a,_MPU_Address
 893  00a1 ae0045        	ldw	x,#69
 894  00a4 95            	ld	xh,a
 895  00a5 cd0000        	call	_I2C_ACC_ByteRead
 897  00a8 85            	popw	x
 898                     ; 275         delay(3);
 900  00a9 ad76          	call	LC002
 901  00ab 89            	pushw	x
 902  00ac c60000        	ld	a,_MPU_Address
 903  00af ae0046        	ldw	x,#70
 904  00b2 95            	ld	xh,a
 905  00b3 cd0000        	call	_I2C_ACC_ByteRead
 907  00b6 85            	popw	x
 908                     ; 277         delay(3);
 910  00b7 ad59          	call	LC001
 911  00b9 cf0025        	ldw	_gyroY,x
 912                     ; 281         I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[4], &highByte);
 914  00bc ae001b        	ldw	x,#_highByte
 915  00bf 89            	pushw	x
 916  00c0 c60000        	ld	a,_MPU_Address
 917  00c3 ae0047        	ldw	x,#71
 918  00c6 95            	ld	xh,a
 919  00c7 cd0000        	call	_I2C_ACC_ByteRead
 921  00ca 85            	popw	x
 922                     ; 282         delay(3);
 924  00cb ad54          	call	LC002
 925  00cd 89            	pushw	x
 926  00ce c60000        	ld	a,_MPU_Address
 927  00d1 ae0048        	ldw	x,#72
 928  00d4 95            	ld	xh,a
 929  00d5 cd0000        	call	_I2C_ACC_ByteRead
 931  00d8 85            	popw	x
 932                     ; 284         delay(3);
 934  00d9 ad37          	call	LC001
 935  00db cf0027        	ldw	_gyroZ,x
 936                     ; 288         if (accelX != 0 && accelY != 0 && accelZ != 0) {
 938  00de ce001d        	ldw	x,_accelX
 939  00e1 270e          	jreq	L172
 941  00e3 ce001f        	ldw	x,_accelY
 942  00e6 2709          	jreq	L172
 944  00e8 ce0021        	ldw	x,_accelZ
 945  00eb 2704          	jreq	L172
 946                     ; 289             accelDataReceived = 1;
 948  00ed 3501002b      	mov	_accelDataReceived,#1
 949  00f1               L172:
 950                     ; 292 				if (gyroX != 0 && gyroY != 0 && gyroZ != 0) {
 952  00f1 ce0023        	ldw	x,_gyroX
 953  00f4 270e          	jreq	L562
 955  00f6 ce0025        	ldw	x,_gyroY
 956  00f9 2709          	jreq	L562
 958  00fb ce0027        	ldw	x,_gyroZ
 959  00fe 2704          	jreq	L562
 960                     ; 293             gyroDataReceived = 1;
 962  0100 3501002c      	mov	_gyroDataReceived,#1
 963  0104               L562:
 964                     ; 244     while (!(accelDataReceived && gyroDataReceived)) {
 966  0104 c6002b        	ld	a,_accelDataReceived
 967  0107 2603cc000b    	jreq	L162
 969  010c c6002c        	ld	a,_gyroDataReceived
 970  010f 27f8          	jreq	L162
 971                     ; 296 }
 974  0111 81            	ret	
 975  0112               LC001:
 976  0112 ae0003        	ldw	x,#3
 977  0115 cd0000        	call	_delay
 979                     ; 250         accelX = (int16_t)((highByte << 8) | lowByte);
 981  0118 c6001b        	ld	a,_highByte
 982  011b 97            	ld	xl,a
 983  011c c6001c        	ld	a,_lowByte
 984  011f 02            	rlwa	x,a
 985  0120 81            	ret	
 986  0121               LC002:
 987  0121 ae0003        	ldw	x,#3
 988  0124 cd0000        	call	_delay
 990                     ; 283         I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[5], &lowByte);
 992  0127 ae001c        	ldw	x,#_lowByte
 993  012a 81            	ret	
1025                     ; 298 void check_direction(void){
1026                     .text:	section	.text,new
1027  0000               _check_direction:
1031                     ; 299 		if(abs(gyroX) > 8000  &&  abs(gyroY) > 8000  &&  abs(gyroZ) > 8000){
1033  0000 ce0023        	ldw	x,_gyroX
1034  0003 cd0000        	call	_abs
1036  0006 a31f41        	cpw	x,#8001
1037  0009 2f1a          	jrslt	L503
1039  000b ce0025        	ldw	x,_gyroY
1040  000e cd0000        	call	_abs
1042  0011 a31f41        	cpw	x,#8001
1043  0014 2f0f          	jrslt	L503
1045  0016 ce0027        	ldw	x,_gyroZ
1046  0019 cd0000        	call	_abs
1048  001c a31f41        	cpw	x,#8001
1049  001f 2f04          	jrslt	L503
1050                     ; 300 					GPIO_WriteHigh(LED_PORT, GPIO_PIN_ALL);
1052  0021 4bff          	push	#255
1055  0023 204c          	jp	LC003
1056  0025               L503:
1057                     ; 302 			else if(accelZ < -14000){
1059  0025 ce0021        	ldw	x,_accelZ
1060  0028 a3c950        	cpw	x,#51536
1061  002b 2e06          	jrsge	L113
1062                     ; 303 					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1064  002d ad54          	call	LC004
1065                     ; 304 					GPIO_WriteHigh(GPIOD,GPIO_PIN_6); //MPU DOWN
1067  002f 4b40          	push	#64
1070  0031 203e          	jp	LC003
1071  0033               L113:
1072                     ; 306 			else if(accelX < -14000){
1074  0033 ce001d        	ldw	x,_accelX
1075  0036 a3c950        	cpw	x,#51536
1076  0039 2e06          	jrsge	L513
1077                     ; 307 					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1079  003b ad46          	call	LC004
1080                     ; 308 					GPIO_WriteHigh(GPIOD,GPIO_PIN_2); //MPU RIGHT
1082  003d 4b04          	push	#4
1085  003f 2030          	jp	LC003
1086  0041               L513:
1087                     ; 310 			else if(accelX > 14000){
1089  0041 a336b1        	cpw	x,#14001
1090  0044 2f06          	jrslt	L123
1091                     ; 311 					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1093  0046 ad3b          	call	LC004
1094                     ; 312 					GPIO_WriteHigh(GPIOD,GPIO_PIN_3); //MPU LEFT
1096  0048 4b08          	push	#8
1099  004a 2025          	jp	LC003
1100  004c               L123:
1101                     ; 314 			else if(accelY < -14000){
1103  004c ce001f        	ldw	x,_accelY
1104  004f a3c950        	cpw	x,#51536
1105  0052 2e06          	jrsge	L523
1106                     ; 315 					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1108  0054 ad2d          	call	LC004
1109                     ; 316 					GPIO_WriteHigh(GPIOD,GPIO_PIN_4); //MPU FRONT
1111  0056 4b10          	push	#16
1114  0058 2017          	jp	LC003
1115  005a               L523:
1116                     ; 318 			else if(accelY > 14000){
1118  005a a336b1        	cpw	x,#14001
1119  005d 2f06          	jrslt	L133
1120                     ; 319 					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1122  005f ad22          	call	LC004
1123                     ; 320 					GPIO_WriteHigh(GPIOD,GPIO_PIN_5); //MPU BACK
1125  0061 4b20          	push	#32
1128  0063 200c          	jp	LC003
1129  0065               L133:
1130                     ; 322 			else if(accelZ > 14000){
1132  0065 ce0021        	ldw	x,_accelZ
1133  0068 a336b1        	cpw	x,#14001
1134  006b 2f0c          	jrslt	L533
1135                     ; 323 				GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1137  006d ad14          	call	LC004
1138                     ; 324 				GPIO_WriteHigh(GPIOD,GPIO_PIN_0); //MPU UP
1140  006f 4b01          	push	#1
1141  0071               LC003:
1142  0071 ae500f        	ldw	x,#20495
1143  0074 cd0000        	call	_GPIO_WriteHigh
1146  0077 2008          	jra	L703
1147  0079               L533:
1148                     ; 327 					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
1150  0079 4bff          	push	#255
1151  007b ae500f        	ldw	x,#20495
1152  007e cd0000        	call	_GPIO_WriteLow
1154  0081               L703:
1155  0081 84            	pop	a
1156                     ; 329 }
1159  0082 81            	ret	
1160  0083               LC004:
1161  0083 4bff          	push	#255
1162  0085 ae500f        	ldw	x,#20495
1163  0088 cd0000        	call	_GPIO_WriteLow
1165  008b 84            	pop	a
1166  008c 81            	ret	
1201                     ; 332 void main(void)
1201                     ; 333 {
1202                     .text:	section	.text,new
1203  0000               _main:
1207                     ; 334 	init();
1209  0000 cd0000        	call	_init
1211  0003               L153:
1212                     ; 353 			read_data();
1214  0003 cd0000        	call	_read_data
1216                     ; 355 			if(accelDataReceived==1 && gyroDataReceived==1)
1218  0006 c6002b        	ld	a,_accelDataReceived
1219  0009 4a            	dec	a
1220  000a 2609          	jrne	L553
1222  000c c6002c        	ld	a,_gyroDataReceived
1223  000f 4a            	dec	a
1224  0010 2603          	jrne	L553
1225                     ; 357 						check_direction();
1227  0012 cd0000        	call	_check_direction
1229  0015               L553:
1230                     ; 360 			accelX = 0;
1232  0015 5f            	clrw	x
1233  0016 cf001d        	ldw	_accelX,x
1234                     ; 361 			accelY = 0;
1236  0019 cf001f        	ldw	_accelY,x
1237                     ; 362 			accelZ = 0;
1239  001c cf0021        	ldw	_accelZ,x
1240                     ; 363 			gyroX = 0;
1242  001f cf0023        	ldw	_gyroX,x
1243                     ; 364 			gyroY = 0;
1245  0022 cf0025        	ldw	_gyroY,x
1246                     ; 365 			gyroZ = 0;
1248  0025 cf0027        	ldw	_gyroZ,x
1249                     ; 368 			delay(3000);
1251  0028 ae0bb8        	ldw	x,#3000
1252  002b cd0000        	call	_delay
1255  002e 20d3          	jra	L153
1290                     ; 381 void assert_failed(u8* file, u32 line)
1290                     ; 382 { 
1291                     .text:	section	.text,new
1292  0000               _assert_failed:
1296  0000               L573:
1297  0000 20fe          	jra	L573
1474                     	xdef	_main
1475                     	xdef	_abs
1476                     	xdef	_delay
1477                     	xdef	_check_direction
1478                     	xdef	_read_data
1479                     	xdef	_I2C_ACC_ByteRead
1480                     	xdef	_I2C_ACC_ByteWrite
1481                     	xdef	_Timer_Init
1482                     	xdef	_I2C_Config
1483                     	xdef	_IO_Init
1484                     	xdef	_init
1485                     	xdef	_gyroRegisterAddresses
1486                     	xdef	_accelRegisterAddresses
1487                     	xdef	_gyroDataReceived
1488                     	xdef	_accelDataReceived
1489                     	xdef	_j
1490                     	xdef	_gyroZ
1491                     	xdef	_gyroY
1492                     	xdef	_gyroX
1493                     	xdef	_accelZ
1494                     	xdef	_accelY
1495                     	xdef	_accelX
1496                     	xdef	_lowByte
1497                     	xdef	_highByte
1498                     	xdef	_Input_Clock
1499                     	xdef	_normalizedGyroZ
1500                     	xdef	_normalizedGyroY
1501                     	xdef	_normalizedGyroX
1502                     	xdef	_normalizedAccelZ
1503                     	xdef	_normalizedAccelY
1504                     	xdef	_normalizedAccelX
1505                     	xdef	_WHO_AM_I
1506                     	xdef	_MPU_Address
1507                     	xdef	_assert_failed
1508                     	xref	_I2C_GetFlagStatus
1509                     	xref	_I2C_CheckEvent
1510                     	xref	_I2C_SendData
1511                     	xref	_I2C_Send7bitAddress
1512                     	xref	_I2C_ReceiveData
1513                     	xref	_I2C_AcknowledgeConfig
1514                     	xref	_I2C_GenerateSTOP
1515                     	xref	_I2C_GenerateSTART
1516                     	xref	_I2C_Cmd
1517                     	xref	_I2C_Init
1518                     	xref	_I2C_DeInit
1519                     	xref	_GPIO_WriteLow
1520                     	xref	_GPIO_WriteHigh
1521                     	xref	_GPIO_Write
1522                     	xref	_GPIO_Init
1523                     	xref	_GPIO_DeInit
1524                     	xref	_CLK_GetClockFreq
1525                     	xref	_CLK_HSIPrescalerConfig
1526                     	xref	_CLK_PeripheralClockConfig
1527                     	xref.b	c_lreg
1528                     	xref.b	c_x
1547                     	xref	c_ludv
1548                     	xref	c_imul
1549                     	end
