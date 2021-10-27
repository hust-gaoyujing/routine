`timescale 1ns/1ps

module popcount_tb();

    parameter DataInWidth = 16;
    parameter DataOutWidth = 5;
    

    reg     clk;
    reg     rst;
    reg [DataInWidth-1:0] data_in;
    wire [DataOutWidth-1:0] data_out;
    reg [DataOutWidth-1:0] data_mon;
    integer i,j;

    popcount cnt(
        .clock          (clk        ),
        .reset          (rst        ),
        .io_in          (data_in    ),
        .io_out         (data_out   )
    );

    initial begin
		clk  <= 1'b0;
        rst  <= 1'b0;
        forever #0.5 clk <= ~clk;     //1000Mhz
	end
 
    initial begin 
        data_in = 0;
        data_mon = 0;
        #200;
        @(posedge clk);
        for(i = 0; i <= {DataInWidth{1'b1}}; i = i+1) begin 

            @(posedge clk);	
            data_in = i;
            data_mon = 0;
            for(j = 0; j < DataInWidth; j = j+1) begin
                data_mon = data_mon + data_in[j];
            end
            #0.01; 
            if(data_out != data_mon)  begin 
			    $display("===============================");
			    $display("=============FAILED============");
			    $display("===============================");
                $finish;
            end 
        end 
        #100;
        $display("===============================");
		$display("=============SUCCEED===========");
		$display("===============================");
        $finish;

    end 
  

endmodule

