

module dog_top(
	input 				clk					,
	input 				rst_n               ,
	input				start               ,
	input				ram0_valid_in       ,
	input	[7:0]		ram0_data_in        ,
	input				ram1_valid_in       ,
	input	[7:0]		ram1_data_in	    ,
	input				ram2_valid_in       ,		
	input	[7:0]		ram2_data_in	    ,	
	
	//dt_rd_out
	output	[15:0]		ram0_rd_addr_o	    ,
	output				ram0_rd_valid_o     ,
	output	[15:0]		ram1_rd_addr_o      ,
	output				ram1_rd_valid_o     ,
	output	[15:0]		ram2_rd_addr_o      ,
	output				ram2_rd_valid_o     ,
	//dt_wr_out
	output				ram1_wr_valid_o 	,
	output  [15:0]      ram1_wr_addr_o      ,
	output  [7:0]       ram1_wr_data_o      ,
	output				ram2_wr_valid_o 	,
	output  [15:0]      ram2_wr_addr_o      ,
	output  [7:0]       ram2_wr_data_o      ,
	output 				done
);


	wire 			ram1_wr_valid_op;
	wire [7:0]		ram1_wr_data_op ;
	wire 			ram2_wr_valid_op;
	wire [7:0]		ram2_wr_data_op ;
	wire 			dog_wr_valid_op;
	wire [7:0]		dog_wr_data_op ;
	
	dog_dt_rd	u_dog_dt_rd(
		.clk				(	clk					),
		.rst_n              (	rst_n           	),
		.start              (	start           	),
													
		.ram0_rd_valid_out  (	ram0_rd_valid_o 	),
		.ram0_rd_addr_out   (   ram0_rd_addr_o 		),
		.ram1_rd_valid_out  (   ram1_rd_valid_o 	),
		.ram1_rd_addr_out   (   ram1_rd_addr_o		),
		.ram2_rd_valid_out  (   ram2_rd_valid_o 	),
	    .ram2_rd_addr_out   (   ram2_rd_addr_o		)
	);	
		
		
	dog_op 	u_dog_op(	
		.clk				(	clk					),	
		.rst_n       		(	rst_n				),
		.ram0_valid_in 		(	ram0_valid_in   	),	
		.ram0_data_in  		(	ram0_data_in  		),	
		.ram1_valid_in 		(	ram1_valid_in   	),	
		.ram1_data_in  		(	ram1_data_in		),
		.ram2_valid_in 		(	ram2_valid_in   	),
		.ram2_data_in  		(	ram2_data_in		),
		
		.ram1_valid_out		(	ram1_wr_valid_op    ),
		.ram1_data_out		(	ram1_wr_data_op     ),
		.ram2_valid_out		(	ram2_wr_valid_op    ),
		.ram2_data_out		(	ram2_wr_data_op     ),
		.dog_valid_out		(	dog_wr_valid_op 	),
	    .dog_data_out		(	dog_wr_data_op  	)
	);
	
	
	dog_dt_wr	u_dog_dt_wr(
		.clk				(	clk					),
		.rst_n              (	rst_n               ),
		.ram1_wr_valid_in   (	ram1_wr_valid_op    ),
		.ram1_wr_data_in    (	ram1_wr_data_op     ),
		.ram2_wr_valid_in   (	ram2_wr_valid_op    ),
		.ram2_wr_data_in    (	ram2_wr_data_op     ),
		.dog_wr_valid_in   	(	dog_wr_valid_op    	),
		.dog_wr_data_in    	(	dog_wr_data_op     	),
	
		.ram1_wr_valid_out  (	ram1_wr_valid_o   	),
		.ram1_wr_addr_out   (   ram1_wr_addr_o    	),
		.ram1_wr_data_out   (   ram1_wr_data_o    	),
		.ram2_wr_valid_out  (	ram2_wr_valid_o   	),
		.ram2_wr_addr_out   (   ram2_wr_addr_o    	),
		.ram2_wr_data_out   (   ram2_wr_data_o    	),		
		.done               (	done                )
	);

endmodule 