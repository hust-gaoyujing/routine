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
//                 Gauss Filter Basic Operator
// Dependencies  : 
//
// Revision      : 1.00 
// Additional Comments: 
//      do[n] = di[n-2] + 4*di[n-1] +       6*di[n] + 4*di[n+1] + di[n+2]
//            =        ...          + 2*(2+1)*di[n] +          ...       
// 
//                     di_0    di_1        di_2      di_3    di_4 
//                     *1   +  *4       *1  + *2     *4   +  *1     
//                      '----v----'      '---v--'    '----v----'
//   Level_1               d_10       +   2*d_11         d_12
//                         11bits         10bits         11bits        
//                          '-------v-------'              | 
//   Level_2                      d_20        +          d_21 
//                                12bits                 11bits                
//                                  '----------v-----------'
//                                             |
//                                            /16  
//                                             |
//   Level_3                                  d_o
//                                                
//
//   Delay Cycle : 3
//
//////////////////////////////////////////////////////////////////////////////////
`default_nettype none

module gauss_filter_5x5_op(
    input  wire       clk   ,  // clk
    input  wire [7:0] d0_i  ,  // di[n-2]
    input  wire [7:0] d1_i  ,  // di[n-1]
    input  wire [7:0] d2_i  ,  // di[n  ]
    input  wire [7:0] d3_i  ,  // di[n+1]
    input  wire [7:0] d4_i  ,  // di[n+2]
    input  wire       vl_i  ,  // input data valid
    output wire [7:0] dt_o  ,  // data out
    output wire       vl_o     // output data valid 
);

     // Level 1
     reg [10:0] d_10 = 11'd0;
     reg [ 9:0] d_11 = 10'd0;
     reg [10:0] d_12 = 11'd0;
     
     always @( posedge clk ) begin
        if( !vl_i ) begin
            d_10 <= 11'd0;
            d_11 <= 10'd0;
            d_12 <= 11'd0;
        end else begin 
            d_10 <= { 3'd0,  d0_i       } + {  1'b0, d1_i, 2'd0  };
            d_11 <= { 2'd0,  d2_i       } + {  1'b0, d2_i, 1'd0  };
            d_12 <= { 1'b0,  d3_i, 2'd0 } + {  3'd0, d4_i        };
        end
     end
     
     // Level 2
     reg [11:0] d_20 = 12'd0;
     reg [10:0] d_21 = 11'd0;
     
     always @( posedge clk ) begin
        d_20 <= { 1'b0,  d_10 } + { 1'b0, d_11, 1'b0 } ;
        d_21 <= d_12 ; 
     end
     
     // Level 3
     wire [11:0] w_do;
     assign w_do = d_20 + d_21;
    
     reg [7:0] r_do;
     always @( posedge clk ) begin
        r_do <= w_do[11:4] + { 7'd0, w_do[3] }; // truncation
     end 
     assign dt_o = r_do;
     
     // valid out
     reg [3:1] sh_vl_i = 3'd0;
     always @( posedge clk ) begin
        sh_vl_i <= { sh_vl_i[2:1], vl_i };
     end
     assign vl_o = sh_vl_i[3];
     
endmodule
