
`include "uart_define.v"

module baudrate_generator( 
	input 			clk,
	input 			rst_n,
	input 			baud_en,
	//input 	[1:0]	baudrate,		
	input 	[15:0]	divisor,
	
	output 			baud_clk,
	output  		sample_clk
);

	reg [15:0]	sample_cnt;
	reg [3:0]	baud_cnt;
	//reg [1:0] 	last_baud;
	
	//reg [15:0]	divisor_r;
	reg 		baud_clk_r;
	reg 		sample_clk_r;
	
	wire		mclk;
   
	assign mclk = baud_en ? clk : 1'b0;
 
 
	//assignment of baud_clk and sample_clk
	assign baud_clk = baud_clk_r;
	assign sample_clk = sample_clk_r;
	
	////assignment for divisor_r
	//always @(posedge mclk or negedge rst_n)
	//	if(!rst_n)
	//		divisor_r <= 16'b0;
	//	else begin 
	//		divisor_r <= divisor;
	//	end 
 
	//check the change of baudrate
	//always @(posedge mclk or negedge rst_n) 
	//	if(!rst_n) begin 
	//		last_baud <= 2'b0;
	//	end 
	//	else begin 
	//		last_baud <= baudrate;
	//	end 

	//divide clk to get sample_clk	
	always @(posedge mclk or negedge rst_n) 
		if(!rst_n) begin 
			sample_clk_r <= 1'b0;
			sample_cnt <= 16'b0;
		end 
		else begin 
			if((sample_cnt == divisor) && (divisor != 16'b0)) begin 
				sample_cnt <= 16'b0;
				sample_clk_r <= 1'b1;
			end 
			else begin 
				sample_cnt <= sample_cnt + 1;
				sample_clk_r <= 1'b0;
			end 
		end 
		
	//sample_clk's frequence divide sample will get baud_clk
	always @(posedge sample_clk or negedge rst_n)
		if(!rst_n) begin
			baud_clk_r <= 1'b0;
			baud_cnt <= 16'b0;
		end 
		else begin 
			if(baud_cnt == `SAMPLE) begin 
				baud_cnt <= 16'b0;
				baud_clk_r <= ~baud_clk_r;
			end 
			//else if(last_baud != baudrate) begin 
			//	baud_cnt <= 16'b0;
			//	baud_clk_r <= 1'b0;
			//end 
			else 
				baud_cnt <= baud_cnt + 1;
		end 		
	
	
	
endmodule 
 
 
 
 