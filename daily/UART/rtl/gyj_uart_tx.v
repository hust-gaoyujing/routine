
`include "uart_define.v"

module uart_tx(
	input 			clk,
	input 			tx_data_sample,
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
	parameter TX_IDLE	= 4'b0000;
	parameter TX_START	= 4'b0001;
	parameter TX_DATA	= 4'b0010;
	parameter TX_PARITY	= 4'b0100;
	parameter TX_STOP	= 4'b1000;
	
	//=========================  REGISTER FOR TX  ================================//
	reg [2:0] 	tx_cnt; 		//counter for start_bit,8_bit_data,parity,stop_bit
	reg [7:0]	txd_data;		//store byte to tx out
	reg			txd_out_r;
	reg [3:0]	tx_state;
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
	wire 		tx_pos;					//uart can tx data only when tx_pos is high 
	
	assign tx_pos =	tx_en & tx_data_sample;
			
	//====================== SQUENTIAL CIRCUIT CONTROL ===========================//
	//FSM 		
	//when tx_state is TX_STOP,tx_ok will be high
	assign tx_ok = tx_state[3];
	assign txd = txd_out_r;	
	
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
	
	//FSM
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
 			tx_state <= TX_IDLE;
			tx_cnt <= 3'b0;
			txd_data <= 8'hff;
			txd_out_r <= 1'h1;
		end 
		else if(tx_pos) begin  
			case(tx_state)
				TX_IDLE: begin
					if(tx_on_flag) begin										 	//in software ,writing data_reg should follow tx_ok's negedge 
						tx_state <= TX_START;	
						txd_data <= txd_in; 										//store data_in
						txd_out_r <= 1'b0;											//start_bit
						tx_cnt <= 3'b0;
					end
					else  
						tx_state <= TX_IDLE;
				end 
				TX_START: begin
						tx_state <= TX_DATA;
						txd_out_r <= txd_data[0];
						tx_cnt <= tx_cnt + 1'b1;
				end 
				TX_DATA: begin 
					if(tx_cnt == 3'b111 && has_even_parity) begin  								
						tx_state <= TX_PARITY;
						txd_out_r <= even_parity;									//even_parity
					end 
					else if(tx_cnt == 3'b111 && has_odd_parity) begin  								
						tx_state <= TX_PARITY;
						txd_out_r <= odd_parity;									//odd_parity
					end 
					else if(tx_cnt == 3'b111 && no_parity) begin 
						tx_state <= TX_STOP;
						txd_out_r <= 1'b1;											//stop_bit
					end 
					else 	
						tx_cnt <= tx_cnt + 1'b1;
					txd_out_r <= txd_data[tx_cnt];
				end 
				TX_PARITY: begin  
					tx_state <= TX_STOP;
					txd_out_r <= 1'b1;												//stop_bit
				end
				TX_STOP: begin
					tx_state <= TX_IDLE;
					txd_out_r <= 1'b1;												//default_bit
				end				
				default: begin 
					tx_state <= TX_IDLE;
					tx_cnt <= 3'b0;
					txd_data <= 8'hff;
					txd_out_r <= 1'b1;
				end 
			endcase
		end 
		else if(!tx_en) begin 
			tx_state <= TX_IDLE;
			tx_cnt <= 4'b0;
			txd_data <= 8'hff;
			txd_out_r <= 1'b1;				
		end 
		else begin 
			tx_state <= tx_state;
			tx_cnt <= tx_cnt;
			txd_data <= txd_data;
			txd_out_r <= txd_out_r;	
		end 
		
endmodule