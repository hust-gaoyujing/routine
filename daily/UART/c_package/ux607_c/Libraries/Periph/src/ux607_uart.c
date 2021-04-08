
#include "ux607.h"





/**
  * @brief  Initializes the UARTx peripheral according to the specified
  *         parameters in the USART_InitStruct .
  * @param  UARTx: Select the UART or the UART peripheral. 
  *   This parameter can be one of the following values:
  * @param  UART_InitStruct: pointer to a UART_InitTypeDef structure
  *         that contains the configuration information for the specified UART 
  *         peripheral.
  * @retval None
  */
void UART_Init(UART_TypeDef* UART, UART_InitTypeDef* UART_InitStruct)
{
	uint32_t tmpreg = 0x00, sysclock = 0x00;
	uint32_t integerdivider = 0x00;

/*---------------------------- UART CTRL Configuration -----------------------*/
	//tmpreg = UART->CTRL;
	tmpreg = (uint32_t)UART_InitStruct->UART_Enable | UART_InitStruct->UART_Mode |
				UART_InitStruct->UART_No_Parity | UART_InitStruct->UART_Parity_Type;
	/* Write to UART CR1 */
	UART->CR1 = tmpreg;

/*---------------------------- UART CSR Configuration -----------------------*/
    sysclock = FREQ_SYS;
	
	/* Determine the integer part */
    /* Integer part computing in case Oversampling mode is 16 Samples */
    integerdivider = (sysclock / (16 * (UART_InitStruct->UART_BaudRate))) - 1;    
	
	/* Write to UART CSR */
	UART->CSR = (uint32_t)integerdivider << 16;
}


/**
  * @brief  Fills each UART_InitStruct member with its default value.
  * @param  UART_InitStruct: pointer to a UART_InitTypeDef structure
  *         which will be initialized.
  * @retval None
  */
void UART_StructInit(UART_InitTypeDef* UART_InitStruct)
{
	/* UART_InitStruct members default value */
	UART_InitStruct->UART_Baudrate	= 115200;
	UART_InitStruct->UART_No_Parity	= UART_Has_Parity;
	UART_InitStruct->UART_Parity_Type	= UART_Parity_Even;
	UART_InitStruct->UART_Enable		= UART_Enable;
	UART_InitStruct->UART_Mode		= UART_Mode_Rx | UART_Mode_Tx;
}


