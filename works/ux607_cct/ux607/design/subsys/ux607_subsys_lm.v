 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         




















`include "ux607_defines.v"


module ux607_subsys_lm(
     
      `ifndef UX607_D_SHARE_ILM 
     
  input                           biu2ilm_icb_cmd_valid,
  output                          biu2ilm_icb_cmd_ready,
  input   [`UX607_ILM_ADDR_WIDTH-1:0]   biu2ilm_icb_cmd_addr, 
  input                           biu2ilm_icb_cmd_read, 
  input   [`UX607_MLEN-1:0]        biu2ilm_icb_cmd_wdata,
  input   [`UX607_MLEN/8-1:0]      biu2ilm_icb_cmd_wmask,
  
  output                          biu2ilm_icb_rsp_valid,
  input                           biu2ilm_icb_rsp_ready,
  output                          biu2ilm_icb_rsp_err,
  output   [`UX607_MLEN-1:0]       biu2ilm_icb_rsp_rdata,
     
     `endif
     

  input                           biu2dlm_icb_cmd_valid,
  output                          biu2dlm_icb_cmd_ready,
  input   [`UX607_DLM_ADDR_WIDTH-1:0]   biu2dlm_icb_cmd_addr, 
  input                           biu2dlm_icb_cmd_read, 
  input   [`UX607_MLEN-1:0]        biu2dlm_icb_cmd_wdata,
  input   [`UX607_MLEN/8-1:0]      biu2dlm_icb_cmd_wmask,
  
  output                          biu2dlm_icb_rsp_valid,
  input                           biu2dlm_icb_rsp_ready,
  output                          biu2dlm_icb_rsp_err,
  output   [`UX607_MLEN-1:0]       biu2dlm_icb_rsp_rdata,
     
  
  
  
     `ifdef UX607_HAS_ILM 

  `ifdef UX607_LM_ITF_TYPE_SRAM 
  input  [`UX607_ILM_RAM_CS_W-1:0] i_ilm_ram_cs,  
  input  [`UX607_ILM_RAM_AW-1:0] i_ilm_ram_addr, 
  input  [`UX607_ILM_RAM_MW-1:0] i_ilm_ram_wem,
  input  [`UX607_ILM_RAM_DW-1:0] i_ilm_ram_din,          
  output [`UX607_ILM_RAM_DW-1:0] i_ilm_ram_dout,
  input                         i_clk_ilm_ram,
  `endif

  `ifdef UX607_LM_ITF_TYPE_AHBL 
      
  input  [1:0]       ilm_ahbl_htrans,   
  input              ilm_ahbl_hwrite,   
  input  [`UX607_MLEN-1:0]ilm_ahbl_hwdata,   
  input  [`UX607_ILM_ADDR_WIDTH-1:0]ilm_ahbl_haddr,    
  input  [2:0]       ilm_ahbl_hsize,    
  output [`UX607_MLEN-1:0]ilm_ahbl_hrdata,   
  output [1:0]       ilm_ahbl_hresp,    
  output             ilm_ahbl_hready,   
  `endif
  
      `endif


  
  
  
     `ifdef UX607_HAS_DLM 

  `ifdef UX607_DLM_MASTER_SRAM 
  input  [`UX607_DLM_RAM_CS_W-1:0] i_dlm_ram_cs,  
  input  [`UX607_DLM_RAM_AW-1:0] i_dlm_ram_addr, 
  input  [`UX607_DLM_WMSK_WIDTH-1:0] i_dlm_ram_wem,
  input  [`UX607_DLM_DATA_WIDTH-1:0] i_dlm_ram_din,          
  output [`UX607_DLM_DATA_WIDTH-1:0] i_dlm_ram_dout,
  input                             i_clk_dlm_ram,
  `endif

  `ifdef UX607_DLM_MASTER_AHBL 
      
  input  [1:0]       dlm_ahbl_htrans,   
  input              dlm_ahbl_hwrite,   
  input  [`UX607_DLM_ADDR_WIDTH    -1:0]dlm_ahbl_haddr,    
  input  [2:0]       dlm_ahbl_hsize,    
  input  [`UX607_MLEN    -1:0]dlm_ahbl_hwdata,   
  output [`UX607_MLEN    -1:0]dlm_ahbl_hrdata,   
  output [1:0]       dlm_ahbl_hresp,    
  output             dlm_ahbl_hready,   
  `endif
  
      `endif
     


  input  test_mode,
  input  clk,
  input  rst_n
  );




     
  `ifdef UX607_HAS_DLM 


      `ifdef UX607_DLM_MASTER_AHBL 
  wire             dlm_icb_cmd_valid; 
  wire             dlm_icb_cmd_ready; 
  wire [1-1:0]     dlm_icb_cmd_read; 
  wire [`UX607_DLM_ADDR_WIDTH-1:0]    dlm_icb_cmd_addr; 
  wire [`UX607_MLEN-1:0]    dlm_icb_cmd_wdata; 
  wire [`UX607_MLEN/8-1:0]  dlm_icb_cmd_wmask;

  wire             dlm_icb_rsp_valid; 
  wire             dlm_icb_rsp_ready; 
  wire             dlm_icb_rsp_err;
  wire [`UX607_MLEN-1:0]    dlm_icb_rsp_rdata; 

    ux607_gnrl_ahbl2icb
  #(
    .AW(`UX607_DLM_ADDR_WIDTH),
    .DW(`UX607_MLEN)
    ) u_dlm_ahbl2icb (
      
    .ahbl2icb_active (),

    .ahbl_hsel       (1'b1      ),    
    .ahbl_htrans     (dlm_ahbl_htrans    ),
    .ahbl_hwrite     (dlm_ahbl_hwrite    ),
    .ahbl_haddr      (dlm_ahbl_haddr     ),
    .ahbl_hsize      (dlm_ahbl_hsize     ),
    .ahbl_hexcl      (1'b0     ),
    .ahbl_hwdata     (dlm_ahbl_hwdata    ),
	.ahbl_huser      (1'b0),
                      
    .ahbl_hrdata     (dlm_ahbl_hrdata    ),
    .ahbl_hresp      (dlm_ahbl_hresp     ),
    .ahbl_hresp_exok (),
    .ahbl_hready_in  (dlm_ahbl_hready),  
    .ahbl_hready_out (dlm_ahbl_hready),   

    .icb_cmd_valid (dlm_icb_cmd_valid),
    .icb_cmd_ready (dlm_icb_cmd_ready),
    .icb_cmd_read  (dlm_icb_cmd_read ),
    .icb_cmd_addr  (dlm_icb_cmd_addr ),
    .icb_cmd_wdata (dlm_icb_cmd_wdata),
    .icb_cmd_wmask (dlm_icb_cmd_wmask),
    .icb_cmd_size  (), 
    .icb_cmd_excl  (),
	.icb_cmd_sel   (),
	.icb_cmd_user  (),

    .icb_rsp_valid (dlm_icb_rsp_valid),
    .icb_rsp_ready (dlm_icb_rsp_ready),
    .icb_rsp_err   (dlm_icb_rsp_err  ),
    .icb_rsp_rdata (dlm_icb_rsp_rdata),
    .icb_rsp_excl_ok (1'b0),
       
    .clk           (clk  ),
    .rst_n         (rst_n) 
  );
     `endif
  `endif
     

  wire             i_dlm_icb_cmd_valid; 
  wire             i_dlm_icb_cmd_ready; 
  wire [1-1:0]     i_dlm_icb_cmd_read; 
  wire [`UX607_DLM_ADDR_WIDTH-1:0]    i_dlm_icb_cmd_addr;
  wire [`UX607_MLEN-1:0]    i_dlm_icb_cmd_wdata; 
  wire [`UX607_MLEN/8-1:0]  i_dlm_icb_cmd_wmask;

  wire             i_dlm_icb_rsp_valid; 
  wire             i_dlm_icb_rsp_ready; 
  wire             i_dlm_icb_rsp_err;
  wire [`UX607_MLEN-1:0]    i_dlm_icb_rsp_rdata;


  ux607_icb2to1_bus # (
    .ICB_FIFO_DP (0), 
    .ICB_FIFO_CUT_READY (0), 
    .AW (`UX607_DLM_ADDR_WIDTH),
    .DW (`UX607_MLEN),
      
    .ARBT_FIFO_OUTS_NUM   (4),
    .ARBT_FIFO_OUTS_CNT_W (3),
    .ARBT_FIFO_CUT_READY  (1),
    .ARBT_SCHEME          (0),
    .ARBT_ALLOW_0CYCL_RSP (0) 

  ) u_dlm_icb2to1_bus(

    .o_icb_cmd_valid  (i_dlm_icb_cmd_valid),
    .o_icb_cmd_ready  (i_dlm_icb_cmd_ready),
    .o_icb_cmd_addr   (i_dlm_icb_cmd_addr),
    .o_icb_cmd_read   (i_dlm_icb_cmd_read ),
    .o_icb_cmd_wdata  (i_dlm_icb_cmd_wdata),
    .o_icb_cmd_wmask  (i_dlm_icb_cmd_wmask),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    
    .o_icb_rsp_valid  (i_dlm_icb_rsp_valid),
    .o_icb_rsp_ready  (i_dlm_icb_rsp_ready),
    .o_icb_rsp_err    (i_dlm_icb_rsp_err  ),
    .o_icb_rsp_excl_ok(1'b0),
    .o_icb_rsp_rdata  (i_dlm_icb_rsp_rdata),

    .i0_icb_cmd_valid  (biu2dlm_icb_cmd_valid),
    .i0_icb_cmd_ready  (biu2dlm_icb_cmd_ready),
    .i0_icb_cmd_addr   (biu2dlm_icb_cmd_addr ),
    .i0_icb_cmd_read   (biu2dlm_icb_cmd_read ),
    .i0_icb_cmd_wdata  (biu2dlm_icb_cmd_wdata),
    .i0_icb_cmd_wmask  (biu2dlm_icb_cmd_wmask),
    .i0_icb_cmd_lock   (1'b0 ),
    .i0_icb_cmd_excl   (1'b0 ),
    .i0_icb_cmd_size   (2'b0 ),
    .i0_icb_cmd_burst  (3'b0),
    .i0_icb_cmd_beat   (2'b0 ),
    
    .i0_icb_rsp_valid  (biu2dlm_icb_rsp_valid),
    .i0_icb_rsp_ready  (biu2dlm_icb_rsp_ready),
    .i0_icb_rsp_err    (biu2dlm_icb_rsp_err  ),
    .i0_icb_rsp_excl_ok(),
    .i0_icb_rsp_rdata  (biu2dlm_icb_rsp_rdata),


     
  `ifdef UX607_DLM_MASTER_AHBL 
    .i1_icb_cmd_valid  (dlm_icb_cmd_valid),
    .i1_icb_cmd_ready  (dlm_icb_cmd_ready),
    .i1_icb_cmd_addr   (dlm_icb_cmd_addr ),
    .i1_icb_cmd_read   (dlm_icb_cmd_read ),
    .i1_icb_cmd_wdata  (dlm_icb_cmd_wdata),
    .i1_icb_cmd_wmask  (dlm_icb_cmd_wmask),
    .i1_icb_cmd_lock   (1'b0 ),
    .i1_icb_cmd_excl   (1'b0 ),
    .i1_icb_cmd_size   (2'b0 ),
    .i1_icb_cmd_burst  (3'b0),
    .i1_icb_cmd_beat   (2'b0 ),
    
    .i1_icb_rsp_valid  (dlm_icb_rsp_valid),
    .i1_icb_rsp_ready  (dlm_icb_rsp_ready),
    .i1_icb_rsp_err    (dlm_icb_rsp_err  ),
    .i1_icb_rsp_excl_ok(),
    .i1_icb_rsp_rdata  (dlm_icb_rsp_rdata),
  `endif

  `ifndef UX607_DLM_MASTER_AHBL 
     
    .i1_icb_cmd_valid  (1'b0),
    .i1_icb_cmd_ready  (),
    .i1_icb_cmd_addr   (`UX607_DLM_ADDR_WIDTH'b0),
    .i1_icb_cmd_read   (1'b0 ),
    .i1_icb_cmd_wdata  (`UX607_MLEN'b0),
    .i1_icb_cmd_wmask  ({`UX607_MLEN/8{1'b0}}),
    .i1_icb_cmd_lock   (1'b0 ),
    .i1_icb_cmd_excl   (1'b0 ),
    .i1_icb_cmd_size   (2'b0 ),
    .i1_icb_cmd_burst  (3'b0),
    .i1_icb_cmd_beat   (2'b0 ),
    
    .i1_icb_rsp_valid  (),
    .i1_icb_rsp_ready  (1'b0),
    .i1_icb_rsp_err    (),
    .i1_icb_rsp_excl_ok(),
    .i1_icb_rsp_rdata  (),
     
  `endif
     

    .clk           (clk  ),
    .rst_n         (rst_n) 
  );




  wire [`UX607_DLM_RAM_CS_W-1:0] dlm_ram_cs;  
  wire [`UX607_DLM_RAM_AW-1:0] dlm_ram_addr; 
  wire [`UX607_DLM_WMSK_WIDTH-1:0] dlm_ram_wem;
  wire [`UX607_DLM_DATA_WIDTH-1:0] dlm_ram_din;          
  wire [`UX607_DLM_DATA_WIDTH-1:0] dlm_ram_dout;
  wire                        clk_dlm_ram;

  ux607_sram_icb_ctrl #(
      .CS_W   (`UX607_DLM_RAM_CS_W),
      .DW     (`UX607_MLEN),
      .AW     (`UX607_DLM_ADDR_WIDTH),
      .MW     (`UX607_DLM_WMSK_WIDTH),
      .AW_LSB (`UX607_DLM_AW_LSB),
      .USR_W  (1) 
  ) u_dlm_icb_ctrl (
     .sram_ctrl_active (),
     .tcm_cgstop       (1'b0),

     
  `ifdef UX607_DLM_MASTER_SRAM 
     .stall_uop_cmd   (|i_dlm_ram_cs),
  `endif
  `ifndef UX607_DLM_MASTER_SRAM 
     
     .stall_uop_cmd   (1'b0),
     
  `endif
     
     
     .i_icb_cmd_valid (i_dlm_icb_cmd_valid),
     .i_icb_cmd_ready (i_dlm_icb_cmd_ready),
     .i_icb_cmd_read  (i_dlm_icb_cmd_read ),
     .i_icb_cmd_addr  (i_dlm_icb_cmd_addr ), 
     .i_icb_cmd_wdata (i_dlm_icb_cmd_wdata), 
     .i_icb_cmd_wmask (i_dlm_icb_cmd_wmask), 
     .i_icb_cmd_usr   (1'b0),
  
     .i_icb_rsp_valid (i_dlm_icb_rsp_valid),
     .i_icb_rsp_ready (i_dlm_icb_rsp_ready),
     .i_icb_rsp_rdata (i_dlm_icb_rsp_rdata),
     .i_icb_rsp_usr   (),
  
     .ram_cs          (dlm_ram_cs  ),  
     .ram_addr        (dlm_ram_addr), 
     .ram_wem         (dlm_ram_wem ),
     .ram_din         (dlm_ram_din ),          
     .ram_dout        (dlm_ram_dout),
     .clk_ram         (clk_dlm_ram ),
  
     .clkgate_bypass       (test_mode  ),
     .clk             (clk  ),
     .rst_n           (rst_n)  
    );

  assign i_dlm_icb_rsp_err = 1'b0;

  wire [`UX607_DLM_RAM_CS_W-1:0] final_dlm_ram_cs;  
  wire [`UX607_DLM_RAM_AW-1:0] final_dlm_ram_addr; 
  wire [`UX607_DLM_WMSK_WIDTH-1:0] final_dlm_ram_wem;
  wire [`UX607_MLEN-1:0] final_dlm_ram_din;          
  wire [`UX607_MLEN-1:0] final_dlm_ram_dout;
  wire              final_clk_dlm_ram;

     
  `ifdef UX607_DLM_MASTER_SRAM 
  assign final_dlm_ram_cs   = (|i_dlm_ram_cs) ? i_dlm_ram_cs   : dlm_ram_cs  ;  
  assign final_dlm_ram_addr = (|i_dlm_ram_cs) ? i_dlm_ram_addr : dlm_ram_addr; 
  assign final_dlm_ram_wem  = (|i_dlm_ram_cs) ? i_dlm_ram_wem  : dlm_ram_wem ;
  assign final_dlm_ram_din  = (|i_dlm_ram_cs) ? i_dlm_ram_din  : dlm_ram_din ;          
  assign final_clk_dlm_ram  = clk;

  assign dlm_ram_dout = final_dlm_ram_dout;
  assign i_dlm_ram_dout = final_dlm_ram_dout;
  `endif

  `ifndef UX607_DLM_MASTER_SRAM 
     
  assign final_dlm_ram_cs   = dlm_ram_cs  ;  
  assign final_dlm_ram_addr = dlm_ram_addr; 
  assign final_dlm_ram_wem  = dlm_ram_wem ;
  assign final_dlm_ram_din  = dlm_ram_din ;          
  assign dlm_ram_dout = final_dlm_ram_dout;
  assign final_clk_dlm_ram  = clk_dlm_ram ;
     
  `endif
     



  
  ux607_dlm_ram u_ux607_dlm_ram0 (
    .sd   (1'b0),
    .ds   (1'b0),
    .ls   (1'b0),
  
    .cs   (final_dlm_ram_cs[0]  ),
    .addr (final_dlm_ram_addr   ),
    .wem  (final_dlm_ram_wem [`UX607_DLM_RAM_MW*0 +:`UX607_DLM_RAM_MW]  ),
    .din  (final_dlm_ram_din [`UX607_DLM_RAM_DW*0 +:`UX607_DLM_RAM_DW]  ),
    .dout (final_dlm_ram_dout[`UX607_DLM_RAM_DW*0 +:`UX607_DLM_RAM_DW]  ),
    .rst_n(1'b1      ),
    .clk  (final_clk_dlm_ram  )
    );
  ux607_dlm_ram u_ux607_dlm_ram1 (
    .sd   (1'b0),
    .ds   (1'b0),
    .ls   (1'b0),
  
    .cs   (final_dlm_ram_cs[1]  ),
    .addr (final_dlm_ram_addr   ),
    .wem  (final_dlm_ram_wem [`UX607_DLM_RAM_MW*1 +:`UX607_DLM_RAM_MW]   ),
    .din  (final_dlm_ram_din [`UX607_DLM_RAM_DW*1 +:`UX607_DLM_RAM_DW]   ),
    .dout (final_dlm_ram_dout[`UX607_DLM_RAM_DW*1 +:`UX607_DLM_RAM_DW]   ),
    .rst_n(1'b1      ),
    .clk  (final_clk_dlm_ram  )
    );
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    







     

  `ifdef UX607_HAS_ILM 


      `ifdef UX607_LM_ITF_TYPE_AHBL 
  wire             ilm_icb_cmd_valid; 
  wire             ilm_icb_cmd_ready; 
  wire [1-1:0]     ilm_icb_cmd_read; 
  wire [`UX607_ILM_ADDR_WIDTH-1:0]    ilm_icb_cmd_addr; 
  wire [`UX607_MLEN-1:0]    ilm_icb_cmd_wdata; 
  wire [`UX607_MLEN/8-1:0]  ilm_icb_cmd_wmask;

  wire             ilm_icb_rsp_valid; 
  wire             ilm_icb_rsp_ready; 
  wire             ilm_icb_rsp_err;
  wire [`UX607_MLEN-1:0]    ilm_icb_rsp_rdata; 

    ux607_gnrl_ahbl2icb
  #(
    .AW(`UX607_ILM_ADDR_WIDTH),
    .DW(`UX607_MLEN)
    ) u_ilm_ahbl2icb (
      
    .ahbl2icb_active (),

    .ahbl_hsel       (1'b1      ),    
    .ahbl_htrans     (ilm_ahbl_htrans    ),
    .ahbl_hwrite     (ilm_ahbl_hwrite    ),
    .ahbl_hexcl      (1'b0    ),
    .ahbl_haddr      (ilm_ahbl_haddr     ),
    .ahbl_hsize      (ilm_ahbl_hsize     ),
    .ahbl_hwdata     (ilm_ahbl_hwdata     ),
	.ahbl_huser      (1'b0),
                      
    .ahbl_hrdata     (ilm_ahbl_hrdata    ),
    .ahbl_hresp      (ilm_ahbl_hresp     ),
    .ahbl_hresp_exok (),
    .ahbl_hready_in  (ilm_ahbl_hready),  
    .ahbl_hready_out (ilm_ahbl_hready),   

    .icb_cmd_valid (ilm_icb_cmd_valid),
    .icb_cmd_ready (ilm_icb_cmd_ready),
    .icb_cmd_read  (ilm_icb_cmd_read ),
    .icb_cmd_addr  (ilm_icb_cmd_addr ),
    .icb_cmd_wdata (ilm_icb_cmd_wdata),
    .icb_cmd_wmask (ilm_icb_cmd_wmask),
    .icb_cmd_size  (), 
    .icb_cmd_excl  (),
    .icb_cmd_sel   (),
	.icb_cmd_user  (),

    .icb_rsp_valid (ilm_icb_rsp_valid),
    .icb_rsp_ready (ilm_icb_rsp_ready),
    .icb_rsp_err   (ilm_icb_rsp_err  ),
    .icb_rsp_rdata (ilm_icb_rsp_rdata),
    .icb_rsp_excl_ok (1'b0),
       
    .clk           (clk  ),
    .rst_n         (rst_n) 
  );
     `endif
  `endif
     


  wire             i_ilm_icb_cmd_valid; 
  wire             i_ilm_icb_cmd_ready; 
  wire [1-1:0]     i_ilm_icb_cmd_read; 
  wire [`UX607_ILM_ADDR_WIDTH-1:0]    i_ilm_icb_cmd_addr;
  wire [`UX607_MLEN-1:0]    i_ilm_icb_cmd_wdata; 
  wire [`UX607_MLEN/8-1:0]  i_ilm_icb_cmd_wmask;

  wire             i_ilm_icb_rsp_valid; 
  wire             i_ilm_icb_rsp_ready; 
  wire             i_ilm_icb_rsp_err;
  wire [`UX607_MLEN-1:0]    i_ilm_icb_rsp_rdata;


  ux607_icb2to1_bus # (
    .ICB_FIFO_DP (0), 
    .ICB_FIFO_CUT_READY (0), 
    .AW (`UX607_ILM_ADDR_WIDTH),
    .DW (`UX607_MLEN),
      
    .ARBT_FIFO_OUTS_NUM   (4),
    .ARBT_FIFO_OUTS_CNT_W (3),
    .ARBT_FIFO_CUT_READY  (1),
    .ARBT_SCHEME          (0),
    .ARBT_ALLOW_0CYCL_RSP (0) 

  ) u_ilm_icb2to1_bus(

    .o_icb_cmd_valid  (i_ilm_icb_cmd_valid),
    .o_icb_cmd_ready  (i_ilm_icb_cmd_ready),
    .o_icb_cmd_addr   (i_ilm_icb_cmd_addr),
    .o_icb_cmd_read   (i_ilm_icb_cmd_read ),
    .o_icb_cmd_wdata  (i_ilm_icb_cmd_wdata),
    .o_icb_cmd_wmask  (i_ilm_icb_cmd_wmask),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    
    .o_icb_rsp_valid  (i_ilm_icb_rsp_valid),
    .o_icb_rsp_ready  (i_ilm_icb_rsp_ready),
    .o_icb_rsp_err    (i_ilm_icb_rsp_err  ),
    .o_icb_rsp_excl_ok(1'b0),
    .o_icb_rsp_rdata  (i_ilm_icb_rsp_rdata),

     
      `ifndef UX607_D_SHARE_ILM 
     
    .i0_icb_cmd_valid  (biu2ilm_icb_cmd_valid),
    .i0_icb_cmd_ready  (biu2ilm_icb_cmd_ready),
    .i0_icb_cmd_addr   (biu2ilm_icb_cmd_addr ),
    .i0_icb_cmd_read   (biu2ilm_icb_cmd_read ),
    .i0_icb_cmd_wdata  (biu2ilm_icb_cmd_wdata),
    .i0_icb_cmd_wmask  (biu2ilm_icb_cmd_wmask),
    .i0_icb_cmd_lock   (1'b0 ),
    .i0_icb_cmd_excl   (1'b0 ),
    .i0_icb_cmd_size   (2'b0 ),
    .i0_icb_cmd_burst  (3'b0),
    .i0_icb_cmd_beat   (2'b0 ),
    
    .i0_icb_rsp_valid  (biu2ilm_icb_rsp_valid),
    .i0_icb_rsp_ready  (biu2ilm_icb_rsp_ready),
    .i0_icb_rsp_err    (biu2ilm_icb_rsp_err  ),
    .i0_icb_rsp_excl_ok(),
    .i0_icb_rsp_rdata  (biu2ilm_icb_rsp_rdata),
     
     `else
    .i0_icb_cmd_valid  (1'b0),
    .i0_icb_cmd_ready  (),
    .i0_icb_cmd_addr   (`UX607_ILM_ADDR_WIDTH'b0),
    .i0_icb_cmd_read   (1'b0 ),
    .i0_icb_cmd_wdata  (`UX607_MLEN'b0),
    .i0_icb_cmd_wmask  ({`UX607_MLEN/8{1'b0}}),
    .i0_icb_cmd_lock   (1'b0 ),
    .i0_icb_cmd_excl   (1'b0 ),
    .i0_icb_cmd_size   (2'b0 ),
    .i0_icb_cmd_burst  (3'b0),
    .i0_icb_cmd_beat   (2'b0 ),
    
    .i0_icb_rsp_valid  (),
    .i0_icb_rsp_ready  (1'b0),
    .i0_icb_rsp_err    (),
    .i0_icb_rsp_excl_ok(),
    .i0_icb_rsp_rdata  (),

     `endif
     


     
  `ifdef UX607_ILM_MASTER_AHBL 
    .i1_icb_cmd_valid  (ilm_icb_cmd_valid),
    .i1_icb_cmd_ready  (ilm_icb_cmd_ready),
    .i1_icb_cmd_addr   (ilm_icb_cmd_addr ),
    .i1_icb_cmd_read   (ilm_icb_cmd_read ),
    .i1_icb_cmd_wdata  (ilm_icb_cmd_wdata),
    .i1_icb_cmd_wmask  (ilm_icb_cmd_wmask),
    .i1_icb_cmd_lock   (1'b0 ),
    .i1_icb_cmd_excl   (1'b0 ),
    .i1_icb_cmd_size   (2'b0 ),
    .i1_icb_cmd_burst  (3'b0),
    .i1_icb_cmd_beat   (2'b0 ),
    
    .i1_icb_rsp_valid  (ilm_icb_rsp_valid),
    .i1_icb_rsp_ready  (ilm_icb_rsp_ready),
    .i1_icb_rsp_err    (ilm_icb_rsp_err  ),
    .i1_icb_rsp_excl_ok(),
    .i1_icb_rsp_rdata  (ilm_icb_rsp_rdata),
  `endif

  `ifndef UX607_ILM_MASTER_AHBL 
     
    .i1_icb_cmd_valid  (1'b0),
    .i1_icb_cmd_ready  (),
    .i1_icb_cmd_addr   (`UX607_ILM_ADDR_WIDTH'b0),
    .i1_icb_cmd_read   (1'b0 ),
    .i1_icb_cmd_wdata  (`UX607_MLEN'b0),
    .i1_icb_cmd_wmask  ({`UX607_MLEN/8{1'b0}}),
    .i1_icb_cmd_lock   (1'b0 ),
    .i1_icb_cmd_excl   (1'b0 ),
    .i1_icb_cmd_size   (2'b0 ),
    .i1_icb_cmd_burst  (3'b0),
    .i1_icb_cmd_beat   (2'b0 ),
    
    .i1_icb_rsp_valid  (),
    .i1_icb_rsp_ready  (1'b0),
    .i1_icb_rsp_err    (),
    .i1_icb_rsp_excl_ok(),
    .i1_icb_rsp_rdata  (),
     
  `endif
     

    .clk           (clk  ),
    .rst_n         (rst_n) 
  );





  wire              ilm_ram_cs;  
  wire [`UX607_ILM_RAM_AW-1:0] ilm_ram_addr; 
  wire [`UX607_ILM_RAM_MW-1:0] ilm_ram_wem;
  wire [`UX607_ILM_RAM_DW-1:0] ilm_ram_din;          
  wire [`UX607_ILM_RAM_DW-1:0] ilm_ram_dout;
  wire              clk_ilm_ram;

 ux607_sram_icb_ctrl #(
      .CS_W   (`UX607_ILM_RAM_CS_W),
      .DW     (`UX607_MLEN),
      .AW     (`UX607_ILM_ADDR_WIDTH),
      .MW     (`UX607_ILM_WMSK_WIDTH),
      .AW_LSB (`UX607_ILM_AW_LSB),
      .USR_W  (1) 
  ) u_ilm_icb_ctrl (
     .sram_ctrl_active (),
     .tcm_cgstop       (1'b0),

     
  `ifdef UX607_ILM_MASTER_SRAM 
     .stall_uop_cmd   (i_ilm_ram_cs),
  `endif
  `ifndef UX607_ILM_MASTER_SRAM 
     
     .stall_uop_cmd   (1'b0),
     
  `endif
     
     
     .i_icb_cmd_valid (i_ilm_icb_cmd_valid),
     .i_icb_cmd_ready (i_ilm_icb_cmd_ready),
     .i_icb_cmd_read  (i_ilm_icb_cmd_read ),
     .i_icb_cmd_addr  (i_ilm_icb_cmd_addr ), 
     .i_icb_cmd_wdata (i_ilm_icb_cmd_wdata), 
     .i_icb_cmd_wmask (i_ilm_icb_cmd_wmask), 
     .i_icb_cmd_usr   (1'b0),
  
     .i_icb_rsp_valid (i_ilm_icb_rsp_valid),
     .i_icb_rsp_ready (i_ilm_icb_rsp_ready),
     .i_icb_rsp_rdata (i_ilm_icb_rsp_rdata),
     .i_icb_rsp_usr   (),
  
     .ram_cs   (ilm_ram_cs  ),  
     .ram_addr (ilm_ram_addr), 
     .ram_wem  (ilm_ram_wem ),
     .ram_din  (ilm_ram_din ),          
     .ram_dout (ilm_ram_dout),
     .clk_ram  (clk_ilm_ram ),
  
     .clkgate_bypass(test_mode  ),
     .clk  (clk  ),
     .rst_n(rst_n)  
    );

  assign i_ilm_icb_rsp_err = 1'b0;

  wire [`UX607_ILM_RAM_CS_W-1:0]  final_ilm_ram_cs;  
  wire [`UX607_ILM_RAM_AW-1:0] final_ilm_ram_addr; 
  wire [`UX607_ILM_RAM_MW-1:0] final_ilm_ram_wem;
  wire [`UX607_ILM_RAM_DW-1:0] final_ilm_ram_din;          
  wire [`UX607_ILM_RAM_DW-1:0] final_ilm_ram_dout;
  wire              final_clk_ilm_ram;

     
  `ifdef UX607_ILM_MASTER_SRAM 
  assign final_ilm_ram_cs   = (|i_ilm_ram_cs) ? i_ilm_ram_cs   : ilm_ram_cs  ;  
  assign final_ilm_ram_addr = (|i_ilm_ram_cs) ? i_ilm_ram_addr : ilm_ram_addr; 
  assign final_ilm_ram_wem  = (|i_ilm_ram_cs) ? i_ilm_ram_wem  : ilm_ram_wem ;
  assign final_ilm_ram_din  = (|i_ilm_ram_cs) ? i_ilm_ram_din  : ilm_ram_din ;          
  assign final_clk_ilm_ram  = clk;

  assign ilm_ram_dout = final_ilm_ram_dout;
  assign i_ilm_ram_dout = final_ilm_ram_dout;
  `endif

  `ifndef UX607_ILM_MASTER_SRAM 
     
  assign final_ilm_ram_cs   = ilm_ram_cs  ;  
  assign final_ilm_ram_addr = ilm_ram_addr; 
  assign final_ilm_ram_wem  = ilm_ram_wem ;
  assign final_ilm_ram_din  = ilm_ram_din ;          
  assign ilm_ram_dout = final_ilm_ram_dout;
  assign final_clk_ilm_ram  = clk_ilm_ram ;
     
  `endif
     

  ux607_ilm_ram u_ux607_ilm_ram (
    .sd   (1'b0),
    .ds   (1'b0),
    .ls   (1'b0),
  
    .cs   (final_ilm_ram_cs   ),
    .addr (final_ilm_ram_addr ),
    .wem  (final_ilm_ram_wem  ),
    .din  (final_ilm_ram_din  ),
    .dout (final_ilm_ram_dout),
    .rst_n(1'b1      ),
    .clk  (final_clk_ilm_ram  )
    );
    



endmodule
