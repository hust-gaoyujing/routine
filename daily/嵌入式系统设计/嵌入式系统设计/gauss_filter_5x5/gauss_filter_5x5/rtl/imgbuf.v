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
// Dependencies  : 
//
// Revision      : 1.00 
// Additional Comments: 
//    read latency : 4
//////////////////////////////////////////////////////////////////////////////////
`default_nettype none

module imgbuf(
    input  wire        clk     ,
    input  wire        rd_en_1 , // read  port 1 enable
    input  wire [ 9:0] rd_px_1 , //              x [-255,510] 
    input  wire [ 9:0] rd_py_1 , //              y [-255,510]
    output wire [ 7:0] rd_dt_1 , //       data output
    output wire        rd_vl_1 , //       data valid 
    input  wire        rd_en_2 , // read  port 2
    input  wire [ 9:0] rd_px_2 , //       x [-255,510] 
    input  wire [ 9:0] rd_py_2 , //       y [-255,510]
    output wire [ 7:0] rd_dt_2 , //       data output
    output wire        rd_vl_2 , //       data valid 
    input  wire        wr_en_1 ,  // write port 1 
    input  wire [ 9:0] wr_px_1 , //       x [-255,510]
    input  wire [ 9:0] wr_py_1 , //       y [-255,510]
    input  wire [ 7:0] wr_dt_1 , //       data
    input  wire        wr_en_2 , // write port 2
    input  wire [ 9:0] wr_px_2 , //       x [-255,510]
    input  wire [ 9:0] wr_py_2 , //       y [-255,510]
    input  wire [ 7:0] wr_dt_2   //       data
);

    // ==============================
    // bram ip
    //    simple dual port ram
    //    read latency 1
    // ==============================
    reg         mem_wea   =  1'd0;  // input wire [0 : 0] wea
    reg  [15:0] mem_addra = 16'd0;  // input wire [15 : 0] addra
    reg  [ 7:0] mem_dina  =  8'd0;  // input wire [7 : 0] dina
    reg         mem_enb   =  1'd0;  // input wire enb
    reg  [15:0] mem_addrb = 16'd0;  // input wire [15 : 0] addrb
    wire [ 7:0] mem_doutb        ;  // output wire [7 : 0] doutb

    mem_ip u_mem (
      .clka  ( clk       ),  // input wire clka
      .wea   ( mem_wea   ),  // input wire [0 : 0] wea
      .addra ( mem_addra ),  // input wire [15 : 0] addra
      .dina  ( mem_dina  ),  // input wire [7 : 0] dina
      .clkb  ( clk       ),  // input wire clkb
      .enb   ( mem_enb   ),  // input wire enb
      .addrb ( mem_addrb ),  // input wire [15 : 0] addrb
      .doutb ( mem_doutb )   // output wire [7 : 0] doutb
    );
    
    // ==============================
    // write port
    // ==============================
    
    // write enable : only one port write enable valid
    wire wr_en;
    assign wr_en = wr_en_1 ^ wr_en_2;

    // write enable : address inrange, [0,255]
    wire wr_inrange_1;
    wire wr_inrange_2;
    assign wr_inrange_1 = ~(|{wr_px_1[9:8],wr_py_1[9:8]});
    assign wr_inrange_2 = ~(|{wr_px_2[9:8],wr_py_2[9:8]});

    // write port mux
    always @( posedge clk ) begin
        if( !wr_en ) begin  // !!! do not put to else branch
            mem_wea   <=  1'd0;
            mem_addra <= 16'd0;
            mem_dina  <=  8'd0;
        end else begin
            mem_wea   <= ( wr_en_1 ) ? wr_inrange_1 : wr_inrange_2;
            mem_addra <= ( wr_en_1 ) ? { wr_py_1[7:0], wr_px_1[7:0] } :
                                       { wr_py_2[7:0], wr_px_2[7:0] };
            mem_dina  <= ( wr_en_1 ) ? wr_dt_1 : wr_dt_2;
        end
    end

    // ==============================
    // read port mux
    // ==============================
    // read enable
    wire rd_en;
    assign rd_en = rd_en_1 ^ rd_en_2;
    
    // read port mux
    reg [ 9:0] r_rd_px; //  x [-255,510]
    reg [ 9:0] r_rd_py; //  y [-255,510]
    reg        r_rd_en;

    always @( posedge clk ) begin
        if( !rd_en ) begin  // !!! do not put to else branch
            r_rd_px <= 10'd0;
            r_rd_py <= 10'd0;
        end else begin
            r_rd_px <= ( rd_en_1 ) ? rd_px_1 : rd_px_2;
            r_rd_py <= ( rd_en_1 ) ? rd_py_1 : rd_py_2;
        end
    end
    
    always @( posedge clk ) begin
        r_rd_en <= rd_en;
    end

    // caculate write addr
    //        / |x|             ,  x < 0               
    //   x = <  2*(WIDTH-1) - x ,  x > 255  
    //        \  x              ,  other
    wire [9:0] w_rx;
    wire [9:0] w_ry;
    assign w_rx = ( r_rd_px[9] == 1'b1 ) ? -r_rd_px          :
                  ( r_rd_px[8] == 1'b1 ) ? 10'd510 - r_rd_px : 
                                           r_rd_px           ;
    
    assign w_ry = ( r_rd_py[9] == 1'b1 ) ? -r_rd_py          :
                  ( r_rd_py[8] == 1'b1 ) ? 10'd510 - r_rd_py :
                                           r_rd_py           ;
    
    always @( posedge clk ) begin  // !!! no reset
        mem_enb   <=  r_rd_en;
        mem_addrb <= {w_ry[7:0], w_rx[7:0]};
    end

    // read data mux
    reg [3:1] sh_rd_en_1 = 3'd0;
    reg [3:1] sh_rd_en_2 = 3'd0;
    always @( posedge clk ) begin
        sh_rd_en_1 <= { sh_rd_en_1[2:1], rd_en_1 };
        sh_rd_en_2 <= { sh_rd_en_2[2:1], rd_en_2 };
    end
    
    reg [7:0] r_rd_dt_1 = 8'd0;
    reg [7:0] r_rd_dt_2 = 8'd0;
    always @( posedge clk ) begin
        r_rd_dt_1 <= ( sh_rd_en_1[3] == 1'b0 ) ? 8'd0 : mem_doutb;   // !!! 0 first
        r_rd_dt_2 <= ( sh_rd_en_2[3] == 1'b0 ) ? 8'd0 : mem_doutb; 
    end
    assign rd_dt_1 = r_rd_dt_1;
    assign rd_dt_2 = r_rd_dt_2;

    reg r_rd_vl_1 = 1'd0;
    reg r_rd_vl_2 = 1'd0;
    always @( posedge clk ) begin
        r_rd_vl_1 <= sh_rd_en_1[3];
        r_rd_vl_2 <= sh_rd_en_2[3]; 
    end
    assign rd_vl_1 = r_rd_vl_1;
    assign rd_vl_2 = r_rd_vl_2;
    
endmodule
