
`include "uart_define.v"

module uart_rx(
	input 			clk,
	input 			rx_data_sample,
	input 			rst_n,
	input 			rx_en,
	input 			no_parity, 			
	input			ev_parity,
	input			rd_data_flag,
	input 			rxd,	
	
	output 			rx_ok,
	output [7:0]	rxd_out,
	output			parity_error
);
	//=========================  FSM STATE DEFINE  ===============================//
	parameter RX_IDLE 		= 2'b00;	
	parameter RX_DATA 		= 2'b01;
	parameter RX_STOP 		= 2'b10;
	
	//=========================  REGISTER FOR RX  ================================//
	reg [3:0] 	rx_cnt; 			//counter for 8_bit_data and parity_bit
	reg [3:0]	sample_cnt;			//counter for sample clock 
	reg [7:0]	rxd_out_r; 			//store data of rxd_out temporarily
	reg	[1:0]	rx_current_state;
	reg	[1:0]	rx_next_state;
	
	//get true data by majority voting
	reg 		tmp_a;	
	reg 		tmp_b;	
	reg 		tmp_c;	
	reg 		tmp_vote;
	
	//================================ PARITY ===================================//
	reg 		parity_result;
	wire 		has_even_parity;
	wire 		has_odd_parity;
	
	assign has_even_parity = (!no_parity) & ev_parity;
	assign has_odd_parity = (!no_parity) & (!ev_parity);

	//=======================  GETTING POS OF sample_CLK  =======================//
	wire 		rx_pos;						//uart can rx data only when rx_pos is high 
	
	assign rx_pos =	rx_en & rx_data_sample;
	
	//====================== SQUENTIAL CIRCUIT CONTROL =========================//
	//sample_cnt == 12 and rx_state == RX_STOP
	assign rx_ok = rx_current_state[1];
	assign rxd_out = rd_data_flag ? rxd_out_r : 8'hff;
	assign parity_error = rx_current_state[1] & ((has_even_parity & parity_result) | (has_odd_parity & !parity_result));		//if set even_parity,then parity_result must be 0;if odd_parity, parity_result must be 1;
	
	//sample rxd with tmp_data 
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			tmp_a <= 1'b1;
			tmp_b <= 1'b1;
			tmp_c <= 1'b1;
			tmp_vote <= 1'b1;
		end 
		else if(sample_cnt == 4'd7) 
			tmp_a <= rxd;
		else if(sample_cnt == 4'd8) 
			tmp_b <= rxd;
		else if(sample_cnt == 4'd9) 
			tmp_c <= rxd;
		else if(sample_cnt == 4'd10) 
			tmp_vote <= (tmp_a&tmp_b) || (tmp_a&&tmp_c) || (tmp_b&&tmp_c);
		else begin 
			tmp_a <= tmp_a;
			tmp_b <= tmp_b;
			tmp_c <= tmp_c; 
			tmp_vote <= tmp_vote;
		end 

	//FSM	three step to describle the fsm
	//first:assign rx_current_state with rx_next_state
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			rx_current_state <= RX_IDLE;
		else if(rx_pos)
			rx_current_state <= rx_next_state;
		else 
			rx_current_state <= rx_current_state;
		
	//second:fsm state transition 	
	always @(*)
		if(!rst_n)
			rx_next_state <= RX_IDLE;
		else if(!rx_en)
			rx_next_state = RX_IDLE;
		else   
			case(rx_current_state) 
				RX_IDLE: begin
					if(sample_cnt == 4'd15)
						rx_next_state = RX_DATA;
				end 
				RX_DATA: begin 
					if((sample_cnt == 4'd15) && (((rx_cnt == 4'd8) && no_parity) || rx_cnt == 4'd9))						//if having parity check,then TX_DATA needs 9 rx_cnt period；else 8;
						rx_next_state = RX_STOP;
				end 
				RX_STOP: begin 
					if(sample_cnt == 8'd8)
						rx_next_state = RX_IDLE;
				end 
				default: begin 
					rx_next_state = RX_IDLE;
				end 
			endcase 
	
	//third:fsm output	
	//rx_cnt and sample_cnt 
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			rx_cnt <= 4'd0;
			sample_cnt <= 4'd0;
		end 
		else if(rx_pos)
			case(rx_next_state)
				RX_IDLE: begin 
					if(rxd) begin 
						sample_cnt <= 4'd0;
						rx_cnt <= 4'd0;
					end
					else begin
						sample_cnt <= sample_cnt + 1;
						rx_cnt <= rx_cnt;
					end
				end 
				RX_DATA: begin 
					if(sample_cnt == 4'd15) begin 
						sample_cnt <= 4'd0;
						rx_cnt <= rx_cnt + 1;
					end 
					else 
						sample_cnt <= sample_cnt + 1;
				end 
				RX_STOP: begin 
					if(!rxd) 
						sample_cnt <= 4'd0;
					else 
						sample_cnt <= sample_cnt + 1;
				end
				default: begin 
					rx_cnt <= 4'd0;
					sample_cnt <= 4'd0;
				end 
			endcase 	
		else if(!rx_en) begin
			rx_cnt <= 4'd0;
			sample_cnt <= 4'd0;
		end 
		else begin
			rx_cnt <= rx_cnt;
			sample_cnt <= sample_cnt;
		end 
	
	//collect the rxd to rxd_out_r
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			rxd_out_r <= `DATA_REG_DFT;
		else if(rx_pos) 
			case(rx_next_state)
				RX_DATA: begin 
					if((rx_cnt <= 4'd8) && (sample_cnt == 4'd15)) 
						rxd_out_r <= {tmp_vote,rxd_out_r[7:1]};
					else 
						rxd_out_r <= rxd_out_r;
				end 
				default: begin 
					rxd_out_r <= rxd_out_r;
				end 
			endcase
		else if(!rx_en)
			rxd_out_r <= `DATA_REG_DFT;
		else 
			rxd_out_r <= rxd_out_r;	
	
	//calculate parity_result for parity check
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			parity_result <= 1'b0;
		else if(rx_pos) 
			case(rx_next_state)
				RX_IDLE: begin 
					parity_result <= 1'b0;
				end 
				RX_DATA: begin 
					if((sample_cnt == 4'd15) && !no_parity) 
						parity_result <= parity_result ^ tmp_vote;
					else 
						parity_result <= parity_result;
				end 
				default: begin 
					parity_result <= parity_result;
				end 
			endcase
		else if(!rx_en)
			parity_result <= 1'b0;
		else 
			parity_result <= parity_result;
			
			
endmodule





