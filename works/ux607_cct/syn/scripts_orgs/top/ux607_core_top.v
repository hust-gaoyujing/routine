//=====================================================================
//
//--  #     # #     #  #####  #       #######   ###
//--  ##    # #     # #     # #       #          #
//--  # #   # #     # #       #       #          #
//--  #  #  # #     # #       #       #####      #
//--  #   # # #     # #       #       #          #
//--  #    ## #     # #     # #       #          #
//--  #     #  #####   #####  ####### #######   ###
//
//=====================================================================
//
//
// Description:
//  The CORE-TOP module to implement CPU and some closely coupled devices
//
// ====================================================================



`include "ux607_defines.v"

    //

module ux607_core_top (

  input  scanmode    ,
  //////////////////////////////////////////////////////////
  // The interface to debug-module
  input  jtag_TCK    ,
  input  jtag_TMS    ,
  input  jtag_TDI    ,
  output jtag_TDO    ,
  output jtag_DRV_TDO,

      // Debug-Model indication 
      //   High value indicating currently the core is running under debug-mode
  output hart_halted,
  input  i_dbg_stop,    

  output sysrstreq,

  `ifdef UX607_TRACE_ITF//{ 
  output trace_ivalid,// This signal indicates that an instruction has retired or trapped (exception).
  output trace_iexception, // This signal indicates that an instruction has trapped (exception).
  output trace_interrupt, // This signal indicates that the exception was an interrupt.
  output [`UX607_XLEN-1:0] trace_cause, // This signal indicates the cause of an exception
  output [`UX607_XLEN-1:0] trace_tval, // This signal indicates the exception data
  output [`UX607_ADDR_SIZE-1:0] trace_iaddr, // This signal indicates the address of the instruction
  output [`UX607_INSTR_SIZE-1:0] trace_instr, // This signal indicates the instruction
  output [1:0] trace_priv, // This signal indicates the privilege mode during execution
  `endif//UX607_TRACE_ITF}



  //////////////////////////////////////////////////////////////
  // The Always-on Clock: This clock is to drive these always-on modules, for example:
  //     The CORE-TOP glue logics, 
  //     Part of Private-Interrupt-Controller, 
  //     The cycle-counter inside core
  //     Debug relevant logics
  //input  core_clk_aon,
      
  // The Main Clock: This clock is to drive majority of the CPU, and also the 
  //   root of several clock gater, such as:
  //     The CORE-TOP glue logics, 
  //     Part of Private-Interrupt-Controller, 
  //     The cycle-counter inside core
  input  core_clk,

  // The system reset (active-low reset signal, treated as async)
  //   * This will reset the entire CORE-TOP except the Debug relevant logics
  input  core_reset_n,
  
  // The Power-on reset (active-low reset signal, treated as async)
  //   * This will reset the entire CORE-TOP include the Debug relevant logics
  input  por_reset_n,

  // The test mode signal
  input reset_bypass,// This will bypass the rst syncer for test purpose
                   // Note: por_reset_n is the only reset used during this reset_bypass signal asserted
  input clkgate_bypass, // This will bypass the clock gater for test purpose

  
  ///////////////////////////////////////////
      // The NMI (Non-maskable interrupts) 
  input  nmi,
      
`ifdef UX607_HAS_NDSE
  ///////////////////////////////////////////
      // The external IRQ from system level PLIC
  input  meip,
`endif//UX607_HAS_NDSE
  
  ///////////////////////////////////////////
      // The software IRQ from system level


    `ifndef UX607_TMR_PRIVATE //{

  ///////////////////////////////////////////
      // The timer IRQ from system level
  input  mtip,
  input  msip,
    `endif//UX607_TMR_PRIVATE}
  
    `ifdef UX607_TMR_PRIVATE //{
      `ifdef UX607_MSIP_COEXIST
  input  msip_coex,
      `endif//UX607_MSIP_COEXIST}
    `endif//UX607_TMR_PRIVATE}

    `ifdef UX607_TMR_PRIVATE //{
  ///////////////////////////////////////////
      // The toggle signal to mtime
  input  mtime_toggle_a,

    `endif//UX607_TMR_PRIVATE}

    `ifdef UX607_DBG_TIMEOUT //{
      // The toggle signal to dbg_timeout, treated as async.
      // Use low speed oscillator to lower the power.
  input  dbg_toggle_a,
     
    `endif //}UX607_DBG_TIMEOUT

    `ifdef UX607_HAS_PLIC//{
  ///////////////////////////////////////////
      // The IRQ to PLIC
      //   Note: this plic_irq signal index is from 1 to PLIC_IRQ_NUM
  input [`UX607_PLIC_IRQ_NUM-1:0] irq_i,
    `else
    `ifdef UX607_HAS_CLIC//{
  ///////////////////////////////////////////
      // The IRQ to CLIC
      //   Note: this clic_irq signal index is from 1 to CLIC_IRQ_NUM
  input [`UX607_CLIC_IRQ_NUM-1:0] irq_i,
    `endif//UX607_HAS_CLIC//}
    `endif//UX607_HAS_PLIC}


  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The ILM Master Interface 
     `ifdef UX607_HAS_ILM //{

  `ifdef UX607_LM_ITF_TYPE_SRAM //{
  output                        ilm_cs,  
  output [`UX607_ILM_RAM_AW-1:0] ilm_addr, 
  output [`UX607_ILM_RAM_MW-1:0] ilm_byte_we,
  output [`UX607_ILM_RAM_DW-1:0] ilm_wdata,          
  input  [`UX607_ILM_RAM_DW-1:0] ilm_rdata,
  output                        clk_ilm_ram,
  `endif//}
  
  `ifdef UX607_LM_ITF_TYPE_AHBL //{
      // Do not support the burst and lock transactions
  output [1:0]       ilm_htrans,   // Only IDLE, NONSEQUENTIAL
  output             ilm_hwrite,
  output             ilm_hmastlock,
  output [`UX607_ILM_DATA_WIDTH-1:0] ilm_hwdata,   
  output [`UX607_ILM_ADDR_WIDTH-1:0]ilm_haddr,    
  output [2:0]       ilm_hsize, // All 32bits (3'b10) in this interface   
  output [2:0]       ilm_hburst, // All SINGLE (3'b000) in this interface   
  output [3:0]       ilm_hprot, //  HPROT[3:2] Always indicates cacheable (bit3 == 1) and non-bufferable (bit2 == 0) on this bus.
                                      //  HPROT[1] indicate the machine-mode (1'b1) or user-mode (1'b0) access
                                      //  HPROT[0] Always indicate this is instruction access (1'b0)
  //output [1:0]       ilm_hattri,//  Output Memory attributes. Always 01 for this bus (non-shareable, allocate)
  //output [1:0]       ilm_master,//  Indicate the instruction fetch under debug-mode (2'b01) or regular instruction fetch (2'b10).
                                      //    other values will not be seen on this interface
  input  [`UX607_ILM_DATA_WIDTH-1:0]ilm_hrdata,   
  input  [1:0]       ilm_hresp, // Only support response OKAY or ERROR, hence the hresp[1] bit is ignored
  input              ilm_hready,   
  `endif//}
 // //INTERNAL_CODE_BEGIN
 // `ifdef UX607_LM_ITF_TYPE_SRAM //{
 //     // Do not support the burst and lock transactions
 // output             ilm_icb_cmd_valid, 
 // input              ilm_icb_cmd_ready, 
 // output [`UX607_ILM_ADDR_WIDTH-1:0]    ilm_icb_cmd_addr, 
 // output [2-1:0]  ilm_icb_cmd_size,
 // output             ilm_icb_cmd_dmode, 
 // output             ilm_icb_cmd_mmode, 

 // input              ilm_icb_rsp_valid, 
 // output             ilm_icb_rsp_ready, 
 // input              ilm_icb_rsp_err,
 // input  [`UX607_ILM_DATA_WIDTH-1:0]    ilm_icb_rsp_rdata, 
 // `endif//}
 // //INTERNAL_CODE_END
      `endif//UX607_HAS_ILM}

  
    `ifdef UX607_MEM_TYPE_AXI //{
  //AR
  input                             mem_arready,
  output                            mem_arvalid,
  //// output [`UX607_BUSID_W-1:0]        mem_arid,
  output [`UX607_PA_SIZE-1:0]      mem_araddr,
  output [7:0]                      mem_arlen,
  output [2:0]                      mem_arsize,
  output [1:0]                      mem_arburst,
  output [1:0]                      mem_arlock,
  output [3:0]                      mem_arcache,
  output [2:0]                      mem_arprot,
  //// output [3:0]                      mem_arqos,
  //// output [3:0]                      mem_arregion,
  //// output [`UX607_USR_W-1:0]          mem_aruser,
  //AW/W
  input                             mem_awready,
  output                            mem_awvalid,
  //// output [`UX607_BUSID_W-1:0]        mem_awid,
  output [`UX607_PA_SIZE-1:0]      mem_awaddr,
  output [7:0]                      mem_awlen,
  output [2:0]                      mem_awsize,
  output [1:0]                      mem_awburst,
  output [1:0]                      mem_awlock,
  output [3:0]                      mem_awcache,
  output [2:0]                      mem_awprot,
  //// output [3:0]                      mem_awqos,
  //// output [3:0]                      mem_awregion,
  //// output [`UX607_USR_W-1:0]          mem_awuser, 

  input                             mem_wready,
  output                            mem_wvalid,
  //// output [`UX607_BUSID_W-1:0]        mem_wid,
  output [`UX607_MLEN-1:0]           mem_wdata,
  output [`UX607_MLEN_MW-1:0]        mem_wstrb,
  output                            mem_wlast,
  //R
  output                            mem_rready,
  input                             mem_rvalid,
  //// input [`UX607_BUSID_W-1:0]         mem_rid,
  input [`UX607_MLEN-1:0]            mem_rdata,
  input [1:0]                       mem_rresp,
  input                             mem_rlast,
  //B
  output                            mem_bready,
  input                             mem_bvalid,
  //// input [`UX607_BUSID_W-1:0]         mem_bid,
  input [1:0]                       mem_bresp,

  input                            mem_clk_en,
    `endif //UX607_MEM_TYPE_AXI}
  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The DLM Master Interface 
     `ifdef UX607_HAS_DLM //{

  `ifdef UX607_LM_ITF_TYPE_SRAM //{
  //`ifndef UX607_ISA_RV64I
  //output                        dlm_cs,  
  //output [`UX607_DLM_RAM_AW-1:0] dlm_addr, 
  //output [`UX607_DLM_RAM_MW-1:0] dlm_byte_we,
  //output [`UX607_DLM_RAM_DW-1:0] dlm_wdata,          
  //input  [`UX607_DLM_RAM_DW-1:0] dlm_rdata,
  //output                        clk_dlm_ram,
  //`else
  output                        dlm0_cs,  
  output [`UX607_DLM_RAM_AW-1:0] dlm0_addr, 
  output [`UX607_DLM_RAM_MW-1:0] dlm0_byte_we,
  output [`UX607_DLM_RAM_DW-1:0] dlm0_wdata,          
  input  [`UX607_DLM_RAM_DW-1:0] dlm0_rdata,
  output                        clk_dlm0_ram,

  output                        dlm1_cs,  
  output [`UX607_DLM_RAM_AW-1:0] dlm1_addr, 
  output [`UX607_DLM_RAM_MW-1:0] dlm1_byte_we,
  output [`UX607_DLM_RAM_DW-1:0] dlm1_wdata,          
  input  [`UX607_DLM_RAM_DW-1:0] dlm1_rdata,
  output                        clk_dlm1_ram,
  //`endif
  `endif//}

  `ifdef UX607_LM_ITF_TYPE_AHBL //{
      // Do not support the burst and lock transactions
  output [1:0]       dlm_htrans,   // Only IDLE, NONSEQUENTIAL
  output             dlm_hwrite,   
  output             dlm_hmastlock,
  output [`UX607_DLM_ADDR_WIDTH-1:0]dlm_haddr,    
  output [2:0]       dlm_hsize,    // Can be 8, 16, or 32 bits
  output [2:0]       dlm_hburst,   // All INCR (3'b001) in this interface
  output [3:0]       dlm_hprot, //  HPROT[3:2] Always indicates cacheable (bit3 == 1) and non-bufferable (bit2 == 0) on this bus.
                                      //  HPROT[1] indicate the machine-mode (1'b1) or user-mode (1'b0) access
                                      //  HPROT[0] Always indicate this is data access (1'b1)
  //output [1:0]       dlm_hattri,//  Output Memory attributes. Always 01 for this bus (non-shareable, allocate)
  output [1:0]       dlm_master,//  Indicate the data access under debug-mode (2'b01) or regular data-access(2'b00).
                                      //    other values will not be seen on this interface
  output [`UX607_DLM_DATA_WIDTH-1:0]dlm_hwdata,   
  input  [`UX607_DLM_DATA_WIDTH-1:0]dlm_hrdata,   
  input  [1:0]       dlm_hresp,   // Only support response OKAY or ERROR, hence the hresp[1] bit is ignored
  input              dlm_hready,   
  `endif//}
  
  ////INTERNAL_CODE_BEGIN
  //`ifdef UX607_LM_ITF_TYPE_ICB //{
  //    // Do not support the burst and lock transactions
  //output             dlm_icb_cmd_valid, 
  //input              dlm_icb_cmd_ready, 
  //output [1-1:0]     dlm_icb_cmd_read, 
  //output [`UX607_DLM_ADDR_WIDTH-1:0]    dlm_icb_cmd_addr, 
  //output [`UX607_DLM_DATA_WIDTH-1:0]    dlm_icb_cmd_wdata, 
  //output [`UX607_DLM_WMSK_WIDTH-1:0]  dlm_icb_cmd_wmask,
  //output [2-1:0]  dlm_icb_cmd_size,
  //output             dlm_icb_cmd_dmode, 
  //output             dlm_icb_cmd_mmode, 

  //input              dlm_icb_rsp_valid, 
  //output             dlm_icb_rsp_ready, 
  //input              dlm_icb_rsp_err,
  //input  [`UX607_DLM_DATA_WIDTH-1:0]    dlm_icb_rsp_rdata, 
  //`endif//}
  ////INTERNAL_CODE_END
      `endif//UX607_HAS_DLM}

  `ifdef UX607_HAS_ICACHE //{
    // The signal to disable I-Cache initialization process
  input                            icache_disable_init,

  output                           icache_tag0_cs,  
  output                           icache_tag0_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag0_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag0_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag0_rdata,
  output                               clk_icache_tag0,

  output                           icache_data0_cs,  
  output                           icache_data0_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data0_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data0_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data0_rdata,
  output                               clk_icache_data0,

       `ifndef UX607_ICACHE_1WAYS//{
  output                           icache_tag1_cs,  
  output                           icache_tag1_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag1_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag1_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag1_rdata,
  output                               clk_icache_tag1,

  
  output                           icache_data1_cs,  
  output                           icache_data1_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data1_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data1_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data1_rdata,
  output                               clk_icache_data1,

      `endif//}

  `ifdef UX607_ICACHE_1WAYS//{
  `elsif UX607_ICACHE_2WAYS//{
  `else
  output                           icache_tag2_cs,  
  output                           icache_tag2_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag2_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag2_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag2_rdata,
  output                               clk_icache_tag2,

  output                           icache_data2_cs,  
  output                           icache_data2_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data2_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data2_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data2_rdata,
  output                               clk_icache_data2,

  output                           icache_tag3_cs,  
  output                           icache_tag3_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag3_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag3_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag3_rdata,
  output                               clk_icache_tag3,

  
  output                           icache_data3_cs,  
  output                           icache_data3_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data3_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data3_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data3_rdata,
  output                               clk_icache_data3,

  `endif//}

  `ifdef UX607_ICACHE_8WAYS//{
  output                           icache_tag4_cs,  
  output                           icache_tag4_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag4_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag4_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag4_rdata,
  output                               clk_icache_tag4,

  output                           icache_data4_cs,  
  output                           icache_data4_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data4_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data4_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data4_rdata,
  output                               clk_icache_data4,

  output                           icache_tag5_cs,  
  output                           icache_tag5_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag5_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag5_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag5_rdata,
  output                               clk_icache_tag5,

  
  output                           icache_data5_cs,  
  output                           icache_data5_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data5_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data5_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data5_rdata,
  output                               clk_icache_data5,

  output                           icache_tag6_cs,  
  output                           icache_tag6_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag6_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag6_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag6_rdata,
  output                               clk_icache_tag6,

  output                           icache_data6_cs,  
  output                           icache_data6_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data6_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data6_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data6_rdata,
  output                               clk_icache_data6,

  output                           icache_tag7_cs,  
  output                           icache_tag7_we,  
  output [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag7_addr, 
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag7_wdata,          
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag7_rdata,
  output                               clk_icache_tag7,

  
  output                           icache_data7_cs,  
  output                           icache_data7_we,  
  output [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data7_addr, 
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data7_wdata,          
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data7_rdata,
  output                               clk_icache_data7,


  `endif//}

  `endif//UX607_HAS_ICACHE}

  `ifdef UX607_HAS_DCACHE//{
  input  dcache_disable_init,
   
  output                          clk_dcache_w0_tram,  
  output                          dcache_w0_tram_cs,  
  output [`UX607_DTAG_RAM_AW-1:0]  dcache_w0_tram_addr,
  output                          dcache_w0_tram_we ,
  output [`UX607_DTAG_RAM_DW-1:0]  dcache_w0_tram_din,          
  input  [`UX607_DTAG_RAM_DW-1:0]  dcache_w0_tram_dout,
   
  output                          clk_dcache_w1_tram,  
  output                          dcache_w1_tram_cs,  
  output [`UX607_DTAG_RAM_AW-1:0]  dcache_w1_tram_addr, 
  output                          dcache_w1_tram_we ,
  output [`UX607_DTAG_RAM_DW-1:0]  dcache_w1_tram_din,          
  input  [`UX607_DTAG_RAM_DW-1:0]  dcache_w1_tram_dout,

  `ifdef UX607_DCACHE_HAS_ARAM//{
 //   * status ram interface
  output                          clk_dcache_w0_aram,  
  output                          dcache_w0_aram_cs,  
  output [`UX607_DSTAT_RAM_AW-1:0] dcache_w0_aram_addr, 
  output                          dcache_w0_aram_we ,
  output [`UX607_DSTAT_RAM_DW-1:0] dcache_w0_aram_din,          
  input  [`UX607_DSTAT_RAM_DW-1:0] dcache_w0_aram_dout,
   
  output                          clk_dcache_w1_aram,  
  output                          dcache_w1_aram_cs,  
  output [`UX607_DSTAT_RAM_AW-1:0] dcache_w1_aram_addr, 
  output                          dcache_w1_aram_we ,
  output [`UX607_DSTAT_RAM_DW-1:0] dcache_w1_aram_din,          
  input  [`UX607_DSTAT_RAM_DW-1:0] dcache_w1_aram_dout,
  `endif//}

  //
  //   * data ram interface
  output                          clk_dcache_dram_b0,  
  output                          dcache_dram_b0_cs,  
  output [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b0_addr, 
  output [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b0_wem,
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b0_din,          
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b0_dout,
                                                
  output                          clk_dcache_dram_b1,  
  output                          dcache_dram_b1_cs,  
  output [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b1_addr, 
  output [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b1_wem,
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b1_din,          
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b1_dout,
                                                
  output                          clk_dcache_dram_b2,  
  output                          dcache_dram_b2_cs,  
  output [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b2_addr, 
  output [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b2_wem,
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b2_din,          
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b2_dout,
                                                
  output                          clk_dcache_dram_b3,  
  output                          dcache_dram_b3_cs,  
  output [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b3_addr, 
  output [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b3_wem,
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b3_din,          
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b3_dout,
  `endif//UX607_HAS_DCACHE}

  `ifdef UX607_HAS_MMU//{
  //MMU-TLB RAM Interface
  output                                          clk_mmu_tlb_way0, 
  output                                          clk_mmu_tlb_way1, 
  output                                          mmu_tlb_way0_cs, 
  output                                          mmu_tlb_way1_cs, 
  output                                          mmu_tlb_way0_we, 
  output                                          mmu_tlb_way1_we, 
  output [`UX607_TLB_DATA_WIDTH-1:0]               mmu_tlb_way0_wdata, 
  output [`UX607_TLB_DATA_WIDTH-1:0]               mmu_tlb_way1_wdata,
  output [`UX607_TLB_INDEX_WIDTH-1:0]              mmu_tlb_way0_addr, 
  output [`UX607_TLB_INDEX_WIDTH-1:0]              mmu_tlb_way1_addr, 
  input  [`UX607_TLB_DATA_WIDTH-1:0]               mmu_tlb_way0_dout, 
  input  [`UX607_TLB_DATA_WIDTH-1:0]               mmu_tlb_way1_dout, 
  `endif//UX607_HAS_MMU}
  


  `ifdef UX607_HAS_MEM_ITF //{
  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The System Memory Interface
  //
//  //INTERNAL_CODE_BEGIN
//      `ifdef UX607_MEM_TYPE_ICB //{
//  output                         mem_icb_cmd_valid,
//  input                          mem_icb_cmd_ready,
//  output [`UX607_PA_SIZE-1:0]   mem_icb_cmd_addr, 
//  output                         mem_icb_cmd_read, 
//  output                         mem_icb_cmd_dmode, 
//  output                         mem_icb_cmd_mmode, 
//  output [`UX607_LSU_DW-1:0]        mem_icb_cmd_wdata,
//  output [`UX607_LSU_MW-1:0]      mem_icb_cmd_wmask,
//  output [2:0]                   mem_icb_cmd_burst,
//  output [1:0]                   mem_icb_cmd_beat,
//  output                         mem_icb_cmd_lock,
//  output                         mem_icb_cmd_excl,
//  output [1:0]                   mem_icb_cmd_size,
//  
//  input                          mem_icb_rsp_valid,
//  output                         mem_icb_rsp_ready,
//  input                          mem_icb_rsp_err  ,
//  input                          mem_icb_rsp_excl_ok,
//  input  [`UX607_LSU_DW-1:0]        mem_icb_rsp_rdata,
//      `endif//}
//  //INTERNAL_CODE_END

      `ifdef UX607_MEM_TYPE_AHBL //{
        `ifdef UX607_HAS_NDSE
          `ifdef UX607_MEM_CLOCK_RATIO
  input                            bus_clk_en,
          `endif//UX607_MEM_CLOCK_RATIO
        `endif//UX607_HAS_NDSE

  output [1:0]                     htrans, // Can be IDLE, NONSEQUENTIAL, OR SEQUENTIAL (if Cache is configured) 
  output                           hwrite,   
  output [`UX607_PA_SIZE    -1:0] haddr,    
  output [2:0]                     hsize,  //Can be 8, 16, or 32 bits  
  output [2:0]                     hburst, // If instruction fetch not from I-Cache, it is SINGLE (3'b000) 
                                                    // If data access not from D-Cache, it is INCR (3'b001) 
                                                    // If instruction fetch from I-Cache, it is INCR8 (3'b101) (8-beat incrementing burst) 
                                                    //   since the ICache Line-Size is 32Bytes long
                                                    // If data access from D-Cache, it is WRAP8 (3'b100)  (8-beat wrapping burst) 
                                                    //   since the DCache Line-Size is 32Bytes long
  output                           hmastlock,   
  output [`UX607_MLEN    -1:0]      hwdata,   
  output [3:0]                     hprot, 
                                      //  HPROT[3:2] 
                                      //     --- If instruction fetch not from I-Cache, indicates non-cacheable (bit3 == 0) and
                                      //           non-bufferable (bit2 == 0) on this bus.
                                      //     --- If data access not from D-Cache, indicates non-cacheable (bit3 == 0) and
                                      //           non-bufferable (bit2 == 0) on this bus.
                                      //     --- If instruction fetch from I-Cache, indicates cacheable (bit3 == 1) and
                                      //           bufferable (bit2 == 1) on this bus.
                                      //     --- If data access from D-Cache, indicates cacheable (bit3 == 1) and
                                      //           bufferable (bit2 == 1) on this bus.
                                      //  HPROT[1] Indicate the machine-mode (1'b1) or user-mode (1'b0) access
                                      //  HPROT[0] Indicate this is instruction access (1'b0) or data-access (1'b1)
  //output [1:0]                     hattri, // Output Memory attributes. Bit 0 = Allocate, Bit 1 = shareable. Always 11 for this bus (shareable, allocate)
  output [1:0]                     master,
                                      //  Indicate the access under debug-mode (2'b01) 
                                      //    or regular data-access(2'b00).
                                      //    or regular instruction-fetch(2'b10).
                                      //    other values will not be seen on this interface
  input  [`UX607_MLEN    -1:0]      hrdata,   
  input  [1:0]                     hresp,  // Only support response OKAY or ERROR, hence the hresp[1] bit is ignored
  input                            hready,   
  //      `ifdef UX607_HAS_AMO//{
  //output                           hexcl,   
  //input                            hresp_exok,    
  //      `endif//UX607_HAS_AMO}
      `endif//UX607_MEM_TYPE_AHBL}
  `endif//UX607_HAS_MEM_ITF}

  `ifdef UX607_HAS_PPI //{
  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The Private Peripheral Interface
  //
 // //INTERNAL_CODE_BEGIN
 //     `ifdef UX607_PPI_TYPE_ICB //{
 // //    * Bus cmd channel
 // output                         ppi_icb_cmd_valid,
 // input                          ppi_icb_cmd_ready,
 // output [`UX607_PA_SIZE-1:0]   ppi_icb_cmd_addr, 
 // output                         ppi_icb_cmd_read, 
 // output                         ppi_icb_cmd_dmode, 
 // output                         ppi_icb_cmd_mmode, 
 // output [`UX607_PLEN-1:0]        ppi_icb_cmd_wdata,
 // output [`UX607_PLEN_MW-1:0]      ppi_icb_cmd_wmask,
 // //
 // //    * Bus RSP channel
 // input                          ppi_icb_rsp_valid,
 // output                         ppi_icb_rsp_ready,
 // input                          ppi_icb_rsp_err  ,
 // input  [`UX607_PLEN-1:0]        ppi_icb_rsp_rdata,
 //     `endif//}
 // //INTERNAL_CODE_END

      `ifdef UX607_PPI_TYPE_APB //{
  output [`UX607_PPI_ADDR_WIDTH-1:0]   ppi_paddr,
  output                        ppi_pwrite,
  output                        ppi_psel,
  output                        ppi_dmode,
  output                        ppi_penable,
  output [2:0]                  ppi_pprot,
  output [3:0]                  ppi_pstrobe,
  output [`UX607_PLEN-1:0]       ppi_pwdata,
  input  [`UX607_PLEN-1:0]       ppi_prdata,
  input                         ppi_pready ,
  input                         ppi_pslverr,
      `endif//}
      `ifdef UX607_PPI_TYPE_AHB //{
  output [1:0]                   ppi_ahbl_htrans  ,  
  output                         ppi_ahbl_hwrite  ,  
  output [`UX607_PA_SIZE-1:0]   ppi_ahbl_haddr   ,  
  output [2:0]                   ppi_ahbl_hsize   ,  
  output [`UX607_PLEN-1:0]        ppi_ahbl_hwdata  ,  
  output [3:0]                   ppi_ahbl_hprot   ,

  input  [`UX607_PLEN-1:0]        ppi_ahbl_hrdata  ,  
  input  [1:0]                   ppi_ahbl_hresp   ,  
  input                          ppi_ahbl_hready  ,  

  input                          ppi_ahbl_clk_en, // CAI-TODO-TODO: does we need to expand this signal to apb and icb for ppi?
      `endif//UX607_PPI_TYPE_AHB}
  `endif//UX607_HAS_PPI}

  `ifdef UX607_HAS_FIO //{
  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  //NOT USED IN UX607
  // The ICB Interface to Fast I/O
  //
  //    * Bus cmd channel
  output                        fio_cmd_valid,
  output [`UX607_FIO_ADDR_WIDTH-1:0]   fio_cmd_addr, 
  output                        fio_cmd_read, 
  output                        fio_cmd_dmode, 
  output                        fio_cmd_mmode, 
  output [`UX607_PLEN-1:0]        fio_cmd_wdata,
  output [`UX607_PLEN_MW-1:0]      fio_cmd_wmask,
  //
  //    * Bus RSP channel
  input                         fio_rsp_err  ,
  input  [`UX607_PLEN-1:0]        fio_rsp_rdata,
  `endif//UX607_HAS_FIO}
  //NOT USED IN UX607

  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The LM Slave Interface 
      `ifdef UX607_HAS_LM_SLAVE//{

  `ifdef UX607_MEM_TYPE_AXI//{
  //AR
  output                           slv_arready,
  input                            slv_arvalid,
  input [`UX607_BUSID_W-1:0]        slv_arid,
  input [`UX607_PA_SIZE-1:0]      slv_araddr,
  input [7:0]                      slv_arlen,
  input [2:0]                      slv_arsize,
  input [1:0]                      slv_arburst,
  input [3:0]                      slv_arregion,
  //AW/W
  output                           slv_awready,
  input                            slv_awvalid,
  input [`UX607_BUSID_W-1:0]        slv_awid,
  input [`UX607_PA_SIZE-1:0]      slv_awaddr,
  input [7:0]                      slv_awlen,
  input [2:0]                      slv_awsize,
  input [1:0]                      slv_awburst,
  input [3:0]                      slv_awregion,

  output                           slv_wready,
  input                            slv_wvalid,
  input [`UX607_MLEN-1:0]           slv_wdata,
  input [`UX607_MLEN_MW-1:0]        slv_wstrb,
  input                            slv_wlast,
  //R
  input                            slv_rready,
  output                           slv_rvalid,
  output [`UX607_BUSID_W-1:0]       slv_rid,
  output [`UX607_MLEN-1:0]          slv_rdata,
  output [1:0]                     slv_rresp,
  output                           slv_rlast,
  //B
  input                            slv_bready,
  output                           slv_bvalid,
  output [`UX607_BUSID_W-1:0]       slv_bid,
  output [1:0]                     slv_bresp,

  input                            slv_bus_clk_en,
 `endif //UX607_MEM_TYPE_AXI//}






  `ifdef UX607_MEM_TYPE_AHBL //{
  input              slv_huser,
  input              slv_hsel,   
  input  [1:0]       slv_htrans,   
  input              slv_hwrite,   
  input  [`UX607_PA_SIZE    -1:0]slv_haddr,    
  input  [2:0]       slv_hsize,    
  input  [`UX607_MLEN-1:0]slv_hwdata,   

  output  [`UX607_MLEN-1:0]slv_hrdata,   
  output [1:0]       slv_hresp,    
  input              slv_hready_in,   
  output             slv_hready_out,   
  `endif//UX607_MEM_TYPE_AHBL}

  `ifdef UX607_MEM_TYPE_ICB //{
  // External ICB
  input             slv_icb_cmd_valid, 
  output            slv_icb_cmd_ready, 
  input  [`UX607_PA_SIZE-1:0]   slv_icb_cmd_addr,
  input             slv_icb_cmd_read, 
  input  [`UX607_PLEN-1:0]   slv_icb_cmd_wdata, 
  input  [ 4-1:0]   slv_icb_cmd_wmask, 
  input  [ 2-1:0]   slv_icb_cmd_size, 

  output            slv_icb_rsp_valid, 
  input             slv_icb_rsp_ready, 
  output            slv_icb_rsp_err,   
  output [`UX607_PLEN-1:0]   slv_icb_rsp_rdata, 
  `endif//UX607_MEM_TYPE_ICB}
      `endif//UX607_HAS_LM_SLAVE}


  ///////////////////////////////////////////
      // The Event signals
  output tx_evt,// The send-out event signal as a pulse
  input  rx_evt,// The recieve-in event signal as a pulse

  ///////////////////////////////////////
  input  [`UX607_XLEN-1:0] hart_id,// The hart ID indication  

  ///////////////////////////////////////
  input  [`UX607_PC_SIZE-1:0] reset_vector, // The reset PC value
    

  ///////////////////////////////////////
      // WFI indication 
      //   If this is high, then indicating currently the core is enter into sleep mode after executed a WFI instruction
  output core_wfi_mode, 

      // The SoC can utilize this signal to differentiate several different Sleep mode
      //   If sleep_value is 0, then it is sleep-mode 0
      //   If sleep_value is 1, then it is sleep-mode 1


  //////////////////////////////////////////
  ///    // The inspection signals used to monitor some internal state
  ///output [`UX607_PC_SIZE-1:0] inspect_pc,
  ///output inspect_mem_cmd_valid,
  ///output inspect_mem_cmd_ready,
  ///output inspect_mem_rsp_valid,
  ///output inspect_mem_rsp_ready,
  ///output inspect_clk     ,


 
//  `ifdef UX607_HAS_ITCM//{
//  //////////////////////////////////////////////////////////////
//  //////////////////////////////////////////////////////////////
//  // External-agent ICB to ITCM
//  //    * Bus cmd channel
//  input                          ext2itcm_icb_cmd_valid,
//  output                         ext2itcm_icb_cmd_ready,
//  input  [`UX607_ITCM_ADDR_WIDTH-1:0]   ext2itcm_icb_cmd_addr, 
//  input                          ext2itcm_icb_cmd_read, 
//  input  [`UX607_LSU_DW-1:0]        ext2itcm_icb_cmd_wdata,
//  input  [`UX607_LSU_MW-1:0]      ext2itcm_icb_cmd_wmask,
//  //
//  //    * Bus RSP channel
//  output                         ext2itcm_icb_rsp_valid,
//  input                          ext2itcm_icb_rsp_ready,
//  output                         ext2itcm_icb_rsp_err  ,
//  output [`UX607_LSU_DW-1:0]        ext2itcm_icb_rsp_rdata,
//  `endif//UX607_HAS_ITCM}
//
//  `ifdef UX607_HAS_DTCM//{
//  //////////////////////////////////////////////////////////////
//  //////////////////////////////////////////////////////////////
//  // External-agent ICB to DTCM
//  //    * Bus cmd channel
//  input                          ext2dtcm_icb_cmd_valid,
//  output                         ext2dtcm_icb_cmd_ready,
//  input  [`UX607_DTCM_ADDR_WIDTH-1:0]   ext2dtcm_icb_cmd_addr, 
//  input                          ext2dtcm_icb_cmd_read, 
//  input  [`UX607_LSU_DW-1:0]        ext2dtcm_icb_cmd_wdata,
//  input  [`UX607_LSU_MW-1:0]      ext2dtcm_icb_cmd_wmask,
//  //
//  //    * Bus RSP channel
//  output                         ext2dtcm_icb_rsp_valid,
//  input                          ext2dtcm_icb_rsp_ready,
//  output                         ext2dtcm_icb_rsp_err  ,
//  output [`UX607_LSU_DW-1:0]        ext2dtcm_icb_rsp_rdata,
//  `endif//UX607_HAS_DTCM}
  
//  `ifdef UX607_HAS_TCM //{
//    // The PMU control signal from PMU to control the TCM Shutdown
//  input tcm_sd,
//    // The PMU control signal from PMU to control the TCM Deep-Sleep
//  input tcm_ds,
//  `endif//UX607_HAS_TCM//}


  `ifdef UX607_HAS_NICE //{
  ////////////////////////////////////////////////////////////////
  // The NICE interface
  ////////////////////////////////////////////////////////////////

    input                   nice_mem_holdup  , //O: nice occupys the memory. for avoid of dead-loop®
    /////// nice_req interface ///////
    output                  nice_req_valid  , //O: handshake flag, cmd is valid
    input                   nice_req_ready  , //I: handshake flag, cmd is accepted.
    output [`UX607_INSTR_SIZE-1:0] nice_req_instr , // O: inst sent to nice. 
    output [`UX607_XLEN-1:0] nice_req_rs1   , // O: rs op 1.
    output [`UX607_XLEN-1:0] nice_req_rs2   , // O: rs op 2.
  `ifdef UX607_NICE_1CYC_64OP//{
    output [`UX607_XLEN-1:0] nice_req_rs1_1 , // O: rs op 1.
    output [`UX607_XLEN-1:0] nice_req_rs2_1 , // O: rs op 2.
  `endif//UX607_NICE_1CYC_64OP}
    output                  nice_req_mmode , // O: current insns' mmode 
  `ifdef UX607_HAS_SMODE//{
    output                  nice_req_smode , // O: current insns' smode 
  `endif//UX607_HAS_SMODE}

    /////// icb_cmd_rsp interface ///////
    input                   nice_rsp_1cyc_type , //I: current insn is one cycle.
    input [`UX607_XLEN-1:0]  nice_rsp_1cyc_dat  , //I: one cycle result write-back val.
    `ifdef UX607_NICE_1CYC_64OP//{
    input [`UX607_XLEN-1:0]  nice_rsp_1cyc_dat_1, //I: one cycle result write-back val.
    `endif//UX607_NICE_1CYC_64OP}
    input                   nice_rsp_1cyc_err  ,
     
                                              
    input                   nice_rsp_multicyc_valid , //I: current insn is multi-cycle.
    output                  nice_rsp_multicyc_ready , //O:                             
    input  [`UX607_XLEN-1:0] nice_rsp_multicyc_dat   , //I: one cycle result write-back val.
    input                   nice_rsp_multicyc_err   ,

    /////// lsu_req interface ///////
    input                   nice_icb_cmd_valid  , //I: nice access main-mem req valid.
    output                  nice_icb_cmd_ready  ,// O: nice access req is accepted.
    input [`UX607_PA_SIZE-1:0]  nice_icb_cmd_addr   , //I : nice access main-mem address.
    input                   nice_icb_cmd_read   , //I: nice access type. 
    input [`UX607_LSU_DW-1:0]  nice_icb_cmd_wdata  ,//I: nice write data.
    input [1:0]             nice_icb_cmd_size   , //I: data size input.
    input                   nice_icb_cmd_mmode  , //I: nice access current mode.
  `ifdef UX607_HAS_SMODE//{
    input                   nice_icb_cmd_smode  , //I: nice access current mode..
  `endif//UX607_HAS_SMODE}

    /////// lsu_rsp interface ///////
    output                  nice_icb_rsp_valid  , //O: main core responds result to nice.
    input                   nice_icb_rsp_ready  ,// I: respond result is accepted.
    output [`UX607_LSU_DW-1:0] nice_icb_rsp_rdata  ,// O: rsp data.
    output                  nice_icb_rsp_err    , // O : err flag

  `endif//UX607_HAS_NICE}



  output core_sleep_value

  );


  `ifdef UX607_HAS_DEBUG//{
      wire jtag_tck_scan = scanmode ? core_clk : jtag_TCK;
  `endif
  wire reset_bypass_scan = scanmode ? scanmode : reset_bypass;
  wire clkgate_bypass_scan = scanmode ? scanmode : clkgate_bypass;
  wire core_reset_n_scan = scanmode ? por_reset_n : core_reset_n;


  ux607_core u_ux607_core(

     .hart_halted (hart_halted), 

     
     .jtag_TCK    (jtag_TCK),
     .jtag_TMS    (jtag_TMS),
     .jtag_TDI    (jtag_TDI),
     .jtag_TDO    (jtag_TDO),
     .i_dbg_stop  (i_dbg_stop),
     .jtag_DRV_TDO(jtag_DRV_TDO),

    .sysrstreq       (sysrstreq       ),

    .trace_ivalid    (trace_ivalid    ),
    .trace_iexception(trace_iexception),
    .trace_cause     (trace_cause     ),
    .trace_tval      (trace_tval      ),
    .trace_interrupt (trace_interrupt ),
    .trace_iaddr     (trace_iaddr     ),
    .trace_instr     (trace_instr     ),
    .trace_priv      (trace_priv      ),


      ///////////////////////////////////////////
      // The external IRQ to PIC
    .nmi            (nmi),

    `ifdef UX607_TMR_PRIVATE //{
     ///////////////////////////////////////////
      // The RTC toggle to TMR
    .mtime_toggle_a     (mtime_toggle_a  ),
    `endif//UX607_TMR_PRIVATE}
    `ifdef UX607_DBG_TIMEOUT //{
    .dbg_toggle_a     (dbg_toggle_a),
    `endif //} UX607_DBG_TIMEOUT

`ifdef UX607_HAS_PLIC//{
      ///////////////////////////////////////////
      // The external IRQ to PLIC
    .irq_i      (irq_i),
`else//}{
   `ifdef UX607_HAS_CLIC//
      ///////////////////////////////////////////
      // The external IRQ to CLIC
    .irq_i      (irq_i),
   `endif//}
`endif//UX607_HAS_PLIC}


      ///////////////////////////////////////////
      // The PC reset value indicator
    .reset_vector             (reset_vector),

    
      ///////////////////////////////////////////
      // The WFI indicator
    .core_wfi_mode            (core_wfi_mode),
    .core_sleep_value         (core_sleep_value),

      ///////////////////////////////////////////
      // The Debug mode indicator

      ///////////////////////////////////////////
      // The Hart ID indicator
    .hart_id            (hart_id),  

     //N201_UNUSED_BEGIN
  `ifdef UX607_HAS_ICACHE //{
    .icache_disable_init  (icache_disable_init),

    .icache_tag0_cs       (icache_tag0_cs   ),
    .icache_tag0_we       (icache_tag0_we   ),
    .icache_tag0_addr     (icache_tag0_addr ),
    .icache_tag0_wdata      (icache_tag0_wdata  ),        
    .icache_tag0_rdata     (icache_tag0_rdata ),
    .clk_icache_tag0      (clk_icache_tag0),
                                                
    .icache_data0_cs       (icache_data0_cs   ),
    .icache_data0_we       (icache_data0_we   ),
    .icache_data0_addr     (icache_data0_addr ),
    .icache_data0_wdata      (icache_data0_wdata  ),        
    .icache_data0_rdata     (icache_data0_rdata ),
    .clk_icache_data0      (clk_icache_data0),
                                                
    `ifndef UX607_ICACHE_1WAYS//{
    .icache_tag1_cs       (icache_tag1_cs   ),
    .icache_tag1_we       (icache_tag1_we   ),
    .icache_tag1_addr     (icache_tag1_addr ),
    .icache_tag1_wdata      (icache_tag1_wdata  ),        
    .icache_tag1_rdata     (icache_tag1_rdata ),
    .clk_icache_tag1      (clk_icache_tag1),

    .icache_data1_cs       (icache_data1_cs   ),
    .icache_data1_we       (icache_data1_we   ),
    .icache_data1_addr     (icache_data1_addr ),
    .icache_data1_wdata      (icache_data1_wdata  ),        
    .icache_data1_rdata     (icache_data1_rdata ),
    .clk_icache_data1      (clk_icache_data1),
    `endif//UX607_ICACHE_1WAYS//}

    `ifdef UX607_ICACHE_1WAYS//{
    `elsif UX607_ICACHE_2WAYS
    `else 
    .icache_tag2_cs       (icache_tag2_cs   ),
    .icache_tag2_we       (icache_tag2_we   ),
    .icache_tag2_addr     (icache_tag2_addr ),
    .icache_tag2_wdata      (icache_tag2_wdata  ),        
    .icache_tag2_rdata     (icache_tag2_rdata ),
    .clk_icache_tag2      (clk_icache_tag2),

    .icache_data2_cs       (icache_data2_cs   ),
    .icache_data2_we       (icache_data2_we   ),
    .icache_data2_addr     (icache_data2_addr ),
    .icache_data2_wdata      (icache_data2_wdata  ),        
    .icache_data2_rdata     (icache_data2_rdata ),
    .clk_icache_data2      (clk_icache_data2),


    .icache_tag3_cs       (icache_tag3_cs   ),
    .icache_tag3_we       (icache_tag3_we   ),
    .icache_tag3_addr     (icache_tag3_addr ),
    .icache_tag3_wdata      (icache_tag3_wdata  ),        
    .icache_tag3_rdata     (icache_tag3_rdata ),
    .clk_icache_tag3      (clk_icache_tag3),

    .icache_data3_cs       (icache_data3_cs   ),
    .icache_data3_we       (icache_data3_we   ),
    .icache_data3_addr     (icache_data3_addr ),
    .icache_data3_wdata      (icache_data3_wdata  ),        
    .icache_data3_rdata     (icache_data3_rdata ),
    .clk_icache_data3      (clk_icache_data3),
    `endif//UX607_ICACHE_1WAYS//}

    `ifdef UX607_ICACHE_8WAYS//{
    .icache_tag4_cs       (icache_tag4_cs   ),
    .icache_tag4_we       (icache_tag4_we   ),
    .icache_tag4_addr     (icache_tag4_addr ),
    .icache_tag4_wdata      (icache_tag4_wdata  ),        
    .icache_tag4_rdata     (icache_tag4_rdata ),
    .clk_icache_tag4      (clk_icache_tag4),

    .icache_data4_cs       (icache_data4_cs   ),
    .icache_data4_we       (icache_data4_we   ),
    .icache_data4_addr     (icache_data4_addr ),
    .icache_data4_wdata      (icache_data4_wdata  ),        
    .icache_data4_rdata     (icache_data4_rdata ),
    .clk_icache_data4      (clk_icache_data4),


    .icache_tag5_cs       (icache_tag5_cs   ),
    .icache_tag5_we       (icache_tag5_we   ),
    .icache_tag5_addr     (icache_tag5_addr ),
    .icache_tag5_wdata      (icache_tag5_wdata  ),        
    .icache_tag5_rdata     (icache_tag5_rdata ),
    .clk_icache_tag5      (clk_icache_tag5),

    .icache_data5_cs       (icache_data5_cs   ),
    .icache_data5_we       (icache_data5_we   ),
    .icache_data5_addr     (icache_data5_addr ),
    .icache_data5_wdata      (icache_data5_wdata  ),        
    .icache_data5_rdata     (icache_data5_rdata ),
    .clk_icache_data5      (clk_icache_data5),


    .icache_tag6_cs       (icache_tag6_cs   ),
    .icache_tag6_we       (icache_tag6_we   ),
    .icache_tag6_addr     (icache_tag6_addr ),
    .icache_tag6_wdata      (icache_tag6_wdata  ),        
    .icache_tag6_rdata     (icache_tag6_rdata ),
    .clk_icache_tag6      (clk_icache_tag6),

    .icache_data6_cs       (icache_data6_cs   ),
    .icache_data6_we       (icache_data6_we   ),
    .icache_data6_addr     (icache_data6_addr ),
    .icache_data6_wdata      (icache_data6_wdata  ),        
    .icache_data6_rdata     (icache_data6_rdata ),
    .clk_icache_data6      (clk_icache_data6),


    .icache_tag7_cs       (icache_tag7_cs   ),
    .icache_tag7_we       (icache_tag7_we   ),
    .icache_tag7_addr     (icache_tag7_addr ),
    .icache_tag7_wdata      (icache_tag7_wdata  ),        
    .icache_tag7_rdata     (icache_tag7_rdata ),
    .clk_icache_tag7      (clk_icache_tag7),

    .icache_data7_cs       (icache_data7_cs   ),
    .icache_data7_we       (icache_data7_we   ),
    .icache_data7_addr     (icache_data7_addr ),
    .icache_data7_wdata      (icache_data7_wdata  ),        
    .icache_data7_rdata     (icache_data7_rdata ),
    .clk_icache_data7      (clk_icache_data7),
    `endif//UX607_ICACHE_8WAYS//}

  `endif//UX607_HAS_ICACHE}
  
  `ifdef UX607_HAS_DCACHE
    .dcache_disable_init      (dcache_disable_init),

    .clk_dcache_w0_tram       (clk_dcache_w0_tram),
    .dcache_w0_tram_cs        (dcache_w0_tram_cs),  
    .dcache_w0_tram_addr      (dcache_w0_tram_addr), 
    .dcache_w0_tram_we        (dcache_w0_tram_we),
    .dcache_w0_tram_din       (dcache_w0_tram_din),          
    .dcache_w0_tram_dout      (dcache_w0_tram_dout),

    .clk_dcache_w1_tram       (clk_dcache_w1_tram),
    .dcache_w1_tram_cs        (dcache_w1_tram_cs),  
    .dcache_w1_tram_addr      (dcache_w1_tram_addr), 
    .dcache_w1_tram_we        (dcache_w1_tram_we),
    .dcache_w1_tram_din       (dcache_w1_tram_din),          
    .dcache_w1_tram_dout      (dcache_w1_tram_dout),


    .clk_dcache_dram_b0       (clk_dcache_dram_b0 ), 
    .dcache_dram_b0_cs        (dcache_dram_b0_cs  ),
    .dcache_dram_b0_addr      (dcache_dram_b0_addr),
    .dcache_dram_b0_wem       (dcache_dram_b0_wem ),
    .dcache_dram_b0_din       (dcache_dram_b0_din ),
    .dcache_dram_b0_dout      (dcache_dram_b0_dout),
                                             
    .clk_dcache_dram_b1       (clk_dcache_dram_b1 ),
    .dcache_dram_b1_cs        (dcache_dram_b1_cs  ),
    .dcache_dram_b1_addr      (dcache_dram_b1_addr),
    .dcache_dram_b1_wem       (dcache_dram_b1_wem ),
    .dcache_dram_b1_din       (dcache_dram_b1_din ),
    .dcache_dram_b1_dout      (dcache_dram_b1_dout),
                                             
    .clk_dcache_dram_b2       (clk_dcache_dram_b2 ),
    .dcache_dram_b2_cs        (dcache_dram_b2_cs  ),
    .dcache_dram_b2_addr      (dcache_dram_b2_addr),
    .dcache_dram_b2_wem       (dcache_dram_b2_wem ),
    .dcache_dram_b2_din       (dcache_dram_b2_din ),
    .dcache_dram_b2_dout      (dcache_dram_b2_dout),
                                             
    .clk_dcache_dram_b3       (clk_dcache_dram_b3 ),
    .dcache_dram_b3_cs        (dcache_dram_b3_cs  ),
    .dcache_dram_b3_addr      (dcache_dram_b3_addr),
    .dcache_dram_b3_wem       (dcache_dram_b3_wem ),
    .dcache_dram_b3_din       (dcache_dram_b3_din ),
    .dcache_dram_b3_dout      (dcache_dram_b3_dout),
  `endif

  `ifdef UX607_HAS_MMU
    .clk_mmu_tlb_way0     (clk_mmu_tlb_way0    ),
    .clk_mmu_tlb_way1     (clk_mmu_tlb_way1    ),
    .mmu_tlb_way0_cs      (mmu_tlb_way0_cs     ), 
    .mmu_tlb_way1_cs      (mmu_tlb_way1_cs     ), 
    .mmu_tlb_way0_we      (mmu_tlb_way0_we     ), 
    .mmu_tlb_way1_we      (mmu_tlb_way1_we     ), 
    .mmu_tlb_way0_wdata   (mmu_tlb_way0_wdata  ), 
    .mmu_tlb_way1_wdata   (mmu_tlb_way1_wdata  ), 
    .mmu_tlb_way0_addr    (mmu_tlb_way0_addr   ), 
    .mmu_tlb_way1_addr    (mmu_tlb_way1_addr   ), 
    .mmu_tlb_way0_dout    (mmu_tlb_way0_dout   ), 
    .mmu_tlb_way1_dout    (mmu_tlb_way1_dout   ), 
  `endif
  
  `ifdef UX607_HAS_ILM //{
    `ifdef UX607_LM_ITF_TYPE_SRAM //{
    .ilm_cs       (ilm_cs      ),  
    .ilm_addr     (ilm_addr    ), 
    .ilm_byte_we  (ilm_byte_we ),
    .ilm_wdata    (ilm_wdata   ),          
    .ilm_rdata    (ilm_rdata   ),
    .clk_ilm_ram  (clk_ilm_ram ),
    `endif//}
  `endif//UX607_HAS_ILM}

  `ifdef UX607_HAS_DLM //{
    `ifdef UX607_LM_ITF_TYPE_SRAM //{
    .dlm0_cs       (dlm0_cs      ),  
    .dlm0_addr     (dlm0_addr    ), 
    .dlm0_byte_we  (dlm0_byte_we ),
    .dlm0_wdata    (dlm0_wdata   ),          
    .dlm0_rdata    (dlm0_rdata   ),
    .clk_dlm0_ram  (clk_dlm0_ram),
    .dlm1_cs       (dlm1_cs      ),  
    .dlm1_addr     (dlm1_addr    ), 
    .dlm1_byte_we  (dlm1_byte_we ),
    .dlm1_wdata    (dlm1_wdata   ),          
    .dlm1_rdata    (dlm1_rdata   ),
    .clk_dlm1_ram  (clk_dlm1_ram ),
    `endif//}
  `endif//UX607_HAS_DLM}


  `ifdef UX607_HAS_NICE //{
      ///////////////////////////////////////////
      // The NICE interface
    .nice_mem_holdup         (nice_mem_holdup),
    .nice_req_valid          (nice_req_valid ),
    .nice_req_ready          (nice_req_ready ),
    .nice_req_instr          (nice_req_instr ),
    .nice_req_rs1            (nice_req_rs1   ), 
    .nice_req_rs2            (nice_req_rs2   ), 
  `ifdef UX607_NICE_1CYC_64OP//{
    .nice_req_rs1_1          (nice_req_rs1_1     ), //O: rs op 1 pair register.
    .nice_req_rs2_1          (nice_req_rs2_1     ), //O: rs op 2 pair register.
  `endif// UX607_NICE_1CYC_64OP}
    .nice_req_mmode          (nice_req_mmode     ), //O:
  `ifdef UX607_HAS_SMODE//{
    .nice_req_smode          (nice_req_smode     ), //O:
  `endif//UX607_HAS_SMODE}

    // icb_cmd_rsp interface
    // for one cycle insn, the rsp data is valid at the same time of insn, so
    // the handshake flags is useless.
    .nice_rsp_1cyc_type      (nice_rsp_1cyc_type     ), //I: current insn is one cycle.
    .nice_rsp_1cyc_dat       (nice_rsp_1cyc_rdat     ), //I: one cycle result write-back val.
  `ifdef UX607_NICE_1CYC_64OP//{
    .nice_rsp_1cyc_dat_1     (nice_rsp_1cyc_rdat_1   ), //I: one cycle result write-back val.
  `endif//UX607_NICE_1CYC_64OP}
    .nice_rsp_1cyc_err       (nice_rsp_1cyc_err      ),
                                              
    .nice_rsp_multicyc_valid (nice_rsp_multicyc_valid     ), //I: current insn is multi-cycle.
    .nice_rsp_multicyc_ready (nice_rsp_multicyc_ready     ), //O: current insn is multi-cycle.
    .nice_rsp_multicyc_dat   (nice_rsp_multicyc_rdat      ), //I: one cycle result write-back val.
    .nice_rsp_multicyc_err   (nice_rsp_multicyc_err       ),

    // lsu_req interface                                         
    .nice_icb_cmd_valid      (nice_icb_cmd_valid ), //I: nice access main-mem req valid.
    .nice_icb_cmd_ready      (nice_icb_cmd_ready ), //O: nice access req is accepted.
    .nice_icb_cmd_addr       (nice_icb_cmd_addr  ), //I : nice access main-mem address.
    .nice_icb_cmd_read       (nice_icb_cmd_read  ), //I: nice access type. 
    .nice_icb_cmd_wdata      (nice_icb_cmd_wdata ), //I: nice write data.
    .nice_icb_cmd_size       (nice_icb_cmd_size  ), //I: data size input.
    .nice_icb_cmd_mmode      (nice_icb_cmd_mmode ), //I:  mmode input.
  `ifdef UX607_HAS_SMODE//{
    .nice_icb_cmd_smode      (nice_icb_cmd_smode ), //I:  mmode input.
  `endif//UX607_HAS_SMODE}

    // lsu_rsp interface                                          
    .nice_icb_rsp_valid      (nice_icb_rsp_valid ), //O: main core responds result to nice.
    .nice_icb_rsp_ready      (nice_icb_rsp_ready ), //I: respond result is accepted.
    .nice_icb_rsp_rdata      (nice_icb_rsp_rdata ), //O: rsp data.
    .nice_icb_rsp_err        (nice_icb_rsp_err   ), //O: err flag

  `endif//UX607_HAS_NICE}


  `ifdef UX607_HAS_PPI //{
  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The Private Peripheral Interface
  //
    .ppi_ahbl_htrans (ppi_ahbl_htrans) ,  
    .ppi_ahbl_hwrite (ppi_ahbl_hwrite) ,  
    .ppi_ahbl_haddr  (ppi_ahbl_haddr ) ,  
    .ppi_ahbl_hsize  (ppi_ahbl_hsize ) ,  
    .ppi_ahbl_hwdata (ppi_ahbl_hwdata) ,  
    .ppi_ahbl_hprot  (ppi_ahbl_hprot ) ,
    .ppi_ahbl_hrdata (ppi_ahbl_hrdata) ,  
    .ppi_ahbl_hresp  (ppi_ahbl_hresp ) ,  
    .ppi_ahbl_hready (ppi_ahbl_hready) , 

    .ppi_ahbl_clk_en (ppi_ahbl_clk_en) , 
  `endif//UX607_HAS_PPI}

    
     .mem_arready (mem_arready),
     .mem_arvalid (mem_arvalid),
     //// .mem_arid (mem_arid),
     .mem_araddr (mem_araddr),
     .mem_arlen (mem_arlen),
     .mem_arsize (mem_arsize),
     .mem_arburst (mem_arburst),
     .mem_arlock (mem_arlock),
     .mem_arcache (mem_arcache),
     .mem_arprot (mem_arprot),
     //// .mem_arqos (mem_arqos),
     //// .mem_arregion (mem_arregion),
     //// .mem_aruser (mem_aruser),
     .mem_awready (mem_awready),
     .mem_awvalid (mem_awvalid),
     //// .mem_awid (mem_awid),
     .mem_awaddr (mem_awaddr),
     .mem_awlen (mem_awlen),
     .mem_awsize (mem_awsize),
     .mem_awburst (mem_awburst),
     .mem_awlock (mem_awlock),
     .mem_awcache (mem_awcache),
     .mem_awprot (mem_awprot),
     //// .mem_awqos (mem_awqos),
     //// .mem_awregion (mem_awregion),
     //// .mem_awuser (mem_awuser), 
     .mem_wready (mem_wready),
     .mem_wvalid (mem_wvalid),
     //// .mem_wid (mem_wid),
     .mem_wdata (mem_wdata),
     .mem_wstrb (mem_wstrb),
     .mem_wlast (mem_wlast),
     .mem_rready (mem_rready),
     .mem_rvalid (mem_rvalid),
     //// .mem_rid (mem_rid),
     .mem_rdata (mem_rdata),
     .mem_rresp (mem_rresp),
     .mem_rlast (mem_rlast),
     .mem_bready (mem_bready),
     .mem_bvalid (mem_bvalid),
     //// .mem_bid (mem_bid),
     .mem_bresp (mem_bresp),
     .mem_clk_en (mem_clk_en),

  // The ILM Master Interface 
  `ifdef UX607_HAS_ILM //{

  `ifdef UX607_LM_ITF_TYPE_AHBL //{
      // Do not support the burst and lock transactions
    .ilm_hwdata   (ilm_hwdata),
    .ilm_hwrite   (ilm_hwrite),
    .ilm_hmastlock(ilm_hmastlock),
    .ilm_htrans   (ilm_htrans),
    .ilm_haddr    (ilm_haddr ),
    .ilm_hsize    (ilm_hsize ),
    .ilm_hrdata   (ilm_hrdata),
    .ilm_hresp    (ilm_hresp ),
    .ilm_hready   (ilm_hready),
    .ilm_hburst   (ilm_hburst),
    .ilm_hprot    (ilm_hprot),
  `endif//}
  
      `endif//UX607_HAS_ILM}



  //////////////////////////////////////////////////////////////
  //////////////////////////////////////////////////////////////
  // The DLM Master Interface 
     `ifdef UX607_HAS_DLM //{

  `ifdef UX607_LM_ITF_TYPE_AHBL //{
    .dlm_hmastlock(dlm_hmastlock),
    .dlm_htrans   (dlm_htrans),    
    .dlm_hwrite   (dlm_hwrite),    
    .dlm_haddr    (dlm_haddr ),    
    .dlm_hsize    (dlm_hsize ),    
    .dlm_hwdata   (dlm_hwdata),    
    .dlm_hrdata   (dlm_hrdata),    
    .dlm_hresp    (dlm_hresp ),    
    .dlm_hready   (dlm_hready),    
    .dlm_hburst   (dlm_hburst),
    .dlm_hprot    (dlm_hprot),
    .dlm_master   (dlm_master),
  `endif//}
  
      `endif//UX607_HAS_DLM}
	
	  // The LM Slave Interface 
      `ifdef UX607_HAS_LM_SLAVE//{

    `ifdef UX607_MEM_TYPE_AXI //{
  //AR
   .slv_arready (slv_arready ),
   .slv_arvalid (slv_arvalid ),
   .slv_arid    (slv_arid    ),
   .slv_araddr  (slv_araddr  ),
   .slv_arlen   (slv_arlen   ),
   .slv_arsize  (slv_arsize  ),
   .slv_arburst (slv_arburst ),
   .slv_arregion(slv_arregion),
  //AW/W
   .slv_awready (slv_awready ),
   .slv_awvalid (slv_awvalid ),
   .slv_awid    (slv_awid    ),
   .slv_awaddr  (slv_awaddr  ),
   .slv_awlen   (slv_awlen   ),
   .slv_awsize  (slv_awsize  ),
   .slv_awburst (slv_awburst ),
   .slv_awregion(slv_awregion),

   .slv_wready  (slv_wready),
   .slv_wvalid  (slv_wvalid),
   .slv_wdata   (slv_wdata ),
   .slv_wstrb   (slv_wstrb ),
   .slv_wlast   (slv_wlast ),
  //R
   .slv_rready  (slv_rready),
   .slv_rvalid  (slv_rvalid),
   .slv_rid     (slv_rid   ),
   .slv_rdata   (slv_rdata ),
   .slv_rresp   (slv_rresp ),
   .slv_rlast   (slv_rlast ),
  //B
   .slv_bready  (slv_bready  ),
   .slv_bvalid  (slv_bvalid  ),
   .slv_bid     (slv_bid     ),
   .slv_bresp   (slv_bresp   ),

   .slv_bus_clk_en(slv_bus_clk_en),
   `endif //UX607_MEM_TYPE_AXI //}






    `ifdef UX607_MEM_TYPE_AHBL //{
    .slv_huser         (slv_huser),
    .slv_hsel          (slv_hsel),   
    .slv_htrans        (slv_htrans),   
    .slv_hwrite        (slv_hwrite),   
    .slv_haddr         (slv_haddr),    
    .slv_hsize         (slv_hsize),    
    .slv_hwdata        (slv_hwdata),   

    .slv_hrdata        (slv_hrdata),   
    .slv_hresp         (slv_hresp),    
    .slv_hready_in     (slv_hready_in),   
    .slv_hready_out    (slv_hready_out),   
    `endif//}

  `ifdef UX607_MEM_TYPE_ICB //{
    .slv_icb_cmd_valid (slv_icb_cmd_valid), 
    .slv_icb_cmd_ready (slv_icb_cmd_ready), 
    .slv_icb_cmd_addr  (slv_icb_cmd_addr),
    .slv_icb_cmd_read  (slv_icb_cmd_read), 
    .slv_icb_cmd_wdata (slv_icb_cmd_wdata), 
    .slv_icb_cmd_wmask (slv_icb_cmd_wmask), 
    .slv_icb_cmd_size  (slv_icb_cmd_size), 

    .slv_icb_rsp_valid (slv_icb_rsp_valid), 
    .slv_icb_rsp_ready (slv_icb_rsp_ready), 
    .slv_icb_rsp_err   (slv_icb_rsp_err),   
    .slv_icb_rsp_rdata (slv_icb_rsp_rdata), 
  `endif//}
      `endif//UX607_HAS_LM_SLAVE}

     //N201_UNUSED_END


     .tx_evt  (tx_evt),
     .rx_evt  (rx_evt),

     .clkgate_bypass   (clkgate_bypass_scan), 
     .reset_bypass     (reset_bypass_scan), 
     .core_clk         (core_clk  ),
     .core_clk_aon     (core_clk  ),
     .core_reset_n     (core_reset_n_scan),
     .por_reset_n      (por_reset_n)

  );


endmodule
