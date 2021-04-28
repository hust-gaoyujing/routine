
/** ux607_conf.h **/
#include "ux607_conf.h"	


/** 
  * @brief Universal Asynchronous Receiver Transmitter
  **/
  
typedef struct
{
  __IO uint32_t CSR;
  __IO uint32_t CR;
  __IO uint8_t DR;
} UART_TypeDef;



/** Core private peripherals map **/
#define TIMER_BASE 				((uint32_t)0x02000000)	/*!< TIMER base address in the alias region **/
#define ECLIC_BASE 				((uint32_t)0x0C000000)	/*!< ECLIC base address in the alias region **/
#define DEBUG_BASE 				((uint32_t)0x00000000)	/*!< DEBUG base address in the alias region **/

/** Memory resource map **/
#define ILM_BASE 				((uint32_t)0x80000000)	/*!< ILM base address in the alias region **/
#define DLM_BASE 				((uint32_t)0x90000000)	/*!< DLM base address in the alias region **/
//#define ROM_BASE 				((uint32_t)0x00001000)	/*!< ROM base address in the alias region **/

/*!< Peripheral memory map **/
#define PERIPH_BASE           	((uint32_t)0x10000000) 	/*!< Peripheral base address in the alias region **/

/** UART **/
#define UART_BASE				(PERIPH_BASE + 0x13000)


/**
  * @}
  **/
  
/** @addtogroup Peripheral_declaration
  * @{
  **/  

#ifdef _UART 
#define UART 	((UART_TypeDef *) UART_BASE)
#endif   /**_UART **/