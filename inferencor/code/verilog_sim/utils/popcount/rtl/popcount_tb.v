`timescale 1ns/1ps

module popcount_tb();

    parameter DataInWidth = 8;
    parameter DataOutWidth = 4;
    

    reg     clk;
    reg     rst;
    reg [DataInWidth-1:0] data_in;
    reg [DataOutWidth-1:0] data_out;
    integer i;

    popcount cnt(
        .clock          (clk        ),
        .reset          (rst        ),
        .io_in          (data_in    ),
        .io_out         (data_out   )
    );

    initial begin
		clk  <= 1'b0;
        rst  <= 1'b0;
	end

    forever #5 clk <= ~clk;     //100Mhz

    for(i = 0; i < 8'hff; i = i+1) begin 
        @(posedge clk);
        data_in <= i;
    end 
  

endmodule

