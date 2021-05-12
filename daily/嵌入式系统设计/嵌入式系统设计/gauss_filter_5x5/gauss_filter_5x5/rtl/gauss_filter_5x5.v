//////////////////////////////////////////////////////////////////////////////////
// Company       : 
// Engineer      : 
// Create Date   : 
// Design Name   : 
// Module Name   : GaussFilter_5x5 
// Project Name  : 
// Target Devices: 
// Tool versions :
// Description   : 
//                 5x5 2D Gauss Filter 
// Dependencies  : 
//
// Revision      : 1.00 
// Additional Comments: 
// 
//
//////////////////////////////////////////////////////////////////////////////////

module gauss_filter_5x5(
    input  wire        clk        , // clock
    input  wire        start      , //
    output wire        finish     , //
    output wire        imgs_rd_en , // source ram, rd only: read enable
    output wire [ 9:0] imgs_rd_px , //                      x [-255,510] 
    output wire [ 9:0] imgs_rd_py , //                      y [-255,510]
    input  wire [ 7:0] imgs_rd_dt , //                      data in
    input  wire        imgs_rd_vl , //                      data in valid 
    output wire        imgd_rd_en , // dest ram, rd: read enable
    output wire [ 9:0] imgd_rd_px , //               x [-255,510] 
    output wire [ 9:0] imgd_rd_py , //               y [-255,510]
    input  wire [ 7:0] imgd_rd_dt , //               read data
    input  wire        imgd_rd_vl , //               read data valid 
    output wire        imgd_wr_en , //           wr: write enable 
    output wire [ 9:0] imgd_wr_px , //               x [-255,510]
    output wire [ 9:0] imgd_wr_py , //               y [-255,510]
    output wire [ 7:0] imgd_wr_dt   //               write data
);

    // ============================
    // img reader
    // ============================
    gauss_filter_imgrd u_imgrd (
        .clk        ( clk        ),
        .start      ( start      ),
        .sram_rd_en ( imgs_rd_en ), // read source ram   
        .sram_rd_px ( imgs_rd_px ), //     FIX_9,  [-2,257]
        .sram_rd_py ( imgs_rd_py ), //     FIX_9,  [ 0,255]
        .dram_rd_en ( imgd_rd_en ), // read dest ram   
        .dram_rd_px ( imgd_rd_px ), //     FIX_9,  [-2,257]
        .dram_rd_py ( imgd_rd_py )  //     FIX_9,  [ 0,255]
    );

    // ============================
    // 5pix gauss filter
    // ============================
    
    // read data mux
    wire w_vl;
    assign w_vl = imgs_rd_vl ^ imgd_rd_vl;
    
    wire [7:0] w_dt;
    assign w_dt = ( imgs_rd_vl ) ? imgs_rd_dt : imgd_rd_dt;
    
    // data buf
    reg       buf_vl   = 1'b0;
    reg [7:0] buf_dt_0 = 1'b0;
    reg [7:0] buf_dt_1 = 1'b0;
    reg [7:0] buf_dt_2 = 1'b0;
    reg [7:0] buf_dt_3 = 1'b0;
    reg [7:0] buf_dt_4 = 1'b0;
    always @( posedge clk ) begin
        buf_vl   <=   w_vl  ;
        buf_dt_0 <=   w_dt  ;
        buf_dt_1 <= buf_dt_0;
        buf_dt_2 <= buf_dt_1;
        buf_dt_3 <= buf_dt_2;
        buf_dt_4 <= buf_dt_3;
    end
    
    wire [7:0] filter_dt;
    wire       filter_vl; 
    gauss_filter_5x5_op u_op (
        .clk  ( clk       ) ,  // clk
        .d0_i ( buf_dt_0  ) ,  // di[n-2]
        .d1_i ( buf_dt_1  ) ,  // di[n-1]
        .d2_i ( buf_dt_2  ) ,  // di[n  ]
        .d3_i ( buf_dt_3  ) ,  // di[n+1]
        .d4_i ( buf_dt_4  ) ,  // di[n+2]
        .vl_i ( buf_vl    ) ,  // input data valid
        .dt_o ( filter_dt ) ,  // data out
        .vl_o ( filter_vl )    // output data valid 
    );

    // ================================
    // img writer
    // ================================
    gauss_filter_imgwr u_imgwr(
        .clk     ( clk        ),
        .start   ( start      ),
        .finish  ( finish     ),
        .dt_i    ( filter_dt  ), // data input
        .dv_i    ( filter_vl  ), // input data valid
        .wr_en_o ( imgd_wr_en ), //    
        .wr_px_o ( imgd_wr_px ), // FIX_9,  [-4,255]
        .wr_py_o ( imgd_wr_py ), // FIX_9,  [-4,255]
        .wr_dt_o ( imgd_wr_dt )
    );    
     
endmodule
