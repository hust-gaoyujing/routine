`include "uart_define.v"
`timescale 1ns/1ps


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
	reg		 						port_rxd;
	
	reg [7:0]	data_in[0:255];
	reg	[7:0]	data_out[0:255];
	reg [7:0]	error_num[0:255];
	reg [7:0]	error_data[0:255];
	reg	[7:0]	data_tmp;
	integer i = 0;
	integer j = 0;
	integer k = 0;

	//parity check
	reg even_parity;
	reg odd_parity;
	
	
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
	.io_port_rxd            (port_rxd           )
	);
	
	initial begin
		clk  <=1'b0;
		rst_n <=1'b0;
		#2000 rst_n <=1'b1;
		#2000 rst_n <=1'b0;
		#2000 rst_n <=1'b1;
	end

	initial begin 
		forever #31.25 clk <= ~clk;		//for 16Mhz
		//forever #3.47 clk <= ~clk;		//for 144Mhz
	end 
	
	//initial interface
	initial begin 
		port_rxd = 1'b1;
	end 
	
	initial begin 
		#4294967295
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
		$readmemh("data.hex", data_in);
	end 
	
	//VERIFICATION MAIN	
	initial begin

		case_1;
		//case_2;
		//case_3;
		//case_4;
		
	end 
	
	task monitor;
		begin 
			//MONITOR
			for(j = 0;j < 256;j = j+1) begin 
				if(data_out[j] != data_in[j]) begin 
					error_num[k] = j;
					error_data[k] = data_out[j];
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
					$display("ERROR NUM %3d : %h \n",error_num[i],error_data[i],);
				end 
			end 
		end 
	endtask 
	
	
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

	task case_1;		//TX of 115200bps
		begin 
			//check TX of 115200bps,even_parity
			//setting the UART_CSR and UART_CTRL 
			#10000;
			force port_rxd = port_txd;
			write_register(`UART_CSR_ADDR,32'h8_0201,0);  		//16Mhz	
			//write_register(`UART_CSR_ADDR,32'h4d_0001,0);			//144Mhz
			write_register(`UART_CTRL_ADDR,32'h10111,0);
			#10000;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
			end
			
			$display("%t ns\n TX OF 115200BPS: \nEVEN_PARITY",$time);
			monitor;
			#10000;
		
			//initial the data_out 
			for(i = 0;i < 256;i = i +1) begin 
				data_out[i] = 8'hff;
			end 
			j =0;
			
			////check TX of 115200bps，odd_parity
			////setting the UART_CSR and UART_CTRL 
			//write_register(`UART_CTRL_ADDR,32'h00111,0);
			//#10;
			//for(i = 0;i < 256;i = i +1) begin 
			//	write_register(`DATA_REG_ADDR,data_in[i],1);
			//	
			//	read_register(`UART_CSR_ADDR,1);
			//	while(rsp_rdata[4] == 1'b0) begin
			//		read_register(`UART_CSR_ADDR,1);
			//	end
			//	read_register(`DATA_REG_ADDR,1);
			//	data_out[i] = rsp_rdata;
			//	
			//	//ensure the tx_ok is low
			//	read_register(`UART_CSR_ADDR,1);
			//	while(rsp_rdata[4] == 1'b1) begin
			//		read_register(`UART_CSR_ADDR,1);
			//	end			
			//end
			//
			//$display("%t ns\n TX OF 115200BPS: \nODD_PARITY",$time);
			//monitor;
			//#10000;
			//
			////initial the data_out 
			//for(i = 0;i < 256;i = i +1) begin 
			//	data_out[i] = 8'hff;
			//end 
			//j = 0;
			//
			////check TX of 115200bps，no_parity
			////setting the UART_CSR and UART_CTRL 
			//write_register(`UART_CTRL_ADDR,32'h01111,0);
			//#10;
			//for(i = 0;i < 256;i = i +1) begin 
			//	write_register(`DATA_REG_ADDR,data_in[i],1);
			//	
			//	read_register(`UART_CSR_ADDR,1);
			//	while(rsp_rdata[4] == 1'b0) begin
			//		read_register(`UART_CSR_ADDR,1);
			//	end
			//	read_register(`DATA_REG_ADDR,1);
			//	data_out[i] = rsp_rdata;
			//	
			//	//ensure the tx_ok is low
			//	read_register(`UART_CSR_ADDR,1);
			//	while(rsp_rdata[4] == 1'b1) begin
			//		read_register(`UART_CSR_ADDR,1);
			//	end			
			//end		
			//
			//$display("%t ns\n TX OF 115200BPS: \nNO_PARITY",$time);
			//monitor;		
			
			#10000;
			$finish;

		

		end 
	endtask

task case_2;
	begin 
			//check TX of 9600bps,even_parity
			//setting the UART_CSR and UART_CTRL 
			#10000;
			force port_rxd = port_txd;
			//write_register(`UART_CSR_ADDR,32'h67_0101,0);			//16Mhz
			write_register(`UART_CSR_ADDR,32'h3a9_0001,0);			//144Mhz
			write_register(`UART_CTRL_ADDR,32'h10111,0);
			#10000;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
				
				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end			
			end
			
			$display("%t ns\n TX OF 9600BPS: \nEVEN_PARITY",$time);
			monitor;
			#10000;
		
			//initial the data_out 
			for(i = 0;i < 256;i = i +1) begin 
				data_out[i] = 8'hff;
			end 
			j =0;
			
			//check TX of 9600bps，odd_parity
			//setting the UART_CSR and UART_CTRL 
			write_register(`UART_CTRL_ADDR,32'h00111,0);
			#10;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
				
				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end			
			end

			$display("%t ns\n TX OF 9600BPS: \nODD_PARITY",$time);
			monitor;
			#10000;
			
			//initial the data_out 
			for(i = 0;i < 256;i = i +1) begin 
				data_out[i] = 8'hff;
			end 
			j = 0;
			
			//check TX of 9600bps，no_parity
			//setting the UART_CSR and UART_CTRL 
			write_register(`UART_CTRL_ADDR,32'h01111,0);
			#10;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
				
				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end			
			end		
			
			$display("%t ns\n TX OF 9600BPS: \nNO_PARITY",$time);
			monitor;		
			
			#10000;
			$finish;
	end 
endtask 

task case_3;
	begin 
			//check TX of 4800bps,even_parity
			//setting the UART_CSR and UART_CTRL 
			#10000;
			force port_rxd = port_txd;
			//write_register(`UART_CSR_ADDR,32'hcf_0101,0);				//16Mhz
			write_register(`UART_CSR_ADDR,32'h752_0001,0);				//144Mhz
			write_register(`UART_CTRL_ADDR,32'h10111,0);
			#10000;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
				
				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end			
			end
			
			$display("%t ns\n TX OF 4800BPS: \nEVEN_PARITY",$time);
			monitor;
			#10000;
		
			//initial the data_out 
			for(i = 0;i < 256;i = i +1) begin 
				data_out[i] = 8'hff;
			end 
			j =0;
			
			//check TX of 4800bps，odd_parity
			//setting the UART_CSR and UART_CTRL 
			write_register(`UART_CTRL_ADDR,32'h00111,0);
			#10;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
				
				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end			
			end

			$display("%t ns\n TX OF 4800BPS: \nODD_PARITY",$time);
			monitor;
			#100000;
			
			//initial the data_out 
			for(i = 0;i < 256;i = i +1) begin 
				data_out[i] = 8'hff;
			end 
			j = 0;
			
			//check TX of 4800bps，no_parity
			//setting the UART_CSR and UART_CTRL 
			write_register(`UART_CTRL_ADDR,32'h01111,0);
			#10;
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
				
				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[4] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end			
			end		
			
			$display("%t ns\n TX OF 4800BPS: \nNO_PARITY",$time);
			monitor;		
			
			#100000;
			$finish;
	end 
endtask 

task case_4;
	begin 
		////check RX of 115200bps  even_parity
		//accurate baudrate to check RX
		#10000;
		write_register(`UART_CSR_ADDR,32'h8_0001,0);  		//16Mhz	
		//write_register(`UART_CSR_ADDR,32'h4d_0201,0);			//144Mhz
		write_register(`UART_CTRL_ADDR,32'h10111,0);
		#10000;
		for(i = 0;i < 256;i = i + 1)begin 
			port_rxd <= 1'b0; 						//start_bit
			data_tmp = data_in[i];
			even_parity <= data_tmp[7] ^ data_tmp[6] ^ data_tmp[5] ^ data_tmp[4]
						^data_tmp[3] ^ data_tmp[2] ^ data_tmp[1] ^ data_tmp[0];	
			//$display("data_in[%d] = %x",j,data_in[j]);
			for(j = 0;j < 8;j = j + 1)begin 
				#8681	port_rxd = data_tmp[j];		//data
			end 
			#8681 	port_rxd <= even_parity;			//parity_bit
			#8681 	port_rxd <= 1'b1;				//stop_bit
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b0) begin
				read_register(`UART_CSR_ADDR,1);
			end
			read_register(`DATA_REG_ADDR,1);
			data_out[i] = rsp_rdata;
			
			//ensure the tx_ok is low
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b1) begin
				read_register(`UART_CSR_ADDR,1);
			end			
		end
		
		$display("RX OF 115200BPS: ");
		monitor;
		#10000;
	
		//initial the data_out 
		for(i = 0;i < 256;i = i +1) begin 
			data_out[i] = 8'hff;
		end 
		j =0;	
	
		////check RX of 115200bps  odd_parity
		//accurate baudrate to check RX
		write_register(`UART_CTRL_ADDR,32'h0111,0);
		#10;
		for(i = 0;i < 256;i = i + 1)begin 
			port_rxd <= 1'b0; 						//start_bit
			data_tmp = data_in[i];
			odd_parity <= ~(data_tmp[7] ^ data_tmp[6] ^ data_tmp[5] ^ data_tmp[4]
						^data_tmp[3] ^ data_tmp[2] ^ data_tmp[1] ^ data_tmp[0]);	
			//$display("data_in[%d] = %x",j,data_in[j]);
			for(j = 0;j < 8;j = j + 1)begin 
				#8681	port_rxd = data_tmp[j];		//data
			end 
			#8681 	port_rxd <= odd_parity;			//parity_bit
			#8681 	port_rxd <= 1'b1;				//stop_bit
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b0) begin
				read_register(`UART_CSR_ADDR,1);
			end
			read_register(`DATA_REG_ADDR,1);
			data_out[i] = rsp_rdata;
			
			//ensure the tx_ok is low
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b1) begin
				read_register(`UART_CSR_ADDR,1);
			end			
		end
		
		$display("RX OF 115200BPS: ");
		monitor;
		#100000;
	
		//initial the data_out 
		for(i = 0;i < 256;i = i +1) begin 
			data_out[i] = 8'hff;
		end 
		j =0;	
	
		////check RX of 115200bps  no_parity
		//accurate baudrate to check RX
		write_register(`UART_CTRL_ADDR,32'h1111,0);
		#10;
		for(i = 0;i < 256;i = i + 1)begin 
			port_rxd <= 1'b0; 						//start_bit
			data_tmp = data_in[i];
			for(j = 0;j < 8;j = j + 1)begin 
				#8681	port_rxd = data_tmp[j];		//data
			end 
			#8681 	port_rxd <= 1'b1;				//stop_bit
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b0) begin
				read_register(`UART_CSR_ADDR,1);
			end
			read_register(`DATA_REG_ADDR,1);
			data_out[i] = rsp_rdata;
			
			//ensure the tx_ok is low
			read_register(`UART_CSR_ADDR,1);
			while(rsp_rdata[4] == 1'b1) begin
				read_register(`UART_CSR_ADDR,1);
			end			
		end
		
		$display("RX OF 115200BPS: ");
		monitor;
	
		#100000;
		$finish;
	end 
endtask


endmodule