
module dog_dt_rd(
	input 				clk,
	input 				rst_n, 
	input				start,
	
	output				ram0_rd_valid_out,
	output 	[15:0]		ram0_rd_addr_out,
	output				ram1_rd_valid_out,
	output 	[15:0]		ram1_rd_addr_out
);
	parameter	[9:0]	X_START = 10'h3fd; 	//-3
	parameter	[9:0]	X_END 	= 10'h102;	//258
	
	//reg_x increase from -3 to 258
	//reg_y[7:0] increase from 0 to 255
	//reg[8] = 0 indicate that reading memory from ram0
	//reg[8] = 1 indicate that reading memory from ram1
	reg [9:0]	reg_x;
	reg	[8:0]	reg_y;
	
	wire x_end_flag;
	wire y_end_flag;
	
	assign x_end_flag = (reg_x == X_END) ? 1'b1 : 1'b0;
	assign y_end_flag = (reg_y == 9'h1ff) ? 1'b1 : 1'b0;
	
	//================= enable ==================//
	reg enable;
	reg end_flag;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			end_flag <= 1'b0;
		else if(x_end_flag && y_end_flag)
			end_flag <= 1'b1;
		else 
			end_flag <= 1'b0;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			enable	<= 1'b0;
		else if(start)  
			enable 	<= 1'b1;
		else if(end_flag)
			enable 	<= 1'b0;	
	
	//================ reg_x increase ============//
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			reg_x <= X_START;
		else if(end_flag | x_end_flag)
			reg_x <= X_START;
		else if(start | enable) 
			reg_x <= reg_x + 1;

	//================ reg_y increase ============//
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			reg_y <= 9'h0;
		else if(x_end_flag) 
			reg_y <= reg_y + 1;	
	
	//================ ram0 or ram1 mux ===========//
	reg 		ram0_valid_reg;
	reg [7:0] 	reg_x_tmp;
	reg [7:0] 	reg_y_tmp;
	
	assign ram0_rd_valid_out = ram0_valid_reg;
	assign ram1_rd_valid_out = enable ? (~ram0_rd_valid_out) : 1'b0;
	assign ram0_rd_addr_out = ram0_rd_valid_out ? {reg_y_tmp , reg_x_tmp} : 16'h0;
	assign ram1_rd_addr_out = ram1_rd_valid_out ? {reg_x_tmp , reg_y_tmp} : 16'b0;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			ram0_valid_reg <= 1'b0;
		else if(start)
			ram0_valid_reg <= 1'b1;
		else if(reg_y[8])
			ram0_valid_reg <= 1'b0;
			
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			reg_x_tmp <= 8'h0;
		else if(reg_x[9])
			reg_x_tmp <= (~reg_x[7:0]) + 1;
		else if(reg_x[8]) 
			reg_x_tmp <= (~reg_x[7:0]) + 8'hff; 
		else 
			reg_x_tmp <= reg_x[7:0];
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			reg_y_tmp <= 8'h0;
		else 
			reg_y_tmp <= reg_y[7:0];

endmodule