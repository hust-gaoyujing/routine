module mem_wrap(
	input 				clk,
	
	input				wea,
	input	[15:0]		addra,
	input	[7:0]		dina,

	input				enb,
	input	[15:0]		addrb,
	output	[7:0]		doutb,
	output 				validb,

	input				enc,
	input	[15:0]		addrc,
	output	[7:0]		doutc,
	output 				validc	
);
	
	
	reg validb_r;
	assign validb = validb_r;
	
	always @(posedge clk)
		validb_r <= enb;

	reg validc_r;
	assign validc = validc_r;
	
	always @(posedge clk)
		validc_r <= enc;
	
	//read mux
	wire en_rd;
	wire [15:0] addr_rd;
	wire [7:0] 	dout_rd;
	
	assign en_rd = enb | enc;
	assign addr_rd = 	enb ? addrb : 
						enc ? addrc :
						16'h0;
	assign 	doutb = validb ? dout_rd : 16'h0;
	assign 	doutc = validc ? dout_rd : 16'h0;
	
	
	
	mem_ip 	u_mem(
		.clka  				( 	clk	       		),
		.wea   				( 	wea				),
		.addra 				( 	addra			),
		.dina  				( 	dina   			),
		
		.clkb  				( 	clk	  			),
		.enb   				( 	en_rd  			),
		.addrb 				( 	addr_rd			),
		.doutb 				( 	dout_rd			) 
	);
	

endmodule