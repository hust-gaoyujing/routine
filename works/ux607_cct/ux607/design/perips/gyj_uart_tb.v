`include "uart_define.v"

module uart_tb();
	reg   							clk;
	reg   							rst_n;
	
	reg                      		cmd_valid;
	wire                     		cmd_ready;
	reg  [32-1:0]	    			cmd_addr; 
	reg                      		cmd_read; 
	reg  [31:0]            			cmd_wdata;
		
	wire                     		rsp_valid;
	reg                      		rsp_ready;
	wire [31:0]            			rsp_rdata;
	
	wire  							interrupts_0_0;                
	wire  							port_txd;
	wire		   					port_rxd;
	
	reg [7:0]	data_tx[0:255];
	reg	[7:0]	data_rx[0:255];
	reg [7:0]	error_cnt[0:256];
	integer i = 0;
	integer j = 0;
	integer k = 0;

	gjy_uart_top	uart_1(
	.clk					(clk				),
	.rst_n                  (rst_n              ),
												
	.i_icb_cmd_valid        (cmd_valid          ),
	.i_icb_cmd_ready        (cmd_ready          ),
	.i_icb_cmd_addr         (cmd_addr           ),
	.i_icb_cmd_read         (cmd_read           ),
	.i_icb_cmd_wdata        (cmd_wdata          ),
												
	.i_icb_rsp_valid        (rsp_valid          ),
	.i_icb_rsp_ready        (rsp_ready          ),
	.i_icb_rsp_rdata        (rsp_rdata          ),
												
	.io_interrupts_0_0      (interrupts_0_0     ),     
	.io_port_txd            (port_txd           ),
	.io_port_rxd            (port_txd           )
	);
	
	initial begin
		clk  <=1'b0;
		rst_n <=1'b0;
		#2000 rst_n <=1'b1;
		#2000 rst_n <=1'b0;
		#2000 rst_n <=1'b1;
	end

	initial begin 
		forever #31 clk <= ~clk;
	end 
	
	initial begin 
		#40000000 
		$display("Time Out !!!");
		$finish;
	end 
	
	//rsp_ready
	always @(posedge clk or negedge rst_n)
		if(rst_n) 
			rsp_ready <= 1'b0;
		else begin 
			if(rsp_valid)
					rsp_ready <= 1'b1;
				else 
					rsp_ready <= 1'b0;
		end 
	
	//LOAD DATA TO DATA_TX
	initial begin 
		$readmemh("data.hex", data_tx);
	end 
	
	//VERIFICATION MAIN	
	initial begin
		#10000;
		write_register(`UART_CSR_ADDR,32'h4_0201,0);
		write_register(`UART_CTRL_ADDR,32'h0111,0);
		
		for(i = 0;i < 256;i = i +1) begin 
			write_register(`DATA_REG_ADDR,data_tx[i],1);
			
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b0) begin
				read_register(`UART_CSR_ADDR,1);
			end
			read_register(`DATA_REG_ADDR,1);
			data_rx[i] = rsp_rdata;
			
			//ensure the tx_ok is low
 			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b1) begin
				read_register(`UART_CSR_ADDR,1);
			end			
			
		end
		
		//MONITOR
		for(j = 0;j < 256;j = j+1) begin 
			if(data_rx[j] != data_rx[j]) begin 
				error_cnt[k] <= j;
				k = k + 1;
			end 
		end 
		
		//DISPLAY
		if(k == 0) begin 
			$display("===============================");
			$display("=============SUCCEED===========");
			$display("===============================");
		end 
		else begin 
			$display("===============================");
			$display("=============FAILED============");
			$display("===============================");	
			for(i = 0;i <= k;i = i+1) begin 	
				$display("ERROR NUM %3d : %h",i,error_cnt[i]);
			end 
		end 
		
		
	end 
	
	task read_register;
		input  	[`UX607_PA_SIZE-1:0]	    addr;
		input 								over;
		
		begin
	//cmd
			@(posedge clk); 
			begin 
				cmd_valid 	<= 1;
				cmd_addr	<= addr;
				cmd_read 	<= 1;
				cmd_wdata	<= 32'h0;
			end
	//judge whether operate continuously		 	
			if(over) begin 
				@(posedge clk); 
				begin 
					cmd_valid 	<= 0;
					cmd_addr	<= 0;
					cmd_read 	<= 0;
					cmd_wdata	<= 32'h0;
				end
			end 
			else begin  
			
			end
			#1;
		end 
	endtask

	task write_register;
		input  	[`UX607_PA_SIZE-1:0]	    addr; 
		input  	[31:0]            			wdata;
		input 								over;
		
		begin
	//cmd
			@(posedge clk); 
			begin 
				cmd_valid 	<= 1;
				cmd_addr	<= addr;
				cmd_read 	<= 0;
				cmd_wdata	<= wdata;
			end
	//judge whether operate continuously		 	
			if(over) begin 
				@(posedge clk);
				begin 
					cmd_valid 	<= 0;
					cmd_addr	<= 32'h0;
					cmd_read 	<= 0;
					cmd_wdata	<= 32'h0;
				end
			end 
			else begin  
			
			end 	
			#1;
		end 
	endtask



endmodule