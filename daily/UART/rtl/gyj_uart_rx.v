
`include "uart_define.v"

module uart_rx(
	input 			clk,
	input 			sample_clk,
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
	`define RX_IDLE 	3'b000
	`define RX_DATA 	3'b001
	`define RX_PARITY	3'b010
	`define RX_STOP 	3'b100
	
	//=========================  REGISTER FOR RX  ================================//
	reg [2:0] 	rx_cnt; 			//counter for 8_bit_data
	reg [3:0]	sample_cnt;			//counter for sample clock 
	reg [7:0]	rxd_out_r; 			//store data of rxd_out temporarily
	reg 		parity_error_r;
	reg	[1:0]	rx_state;
	
	//get true data by majority voting
	reg 		tmp_a;	
	reg 		tmp_b;	
	reg 		tmp_c;	
	reg 		tmp_vote;
	
	
	//================================ PARITY ===================================//
	wire even_parity;
	wire odd_parity;
	wire has_even_parity;
	wire has_odd_parity;
	wire has_no_parity;
	
	assign has_even_parity = (!no_parity) & ev_parity;
	assign has_odd_parity = (!no_parity) & (!ev_parity);
	assign has_no_parity = no_parity;

	//calculate for even_parity
	assign even_parity = rxd_out_r[7] ^ rxd_out_r[6] ^ rxd_out_r[5] ^ rxd_out_r[4]
						^rxd_out_r[3] ^ rxd_out_r[2] ^ rxd_out_r[1] ^ rxd_out_r[0];	
	assign odd_parity = ~even_parity;
	
	
	//=======================  GETTING POS OF sample_CLK  ==========================//
	reg 		sample_clk_rev;
	wire 		sample_clk_pos;
	wire 		rx_pos;				//uart can tx data only when tx_pos is high 
	
	assign rx_pos =	rx_en & sample_clk_pos;
	assign sample_clk_pos = sample_clk & sample_clk_rev;
	
	always @(posedge clk or negedge rst_n) 
		if(!rst_n)
			sample_clk_rev <= 1'b0;
		else 
			sample_clk_rev <= ~sample_clk;
			
	
	//====================== SQUENTIAL CIRCUIT CONTROL ===========================//
	//assign rx_ok = ((sample_cnt == 4'd12) && (rx_state == `RX_STOP)) ? 1'b1 : 1'b0;
	assign rx_ok = 1'b0;
	assign rxd_out = rd_data_flag ? rxd_out_r : 8'hff;
	assign parity_error = parity_error_r;
	
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
	
	//FSM  receive data	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			rx_state <= `RX_IDLE;
			rx_cnt <= 4'b0;
			sample_cnt <= 4'b0;
			rxd_out_r <= `DATA_REG_DFT;
			parity_error_r <= 1'b0;
		end 
		else if(rx_pos) begin 
			case(rx_state)
				`RX_IDLE: begin 
					if((sample_cnt == 4'd15) && !tmp_vote)begin 
						sample_cnt <= 4'b0;
						rx_cnt <= 3'b0;
						rx_state <= `RX_DATA;
					end
					else if((sample_cnt == 4'd0) && rxd)begin
						sample_cnt <= 4'd0;
					end 
					else if(sample_cnt == 4'd11)begin 
						if(tmp_vote == 1'b1) begin 
							sample_cnt <= 4'd0;
							rx_state <= `RX_IDLE;
						end
						else 
							sample_cnt <= sample_cnt + 1;
					end 
					else 
						sample_cnt <= sample_cnt + 1;
				end 
				`RX_DATA: begin 
					if((rx_cnt == 3'd7) && (sample_cnt == 4'd15) && has_no_parity) begin 
						sample_cnt <= 4'b0;
						rx_state <= `RX_STOP;
					end 
					else if((rx_cnt == 3'd7) && (sample_cnt == 4'd15) && (!has_no_parity)) begin 
						sample_cnt <= 4'b0;
						rx_state <= `RX_PARITY;
					end 
					else if(sample_cnt == 4'd15) begin 
						sample_cnt <= 4'b0;
						rx_cnt <= rx_cnt + 1;
					end 
					else if(sample_cnt == 4'd11)begin 
						sample_cnt <= sample_cnt + 1;
						rxd_out_r <= {tmp_vote,rxd_out_r[7:1]};
					end 
					else 
						sample_cnt <= sample_cnt + 1;
				end 
				`RX_PARITY: begin 
					if(sample_cnt == 4'd15) begin  
						sample_cnt <= 4'd0;
						rx_state <= `RX_STOP;
					end 
					else if(sample_cnt == 4'd11)begin 
						if((tmp_vote == even_parity && has_even_parity) || (tmp_vote == odd_parity && has_odd_parity))begin    
							sample_cnt <= sample_cnt + 1;
						end 
						else begin 
							sample_cnt <= 4'd0;
							parity_error_r <= 1'b1;
							rx_state <= `RX_IDLE;
						end 
					end 
					else 
						sample_cnt <= sample_cnt + 1;
				end 
				`RX_STOP: begin 
					if(!rxd)begin  
						sample_cnt <= 1'b0;
					end 
					else if(sample_cnt == 4'd13) begin 
						sample_cnt <= 4'd0;
						rx_state <= `RX_IDLE;
					end
					else if(sample_cnt == 4'd11)begin 
						if(tmp_vote == 1'b1)  								//jduging tmp_vote whether stop bit
							sample_cnt <= sample_cnt + 1;
						else begin 
							sample_cnt <= 4'd0;
							rx_state <= `RX_STOP;
						end 
					end 
					else 
						sample_cnt <= sample_cnt + 1;
				end
			endcase 	
		end 
		else if(!rx_en) begin
			rx_state <= `RX_IDLE;
			rx_cnt <= 4'b0;
			sample_cnt <= 4'b0;
			rxd_out_r <= `DATA_REG_DFT;
			parity_error_r <= 1'b0;
		end 
		else begin
			rx_state <= rx_state;
			rx_cnt <= rx_cnt;
			sample_cnt <= sample_cnt;
			rxd_out_r <= rxd_out_r;
			parity_error_r <= parity_error_r;
		end 
endmodule





