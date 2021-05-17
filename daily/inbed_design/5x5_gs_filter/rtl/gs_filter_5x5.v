
module gs_filter_5x5(
	input 				clk,
	input 				rst_n,
	input				start,
	input				ram0_valid_in,   
	input	[7:0]		ram0_data_in,  	
	input				ram1_valid_in,   
	input	[7:0]		ram1_data_in,	
	
	output				op_valid_out,
	output	[7:0]		op_data_out
);
	parameter KERNEL = 5;
	
	//input data mux
	wire [7:0]	op_data_in;
	wire 		op_valid_in;
	
	assign op_valid_in = ram0_valid_in ^ ram1_valid_in;
	assign op_data_in = ram0_valid_in ? ram0_data_in : ram1_data_in; 
	
	//fifo for storing the input data
	reg		[7:0]		op_data_0;
	reg		[7:0]		op_data_1;
	reg		[7:0]		op_data_2;
	reg		[7:0]		op_data_3;
	reg		[7:0]		op_data_4;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			op_data_0 <= 8'b0;
		    op_data_1 <= 8'b0;
		    op_data_2 <= 8'b0;
		    op_data_3 <= 8'b0;
		    op_data_4 <= 8'b0;
		end 
		else if(start) begin 
			op_data_0 <= 8'b0;
		    op_data_1 <= 8'b0;
		    op_data_2 <= 8'b0;
		    op_data_3 <= 8'b0;
		    op_data_4 <= 8'b0;
		end 
		else if(op_valid_in) begin 
			op_data_0 <= op_data_in;		
            op_data_1 <= op_data_0 ;
		    op_data_2 <= op_data_1 ;
		    op_data_3 <= op_data_2 ;
		    op_data_4 <= op_data_3 ;
		end 
	
	//========== Calculation of op_data_out ===============//
	//temporary reg for storing calculation result
	//step 1
	reg 	[10:0] 		step1_0;
	reg 	[10:0] 		step1_1;
	reg 	[10:0] 		step1_2;
	//step 2
	reg 	[11:0]		step2_0;
	reg		[10:0]		step2_1;
	//step 3
	reg		[11:0]		step3_0;
	//step 4
	reg 	[7:0]		step4_0;
	
	assign op_data_out = step4_0;
	//calculation 
	//step 1
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			step1_0 <= 11'b0;
		    step1_1 <= 11'b0;
		    step1_2 <= 11'b0;
		end 
		else if(start) begin 
			step1_0 <= 11'b0;
		    step1_1 <= 11'b0;
		    step1_2 <= 11'b0;
		end 
		else begin 
		//else if(op_valid_in) begin 
			step1_0 <= op_data_0 		+ (op_data_1 << 2);
		    step1_1 <= (op_data_2 << 2) + (op_data_2 << 1);
		    step1_2 <= (op_data_3 << 2) + op_data_4		;
		end
	
	//step 2
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			step2_0 <= 12'b0;
		    step2_1	<= 11'b0;
		end 
		else if(start) begin 
			step2_0 <= 12'b0;
		    step2_1	<= 11'b0;
		end 
		else begin 
		//else if(op_valid_in) begin 
			step2_0 <= step1_0 + step1_1;
		    step2_1 <= step1_2;
		end 
	
	//step 3
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			step3_0 <= 12'b0;
		else if(start)
			step3_0 <= 12'b0;
		else
		//else if(op_valid_in) 
			step3_0 <= step2_0 + step2_1; 
		
	//step 4
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			step4_0 <= 8'b0;
		else if(start)
			step4_0 <= 8'b0;
		//else if(op_valid_in)
		else
			step4_0 <= (step3_0 >> 4) + step3_0[3]; 
			
	//================  op_valid_out ======================//
	reg [KERNEL:1]	valid_shift_r;
	assign op_valid_out = valid_shift_r[KERNEL];
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			valid_shift_r <= KERNEL'b0;
		else if(start)
			valid_shift_r <= KERNEL'b0;
		else 
			valid_shift_r <= {valid_shift_r[KERNEL - 1:1] , op_valid_in};
	
	
	//================for debug ====================//
	reg [8:0]  addr_cnt;
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			addr_cnt <= 9'h1fe;
		else if(addr_cnt == 9'h101)
			addr_cnt <= 9'h1fe;
		else if(op_valid_in)
			addr_cnt <= addr_cnt + 1;
	
	
endmodule