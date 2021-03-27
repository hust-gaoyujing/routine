
`include "uart_define.v"


module gjy_uart_top(
	input   						clk,
	input   						rst_n,

	input                      		i_icb_cmd_valid,
	output                     		i_icb_cmd_ready,
	input  	[`UX607_PA_SIZE-1:0]    i_icb_cmd_addr, 
	input                      		i_icb_cmd_read, 
	input  	[`UX607_PA_SIZE-1:0]    i_icb_cmd_wdata,
  
	output                     		i_icb_rsp_valid,
	input                      		i_icb_rsp_ready,
	output 	[`UX607_PA_SIZE-1:0] 	i_icb_rsp_rdata,

	output  						io_interrupts_0_0,                
	output  						io_port_txd,
	input   						io_port_rxd
);
	
	//============================  SIGNAL OF UART REG ===============================//
	wire [31:0]		uart_csr; 
	wire [31:0]		uart_ctrl; 
	
	//signals for data to TX after writing data_reg
	wire [7:0]		data_reg_wr;	
	wire [7:0] 		data_reg_rd;
		
	//signals of uart_csr register	
	wire 			tx_ok;			//uart_csr[0] but just for R 
	wire 			rx_ok;			//uart_csr[4] but just for R
	wire [15:0]		divisor = uart_csr[31:16];
	
	//signals of uart_ctrl register	
	wire 			baud_en = uart_ctrl[0];			//enable signal for baudrate_generator
	wire 			tx_en = uart_ctrl[4];			//enable signal for uart_tx
	wire 			rx_en = uart_ctrl[8];			//enable signal for uart_rx 
	wire 			uart_clk_en = uart_ctrl[9];		//enable signal for uart
	wire 			no_parity = uart_ctrl[12];  	//1 for no parity,0 for having parity 
	wire 			ev_parity = uart_ctrl[16];  	//1 for even parity,0 for odd parity 
	wire 			parity_error;	   				//parity_error just for R
	
	//========================= FLAG SIGNALS OF TX/RX ===============================//
	//signal for start of TX  	
	wire 			wr_data_flag;			//flag signal for data_tx registers write 
	wire 			rd_data_flag;			//flag signal for data_tx registers read 
	
	
	//========================= BAUD AND SAMPLE CLOCK ===============================//
	//baudrate clock signals
	wire 			tx_data_sample;
	wire 			rx_data_sample;
	
	//=============================== CLOCK   =======================================//
    wire uart_gate_clk;
	
	//========================= CONNECTION OF MODULE ================================//	
	uart_clk 			uart_clk(
	.clk            		(clk				),
    .rst_n          		(rst_n				),
    .uart_clk_en    		(uart_clk_en		),
    .uart_gate_clk  		(uart_gate_clk		)
	);

	uart_ctrl			ctrl(
		.clk				(clk				),		
		.rst_n              (rst_n              ),
							 					
		.i_icb_cmd_valid    (i_icb_cmd_valid    ),
		.i_icb_cmd_ready    (i_icb_cmd_ready    ),
		.i_icb_cmd_addr     (i_icb_cmd_addr     ),
		.i_icb_cmd_read     (i_icb_cmd_read     ),
		.i_icb_cmd_wdata    (i_icb_cmd_wdata    ),
		                                      
		.i_icb_rsp_valid    (i_icb_rsp_valid    ),
		.i_icb_rsp_ready    (i_icb_rsp_ready    ),
		.i_icb_rsp_rdata    (i_icb_rsp_rdata    ),
							 					
		.tx_ok				(tx_ok				),
		.rx_ok	            (rx_ok				),
		.parity_error		(parity_error		),
		.data_reg_rd        (data_reg_rd        ),
		.data_reg_wr		(data_reg_wr		),
		.uart_csr_o			(uart_csr			),
		.uart_ctrl_o        (uart_ctrl			),
		
		.io_interrupts_0_0  (io_interrupts_0_0  ), 
		.rd_data_flag       (rd_data_flag       ),
		.wr_data_flag       (wr_data_flag       )
	);	
	
	baudrate_generator baud_gen( 
		.clk				(uart_gate_clk		),		
		.rst_n              (rst_n				),	
		.baud_en            (baud_en			),		
		.divisor            (divisor			),		
		
		.tx_data_sample     (tx_data_sample		),		
		.rx_data_sample     (rx_data_sample		)		
	);		
	
	uart_tx txd(
		.clk				(uart_gate_clk		),
		.tx_data_sample		(tx_data_sample		),
		.rst_n              (rst_n              ),
		.tx_en              (tx_en              ),
		.no_parity			(no_parity			),
		.ev_parity			(ev_parity			),
		.tx_start           (wr_data_flag       ),
		.txd_in	        	(data_reg_wr        ),
												
		.tx_ok              (tx_ok              ),
		.txd	            (io_port_txd        )
	);
	
	uart_rx rxd(
		.clk				(uart_gate_clk		),
		.rx_data_sample		(rx_data_sample	    ),
	    .rst_n              (rst_n              ),
		.rx_en              (rx_en              ),
		.no_parity			(no_parity			),
		.ev_parity			(ev_parity			),
	    .rd_data_flag       (rd_data_flag       ),
		.rxd                (io_port_rxd        ),
												
		.rx_ok				(rx_ok              ),
	    .rxd_out            (data_reg_rd		),
		.parity_error		(parity_error		)
	);  

endmodule			
			
			
	