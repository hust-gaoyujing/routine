
`include "uart_define.v"


module gjy_uart_top(
	input   clk,
	input   rst_n,

	input                      i_icb_cmd_valid,
	output                     i_icb_cmd_ready,
	input  [`UX607_PA_SIZE-1:0]            i_icb_cmd_addr, 
	input                      i_icb_cmd_read, 
	input  [31:0]    	       i_icb_cmd_wdata,
  
	output                     i_icb_rsp_valid,
	input                      i_icb_rsp_ready,
	output [31:0] 	           i_icb_rsp_rdata,

	output  io_interrupts_0_0,                
	output  io_port_txd,
	input   io_port_rxd
);
	
	//registers of uart
	reg [31:0] 	uart_csr;		//csr register of uart
	reg [31:0] 	uart_ctrl;		//ctrl register of uart
	reg [7:0] 	data_reg;		//data register for uart 
	//reg [7:0] 	data_tx;		//data register for uart tx
	//reg [7:0] 	data_rx;		//data registers for uart rx

 
	//signals of uart_csr register	
	wire 		tx_ok;			//uart_csr[0] but just for R 
	wire 		rx_ok;			//uart_csr[4] but just for R
	//wire [1:0]	baudrate = uart_csr[9:8];	//2'b00 for 4800bps,2'b01 for 9600bps, 2'b10 for 115200bps,others for reserved
	wire [15:0]	divisor = uart_csr[31:16];
	
	//signals of uart_ctrl register	
	wire 		baud_en = uart_ctrl[0];		//enable signal for baudrate_generator
	wire 		tx_en = uart_ctrl[4];		//enable signal for uart_tx
	wire 		rx_en = uart_ctrl[8];		//enable signal for uart_rx 
	wire 		n_parity = uart_ctrl[12];   //1 for no parity,0 for having parity 
	wire 		ev_parity = uart_ctrl[16];   //1 for even parity,0 for odd parity 
 
	//signals for interfaces simplify
	wire 		cmd_valid = i_icb_cmd_valid;
	wire 		cmd_ready;
	wire [`UX607_PA_SIZE-1:0]	cmd_addr = i_icb_cmd_addr;
	wire 		cmd_read = i_icb_cmd_read;
	wire [31:0]	cmd_wdata = i_icb_cmd_wdata;
	
	reg 		rsp_valid;
	wire  		rsp_ready;
	reg  [31:0]	rsp_rdata;
	
	//declare to  	
	reg rd_rx_flag;					//flag signal for data_rx registers read
	reg wr_tx_flag;					//flag signal for data_tx registers write 
	
	wire [7:0] 	data_reg_w;
	
	//clock signals
	wire baud_clk;
	wire sample_clk;
 
	//assginment of io_interrupts_0_0,TODO
	assign io_interrupts_0_0 = 0;
	
	assign i_icb_cmd_ready = cmd_ready;
	assign cmd_ready = 	(~cmd_valid) ? 1'b0 :
						((cmd_addr == `DATA_REG_ADDR) || (cmd_addr == `UART_CSR_ADDR) || (cmd_addr == `UART_CTRL_ADDR)) ? 1'b1 : 1'b0;	
					   //(cmd_addr == `DATA_TX_ADDR) ? (tx_ok ? 1'b1 : 1'b0) :
					   //(cmd_addr == `DATA_RX_ADDR) ? (rx_ok ? 1'b1 ：1'b0) : 
					   //(cmd_addr == `UART_CSR_ADDR) ? ((tx_ok && rx_ok) ? 1'b1 : 1'b0) :
					   //(cmd_addr == `UART_CTRL_ADDR) ? ((tx_ok && rx_ok) ? 1'b1 : 1'b0) : 1'b0; 
	
	assign i_icb_rsp_valid = rsp_valid;
	assign rsp_ready = i_icb_rsp_ready;
	assign i_icb_rsp_rdata = rsp_rdata;
	
	
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			uart_csr[0] = `TX_OK_DEF;
			uart_csr[4]	= `RX_OK_DEF;
		end 
		else begin  
			uart_csr[0] = tx_ok;			
			uart_csr[4]	= rx_ok;		
		end
	
	//read or write registers of uart
	//assginment for rep_valid
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			rsp_valid <= 1'b0;
			rsp_rdata <= 32'h0;			
			data_reg <= `DATA_REG_DEF;
			//data_tx <= `DATA_TX_DEF;
			//data_rx <= `DATA_RX_DEF;
			uart_csr  <= `UART_CSR_DEF;
			uart_ctrl <= `UART_CTRL_DEF;
		end 
		else begin 
			if(cmd_valid && cmd_ready) begin 
				if(cmd_read) begin 
					rsp_valid <= 1'b1;
					case(cmd_addr) 
						//`DATA_TX_ADDR	: rsp_rdata <= data_tx;
						//`DATA_RX_ADDR	: rsp_rdata <= data_rx;
						`DATA_REG_ADDR	: rsp_rdata <= {24'hffff_ff,data_reg_w};
						`UART_CSR_ADDR 	: rsp_rdata <= uart_csr;
						`UART_CTRL_ADDR : rsp_rdata <= uart_ctrl;
						default			: rsp_rdata <= 32'hffff_ffff;
					endcase
				end 
				else begin 
					rsp_valid <= 1'b1;
					case(cmd_addr) 
						//`DATA_TX_ADDR	: data_tx <= cmd_wdata;
                        //`DATA_RX_ADDR	: data_rx <= cmd_wdata;	
                        `DATA_REG_ADDR	: data_reg <= cmd_wdata[7:0];	
                        `UART_CSR_ADDR 	: uart_csr[31:8] <= cmd_wdata[31:8];
                        `UART_CTRL_ADDR : uart_ctrl <= cmd_wdata;
						default			: begin 
						end 
					endcase
				end 
			end 
			else begin 
				rsp_valid <= 1'b0;
				rsp_rdata <= 32'b0;
			end 
		end 

	//assginment for flag signals
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			//tx_ok <= `TX_OK_DEF;
			//rx_ok <= `RX_OK_DEF;
			rd_rx_flag <= 1'b0;
			wr_tx_flag <= 1'b0;
		end 
		else begin 
			if(cmd_valid && cmd_ready && cmd_read) begin 
				if(cmd_addr == `DATA_REG_ADDR) begin 
					rd_rx_flag <= 1'b1;
					wr_tx_flag <= 1'b0;
					//rx_ok <= 1'b0;
				end 
				else begin 
					rd_rx_flag <= 1'b0;
					wr_tx_flag <= 1'b0;
				end
			end 
			else if(cmd_valid && cmd_ready && !cmd_read) begin	
				if(cmd_addr == `DATA_REG_ADDR) begin 	
					rd_rx_flag <= 1'b0;
					wr_tx_flag <= 1'b1;
					//tx_ok <= 1'b0;
				end 
				else begin 
					rd_rx_flag <= 1'b0;
					wr_tx_flag <= 1'b0;					
				end
			end 
			else begin 
					rd_rx_flag <= 1'b0;
					wr_tx_flag <= 1'b0;
			end 
		end 
			
		
	baudrate_generator baud_gen( 
		.clk				(clk				),		
		.rst_n              (rst_n				),	
		.baud_en            (baud_en			),		
		//.baudrate			(baudrate			),
		.divisor            (divisor			),		
		
		.baud_clk           (baud_clk			),		
		.sample_clk         (sample_clk			)		
	);		
	
	uart_tx txd(
		.baud_clk			(baud_clk			),
		.rst_n              (rst_n              ),
		.tx_en              (tx_en              ),
		.n_parity			(n_parity			),
		.ev_parity			(ev_parity			),
		.tx_start           (wr_tx_flag         ),
		.txd_in	        	(data_reg           ),
												
		.tx_ok              (tx_ok              ),
		.TXD	            (io_port_txd        )
	);
	
	uart_rx rxd(
		.sample_clk			(sample_clk		    ),
	    .rst_n              (rst_n              ),
		.rx_en              (rx_en              ),
		.n_parity			(n_parity			),
		.ev_parity			(ev_parity			),
		//.rd_flag			(rd_rx_flag			),
	    .RXD                (io_port_rxd        ),
												
		.rx_ok				(rx_ok              ),
	    .rxd_out            (data_reg_w			),
		.parity_error		(					)
	);  

endmodule			
			
			
	