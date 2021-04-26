`include "ux607_defines.v"
`include "tb_defines.v"
`include "ux607_subsys_defines.v"

module tb_uart(
  input  tb_clk,
  input  tb_rst_n
  );
	wire  							interrupts_0_0;                
	wire  							port_txd;
	reg		 						port_rxd;
	
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

	//initial interface
	initial begin 
		force `SOC_GPIO_TOP.io_port_pins_16_o_ie = 1'b1;	
	end 
	
	//LOAD DATA TO DATA_TX
	initial begin 
		$readmemh("uart_data.hex", data_in);
	end 
	
	//VERIFICATION MAIN	
	initial begin
	//	reg_setting;
	//	if(TEST_TYPE == "TX") begin 
	//		force port_rxd = port_txd;
	//		data_tx;
	//	end 
	//	else if(TEST_TYPE == "RX")
	//		data_rx;
	//
	//	#10000;
	//	$finish;
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
	
	
	task data_rx;
		begin 
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
					//if(NO_PARITY != 1) begin
						#8681 	port_rxd <= even_parity;			//parity_bit
					//end 
					#8681 	port_rxd <= 1'b1;				//stop_bit
					#8681;
				end
			end 
			monitor;
			#10000;
		end 
	endtask

endmodule