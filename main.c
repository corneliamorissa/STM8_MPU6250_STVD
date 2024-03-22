/**
  ******************************************************************************
  * @file    Project/main.c 
  * @author  Cornelia Morissa Untung
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   Main program body
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */ 


/* Includes ------------------------------------------------------------------*/
#include "stm8s.h"
/* Private defines -----------------------------------------------------------*/

#define LED_PIN_MASK 0xFF
#define LED_PORT GPIOD
/*#define GYRO_FULL_SCALE_1000_DPS (1000.0 / 32767.0)
#define ACC_FULL_SCALE_2G (2.0 / 32767.0)*/
#define I2C_Speed 100000
#define NUM_ACCEL_REGISTERS 6
#define NUM_GYRO_REGISTERS 6
#define GYRO_FULL_SCALE_1000_DPS 0x10
#define ACC_FULL_SCALE_2G  0x00
uint8_t MPU_Address = 0xD0;  //This one is 1 shifted bit of 0x68 addr
uint8_t WHO_AM_I = 0x71;  // WHo am i addressfrom datasheet

float normalizedAccelX = 0;
float normalizedAccelY = 0;
float normalizedAccelZ = 0;

float normalizedGyroX = 0;
float normalizedGyroY = 0;
float normalizedGyroZ = 0;
uint8_t Input_Clock = 0;

uint8_t highByte=0;
uint8_t lowByte = 0;

short accelX = 0;
short accelY = 0;
short accelZ = 0;
short gyroX = 0;
short gyroY = 0;
short gyroZ = 0;
uint16_t j = 0;

uint8_t accelDataReceived = 0;
uint8_t gyroDataReceived = 0;

// Accelerometer register addresses
const uint8_t accelRegisterAddresses[NUM_ACCEL_REGISTERS] = {
    0x3B,  // ACCEL_XOUT_H
    0x3C,  // ACCEL_XOUT_L
    0x3D,  // ACCEL_YOUT_H
    0x3E,  // ACCEL_YOUT_L
    0x3F,  // ACCEL_ZOUT_H
    0x40   // ACCEL_ZOUT_L
};

// Gyroscope register addresses
const uint8_t gyroRegisterAddresses[NUM_GYRO_REGISTERS] = {
    0x43,  // GYRO_XOUT_H
    0x44,  // GYRO_XOUT_L
    0x45,  // GYRO_YOUT_H
    0x46,  // GYRO_YOUT_L
    0x47,  // GYRO_ZOUT_H
    0x48   // GYRO_ZOUT_L
};


// Apply sensitivity scale factor (LSB/g for MPU9250)
//float sensitivity = 16384.0; // for ±2g range
//float accel_scale = 2.0 / sensitivity; // ±2g range

/* Private function prototypes -----------------------------------------------*/
void init(void);
void IO_Init(void);
void I2C_Config(void);
void Timer_Init(void);
void I2C_ACC_ByteWrite(u8 SLAVE_ADDR , u8 iData);
void I2C_ACC_ByteRead(u8 SLAVE_ADDR, u8 ReadAddr , u8* pBuffer);
void read_data(void);
void check_direction(void);
void GPIO_init(void);
void delay(uint16_t milliseconds);
void clock_setup(void);
int abs(int x);
/* Private functions ---------------------------------------------------------*/
int abs(int x) {
    return (x < 0) ? -x : x;
}

void delay(uint16_t milliseconds) {
    // Assuming a 16MHz clock frequency
    // Adjust the loop count based on your actual clock frequency
    uint16_t loop_count = (uint16_t)milliseconds * 16000;

    for (j = 0; j < loop_count; j++) {
			//asm("nop"); // Do nothing (busy-wait)
    }
}


void IO_Init(void) {
	/* enable clock */ 
		CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C , ENABLE);
    //GPIO_DeInit(GPIOD);
		/* I2C DeInit */   
		I2C_DeInit();
		GPIO_DeInit(GPIOB);
		GPIO_Init(GPIOD, GPIO_PIN_0 |  GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3 | GPIO_PIN_4 | GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7, GPIO_MODE_OUT_PP_LOW_FAST);
    GPIO_Init(GPIOB, GPIO_PIN_4, GPIO_MODE_OUT_OD_HIZ_FAST);
    GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_OD_HIZ_FAST);
    
}

void Timer_Init(void) {
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
}

void I2C_Config(void){
	Input_Clock = CLK_GetClockFreq() / 1000000;
	/* I2C configuration */
	I2C_Cmd(ENABLE);
	I2C_Init(I2C_Speed,MPU_Address, 
              I2C_DUTYCYCLE_2, I2C_ACK_CURR, 
              I2C_ADDMODE_7BIT,Input_Clock);
							   
	I2C_AcknowledgeConfig(ENABLE);
	

	
	
	
}

void I2C_ACC_ByteWrite(u8 SLAVE_ADDR , u8 iData){
	//Send start condition
	I2C_GenerateSTART(ENABLE);
	
	//Test on EV5 and clear it
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
	
	//Send EEPROM address for write
	I2C_Send7bitAddress(MPU_Address, I2C_DIRECTION_TX);
	
	//Test on EV6 and clear it
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	
	//Receive the byte to be written
	I2C_SendData(iData);
	
	//Test on EV8 and clear it
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	
	if(I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED) == SUCCESS){
		GPIO_Write(LED_PORT, 0x06);
	}
	
	
	//SEND STOP CONDITION
	I2C_GenerateSTOP(ENABLE); 
	//GPIO_Write(LED_PORT, 0x00);
}


void I2C_ACC_ByteRead(u8 SLAVE_ADDR, u8 ReadAddr , u8* pBuffer){
	//While the bus is busy
	while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));
	//Generate start and wait event detection
	I2C_GenerateSTART(ENABLE);
	
	//Test on EV5 and clear it
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
	
	//Send slave Address in write direction and wait detection event
	I2C_Send7bitAddress(SLAVE_ADDR,I2C_DIRECTION_TX);
	
	delay(10);
	
	//Test on EV6 and clear it
	while (!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
	
	//Send Address of first byte to be read & wait event detection
	I2C_SendData((u8) (ReadAddr)); /*LSB*/
		
	//Test on EV8 and clear it
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
	
	//Send START COndition
	I2C_GenerateSTART(ENABLE);
	
	//Test on EV5 and clear it 
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
	
	//Send slave in read direction & wait event
	I2C_Send7bitAddress(SLAVE_ADDR, I2C_DIRECTION_RX);
	
	//I2C_AcknowledgeConfig(I2C_ACK_CURR);
	
	//test on EV6 and clear it
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));
	
	while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));
	
	*pBuffer = I2C_ReceiveData();
	
	I2C_AcknowledgeConfig(I2C_ACK_NONE);
	
	I2C_GenerateSTOP(ENABLE);
}


void init(void){
	IO_Init();
	Timer_Init();
	I2C_Config();
	//enableInterrupts();
}


void read_data(void) {
    accelDataReceived = 0;
    gyroDataReceived = 0;

    while (!(accelDataReceived && gyroDataReceived)) {
        // Read X-axis accelerometer data
        I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[0], &highByte);
        delay(3);
        I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[1], &lowByte);
        delay(3);
        accelX = (int16_t)((highByte << 8) | lowByte);

        // Read Y-axis accelerometer data
        I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[2], &highByte);
        delay(3);
        I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[3], &lowByte);
        delay(3);
        accelY = (int16_t)((highByte << 8) | lowByte);

        // Read Z-axis accelerometer data
        I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[4], &highByte);
        delay(3);
        I2C_ACC_ByteRead(MPU_Address, accelRegisterAddresses[5], &lowByte);
        delay(3);
        accelZ = (int16_t)((highByte << 8) | lowByte);

        // Read X-axis gyroscope data
        I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[0], &highByte);
        delay(3);
        I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[1], &lowByte);
        delay(3);
        gyroX = (int16_t)((highByte << 8) | lowByte);

        // Read Y-axis gyroscope data
        I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[2], &highByte);
        delay(3);
        I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[3], &lowByte);
        delay(3);
        gyroY = (int16_t)((highByte << 8) | lowByte);

        // Read Z-axis gyroscope data
        I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[4], &highByte);
        delay(3);
        I2C_ACC_ByteRead(MPU_Address, gyroRegisterAddresses[5], &lowByte);
        delay(3);
        gyroZ = (int16_t)((highByte << 8) | lowByte);

        // Check if all data is received
        if (accelX != 0 && accelY != 0 && accelZ != 0) {
            accelDataReceived = 1;
        }
				
				if (gyroX != 0 && gyroY != 0 && gyroZ != 0) {
            gyroDataReceived = 1;
        }
    }
}

void check_direction(void){
		if(abs(gyroX) > 8000  &&  abs(gyroY) > 8000  &&  abs(gyroZ) > 8000){
					GPIO_WriteHigh(LED_PORT, GPIO_PIN_ALL);
			}
			else if(accelZ < -14000){
					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
					GPIO_WriteHigh(GPIOD,GPIO_PIN_6); //MPU DOWN
			}
			else if(accelX < -14000){
					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
					GPIO_WriteHigh(GPIOD,GPIO_PIN_2); //MPU RIGHT
			}
			else if(accelX > 14000){
					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
					GPIO_WriteHigh(GPIOD,GPIO_PIN_3); //MPU LEFT
			}
			else if(accelY < -14000){
					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
					GPIO_WriteHigh(GPIOD,GPIO_PIN_4); //MPU FRONT
			}
			else if(accelY > 14000){
					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
					GPIO_WriteHigh(GPIOD,GPIO_PIN_5); //MPU BACK
			}
			else if(accelZ > 14000){
				GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
				GPIO_WriteHigh(GPIOD,GPIO_PIN_0); //MPU UP
			}
			else{
					GPIO_WriteLow(LED_PORT, GPIO_PIN_ALL);
			}
}


void main(void)
{
	init();
  /* Infinite loop */
  while (1)
    {
			/*GPIO_Write(LED_PORT, 0x00);
			delay(5000);
			GPIO_WriteHigh(GPIOD,GPIO_PIN_0); //MPU UP
			delay(5000);
			GPIO_WriteHigh(GPIOD,GPIO_PIN_2);
			delay(5000);
			GPIO_WriteHigh(GPIOD,GPIO_PIN_3);
			delay(5000);
			GPIO_WriteHigh(GPIOD,GPIO_PIN_4);
			delay(5000);
			GPIO_WriteHigh(GPIOD,GPIO_PIN_5);
			delay(5000);
			GPIO_WriteHigh(GPIOD,GPIO_PIN_6);
			delay(5000);*/
			
			read_data();
			
			if(accelDataReceived==1 && gyroDataReceived==1)
			{
						check_direction();
			}
			
			accelX = 0;
			accelY = 0;
			accelZ = 0;
			gyroX = 0;
			gyroY = 0;
			gyroZ = 0;
			
			
			delay(3000);
		}
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
