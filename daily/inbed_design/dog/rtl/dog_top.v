

module dog_top(
	input 				clk					,
	input 				rst_n               ,
	input				start               ,
	input				ram0_valid_in       ,
	input	[7:0]		ram0_data_in        ,
	input				ram1_valid_in       ,
	input	[7:0]		ram1_data_in	    ,
											
	output	[15:0]		ram0_rd_addr_o	    ,
	output				ram0_rd_valid_o     ,
	output	[15:0]		ram1_rd_addr_o      ,
	output				ram1_rd_valid_o     ,
	output				ram1_wr_valid_o		,
	output  [15:0]      ram1_wr_addr_o      ,
	output  [7:0]       ram1_wr_data_o      ,
	output 				done
);


	wire 			op_wr_valid;
	wire [7:0]		op_wr_data;

	dog_dt_rd	u_dog_dt_rd(
		.clk				(	clk				),
		.rst_n              (	rst_n           ),
		.start              (	start           ),
												
		.ram0_rd_valid_out  (	ram0_rd_valid_o ),
		.ram0_rd_addr_out   (   ram0_rd_addr_o 	),
		.ram1_rd_valid_out  (   ram1_rd_valid_o ),
		.ram1_rd_addr_out   (   ram1_rd_addr_o	)
	);
	
	
	dog_op 	u_dog_op(
		.clk				(	clk				),	
		.rst_n       		(	rst_n			),
		.ram0_valid_in 		(	ram0_valid_in   ),	
		.ram0_data_in  		(	ram0_data_in  	),	
		.ram1_valid_in 		(	ram1_valid_in   ),	
		.ram1_data_in  		(	ram1_data_in	),
		
		.op_valid_out		(	op_wr_valid     ),
		.op_data_out 		(	op_wr_data      )
	);
	
	
	dog_dt_wr	u_dog_dt_wr(
		.clk				(	clk					),
		.rst_n              (	rst_n               ),
		.wr_valid_in        (	op_wr_valid         ),
		.wr_data_in         (	op_wr_data          ),
	
		.wr_valid_out       (	ram1_wr_valid_o   	),
		.wr_addr_out        (   ram1_wr_addr_o    	),
		.wr_data_out        (   ram1_wr_data_o    	),
		.done               (	done                )
	);

endmodule 