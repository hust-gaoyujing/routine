
/** Includes the periph need------------------------------------------------- **/
#include "ux607_uart.h"



/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{ 
	TEST_START;
	UART_InitTypeDef UART_InitStructure;
	UART_StructInit(&UART_InitStructure);
	//
	///** Configure UART **/
	UART_Init(UART, &UART_InitStructure);
	
	TEST_PASS;
	
}


