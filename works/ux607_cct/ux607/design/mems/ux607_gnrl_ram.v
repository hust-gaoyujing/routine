 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         


















`include "ux607_defines.v" 

module ux607_gnrl_ram
#(parameter DP = 32,
  parameter DW = 32,
  parameter FORCE_X2ZERO = 1,
  parameter MW = 4,
  parameter AW = 15 
  ) (
  input            sd,
  input            ds,
  input            ls,

  input            rst_n,
  input            clk,
  input            cs,
  input [AW-1:0]   addr,
  input [DW-1:0]   din,
  input [MW-1:0]   wem,
  output[DW-1:0]   dout
);




`ifdef FPGA_SOURCE
ux607_sim_ram #(
    .FORCE_X2ZERO (1'b0),
    .DP (DP),
    .AW (AW),
    .MW (MW),
    .DW (DW) 
)u_ux607_sim_ram (
    .clk   (clk),
    .din   (din),
    .addr  (addr),
    .cs    (cs),
    .wem   (wem),
    .dout  (dout)
);
`else

ux607_sim_ram #(
    .FORCE_X2ZERO (FORCE_X2ZERO),
    .DP (DP),
    .AW (AW),
    .MW (MW),
    .DW (DW) 
)u_ux607_sim_ram (
    .clk   (clk),
    .din   (din),
    .addr  (addr),
    .cs    (cs),
    .wem   (wem),
    .dout  (dout)
);
`endif

endmodule

module ux607_gnrl_ram_bit_en
#(parameter DP = 32,
  parameter DW = 32,
  parameter FORCE_X2ZERO = 1,
  parameter MW = 32,
  parameter AW = 15 
  ) (
  input            sd,
  input            ds,
  input            ls,

  input            rst_n,
  input            clk,
  input            cs,
  input [AW-1:0]   addr,
  input [DW-1:0]   din,
  input            wem,
  output[DW-1:0]   dout
);




`ifdef FPGA_SOURCE
ux607_sim_ram_bit_en #(
    .FORCE_X2ZERO (1'b0),
    .DP (DP),
    .AW (AW),
    .DW (DW) 
)u_ux607_sim_ram_bit_en (
    .clk   (clk),
    .din   (din),
    .addr  (addr),
    .cs    (cs),
    .wem   (wem),
    .dout  (dout)
);
`else











































ux607_sim_ram_bit_en #(
    .FORCE_X2ZERO (FORCE_X2ZERO),
    .DP (DP),
    .AW (AW),
    .DW (DW) 
)u_ux607_sim_ram_bit_en (
    .clk   (clk),
    .din   (din),
    .addr  (addr),
    .cs    (cs),
    .wem   (wem),
    .dout  (dout)
);
`endif

endmodule
