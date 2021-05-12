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
//                 gauss filter image writer
// Dependencies  : 
//
// Revision      : 1.00 
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////
`default_nettype none

module gauss_filter_imgwr(
    input  wire       clk     ,
    input  wire       start   ,
    output wire       finish  ,
    input  wire [7:0] dt_i    , // data input
    input  wire       dv_i    , // input data valid
    output wire       wr_en_o , //    
    output wire [9:0] wr_px_o , // FIX_9,  [-4,255]
    output wire [9:0] wr_py_o , // FIX_9,  [-4,255]
    output wire [7:0] wr_dt_o
);
    localparam [9:0] X_MIN = 10'h3_FC;  // -2 -2=-4
    localparam [9:0] X_MAX = 10'h0_FF;  // 257-2= 255

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
             if( start                      ) en <= 1'b1;
        else if( dv_i & is_end_x & is_end_y ) en <= 1'b0; 
    end        

    // ================================
    // scan
    //      FOR step = 0 TO 1 BEGIN  
    //          FOR y=0 TO 255
    //              FOR x=-4 TO 255
    // ================================
    
    // scan x
    always @( posedge clk ) begin
             if( start | is_end_x ) r_x <= X_MIN       ;
        else if( dv_i             ) r_x <= r_x + 10'd1 ; 
    end
    
    // scan y & step
    always @( posedge clk ) begin
             if( start ) r_y <= 9'd0;
        else if( dv_i  ) r_y <= r_y + { 8'd0, is_end_x }; 
    end
    
    // ===============================
    // wr_en,  wr_dt
    // ===============================
    reg       r_wr_en_o =  1'd0;
    reg [7:0] r_wr_dt_o = 10'd0;
    
    always @( posedge clk ) begin
        if( start ) begin 
            r_wr_en_o <=  1'b0;
            r_wr_dt_o <= 10'd0;
        end else begin
            r_wr_en_o <= dv_i;
            r_wr_dt_o <= dt_i;
        end
    end
    assign wr_en_o = r_wr_en_o;
    assign wr_dt_o = r_wr_dt_o;
  
    // ===============================
    // raw col mux
    // ===============================
    wire step;
    assign step = r_y[8];
    
    reg [9:0] r_wr_px_o = 10'd0;
    reg [9:0] r_wr_py_o = 10'd0;
    always @( posedge clk ) begin
        if( start ) begin
            r_wr_px_o <= 10'd0;
            r_wr_py_o <= 10'd0;
        end else if( en ) begin
            r_wr_px_o <= ( step == 1'b0 ) ? r_x : { 2'd0, r_y[7:0] } ;
            r_wr_py_o <= ( step == 1'b1 ) ? r_x : { 2'd0, r_y[7:0] } ;
        end
    end
    assign wr_px_o = r_wr_px_o;
    assign wr_py_o = r_wr_py_o;
        
    // =================================
    // finish
    // =================================
    reg r_finish  =  1'd0;
    always @( posedge clk ) begin
        if( start ) r_finish <= 1'b0;
        else        r_finish <= dv_i & is_end_x & is_end_y; 
    end        
    assign finish = r_finish;
endmodule
