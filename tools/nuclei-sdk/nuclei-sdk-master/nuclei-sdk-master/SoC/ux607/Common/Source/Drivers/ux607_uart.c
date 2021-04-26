

#include "ux607_uart.h"
//export void UART_Init(UART_TypeDef* UARTx, UART_InitTypeDef* UART_InitStruct);
//export void UART_StructInit(UART_InitTypeDef* UART_InitStruct);

/**
  * @brief  Fills each UART_InitStruct member with its default value.
  * @param  UART_InitStruct: pointer to a UART_InitTypeDef structure
  *         which will be initialized.
  * @retval None
  **/
void UART_StructInit(UART_InitTypeDef* UART_InitStruct)
{
	/** UART_InitStruct members default value **/
	UART_InitStruct->UART_BaudRate		= 115200;
	UART_InitStruct->UART_Parity		= UART_Even_Parity;
	UART_InitStruct->UART_Status		= UART_Enable;
	UART_InitStruct->UART_Br_Gen		= UART_Br_Enable;
	UART_InitStruct->UART_Mode			= UART_Mode_Rx | UART_Mode_Tx;
}


/**
  * @brief  Initializes the UARTx peripheral according to the specified
  *         parameters in the USART_InitStruct .
  * @param  UARTx: Select the UART or the UART peripheral. 
  *   This parameter can be one of the following values:
  * @param  UART_InitStruct: pointer to a UART_InitTypeDef structure
  *         that contains the configuration information for the specified UART 
  *         peripheral.
  * @retval None
  **/
void UART_Init(UART_TypeDef* UARTx, UART_InitTypeDef* UART_InitStruct)
{
	uint32_t tmpreg = 0x00, sysclock = 0x00;
	uint32_t integerdivider = 0x00;

/**---------------------------- UART CR Configuration -----------------------**/
	/**tmpreg = UART->CR; **/
	tmpreg = (uint32_t)UART_InitStruct->UART_Status | UART_InitStruct->UART_Br_Gen 
				| UART_InitStruct->UART_Mode | UART_InitStruct->UART_Parity;
	/** Write to UART CR **/
	UARTx->CR = tmpreg;

/**---------------------------- UART CSR Configuration -----------------------**/
    sysclock = FREQ_SYS;
	
	/** Determine the integer part **/
    /** Integer part computing in case Oversampling mode is 16 Samples **/
    integerdivider = ((sysclock / (16 * (UART_InitStruct->UART_BaudRate))) - 0.5);
	//if(sysclock == 16) 							//16M
	//	integerdivider = 0x8;
	//else if(sysclock == 144)					//144M
	//	integerdivider = 0x4d;
		
	/** Write to UART CSR **/
	UARTx->CSR = (uint32_t)integerdivider << 16;
}



/**
  * @brief  Enables or disables the specified UART peripheral.
  * @param  UART: Select the UART peripheral. 
  * @param  NewState: new state of the UART peripheral.
  *         This parameter can be: ENABLE or DISABLE.
  * @retval None
  **/
void UART_Cmd(UART_TypeDef* UARTx, FunctionalState NewState)
{
  if (NewState != DISABLE)
  {
    /** Enable the selected UARTx by setting the UE bit in the CR register **/
    UARTx->CR |= UART_Enable;
  }
  else
  {
    /** Disable the selected UART by clearing the UE bit in the CR register **/
    UARTx->CR &= UART_Disable;
  }
}


/**
  * @brief  Checks whether the specified UART flag is set or not.
  * @param  UART: Select the UART peripheral. 
  * @param  UART_FLAG: specifies the flag to check.
  *   This parameter can be one of the following values:
  *     @arg USART_FLAG_RX_OK: 	Receive data is ok
  *     @arg USART_FLAG_TX_OK:  Transmit data is ok
  * @retval The new state of USART_FLAG (SET or RESET).
  **/
FlagStatus UART_GetFlagStatus(UART_TypeDef* UARTx, uint32_t UART_FLAG)
{
  FlagStatus bitstatus = RESET;

  if ((UARTx->CSR & UART_FLAG) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
}


/**
  * @brief  Transmits single data through the UART peripheral.
  * @param  UART: Select the UART peripheral. 
  * @param  Data: the data to transmit.
  * @retval None
  **/
void UART_SendData(UART_TypeDef* UARTx, uint8_t Data)
{
  /** Transmit Data **/
  UARTx->DR = Data ;
}


/**
  * @brief  Returns the most recent received data by the UART peripheral.
  * @param  UARTx: Select the UART peripheral. 
  * @retval The received data.
  **/
uint8_t UART_ReceiveData(UART_TypeDef* UARTx)
{
  /** Receive Data **/
  return (uint8_t)(UARTx->DR);
}










