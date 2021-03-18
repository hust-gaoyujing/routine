 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         


















`include "ux607_defines.v"

  `ifdef UX607_HAS_ICACHE 
module ux607_icache_ram #(
    parameter AW = 32,
    parameter DW = 32,
    parameter MW = 4,
    parameter DP = 32 
)(

  input              sd,
  input              ds,
  input              ls,

  input              cs,  
  input  [AW-1:0]    addr, 
  input  [MW-1:0]    wem,
  input  [DW-1:0]    din,          
  output [DW-1:0]    dout,
  input              rst_n,
  input              clk

);

 
  ux607_gnrl_ram #(
    
    
    
    
    .FORCE_X2ZERO(0),
    
    .DP(DP),
    .DW(DW),
    .MW(MW),
    .AW(AW) 
  ) u_ux607_icache_gnrl_ram(
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
