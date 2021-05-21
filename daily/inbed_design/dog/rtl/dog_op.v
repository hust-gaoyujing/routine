
// 7*7 Gaussian Blur: 
//      do[n]	= 	di[n-3]  + 	6*di[n-2]  +  15*di[n-1]  +  20*di[n]  +  15*di[n+1]  +  6*di[n+2]  +  di[n+3]
//			  	= 	(di[n-3]  + di[n+3])  +  20*di[n]  +  6*(di[n-2]  + di[n+2])  +  15*(di[n-1]  +  di[n+1]) 	
//        			   \_____ + _____/        \ * /      6 * (  \____ + ____/  )  +   15*(  \____ + ____/  )  
//Levell					gs7_1_0    +      gs7_1_1  +    6 *    gs7_1_2        +      16    *   gs7_1_3   + (~gs7_1_3)
//								\______ + ______/      +     \__ * __/            +       \___ * ___/  + _________/
//Level2 							 gs7_2_0	       +       gs7_2_1            +                gs7_2_2  + 1            
//                                      \_____________ + _________/               +              	 \___ + __/	  	
//Level3                                             gs7_3_0                      +                    gs7_3_1
//                                                     \_________________________ + _____________________/
//Level4                                                                        gs7_4_0
//																  				  | 	
//																				(/  %)
//Level5                                  										gs7_5_0
//																				  
//																					
// 3*3 Gaussian Blur:																
//		do[n]	= 	di[n-1]  + 	2*di[n]  +  di[n+1]								
//				=	di[n-1]	 +	di[n+1]	 +	2	*	di[n] 
//						\___ + ___/      +  \__ * ___/
//Level 1				   gs3_1_0       +     gs3_1_1
//							  \_________ + _______/	
//Level 2                             gs3_2_0
//										 |
//									   ( / % )	
//Level 3							  gs3_3_0
//										 |
//									   invert + 1		
//Level 4						      gs3_4_0 			
//										 
//
//
//
//
//

module dog_op(
	input 				clk,
	input 				rst_n,
	input				ram0_valid_in,   
	input	[7:0]		ram0_data_in,  	
	input				ram1_valid_in,   
	input	[7:0]		ram1_data_in,
	input			   	ram2_valid_in,
	input	[7:0]		ram2_data_in,
	
	output				ram1_valid_out,
	output	[7:0]		ram1_data_out,
	output				ram2_valid_out,
	output	[7:0]		ram2_data_out,
	output				dog_valid_out,
	output	[7:0]		dog_data_out
);
	parameter DELAY = 6;
	
	//=============== input data mux ====================//
	wire		gs_valid_in;
	wire [7:0]	gs7_data_in;
	wire [7:0]	gs3_data_in;
	
	assign gs_valid_in 	= ram0_valid_in ^ ram1_valid_in;
	assign gs7_data_in	= ram0_valid_in ? ram0_data_in : ram1_data_in; 
	assign gs3_data_in 	= ram0_valid_in ? ram0_data_in : ram2_data_in; 
	
	//==================gs7*7 fifo ==========================// 
	//fifo for storing the input data
	reg		[7:0]		gs7_data_0;
	reg		[7:0]		gs7_data_1;
	reg		[7:0]		gs7_data_2;
	reg		[7:0]		gs7_data_3;
	reg		[7:0]		gs7_data_4;
	reg		[7:0]		gs7_data_5;
	reg		[7:0]		gs7_data_6;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			gs7_data_0 <= 8'b0;
		    gs7_data_1 <= 8'b0;
		    gs7_data_2 <= 8'b0;
		    gs7_data_3 <= 8'b0;
		    gs7_data_4 <= 8'b0;
		    gs7_data_5 <= 8'b0;
		    gs7_data_6 <= 8'b0;
		end 
		else if(gs_valid_in) begin 
			gs7_data_0 <= gs7_data_in;		
            gs7_data_1 <= gs7_data_0 ;
		    gs7_data_2 <= gs7_data_1 ;
		    gs7_data_3 <= gs7_data_2 ;
		    gs7_data_4 <= gs7_data_3 ;
		    gs7_data_5 <= gs7_data_4 ;
		    gs7_data_6 <= gs7_data_5 ;
		end 

	//==================gs3*3 fifo ==========================// 
	//fifo for storing the input data
	reg		[7:0]		gs3_data_0;
	reg		[7:0]		gs3_data_1;
	reg		[7:0]		gs3_data_2;
	reg		[7:0]		gs3_data_3;
	reg		[7:0]		gs3_data_4;
	reg		[7:0]		gs3_data_5;
	reg		[7:0]		gs3_data_6;
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			gs3_data_0 <= 8'b0;
		    gs3_data_1 <= 8'b0;
		    gs3_data_2 <= 8'b0;
		    gs3_data_3 <= 8'b0;
		    gs3_data_4 <= 8'b0;
		    gs3_data_5 <= 8'b0;
		    gs3_data_6 <= 8'b0;
		end 
		else if(gs_valid_in) begin 
			gs3_data_0 <= gs3_data_in;		
            gs3_data_1 <= gs3_data_0 ;
		    gs3_data_2 <= gs3_data_1 ;
		    gs3_data_3 <= gs3_data_2 ;
		    gs3_data_4 <= gs3_data_3 ;
		    gs3_data_5 <= gs3_data_4 ;
		    gs3_data_6 <= gs3_data_5 ;
		end
	
	//========== Calculation of 7*7 gs_blur ================//
	//temporary reg for storing calculation result
	//Level 1
	reg 	[8:0] 		gs7_1_0; 	
	reg 	[12:0] 		gs7_1_1;	
	reg 	[8:0] 		gs7_1_2;
	reg 	[8:0] 		gs7_1_3;
	//Level 2
	reg 	[12:0]		gs7_2_0;
	reg		[11:0]		gs7_2_1;
	reg		[12:0]		gs7_2_2;
	//Level 3
	reg		[13:0]		gs7_3_0;
	reg		[12:0]		gs7_3_1;
	//Level 4
	reg 	[13:0]		gs7_4_0;
	//Level 5
	reg 	[7:0]		gs7_5_0;
	
	//calculation 
	//Level 1
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			gs7_1_0 <= 	0;
		    gs7_1_1 <= 	0;
		    gs7_1_2 <= 	0;
		    gs7_1_3 <= 	0;
		end 
		else begin 
			gs7_1_0 <= 	{1'b0 , gs7_data_0 			} + {1'b0 , gs7_data_6 			};
		    gs7_1_1 <= 	{1'b0 ,	gs7_data_3 , 4'b0	} + {3'b0 , gs7_data_3 , 2'b0	};
		    gs7_1_2 <= 	{1'b0 , gs7_data_1 			} + {1'b0 , gs7_data_5 			};
		    gs7_1_3 <= 	{1'b0 , gs7_data_2 			} + {1'b0 , gs7_data_4 			};
		end
	
	//Level 2
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			gs7_2_0 <= 	0;
		    gs7_2_1	<= 	0;
		    gs7_2_2	<= 	0;
		end 
		else begin 
			gs7_2_0 <= 	{4'b0 , gs7_1_0 			} + {	 	gs7_1_1				};
		    gs7_2_1 <=  {1'b0 ,	gs7_1_2 , 2'b0		} + {2'b0 , gs7_1_2 , 1'b0		};
		    gs7_2_2 <=  {   	gs7_1_3 , 4'b0		} + {4'hf , ~gs7_1_3 			};
		end 
	
	//Level 3
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			gs7_3_0 <= 	0;
			gs7_3_1 <= 	0;
		end 
		else begin 
			gs7_3_0 <=  {		gs7_2_0				} + {1'b0 , gs7_2_1				}; 
			gs7_3_1 <= 	{       gs7_2_2 			} + 1							 ; 
		end 	

	//Level 4
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			gs7_4_0 <= 	0;
		else
			gs7_4_0 <= 	{1'b0 , gs7_3_0 			} + {1'b0 , gs7_3_1				}; 
			
	//Level 5
	always @(posedge clk or negedge rst_n)
		if(!rst_n) 
			gs7_5_0 <= 	8'b0;
		else
			gs7_5_0 <= 	gs7_4_0[13:6] + gs7_4_0[5]; 
			
	//========== Calculation of 3*3 gs_blur ================//
	//temporary reg for storing calculation result
	//Level 1
	reg 	[9:0] 		gs3_1_0; 	
	reg 	[7:0] 		gs3_1_1; 	
	//Level 2
	reg		[9:0]		gs3_2_0;
	//Level 3
	reg 	[7:0]		gs3_3_0;
	
	//calculation 
	//Level 1
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			gs3_1_0 <= 	0;
		    gs3_1_1 <= 	0;
		end 
		else begin 
			gs3_1_0 <= 	{1'b0 , gs3_data_3 		} + {		gs3_data_5 , 1'b0};
		    gs3_1_1 <= 	gs3_data_5;
		end	
	
	//Level 2
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			gs3_2_0 <= 	0;
		else 
			gs3_2_0 <= 	{ 		gs3_1_0			} + {2'b0 , gs3_1_1			};		
	
	//Level 3 
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			gs3_3_0 <= 0;
		else 
			gs3_3_0 <= 	gs3_2_0[9:2] + gs3_2_0[1];
			
	//================== data output =================//
	//================== dog by gs3*3 - gs7*7=========// 
	reg 	[8:0] 		dog_tmp_r;
	reg 	[7:0] 		dog_out_r;
	
	assign ram1_data_out 	= gs7_5_0;
	assign ram2_data_out 	= gs3_3_0;
	assign dog_data_out	 	= dog_out_r;	
	
	//dog_out_r = gs3_3_0 - gs7_5_0 + 128
	always @(posedge clk or negedge rst_n)
		if(!rst_n) begin 
			dog_tmp_r <= 0;
			dog_out_r <= 0;
		end 
		else if(ram1_valid_in) begin 
			dog_tmp_r <= {1'b0 , gs3_3_0		} + {1'b0 , ~gs7_5_0		}; 	
			dog_out_r <= dog_tmp_r[7:0] + 129;
		end 
	
	//================  valid_out ======================//
	reg [DELAY:1]	ram_valid_shift_r;
	reg [DELAY+2:1]	dog_valid_shift_r;
	assign ram1_valid_out	= ram_valid_shift_r[DELAY];
	assign ram2_valid_out	= ram_valid_shift_r[DELAY];
	assign dog_valid_out	= dog_valid_shift_r[DELAY+1];
	
	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			ram_valid_shift_r <= 0;
		else 
			ram_valid_shift_r <= {ram_valid_shift_r[DELAY - 1:1] , ram0_valid_in};

	always @(posedge clk or negedge rst_n)
		if(!rst_n)
			dog_valid_shift_r <= 0;
		else 
			dog_valid_shift_r <= {dog_valid_shift_r[DELAY + 1:1] , ram1_valid_in};	
	
	
	//================for debug ====================//
	//reg [8:0]  addr_cnt;
	//always @(posedge clk or negedge rst_n)
	//	if(!rst_n)
	//		addr_cnt <= 9'h1fd;
	//	else if(addr_cnt == 9'h103)
	//		addr_cnt <= 9'h1fd;
	//	else if(gs7_valid_in)
	//		addr_cnt <= addr_cnt + 1;
	
endmodule