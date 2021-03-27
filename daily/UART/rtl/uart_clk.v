module uart_clk (
	input 	clk,
	input 	rst_n,
	input 	uart_clk_en,
	
	output 	uart_gate_clk
);

	assign uart_gate_clk = clk & uart_clk_en;

endmodule