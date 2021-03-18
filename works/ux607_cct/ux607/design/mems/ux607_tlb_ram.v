 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         


















`include "ux607_defines.v"

`ifdef UX607_CFG_HAS_MMU
module ux607_tlb_ram #(
    parameter AW = `UX607_TLB_INDEX_WIDTH,
    parameter DW = `UX607_TLB_DATA_WIDTH,
    parameter MW = `UX607_TLB_DATA_WIDTH,
    parameter DP = 2**`UX607_TLB_INDEX_WIDTH   
)(
    input               cs,
    input               wem,
    input  [AW-1:0]     addr,
    input  [DW-1:0]     din,
    output [DW-1:0]     dout,
    input               rst_n,
    input               clk
);

    ux607_gnrl_ram_bit_en #(
    .DP(DP),
    .DW(DW),
    .FORCE_X2ZERO(0),
    .MW(MW),
    .AW(AW)
    ) u_ux607_tlb_gnrl_ram(
    .sd         (1'b0),
    .ds         (1'b0),
    .ls         (1'b0),

    .rst_n      (rst_n),
    .clk        (clk),
    .cs         (cs),
    .wem        (wem),
    .addr       (addr),
    .din        (din),
    .dout       (dout)
    );

endmodule

`endif

