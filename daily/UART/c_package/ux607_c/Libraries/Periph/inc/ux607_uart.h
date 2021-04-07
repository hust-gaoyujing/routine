
#include "ux607.h"


/** 
  * @brief  USART Init Structure definition  
  */ 
  
typedef struct
{
	uint32_t UART_Divisor;           		 /*!< This member configures the UART communication baud rate.
												The baud rate is computed using the following formula:
													- IntegerDivider = ((PCLKx) / (16 * (UART_InitStruct->UART_BaudRate)))
													- FractionalDivider = ((IntegerDivider - ((u32) IntegerDivider)) * 16) + 0.5 */

	uint32_t UART_No_Parity;              	/*!< Specifies the parity mode.
												This parameter can be a value of @ref UART_No_Parity
												@note When no_parity is enabled, the computed parity is not inserted
														at the MSB position of the transmitted data (9th bit when
														the word length is set to 9 data bits; 8th bit when the
														word length is set to 8 data bits). */
 
	uint32_t UART_Parity_Type;              /*!< Specifies the parity type.
												This parameter can be a value of @ref UART_Parity_Type
												@note When parity_type is enabled ,the even parity is inserted 
													else the odd parite is inserted*/
	
	uint32_t UART_Enable;                	/*!< Specifies wether the UART_Enable is enabled or disabled.
												This parameter can be a value of @ref UART_Enable */
	
	
	uint32_t UART_Mode;                		/*!< Specifies wether the Receive or Transmit mode is enabled or disabled.
												This parameter can be a value of @ref UART_Mode */

} UART_InitTypeDef;

/**
  * @}
  */ 

/** @defgroup USART_No_Parity 
  * @{
  */ 
  
#define USART_Parity_No                      ((uint32_t)0x1000)
/**
  * @}
  */ 

/** @defgroup USART_Parity_Type 
  * @{
  */ 
  
#define USART_Parity_Odd                     ((uint32_t)0x00000) 
#define USART_Parity_Even                    ((uint32_t)0x10000)
/**
  * @}
  */ 

/** @defgroup USART_Enable 
  * @{
  */ 
  
#define USART_Enable   	                     ((uint32_t)0x0200)
#define USART_Disable   	                 ((uint32_t)0x0000)
/**
  * @}
  */ 

/** @defgroup USART_Mode 
  * @{
  */ 
  
#define USART_Mode_Rx                        ((uint32_t)0x0100)
#define USART_Mode_Tx                        ((uint32_t)0x0010)
/**
  * @}
  */ 

/** @defgroup USART_Flags 
  * @{
  */

#define USART_FLAG_RX_OK                     ((uint32_t)0x0010)
#define USART_FLAG_TX_OK                     ((uint32_t)0x0001)
/**
  * @}
  */ 


/** @defgroup USART_Exported_Functions
  * @{
  */

void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
