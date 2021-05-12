//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// Create Date:
// Design Name: 
// Module Name:
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale       1ns / 1ps

module gauss_filter_5x5_tb;
    // files
    parameter FILE_IMG_S = "E:/projects/gauss_filter_5x5/sim_files/s.mem";
    parameter FILE_IMG_D = "E:/projects/gauss_filter_5x5/sim_files/d.mem";
    // clock period ns
    parameter PERIOD  =  10;


    // ============================================================
    // uut
    // ============================================================
    reg         clk        ; // clock
    reg         start      ; //
    wire        finish     ; //
    wire        imgs_rd_en ; // source ram, rd only: read enable
    wire [ 9:0] imgs_rd_px ; //                      x [-255,510] 
    wire [ 9:0] imgs_rd_py ; //                      y [-255,510]
    wire [ 7:0] imgs_rd_dt ; //                      data in
    wire        imgs_rd_vl ; //                      data in valid 
    wire        imgd_rd_en ; // dest ram, rd: read enable
    wire [ 9:0] imgd_rd_px ; //               x [-255,510] 
    wire [ 9:0] imgd_rd_py ; //               y [-255,510]
    wire [ 7:0] imgd_rd_dt ; //               read data
    wire        imgd_rd_vl ; //               read data valid 
    wire        imgd_wr_en ; //           wr: write enable 
    wire [ 9:0] imgd_wr_px ; //               x [-255,510]
    wire [ 9:0] imgd_wr_py ; //               y [-255,510]
    wire [ 7:0] imgd_wr_dt ; //               write data

    gauss_filter_5x5 uut(
        .clk        ( clk        ), // clock
        .start      ( start      ), //
        .finish     ( finish     ), //
        .imgs_rd_en ( imgs_rd_en ), // source ram, rd only: read enable
        .imgs_rd_px ( imgs_rd_px ), //                      x [-255,510] 
        .imgs_rd_py ( imgs_rd_py ), //                      y [-255,510]
        .imgs_rd_dt ( imgs_rd_dt ), //                      data in
        .imgs_rd_vl ( imgs_rd_vl ), //                      data in valid 
        .imgd_rd_en ( imgd_rd_en ), // dest ram, rd: read enable
        .imgd_rd_px ( imgd_rd_px ), //               x [-255,510] 
        .imgd_rd_py ( imgd_rd_py ), //               y [-255,510]
        .imgd_rd_dt ( imgd_rd_dt ), //               read data
        .imgd_rd_vl ( imgd_rd_vl ), //               read data valid 
        .imgd_wr_en ( imgd_wr_en ), //           wr: write enable 
        .imgd_wr_px ( imgd_wr_px ), //               x [-255,510]
        .imgd_wr_py ( imgd_wr_py ), //               y [-255,510]
        .imgd_wr_dt ( imgd_wr_dt )  //               write data
    );
    
    // ============================================================
    // image buf
    // ============================================================
    reg  [7:0] tb_mem [65535:0];
    reg        tb_wr_en =  1'd0;
    reg  [9:0] tb_wr_px = 10'd0;
    reg  [9:0] tb_wr_py = 10'd0;
    reg  [7:0] tb_wr_dt =  8'd0;
    
    // source img buf
    imgbuf u_imgbuf_s(
        .clk     ( clk ),
        .rd_en_1 ( imgs_rd_en ), // read  port 1 enable
        .rd_px_1 ( imgs_rd_px ), //              x [-255,510] 
        .rd_py_1 ( imgs_rd_py ), //              y [-255,510]
        .rd_dt_1 ( imgs_rd_dt ), //       data output
        .rd_vl_1 ( imgs_rd_vl ), //       data valid 
        .rd_en_2 (  1'd0      ), // read  port b
        .rd_px_2 ( 10'd0      ), //       x [-255,510] 
        .rd_py_2 ( 10'd0      ), //       y [-255,510]
        .rd_dt_2 ( /*NC*/     ), //       data output
        .rd_vl_2 ( /*NC*/     ), //       data valid 
        .wr_en_1 ( tb_wr_en   ),  // write port a 
        .wr_px_1 ( tb_wr_px   ), //       x [-255,510]
        .wr_py_1 ( tb_wr_py   ), //       y [-255,510]
        .wr_dt_1 ( tb_wr_dt   ), //       data
        .wr_en_2 (  1'd0      ), // write port b
        .wr_px_2 ( 10'd0      ), //       x [-255,510]
        .wr_py_2 ( 10'd0      ), //       y [-255,510]
        .wr_dt_2 (  8'd0      )  //       data
    );

    // dest img buf
    reg        tb_rd_en = 1'b0;
    reg  [9:0] tb_rd_px = 1'b0;
    reg  [9:0] tb_rd_py = 1'b0;
    wire [7:0] tb_rd_dt;
    wire       tb_rd_vl;
    
    imgbuf u_imgbuf_d(
        .clk     ( clk ),
        .rd_en_1 ( imgd_rd_en ), // read  port 1 enable
        .rd_px_1 ( imgd_rd_px ), //              x [-255,510] 
        .rd_py_1 ( imgd_rd_py ), //              y [-255,510]
        .rd_dt_1 ( imgd_rd_dt ), //       data output
        .rd_vl_1 ( imgd_rd_vl ), //       data valid 
        .rd_en_2 ( tb_rd_en   ), // read  port 2
        .rd_px_2 ( tb_rd_px   ), //       x [-255,510] 
        .rd_py_2 ( tb_rd_py   ), //       y [-255,510]
        .rd_dt_2 ( tb_rd_dt   ), //       data output
        .rd_vl_2 ( tb_rd_vl   ), //       data valid 
        .wr_en_1 ( imgd_wr_en ),  // write port 1 
        .wr_px_1 ( imgd_wr_px ), //       x [-255,510]
        .wr_py_1 ( imgd_wr_py ), //       y [-255,510]
        .wr_dt_1 ( imgd_wr_dt ), //       data
        .wr_en_2 (  1'd0      ), // write port 2
        .wr_px_2 ( 10'd0      ), //       x [-255,510]
        .wr_py_2 ( 10'd0      ), //       y [-255,510]
        .wr_dt_2 (  8'd0      )  //       data
    );
    

    // ================================
    // Initialize
    // ================================
    integer tb_x = 0;
    integer tb_y = 0;
    integer tb_file_dest = 0;
    initial begin
        // Initialize Inputs
        clk   = 1'b0 ;
        start = 1'b0 ;

        // Wait 100 ns for global reset to finish
        #106   ;
        
        // load source image
        $display ("\n\n  [run -all] to load [%s] to mem_org and continue.\n", FILE_IMG_S);
        $stop;
        $readmemh(FILE_IMG_S, gauss_filter_5x5_tb.tb_mem );
    
        // load img
        for( tb_y = 0; tb_y < 256; tb_y = tb_y + 1) begin
            for( tb_x = 0; tb_x < 256; tb_x = tb_x + 1) begin
                tb_wr_en <= 1'b1;
                tb_wr_px <= tb_x;                
                tb_wr_py <= tb_y;
                tb_wr_dt <= tb_mem[tb_y*256 + tb_x];
                #PERIOD;
            end
        end
        tb_wr_en <=  1'd0;
        tb_wr_px <= 10'd0;                
        tb_wr_py <= 10'd0;
        tb_wr_dt <=  8'd0;
        #(PERIOD*10);

       // start 
        start = 1'b1;   #PERIOD;
        start = 1'b0;
            
        // wait finish ( coding started when locating finished )
        while( ~finish ) #(PERIOD);
        #PERIOD;
        
        // readout result
        tb_file_dest = $fopen( FILE_IMG_D, "w");
        if ( tb_file_dest == 0 ) begin
            $display("\nERR: could NOT open [%s], finish simulation!\n", FILE_IMG_D);
            $finish;
        end else begin
            $display ("write result to [%s].....\n", FILE_IMG_D);
            $fwrite( tb_file_dest, "//  256  256\n");
        end
        
        for( tb_y = 0; tb_y < 256; tb_y = tb_y + 1) begin
            for( tb_x = 0; tb_x < 256; tb_x = tb_x + 1) begin
                tb_rd_en <= 1'b1;
                tb_rd_px <= tb_x;                
                tb_rd_py <= tb_y;
                #PERIOD;
            end
        end
        tb_rd_en <=  1'd0;
        tb_rd_px <= 10'd0;                
        tb_rd_py <= 10'd0;
         
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
            $fwrite( tb_file_dest, "%H ", tb_rd_dt );
            if( tb_cnt == 256 ) begin
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
    always begin
        clk = 1'b0;  #(PERIOD/2) 
        clk = 1'b1;  #(PERIOD/2);
    end      
        
endmodule
