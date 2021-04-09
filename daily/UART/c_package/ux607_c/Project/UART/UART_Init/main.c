
/** Includes the periph need------------------------------------------------- **/
#include "ux607_uart.c"

UART_InitTypeDef UART_InitStructure;

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{ 
	UART_StructInit(&UART_InitStructure);
	
	/** Configure UART **/
	UART_Init(UART, &UART_InitStructure);
	
	while (1)
	{
	}
}


