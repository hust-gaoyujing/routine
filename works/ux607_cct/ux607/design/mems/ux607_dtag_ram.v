 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         


















`include "ux607_defines.v"
`include "ux607_subsys_defines.v"

`ifdef UX607_HAS_DCACHE

module ux607_dtag_ram(

  input                              sd,
  input                              ds,
  input                              ls,

  input                              cs,  
  input  [`UX607_DTAG_RAM_AW-1:0] addr, 
  input                          wem,
  input  [`UX607_DTAG_RAM_DW-1:0] din,          
  output [`UX607_DTAG_RAM_DW-1:0] dout,
  input                              rst_n,
  input                              clk

);

  ux607_gnrl_ram_bit_en #(
      `ifdef UX607_HAS_ECC
    .FORCE_X2ZERO(1),
      `endif
      `ifndef UX607_HAS_ECC
    .FORCE_X2ZERO(0),
      `endif
    .DP(`UX607_DTAG_RAM_DP),
    .DW(`UX607_DTAG_RAM_DW),
    .AW(`UX607_DTAG_RAM_AW) 
  ) u_ux607_dtag_gnrl_ram(
  .sd  (sd  ),
  .ds  (ds  ),
  .ls  (ls  ),

  .rst_n (rst_n ),
  .clk (clk ),
  .cs  (cs  ),
  .addr(addr),
  .din (din ),
  .wem (wem ),
  .dout(dout)
  );
                                                      
endmodule
`endif
