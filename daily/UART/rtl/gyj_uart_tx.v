
`include "uart_define.v"

module uart_tx(
	input 			clk,
	input 			baud_clk,
	input			rst_n,
	input 			tx_en,
	input 			n_parity,
	input			ev_parity,
	input 			tx_start,
	input [7:0]		txd_in,	
	
	output 			tx_ok,
	output			txd
);
	
	//FSM define
	`define TX_IDLE		3'b00
	`define TX_PRE		3'b01
	`define TX_DATA		3'b11
	
	reg [3:0] 	tx_cnt; 	//counter for start_bit,8_bit_data,parity,stop_bit
	reg [7:0]	txd_in_r; 	//store data of txd_in temporarily
	reg [9:0]	txd_out_r;	//store byte and function bit to tx out
	reg [1:0]	tx_state;
	
	reg 		baud_clk_rev;
	wire 		baud_clk_pos;
	
	
	
	wire even_parity;
	wire odd_parity;
	
	
	//calculate for even_parity
	assign even_parity = txd_in[7] ^ txd_in[6] ^ txd_in[5] ^ txd_in[4]
						^txd_in[3] ^ txd_in[2] ^ txd_in[1] ^ txd_in[0];	
	assign odd_parity = ~even_parity;
	
	assign txd = txd_out_r[0];
	
	
	
	//to get the posedge of baud_clk
	assign baud_clk_pos = baud_clk & baud_clk_rev;
	
	always(posedge clk or negedge rst_n) 
		if(!rst_n)
			baud_clk_rev <= 1'b0;
		else 
			baud_clk_rev <= baud_clk;
	
	
			
	
	//FSM 		
	assign tx_ok = ((tx_cnt == 4'b1001 && n_parity == 1'b0) || (tx_cnt == 4'b1000 && n_parity == 1'b1) && (tx_state == `TX_DATA)) ? 1'b1 : 1'b0;
		
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
 			tx_state <= `TX_IDLE;
			txd_out <= 1'b1;
			tx_cnt <= 4'b0;
			txd_in_r <= 8'b0;
			txd_out_r <= 10'b0;
		end 
		else 
			if((tx_en == 1'b1) && (baud_clk_pos == 1'b1)) begin  
				case(tx_state)
					`TX_IDLE: begin
						if(tx_start) begin											//in software ,writing data_reg should follow tx_ok's negedge 
							if((n_parity == 1'b0) && (ev_parity == 1'b1)) begin 					
								txd_out_r <= {1'b1,even_parity,txd_in[7:0]}; 		//stop_bit,even_parity,data
							end 
							else if((n_parity == 1'b0) && (ev_parity == 1'b0)) begin 
								txd_out_r <= {1'b1,odd_parity,txd_in[7:0]}; 		//stop_bit,even_parity,data
							end
							else begin 
								txd_out_r <= {1'b1,txd_in[7:0]}; 					//stop_bit,data
							end 
							tx_cnt <= 4'b0;
							data_in_flag <= 1'b0;
							txd_out <= 1'b0;										//start_bit
							tx_state <= `TX_DATA;					
						end
						else begin 
							tx_state <= tx_state;
							txd_out <= 1'b1;
						end 
					end 
					`TX_DATA: begin 
						if((tx_cnt == 4'b1010 && n_parity == 1'b0) || (tx_cnt == 4'b1001 && n_parity == 1'b1))  begin 
							tx_ok_r <= 1'b0;
							tx_state <= `TX_IDLE;
						end
						else if((tx_cnt == 4'b1001 && n_parity == 1'b0) || (tx_cnt == 4'b1000 && n_parity == 1'b1))  begin 
							tx_ok_r <= 1'b1;
							tx_cnt <= tx_cnt + 1;
							txd_out <= txd_out_r[0];
							txd_out_r <= txd_out_r>>1;
						end 
						else begin
							tx_cnt <= tx_cnt + 1;
							txd_out <= txd_out_r[0];
							txd_out_r <= txd_out_r>>1;
						end 
					end 
				endcase
			end 
			else if(tx_en != 1'b1) begin 
				tx_state <= `TX_IDLE;
				txd_out <= 1'b1;
				tx_cnt <= 4'b0;
				txd_in_r <= 8'b0;
				txd_out_r <= 10'b0;				
			end 
			
			
endmodule