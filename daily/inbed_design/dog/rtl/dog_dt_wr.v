
module gs_dt_wr(
	input 				clk,
	input 				rst_n,
	input 				wr_valid_in,
	input 	[7:0]		wr_data_in,

	output				wr_valid_out,
	output	[15:0]		wr_addr_out,
	output	[7:0]		wr_data_out,
	output				done
);
	parameter	[8:0]	X_START = 9'h1fc;	//-4
	parameter	[8:0]	X_END 	= 9'hff;	//255
	
	//================ wr_data_out ==========================//
	assign wr_data_out = wr_data_in;

	//================  wr_addr_out ========================//
	//reg_x increase from -4 to 255
	//reg_y[7:0] increase from 0 to 255
	//reg_y[8] = 0 indicate that writing with line
	//reg_y[8] = 1 indicate that writing with colunm
	reg [8:0]	reg_x;		
	reg	[8:0]	reg_y;
	
	wire x_end_flag;
	wire y_end_flag;
	
	assign x_end_flag = (reg_x == 9'hff) ? 1'b1 : 1'b0;
	assign y_end_flag = (reg_y == 9'h1ff) ? 1'b1 : 1'b0;
	
	assign wr_addr_out = reg_y[8] ? {reg_x[7:0] , reg_y[7:0]} : {reg_y[7:0] , reg_x[7:0]};
	
	//reg_x
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			reg_x <= X_START;
		else if(x_end_flag)
			reg_x <= X_START;
		else if(wr_valid_in)  
			reg_x <= reg_x + 1;
	
	//reg_y
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			reg_y	<= 9'b0;
		else if(x_end_flag)  
			reg_y 	<= reg_y + 1;
	
	//================  wr_valid_out ========================//
	//while reg_x is -4,-3,-2,-1, the data_in is invalid
	//reg wr_valid_out_r;
	assign wr_valid_out = wr_valid_in & (~reg_x[8]);
	
	//always @(posedge clk or negedge rst_n)
	//	if(!rst_n)
	//		wr_valid_out_r <= 1'b0;
	//	else         
	//		wr_valid_out_r <= wr_valid_in;
			
	//================    done   ========================//
	assign done = x_end_flag && y_end_flag;  
	

endmodule