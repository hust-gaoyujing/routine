
module dog_dt_wr(
	input 				clk,
	input 				rst_n,
	input 				ram1_wr_valid_in,
	input 	[7:0]		ram1_wr_data_in,
	input 				ram2_wr_valid_in,
    input 	[7:0]		ram2_wr_data_in,
	input 				dog_wr_valid_in,
	input	[7:0]		dog_wr_data_in,
	
	output				ram1_wr_valid_out,
	output	[15:0]		ram1_wr_addr_out,
	output	[7:0]		ram1_wr_data_out,
	output				ram2_wr_valid_out,
	output	[15:0]		ram2_wr_addr_out,
	output	[7:0]		ram2_wr_data_out,
	output				done
);
	parameter	[8:0]	X_START = 9'h1fa;	//-6
	parameter	[8:0]	X_END 	= 9'hff;	//255
	
	//================== valid_in =============================//
	wire wr_valid_in;
	assign wr_valid_in = ram1_wr_valid_in ^ dog_wr_valid_in;
	
	//================== wr_data_out ==========================//
	assign ram1_wr_data_out = ram1_wr_data_in;
	assign ram2_wr_data_out = ram2_wr_valid_in ? ram2_wr_data_in : dog_wr_data_in;

	//==================  wr_addr_out ========================//
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
	
	assign ram1_wr_addr_out = reg_y[8] ? 16'h00fa					: {reg_y[7:0] , reg_x[7:0]};
	assign ram2_wr_addr_out = reg_y[8] ? {reg_x[7:0] , reg_y[7:0]} 	: {reg_y[7:0] , reg_x[7:0]};
	
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
	
	//================  wr_wr_valid_out ========================//
	//while reg_x is -6 to -1, the wr_data_in is invalid
	//reg wr_wr_valid_out_r;
	assign ram1_wr_valid_out = ram1_wr_valid_in & (~reg_x[8]);
	assign ram2_wr_valid_out = wr_valid_in & (~reg_x[8]);
	
	//================    done   ========================//
	assign done = x_end_flag && y_end_flag;  
	
endmodule