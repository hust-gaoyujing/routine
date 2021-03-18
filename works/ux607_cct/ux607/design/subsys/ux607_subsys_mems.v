 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         




















`include "ux607_defines.v"


module ux607_subsys_mems(
     
    `ifndef UX607_TMR_PRIVATE 
  output  msip,
  output  mtip,
  input   mtime_toggle_a,
    `endif

  

  
  
  
  
  
  
  
  
  
  
  

      `ifdef UX607_MEM_TYPE_ICB 
  input                          mem_icb_cmd_valid,
  output                         mem_icb_cmd_ready,
  input  [`UX607_PA_SIZE-1:0]   mem_icb_cmd_addr, 
  input                          mem_icb_cmd_read, 
  input                          mem_icb_cmd_hlock, 
  input                          mem_icb_cmd_excl, 
  input  [`UX607_MLEN-1:0]        mem_icb_cmd_wdata,
  input  [`UX607_MLEN/8-1:0]      mem_icb_cmd_wmask,
  
  output                         mem_icb_rsp_valid,
  input                          mem_icb_rsp_ready,
  output                         mem_icb_rsp_err,
  output                         mem_icb_rsp_excl_ok,
  output [`UX607_MLEN-1:0]        mem_icb_rsp_rdata,
      `endif

      `ifndef UX607_D_SHARE_ILM 
     
  output                          biu2ilm_icb_cmd_valid,
  input                           biu2ilm_icb_cmd_ready,
  output  [`UX607_ILM_ADDR_WIDTH-1:0]   biu2ilm_icb_cmd_addr, 
  output                          biu2ilm_icb_cmd_read, 
  output  [`UX607_MLEN-1:0]        biu2ilm_icb_cmd_wdata,
  output  [`UX607_MLEN/8-1:0]      biu2ilm_icb_cmd_wmask,
  
  input                           biu2ilm_icb_rsp_valid,
  output                          biu2ilm_icb_rsp_ready,
  input                           biu2ilm_icb_rsp_err,
  input   [`UX607_MLEN-1:0]        biu2ilm_icb_rsp_rdata,
     
      `endif
     

  output                          biu2dlm_icb_cmd_valid,
  input                           biu2dlm_icb_cmd_ready,
  output  [`UX607_DLM_ADDR_WIDTH-1:0]   biu2dlm_icb_cmd_addr, 
  output                          biu2dlm_icb_cmd_read, 
  output  [`UX607_MLEN-1:0]        biu2dlm_icb_cmd_wdata,
  output  [`UX607_MLEN/8-1:0]      biu2dlm_icb_cmd_wmask,
  
  input                           biu2dlm_icb_rsp_valid,
  output                          biu2dlm_icb_rsp_ready,
  input                           biu2dlm_icb_rsp_err,
  input   [`UX607_MLEN-1:0]        biu2dlm_icb_rsp_rdata,


     
      `ifdef UX607_MEM_TYPE_AHBL 
     
  input  [1:0]                     mem_ahbl_htrans,   
  input                            mem_ahbl_hwrite,   
  input  [`UX607_PA_SIZE    -1:0] mem_ahbl_haddr,    
  input  [1:0]                     mem_ahbl_hsize,    
  input                            mem_ahbl_hlock,   
  input                            mem_ahbl_hexcl,   
  input  [2:0]                     mem_ahbl_hburst,   
  input  [`UX607_MLEN    -1:0]      mem_ahbl_hwdata,   
  output [`UX607_MLEN    -1:0]      mem_ahbl_hrdata,   
  output [1:0]                     mem_ahbl_hresp,    
  output                           mem_ahbl_hresp_exok,    
  output                           mem_ahbl_hready,   
     
      `endif
     
    `ifdef UX607_MEM_TYPE_AXI
  
  output                           axi_arready,
  input                            axi_arvalid,
  
  input [`UX607_PA_SIZE-1:0]      axi_araddr,
  input [7:0]                      axi_arlen,
  input [2:0]                      axi_arsize,
  input [1:0]                      axi_arburst,
  input [1:0]                      axi_arlock,
  input [3:0]                      axi_arcache,
  input [2:0]                      axi_arprot,
  
  
  
  
  output                           axi_awready,
  input                            axi_awvalid,
  
  input [`UX607_PA_SIZE-1:0]      axi_awaddr,
  input [7:0]                      axi_awlen,
  input [2:0]                      axi_awsize,
  input [1:0]                      axi_awburst,
  input [1:0]                      axi_awlock,
  input [3:0]                      axi_awcache,
  input [2:0]                      axi_awprot,
  
  
  

  output                           axi_wready,
  input                            axi_wvalid,
  
  input [`UX607_MLEN-1:0]           axi_wdata,
  input [`UX607_MLEN_MW-1:0]        axi_wstrb,
  input                            axi_wlast,
  
  input                            axi_rready,
  output                           axi_rvalid,
  
  output [`UX607_MLEN-1:0]          axi_rdata,
  output [1:0]                     axi_rresp,
  output                           axi_rlast,
  
  input                            axi_bready,
  output                           axi_bvalid,
  
  output [1:0]                     axi_bresp,

  input                            axi_bus_clk_en,
    `endif

  
    
  output                         qspi0_ro_icb_cmd_valid,
  input                          qspi0_ro_icb_cmd_ready,
  output [`UX607_PA_SIZE-1:0]   qspi0_ro_icb_cmd_addr, 
  output                         qspi0_ro_icb_cmd_read, 
  output [`UX607_PLEN-1:0]        qspi0_ro_icb_cmd_wdata,
  
  input                          qspi0_ro_icb_rsp_valid,
  output                         qspi0_ro_icb_rsp_ready,
  input                          qspi0_ro_icb_rsp_err,
  input  [`UX607_PLEN-1:0]        qspi0_ro_icb_rsp_rdata,


     
  `ifndef UX607_HAS_PPI 
     
  
  output                         biu2ppi_icb_cmd_valid,
  input                          biu2ppi_icb_cmd_ready,
  output [`UX607_PA_SIZE-1:0]   biu2ppi_icb_cmd_addr, 
  output                         biu2ppi_icb_cmd_read, 
  output [`UX607_PLEN-1:0]        biu2ppi_icb_cmd_wdata,
  output [`UX607_PLEN/8-1:0]      biu2ppi_icb_cmd_wmask,
  
  input                          biu2ppi_icb_rsp_valid,
  output                         biu2ppi_icb_rsp_ready,
  input                          biu2ppi_icb_rsp_err,
  input  [`UX607_PLEN-1:0]        biu2ppi_icb_rsp_rdata,
     
  `endif
     

  input  clk,
  input  bus_rst_n,
  input  rst_n
  );


  `ifdef UX607_MEM_TYPE_ICB 
  wire [1:0]                      mem_icb_cmd_size = 2'b10; 
  `endif
  `ifdef UX607_MEM_TYPE_AHBL 
  wire [1:0]                      mem_icb_cmd_size = 2'b10; 
  `endif


  
     
      `ifndef UX607_D_SHARE_ILM 
     
  wire                          biu2ilm_icb_cmd_valid_m;
  wire                          biu2ilm_icb_cmd_ready_m;
  wire  [`UX607_ILM_ADDR_WIDTH-1:0]   biu2ilm_icb_cmd_addr_m;
  wire                          biu2ilm_icb_cmd_read_m;
  wire  [`UX607_MLEN-1:0]        biu2ilm_icb_cmd_wdata_m;
  wire  [`UX607_MLEN/8-1:0]      biu2ilm_icb_cmd_wmask_m;
  wire  [1:0]                   biu2ilm_icb_cmd_size_m;
  
  wire                          biu2ilm_icb_rsp_valid_m;
  wire                          biu2ilm_icb_rsp_ready_m;
  wire                          biu2ilm_icb_rsp_err_m;
  wire  [`UX607_MLEN-1:0]        biu2ilm_icb_rsp_rdata_m;
     
      `endif
     

  wire                          biu2dlm_icb_cmd_valid_m;
  wire                          biu2dlm_icb_cmd_ready_m;
  wire  [`UX607_DLM_ADDR_WIDTH-1:0]   biu2dlm_icb_cmd_addr_m;
  wire                          biu2dlm_icb_cmd_read_m; 
  wire  [`UX607_MLEN-1:0]        biu2dlm_icb_cmd_wdata_m;
  wire  [`UX607_MLEN/8-1:0]      biu2dlm_icb_cmd_wmask_m;
  wire  [1:0]                   biu2dlm_icb_cmd_size_m;
  
  wire                          biu2dlm_icb_rsp_valid_m;
  wire                          biu2dlm_icb_rsp_ready_m;
  wire                          biu2dlm_icb_rsp_err_m;
  wire  [`UX607_MLEN-1:0]        biu2dlm_icb_rsp_rdata_m;
     
      `ifndef UX607_TMR_PRIVATE 
  wire                          biu2tmr_icb_cmd_valid_m;
  wire                          biu2tmr_icb_cmd_ready_m;
  wire  [`UX607_PA_SIZE-1:0]   biu2tmr_icb_cmd_addr_m; 
  wire                          biu2tmr_icb_cmd_read_m; 
  wire  [`UX607_MLEN-1:0]        biu2tmr_icb_cmd_wdata_m;
  wire  [`UX607_MLEN/8-1:0]      biu2tmr_icb_cmd_wmask_m;
  wire  [1:0]                   biu2tmr_icb_cmd_size_m;
  wire                          biu2tmr_icb_rsp_valid_m;
  wire                          biu2tmr_icb_rsp_ready_m;
  wire                          biu2tmr_icb_rsp_err_m;
  wire  [`UX607_MLEN-1:0]        biu2tmr_icb_rsp_rdata_m;
      `endif
     

  wire                          qspi0_ro_icb_cmd_valid_m;
  wire                          qspi0_ro_icb_cmd_ready_m;
  wire [`UX607_PA_SIZE-1:0]    qspi0_ro_icb_cmd_addr_m; 
  wire                          qspi0_ro_icb_cmd_read_m; 
  wire [`UX607_MLEN-1:0]         qspi0_ro_icb_cmd_wdata_m;
  wire [1:0]                    qspi0_ro_icb_cmd_size_m;
  
  wire                          qspi0_ro_icb_rsp_valid_m;
  wire                          qspi0_ro_icb_rsp_ready_m;
  wire                          qspi0_ro_icb_rsp_err_m;
  wire [`UX607_MLEN-1:0]         qspi0_ro_icb_rsp_rdata_m;

     
  `ifndef UX607_HAS_PPI 
     
  
  wire                          biu2ppi_icb_cmd_valid_m;
  wire                          biu2ppi_icb_cmd_ready_m;
  wire [`UX607_PA_SIZE-1:0]    biu2ppi_icb_cmd_addr_m; 
  wire                          biu2ppi_icb_cmd_read_m; 
  wire [`UX607_MLEN-1:0]         biu2ppi_icb_cmd_wdata_m;
  wire [`UX607_MLEN/8-1:0]       biu2ppi_icb_cmd_wmask_m;
  wire  [1:0]                   biu2ppi_icb_cmd_size_m;
  
  wire                          biu2ppi_icb_rsp_valid_m;
  wire                          biu2ppi_icb_rsp_ready_m;
  wire                          biu2ppi_icb_rsp_err_m;
  wire [`UX607_MLEN-1:0]         biu2ppi_icb_rsp_rdata_m;
     
  `endif
     
  
  wire                         mrom_icb_cmd_valid_m;
  wire                         mrom_icb_cmd_ready_m;
  wire [`UX607_PA_SIZE-1:0]   mrom_icb_cmd_addr_m; 
  wire                         mrom_icb_cmd_read_m; 
  wire  [1:0]                  mrom_icb_cmd_size_m;
  
  wire                         mrom_icb_rsp_valid_m;
  wire                         mrom_icb_rsp_ready_m;
  wire                         mrom_icb_rsp_err_m;
  wire [`UX607_MLEN-1:0]        mrom_icb_rsp_rdata_m;

  

     
      `ifdef UX607_MEM_TYPE_AHBL 
     
  wire                         mem_icb_cmd_valid;
  wire                         mem_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   mem_icb_cmd_addr; 
  wire                         mem_icb_cmd_read; 
  wire                         mem_icb_cmd_excl; 
  wire [`UX607_MLEN-1:0]        mem_icb_cmd_wdata;
  wire [`UX607_MLEN/8-1:0]      mem_icb_cmd_wmask;
  
  wire                         mem_icb_rsp_valid;
  wire                         mem_icb_rsp_ready;
  wire                         mem_icb_rsp_err;
  wire                         mem_icb_rsp_excl_ok;
  wire [`UX607_MLEN-1:0]        mem_icb_rsp_rdata;

  ux607_gnrl_ahbl2icb #(
    .AW(`UX607_PA_SIZE),
    .DW(`UX607_MLEN)
    ) u_mems_ahbl2icb (
      
    .ahbl2icb_active (),

    .ahbl_hsel       (1'b1      ),    
    .ahbl_htrans     (mem_ahbl_htrans    ),
    .ahbl_hwrite     (mem_ahbl_hwrite    ),
    .ahbl_haddr      (mem_ahbl_haddr     ),
    .ahbl_hsize      ({1'b0,mem_ahbl_hsize}     ),
    .ahbl_hexcl      (mem_ahbl_hexcl     ),
    .ahbl_hwdata     (mem_ahbl_hwdata    ),
	.ahbl_huser      (1'b0),
                      
    .ahbl_hrdata     (mem_ahbl_hrdata    ),
    .ahbl_hresp      (mem_ahbl_hresp     ),
    .ahbl_hresp_exok (mem_ahbl_hresp_exok),
    .ahbl_hready_in  (mem_ahbl_hready),  
    .ahbl_hready_out (mem_ahbl_hready),   

    .icb_cmd_valid (mem_icb_cmd_valid),
    .icb_cmd_ready (mem_icb_cmd_ready),
    .icb_cmd_read  (mem_icb_cmd_read ),
    .icb_cmd_excl  (mem_icb_cmd_excl ),
    .icb_cmd_addr  (mem_icb_cmd_addr ),
    .icb_cmd_wdata (mem_icb_cmd_wdata),
    .icb_cmd_wmask (mem_icb_cmd_wmask),
    .icb_cmd_size  (),
    .icb_cmd_sel   (),
	  .icb_cmd_user  (),

    .icb_rsp_valid (mem_icb_rsp_valid),
    .icb_rsp_ready (mem_icb_rsp_ready),
    .icb_rsp_err   (mem_icb_rsp_err  ),
    .icb_rsp_excl_ok   (mem_icb_rsp_excl_ok  ),
    .icb_rsp_rdata (mem_icb_rsp_rdata),
       
    .clk           (clk  ),
    .rst_n         (bus_rst_n) 
  );


     
      `endif
    
  `ifdef UX607_MEM_TYPE_AXI
  wire                         icb_rcmd_valid;
  wire                         icb_rcmd_ready;
  wire [`UX607_PA_SIZE-1:0]   icb_rcmd_addr; 
  wire                         icb_rcmd_read; 
  wire                         icb_rcmd_excl; 
  wire [1:0]                   icb_rcmd_size; 
  wire [`UX607_MLEN-1:0]        icb_rcmd_wdata;
  wire [`UX607_MLEN/8-1:0]      icb_rcmd_wmask;
  wire [3-1:0]                 icb_rcmd_burst;
  wire [2-1:0]                 icb_rcmd_beat;
  
  wire                         icb_rrsp_valid;
  wire                         icb_rrsp_ready;
  wire                         icb_rrsp_err;
  wire                         icb_rrsp_excl_ok;
  wire [`UX607_MLEN-1:0]        icb_rrsp_rdata;

  wire                         icb_wcmd_valid;
  wire                         icb_wcmd_ready;
  wire [`UX607_PA_SIZE-1:0]   icb_wcmd_addr; 
  wire                         icb_wcmd_read; 
  wire                         icb_wcmd_excl; 
  wire [1:0]                   icb_wcmd_size; 
  wire [`UX607_MLEN-1:0]        icb_wcmd_wdata;
  wire [`UX607_MLEN/8-1:0]      icb_wcmd_wmask;
  wire [3-1:0]                 icb_wcmd_burst;
  wire [2-1:0]                 icb_wcmd_beat;
  
  wire                         icb_wrsp_valid;
  wire                         icb_wrsp_ready;
  wire                         icb_wrsp_err;
  wire                         icb_wrsp_excl_ok;
  wire [`UX607_MLEN-1:0]        icb_wrsp_rdata;

  wire                         mem_icb_cmd_valid;
  wire                         mem_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   mem_icb_cmd_addr; 
  wire                         mem_icb_cmd_read; 
  wire                         mem_icb_cmd_excl; 
  wire [1:0]                   mem_icb_cmd_size; 
  wire [`UX607_MLEN-1:0]        mem_icb_cmd_wdata;
  wire [`UX607_MLEN/8-1:0]      mem_icb_cmd_wmask;
  wire [3-1:0]                 mem_icb_cmd_burst;
  wire [2-1:0]                 mem_icb_cmd_beat;
  
  wire                         mem_icb_rsp_valid;
  wire                         mem_icb_rsp_ready;
  wire                         mem_icb_rsp_err;
  wire                         mem_icb_rsp_excl_ok;
  wire [`UX607_MLEN-1:0]        mem_icb_rsp_rdata;

  localparam BIU_ARBT_I_NUM = 2;
  localparam BIU_ARBT_I_PTR_W = 1;

  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_cmd_valid;
  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_cmd_ready;
  wire [BIU_ARBT_I_NUM*`UX607_PA_SIZE-1:0] arbt_bus_icb_cmd_addr;
  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_cmd_read;
  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_cmd_excl;
  wire [BIU_ARBT_I_NUM*2-1:0] arbt_bus_icb_cmd_size;
  wire [BIU_ARBT_I_NUM*`UX607_MLEN-1:0] arbt_bus_icb_cmd_wdata;
  wire [BIU_ARBT_I_NUM*`UX607_MLEN_MW-1:0] arbt_bus_icb_cmd_wmask;
  wire [BIU_ARBT_I_NUM*3-1:0] arbt_bus_icb_cmd_burst;
  wire [BIU_ARBT_I_NUM*2-1:0] arbt_bus_icb_cmd_beat;

  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_rsp_valid;
  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_rsp_ready;
  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_rsp_err;
  wire [BIU_ARBT_I_NUM*1-1:0] arbt_bus_icb_rsp_excl_ok;
  wire [BIU_ARBT_I_NUM*`UX607_MLEN-1:0] arbt_bus_icb_rsp_rdata;

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  assign arbt_bus_icb_cmd_valid =
      
                           {
                             icb_rcmd_valid,
                             icb_wcmd_valid
                           } ;

  wire[BIU_ARBT_I_NUM-1:0] arbt_bus_icb_cmd_sel_vec =
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           {BIU_ARBT_I_NUM{1'b0}};

  assign arbt_bus_icb_cmd_addr =
                           {
                             icb_rcmd_addr,
                             icb_wcmd_addr
                           } ;

  assign arbt_bus_icb_cmd_read =
                           {
                             icb_rcmd_read,
                             icb_wcmd_read
                           } ;

  assign arbt_bus_icb_cmd_wdata =
                           {
                             icb_rcmd_wdata,
                             icb_wcmd_wdata
                           } ;

  assign arbt_bus_icb_cmd_wmask =
                           {
                             icb_rcmd_wmask,
                             icb_wcmd_wmask
                           } ;
                         
  assign arbt_bus_icb_cmd_burst =
                           {
                             icb_rcmd_burst,
                             icb_wcmd_burst
                           } ;
                         
  assign arbt_bus_icb_cmd_beat =
                           {
                             icb_rcmd_beat,
                             icb_wcmd_beat
                           } ;
                         
  assign arbt_bus_icb_cmd_excl =
                           {
                             icb_rcmd_excl,
                             icb_wcmd_excl
                           } ;

  assign arbt_bus_icb_cmd_size =
                           {
                             icb_rcmd_size,
                             icb_wcmd_size
                           } ;

  assign                   {
                             icb_rcmd_ready,
                             icb_wcmd_ready
                           } = arbt_bus_icb_cmd_ready;

  
  assign                   {
                             icb_rrsp_valid,
                             icb_wrsp_valid
                           } = arbt_bus_icb_rsp_valid;

  assign                   {
                             icb_rrsp_err,
                             icb_wrsp_err
                           } = arbt_bus_icb_rsp_err;

  assign                   {
                             icb_rrsp_excl_ok,
                             icb_wrsp_excl_ok
                           } = arbt_bus_icb_rsp_excl_ok;
                           
  assign                   {
                             icb_rrsp_rdata,
                             icb_wrsp_rdata
                           } = arbt_bus_icb_rsp_rdata;

  assign arbt_bus_icb_rsp_ready = {
                             icb_rrsp_ready,
                             icb_wrsp_ready
                           };

  wire arbt_icb_active;

  ux607_gnrl_icb_arbt # (
   
  .ALLOW_BURST (`UX607_ALLOW_BURST),

  .ARBT_SCHEME (1),
  .FIFO_CUT_READY  (0),
  .ALLOW_0CYCL_RSP (0),
                       
  .FIFO_OUTS_NUM   (`UX607_BIU_OUTS_NUM+8),
  .ARBT_NUM   (BIU_ARBT_I_NUM),
  .ARBT_PTR_W (BIU_ARBT_I_PTR_W),
  
  .AW         (`UX607_PA_SIZE),
  .DW         (`UX607_MLEN) 
  ) u_mem_icb_arbt(
  .arbt_active            (arbt_icb_active),
  .o_icb_cmd_valid        (mem_icb_cmd_valid )     ,
  .o_icb_cmd_ready        (mem_icb_cmd_ready )     ,
  .o_icb_cmd_read         (mem_icb_cmd_read )      ,
  .o_icb_cmd_addr         (mem_icb_cmd_addr )      ,
  .o_icb_cmd_wdata        (mem_icb_cmd_wdata )     ,
  .o_icb_cmd_wmask        (mem_icb_cmd_wmask)      ,
  .o_icb_cmd_burst        (mem_icb_cmd_burst)     ,
  .o_icb_cmd_beat         (mem_icb_cmd_beat )     ,
  .o_icb_cmd_excl         (mem_icb_cmd_excl )     ,
  .o_icb_cmd_lock         ( )     ,
  .o_icb_cmd_size         (mem_icb_cmd_size )     ,
  .o_icb_cmd_usr          ( )     ,
                               
  .o_icb_rsp_valid        (mem_icb_rsp_valid )     ,
  .o_icb_rsp_ready        (mem_icb_rsp_ready )     ,
  .o_icb_rsp_err          (mem_icb_rsp_err)        ,
  .o_icb_rsp_excl_ok      (mem_icb_rsp_excl_ok)    ,
  .o_icb_rsp_rdata        (mem_icb_rsp_rdata )     ,
  .o_icb_rsp_usr          ( )     ,
                               
  .i_bus_icb_cmd_sel_vec  (arbt_bus_icb_cmd_sel_vec) ,

  .i_bus_icb_cmd_ready    (arbt_bus_icb_cmd_ready ) ,
  .i_bus_icb_cmd_valid    (arbt_bus_icb_cmd_valid ) ,
  .i_bus_icb_cmd_read     (arbt_bus_icb_cmd_read )  ,
  .i_bus_icb_cmd_addr     (arbt_bus_icb_cmd_addr )  ,
  .i_bus_icb_cmd_wdata    (arbt_bus_icb_cmd_wdata ) ,
  .i_bus_icb_cmd_wmask    (arbt_bus_icb_cmd_wmask)  ,
  .i_bus_icb_cmd_burst    (arbt_bus_icb_cmd_burst),
  .i_bus_icb_cmd_beat     (arbt_bus_icb_cmd_beat ),
  .i_bus_icb_cmd_excl     (arbt_bus_icb_cmd_excl ),
  .i_bus_icb_cmd_lock     ({BIU_ARBT_I_NUM{1'b0}}),     
  .i_bus_icb_cmd_size     (arbt_bus_icb_cmd_size ),     
  .i_bus_icb_cmd_usr      ({BIU_ARBT_I_NUM{1'b0}}),     
                                
  .i_bus_icb_rsp_valid    (arbt_bus_icb_rsp_valid ) ,
  .i_bus_icb_rsp_ready    (arbt_bus_icb_rsp_ready ) ,
  .i_bus_icb_rsp_err      (arbt_bus_icb_rsp_err)    ,
  .i_bus_icb_rsp_excl_ok  (arbt_bus_icb_rsp_excl_ok),
  .i_bus_icb_rsp_rdata    (arbt_bus_icb_rsp_rdata ) ,
  .i_bus_icb_rsp_usr      () ,
                             
  .clk                    (clk  )                     ,
  .rst_n                  (rst_n)
  );


  ux607_gnrl_axi2icb_read # (
  .AW(`UX607_PA_SIZE),
  .DW(`UX607_MLEN),
  .MW(`UX607_MLEN_MW),
  .BUFFER_DP(0),
  .ALLOW_BURST (`UX607_ALLOW_BURST), 
  .ID_W (`UX607_BUSID_W),
  .USR_W (`UX607_USR_W)
  ) u_ux607_axi2icb_read (
    .axi2icb_read_active(),
  
    .axi_arready  (axi_arready ),
    .axi_arvalid  (axi_arvalid ),
    .axi_arid     (`UX607_BUSID_W'h0    ),
    .axi_araddr   (axi_araddr  ),
    .axi_arlen    (axi_arlen   ),
    .axi_arsize   (axi_arsize  ),
    .axi_arburst  (axi_arburst ),
    .axi_arlock   (axi_arlock[0]  ),
    .axi_arcache  (axi_arcache ),
    .axi_arprot   (axi_arprot  ),
    .axi_arqos    (4'h0   ),
    .axi_arregion (4'h0   ),
    .axi_aruser   (`UX607_USR_W'h0  ),

  
    .axi_rready   (axi_rready   ),
    .axi_rvalid   (axi_rvalid   ),
    .axi_rid      (  ),
    .axi_rdata    (axi_rdata    ),
    .axi_rresp    (axi_rresp    ),
    .axi_rlast    (axi_rlast    ),

  
    .icb_rcmd_valid (icb_rcmd_valid ),
    .icb_rcmd_ready (icb_rcmd_ready ),
    .icb_rcmd_addr  (icb_rcmd_addr  ),
    .icb_rcmd_read  (icb_rcmd_read  ),
    .icb_rcmd_wdata (icb_rcmd_wdata ),
    .icb_rcmd_wmask (icb_rcmd_wmask ),
    .icb_rcmd_burst (icb_rcmd_burst ),
    .icb_rcmd_beat  (icb_rcmd_beat  ),
    .icb_rcmd_excl  (icb_rcmd_excl  ),             
    .icb_rcmd_size  (icb_rcmd_size  ),
    .icb_rcmd_usr   (              ), 
                       
    .icb_rrsp_ready  (icb_rrsp_ready  ), 
    .icb_rrsp_valid  (icb_rrsp_valid  ), 
    .icb_rrsp_rdata  (icb_rrsp_rdata  ), 
    .icb_rrsp_err    (icb_rrsp_err    ), 
    .icb_rrsp_excl_ok(icb_rrsp_excl_ok), 

    .axi_bus_clk_en  (axi_bus_clk_en),

    .clk  (clk  ),
    .rst_n(rst_n)  
  );




  ux607_gnrl_axi2icb_write # (
    .AW (`UX607_PA_SIZE),
    .DW (`UX607_MLEN),
    .MW (`UX607_MLEN_MW),
    .BUFFER_DP(0),
    .ALLOW_BURST(`UX607_ALLOW_BURST),
    .ID_W (`UX607_BUSID_W),
    .USR_W (`UX607_USR_W)
  ) u_ux607_axi2icb_write (
      .axi2icb_write_active(),
  
    .axi_awready   (axi_awready   ),
    .axi_awvalid   (axi_awvalid   ),
    .axi_awid      (`UX607_BUSID_W'h0),
    .axi_awaddr    (axi_awaddr    ),
    .axi_awlen     (axi_awlen     ),
    .axi_awsize    (axi_awsize    ),
    .axi_awburst   (axi_awburst   ),
    .axi_awlock    (axi_awlock[0]    ),
    .axi_awcache   (axi_awcache   ),
    .axi_awprot    (axi_awprot    ),
    .axi_awqos     (4'h0   ),
    .axi_awregion  (4'h0   ),
    .axi_awuser    (`UX607_USR_W'h0  ), 
  
    .axi_wready    (axi_wready    ),
    .axi_wvalid    (axi_wvalid    ),
    .axi_wid       (`UX607_BUSID_W'h0),
    .axi_wdata     (axi_wdata     ),
    .axi_wstrb     (axi_wstrb     ),
    .axi_wlast     (axi_wlast     ),
  
    .axi_bready    (axi_bready    ),
    .axi_bvalid    (axi_bvalid    ),
    .axi_bid       (              ),
    .axi_bresp     (axi_bresp     ),

    .icb_wcmd_valid (icb_wcmd_valid ),
    .icb_wcmd_ready (icb_wcmd_ready ),
    .icb_wcmd_addr  (icb_wcmd_addr  ),
    .icb_wcmd_read  (icb_wcmd_read  ), 
    .icb_wcmd_wdata (icb_wcmd_wdata ),
    .icb_wcmd_wmask (icb_wcmd_wmask ),
    .icb_wcmd_burst (icb_wcmd_burst ),
    .icb_wcmd_beat  (icb_wcmd_beat  ),
    .icb_wcmd_lock  (               ),
    .icb_wcmd_excl  (icb_wcmd_excl  ),
    .icb_wcmd_size  (icb_wcmd_size  ),
    .icb_wcmd_usr   (             ),

    .icb_wrsp_valid  (icb_wrsp_valid  ),
    .icb_wrsp_ready  (icb_wrsp_ready  ),
    .icb_wrsp_err    (icb_wrsp_err    ),
    .icb_wrsp_excl_ok(icb_wrsp_excl_ok),

    .axi_bus_clk_en  (axi_bus_clk_en),

    .clk   (clk  ),
    .rst_n (rst_n)
  );


  `endif  
          

     

  wire                         excl_mem_icb_cmd_valid;
  wire                         excl_mem_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   excl_mem_icb_cmd_addr; 
  wire                         excl_mem_icb_cmd_read; 
  wire [`UX607_MLEN-1:0]        excl_mem_icb_cmd_wdata;
  wire [`UX607_MLEN/8-1:0]      excl_mem_icb_cmd_wmask;
  wire [             1:0]      excl_mem_icb_cmd_size;
  
  wire                         excl_mem_icb_rsp_valid;
  wire                         excl_mem_icb_rsp_ready;
  wire                         excl_mem_icb_rsp_err;
  wire [`UX607_MLEN-1:0]        excl_mem_icb_rsp_rdata;


  ux607_subsys_excl u_ux607_subsys_excl(
    .icb_cmd_valid   (mem_icb_cmd_valid  ),
    .icb_cmd_ready   (mem_icb_cmd_ready  ),
    .icb_cmd_addr    (mem_icb_cmd_addr   ),
    .icb_cmd_read    (mem_icb_cmd_read   ),
    .icb_cmd_wdata   (mem_icb_cmd_wdata  ),
    .icb_cmd_wmask   (mem_icb_cmd_wmask  ),
    .icb_cmd_lock    (1'b0   ),
    .icb_cmd_excl    (mem_icb_cmd_excl   ),
    .icb_cmd_size    (mem_icb_cmd_size   ),
                      
    .icb_rsp_valid   (mem_icb_rsp_valid  ),
    .icb_rsp_ready   (mem_icb_rsp_ready  ),
    .icb_rsp_err     (mem_icb_rsp_err    ),
    .icb_rsp_excl_ok (mem_icb_rsp_excl_ok),
    .icb_rsp_rdata   (mem_icb_rsp_rdata  ),
                  
    .o_icb_cmd_valid (excl_mem_icb_cmd_valid ),
    .o_icb_cmd_ready (excl_mem_icb_cmd_ready ),
    .o_icb_cmd_addr  (excl_mem_icb_cmd_addr  ),
    .o_icb_cmd_read  (excl_mem_icb_cmd_read  ),
    .o_icb_cmd_wdata (excl_mem_icb_cmd_wdata ),
    .o_icb_cmd_wmask (excl_mem_icb_cmd_wmask ),
    .o_icb_cmd_lock  (),
    .o_icb_cmd_size  (excl_mem_icb_cmd_size ),
                      
    .o_icb_rsp_valid (excl_mem_icb_rsp_valid ),
    .o_icb_rsp_ready (excl_mem_icb_rsp_ready ),
    .o_icb_rsp_err   (excl_mem_icb_rsp_err   ),
    .o_icb_rsp_rdata (excl_mem_icb_rsp_rdata ),


    .clk               (clk  ),
    .rst_n             (rst_n) 
  );

     
      `ifndef UX607_TMR_PRIVATE 
  wire                          biu2tmr_icb_cmd_valid;
  wire                          biu2tmr_icb_cmd_ready;
  wire  [`UX607_PA_SIZE-1:0]   biu2tmr_icb_cmd_addr; 
  wire                          biu2tmr_icb_cmd_read; 
  wire  [`UX607_PLEN-1:0]        biu2tmr_icb_cmd_wdata;
  wire  [`UX607_PLEN/8-1:0]      biu2tmr_icb_cmd_wmask;
  wire                          biu2tmr_icb_rsp_valid;
  wire                          biu2tmr_icb_rsp_ready;
  wire                          biu2tmr_icb_rsp_err;
  wire  [`UX607_PLEN-1:0]        biu2tmr_icb_rsp_rdata;
      `endif
     

  
  
  
  
  
  
  
  
  
  

     
      `ifndef UX607_HAS_DEBUG_PRIVATE 
  wire                          biu2dm_icb_cmd_valid;
  wire                          biu2dm_icb_cmd_ready = 1'b0;
  wire  [`UX607_PA_SIZE-1:0]   biu2dm_icb_cmd_addr; 
  wire                          biu2dm_icb_cmd_read; 
  wire  [`UX607_MLEN-1:0]        biu2dm_icb_cmd_wdata;
  wire  [`UX607_MLEN/8-1:0]      biu2dm_icb_cmd_wmask;
  wire                          biu2dm_icb_rsp_valid = 1'b0;
  wire                          biu2dm_icb_rsp_ready;
  wire                          biu2dm_icb_rsp_err   = 1'b0;
  wire  [`UX607_MLEN-1:0]        biu2dm_icb_rsp_rdata = `UX607_MLEN'b0;
      `endif
     



  wire                         i_mem_icb_cmd_valid;
  wire                         i_mem_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   i_mem_icb_cmd_addr; 
  wire                         i_mem_icb_cmd_read; 
  wire [`UX607_MLEN-1:0]        i_mem_icb_cmd_wdata;
  wire [`UX607_MLEN/8-1:0]      i_mem_icb_cmd_wmask;
  wire [           1:0]        i_mem_icb_cmd_size;
  
  wire                         i_mem_icb_rsp_valid;
  wire                         i_mem_icb_rsp_ready;
  wire                         i_mem_icb_rsp_err;
  wire [`UX607_MLEN-1:0]        i_mem_icb_rsp_rdata;

  wire [`UX607_PA_SIZE-1:0] biu2dlm_icb_cmd_addr_raw;

  assign biu2dlm_icb_cmd_addr_m = biu2dlm_icb_cmd_addr_raw[`UX607_DLM_ADDR_WIDTH-1:0];

     
      `ifndef UX607_D_SHARE_ILM 
     
  wire [`UX607_PA_SIZE-1:0] biu2ilm_icb_cmd_addr_raw;
  assign biu2ilm_icb_cmd_addr_m = biu2ilm_icb_cmd_addr_raw[`UX607_ILM_ADDR_WIDTH-1:0];
     
      `endif
     

  ux607_icb1to6_bus # (
      .ALLOW_DIFF         (1),
      .ALLOW_0CYCL_RSP    (0),
      .ICB_FIFO_DP        (0),
      .ICB_FIFO_CUT_READY (0),
      
      .SPLT_FIFO_OUTS_NUM   (16),
      .SPLT_FIFO_OUTS_CNT_W (5),
      .SPLT_FIFO_CUT_READY  (1),
      .O0_BASE_ADDR       (`UX607_CFG_ILM_BASE_ADDR),       
      .O0_BASE_REGION_LSB (`UX607_ILM_ADDR_WIDTH), 
      .O1_BASE_ADDR       (`UX607_CFG_DLM_BASE_ADDR),       
      .O1_BASE_REGION_LSB (`UX607_DLM_ADDR_WIDTH),
      .O2_BASE_ADDR       (`UX607_CFG_TMR_BASE_ADDR),
      .O2_BASE_REGION_LSB (8),
      .O3_BASE_ADDR       (`UX607_PA_SIZE'b0),
      .O3_BASE_REGION_LSB (13),
      .O4_BASE_ADDR       (`UX607_CFG_DEBUG_BASE_ADDR),
      .O4_BASE_REGION_LSB (12),
      .AW                 (`UX607_PA_SIZE),
      .DW                 (`UX607_MLEN) 
  )u_ilm_1to6_icb(

    .i_icb_cmd_valid  (excl_mem_icb_cmd_valid),
    .i_icb_cmd_ready  (excl_mem_icb_cmd_ready),
    .i_icb_cmd_addr   (excl_mem_icb_cmd_addr ),
    .i_icb_cmd_read   (excl_mem_icb_cmd_read ),
    .i_icb_cmd_wdata  (excl_mem_icb_cmd_wdata),
    .i_icb_cmd_wmask  (excl_mem_icb_cmd_wmask),
    .i_icb_cmd_lock   (1'b0),
    .i_icb_cmd_excl   (1'b0 ),
    .i_icb_cmd_size   (excl_mem_icb_cmd_size),
    .i_icb_cmd_burst  (3'b0 ),
    .i_icb_cmd_beat   (2'b0 ),
    
    .i_icb_rsp_valid  (excl_mem_icb_rsp_valid),
    .i_icb_rsp_ready  (excl_mem_icb_rsp_ready),
    .i_icb_rsp_err    (excl_mem_icb_rsp_err),
    .i_icb_rsp_excl_ok(),
    .i_icb_rsp_rdata  (excl_mem_icb_rsp_rdata),
    
        
     
  `ifndef UX607_D_SHARE_ILM 
     
    .o0_icb_enable     (1'b1),

    .o0_icb_cmd_valid  (biu2ilm_icb_cmd_valid_m),
    .o0_icb_cmd_ready  (biu2ilm_icb_cmd_ready_m),
    .o0_icb_cmd_addr   (biu2ilm_icb_cmd_addr_raw),
    .o0_icb_cmd_read   (biu2ilm_icb_cmd_read_m ),
    .o0_icb_cmd_wdata  (biu2ilm_icb_cmd_wdata_m),
    .o0_icb_cmd_wmask  (biu2ilm_icb_cmd_wmask_m),
    .o0_icb_cmd_lock   (),
    .o0_icb_cmd_excl   (),
    .o0_icb_cmd_size   (biu2ilm_icb_cmd_size_m),
    .o0_icb_cmd_burst  (),
    .o0_icb_cmd_beat   (),
    
    .o0_icb_rsp_valid  (biu2ilm_icb_rsp_valid_m),
    .o0_icb_rsp_ready  (biu2ilm_icb_rsp_ready_m),
    .o0_icb_rsp_err    (biu2ilm_icb_rsp_err_m),
    .o0_icb_rsp_excl_ok(1'b0  ),
    .o0_icb_rsp_rdata  (biu2ilm_icb_rsp_rdata_m),
     
  `else
    .o0_icb_enable     (1'b0),

    .o0_icb_cmd_valid  (),
    .o0_icb_cmd_ready  (1'b0),
    .o0_icb_cmd_addr   (),
    .o0_icb_cmd_read   (),
    .o0_icb_cmd_wdata  (),
    .o0_icb_cmd_wmask  (),
    .o0_icb_cmd_lock   (),
    .o0_icb_cmd_excl   (),
    .o0_icb_cmd_size   (),
    .o0_icb_cmd_burst  (),
    .o0_icb_cmd_beat   (),
    
    .o0_icb_rsp_valid  (1'b0),
    .o0_icb_rsp_ready  (),
    .o0_icb_rsp_err    (1'b0),
    .o0_icb_rsp_excl_ok(1'b0  ),
    .o0_icb_rsp_rdata  (`UX607_MLEN'b0),

  `endif
     

          
    .o1_icb_enable     (1'b1),

    .o1_icb_cmd_valid  (biu2dlm_icb_cmd_valid_m),
    .o1_icb_cmd_ready  (biu2dlm_icb_cmd_ready_m),
    .o1_icb_cmd_addr   (biu2dlm_icb_cmd_addr_raw),
    .o1_icb_cmd_read   (biu2dlm_icb_cmd_read_m ),
    .o1_icb_cmd_wdata  (biu2dlm_icb_cmd_wdata_m),
    .o1_icb_cmd_wmask  (biu2dlm_icb_cmd_wmask_m),
    .o1_icb_cmd_lock   (),
    .o1_icb_cmd_excl   (),
    .o1_icb_cmd_size   (biu2dlm_icb_cmd_size_m),
    .o1_icb_cmd_burst  (),
    .o1_icb_cmd_beat   (),
    
    .o1_icb_rsp_valid  (biu2dlm_icb_rsp_valid_m),
    .o1_icb_rsp_ready  (biu2dlm_icb_rsp_ready_m),
    .o1_icb_rsp_err    (biu2dlm_icb_rsp_err_m),
    .o1_icb_rsp_excl_ok(1'b0  ),
    .o1_icb_rsp_rdata  (biu2dlm_icb_rsp_rdata_m),

     
      `ifndef UX607_TMR_PRIVATE 
         
    .o2_icb_enable     (1'b1),

    .o2_icb_cmd_valid  (biu2tmr_icb_cmd_valid_m),
    .o2_icb_cmd_ready  (biu2tmr_icb_cmd_ready_m),
    .o2_icb_cmd_addr   (biu2tmr_icb_cmd_addr_m ),
    .o2_icb_cmd_read   (biu2tmr_icb_cmd_read_m ),
    .o2_icb_cmd_wdata  (biu2tmr_icb_cmd_wdata_m),
    .o2_icb_cmd_wmask  (biu2tmr_icb_cmd_wmask_m),
    .o2_icb_cmd_lock   (),
    .o2_icb_cmd_excl   (),
    .o2_icb_cmd_size   (biu2tmr_icb_cmd_size_m),
    .o2_icb_cmd_burst  (),
    .o2_icb_cmd_beat   (),
    
    .o2_icb_rsp_valid  (biu2tmr_icb_rsp_valid_m),
    .o2_icb_rsp_ready  (biu2tmr_icb_rsp_ready_m),
    .o2_icb_rsp_err    (biu2tmr_icb_rsp_err_m),
    .o2_icb_rsp_excl_ok(1'b0  ),
    .o2_icb_rsp_rdata  (biu2tmr_icb_rsp_rdata_m),
    `else
     

         
    .o2_icb_enable     (1'b0),

    .o2_icb_cmd_valid  (),
    .o2_icb_cmd_ready  (1'b0),
    .o2_icb_cmd_addr   (),
    .o2_icb_cmd_read   (),
    .o2_icb_cmd_wdata  (),
    .o2_icb_cmd_wmask  (),
    .o2_icb_cmd_lock   (),
    .o2_icb_cmd_excl   (),
    .o2_icb_cmd_size   (),
    .o2_icb_cmd_burst  (),
    .o2_icb_cmd_beat   (),
    
    .o2_icb_rsp_valid  (1'b0),
    .o2_icb_rsp_ready  (),
    .o2_icb_rsp_err    (1'b0),
    .o2_icb_rsp_excl_ok(1'b0  ),
    .o2_icb_rsp_rdata  (`UX607_MLEN'b0),

     
    `endif
     

 
         
    .o3_icb_enable     (1'b0),

    .o3_icb_cmd_valid  (),
    .o3_icb_cmd_ready  (1'b0),
    .o3_icb_cmd_addr   (),
    .o3_icb_cmd_read   (),
    .o3_icb_cmd_wdata  (),
    .o3_icb_cmd_wmask  (),
    .o3_icb_cmd_lock   (),
    .o3_icb_cmd_excl   (),
    .o3_icb_cmd_size   (),
    .o3_icb_cmd_burst  (),
    .o3_icb_cmd_beat   (),
    
    .o3_icb_rsp_valid  (1'b0),
    .o3_icb_rsp_ready  (),
    .o3_icb_rsp_err    (1'b0),
    .o3_icb_rsp_excl_ok(1'b0  ),
    .o3_icb_rsp_rdata  (`UX607_MLEN'b0),

         
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

     
    `ifndef UX607_HAS_DEBUG_PRIVATE 
         
    .o4_icb_enable     (1'b1),

    .o4_icb_cmd_valid  (biu2dm_icb_cmd_valid),
    .o4_icb_cmd_ready  (biu2dm_icb_cmd_ready),
    .o4_icb_cmd_addr   (biu2dm_icb_cmd_addr ),
    .o4_icb_cmd_read   (biu2dm_icb_cmd_read ),
    .o4_icb_cmd_wdata  (biu2dm_icb_cmd_wdata),
    .o4_icb_cmd_wmask  (biu2dm_icb_cmd_wmask),
    .o4_icb_cmd_lock   (),
    .o4_icb_cmd_excl   (),
    .o4_icb_cmd_size   (),
    .o4_icb_cmd_burst  (),
    .o4_icb_cmd_beat   (),
    
    .o4_icb_rsp_valid  (biu2dm_icb_rsp_valid),
    .o4_icb_rsp_ready  (biu2dm_icb_rsp_ready),
    .o4_icb_rsp_err    (biu2dm_icb_rsp_err),
    .o4_icb_rsp_excl_ok(1'b0  ),
    .o4_icb_rsp_rdata  (biu2dm_icb_rsp_rdata),
    `else
     

         
    .o4_icb_enable     (1'b0),

    .o4_icb_cmd_valid  (),
    .o4_icb_cmd_ready  (1'b0),
    .o4_icb_cmd_addr   (),
    .o4_icb_cmd_read   (),
    .o4_icb_cmd_wdata  (),
    .o4_icb_cmd_wmask  (),
    .o4_icb_cmd_lock   (),
    .o4_icb_cmd_excl   (),
    .o4_icb_cmd_size   (),
    .o4_icb_cmd_burst  (),
    .o4_icb_cmd_beat   (),
    
    .o4_icb_rsp_valid  (1'b0),
    .o4_icb_rsp_ready  (),
    .o4_icb_rsp_err    (1'b0),
    .o4_icb_rsp_excl_ok(1'b0  ),
    .o4_icb_rsp_rdata  (`UX607_MLEN'b0),

     
    `endif
     

        
    .o5_icb_cmd_valid  (i_mem_icb_cmd_valid),
    .o5_icb_cmd_ready  (i_mem_icb_cmd_ready),
    .o5_icb_cmd_addr   (i_mem_icb_cmd_addr ),
    .o5_icb_cmd_read   (i_mem_icb_cmd_read ),
    .o5_icb_cmd_wdata  (i_mem_icb_cmd_wdata),
    .o5_icb_cmd_wmask  (i_mem_icb_cmd_wmask),
    .o5_icb_cmd_lock   (),
    .o5_icb_cmd_excl   (),
    .o5_icb_cmd_size   (i_mem_icb_cmd_size),
    .o5_icb_cmd_burst  (),
    .o5_icb_cmd_beat   (),
    
    .o5_icb_rsp_valid  (i_mem_icb_rsp_valid),
    .o5_icb_rsp_ready  (i_mem_icb_rsp_ready),
    .o5_icb_rsp_err    (i_mem_icb_rsp_err  ),
    .o5_icb_rsp_excl_ok(1'b0  ),
    .o5_icb_rsp_rdata  (i_mem_icb_rsp_rdata),

    .clk               (clk  ),
    .rst_n             (rst_n) 
  );






















































































      
  wire                         mrom_icb_cmd_valid;
  wire                         mrom_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   mrom_icb_cmd_addr; 
  wire                         mrom_icb_cmd_read; 
  
  wire                         mrom_icb_rsp_valid;
  wire                         mrom_icb_rsp_ready;
  wire                         mrom_icb_rsp_err  ;
  wire [`UX607_MROM_LEN-1:0]    mrom_icb_rsp_rdata;

`ifdef UX607_HAS_CACHE
  wire                         sysmem_icb_cmd_valid;
  wire                         sysmem_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   sysmem_icb_cmd_addr; 
  wire [`UX607_MLEN-1:0]        sysmem_icb_cmd_wdata;
  wire [`UX607_MLEN/8-1:0]      sysmem_icb_cmd_wmask;
  wire                         sysmem_icb_cmd_read; 
  
  wire                         sysmem_icb_rsp_valid;
  wire                         sysmem_icb_rsp_ready;
  wire                         sysmem_icb_rsp_err  ;
  wire [`UX607_MLEN-1:0]        sysmem_icb_rsp_rdata;
`endif














  
  
  
  
  
  
  
  
  
  
  
  

 localparam MROM_AW = 12  ;
 localparam MROM_DP = 1024;
 localparam SYSMEM_BASE_ADDR = `UX607_SYS_MEM_BASE_ADDR;
 localparam SYSMEM_AW = `UX607_SYS_MEM_AW;
  
  
  
  
  
  

  ux607_icb1to8_bus # (
  .ICB_FIFO_CMD_DP        (2),
  .ICB_FIFO_RSP_DP        (0),
  .ICB_FIFO_CUT_READY (0),
  .AW                   (`UX607_PA_SIZE),
  .DW                   (`UX607_MLEN),
  .SPLT_FIFO_OUTS_NUM   (16),
  .SPLT_FIFO_CUT_READY  (5),
  
  .O0_BASE_ADDR       (`UX607_PA_SIZE'h9000_0000),       
  .O0_BASE_REGION_LSB (16),
  
  .O1_BASE_ADDR       (`UX607_PA_SIZE'h0000_1000),       
  .O1_BASE_REGION_LSB (12),
  
  .O2_BASE_ADDR       (`UX607_PA_SIZE'h0002_0000),       
  .O2_BASE_REGION_LSB (17),
  
  .O3_BASE_ADDR       (`UX607_PA_SIZE'h2000_0000),       
  .O3_BASE_REGION_LSB (23),
  
  .O4_BASE_ADDR       (`UX607_PA_SIZE'h0000_0000),       
  .O4_BASE_REGION_LSB (23),

      
  .O5_BASE_ADDR       (`UX607_CFG_PPI_BASE_ADDR),     
  .O5_BASE_REGION_LSB (23),
  
      
  .O6_BASE_ADDR       (SYSMEM_BASE_ADDR),       
  .O6_BASE_REGION_LSB (SYSMEM_AW),
  
      
  .O7_BASE_ADDR       (`UX607_PA_SIZE'h0000_0000),       
  .O7_BASE_REGION_LSB (0)

  )u_ux607_mem_fab(

    .i_icb_cmd_valid  (i_mem_icb_cmd_valid),
    .i_icb_cmd_ready  (i_mem_icb_cmd_ready),
    .i_icb_cmd_addr   (i_mem_icb_cmd_addr ),
    .i_icb_cmd_read   (i_mem_icb_cmd_read ),
    .i_icb_cmd_wdata  (i_mem_icb_cmd_wdata),
    .i_icb_cmd_wmask  (i_mem_icb_cmd_wmask),
    .i_icb_cmd_lock   (1'b0 ),
    .i_icb_cmd_excl   (1'b0 ),
    .i_icb_cmd_size   (i_mem_icb_cmd_size),
    .i_icb_cmd_burst  (3'b0),
    .i_icb_cmd_beat   (2'b0 ),
    
    .i_icb_rsp_valid  (i_mem_icb_rsp_valid),
    .i_icb_rsp_ready  (i_mem_icb_rsp_ready),
    .i_icb_rsp_err    (i_mem_icb_rsp_err  ),
    .i_icb_rsp_excl_ok(),
    .i_icb_rsp_rdata  (i_mem_icb_rsp_rdata),
    
  
    .o0_icb_enable     (1'b0),

    .o0_icb_cmd_valid  (),
    .o0_icb_cmd_ready  (1'b0),
    .o0_icb_cmd_addr   (),
    .o0_icb_cmd_read   (),
    .o0_icb_cmd_wdata  (),
    .o0_icb_cmd_wmask  (),
    .o0_icb_cmd_lock   (),
    .o0_icb_cmd_excl   (),
    .o0_icb_cmd_size   (),
    .o0_icb_cmd_burst  (),
    .o0_icb_cmd_beat   (),
    
    .o0_icb_rsp_valid  (1'b0),
    .o0_icb_rsp_ready  (),
    .o0_icb_rsp_err    (1'b0),
    .o0_icb_rsp_excl_ok(1'b0),
    .o0_icb_rsp_rdata  (`UX607_MLEN'b0),

  
    .o1_icb_enable     (1'b1),

    .o1_icb_cmd_valid  (mrom_icb_cmd_valid_m),
    .o1_icb_cmd_ready  (mrom_icb_cmd_ready_m),
    .o1_icb_cmd_addr   (mrom_icb_cmd_addr_m ),
    .o1_icb_cmd_read   (mrom_icb_cmd_read_m ),
    .o1_icb_cmd_wdata  (),
    .o1_icb_cmd_wmask  (),
    .o1_icb_cmd_lock   (),
    .o1_icb_cmd_excl   (),
    .o1_icb_cmd_size   (mrom_icb_cmd_size_m),
    .o1_icb_cmd_burst  (),
    .o1_icb_cmd_beat   (),
    
    .o1_icb_rsp_valid  (mrom_icb_rsp_valid_m),
    .o1_icb_rsp_ready  (mrom_icb_rsp_ready_m),
    .o1_icb_rsp_err    (mrom_icb_rsp_err_m),
    .o1_icb_rsp_excl_ok(1'b0  ),
    .o1_icb_rsp_rdata  (mrom_icb_rsp_rdata_m),

  
  
    .o2_icb_enable     (1'b0),

    .o2_icb_cmd_valid  (),
    .o2_icb_cmd_ready  (1'b0),
    .o2_icb_cmd_addr   (),
    .o2_icb_cmd_read   (),
    .o2_icb_cmd_wdata  (),
    .o2_icb_cmd_wmask  (),
    .o2_icb_cmd_lock   (),
    .o2_icb_cmd_excl   (),
    .o2_icb_cmd_size   (),
    .o2_icb_cmd_burst  (),
    .o2_icb_cmd_beat   (),
    
    .o2_icb_rsp_valid  (1'b0),
    .o2_icb_rsp_ready  (),
    .o2_icb_rsp_err    (1'b0),
    .o2_icb_rsp_excl_ok(1'b0  ),
    .o2_icb_rsp_rdata  (`UX607_MLEN'b0),

  
    .o3_icb_enable     (1'b1),

    .o3_icb_cmd_valid  (qspi0_ro_icb_cmd_valid_m),
    .o3_icb_cmd_ready  (qspi0_ro_icb_cmd_ready_m),
    .o3_icb_cmd_addr   (qspi0_ro_icb_cmd_addr_m ),
    .o3_icb_cmd_read   (qspi0_ro_icb_cmd_read_m ),
    .o3_icb_cmd_wdata  (qspi0_ro_icb_cmd_wdata_m),
    .o3_icb_cmd_wmask  (),
    .o3_icb_cmd_lock   (),
    .o3_icb_cmd_excl   (),
    .o3_icb_cmd_size   (qspi0_ro_icb_cmd_size_m),
    .o3_icb_cmd_burst  (),
    .o3_icb_cmd_beat   (),
    
    .o3_icb_rsp_valid  (qspi0_ro_icb_rsp_valid_m),
    .o3_icb_rsp_ready  (qspi0_ro_icb_rsp_ready_m),
    .o3_icb_rsp_err    (qspi0_ro_icb_rsp_err_m),
    .o3_icb_rsp_excl_ok(1'b0  ),
    .o3_icb_rsp_rdata  (qspi0_ro_icb_rsp_rdata_m),


  
    .o4_icb_enable     (1'b0),

    .o4_icb_cmd_valid  (),
    .o4_icb_cmd_ready  (1'b0),
    .o4_icb_cmd_addr   (),
    .o4_icb_cmd_read   (),
    .o4_icb_cmd_wdata  (),
    .o4_icb_cmd_wmask  (),
    .o4_icb_cmd_lock   (),
    .o4_icb_cmd_excl   (),
    .o4_icb_cmd_size   (),
    .o4_icb_cmd_burst  (),
    .o4_icb_cmd_beat   (),
    
    .o4_icb_rsp_valid  (1'b0),
    .o4_icb_rsp_ready  (),
    .o4_icb_rsp_err    (1'b0    ),
    .o4_icb_rsp_excl_ok(1'b0),
    .o4_icb_rsp_rdata  (`UX607_MLEN'b0),

     
`ifdef UX607_HAS_PPI
    .o5_icb_enable     (1'b0),

    .o5_icb_cmd_valid  (),
    .o5_icb_cmd_ready  (1'b0),
    .o5_icb_cmd_addr   (),
    .o5_icb_cmd_read   (),
    .o5_icb_cmd_wdata  (),
    .o5_icb_cmd_wmask  (),
    .o5_icb_cmd_lock   (),
    .o5_icb_cmd_excl   (),
    .o5_icb_cmd_size   (),
    .o5_icb_cmd_burst  (),
    .o5_icb_cmd_beat   (),
    
    .o5_icb_rsp_valid  (1'b0),
    .o5_icb_rsp_ready  (),
    .o5_icb_rsp_err    (1'b0),
    .o5_icb_rsp_excl_ok(1'b0  ),
    .o5_icb_rsp_rdata  (`UX607_MLEN'b0),
`endif

`ifndef UX607_HAS_PPI
     
   
    .o5_icb_enable     (1'b1),
    .o5_icb_cmd_valid  (biu2ppi_icb_cmd_valid_m),
    .o5_icb_cmd_ready  (biu2ppi_icb_cmd_ready_m),
    .o5_icb_cmd_addr   (biu2ppi_icb_cmd_addr_m ),
    .o5_icb_cmd_read   (biu2ppi_icb_cmd_read_m ),
    .o5_icb_cmd_wdata  (biu2ppi_icb_cmd_wdata_m),
    .o5_icb_cmd_wmask  (biu2ppi_icb_cmd_wmask_m),
    .o5_icb_cmd_lock   (),
    .o5_icb_cmd_excl   (),
    .o5_icb_cmd_size   (biu2ppi_icb_cmd_size_m),
    .o5_icb_cmd_burst  (),
    .o5_icb_cmd_beat   (),
    
    .o5_icb_rsp_valid  (biu2ppi_icb_rsp_valid_m),
    .o5_icb_rsp_ready  (biu2ppi_icb_rsp_ready_m),
    .o5_icb_rsp_err    (biu2ppi_icb_rsp_err_m  ),
    .o5_icb_rsp_rdata  (biu2ppi_icb_rsp_rdata_m),
    .o5_icb_rsp_excl_ok(1'b0  ),
     
`endif
     




















        
    `ifndef UX607_HAS_CACHE
    .o6_icb_enable     (1'b0),

    .o6_icb_cmd_valid  (),
    .o6_icb_cmd_ready  (1'b0),
    .o6_icb_cmd_addr   (),
    .o6_icb_cmd_read   (),
    .o6_icb_cmd_wdata  (),
    .o6_icb_cmd_wmask  (),
    .o6_icb_cmd_lock   (),
    .o6_icb_cmd_excl   (),
    .o6_icb_cmd_size   (),
    .o6_icb_cmd_burst  (),
    .o6_icb_cmd_beat   (),
    
    .o6_icb_rsp_valid  (1'b0),
    .o6_icb_rsp_ready  (),
    .o6_icb_rsp_err    (1'b0  ),
    .o6_icb_rsp_excl_ok(1'b0  ),
    .o6_icb_rsp_rdata  (`UX607_MLEN'b0),
    `else
        
    .o6_icb_enable     (1'b1),
    .o6_icb_cmd_valid  (sysmem_icb_cmd_valid),
    .o6_icb_cmd_ready  (sysmem_icb_cmd_ready),
    .o6_icb_cmd_addr   (sysmem_icb_cmd_addr ),
    .o6_icb_cmd_read   (sysmem_icb_cmd_read ),
    .o6_icb_cmd_wdata  (sysmem_icb_cmd_wdata),
    .o6_icb_cmd_wmask  (sysmem_icb_cmd_wmask),
    .o6_icb_cmd_lock   (),
    .o6_icb_cmd_excl   (),
    .o6_icb_cmd_size   (),
    .o6_icb_cmd_burst  (),
    .o6_icb_cmd_beat   (),
    .o6_icb_rsp_valid  (sysmem_icb_rsp_valid),
    .o6_icb_rsp_ready  (sysmem_icb_rsp_ready),
    .o6_icb_rsp_err    (sysmem_icb_rsp_err  ),
    .o6_icb_rsp_excl_ok(1'b0              ),
    .o6_icb_rsp_rdata  (sysmem_icb_rsp_rdata),    
    `endif

        
    .o7_icb_enable     (1'b0),

    .o7_icb_cmd_valid  (),
    .o7_icb_cmd_ready  (1'b0),
    .o7_icb_cmd_addr   (),
    .o7_icb_cmd_read   (),
    .o7_icb_cmd_wdata  (),
    .o7_icb_cmd_wmask  (),
    .o7_icb_cmd_lock   (),
    .o7_icb_cmd_excl   (),
    .o7_icb_cmd_size   (),
    .o7_icb_cmd_burst  (),
    .o7_icb_cmd_beat   (),
    
    .o7_icb_rsp_valid  (1'b0),
    .o7_icb_rsp_ready  (),
    .o7_icb_rsp_err    (1'b0  ),
    .o7_icb_rsp_excl_ok(1'b0  ),
    .o7_icb_rsp_rdata  (`UX607_MLEN'b0),

    .clk           (clk  ),
    .rst_n         (bus_rst_n) 
  );

  ux607_mrom_top #(
    .AW(MROM_AW),
    .DW(`UX607_MROM_LEN),
    .DP(MROM_DP)
  )u_ux607_mrom_top(

    .rom_icb_cmd_valid  (mrom_icb_cmd_valid),
    .rom_icb_cmd_ready  (mrom_icb_cmd_ready),
    .rom_icb_cmd_addr   (mrom_icb_cmd_addr [MROM_AW-1:0]),
    .rom_icb_cmd_read   (mrom_icb_cmd_read ),
    
    .rom_icb_rsp_valid  (mrom_icb_rsp_valid),
    .rom_icb_rsp_ready  (mrom_icb_rsp_ready),
    .rom_icb_rsp_err    (mrom_icb_rsp_err  ),
    .rom_icb_rsp_rdata  (mrom_icb_rsp_rdata),

    .clk           (clk  ),
    .rst_n         (rst_n) 
  );

`ifdef UX607_HAS_CACHE
     `ifndef FPGA_SOURCE

 
 ux607_icb_ram_top #(
      .DW     (`UX607_SYS_MEM_DW), 
      .AW     (SYSMEM_AW)
  ) u_sysmem_top (
     
     .icb_cmd_valid (sysmem_icb_cmd_valid),
     .icb_cmd_ready (sysmem_icb_cmd_ready),
     .icb_cmd_read  (sysmem_icb_cmd_read ),
     .icb_cmd_addr  (sysmem_icb_cmd_addr[SYSMEM_AW-1:0]), 
     .icb_cmd_wdata (sysmem_icb_cmd_wdata), 
     .icb_cmd_wmask (sysmem_icb_cmd_wmask), 
  
     .icb_rsp_valid (sysmem_icb_rsp_valid),
     .icb_rsp_ready (sysmem_icb_rsp_ready),
     .icb_rsp_rdata (sysmem_icb_rsp_rdata),
     .icb_rsp_err   (sysmem_icb_rsp_err  ),
  
     .clk           (clk               ),
     .rst_n         (rst_n             )  
    );

      `endif
`endif
















































































































































  
    
    
    
    
    
  

  
  
  
  
  
  
  
  
  
  

  
  
  
  

  
     
      `ifndef UX607_TMR_PRIVATE 
ux607_tmr_top u_ux607_tmr_top(
    .i_icb_cmd_valid     (biu2tmr_icb_cmd_valid),
    .i_icb_cmd_ready     (biu2tmr_icb_cmd_ready),
    .i_icb_cmd_addr      (biu2tmr_icb_cmd_addr ),
    .i_icb_cmd_read      (biu2tmr_icb_cmd_read ),
    .i_icb_cmd_wdata     (biu2tmr_icb_cmd_wdata),
    .i_icb_cmd_wmask     (biu2tmr_icb_cmd_wmask),
    .i_icb_cmd_mmode     (1'b0),
    .i_icb_cmd_dmode     (1'b0),
    
    .i_icb_rsp_valid     (biu2tmr_icb_rsp_valid),
    .i_icb_rsp_ready     (biu2tmr_icb_rsp_ready),
    .i_icb_rsp_err       (biu2tmr_icb_rsp_err  ),
    .i_icb_rsp_rdata     (biu2tmr_icb_rsp_rdata),

    .tmr_irq             (mtip),
    .sft_irq             (msip),

    .rtc_toggle_a        (mtime_toggle_a),

    .dbg_stoptime        (1'b0), 

    .tmr_active          (),
    .clk                 (clk   ),
    .clk_aon             (clk   ),

    .rst_n               (rst_n) 
  );
    `endif
     






























`ifndef UX607_D_SHARE_ILM 



  assign biu2ilm_icb_cmd_valid = biu2ilm_icb_cmd_valid_m;
  assign biu2ilm_icb_cmd_ready_m = biu2ilm_icb_cmd_ready;
  assign biu2ilm_icb_cmd_addr  = biu2ilm_icb_cmd_addr_m;
  assign biu2ilm_icb_cmd_read  = biu2ilm_icb_cmd_read_m;
  assign biu2ilm_icb_cmd_wdata = biu2ilm_icb_cmd_wdata_m;
  assign biu2ilm_icb_cmd_wmask = biu2ilm_icb_cmd_wmask_m;
  assign biu2ilm_icb_rsp_valid_m = biu2ilm_icb_rsp_valid;
  assign biu2ilm_icb_rsp_ready = biu2ilm_icb_rsp_ready_m;
  assign biu2ilm_icb_rsp_err_m   = biu2ilm_icb_rsp_err;
  assign biu2ilm_icb_rsp_rdata_m = biu2ilm_icb_rsp_rdata;
  `endif


























































































































 



  assign biu2dlm_icb_cmd_valid = biu2dlm_icb_cmd_valid_m;
  assign biu2dlm_icb_cmd_ready_m = biu2dlm_icb_cmd_ready;
  assign biu2dlm_icb_cmd_addr  = biu2dlm_icb_cmd_addr_m;
  assign biu2dlm_icb_cmd_read  = biu2dlm_icb_cmd_read_m;
  assign biu2dlm_icb_cmd_wdata = biu2dlm_icb_cmd_wdata_m;
  assign biu2dlm_icb_cmd_wmask = biu2dlm_icb_cmd_wmask_m;
  assign biu2dlm_icb_rsp_valid_m = biu2dlm_icb_rsp_valid;
  assign biu2dlm_icb_rsp_ready = biu2dlm_icb_rsp_ready_m;
  assign biu2dlm_icb_rsp_err_m   = biu2dlm_icb_rsp_err;
  assign biu2dlm_icb_rsp_rdata_m = biu2dlm_icb_rsp_rdata;

























































































































`ifndef UX607_TMR_PRIVATE 




































































  ux607_gnrl_icb_w2n # (
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_PLEN)
  ) u_tmr_icb_w2n(
    .i_icb_cmd_valid (biu2tmr_icb_cmd_valid_m), 
    .i_icb_cmd_ready (biu2tmr_icb_cmd_ready_m), 
    .i_icb_cmd_read  (biu2tmr_icb_cmd_read_m), 
    .i_icb_cmd_addr  (biu2tmr_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (biu2tmr_icb_cmd_wdata_m), 
    .i_icb_cmd_wmask (biu2tmr_icb_cmd_wmask_m),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (biu2tmr_icb_cmd_size_m),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (biu2tmr_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (biu2tmr_icb_rsp_ready_m), 
    .i_icb_rsp_err      (biu2tmr_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (biu2tmr_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (biu2tmr_icb_cmd_valid),  
    .o_icb_cmd_ready  (biu2tmr_icb_cmd_ready),  
    .o_icb_cmd_read   (biu2tmr_icb_cmd_read), 
    .o_icb_cmd_addr   (biu2tmr_icb_cmd_addr), 
    .o_icb_cmd_wdata  (biu2tmr_icb_cmd_wdata),  
    .o_icb_cmd_wmask  (biu2tmr_icb_cmd_wmask),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (biu2tmr_icb_rsp_valid),
    .o_icb_rsp_ready    (biu2tmr_icb_rsp_ready),
    .o_icb_rsp_err      (biu2tmr_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0)                        ,
    .o_icb_rsp_rdata    (biu2tmr_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `endif

















`ifdef UX607_MLEN_IS_32
  `ifdef UX607_PLEN_IS_32			
  assign qspi0_ro_icb_cmd_valid = qspi0_ro_icb_cmd_valid_m;
  assign qspi0_ro_icb_cmd_ready_m = qspi0_ro_icb_cmd_ready;
  assign qspi0_ro_icb_cmd_addr  = qspi0_ro_icb_cmd_addr_m;
  assign qspi0_ro_icb_cmd_read  = qspi0_ro_icb_cmd_read_m;
  assign qspi0_ro_icb_cmd_wdata = qspi0_ro_icb_cmd_wdata_m;
  assign qspi0_ro_icb_rsp_valid_m = qspi0_ro_icb_rsp_valid;
  assign qspi0_ro_icb_rsp_ready = qspi0_ro_icb_rsp_ready_m;
  assign qspi0_ro_icb_rsp_err_m   = qspi0_ro_icb_rsp_err;
  assign qspi0_ro_icb_rsp_rdata_m = qspi0_ro_icb_rsp_rdata;
  `else
  ux607_gnrl_icb_n2w # (
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_PLEN)
  ) u_qspi_icb_n2w(
    .i_icb_cmd_valid (qspi0_ro_icb_cmd_valid_m), 
    .i_icb_cmd_ready (qspi0_ro_icb_cmd_ready_m), 
    .i_icb_cmd_read  (qspi0_ro_icb_cmd_read_m), 
    .i_icb_cmd_addr  (qspi0_ro_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (qspi0_ro_icb_cmd_wdata_m), 
    .i_icb_cmd_wmask (`UX607_MLEN_MW'b0),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (2'b0),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (qspi0_ro_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (qspi0_ro_icb_rsp_ready_m), 
    .i_icb_rsp_err      (qspi0_ro_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (qspi0_ro_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (qspi0_ro_icb_cmd_valid),  
    .o_icb_cmd_ready  (qspi0_ro_icb_cmd_ready),  
    .o_icb_cmd_read   (qspi0_ro_icb_cmd_read), 
    .o_icb_cmd_addr   (qspi0_ro_icb_cmd_addr ), 
    .o_icb_cmd_wdata  (qspi0_ro_icb_cmd_wdata),  
    .o_icb_cmd_wmask  (),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (qspi0_ro_icb_rsp_valid),
    .o_icb_rsp_ready    (qspi0_ro_icb_rsp_ready),
    .o_icb_rsp_err      (qspi0_ro_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0)                        ,
    .o_icb_rsp_rdata    (qspi0_ro_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `endif
`else
  `ifdef UX607_PLEN_IS_32			//YES
  ux607_gnrl_icb_w2n # (
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_PLEN)
  ) u_qspi_icb_w2n(
    .i_icb_cmd_valid (qspi0_ro_icb_cmd_valid_m), 
    .i_icb_cmd_ready (qspi0_ro_icb_cmd_ready_m), 
    .i_icb_cmd_read  (qspi0_ro_icb_cmd_read_m), 
    .i_icb_cmd_addr  (qspi0_ro_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (qspi0_ro_icb_cmd_wdata_m), 
    .i_icb_cmd_wmask (`UX607_MLEN_MW'b0),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (qspi0_ro_icb_cmd_size_m),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (qspi0_ro_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (qspi0_ro_icb_rsp_ready_m), 
    .i_icb_rsp_err      (qspi0_ro_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (qspi0_ro_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (qspi0_ro_icb_cmd_valid),  
    .o_icb_cmd_ready  (qspi0_ro_icb_cmd_ready),  
    .o_icb_cmd_read   (qspi0_ro_icb_cmd_read), 
    .o_icb_cmd_addr   (qspi0_ro_icb_cmd_addr ), 
    .o_icb_cmd_wdata  (qspi0_ro_icb_cmd_wdata),  
    .o_icb_cmd_wmask  (),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (qspi0_ro_icb_rsp_valid),
    .o_icb_rsp_ready    (qspi0_ro_icb_rsp_ready),
    .o_icb_rsp_err      (qspi0_ro_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0)                        ,
    .o_icb_rsp_rdata    (qspi0_ro_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `else
  assign qspi0_ro_icb_cmd_valid = qspi0_ro_icb_cmd_valid_m;
  assign qspi0_ro_icb_cmd_ready_m = qspi0_ro_icb_cmd_ready;
  assign qspi0_ro_icb_cmd_addr  = qspi0_ro_icb_cmd_addr_m;
  assign qspi0_ro_icb_cmd_read  = qspi0_ro_icb_cmd_read_m;
  assign qspi0_ro_icb_cmd_wdata = qspi0_ro_icb_cmd_wdata_m;
  assign qspi0_ro_icb_rsp_valid_m = qspi0_ro_icb_rsp_valid;
  assign qspi0_ro_icb_rsp_ready = qspi0_ro_icb_rsp_ready_m;
  assign qspi0_ro_icb_rsp_err_m   = qspi0_ro_icb_rsp_err;
  assign qspi0_ro_icb_rsp_rdata_m = qspi0_ro_icb_rsp_rdata;
  `endif
`endif


`ifndef UX607_HAS_PPI 


`ifdef UX607_MLEN_IS_32
  `ifdef UX607_PLEN_IS_32
  assign biu2ppi_icb_cmd_valid = biu2ppi_icb_cmd_valid_m;
  assign biu2ppi_icb_cmd_ready_m = biu2ppi_icb_cmd_ready;
  assign biu2ppi_icb_cmd_addr  = biu2ppi_icb_cmd_addr_m;
  assign biu2ppi_icb_cmd_read  = biu2ppi_icb_cmd_read_m;
  assign biu2ppi_icb_cmd_wdata = biu2ppi_icb_cmd_wdata_m;
  assign biu2ppi_icb_cmd_wmask = biu2ppi_icb_cmd_wmask_m;
  assign biu2ppi_icb_rsp_valid_m = biu2ppi_icb_rsp_valid;
  assign biu2ppi_icb_rsp_ready = biu2ppi_icb_rsp_ready_m;
  assign biu2ppi_icb_rsp_err_m   = biu2ppi_icb_rsp_err;
  assign biu2ppi_icb_rsp_rdata_m = biu2ppi_icb_rsp_rdata;
  `else
  ux607_gnrl_icb_n2w # (
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_PLEN)
  ) u_ppi_icb_n2w(
    .i_icb_cmd_valid (biu2ppi_icb_cmd_valid_m), 
    .i_icb_cmd_ready (biu2ppi_icb_cmd_ready_m), 
    .i_icb_cmd_read  (biu2ppi_icb_cmd_read_m), 
    .i_icb_cmd_addr  (biu2ppi_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (biu2ppi_icb_cmd_wdata_m), 
    .i_icb_cmd_wmask (biu2ppi_icb_cmd_wmask_m),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (2'b0),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (biu2ppi_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (biu2ppi_icb_rsp_ready_m), 
    .i_icb_rsp_err      (biu2ppi_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (biu2ppi_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (biu2ppi_icb_cmd_valid),  
    .o_icb_cmd_ready  (biu2ppi_icb_cmd_ready),  
    .o_icb_cmd_read   (biu2ppi_icb_cmd_read), 
    .o_icb_cmd_addr   (biu2ppi_icb_cmd_addr ), 
    .o_icb_cmd_wdata  (biu2ppi_icb_cmd_wdata),  
    .o_icb_cmd_wmask  (biu2ppi_icb_cmd_wmask),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (biu2ppi_icb_rsp_valid),
    .o_icb_rsp_ready    (biu2ppi_icb_rsp_ready),
    .o_icb_rsp_err      (biu2ppi_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0)                        ,
    .o_icb_rsp_rdata    (biu2ppi_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `endif
`else
  `ifdef UX607_PLEN_IS_32			//YES
  ux607_gnrl_icb_w2n # (
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_PLEN)
  ) u_ppi_icb_w2n(
    .i_icb_cmd_valid (biu2ppi_icb_cmd_valid_m), 
    .i_icb_cmd_ready (biu2ppi_icb_cmd_ready_m), 
    .i_icb_cmd_read  (biu2ppi_icb_cmd_read_m), 
    .i_icb_cmd_addr  (biu2ppi_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (biu2ppi_icb_cmd_wdata_m), 
    .i_icb_cmd_wmask (biu2ppi_icb_cmd_wmask_m),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (biu2ppi_icb_cmd_size_m),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (biu2ppi_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (biu2ppi_icb_rsp_ready_m), 
    .i_icb_rsp_err      (biu2ppi_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (biu2ppi_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (biu2ppi_icb_cmd_valid),  
    .o_icb_cmd_ready  (biu2ppi_icb_cmd_ready),  
    .o_icb_cmd_read   (biu2ppi_icb_cmd_read), 
    .o_icb_cmd_addr   (biu2ppi_icb_cmd_addr ), 
    .o_icb_cmd_wdata  (biu2ppi_icb_cmd_wdata),  
    .o_icb_cmd_wmask  (biu2ppi_icb_cmd_wmask),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (biu2ppi_icb_rsp_valid),
    .o_icb_rsp_ready    (biu2ppi_icb_rsp_ready),
    .o_icb_rsp_err      (biu2ppi_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0),
    .o_icb_rsp_rdata    (biu2ppi_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `else
  assign biu2ppi_icb_cmd_valid = biu2ppi_icb_cmd_valid_m;
  assign biu2ppi_icb_cmd_ready_m = biu2ppi_icb_cmd_ready;
  assign biu2ppi_icb_cmd_addr  = biu2ppi_icb_cmd_addr_m;
  assign biu2ppi_icb_cmd_read  = biu2ppi_icb_cmd_read_m;
  assign biu2ppi_icb_cmd_wdata = biu2ppi_icb_cmd_wdata_m;
  assign biu2ppi_icb_cmd_wmask = biu2ppi_icb_cmd_wmask_m;
  assign biu2ppi_icb_rsp_valid_m = biu2ppi_icb_rsp_valid;
  assign biu2ppi_icb_rsp_ready = biu2ppi_icb_rsp_ready_m;
  assign biu2ppi_icb_rsp_err_m   = biu2ppi_icb_rsp_err;
  assign biu2ppi_icb_rsp_rdata_m = biu2ppi_icb_rsp_rdata;
  `endif
`endif


`endif



`ifdef UX607_MLEN_IS_32
  `ifdef UX607_MROM_LEN_IS_32
  assign mrom_icb_cmd_valid = mrom_icb_cmd_valid_m;
  assign mrom_icb_cmd_ready_m = mrom_icb_cmd_ready;
  assign mrom_icb_cmd_addr  = mrom_icb_cmd_addr_m;
  assign mrom_icb_cmd_read  = mrom_icb_cmd_read_m;
  assign mrom_icb_rsp_valid_m = mrom_icb_rsp_valid;
  assign mrom_icb_rsp_ready = mrom_icb_rsp_ready_m;
  assign mrom_icb_rsp_err_m   = mrom_icb_rsp_err;
  assign mrom_icb_rsp_rdata_m = mrom_icb_rsp_rdata;
  `else
  ux607_gnrl_icb_n2w # (
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_MROM_LEN)
  ) u_mrom_icb_n2w(
    .i_icb_cmd_valid (mrom_icb_cmd_valid_m), 
    .i_icb_cmd_ready (mrom_icb_cmd_ready_m), 
    .i_icb_cmd_read  (mrom_icb_cmd_read_m), 
    .i_icb_cmd_addr  (mrom_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (`UX607_MLEN'b0), 
    .i_icb_cmd_wmask (`UX607_MLEN_MW'b0),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (2'b0),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (mrom_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (mrom_icb_rsp_ready_m), 
    .i_icb_rsp_err      (mrom_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (mrom_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (mrom_icb_cmd_valid),  
    .o_icb_cmd_ready  (mrom_icb_cmd_ready),  
    .o_icb_cmd_read   (mrom_icb_cmd_read), 
    .o_icb_cmd_addr   (mrom_icb_cmd_addr ), 
    .o_icb_cmd_wdata  (),  
    .o_icb_cmd_wmask  (),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (mrom_icb_rsp_valid),
    .o_icb_rsp_ready    (mrom_icb_rsp_ready),
    .o_icb_rsp_err      (mrom_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0)                        ,
    .o_icb_rsp_rdata    (mrom_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `endif
`else
  `ifdef UX607_MROM_LEN_IS_32
  ux607_gnrl_icb_w2n # (
    .ZEROCYC_RSP (1),
    .AW (`UX607_PA_SIZE),
    .USR_W (1),
    .FIFO_OUTS_NUM (16),
    .FIFO_CUT_READY (5),
    .X_W (`UX607_MLEN),
    .Y_W (`UX607_MROM_LEN)
  ) u_mrom_icb_w2n(
    .i_icb_cmd_valid (mrom_icb_cmd_valid_m), 
    .i_icb_cmd_ready (mrom_icb_cmd_ready_m), 
    .i_icb_cmd_read  (mrom_icb_cmd_read_m), 
    .i_icb_cmd_addr  (mrom_icb_cmd_addr_m ), 
    .i_icb_cmd_wdata (`UX607_MLEN'b0), 
    .i_icb_cmd_wmask (`UX607_MLEN_MW'b0),
    .i_icb_cmd_lock  (1'b0),
    .i_icb_cmd_excl  (1'b0),
    .i_icb_cmd_size  (mrom_icb_cmd_size_m),
    .i_icb_cmd_burst (3'b0),
    .i_icb_cmd_beat  (2'b0),
    .i_icb_cmd_usr   (1'b0),

    .i_icb_rsp_valid    (mrom_icb_rsp_valid_m), 
    .i_icb_rsp_ready    (mrom_icb_rsp_ready_m), 
    .i_icb_rsp_err      (mrom_icb_rsp_err_m ),
    .i_icb_rsp_excl_ok  (),
    .i_icb_rsp_rdata    (mrom_icb_rsp_rdata_m), 
    .i_icb_rsp_usr      (),
    
    .o_icb_cmd_valid  (mrom_icb_cmd_valid),  
    .o_icb_cmd_ready  (mrom_icb_cmd_ready),  
    .o_icb_cmd_read   (mrom_icb_cmd_read), 
    .o_icb_cmd_addr   (mrom_icb_cmd_addr ), 
    .o_icb_cmd_wdata  (),  
    .o_icb_cmd_wmask  (),
    .o_icb_cmd_lock   (),
    .o_icb_cmd_excl   (),
    .o_icb_cmd_size   (),
    .o_icb_cmd_burst  (),
    .o_icb_cmd_beat   (),
    .o_icb_cmd_usr    (),

    .o_icb_rsp_valid    (mrom_icb_rsp_valid),
    .o_icb_rsp_ready    (mrom_icb_rsp_ready),
    .o_icb_rsp_err      (mrom_icb_rsp_err ),
    .o_icb_rsp_excl_ok  (1'b0)                        ,
    .o_icb_rsp_rdata    (mrom_icb_rsp_rdata),
    .o_icb_rsp_usr      (1'b0), 

    .clk (clk),  
    .rst_n (rst_n)
  );
  `else
  assign mrom_icb_cmd_valid = mrom_icb_cmd_valid_m;
  assign mrom_icb_cmd_ready_m = mrom_icb_cmd_ready;
  assign mrom_icb_cmd_addr  = mrom_icb_cmd_addr_m;
  assign mrom_icb_cmd_read  = mrom_icb_cmd_read_m;
  assign mrom_icb_rsp_valid_m = mrom_icb_rsp_valid;
  assign mrom_icb_rsp_ready = mrom_icb_rsp_ready_m;
  assign mrom_icb_rsp_err_m   = mrom_icb_rsp_err;
  assign mrom_icb_rsp_rdata_m = mrom_icb_rsp_rdata;
  `endif
`endif

endmodule
