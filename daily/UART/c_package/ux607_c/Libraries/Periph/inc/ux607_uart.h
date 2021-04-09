
#include "ux607.h"


/** 
  * @brief  USART Init Structure definition  
  */ 
  
typedef struct
{
	uint32_t UART_BaudRate;           		 /*!< This member configures the UART communication baud rate.
												The baud rate is computed using the following formula:
													- IntegerDivider = ((PCLKx) / (16 * (UART_InitStruct->UART_BaudRate)))
													- FractionalDivider = ((IntegerDivider - ((u32) IntegerDivider)) * 16) + 0.5 */

	uint32_t UART_Parity;              	/*!< Specifies the parity mode.
												This parameter can be a value of @ref UART_No_Parity
												@note When no_parity is enabled, the computed parity is not inserted
														at the MSB position of the transmitted data (9th bit when
														the word length is set to 9 data bits; 8th bit when the
														word length is set to 8 data bits). */
	
	uint32_t UART_Status;                	/*!< Specifies wether the UART_Enable is enabled or disabled.
												This parameter can be a value of @ref UART_Enable */
	
	uint32_t UART_Br_Gen; 	               	/*!< Specifies wether the UART_BR_Gen is enabled or disabled.
												This parameter can be a value of @ref UART_Enable */	
	
	uint32_t UART_Mode;                		/*!< Specifies wether the Receive or Transmit mode is enabled or disabled.
												This parameter can be a value of @ref UART_Mode */

} UART_InitTypeDef;

/**
  * @}
  */ 

/** @defgroup UART_Parity 
  * @{
  */ 
  
#define UART_No_Parity                      ((uint32_t)0x1000)
#define UART_Odd_Parity                     ((uint32_t)0x00000) 
#define UART_Even_Parity                   	((uint32_t)0x10000)
/**
  * @}
  */ 

/** @defgroup UART_Status 
  * @{
  */ 
  
#define UART_Enable   	                    ((uint32_t)0x0200)
#define UART_Disable   	                 	((uint32_t)0x0000)
/**
  * @}
  */ 

/** @defgroup UART_BR_Gen
  * @{
  */ 
  
#define UART_Br_Enable   	                    ((uint32_t)0x0001)
#define UART_Br_Disable   	                 	((uint32_t)0x0000)
/**
  * @}
  */ 

/** @defgroup UART_Mode 
  * @{
  */ 
  
#define UART_Mode_Rx                        ((uint32_t)0x0100)
#define UART_Mode_Tx                        ((uint32_t)0x0010)
/**
  * @}
  */ 

/** @defgroup UART_Flags 
  * @{
  */

#define UART_FLAG_RX_OK                     ((uint32_t)0x0010)
#define UART_FLAG_TX_OK                     ((uint32_t)0x0001)
/**
  * @}
  */ 


/** @defgroup UART_Exported_Functions
  * @{
  */

void UART_Init(UART_TypeDef* UARTx, UART_InitTypeDef* UART_InitStruct);
void UART_StructInit(UART_InitTypeDef* UART_InitStruct);
void UART_Cmd(UART_TypeDef* UARTx, FunctionalState NewState);
FlagStatus UART_GetFlagStatus(UART_TypeDef* UARTx, uint32_t UART_FLAG);
void UART_SendData(UART_TypeDef* UARTx, uint8_t Data);
uint8_t USART_ReceiveData(UART_TypeDef* UARTx);