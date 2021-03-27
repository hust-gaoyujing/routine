
`include "uart_define.v"

module baudrate_generator( 
	input 			clk,
	input 			rst_n,
	input 			baud_en,
	input 	[15:0]	divisor,
	
	output 			baud_clk,
	output  		sample_clk
);
	//=========================  REGISTER FOR GENERATOR  =============================//
	reg [15:0]	sample_cnt;
	reg [3:0]	baud_cnt;
		
	reg 		baud_clk_r;
	reg 		sample_clk_r;
	
	//=========================  INTERFACE ASSIGNMENT  ===============================//
	//assignment of baud_clk and sample_clk
	assign baud_clk = baud_clk_r;
	assign sample_clk = sample_clk_r;


	//===================  GET SAMPLE_CLK BY DIV SYSTEM_CLK  ========================//
	//divide clk to get sample_clk	
	always @(posedge clk or negedge rst_n) 
		if(!rst_n) begin 
			sample_clk_r <= 1'b0;
			sample_cnt <= 16'b0;
		end 
		else if(baud_en) begin 
			if(sample_cnt == divisor) begin 
				sample_cnt <= 16'b0;
				sample_clk_r <= 1'b1;
			end 
			else begin 
				sample_cnt <= sample_cnt + 1;
				sample_clk_r <= 1'b0;
			end 
		end 
		else if(!baud_en) begin 
			sample_clk_r <= 1'b0;
			sample_cnt <= 16'b0;
		end
	
	//=======================  GETTING POS OF sample_CLK  ==========================//
	reg 		sample_clk_rev;
	wire 		sample_clk_pos;
	
	assign baud_pos = baud_en & sample_clk_pos;
	assign sample_clk_pos = sample_clk & sample_clk_rev;
	
	always @(posedge clk or negedge rst_n) 
		if(!rst_n)
			sample_clk_rev <= 1'b0;
		else 
			sample_clk_rev <= ~sample_clk;

		
	//===================  GET BAUD_CLK BY DIV SAMPLE_CLK  ========================//
	//sample_clk's frequence divide sample will get baud_clk
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin
			baud_clk_r <= 1'b0;
			baud_cnt <= 16'b0;
		end 
		else if(baud_pos) begin 
			if(baud_cnt == `SAMPLE) begin 
				baud_cnt <= 16'b0;
				baud_clk_r <= ~baud_clk_r;
			end 
			else 
				baud_cnt <= baud_cnt + 1;
		end 
		else if(!baud_en) begin 
			baud_clk_r <= 1'b0;
			baud_cnt <= 16'b0;
		end
		else begin 
			baud_clk_r <= baud_clk_r;
			baud_cnt <= baud_cnt;
		end 
	
	
	
endmodule 
 
 
 
 