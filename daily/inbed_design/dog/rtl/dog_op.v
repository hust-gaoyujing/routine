
// 7*7 Gaussian Blur: 
//      do[n]	= 	di[n-3]  + 	6*di[n-2]  +  15*di[n-1]  +  20*di[n]  +  15*di[n+1]  +  6*di[n+2]  +  di[n+3]
//			  	= 	(di[n-3]  + di[n+3])  +  20*di[n]  +  6*(di[n-2]  + di[n+2])  +  15*(di[n-1]  +  di[n+1]) 	
//        			   \_____ + _____/        \ * /      6 * (  \____ + ____/  )  +   15*(  \____ + ____/  )  
//Levell					step1_0    +      step1_1  +    6 *    step1_2        +      16    *   step1_3   + (-step1_3)
//								\______ + ______/      +     \__ * __/            +       \___ * ___/              /
//Level2 							 step2_0	       +       step2_1            +          step2_2      +     step2_3        
//                                      \_____________ + _________/               +             \________ + _____/
//Level3                                             step3_0                      +                    step3_1
//                                                     \_________________________ + _____________________/
//Level4                                                                        step4_0
//																  				  | 	
//																				(/  %)
//Level5                                  										step5_0
//
//
//
//
module gs_filter_5x5(
	input 				clk,
	input 				rst_n,
	input				ram0_valid_in,   
	input	[7:0]		ram0_data_in,  	
	input				ram1_valid_in,   
	input	[7:0]		ram1_data_in,	
	
	output				op_valid_out,
	output	[7:0]		op_data_out
);
	parameter KERNEL = 5;
	
	//=============== input data mux ====================//
	wire [7:0]	op_data_in;
	wire 		op_valid_in;
	
	assign op_valid_in = ram0_valid_in ^ ram1_valid_in;
	assign op_data_in = ram0_valid_in ? ram0_data_in : ram1_data_in; 
	
	//==================== fifo ==========================// 
	//fifo for storing the input data
	reg		[7:0]		op_data_0;
	reg		[7:0]		op_data_1;
	reg		[7:0]		op_data_2;
	reg		[7:0]		op_data_3;
	reg		[7:0]		op_data_4;
	reg		[7:0]		op_data_5;
	reg		[7:0]		op_data_6;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			op_data_0 <= 8'b0;
		    op_data_1 <= 8'b0;
		    op_data_2 <= 8'b0;
		    op_data_3 <= 8'b0;
		    op_data_4 <= 8'b0;
		    op_data_5 <= 8'b0;
		    op_data_6 <= 8'b0;
		end 
		else if(op_valid_in) begin 
			op_data_0 <= op_data_in;		
            op_data_1 <= op_data_0 ;
		    op_data_2 <= op_data_1 ;
		    op_data_3 <= op_data_2 ;
		    op_data_4 <= op_data_3 ;
		    op_data_5 <= op_data_4 ;
		    op_data_6 <= op_data_5 ;
		end 
	
	//========== Calculation of 7*7 gs_blur ================//
	//temporary reg for storing calculation result
	//step 1
	reg 	[8:0] 		step1_0; 	
	reg 	[11:0] 		step1_1;	
	reg 	[8:0] 		step1_2;
	reg 	[8:0] 		step1_3;
	//step 2
	reg 	[12:0]		step2_0;
	reg		[10:0]		step2_1;
	reg		[12:0]		step2_2;
	reg		[8:0]		step2_3;
	//step 3
	reg		[13:0]		step3_0;
	reg		[12:0]		step3_1;
	//step 4
	reg 	[13:0]		step4_0;
	//step 5
	reg 	[7:0]		step5_0;
	
	assign op_data_out = step4_0;
	//calculation 
	//step 1
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			step1_0 <= 0;
		    step1_1 <= 0;
		    step1_2 <= 0;
		    step1_3 <= 0;
		end 
		else begin 
			step1_0 <= 	{1'b0 , op_data_0 		} + {1'b0 , op_data_6 		};
		    step1_1 <= 	{		op_data_3 , 4'b0} + {2'b0 , op_data_3 , 2'b0};
		    step1_2 <= 	{1'b0 , op_data_1 		} + {1'b0 , op_data_5 		};
		    step1_3 <= 	{1'b0 , op_data_2 		} + {1'b0 , op_data_4 		};
		end
	
	//step 2
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			step2_0 <= 0;
		    step2_1	<= 0;
		    step2_2	<= 0;
		    step2_3	<= 0;
		end 
		else begin 
			step2_0 <= 	{4'b0 , step1_0 ,		} + {1'b0 , step1_1			};
		    step2_1 <=  {   	step1_2 , 2'b0	} + {    	step1_2 , 1'b0	};
		    step2_2 <=  {   	step1_3 , 4'b0	} 							 ;
		    step2_3 <=  (       ~step1_3		) +  1						 ;
		end 
	
	//step 3
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			step3_0 <= 0;
			step3_1 <= 0;
		end 
		else begin 
			step3_0 <=  {1'b0 , step2_0			} + {3'b0 , step2_1			}; 
			step3_1 <= 	{       step2_2 		} + {4'b0 , step2_3			}; 
		end 	

	//step 4
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			step4_0 <= 0;
		else
			step4_0 <= 	{		step3_0 		} + {1'b0 , step3_1			}; 
			
	//step 5
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			step5_0 <= 8'b0;
		else
			step5_0 <= step3_0[13:6] + step3_0[5]; 
			
	//================  op_valid_out ======================//
	reg [KERNEL:1]	valid_shift_r;
	assign op_valid_out = valid_shift_r[KERNEL];
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			valid_shift_r <= 0;
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