`include "uart_define.v"
`timescale 1ns/1ps


module uart_tb();

  	reg         clK;
  	reg         rst;
  	wire        arready;
  	reg         arvalid;
  	reg  [31:0] araddr;
  	reg  [2:0]  arprot;
  	reg         rready;
  	wire        rvalid;
  	wire [31:0] rdata;
  	wire [1:0]  rresp;
  	wire        awready;
  	reg         awvalid;
  	reg  [31:0] awaddr;
  	reg  [2:0]  awprot;
  	wire        wready;
  	reg         wvalid;
  	reg  [31:0] wdata;
  	reg  [3:0]  wstrb;
  	reg         bready;
  	wire        bvalid;
  	wire [1:0]  bbits_resp;
  	reg         port_rxd;
  	wire        port_txd;
	
	reg [7:0]	data_in[0:255];
	reg	[7:0]	data_out[0:255];
	reg [7:0]	error_num[0:255];
	reg [7:0]	error_data[0:255];
	reg [7:0]	data_tmp;
	integer i = 0;
	integer j = 0;
	integer k = 0;
	integer t = 0;

	//parity check
	reg even_parity;
	reg odd_parity;
	
	//VARIABLE
	reg [8*300:1] 	FREQUENCE;
	reg [8*300:1] 	TEST_TYPE;
	reg [2:0] 		CLK_EN;
	reg [3:0] 		PARITY_EN;
	reg [3:0] 		PARITY_EVEN;
	reg [8*300:1] 	BAUDRATE;

	Axi4LiteUartTop uart_1(
	  	.clock							(clk				),
	  	.reset							(rst				),
	  	.io_axi_readAddr_ready			(arready			),
	  	.io_axi_readAddr_valid			(arvalid			),
	  	.io_axi_readAddr_bits_addr		(ardata				),
	  	.io_axi_readAddr_bits_prot		(arprot 			),
	  	.io_axi_readData_ready			(rready 			),
	  	.io_axi_readData_valid			(rvalid 			),
	  	.io_axi_readData_bits_data		(rdata				),
	  	.axi_readData_bits_resp			(rresp  			),
	  	.io_axi_writeAddr_ready			(awready 			),
	  	.io_axi_writeAddr_valid			(awvalid			),
	  	.io_axi_writeAddr_bits_addr		(awaddr 			),
	  	.io_axi_writeAddr_bits_prot		(awprot				),
	  	.io_axi_writeData_ready			(wready 			),		
	  	.io_axi_writeData_valid			(wvalid 			),		
	  	.io_axi_writeData_bits_data		(wdata 	     		),
	  	.io_axi_writeData_bits_strb		(wstrb  			),
	  	.io_axi_writeResp_ready			(bready 			),		
	  	.io_axi_writeResp_valid			(bvalid 			),		
	  	.io_axi_writeResp_bits_resp		(bresp	     		),
	  	.io_rxd							(port_rxd  			),
	  	.io_txd							(port_txd           )
	);


	initial begin
		clk  <=1'b0;
		rst <=1'b1;
		#2000 rst <=1'b0;
		#2000 rst <=1'b1;
		#2000 rst <=1'b0;
	end

	initial begin 
		if($value$plusargs("FREQUENCE=%s",FREQUENCE))
			$display("FREQUENCE=%0s",FREQUENCE);
		
		if($value$plusargs("TEST_TYPE=%0s",TEST_TYPE))
			$display("TEST_TYPE=%0s",TEST_TYPE);
		
		if($value$plusargs("CLk_EN=%h",UART_EN))
			$display("UART_EN=%h",UART_EN);
				
		if($value$plusargs("PARITY_EN=%h",PARITY_EN))
			$display("PARITY_EN=%h",PARITY_EN);
			
		if($value$plusargs("PARITY_EVEN=%h",PARITY_EVEN))
			$display("PARITY_EVEN=%h",PARITY_EVEN);
		
		if($value$plusargs("BAUDRATE=%0s",BAUDRATE))
			$display("BAUDRATE=%0s",BAUDRATE);
					
		
		if(FREQUENCE == "16M")  
			forever #31.25 clk <= ~clk;		//for 16Mhz
		else if(FREQUENCE == "144M")  
			forever #3.47 clk <= ~clk;		//for 144Mhz
		
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
	
	//rready and bready(assign 1'b1 all the time)
	rready = 1'b1;
	bready = 1'b1;
	
	//LOAD DATA TO DATA_TX
	initial begin 
		$readmemh("data.hex", data_in);
	end 
	
	//VERIFICATION MAIN	
	initial begin
		reg_setting;
		if(TEST_TYPE == "TX") begin 
			force port_rxd = port_txd;
			data_tx;
		end 
		else if(TEST_TYPE == "RX")
			data_rx;

		#10000;
		$finish;
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
		input  	[31:0]	    addr;
		input 				over;
		
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
		input  	[31:0]	    addr; 
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

	task reg_setting;
		begin 
			//check TX of 115200bps,even_parity
			//setting the UART_CSR and UART_CTRL 
			#10000;
			//16Mhz	
			if(FREQUENCE == "16M") begin 
				if(BAUDRATE == "115200bps") begin 
					write_register(`UART_CSR_ADDR,32'h8_0000,1);  		
				end 
				else if(BAUDRATE == "9600bps") begin 
					write_register(`UART_CSR_ADDR,32'h67_0000,1);  		
				end                                                     
				else if(BAUDRATE == "4800bps") begin                    
					write_register(`UART_CSR_ADDR,32'hcf_0000,1);  		
				end
			end
			//144Mhz
			else if(FREQUENCE == "144M") begin 
				if(BAUDRATE == "115200bps") begin 
					write_register(`UART_CSR_ADDR,32'h4d_0000,1);  		
				end 
				else if(BAUDRATE == "9600bps") begin 
					write_register(`UART_CSR_ADDR,32'h3a9_0000,1);  		
				end                                                     
				else if(BAUDRATE == "4800bps") begin                    
					write_register(`UART_CSR_ADDR,32'h752_0000,1);  		
				end
			end			
			//UART_CTRL	
			write_register(`UART_CTRL_ADDR,{PARITY_EVEN,PARITY_EN,UART_EN,RX_EN,TX_EN,BAUD_EN},1);
			#10000;
		end 
	endtask
	
	task data_tx;
		begin 
			for(i = 0;i < 256;i = i +1) begin 
				write_register(`DATA_REG_ADDR,data_in[i],1);
				
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[0] == 1'b0) begin
					read_register(`UART_CSR_ADDR,1);
				end

				//ensure the tx_ok is low
				read_register(`UART_CSR_ADDR,1);
				while(rsp_rdata[0] == 1'b1) begin
					read_register(`UART_CSR_ADDR,1);
				end	
				read_register(`DATA_REG_ADDR,1);
				data_out[i] = rsp_rdata;
			end		
			monitor;
			#10000;		
		end 
	endtask
	
	task data_rx;
		begin 
			fork
				begin 
					for(i = 0;i < 256;i = i + 1)begin 
						port_rxd <= 1'b0; 						//start_bit
						data_tmp = data_in[i];
						even_parity <= data_tmp[7] ^ data_tmp[6] ^ data_tmp[5] ^ data_tmp[4]
									^data_tmp[3] ^ data_tmp[2] ^ data_tmp[1] ^ data_tmp[0];	
						//$display("data_in[%d] = %x",j,data_in[j]);
						for(j = 0;j < 8;j = j + 1)begin 
							#8681	port_rxd = data_tmp[j];		//data
						end 
						if(PARITY_EN != 1) begin
							#8681 	port_rxd <= even_parity;			//parity_bit
						end 
						#8681 	port_rxd <= 1'b1;				//stop_bit
						#8681;
					end
				end 
				begin 
					for(t = 0;t < 256;t = t + 1)begin
						read_register(`UART_CSR_ADDR,1);
						while(rsp_rdata[4] == 1'b0) begin
							read_register(`UART_CSR_ADDR,1);
						end
						//ensure the tx_ok is low
						read_register(`UART_CSR_ADDR,1);
						while(rsp_rdata[4] == 1'b1) begin
							read_register(`UART_CSR_ADDR,1);
						end	
						read_register(`DATA_REG_ADDR,1);
						data_out[t] = rsp_rdata;
					end 
				end 
			join
			monitor;
			#10000;
		end 
	endtask

endmodule