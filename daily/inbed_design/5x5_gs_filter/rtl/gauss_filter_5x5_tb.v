`timescale       1ns / 1ps

module gauss_filter_tb();
	
	reg			clk;
	reg			rst_n;
	reg			start;
	
	wire 		done;

	parameter PERIOD = 10;
	
    // ============================================================
    // uut
    // ============================================================
	wire 			ram0_valid_in		;
	wire [7:0]		ram0_data_in       	;
	wire 			ram1_valid_in      	;
	wire [7:0]		ram1_data_in	    ;

	wire [15:0]		ram0_rd_addr_o	    ;
	wire 			ram0_rd_valid_o    	;
	wire [15:0]		ram1_rd_addr_o     	;
	wire 			ram1_rd_valid_o    	;
	wire 			ram1_wr_valid_o  	;
	wire [15:0]		ram1_wr_addr_o   	;
	wire [7:0]		ram1_wr_data_o   	;
	
	gs_filter_top 	u_gs_filter_top(
		.clk				(	clk					),	
		.rst_n              (   rst_n               ),
		.start              (   start               ),
		.ram0_valid_in      (   ram0_valid_in       ),
		.ram0_data_in       (   ram0_data_in        ),
		.ram1_valid_in      (   ram1_valid_in       ),
		.ram1_data_in	    (   ram1_data_in	    ),

		.ram0_rd_addr_o	    (   ram0_rd_addr_o	    ),
		.ram0_rd_valid_o    (   ram0_rd_valid_o     ),
		.ram1_rd_addr_o     (   ram1_rd_addr_o      ),
		.ram1_rd_valid_o    (   ram1_rd_valid_o     ),
		.ram1_wr_valid_o    (   ram1_wr_valid_o   	),
	    .ram1_wr_addr_o     (   ram1_wr_addr_o    	),
	    .ram1_wr_data_o	    (   ram1_wr_data_o    	),
		.done               (   done                )
	);
    // ============================================================
    // image buf
    // ============================================================
    reg  [15:0]		tb_mem [0:65535];
    reg        		tb_wr_en;
    reg  [16:0] 	tb_wr_addr;
    reg  [7:0] 		tb_wr_data;
    
	reg        		tb_rd_en = 0;
    reg  [16:0] 	tb_rd_addr = 0;
    wire [7:0] 		tb_rd_data;
	wire       		tb_rd_vl;
	
	mem_wrap	ram0(
		.clk				(  	clk					),
		.wea                (	tb_wr_en            ),
		.addra              (	tb_wr_addr          ),
		.dina               (	tb_wr_data          ),
													
		.enb                (   ram0_rd_valid_o     ),
		.addrb              (   ram0_rd_addr_o      ),
		.doutb              (   ram0_data_in        ),
		.validb             (   ram0_valid_in       ),		
		
		.enc                (   1'b0    			),
		.addrc              (   16'h0     			),
		.doutc              (        ),
		.validc             (        )
	);
    
	mem_wrap	ram1(
		.clk				(  	clk					),
		
		.wea                (	ram1_wr_valid_o     ),
		.addra              (	ram1_wr_addr_o      ),
		.dina               (	ram1_wr_data_o      ),
													
		.enb                (   ram1_rd_valid_o     ),
		.addrb              (   ram1_rd_addr_o      ),
		.doutb              (   ram1_data_in        ),
		.validb             (   ram1_valid_in       ),
		
		.enc                (   tb_rd_en   			),
		.addrc              (   tb_rd_addr  		),
		.doutc              (   tb_rd_data 			),
		.validc             (   tb_rd_vl			)	
		
	);
    // ================================
    // Initialize
    // ================================
    integer tb_file_dest = 0;
	initial begin
        // Initialize Inputs
        start = 1'b0 ;
		
		rst_n = 1'b1;
		#100 rst_n = 1'b0;
		#100 rst_n = 1'b1;
        
        // load source image
        $readmemh(	"data.verilog", tb_mem );
    
        // load img
        for( tb_wr_addr = 0; tb_wr_addr < 65536; tb_wr_addr = tb_wr_addr + 1) begin
			tb_wr_en = 1;
			tb_wr_data = tb_mem[tb_wr_addr];
			@(posedge clk);			
        end
		tb_wr_en = 0;
        #(PERIOD*10);

       // start
		@ (posedge clk);
        start = 1'b1;   
		@ (posedge clk);
		//#PERIOD;
        start = 1'b0;
            
        // wait finish ( coding started when locating finished )
        while(!done) 
			@(posedge clk);
        
		#(PERIOD*10);
		
		
        // readout result
		tb_file_dest = $fopen( "data_out.txt", "w");
        if ( tb_file_dest == 0 ) begin
            $display("\nERR: could NOT open file, finish simulation!\n");
            $finish;
        end else begin
            $display ("write result to file.....\n");
            //$fwrite( tb_file_dest, "//  256  256\n");
        end
        
		@ (posedge clk);
        for( tb_rd_addr = 0; tb_rd_addr < 65536; tb_rd_addr = tb_rd_addr + 1) begin
                tb_rd_en = 1'b1;
                @ (posedge clk);
        end
        tb_rd_en <=  1'd0;
         
        #(PERIOD*10)
        $fclose( tb_file_dest );
		
        $display("\n: FINISH\n");
        $finish;
    end // initial
    
    // ============================================================
    // export dest img
    // ============================================================
    integer tb_cnt = 0;
    always @( posedge clk ) begin
        if( tb_rd_vl ) begin
            $fwrite( tb_file_dest, "%D\t", tb_rd_data );
            if( tb_cnt == 255 ) begin
                tb_cnt <= 0;
                $fwrite( tb_file_dest, "\n" );
            end else begin
                tb_cnt <= tb_cnt + 1;
            end
        end
    end
    
    // ==============================
    // Clock
    // ==============================
    initial begin 
		clk = 0;
		forever #(PERIOD/2) clk = ~clk; 
    end      
        
endmodule
