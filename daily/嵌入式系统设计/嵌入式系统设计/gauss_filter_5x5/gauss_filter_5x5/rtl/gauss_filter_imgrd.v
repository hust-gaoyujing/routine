//////////////////////////////////////////////////////////////////////////////////
// Company       : 
// Engineer      : 
// 
// Create Date   : 
// Design Name   : 
// Module Name   : 
// Project Name  : 
// Target Devices: 
// Tool versions : 
// Description   : 
//                 gauss filter image reader
// Dependencies  : 
//
// Revision      : 1.00 
// Additional Comments:
//      
//      step = 0 : read from sram,  raw scan
//      step = 1 : read from dram,  col scan
//////////////////////////////////////////////////////////////////////////////////
`default_nettype none

module gauss_filter_imgrd(
    input  wire       clk        ,
    input  wire       start      ,
    output wire       sram_rd_en , // read source ram   
    output wire [9:0] sram_rd_px , //     FIX_9,  [-2,257]
    output wire [9:0] sram_rd_py , //     FIX_9,  [ 0,255]
    output wire       dram_rd_en , // read dest ram   
    output wire [9:0] dram_rd_px , //     FIX_9,  [ 0,255]
    output wire [9:0] dram_rd_py   //     FIX_9,  [-2,257]
);
    localparam [9:0] X_MIN = 10'h3_FE;  // -2
    localparam [9:0] X_MAX = 10'h1_01;  // 257

    reg [9:0] r_x = 10'd0;  // [-2,257]
    reg [8:0] r_y =  9'd0;  // step = r_y[8]; y=r_y[7:0] [0,255]

    wire is_end_x;
    wire is_end_y;

    assign is_end_x = ( r_x == X_MAX ) ? 1'b1 : 1'b0;
    assign is_end_y =  & r_y ;

    // ================================
    // en
    // ================================
    reg en  =  1'd0;
    always @( posedge clk ) begin
             if( start               ) en <= 1'b1;
        else if( is_end_x & is_end_y ) en <= 1'b0; 
    end        

    // ================================
    // scanner
    //      FOR step = 0 TO 1 BEGIN  
    //          FOR y=0 TO 255
    //              FOR x=-2 TO 257
    // ================================
    
    // scan x
    always @( posedge clk ) begin
             if( start | is_end_x ) r_x <= X_MIN       ;
        else if( en               ) r_x <= r_x + 10'd1 ; 
    end
    
    // scan y & step
    always @( posedge clk ) begin
             if( start    ) r_y <= 9'd0;
        else if( is_end_x ) r_y <= r_y + 9'd1; 
    end
    
    // ===============================
    // ram mux
    // ===============================
    wire step;
    assign step = r_y[8];
    
    reg       r_sram_rd_en =  1'd0;
    reg [9:0] r_sram_rd_px = 10'd0;
    reg [9:0] r_sram_rd_py = 10'd0;
    always @( posedge clk ) begin
        if( start | step ) begin
            r_sram_rd_en <=  1'd0;
            r_sram_rd_px <= 10'd0;
            r_sram_rd_py <= 10'd0;
        end else if( en ) begin
            r_sram_rd_en <=  1'd1;
            r_sram_rd_px <= r_x;
            r_sram_rd_py <= { 2'd0, r_y[7:0] };
        end
    end
    assign sram_rd_en = r_sram_rd_en;
    assign sram_rd_px = r_sram_rd_px;
    assign sram_rd_py = r_sram_rd_py;

    reg       r_dram_rd_en =  1'd0;
    reg [9:0] r_dram_rd_px = 10'd0;
    reg [9:0] r_dram_rd_py = 10'd0;
    always @( posedge clk ) begin
        if( start | (~step) ) begin
            r_dram_rd_en <=  1'd0;
            r_dram_rd_px <= 10'd0;
            r_dram_rd_py <= 10'd0;
        end else if( en ) begin
            r_dram_rd_en <=  1'd1;
            r_dram_rd_px <= { 2'd0, r_y[7:0] };
            r_dram_rd_py <= r_x;
        end
    end
    assign dram_rd_en = r_dram_rd_en;
    assign dram_rd_px = r_dram_rd_px;
    assign dram_rd_py = r_dram_rd_py;

endmodule
