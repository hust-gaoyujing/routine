`define UART_BASE_ADDR	32'h1000_6000
`define UART_CSR_ADDR	`UART_BASE_ADDR+32'h0
`define UART_CTRL_ADDR	`UART_BASE_ADDR+32'h4
`define DATA_REG_ADDR	`UART_BASE_ADDR+32'h8	
//`define DATA_TX_ADDR	UART_BASE_ADDR+32'h8	
//`define DATA_RX_ADDR	UART_BASE_ADDR+32'hC	
`define TX_OK_DEF		1'b0
`define RX_OK_DEF		1'b0
`define UART_CSR_DEF	32'h9_2001
`define UART_CTRL_DEF	32'h111
`define DATA_REG_DEF		32'hFF	
//`define DATA_TX_DEF		32'hFF	
//`define DATA_RX_DEF		32'hFF

`define RD_WR_EN_CHECK
`define SAMPLE			4'h7


`define UX607_PA_SIZE	32	