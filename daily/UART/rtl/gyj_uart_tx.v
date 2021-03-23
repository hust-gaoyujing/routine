
`include "uart_define.v"

module uart_tx(
	input 			baud_clk,
	input			rst_n,
	input 			tx_en,
	input 			no_parity,
	input			ev_parity,
	input 			tx_start,
	input [7:0]		txd_in,	
	
	output 			tx_ok,
	output			TXD
);
	
<<<<<<< HEAD
	//FSM define
	`define TX_IDLE		3'b00
	`define TX_PRE		3'b01
	`define TX_DATA		3'b11
	
	wire 		mclk;
	
	reg [3:0] 	tx_cnt; 	//counter for start_bit,8_bit_data,parity,stop_bit
	reg [7:0]	txd_in_r; 	//store data of txd_in temporarily
	reg [9:0]	txd_out_r;	//store byte and function bit to tx out
	reg 		txd_out;
	
	reg [1:0]	tx_state;
	reg	[1:0]	tx_next_state;
=======
	//=========================  FSM STATE DEFINE  ===============================//
	`define TX_IDLE		1'b0
	`define TX_DATA		1'b1
	
	//=========================  REGISTER FOR TX  ================================//
	reg [3:0] 	tx_cnt; 		//counter for start_bit,8_bit_data,parity,stop_bit
	reg [9:0]	txd_out_r;		//store byte and function bit to tx out
	reg 		tx_state;
	reg 		tx_on_flag;		//be high when tx is doing  
>>>>>>> 340f31a20871c457a3c9b20e960d2a3a3e2dfa7e
	
	reg 		tx_ok_r;
	reg 		data_in_flag;
	
	//================================ PARITY ===================================//
	wire even_parity;
	wire odd_parity;
	wire has_even_parity;
	wire has_odd_parity;
	
<<<<<<< HEAD
	assign mclk = tx_en ? baud_clk : 1'b0;
=======
	assign has_even_parity = (!no_parity) & ev_parity;
	assign has_odd_parity = (!no_parity) & (!ev_parity);
	
>>>>>>> 340f31a20871c457a3c9b20e960d2a3a3e2dfa7e
	//calculate for even_parity
	assign even_parity = txd_in[7] ^ txd_in[6] ^ txd_in[5] ^ txd_in[4]
						^txd_in[3] ^ txd_in[2] ^ txd_in[1] ^ txd_in[0];	
	assign odd_parity = ~even_parity;
	
	assign tx_ok = tx_ok_r;
	assign TXD = txd_out;
	
<<<<<<< HEAD
	//assignment for data_in_flag
	always @(negedge rst_n or posedge tx_start)
		if(!rst_n) 
			data_in_flag <= 1'b0;
		else  
			data_in_flag <= 1'b1;
		
	//FSM 		
	always @(*)	
		tx_state <= tx_next_state;
		
	always @(posedge mclk or negedge rst_n)
=======
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
	assign tx_ok = (((tx_cnt == 4'b1010 && (!no_parity)) || ((tx_cnt == 4'b1001) && no_parity)) && tx_state) ? 1'b1 : 1'b0;
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
>>>>>>> 340f31a20871c457a3c9b20e960d2a3a3e2dfa7e
		if(!rst_n) begin 
 			tx_next_state <= `TX_IDLE;
			txd_out <= 1'b1;
			tx_ok_r <= `TX_OK_DEF;
			tx_cnt <= 4'b0;
<<<<<<< HEAD
			txd_in_r <= 8'b0;
			txd_out_r <= 10'b0;
		end 
		else 	
			case(tx_state)
				`TX_IDLE: begin
					//tx_ok_r <= 1'b0;
					if(data_in_flag && !tx_ok) begin
						//txd_in_r <= txd_in;
						//tx_next_state <= `TX_PRE;
						if((n_parity == 1'b0) && (ev_parity == 1'b1)) begin 					
							txd_out_r <= {1'b1,even_parity,txd_in[7:0]}; 	//stop_bit,even_parity,data
						end 
						else if((n_parity == 1'b0) && (ev_parity == 1'b0)) begin 
							txd_out_r <= {1'b1,odd_parity,txd_in[7:0]}; 	//stop_bit,even_parity,data
						end
						else begin 
							txd_out_r <= {1'b1,txd_in[7:0]}; 	//stop_bit,data
						end 
						tx_cnt <= 4'b0;
						data_in_flag <= 1'b0;
						txd_out <= 1'b0;						//start_bit
						tx_next_state <= `TX_DATA;					
					end
					else begin 
						tx_next_state <= tx_next_state;
						txd_out <= 1'b1;
					end 
				end 
				//`TX_PRE: begin
				//	tx_ok_r <= 1'b0;
				//	if(n_parity == 1'b1 && ev_parity == 1'b1) begin 
				//		txd_out_r <= {1'b1,even_parity,txd_in_r[7:0],1'b0}; 	//stop_bit,even_parity,data,start_bit
				//	end 
				//	else if(n_parity == 1'b1 && ev_parity == 1'b0) begin 
				//		txd_out_r <= {1'b1,odd_parity,txd_in_r[7:0],1'b0}; 	//stop_bit,even_parity,data,start_bit
				//	end
				//	else begin 
				//		txd_out_r <= {1'b1,txd_in_r[7:0],1'b0}; 	//stop_bit,data,start_bit
				//	end 
				//	tx_cnt <= 4'b0;
				//	tx_next_state <= `TX_DATA;
				//end 
				`TX_DATA: begin 
					if((tx_cnt == 4'b1010 && n_parity == 1'b0) || (tx_cnt == 4'b1001 && n_parity == 1'b1))  begin 
						tx_ok_r <= 1'b0;
						tx_next_state <= `TX_IDLE;
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
=======
			txd_out_r <= 10'h3ff;
		end 
		else if(tx_pos) begin  
			case(tx_state)
				`TX_IDLE: begin
					if(tx_on_flag) begin												//in software ,writing data_reg should follow tx_ok's negedge 
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
					if((tx_cnt == 4'b1010 && (!no_parity)) || (tx_cnt == 4'b1001 && no_parity))  begin 
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
			txd_out_r <= 10'b0;				
		end 
		else begin 
			tx_state <= tx_state;
			tx_cnt <= tx_cnt;
			txd_out_r <= txd_out_r;	
		end 
		
>>>>>>> 340f31a20871c457a3c9b20e960d2a3a3e2dfa7e
endmodule