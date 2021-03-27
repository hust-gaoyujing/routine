
`include "uart_define.v"

module uart_tx(
	input 			clk,
	input 			baud_clk,
	input			rst_n,
	input 			tx_en,
	input 			no_parity,
	input			ev_parity,
	input 			tx_start,
	input [7:0]		txd_in,	
	
	output 			tx_ok,
	output			txd
);
	
	//=========================  FSM STATE DEFINE  ===============================//
	`define TX_IDLE		1'b0
	`define TX_DATA		1'b1
	
	//=========================  REGISTER FOR TX  ================================//
	reg [3:0] 	tx_cnt; 		//counter for start_bit,8_bit_data,parity,stop_bit
	reg [9:0]	txd_out_r;		//store byte and function bit to tx out
	reg 		tx_state;
	reg 		tx_on_flag;		//be high when tx is doing  
	
	
	//================================ PARITY ===================================//
	wire even_parity;
	wire odd_parity;
	wire has_even_parity;
	wire has_odd_parity;
	
	assign has_even_parity = (!no_parity) & ev_parity;
	assign has_odd_parity = (!no_parity) & (!ev_parity);
	
	//calculate for even_parity
	assign even_parity = txd_in[7] ^ txd_in[6] ^ txd_in[5] ^ txd_in[4]
						^txd_in[3] ^ txd_in[2] ^ txd_in[1] ^ txd_in[0];	
	assign odd_parity = ~even_parity;
	
	
	//=======================  GETTING POS OF BAUD_CLK  ==========================//
	reg 		baud_clk_rev;
	wire 		baud_clk_pos;
	wire 		tx_pos;				//uart can tx data only when tx_pos is high 
	
	assign tx_pos =	tx_en & baud_clk_pos;
	assign baud_clk_pos = baud_clk & baud_clk_rev;
	
	always @(posedge clk or negedge rst_n) 
		if(!rst_n)
			baud_clk_rev <= 1'b0;
		else 
			baud_clk_rev <= ~baud_clk;
	
	
			
	//====================== SQUENTIAL CIRCUIT CONTROL ===========================//
	//FSM 		
	//In TX_DATA,tx_cnt == 4'b1010 && (!no_parity)) or((tx_cnt == 4'b1001) && no_parity),tx_ok will be high
	assign tx_ok = tx_state & tx_cnt[3] & ((tx_cnt[1] & !no_parity) | (tx_cnt[0] & no_parity));
	assign txd = txd_out_r[0];	
	
	//assignment for tx_on_flag
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			tx_on_flag <= 1'b0;
		else if(tx_start)
			tx_on_flag <= 1'b1;
		else if(tx_ok)
			tx_on_flag <= 1'b0;
		else 
			tx_on_flag <= tx_on_flag;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
 			tx_state <= `TX_IDLE;
			tx_cnt <= 4'b0;
			txd_out_r <= 10'h3ff;
		end 
		else if(tx_pos) begin  
			case(tx_state)
				`TX_IDLE: begin
					if(tx_on_flag) begin										 	//in software ,writing data_reg should follow tx_ok's negedge 
						tx_state <= `TX_DATA;	
						if(has_even_parity)  					
							txd_out_r <= {1'b1,even_parity,txd_in[7:0],1'b0}; 		//stop_bit,even_parity,data,start_bit
						else if(has_odd_parity) 
							txd_out_r <= {1'b1,odd_parity,txd_in[7:0],1'b0}; 		//stop_bit,even_parity,data,start_bit
						else if(no_parity) 
							txd_out_r <= {1'b1,txd_in[7:0],1'b0}; 					//stop_bit,data,start_bit
						else   
							txd_out_r <= 10'h3ff;
					end
					else  
						tx_state <= `TX_IDLE;
				end 
				`TX_DATA: begin 
					if(tx_cnt[3] & ((tx_cnt[1] & !no_parity) | (tx_cnt[0] & no_parity))) begin 		//(tx_cnt == 4'b1010 && (!no_parity)) || (tx_cnt == 4'b1001 && no_parity)
						tx_state <= `TX_IDLE;
						tx_cnt <= 4'b0;
					end
					else begin
						tx_cnt <= tx_cnt + 1;
						txd_out_r <= {1'b1,txd_out_r[9:1]};
					end 
				end 
			endcase
		end 
		else if(!tx_en) begin 
			tx_state <= `TX_IDLE;
			tx_cnt <= 4'b0;
			txd_out_r <= 10'h3ff;				
		end 
		else begin 
			tx_state <= tx_state;
			tx_cnt <= tx_cnt;
			txd_out_r <= txd_out_r;	
		end 
		
endmodule