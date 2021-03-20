
`include "uart_define.v"


module uart_ctrl(
	input   						clk,
	input   						rst_n,

	input                      		i_icb_cmd_valid,
	output                     		i_icb_cmd_ready,
	input  	[`UX607_PA_SIZE-1:0]	i_icb_cmd_addr, 
	input                      		i_icb_cmd_read, 
	input  	[`UX607_PA_SIZE-1:0]	i_icb_cmd_wdata,
  
	output                    		i_icb_rsp_valid,
	input                      		i_icb_rsp_ready,
	output 	[`UX607_PA_SIZE-1:0]	i_icb_rsp_rdata,

	input 							tx_ok,
	input 							rx_ok,
	output 	[7:0]					data_reg_rd,
	output 	[7:0]					data_reg_wr,
	output	[31:0]					uart_csr_o,
	output	[31:0]					uart_ctrl_o,
	
	output  						io_interrupts_0_0,
	output  						rd_data_flag,
	output  						wr_data_flag
);
	
	//============================  REGISTERS OF UART  =================================//
	//registers of uart
	reg [31:0] 	uart_csr;		//csr register of uart
	reg [31:0] 	uart_ctrl;		//ctrl register of uart
	reg [7:0] 	data_reg;		//data register for uart 
 
	//============================  ICB_BUS OF UART  ==================================//
	//signals for interfaces simplify
	wire 		cmd_valid;
	wire 		cmd_ready;
	wire [`UX607_PA_SIZE-1:0]	cmd_addr;
	wire 		cmd_read;
	wire [`UX607_PA_SIZE-1:0]	cmd_wdata;
	
	reg 		rsp_valid;
	wire  		rsp_ready;
	reg  [`UX607_PA_SIZE-1:0]	rsp_rdata;
	
	//signals for handshake
	wire 		cmd_handshake_wr;	//handshake signal of write 
	wire 		cmd_handshake_rd;	//handshake signal of read 
	
	//interface connect for icb_bus
	assign cmd_valid = i_icb_cmd_valid;
	assign i_icb_cmd_ready = cmd_ready;
	assign cmd_addr = i_icb_cmd_addr;
	assign cmd_read = i_icb_cmd_read;
	assign cmd_wdata = i_icb_cmd_wdata;
	
	assign i_icb_rsp_valid = rsp_valid;
	assign rsp_ready = i_icb_rsp_ready;
	assign i_icb_rsp_rdata = rsp_rdata;
	
	//assginment for icb_bus 
	assign cmd_ready = (cmd_valid&&((cmd_addr == `DATA_REG_ADDR) || (cmd_addr == `UART_CSR_ADDR) || (cmd_addr == `UART_CTRL_ADDR))) ? 1'b1 : 1'b0;	
	assign cmd_handshake_rd = cmd_ready & cmd_read; 
	assign cmd_handshake_wr = cmd_ready & (!cmd_read);	

	
	//=========================== INTERRUPT OF UART =================================//
	assign io_interrupts_0_0 = 0;
	
	//=======================  DATA_OUT FOR REGISTERS  ==============================//
	assign data_reg_wr = data_reg;
	assign uart_csr_o = uart_csr;
	assign uart_ctrl_o = uart_ctrl;
	
	//========================= FLAG SIGNALS OF TX/RX ===============================//  	
	assign rd_data_flag = (cmd_handshake_rd && (cmd_addr == `DATA_REG_ADDR)) ? 1'b1 : 1'b0;					
	assign wr_data_flag = (cmd_handshake_wr && (cmd_addr == `DATA_REG_ADDR)) ? 1'b1 : 1'b0;					
	
	
	//====================== BUS SQUENTIAL CIRCUIT CONTROL ==========================//
	//assginment for rsp_valid
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			rsp_valid <= 1'b0;
		end 
		else if(cmd_read)  
			rsp_valid <= 1'b1;
		else if(cmd_ready == 1'b0) 
			rsp_valid <= 1'b0;

	//read registers of uart
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			rsp_rdata <= 32'h0;			
		end 
		else if(cmd_handshake_rd) begin 
			case(cmd_addr) 
				`DATA_REG_ADDR	: rsp_rdata <= data_reg_rd;
				`UART_CSR_ADDR 	: rsp_rdata <= {uart_csr[31:8],3'b0,rx_ok,3'b0,tx_ok};
				`UART_CTRL_ADDR : rsp_rdata <= uart_ctrl;
				default			: rsp_rdata <= 32'h0;
			endcase
		end 
		else if(cmd_read == 1'b0)
				rsp_rdata <= 32'b0;
	
	//write register of uart 
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			data_reg <= `DATA_REG_DFT;
			uart_csr  <= `UART_CSR_DFT;
			uart_ctrl <= `UART_CTRL_DFT;
		end 
		else if(cmd_handshake_wr) begin 
			case(cmd_addr) 
                `DATA_REG_ADDR	: data_reg <= cmd_wdata[7:0];	
                `UART_CSR_ADDR 	: uart_csr[31:8] <= cmd_wdata[31:8];
                `UART_CTRL_ADDR : uart_ctrl <= cmd_wdata;
				default			: begin 
				end 
			endcase
		end
		/////need or not?????
		else begin 
			data_reg <= data_reg;	
			uart_csr[31:8] <= uart_csr[31:8];
			uart_ctrl <= uart_ctrl;
		end

	
	////=======================  FLAG SIGNALS SEQUENCE CONTROL  =======================//
 	////assginment for rd_data_flag signals
	//always @(posedge clk or negedge rst_n) 
	//	if(!rst_n) begin 
	//		rd_dat_flag <= 1'b0;
	//	end 
	//	else if(cmd_handshake_rd && (cmd_addr == `DATA_REG_ADDR))
	//		rd_data_flag <= 1'b1;
	//	else 
	//		rd_data_flag <= 1'b0;
	//
	////assginment for rd_data_flag signals
	//always @(posedge clk or negedge rst_n) 
	//	if(!rst_n) begin 
	//		wr_data_flag <= 1'b0;
	//	end 
	//	else if(cmd_handshake_wr && (cmd_addr == `DATA_REG_ADDR))
	//		wr_data_flag <= 1'b1;
	//	else 
	//		wr_data_flag <= 1'b0;

endmodule			
			
			
	