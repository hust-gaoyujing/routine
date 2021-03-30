
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
	parameter TX_IDLE	= 3'b000;
	parameter TX_START	= 3'b001;
	parameter TX_DATA	= 3'b010;
	parameter TX_STOP	= 3'b100;
	
	//=========================  REGISTER FOR TX  ================================//
	reg [3:0] 	tx_cnt; 		//counter for start_bit,8_bit_data,parity,stop_bit
	reg [7:0]	txd_data;		//store byte to tx out
	reg			txd_out_r;
	reg [3:0]	tx_current_state;
	reg [3:0]	tx_next_state;
	reg 		tx_on_flag;		//be high when tx is doing  
	
	
	//================================ PARITY ===================================//
	reg 		even_parity;
	wire 		has_even_parity;
	wire 		has_odd_parity;
	
	assign has_even_parity = (!no_parity) & ev_parity;
	assign has_odd_parity = (!no_parity) & (!ev_parity);
	
	//calculate for even_parity
	//assign even_parity = txd_in[7] ^ txd_in[6] ^ txd_in[5] ^ txd_in[4]
	//					^txd_in[3] ^ txd_in[2] ^ txd_in[1] ^ txd_in[0];	
	
	
	//=======================  GETTING POS OF BAUD_CLK  ==========================//
	wire 		tx_pos;					//uart can tx data only when tx_pos is high 
	
	assign tx_pos =	tx_en & tx_data_sample;
			
	//====================== SQUENTIAL CIRCUIT CONTROL ===========================//
	//FSM 		
	//when tx_state is TX_STOP,tx_ok will be high
	assign tx_ok = tx_current_state[2];
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
	
	//FSM	three step to describle the fsm
	//first:assign tx_current_state with tx_next_state
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			tx_current_state <= TX_IDLE;
		else
			tx_current_state <= tx_next_state;
	
	//second:fsm state transition 	
	always @(*)
		if(!rst_n)
			tx_next_state <= TX_IDLE;
		else if(tx_pos)   
			case(tx_current_state) 
				TX_IDLE: begin
					if(tx_on_flag)
						tx_next_state <= TX_START;
				end 
				TX_START: begin 
					tx_next_state <= TX_DATA;
				end 
				TX_DATA: begin 
					if((tx_cnt == 4'b1000 && no_parity) || tx_cnt == 4'b1001)  		//transmit 1 byte or 1 byte and parity
						tx_next_state <= TX_STOP;
				end 
				TX_STOP: begin 
					tx_next_state <= TX_IDLE;
				end 
				default: begin 
					tx_next_state <= TX_IDLE;
				end 
			endcase 
		else if(!tx_en)
			tx_next_state <= TX_IDLE;
	
	//third:fsm output
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			txd_out_r <= 1'h1;
			tx_cnt <= 4'b0;
			txd_data <= 8'hff;
			even_parity <= 1'b0;
		end 
		else if(tx_pos) begin 
			case(tx_next_state)
				TX_IDLE: begin
					txd_out_r <= 1'b1;											
					tx_cnt <= 4'b0;
					even_parity <= 1'b0;
				end 
				TX_START: begin														//state go to TX_DATA
					txd_out_r <= 1'b0;
					txd_data <= txd_in;
				end 
				TX_DATA: begin 
					if((tx_cnt == 4'b1000 && no_parity) || tx_cnt == 4'b1001) begin 						//state go to TX_STOP
						txd_out_r <= 1'b1;											//stop_bit
					end  
					else if(tx_cnt == 4'b1000 && has_even_parity) begin  								
						txd_out_r <= even_parity;									//even_parity
						tx_cnt <= tx_cnt + 1'b1;
					end 
					else if(tx_cnt == 4'b1000 && has_odd_parity) begin  								
						txd_out_r <= ~ev_parity;									//odd_parity
						tx_cnt <= tx_cnt + 1'b1;
					end 
					else begin
						txd_out_r <= txd_data[0];						
						tx_cnt <= tx_cnt + 1'b1;
						txd_data <= txd_data >> 1;
						even_parity <= even_parity ^ txd_data[0];
					end 
				end 
				TX_STOP: begin
					txd_out_r <= 1'b1;												//stop_bit
				end				
				default: begin 
					tx_cnt <= 4'b0;
					txd_data <= 8'hff;
					txd_out_r <= 1'b1;
				end 
			endcase
		end 
		else if(!tx_en) begin 
			txd_out_r <= 1'b1;	
			tx_cnt <= 4'b0;
			txd_data <= 8'hff;
			even_parity <= 1'b0;			
		end 
		else begin 
			txd_out_r <= txd_out_r;	
			tx_cnt <= tx_cnt;
			txd_data <= txd_data;
			even_parity <= even_parity;
		end 
		
endmodule