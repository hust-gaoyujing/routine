 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         




















`include "ux607_defines.v"



module ux607_subsys_main(
  `ifdef DDR_CONTROLLER
  
     
   inout [31:0]                       ddr3_dq,
   inout [3:0]                        ddr3_dqs_n,
   inout [3:0]                        ddr3_dqs_p,
   
   output [13:0]                      ddr3_addr,
   output [2:0]                       ddr3_ba,
   output                             ddr3_ras_n,
   output                             ddr3_cas_n,
   output                             ddr3_we_n,
   output                             ddr3_reset_n,
   output [0:0]                       ddr3_ck_p,
   output [0:0]                       ddr3_ck_n,
   output [0:0]                       ddr3_cke,
   output [0:0]                       ddr3_cs_n,
   output [3:0]                       ddr3_dm,
   output [0:0]                       ddr3_odt,
   output                             init_calib_complete,

   input                              ddr3_sys_clk_i,
   input                              ddr3_sys_rst_i,
  `endif

  
  input  [`UX607_PC_SIZE-1:0] reset_vector,

  
  input  mtime_toggle_a,
   `ifdef UX607_DBG_TIMEOUT 
  input  dbg_toggle_a,
    `endif 
  
  input  por_rst_n,

  
  input  sys_rst_n,
        
  
  input  sys_clk,
      
      

  input  evt_i,
  input  nmi_i,

  output core_wfi_mode,
  output core_sleep_value,

  input  jtag_tck,
  input  jtag_tms,
  input  jtag_tdi,
  output jtag_tdo,

  output sysrstreq,


  input  io_pads_gpio_0_i_ival,
  output io_pads_gpio_0_o_oval,
  output io_pads_gpio_0_o_oe,
  output io_pads_gpio_0_o_ie,
  output io_pads_gpio_0_o_pue,
  output io_pads_gpio_0_o_ds,
  input  io_pads_gpio_1_i_ival,
  output io_pads_gpio_1_o_oval,
  output io_pads_gpio_1_o_oe,
  output io_pads_gpio_1_o_ie,
  output io_pads_gpio_1_o_pue,
  output io_pads_gpio_1_o_ds,
  input  io_pads_gpio_2_i_ival,
  output io_pads_gpio_2_o_oval,
  output io_pads_gpio_2_o_oe,
  output io_pads_gpio_2_o_ie,
  output io_pads_gpio_2_o_pue,
  output io_pads_gpio_2_o_ds,
  input  io_pads_gpio_3_i_ival,
  output io_pads_gpio_3_o_oval,
  output io_pads_gpio_3_o_oe,
  output io_pads_gpio_3_o_ie,
  output io_pads_gpio_3_o_pue,
  output io_pads_gpio_3_o_ds,
  input  io_pads_gpio_4_i_ival,
  output io_pads_gpio_4_o_oval,
  output io_pads_gpio_4_o_oe,
  output io_pads_gpio_4_o_ie,
  output io_pads_gpio_4_o_pue,
  output io_pads_gpio_4_o_ds,
  input  io_pads_gpio_5_i_ival,
  output io_pads_gpio_5_o_oval,
  output io_pads_gpio_5_o_oe,
  output io_pads_gpio_5_o_ie,
  output io_pads_gpio_5_o_pue,
  output io_pads_gpio_5_o_ds,
  input  io_pads_gpio_6_i_ival,
  output io_pads_gpio_6_o_oval,
  output io_pads_gpio_6_o_oe,
  output io_pads_gpio_6_o_ie,
  output io_pads_gpio_6_o_pue,
  output io_pads_gpio_6_o_ds,
  input  io_pads_gpio_7_i_ival,
  output io_pads_gpio_7_o_oval,
  output io_pads_gpio_7_o_oe,
  output io_pads_gpio_7_o_ie,
  output io_pads_gpio_7_o_pue,
  output io_pads_gpio_7_o_ds,
  input  io_pads_gpio_8_i_ival,
  output io_pads_gpio_8_o_oval,
  output io_pads_gpio_8_o_oe,
  output io_pads_gpio_8_o_ie,
  output io_pads_gpio_8_o_pue,
  output io_pads_gpio_8_o_ds,
  input  io_pads_gpio_9_i_ival,
  output io_pads_gpio_9_o_oval,
  output io_pads_gpio_9_o_oe,
  output io_pads_gpio_9_o_ie,
  output io_pads_gpio_9_o_pue,
  output io_pads_gpio_9_o_ds,
  input  io_pads_gpio_10_i_ival,
  output io_pads_gpio_10_o_oval,
  output io_pads_gpio_10_o_oe,
  output io_pads_gpio_10_o_ie,
  output io_pads_gpio_10_o_pue,
  output io_pads_gpio_10_o_ds,
  input  io_pads_gpio_11_i_ival,
  output io_pads_gpio_11_o_oval,
  output io_pads_gpio_11_o_oe,
  output io_pads_gpio_11_o_ie,
  output io_pads_gpio_11_o_pue,
  output io_pads_gpio_11_o_ds,
  input  io_pads_gpio_12_i_ival,
  output io_pads_gpio_12_o_oval,
  output io_pads_gpio_12_o_oe,
  output io_pads_gpio_12_o_ie,
  output io_pads_gpio_12_o_pue,
  output io_pads_gpio_12_o_ds,
  input  io_pads_gpio_13_i_ival,
  output io_pads_gpio_13_o_oval,
  output io_pads_gpio_13_o_oe,
  output io_pads_gpio_13_o_ie,
  output io_pads_gpio_13_o_pue,
  output io_pads_gpio_13_o_ds,
  input  io_pads_gpio_14_i_ival,
  output io_pads_gpio_14_o_oval,
  output io_pads_gpio_14_o_oe,
  output io_pads_gpio_14_o_ie,
  output io_pads_gpio_14_o_pue,
  output io_pads_gpio_14_o_ds,
  input  io_pads_gpio_15_i_ival,
  output io_pads_gpio_15_o_oval,
  output io_pads_gpio_15_o_oe,
  output io_pads_gpio_15_o_ie,
  output io_pads_gpio_15_o_pue,
  output io_pads_gpio_15_o_ds,
  input  io_pads_gpio_16_i_ival,
  output io_pads_gpio_16_o_oval,
  output io_pads_gpio_16_o_oe,
  output io_pads_gpio_16_o_ie,
  output io_pads_gpio_16_o_pue,
  output io_pads_gpio_16_o_ds,
  input  io_pads_gpio_17_i_ival,
  output io_pads_gpio_17_o_oval,
  output io_pads_gpio_17_o_oe,
  output io_pads_gpio_17_o_ie,
  output io_pads_gpio_17_o_pue,
  output io_pads_gpio_17_o_ds,
  input  io_pads_gpio_18_i_ival,
  output io_pads_gpio_18_o_oval,
  output io_pads_gpio_18_o_oe,
  output io_pads_gpio_18_o_ie,
  output io_pads_gpio_18_o_pue,
  output io_pads_gpio_18_o_ds,
  input  io_pads_gpio_19_i_ival,
  output io_pads_gpio_19_o_oval,
  output io_pads_gpio_19_o_oe,
  output io_pads_gpio_19_o_ie,
  output io_pads_gpio_19_o_pue,
  output io_pads_gpio_19_o_ds,
  input  io_pads_gpio_20_i_ival,
  output io_pads_gpio_20_o_oval,
  output io_pads_gpio_20_o_oe,
  output io_pads_gpio_20_o_ie,
  output io_pads_gpio_20_o_pue,
  output io_pads_gpio_20_o_ds,
  input  io_pads_gpio_21_i_ival,
  output io_pads_gpio_21_o_oval,
  output io_pads_gpio_21_o_oe,
  output io_pads_gpio_21_o_ie,
  output io_pads_gpio_21_o_pue,
  output io_pads_gpio_21_o_ds,
  input  io_pads_gpio_22_i_ival,
  output io_pads_gpio_22_o_oval,
  output io_pads_gpio_22_o_oe,
  output io_pads_gpio_22_o_ie,
  output io_pads_gpio_22_o_pue,
  output io_pads_gpio_22_o_ds,
  input  io_pads_gpio_23_i_ival,
  output io_pads_gpio_23_o_oval,
  output io_pads_gpio_23_o_oe,
  output io_pads_gpio_23_o_ie,
  output io_pads_gpio_23_o_pue,
  output io_pads_gpio_23_o_ds,
  input  io_pads_gpio_24_i_ival,
  output io_pads_gpio_24_o_oval,
  output io_pads_gpio_24_o_oe,
  output io_pads_gpio_24_o_ie,
  output io_pads_gpio_24_o_pue,
  output io_pads_gpio_24_o_ds,
  input  io_pads_gpio_25_i_ival,
  output io_pads_gpio_25_o_oval,
  output io_pads_gpio_25_o_oe,
  output io_pads_gpio_25_o_ie,
  output io_pads_gpio_25_o_pue,
  output io_pads_gpio_25_o_ds,
  input  io_pads_gpio_26_i_ival,
  output io_pads_gpio_26_o_oval,
  output io_pads_gpio_26_o_oe,
  output io_pads_gpio_26_o_ie,
  output io_pads_gpio_26_o_pue,
  output io_pads_gpio_26_o_ds,
  input  io_pads_gpio_27_i_ival,
  output io_pads_gpio_27_o_oval,
  output io_pads_gpio_27_o_oe,
  output io_pads_gpio_27_o_ie,
  output io_pads_gpio_27_o_pue,
  output io_pads_gpio_27_o_ds,
  input  io_pads_gpio_28_i_ival,
  output io_pads_gpio_28_o_oval,
  output io_pads_gpio_28_o_oe,
  output io_pads_gpio_28_o_ie,
  output io_pads_gpio_28_o_pue,
  output io_pads_gpio_28_o_ds,
  input  io_pads_gpio_29_i_ival,
  output io_pads_gpio_29_o_oval,
  output io_pads_gpio_29_o_oe,
  output io_pads_gpio_29_o_ie,
  output io_pads_gpio_29_o_pue,
  output io_pads_gpio_29_o_ds,
  input  io_pads_gpio_30_i_ival,
  output io_pads_gpio_30_o_oval,
  output io_pads_gpio_30_o_oe,
  output io_pads_gpio_30_o_ie,
  output io_pads_gpio_30_o_pue,
  output io_pads_gpio_30_o_ds,
  input  io_pads_gpio_31_i_ival,
  output io_pads_gpio_31_o_oval,
  output io_pads_gpio_31_o_oe,
  output io_pads_gpio_31_o_ie,
  output io_pads_gpio_31_o_pue,
  output io_pads_gpio_31_o_ds,

  input   io_pads_qspi_sck_i_ival,
  output  io_pads_qspi_sck_o_oval,
  output  io_pads_qspi_sck_o_oe,
  output  io_pads_qspi_sck_o_ie,
  output  io_pads_qspi_sck_o_pue,
  output  io_pads_qspi_sck_o_ds,
  input   io_pads_qspi_dq_0_i_ival,
  output  io_pads_qspi_dq_0_o_oval,
  output  io_pads_qspi_dq_0_o_oe,
  output  io_pads_qspi_dq_0_o_ie,
  output  io_pads_qspi_dq_0_o_pue,
  output  io_pads_qspi_dq_0_o_ds,
  input   io_pads_qspi_dq_1_i_ival,
  output  io_pads_qspi_dq_1_o_oval,
  output  io_pads_qspi_dq_1_o_oe,
  output  io_pads_qspi_dq_1_o_ie,
  output  io_pads_qspi_dq_1_o_pue,
  output  io_pads_qspi_dq_1_o_ds,
  input   io_pads_qspi_dq_2_i_ival,
  output  io_pads_qspi_dq_2_o_oval,
  output  io_pads_qspi_dq_2_o_oe,
  output  io_pads_qspi_dq_2_o_ie,
  output  io_pads_qspi_dq_2_o_pue,
  output  io_pads_qspi_dq_2_o_ds,
  input   io_pads_qspi_dq_3_i_ival,
  output  io_pads_qspi_dq_3_o_oval,
  output  io_pads_qspi_dq_3_o_oe,
  output  io_pads_qspi_dq_3_o_ie,
  output  io_pads_qspi_dq_3_o_pue,
  output  io_pads_qspi_dq_3_o_ds,
  input   io_pads_qspi_cs_0_i_ival,
  output  io_pads_qspi_cs_0_o_oval,
  output  io_pads_qspi_cs_0_o_oe,
  output  io_pads_qspi_cs_0_o_ie,
  output  io_pads_qspi_cs_0_o_pue,
  output  io_pads_qspi_cs_0_o_ds,

  input  test_mode 

  );

  wire trace_ivalid;
  wire trace_iexception;
  wire trace_interrupt;
  wire [`UX607_XLEN-1:0] trace_cause;
  wire [`UX607_XLEN-1:0] trace_tval;
  wire [`UX607_ADDR_SIZE-1:0] trace_iaddr;
  wire [`UX607_INSTR_SIZE-1:0] trace_instr;
  wire [1:0] trace_priv;
  wire trace_bjp_taken;
  wire trace_dmode;

     
  `ifndef UX607_PPI_CLOCK_RATIO 
  wire  ppi_ahbl_clk_en = 1'b1;
  `endif



     
  `ifndef UX607_MEM_CLOCK_RATIO 
  
     
  wire clk_bus = sys_clk;
     
  wire bus_clk_en = 1'b1;
  `endif
     

     
  `ifdef UX607_MEM_CLOCK_RATIO 
  wire sys_clk_div;
  
  wire clk_bus = sys_clk_div;


     `ifndef FPGA_SOURCE
         integer ratio_num;

         initial begin
             ratio_num = $urandom_range(1,3);
         end

         wire [4-1:0] ratio_cnt_r;
         wire ratio_cnt_inc = 1'b1;
         wire ratio_cnt_clr = (ratio_cnt_r == ratio_num[3:0]);
         wire ratio_cnt_ena = ratio_cnt_inc | ratio_cnt_clr;
         wire [4-1:0] ratio_cnt_nxt = ratio_cnt_clr ? 4'b0 : (ratio_cnt_r + 1'b1);
         ux607_gnrl_dfflr #(4) ratio_cnt_dfflr (ratio_cnt_ena, ratio_cnt_nxt, ratio_cnt_r, sys_clk, sys_rst_n);

         wire bus_clk_en = ratio_cnt_clr;

         ux607_clkgate u_ratio_clkgate(
           .clk_in   (sys_clk        ),
           .clkgate_bypass(test_mode  ),
           .clock_en (bus_clk_en),
           .clk_out  (sys_clk_div)
         );

     `else
         assign bus_clk_en = 1'b1;
         assign sys_clk_div = sys_clk;
     `endif

  `endif
     



   wire  qspi0_irq; 
   wire  qspi1_irq;
   wire  qspi2_irq;

   wire  uart0_irq;                
   wire  uart1_irq;                

   wire  pwm0_irq_0;
   wire  pwm0_irq_1;
   wire  pwm0_irq_2;
   wire  pwm0_irq_3;

   wire  pwm1_irq_0;
   wire  pwm1_irq_1;
   wire  pwm1_irq_2;
   wire  pwm1_irq_3;

   wire  pwm2_irq_0;
   wire  pwm2_irq_1;
   wire  pwm2_irq_2;
   wire  pwm2_irq_3;

   wire  i2c_mst_irq;

   wire  gpio_irq_0;
   wire  gpio_irq_1;
   wire  gpio_irq_2;
   wire  gpio_irq_3;
   wire  gpio_irq_4;
   wire  gpio_irq_5;
   wire  gpio_irq_6;
   wire  gpio_irq_7;
   wire  gpio_irq_8;
   wire  gpio_irq_9;
   wire  gpio_irq_10;
   wire  gpio_irq_11;
   wire  gpio_irq_12;
   wire  gpio_irq_13;
   wire  gpio_irq_14;
   wire  gpio_irq_15;
   wire  gpio_irq_16;
   wire  gpio_irq_17;
   wire  gpio_irq_18;
   wire  gpio_irq_19;
   wire  gpio_irq_20;
   wire  gpio_irq_21;
   wire  gpio_irq_22;
   wire  gpio_irq_23;
   wire  gpio_irq_24;
   wire  gpio_irq_25;
   wire  gpio_irq_26;
   wire  gpio_irq_27;
   wire  gpio_irq_28;
   wire  gpio_irq_29;
   wire  gpio_irq_30;
   wire  gpio_irq_31;


`ifdef UX607_HAS_PLIC
   wire [`UX607_PLIC_IRQ_NUM-1:0] irq_i;
`else
  `ifdef UX607_HAS_CLIC
   wire [`UX607_CLIC_IRQ_NUM-1:0] irq_i;
  `else
   wire [32-1:0] irq_i;
  `endif
`endif

   ux607_subsys_clic_alloc #(
    `ifdef UX607_HAS_PLIC
    .UX607_EXTER_IRQ_NUM (`UX607_PLIC_IRQ_NUM)   
    `elsif UX607_HAS_CLIC
    .UX607_EXTER_IRQ_NUM (`UX607_CLIC_IRQ_NUM)   
    `else 
    .UX607_EXTER_IRQ_NUM (50                )   
    `endif
   )u_ux607_subsys_clic_alloc(
    .clic_irq_i             (irq_i),
    .gpio_irq_0             (gpio_irq_0 ),
    .gpio_irq_1             (gpio_irq_1 ),
    .gpio_irq_2             (gpio_irq_2 ),
    .gpio_irq_3             (gpio_irq_3 ),
    .gpio_irq_4             (gpio_irq_4 ),
    .gpio_irq_5             (gpio_irq_5 ),
    .gpio_irq_6             (gpio_irq_6 ),
    .gpio_irq_7             (gpio_irq_7 ),
    .gpio_irq_8             (gpio_irq_8 ),
    .gpio_irq_9             (gpio_irq_9 ),
    .gpio_irq_10            (gpio_irq_10),
    .gpio_irq_11            (gpio_irq_11),
    .gpio_irq_12            (gpio_irq_12),
    .gpio_irq_13            (gpio_irq_13),
    .gpio_irq_14            (gpio_irq_14),
    .gpio_irq_15            (gpio_irq_15),
    .gpio_irq_16            (gpio_irq_16),
    .gpio_irq_17            (gpio_irq_17),
    .gpio_irq_18            (gpio_irq_18),
    .gpio_irq_19            (gpio_irq_19),
    .gpio_irq_20            (gpio_irq_20),
    .gpio_irq_21            (gpio_irq_21),
    .gpio_irq_22            (gpio_irq_22),
    .gpio_irq_23            (gpio_irq_23),
    .gpio_irq_24            (gpio_irq_24),
    .gpio_irq_25            (gpio_irq_25),
    .gpio_irq_26            (gpio_irq_26),
    .gpio_irq_27            (gpio_irq_27),
    .gpio_irq_28            (gpio_irq_28),
    .gpio_irq_29            (gpio_irq_29),
    .gpio_irq_30            (gpio_irq_30),
    .gpio_irq_31            (gpio_irq_31),

    .qspi0_irq              (qspi0_irq  ), 
    .qspi1_irq              (qspi1_irq  ),
    .qspi2_irq              (qspi2_irq  ),

    .uart0_irq              (uart0_irq  ),                
    .uart1_irq              (uart1_irq  ),                

    .pwm0_irq_0             (pwm0_irq_0 ),
    .pwm0_irq_1             (pwm0_irq_1 ),
    .pwm0_irq_2             (pwm0_irq_2 ),
    .pwm0_irq_3             (pwm0_irq_3 ),
    .pwm1_irq_0             (pwm1_irq_0 ),
    .pwm1_irq_1             (pwm1_irq_1 ),
    .pwm1_irq_2             (pwm1_irq_2 ),
    .pwm1_irq_3             (pwm1_irq_3 ),
    .pwm2_irq_0             (pwm2_irq_0 ),
    .pwm2_irq_1             (pwm2_irq_1 ),
    .pwm2_irq_2             (pwm2_irq_2 ),
    .pwm2_irq_3             (pwm2_irq_3 ),

    .i2c_mst_irq            (i2c_mst_irq),


    .clk                    (clk_bus  ),
    .rst_n                  (sys_rst_n) 
  );

     


  `ifdef UX607_HAS_TCM 
  wire  tcm_ds = 1'b0;
  wire  tcm_sd = 1'b0;
  `endif


      `ifdef UX607_HAS_FIO 
  
  
  wire                         fio_icb_cmd_valid;
  wire [`UX607_FIO_ADDR_WIDTH-1:0]   fio_icb_cmd_addr; 
  wire                         fio_icb_cmd_read; 
  wire                         fio_icb_cmd_mmode; 
  wire                         fio_icb_cmd_dmode; 
  wire [`UX607_PLEN-1:0]        fio_icb_cmd_wdata;
  wire [`UX607_PLEN/8-1:0]      fio_icb_cmd_wmask;
  
  
  wire                         fio_icb_rsp_err  ;
  wire [`UX607_PLEN-1:0]        fio_icb_rsp_rdata;
      `endif

  `ifdef UX607_HAS_PPI 
  
  
  
  
      `ifdef UX607_PPI_TYPE_ICB 
  
  wire                         ppi_icb_cmd_valid;
  wire                         ppi_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   ppi_icb_cmd_addr; 
  wire                         ppi_icb_cmd_read; 
  wire [`UX607_PLEN-1:0]        ppi_icb_cmd_wdata;
  wire [`UX607_PLEN/8-1:0]      ppi_icb_cmd_wmask;
  
  
  wire                         ppi_icb_rsp_valid;
  wire                         ppi_icb_rsp_ready;
  wire                         ppi_icb_rsp_err  ;
  wire [`UX607_PLEN-1:0]        ppi_icb_rsp_rdata;
      `endif

      `ifdef UX607_PPI_TYPE_APB 
  wire [`UX607_PPI_ADDR_WIDTH-1:0]   ppi_apb_paddr;
  wire                         ppi_apb_pwrite;
  wire                         ppi_apb_psel;
  wire                         ppi_apb_penable;
  wire [`UX607_PLEN-1:0]        ppi_apb_pwdata;
  wire [`UX607_PLEN-1:0]        ppi_apb_prdata;
  wire                         ppi_apb_pready ; 
  wire                         ppi_apb_pslverr;
      `endif
      `ifdef UX607_PPI_TYPE_AHB 
  wire [1:0]                   ppi_ahbl_htrans  ;  
  wire                         ppi_ahbl_hwrite  ;  
  wire [`UX607_PA_SIZE-1:0]   ppi_ahbl_haddr   ;  
  wire [2:0]                   ppi_ahbl_hsize   ;  
  wire [`UX607_PLEN-1:0]        ppi_ahbl_hwdata  ;  
  wire [3:0]                   ppi_ahbl_hprot   ;

  wire  [`UX607_PLEN-1:0]        ppi_ahbl_hrdata  ;  
  wire  [1:0]                   ppi_ahbl_hresp   ;  
  wire                          ppi_ahbl_hready  ;  

      `endif



  `endif

  `ifndef UX607_HAS_PPI 
     
  
  wire                         biu2ppi_icb_cmd_valid;
  wire                         biu2ppi_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   biu2ppi_icb_cmd_addr; 
  wire                         biu2ppi_icb_cmd_read; 
  wire [`UX607_PLEN-1:0]        biu2ppi_icb_cmd_wdata;
  wire [`UX607_PLEN/8-1:0]      biu2ppi_icb_cmd_wmask;
  
  
  wire                         biu2ppi_icb_rsp_valid;
  wire                         biu2ppi_icb_rsp_ready;
  wire                         biu2ppi_icb_rsp_err  ;
  wire [`UX607_PLEN-1:0]        biu2ppi_icb_rsp_rdata;
     
  `endif



  `ifdef UX607_HAS_MEM_ITF 
      `ifdef UX607_MEM_TYPE_ICB 
  wire                         mem_icb_cmd_valid;
  wire                         mem_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]   mem_icb_cmd_addr; 
  wire                         mem_icb_cmd_read; 
  wire [`UX607_MLEN-1:0]        mem_icb_cmd_wdata;
  wire [`UX607_MLEN/8-1:0]      mem_icb_cmd_wmask;
  wire [2:0]                   mem_icb_cmd_burst;
  wire [1:0]                   mem_icb_cmd_beat;
  wire                         mem_icb_cmd_lock;
  wire                         mem_icb_cmd_excl;
  wire [1:0]                   mem_icb_cmd_size;
  
  wire                         mem_icb_rsp_valid;
  wire                         mem_icb_rsp_ready;
  wire                         mem_icb_rsp_err  ;
  wire                         mem_icb_rsp_excl_ok;
  wire [`UX607_MLEN-1:0]        mem_icb_rsp_rdata;
      `endif

      `ifdef UX607_MEM_TYPE_AHBL 
     

  wire [1:0]                     mem_ahbl_htrans;   
  wire                           mem_ahbl_hwrite;   
  wire [`UX607_PA_SIZE    -1:0] mem_ahbl_haddr;    
  wire [2:0]                     mem_ahbl_hsize;    
  wire [3:0]                     mem_ahbl_hprot; 
  wire [1:0]                     mem_ahbl_master;
  wire                           mem_ahbl_hlock;   
  wire [2:0]                     mem_ahbl_hburst;   
  wire [`UX607_MLEN    -1:0]      mem_ahbl_hwdata;   
  wire [`UX607_MLEN    -1:0]      mem_ahbl_hrdata;   
  wire [1:0]                     mem_ahbl_hresp;    
  wire                           mem_ahbl_hready;   

     
      `endif
      `ifdef UX607_MEM_TYPE_AXI
  wire                            axi_arready;
  wire                            axi_arvalid;
  wire [`UX607_BUSID_W-1:0]        axi_arid = `UX607_BUSID_W'h0;
  wire [`UX607_PA_SIZE-1:0]        axi_araddr;
  wire [7:0]                      axi_arlen;
  wire [2:0]                      axi_arsize;
  wire [1:0]                      axi_arburst;
  wire [1:0]                      axi_arlock;
  wire [3:0]                      axi_arcache;
  wire [2:0]                      axi_arprot;
  wire [3:0]                      axi_arqos  = 4'h0;
  wire [3:0]                      axi_arregion  = 4'h0;
  wire [`UX607_USR_W-1:0]          axi_aruser  = `UX607_USR_W'h0;
  wire                            axi_awready;
  wire                            axi_awvalid;
  wire [`UX607_BUSID_W-1:0]        axi_awid = `UX607_BUSID_W'h0;
  wire [`UX607_PA_SIZE-1:0]        axi_awaddr;
  wire [7:0]                      axi_awlen;
  wire [2:0]                      axi_awsize;
  wire [1:0]                      axi_awburst;
  wire [1:0]                      axi_awlock;
  wire [3:0]                      axi_awcache;
  wire [2:0]                      axi_awprot;
  wire [3:0]                      axi_awqos=4'h0;
  wire [3:0]                      axi_awregion=4'h0;
  wire [`UX607_USR_W-1:0]          axi_awuser = `UX607_USR_W'h0; 
  wire                            axi_wready;
  wire                            axi_wvalid;
  wire [`UX607_BUSID_W-1:0]        axi_wid = `UX607_BUSID_W'h0;
  wire [`UX607_MLEN-1:0]           axi_wdata;
  wire [`UX607_MLEN_MW-1:0]        axi_wstrb;
  wire                            axi_wlast;
  wire                            axi_rready;
  wire                            axi_rvalid;
  
  wire  [`UX607_MLEN-1:0]          axi_rdata;
  wire  [1:0]                     axi_rresp;
  wire                            axi_rlast;
  wire                            axi_bready;
  wire                            axi_bvalid;
  
  wire  [1:0]                     axi_bresp;


  wire                            o0_axi_arready;
  wire                            o0_axi_arvalid;
  wire [`UX607_BUSID_W-1:0]        o0_axi_arid ;
  wire [`UX607_PA_SIZE-1:0]        o0_axi_araddr;
  wire [7:0]                      o0_axi_arlen;
  wire [2:0]                      o0_axi_arsize;
  wire [1:0]                      o0_axi_arburst;
  wire [1:0]                      o0_axi_arlock;
  wire [3:0]                      o0_axi_arcache;
  wire [2:0]                      o0_axi_arprot;
  wire [3:0]                      o0_axi_arqos;
  wire [3:0]                      o0_axi_arregion;
  wire [`UX607_USR_W-1:0]          o0_axi_aruser ;
  wire                            o0_axi_awready;
  wire                            o0_axi_awvalid;
  wire [`UX607_BUSID_W-1:0]        o0_axi_awid ;
  wire [`UX607_PA_SIZE-1:0]        o0_axi_awaddr;
  wire [7:0]                      o0_axi_awlen;
  wire [2:0]                      o0_axi_awsize;
  wire [1:0]                      o0_axi_awburst;
  wire [1:0]                      o0_axi_awlock;
  wire [3:0]                      o0_axi_awcache;
  wire [2:0]                      o0_axi_awprot;
  wire [3:0]                      o0_axi_awqos;
  wire [3:0]                      o0_axi_awregion;
  wire [`UX607_USR_W-1:0]          o0_axi_awuser ; 
  wire                            o0_axi_wready;
  wire                            o0_axi_wvalid;
  wire [`UX607_BUSID_W-1:0]        o0_axi_wid ;
  wire [`UX607_MLEN-1:0]           o0_axi_wdata;
  wire [`UX607_MLEN_MW-1:0]        o0_axi_wstrb;
  wire                            o0_axi_wlast;
  wire                            o0_axi_rready;
  wire                            o0_axi_rvalid;
  
  wire  [`UX607_MLEN-1:0]          o0_axi_rdata;
  wire  [1:0]                     o0_axi_rresp;
  wire                            o0_axi_rlast;
  wire                            o0_axi_bready;
  wire                            o0_axi_bvalid;
  
  wire  [1:0]                     o0_axi_bresp;


  wire                            o1_axi_arready;
  wire                            o1_axi_arvalid;
  wire [`UX607_BUSID_W-1:0]        o1_axi_arid ;
  wire [`UX607_PA_SIZE-1:0]        o1_axi_araddr;
  wire [7:0]                      o1_axi_arlen;
  wire [2:0]                      o1_axi_arsize;
  wire [1:0]                      o1_axi_arburst;
  wire [1:0]                      o1_axi_arlock;
  wire [3:0]                      o1_axi_arcache;
  wire [2:0]                      o1_axi_arprot;
  wire [3:0]                      o1_axi_arqos;
  wire [3:0]                      o1_axi_arregion;
  wire [`UX607_USR_W-1:0]          o1_axi_aruser ;
  wire                            o1_axi_awready;
  wire                            o1_axi_awvalid;
  wire [`UX607_BUSID_W-1:0]        o1_axi_awid ;
  wire [`UX607_PA_SIZE-1:0]        o1_axi_awaddr;
  wire [7:0]                      o1_axi_awlen;
  wire [2:0]                      o1_axi_awsize;
  wire [1:0]                      o1_axi_awburst;
  wire [1:0]                      o1_axi_awlock;
  wire [3:0]                      o1_axi_awcache;
  wire [2:0]                      o1_axi_awprot;
  wire [3:0]                      o1_axi_awqos;
  wire [3:0]                      o1_axi_awregion;
  wire [`UX607_USR_W-1:0]          o1_axi_awuser ; 
  wire                            o1_axi_wready;
  wire                            o1_axi_wvalid;
  wire [`UX607_BUSID_W-1:0]        o1_axi_wid ;
  wire [`UX607_MLEN-1:0]           o1_axi_wdata;
  wire [`UX607_MLEN_MW-1:0]        o1_axi_wstrb;
  wire                            o1_axi_wlast;
  wire                            o1_axi_rready;
  wire                            o1_axi_rvalid;
  
  wire  [`UX607_MLEN-1:0]          o1_axi_rdata;
  wire  [1:0]                     o1_axi_rresp;
  wire                            o1_axi_rlast;
  wire                            o1_axi_bready;
  wire                            o1_axi_bvalid;
  
  wire  [1:0]                     o1_axi_bresp;


`ifndef DDR_CONTROLLER
  wire                            os_axi_arready;
  wire                            os_axi_arvalid;
  wire [`UX607_BUSID_W-1:0]        os_axi_arid ;
  wire [`UX607_PA_SIZE-1:0]        os_axi_araddr;
  wire [7:0]                      os_axi_arlen;
  wire [2:0]                      os_axi_arsize;
  wire [1:0]                      os_axi_arburst;
  wire [1:0]                      os_axi_arlock;
  wire [3:0]                      os_axi_arcache;
  wire [2:0]                      os_axi_arprot;
  wire [3:0]                      os_axi_arqos ;
  wire [3:0]                      os_axi_arregion ;
  wire [`UX607_USR_W-1:0]          os_axi_aruser ;
  wire                            os_axi_awready;
  wire                            os_axi_awvalid;
  wire [`UX607_BUSID_W-1:0]        os_axi_awid ;
  wire [`UX607_PA_SIZE-1:0]        os_axi_awaddr;
  wire [7:0]                      os_axi_awlen;
  wire [2:0]                      os_axi_awsize;
  wire [1:0]                      os_axi_awburst;
  wire [1:0]                      os_axi_awlock;
  wire [3:0]                      os_axi_awcache;
  wire [2:0]                      os_axi_awprot;
  wire [3:0]                      os_axi_awqos;
  wire [3:0]                      os_axi_awregion;
  wire [`UX607_USR_W-1:0]          os_axi_awuser ; 
  wire                            os_axi_wready;
  wire                            os_axi_wvalid;
  wire [`UX607_BUSID_W-1:0]        os_axi_wid ;
  wire [`UX607_MLEN-1:0]           os_axi_wdata;
  wire [`UX607_MLEN_MW-1:0]        os_axi_wstrb;
  wire                            os_axi_wlast;
  wire                            os_axi_rready;
  wire                            os_axi_rvalid;
  
  wire  [`UX607_MLEN-1:0]          os_axi_rdata;
  wire  [1:0]                     os_axi_rresp;
  wire                            os_axi_rlast;
  wire                            os_axi_bready;
  wire                            os_axi_bvalid;
  
  wire  [1:0]                     os_axi_bresp;
`endif

 `ifdef DDR_CONTROLLER

  wire                            ddr_axi_arready ;
  wire                            ddr_axi_arvalid;
  wire [`UX607_BUSID_W-1:0]        ddr_axi_arid ;
  wire [`UX607_PA_SIZE-1:0]        ddr_axi_araddr;
  wire [7:0]                      ddr_axi_arlen;
  wire [2:0]                      ddr_axi_arsize;
  wire [1:0]                      ddr_axi_arburst;
  wire [1:0]                      ddr_axi_arlock;
  wire [3:0]                      ddr_axi_arcache;
  wire [2:0]                      ddr_axi_arprot;
  wire [3:0]                      ddr_axi_arqos ;
  wire [3:0]                      ddr_axi_arregion ;
  wire [`UX607_USR_W-1:0]          ddr_axi_aruser ;
  wire                            ddr_axi_awready ;
  wire                            ddr_axi_awvalid;
  wire [`UX607_BUSID_W-1:0]        ddr_axi_awid ;
  wire [`UX607_PA_SIZE-1:0]        ddr_axi_awaddr;
  wire [7:0]                      ddr_axi_awlen;
  wire [2:0]                      ddr_axi_awsize;
  wire [1:0]                      ddr_axi_awburst;
  wire [1:0]                      ddr_axi_awlock;
  wire [3:0]                      ddr_axi_awcache;
  wire [2:0]                      ddr_axi_awprot;
  wire [3:0]                      ddr_axi_awqos;
  wire [3:0]                      ddr_axi_awregion;
  wire [`UX607_USR_W-1:0]          ddr_axi_awuser ; 
  wire                            ddr_axi_wready ;
  wire                            ddr_axi_wvalid;
  wire [`UX607_BUSID_W-1:0]        ddr_axi_wid ;
  wire [`UX607_MLEN-1:0]           ddr_axi_wdata;
  wire [`UX607_MLEN_MW-1:0]        ddr_axi_wstrb;
  wire                            ddr_axi_wlast;
  wire                            ddr_axi_rready;
  wire                            ddr_axi_rvalid ;
  wire  [`UX607_MLEN-1:0]          ddr_axi_rdata ;
  wire  [1:0]                     ddr_axi_rresp ;
  wire                            ddr_axi_rlast ;
  wire                            ddr_axi_bready;
  wire                            ddr_axi_bvalid ;
  wire  [1:0]                     ddr_axi_bresp ;
  wire                            ddr_clk ;
  reg                             ddr_rst_n ;
  wire                            ddr_ready ;

  wire                            ui_clk;
  wire                            ui_clk_sync_rst;
  wire                            mmcm_locked;
  wire                            init_calib_complete;

  
  
 
  assign   ddr_clk = ui_clk;
  always @(posedge ui_clk) begin
      ddr_rst_n <= ~ui_clk_sync_rst;
  end
  
  assign   ddr_ready = mmcm_locked & init_calib_complete;

  

  wire   tmp_ddr_axi_arready  ;
  wire   tmp_ddr_axi_arvalid  ;
  wire   tmp_ddr_axi_awready  ;
  wire   tmp_ddr_axi_awvalid  ;

  wire   tmp_ddr_axi_rready   ;
  wire   tmp_ddr_axi_rvalid   ;

  wire   tmp_ddr_axi_wready   ;
  wire   tmp_ddr_axi_wvalid   ;
  wire   tmp_ddr_axi_bready   ;
  wire   tmp_ddr_axi_bvalid   ;


  assign  tmp_ddr_axi_arready = ddr_axi_arready & ddr_ready;
  assign  ddr_axi_arvalid = tmp_ddr_axi_arvalid & ddr_ready;

  assign  tmp_ddr_axi_awready = ddr_axi_awready & ddr_ready;
  assign  ddr_axi_awvalid = tmp_ddr_axi_awvalid & ddr_ready;

  assign  tmp_ddr_axi_wready  = ddr_axi_wready & ddr_ready;
  assign  ddr_axi_wvalid  = tmp_ddr_axi_wvalid & ddr_ready;

  assign  ddr_axi_rready  = tmp_ddr_axi_rready & ddr_ready;
  assign  tmp_ddr_axi_rvalid  = ddr_axi_rvalid & ddr_ready;

  assign  ddr_axi_bready  = tmp_ddr_axi_bready & ddr_ready;
  assign  tmp_ddr_axi_bvalid  = ddr_axi_bvalid & ddr_ready;

`endif



 `ifndef DDR_CONTROLLER
 ux607_subsys_axi2sram # (
    .AW                   ( `UX607_PA_SIZE ),
    .DW                   ( `UX607_MLEN    ),
    .ID_W                 ( `UX607_BUSID_W ),
    .USR_W                ( `UX607_USR_W   ),
    .MW                   ( `UX607_MLEN_MW )

) 
 u_ux607_subsys_axi2sram
   (
  
     .axi_arready      (os_axi_arready),
     .axi_arvalid      (os_axi_arvalid),
     .axi_arid         (os_axi_arid),
     .axi_araddr       (os_axi_araddr),
     .axi_arlen        (os_axi_arlen),
     .axi_arsize       (os_axi_arsize),
     .axi_arburst      (os_axi_arburst),
     .axi_arlock       (os_axi_arlock[0]),
     .axi_arcache      (os_axi_arcache),
     .axi_arprot       (os_axi_arprot),
     .axi_arqos        (os_axi_arqos),
     .axi_arregion     (os_axi_arregion),
     .axi_aruser       (os_axi_aruser),
     
     .axi_awready      (os_axi_awready),
     .axi_awvalid      (os_axi_awvalid),
     .axi_awid         (os_axi_awid),
     .axi_awaddr       (os_axi_awaddr),
     .axi_awlen        (os_axi_awlen),
     .axi_awsize       (os_axi_awsize),
     .axi_awburst      (os_axi_awburst),
     .axi_awlock       (os_axi_awlock[0]),
     .axi_awcache      (os_axi_awcache),
     .axi_awprot       (os_axi_awprot),
     .axi_awqos        (os_axi_awqos),
     .axi_awregion     (os_axi_awregion),
     .axi_awuser       (os_axi_awuser),  

     .axi_wready       (os_axi_wready),
     .axi_wvalid       (os_axi_wvalid),
     .axi_wid          (os_axi_wid),
     .axi_wdata        (os_axi_wdata),
     .axi_wstrb        (os_axi_wstrb),
     .axi_wlast        (os_axi_wlast),
     
     .axi_rready       (os_axi_rready),
     .axi_rvalid       (os_axi_rvalid),
     .axi_rid          (`UX607_BUSID_W'h0),
     .axi_rdata        (os_axi_rdata),
     .axi_rresp        (os_axi_rresp),
     .axi_rlast        (os_axi_rlast),
     
     .axi_bready       (os_axi_bready),
     .axi_bvalid       (os_axi_bvalid),
     .axi_bid          (`UX607_BUSID_W'h0),
     .axi_bresp        (os_axi_bresp),

     .clk              (sys_clk),
     .rst_n            (sys_rst_n)
  );

 `endif

  ux607_subsys_axi2axi_async # (
    .SYNC_DP              (1) ,
    .AW                   ( `UX607_PA_SIZE ),
    .DW                   ( `UX607_MLEN    ),
    .ID_W                 ( `UX607_BUSID_W ),
    .USR_W                ( `UX607_USR_W   ),
    .MW                   ( `UX607_MLEN_MW )

  )
  u_ux607_subsys_axi2axi_async
  (
  
     .i_axi_arready   (o0_axi_arready),
     .i_axi_arvalid   (o0_axi_arvalid),
     .i_axi_arid      (o0_axi_arid),
     .i_axi_araddr    (o0_axi_araddr),
     .i_axi_arlen     (o0_axi_arlen),
     .i_axi_arsize    (o0_axi_arsize),
     .i_axi_arburst   (o0_axi_arburst),
     .i_axi_arlock    (o0_axi_arlock[0]),
     .i_axi_arcache   (o0_axi_arcache),
     .i_axi_arprot    (o0_axi_arprot),
     .i_axi_arqos     (o0_axi_arqos),
     .i_axi_arregion  (o0_axi_arregion),
     .i_axi_aruser    (o0_axi_aruser),
  
     .i_axi_awready   (o0_axi_awready),
     .i_axi_awvalid   (o0_axi_awvalid),
     .i_axi_awid      (o0_axi_awid),
     .i_axi_awaddr    (o0_axi_awaddr),
     .i_axi_awlen     (o0_axi_awlen),
     .i_axi_awsize    (o0_axi_awsize),
     .i_axi_awburst   (o0_axi_awburst),
     .i_axi_awlock    (o0_axi_awlock[0]),
     .i_axi_awcache   (o0_axi_awcache),
     .i_axi_awprot    (o0_axi_awprot),
     .i_axi_awqos     (o0_axi_awqos),
     .i_axi_awregion  (o0_axi_awregion),
     .i_axi_awuser    (o0_axi_awuser), 

     .i_axi_wready    (o0_axi_wready),
     .i_axi_wvalid    (o0_axi_wvalid),
     .i_axi_wid       (o0_axi_wid),
     .i_axi_wdata     (o0_axi_wdata),
     .i_axi_wstrb     (o0_axi_wstrb),
     .i_axi_wlast     (o0_axi_wlast),
  
     .i_axi_rready    (o0_axi_rready),
     .i_axi_rvalid    (o0_axi_rvalid),
     .i_axi_rid       (`UX607_BUSID_W'h0),
     .i_axi_rdata     (o0_axi_rdata),
     .i_axi_rresp     (o0_axi_rresp),
     .i_axi_rlast     (o0_axi_rlast),
  
     .i_axi_bready    (o0_axi_bready),
     .i_axi_bvalid    (o0_axi_bvalid),
     .i_axi_bid       (`UX607_BUSID_W'h0),
     .i_axi_bresp     (o0_axi_bresp),

  `ifdef DDR_CONTROLLER

     .o_axi_arready   (tmp_ddr_axi_arready),
     .o_axi_arvalid   (tmp_ddr_axi_arvalid),
     .o_axi_arid      (ddr_axi_arid),
     .o_axi_araddr    (ddr_axi_araddr),
     .o_axi_arlen     (ddr_axi_arlen),
     .o_axi_arsize    (ddr_axi_arsize),
     .o_axi_arburst   (ddr_axi_arburst),
     .o_axi_arlock    (ddr_axi_arlock),
     .o_axi_arcache   (ddr_axi_arcache),
     .o_axi_arprot    (ddr_axi_arprot),
     .o_axi_arqos     (ddr_axi_arqos),
     .o_axi_arregion  (ddr_axi_arregion),
     .o_axi_aruser    (ddr_axi_aruser),
  
     .o_axi_awready   (tmp_ddr_axi_awready),
     .o_axi_awvalid   (tmp_ddr_axi_awvalid),
     .o_axi_awid      (ddr_axi_awid),
     .o_axi_awaddr    (ddr_axi_awaddr),
     .o_axi_awlen     (ddr_axi_awlen),
     .o_axi_awsize    (ddr_axi_awsize),
     .o_axi_awburst   (ddr_axi_awburst),
     .o_axi_awlock    (ddr_axi_awlock),
     .o_axi_awcache   (ddr_axi_awcache),
     .o_axi_awprot    (ddr_axi_awprot),
     .o_axi_awqos     (ddr_axi_awqos),
     .o_axi_awregion  (ddr_axi_awregion),
     .o_axi_awuser    (ddr_axi_awuser), 

     .o_axi_wready    (tmp_ddr_axi_wready),
     .o_axi_wvalid    (tmp_ddr_axi_wvalid),
     .o_axi_wid       (ddr_axi_wid),
     .o_axi_wdata     (ddr_axi_wdata),
     .o_axi_wstrb     (ddr_axi_wstrb),
     .o_axi_wlast     (ddr_axi_wlast),
  
     .o_axi_rready    (tmp_ddr_axi_rready),
     .o_axi_rvalid    (tmp_ddr_axi_rvalid),
     .o_axi_rid       (`UX607_BUSID_W'h0),
     .o_axi_rdata     (ddr_axi_rdata),
     .o_axi_rresp     (ddr_axi_rresp),
     .o_axi_rlast     (ddr_axi_rlast),
  
     .o_axi_bready    (tmp_ddr_axi_bready),
     .o_axi_bvalid    (tmp_ddr_axi_bvalid),
     .o_axi_bid       (`UX607_BUSID_W'h0),
     .o_axi_bresp     (ddr_axi_bresp),

     .i_clk           (sys_clk),
     .o_clk           (ddr_clk),
     .i_rst_n         (sys_rst_n),
     .o_rst_n         (ddr_rst_n)
   `else

     .o_axi_arready   (os_axi_arready),
     .o_axi_arvalid   (os_axi_arvalid),
     .o_axi_arid      (os_axi_arid),
     .o_axi_araddr    (os_axi_araddr),
     .o_axi_arlen     (os_axi_arlen),
     .o_axi_arsize    (os_axi_arsize),
     .o_axi_arburst   (os_axi_arburst),
     .o_axi_arlock    (os_axi_arlock[0]),
     .o_axi_arcache   (os_axi_arcache),
     .o_axi_arprot    (os_axi_arprot),
     .o_axi_arqos     (os_axi_arqos),
     .o_axi_arregion  (os_axi_arregion),
     .o_axi_aruser    (os_axi_aruser),
  
     .o_axi_awready   (os_axi_awready),
     .o_axi_awvalid   (os_axi_awvalid),
     .o_axi_awid      (os_axi_awid),
     .o_axi_awaddr    (os_axi_awaddr),
     .o_axi_awlen     (os_axi_awlen),
     .o_axi_awsize    (os_axi_awsize),
     .o_axi_awburst   (os_axi_awburst),
     .o_axi_awlock    (os_axi_awlock[0]),
     .o_axi_awcache   (os_axi_awcache),
     .o_axi_awprot    (os_axi_awprot),
     .o_axi_awqos     (os_axi_awqos),
     .o_axi_awregion  (os_axi_awregion),
     .o_axi_awuser    (os_axi_awuser), 

     .o_axi_wready    (os_axi_wready),
     .o_axi_wvalid    (os_axi_wvalid),
     .o_axi_wid       (os_axi_wid),
     .o_axi_wdata     (os_axi_wdata),
     .o_axi_wstrb     (os_axi_wstrb),
     .o_axi_wlast     (os_axi_wlast),
  
     .o_axi_rready    (os_axi_rready),
     .o_axi_rvalid    (os_axi_rvalid),
     .o_axi_rid       (),
     .o_axi_rdata     (os_axi_rdata),
     .o_axi_rresp     (os_axi_rresp),
     .o_axi_rlast     (os_axi_rlast),
  
     .o_axi_bready    (os_axi_bready),
     .o_axi_bvalid    (os_axi_bvalid),
     .o_axi_bid       (),
     .o_axi_bresp     (os_axi_bresp),

     .i_clk           (sys_clk),
     .o_clk           (sys_clk),
     .i_rst_n         (sys_rst_n),
     .o_rst_n         (sys_rst_n)


   `endif
  );


 ux607_subsys_axi1to5 # (
  .AW                   ( `UX607_PA_SIZE ),
  .DW                   ( `UX607_MLEN    ),
  .ID_W                 ( `UX607_BUSID_W ),
  .USR_W                ( `UX607_USR_W   ),
  .MW                   ( `UX607_MLEN_MW ),
  .SPLT_FIFO_OUTS_NUM   ( 16            ),
  .SPLT_FIFO_OUTS_CNT_W ( 5             ),
  .SPLT_FIFO_CUT_READY  ( 1             ),
  `ifdef DDR_CONTROLLER
      `ifdef DDR_SIMULATION
  .O0_BASE_ADDR         ( `UX607_PA_SIZE'h9000_0000 ), 
  .O0_BASE_REGION_LSB   ( 28            ),
      `else
  .O0_BASE_ADDR         ( `UX607_PA_SIZE'ha000_0000 ), 
  .O0_BASE_REGION_LSB   ( 28            ),
      `endif
  `else
  .O0_BASE_ADDR         ( `UX607_PA_SIZE'ha000_0000 ), 
  .O0_BASE_REGION_LSB   ( 28            ),
  `endif
  .O1_BASE_ADDR         ( `UX607_PA_SIZE'hb000_0000 ), 
  .O1_BASE_REGION_LSB   ( 28            ),
  .O2_BASE_ADDR         ( `UX607_PA_SIZE'hc000_0000 ), 
  .O2_BASE_REGION_LSB   ( 28            ),
  .O3_BASE_ADDR         ( `UX607_PA_SIZE'hd000_0000 ), 
  .O3_BASE_REGION_LSB   ( 28            )


)
 u_ux607_subsys_axi1to5
 (

     .o0_axi_enable   (1'b1),
     .o1_axi_enable   (1'b0),
     .o2_axi_enable   (1'b0),
     .o3_axi_enable   (1'b0),
     .i_axi_arready   (axi_arready),
     .i_axi_arvalid   (axi_arvalid),
     .i_axi_arid      (axi_arid),
     .i_axi_araddr    (axi_araddr),
     .i_axi_arlen     (axi_arlen),
     .i_axi_arsize    (axi_arsize),
     .i_axi_arburst   (axi_arburst),
     .i_axi_arlock    (axi_arlock),
     .i_axi_arcache   (axi_arcache),
     .i_axi_arprot    (axi_arprot),
     .i_axi_arqos     (axi_arqos),
     .i_axi_arregion  (axi_arregion),
     .i_axi_aruser    (axi_aruser),
  
     .i_axi_awready   (axi_awready),
     .i_axi_awvalid   (axi_awvalid),
     .i_axi_awid      (axi_awid),
     .i_axi_awaddr    (axi_awaddr),
     .i_axi_awlen     (axi_awlen),
     .i_axi_awsize    (axi_awsize),
     .i_axi_awburst   (axi_awburst),
     .i_axi_awlock    (axi_awlock),
     .i_axi_awcache   (axi_awcache),
     .i_axi_awprot    (axi_awprot),
     .i_axi_awqos     (axi_awqos),
     .i_axi_awregion  (axi_awregion),
     .i_axi_awuser    (axi_awuser), 

     .i_axi_wready    (axi_wready),
     .i_axi_wvalid    (axi_wvalid),
     .i_axi_wid       (axi_wid),
     .i_axi_wdata     (axi_wdata),
     .i_axi_wstrb     (axi_wstrb),
     .i_axi_wlast     (axi_wlast),
  
     .i_axi_rready    (axi_rready),
     .i_axi_rvalid    (axi_rvalid),
     .i_axi_rid       (),
     .i_axi_rdata     (axi_rdata),
     .i_axi_rresp     (axi_rresp),
     .i_axi_rlast     (axi_rlast),
  
     .i_axi_bready    (axi_bready),
     .i_axi_bvalid    (axi_bvalid),
     .i_axi_bid       (),
     .i_axi_bresp     (axi_bresp),

     .o0_axi_arready  (o0_axi_arready),
     .o0_axi_arvalid  (o0_axi_arvalid),
     .o0_axi_arid     (o0_axi_arid),
     .o0_axi_araddr   (o0_axi_araddr),
     .o0_axi_arlen    (o0_axi_arlen),
     .o0_axi_arsize   (o0_axi_arsize),
     .o0_axi_arburst  (o0_axi_arburst),
     .o0_axi_arlock   (o0_axi_arlock),
     .o0_axi_arcache  (o0_axi_arcache),
     .o0_axi_arprot   (o0_axi_arprot),
     .o0_axi_arqos    (o0_axi_arqos),
     .o0_axi_arregion (o0_axi_arregion),
     .o0_axi_aruser   (o0_axi_aruser),
  
     .o0_axi_awready  (o0_axi_awready),
     .o0_axi_awvalid  (o0_axi_awvalid),
     .o0_axi_awid     (o0_axi_awid),
     .o0_axi_awaddr   (o0_axi_awaddr),
     .o0_axi_awlen    (o0_axi_awlen),
     .o0_axi_awsize   (o0_axi_awsize),
     .o0_axi_awburst  (o0_axi_awburst),
     .o0_axi_awlock   (o0_axi_awlock),
     .o0_axi_awcache  (o0_axi_awcache),
     .o0_axi_awprot   (o0_axi_awprot),
     .o0_axi_awqos    (o0_axi_awqos),
     .o0_axi_awregion (o0_axi_awregion),
     .o0_axi_awuser   (o0_axi_awuser), 

     .o0_axi_wready   (o0_axi_wready),
     .o0_axi_wvalid   (o0_axi_wvalid),
     .o0_axi_wid      (o0_axi_wid),
     .o0_axi_wdata    (o0_axi_wdata),
     .o0_axi_wstrb    (o0_axi_wstrb),
     .o0_axi_wlast    (o0_axi_wlast),
  
     .o0_axi_rready   (o0_axi_rready),
     .o0_axi_rvalid   (o0_axi_rvalid),
     .o0_axi_rid      (`UX607_BUSID_W'b0),
     .o0_axi_rdata    (o0_axi_rdata),
     .o0_axi_rresp    (o0_axi_rresp),
     .o0_axi_rlast    (o0_axi_rlast),
  
     .o0_axi_bready   (o0_axi_bready),
     .o0_axi_bvalid   (o0_axi_bvalid),
     .o0_axi_bid      (`UX607_BUSID_W'b0),
     .o0_axi_bresp    (o0_axi_bresp),

     .o4_axi_arready  (o1_axi_arready),
     .o4_axi_arvalid  (o1_axi_arvalid),
     .o4_axi_arid     (o1_axi_arid),
     .o4_axi_araddr   (o1_axi_araddr),
     .o4_axi_arlen    (o1_axi_arlen),
     .o4_axi_arsize   (o1_axi_arsize),
     .o4_axi_arburst  (o1_axi_arburst),
     .o4_axi_arlock   (o1_axi_arlock),
     .o4_axi_arcache  (o1_axi_arcache),
     .o4_axi_arprot   (o1_axi_arprot),
     .o4_axi_arqos    (o1_axi_arqos),
     .o4_axi_arregion (o1_axi_arregion),
     .o4_axi_aruser   (o1_axi_aruser),
  
     .o4_axi_awready  (o1_axi_awready),
     .o4_axi_awvalid  (o1_axi_awvalid),
     .o4_axi_awid     (o1_axi_awid),
     .o4_axi_awaddr   (o1_axi_awaddr),
     .o4_axi_awlen    (o1_axi_awlen),
     .o4_axi_awsize   (o1_axi_awsize),
     .o4_axi_awburst  (o1_axi_awburst),
     .o4_axi_awlock   (o1_axi_awlock), 
     .o4_axi_awcache  (o1_axi_awcache),
     .o4_axi_awprot   (o1_axi_awprot),
     .o4_axi_awqos    (o1_axi_awqos),
     .o4_axi_awregion (o1_axi_awregion),
     .o4_axi_awuser   (o1_axi_awuser), 

     .o4_axi_wready   (o1_axi_wready),
     .o4_axi_wvalid   (o1_axi_wvalid),
     .o4_axi_wid      (o1_axi_wid),
     .o4_axi_wdata    (o1_axi_wdata),
     .o4_axi_wstrb    (o1_axi_wstrb),
     .o4_axi_wlast    (o1_axi_wlast),
  
     .o4_axi_rready   (o1_axi_rready),
     .o4_axi_rvalid   (o1_axi_rvalid),
     .o4_axi_rid      (`UX607_BUSID_W'b0),
     .o4_axi_rdata    (o1_axi_rdata),
     .o4_axi_rresp    (o1_axi_rresp),
     .o4_axi_rlast    (o1_axi_rlast),
  
     .o4_axi_bready   (o1_axi_bready),
     .o4_axi_bvalid   (o1_axi_bvalid),
     .o4_axi_bid      (`UX607_BUSID_W'b0),
     .o4_axi_bresp    (o1_axi_bresp),


     .o1_axi_arready  (1'b0),
     .o1_axi_arvalid  (),
     .o1_axi_arid     (),
     .o1_axi_araddr   (),
     .o1_axi_arlen    (),
     .o1_axi_arsize   (),
     .o1_axi_arburst  (),
     .o1_axi_arlock   (),
     .o1_axi_arcache  (),
     .o1_axi_arprot   (),
     .o1_axi_arqos    (),
     .o1_axi_arregion (),
     .o1_axi_aruser   (),
  
     .o1_axi_awready  (1'b0),
     .o1_axi_awvalid  (),
     .o1_axi_awid     (),
     .o1_axi_awaddr   (),
     .o1_axi_awlen    (),
     .o1_axi_awsize   (),
     .o1_axi_awburst  (),
     .o1_axi_awlock   (), 
     .o1_axi_awcache  (),
     .o1_axi_awprot   (),
     .o1_axi_awqos    (),
     .o1_axi_awregion (),
     .o1_axi_awuser   (), 

     .o1_axi_wready   (1'b0),
     .o1_axi_wvalid   (),
     .o1_axi_wid      (),
     .o1_axi_wdata    (),
     .o1_axi_wstrb    (),
     .o1_axi_wlast    (),
  
     .o1_axi_rready   (),
     .o1_axi_rvalid   (1'b0),
     .o1_axi_rid      (`UX607_BUSID_W'b0),
     .o1_axi_rdata    (`UX607_MLEN'b0),
     .o1_axi_rresp    (2'b0),
     .o1_axi_rlast    (1'b0),
  
     .o1_axi_bready   (),
     .o1_axi_bvalid   (1'b0),
     .o1_axi_bid      (`UX607_BUSID_W'b0),
     .o1_axi_bresp    (2'b0),

     .o2_axi_arready  (1'b0),
     .o2_axi_arvalid  (),
     .o2_axi_arid     (),
     .o2_axi_araddr   (),
     .o2_axi_arlen    (),
     .o2_axi_arsize   (),
     .o2_axi_arburst  (),
     .o2_axi_arlock   (),
     .o2_axi_arcache  (),
     .o2_axi_arprot   (),
     .o2_axi_arqos    (),
     .o2_axi_arregion (),
     .o2_axi_aruser   (),
  
     .o2_axi_awready  (1'b0),
     .o2_axi_awvalid  (),
     .o2_axi_awid     (),
     .o2_axi_awaddr   (),
     .o2_axi_awlen    (),
     .o2_axi_awsize   (),
     .o2_axi_awburst  (),
     .o2_axi_awlock   (), 
     .o2_axi_awcache  (),
     .o2_axi_awprot   (),
     .o2_axi_awqos    (),
     .o2_axi_awregion (),
     .o2_axi_awuser   (), 

     .o2_axi_wready   (1'b0),
     .o2_axi_wvalid   (),
     .o2_axi_wid      (),
     .o2_axi_wdata    (),
     .o2_axi_wstrb    (),
     .o2_axi_wlast    (),
  
     .o2_axi_rready   (),
     .o2_axi_rvalid   (1'b0),
     .o2_axi_rid      (`UX607_BUSID_W'b0),
     .o2_axi_rdata    (`UX607_MLEN'b0),
     .o2_axi_rresp    (2'b0),
     .o2_axi_rlast    (1'b0),
  
     .o2_axi_bready   (),
     .o2_axi_bvalid   (1'b0),
     .o2_axi_bid      (`UX607_BUSID_W'b0),
     .o2_axi_bresp    (2'b0),

     .o3_axi_arready  (1'b0),
     .o3_axi_arvalid  (),
     .o3_axi_arid     (),
     .o3_axi_araddr   (),
     .o3_axi_arlen    (),
     .o3_axi_arsize   (),
     .o3_axi_arburst  (),
     .o3_axi_arlock   (),
     .o3_axi_arcache  (),
     .o3_axi_arprot   (),
     .o3_axi_arqos    (),
     .o3_axi_arregion (),
     .o3_axi_aruser   (),
  
     .o3_axi_awready  (1'b0),
     .o3_axi_awvalid  (),
     .o3_axi_awid     (),
     .o3_axi_awaddr   (),
     .o3_axi_awlen    (),
     .o3_axi_awsize   (),
     .o3_axi_awburst  (),
     .o3_axi_awlock   (), 
     .o3_axi_awcache  (),
     .o3_axi_awprot   (),
     .o3_axi_awqos    (),
     .o3_axi_awregion (),
     .o3_axi_awuser   (), 

     .o3_axi_wready   (1'b0),
     .o3_axi_wvalid   (),
     .o3_axi_wid      (),
     .o3_axi_wdata    (),
     .o3_axi_wstrb    (),
     .o3_axi_wlast    (),
  
     .o3_axi_rready   (),
     .o3_axi_rvalid   (1'b0),
     .o3_axi_rid      (`UX607_BUSID_W'b0),
     .o3_axi_rdata    (`UX607_MLEN'b0),
     .o3_axi_rresp    (2'b0),
     .o3_axi_rlast    (1'b0),
  
     .o3_axi_bready   (),
     .o3_axi_bvalid   (1'b0),
     .o3_axi_bid      (`UX607_BUSID_W'b0),
     .o3_axi_bresp    (2'b0),

     .clk             (sys_clk),
     .rst_n           (sys_rst_n)
  );
      `endif
  `endif







  
  
  
     `ifdef UX607_HAS_ILM 

   `ifdef UX607_LM_ITF_TYPE_AHBL 
      
  wire             ilm_hmastlock;
  wire [1:0]       ilm_htrans;   
  wire [`UX607_ILM_ADDR_WIDTH-1:0]ilm_haddr;    
  wire [2:0]       ilm_hsize;    
  wire [`UX607_ILM_DATA_WIDTH-1:0]ilm_hrdata;   
  wire [1:0]       ilm_hresp;    
  wire             ilm_hready;   
  wire             ilm_hwrite;   
  wire [`UX607_DLM_DATA_WIDTH    -1:0]ilm_hwdata;   
  `endif
  
      `endif


  
  
  
     `ifdef UX607_HAS_DLM 

  `ifdef UX607_LM_ITF_TYPE_AHBL 
      
  wire             dlm_hmastlock;
  wire [1:0]       dlm_htrans;   
  wire [`UX607_DLM_ADDR_WIDTH    -1:0]dlm_haddr;    
  wire [2:0]       dlm_hsize;    
  wire             dlm_hwrite;   
  wire [`UX607_DLM_DATA_WIDTH    -1:0]dlm_hwdata;   
  wire [`UX607_DLM_DATA_WIDTH    -1:0]dlm_hrdata;   
  wire [1:0]       dlm_hresp;    
  wire             dlm_hready;   
  `endif
  
      `endif

     


  `ifdef UX607_HAS_NICE 

  wire                        nice_clk         ;
  wire                        nice_active	     ;
  wire                        nice_mem_holdup  ;

  wire                        nice_req_valid    ;
  wire                        nice_req_ready    ;
  wire [`UX607_INSTR_SIZE-1:0]       nice_req_instr    ;
  wire [`UX607_XLEN-1:0]       nice_req_rs1      ;
  wire [`UX607_XLEN-1:0]       nice_req_rs2      ;
  `ifdef UX607_NICE_1CYC_64OP
  wire [`UX607_XLEN-1:0]       nice_req_rs1_1    ;
  wire [`UX607_XLEN-1:0]       nice_req_rs2_1    ;
  `endif
  wire                        nice_req_mmode    ;
  `ifdef UX607_HAS_SMODE
  wire                        nice_req_smode    ;
  `endif
  wire                        nice_1cyc_type    ;
  wire [`UX607_XLEN-1:0]       nice_1cyc_rdat    ;	
  `ifdef UX607_NICE_1CYC_64OP
  wire [`UX607_XLEN-1:0]       nice_1cyc_rdat_1  ;	
  `endif
  wire                        nice_1cyc_err     ;
  wire                        nice_rsp_valid    ;
  wire                        nice_rsp_ready    ;
  wire [`UX607_XLEN-1:0]       nice_rsp_rdat     ;
  wire                        nice_rsp_err      ;
  wire                        nice_icb_cmd_valid;
  wire                        nice_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0]  nice_icb_cmd_addr ;
  wire                        nice_icb_cmd_read ;
  wire [`UX607_MLEN-1:0]       nice_icb_cmd_wdata;
  wire [1:0]                  nice_icb_cmd_size ;
  wire                        nice_icb_cmd_mmode;
  `ifdef UX607_HAS_SMODE
  wire                        nice_icb_cmd_smode;
  `endif
  wire                        nice_icb_rsp_valid;
  wire                        nice_icb_rsp_ready;
  wire [`UX607_MLEN-1:0]       nice_icb_rsp_rdata;
  wire                        nice_icb_rsp_err  ;

  `endif




 
 
 
 
 
 
  wire core_clk;
  wire core_clk_aon;

  reg core_clk_aon_en_r;

     
  `ifndef FPGA_SOURCE
         reg random_clken;

         initial begin
             random_clken = $urandom_range(0,1);
         end

  `else
         wire random_clken = 1'b0;
  `endif
     

     
     
     
  wire core_wfi_mode_d1;
  wire core_wfi_mode_d2;
  wire core_wfi_mode_d3;
  wire core_wfi_mode_d4;
  wire core_wfi_mode_d5;
  wire core_wfi_mode_d6;
  wire core_wfi_mode_d7;
  wire core_wfi_mode_d8;
  ux607_gnrl_dffr #(1)  core_wfi_mode_d1_dffr(core_wfi_mode, core_wfi_mode_d1, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d2_dffr(core_wfi_mode_d1, core_wfi_mode_d2, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d3_dffr(core_wfi_mode_d2, core_wfi_mode_d3, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d4_dffr(core_wfi_mode_d3, core_wfi_mode_d4, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d5_dffr(core_wfi_mode_d4, core_wfi_mode_d5, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d6_dffr(core_wfi_mode_d5, core_wfi_mode_d6, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d7_dffr(core_wfi_mode_d6, core_wfi_mode_d7, sys_clk, sys_rst_n);
  ux607_gnrl_dffr #(1)  core_wfi_mode_d8_dffr(core_wfi_mode_d7, core_wfi_mode_d8, sys_clk, sys_rst_n);

  wire core_wfi_mode_sim_flag_set = core_wfi_mode & (~core_wfi_mode_d1);
  wire core_wfi_mode_sim_flag_clr = (~core_wfi_mode_d7) & core_wfi_mode_d8;
  wire core_wfi_mode_sim_flag_ena =  core_wfi_mode_sim_flag_set | core_wfi_mode_sim_flag_clr; 
  wire core_wfi_mode_sim_flag_nxt =  ~core_wfi_mode_sim_flag_clr;
  wire core_wfi_mode_sim_flag_r;
  ux607_gnrl_dfflr #(1) core_wfi_mode_sim_flag_dfflr(core_wfi_mode_sim_flag_ena, core_wfi_mode_sim_flag_nxt, core_wfi_mode_sim_flag_r, sys_clk, sys_rst_n); 

  wire core_clk_en = 
     
      random_clken | 
     
      (~(core_wfi_mode_sim_flag_r | core_wfi_mode));

     


  wire evt_i_real ;
  wire nmi_i_real;
`ifdef UX607_HAS_CLIC
  wire irq_i_real;
`endif
  wire aon_wake_up_detct =  (
                                  evt_i_real
                                | nmi_i_real
	   `ifndef FPGA_SOURCE
          
                    `ifdef UX607_HAS_CLIC
                                | irq_i_real
                    `endif
	   `endif
                              );



  wire core_clk_aon_en =
     
                        random_clken | 
     
                        ((core_wfi_mode & core_sleep_value) ?
                                  aon_wake_up_detct
                              : 1'b1);

  reg evt_i_r;
  reg nmi_i_r;
`ifdef UX607_HAS_CLIC
  reg irq_i_r;
  reg irq_i_r_r;
`endif

  wire deep_sleep = (core_wfi_mode & core_sleep_value);

  always@(posedge sys_clk or negedge sys_rst_n)
  begin
      if(~sys_rst_n) begin
        evt_i_r  <= 1'b0;
        nmi_i_r <= 1'b0;
`ifdef UX607_HAS_CLIC
        irq_i_r  <= 1'b0;
        irq_i_r_r <= 1'b0;
`endif
      end
      else begin
        evt_i_r   <= deep_sleep & evt_i;
        nmi_i_r   <= deep_sleep & nmi_i;
`ifdef UX607_HAS_CLIC
        irq_i_r   <= deep_sleep & (|irq_i);
        irq_i_r_r <= irq_i_r;
`endif
      end
  end

  assign evt_i_real  = evt_i | evt_i_r;
  assign nmi_i_real  = nmi_i | nmi_i_r;
`ifdef UX607_HAS_CLIC
  assign irq_i_real  = (|irq_i) | irq_i_r | irq_i_r_r;
`endif

  ux607_clkgate u_core_clkgate(
    .clk_in   (sys_clk      ),
    .clkgate_bypass(test_mode  ),
    .clock_en (core_clk_en),
    .clk_out  (core_clk)
  );

  ux607_clkgate u_core_aon_clkgate(
    .clk_in   (sys_clk      ),
    .clkgate_bypass(test_mode  ),
    .clock_en (core_clk_aon_en),
    .clk_out  (core_clk_aon)
  );




  `ifdef UX607_HAS_NICE 
    `ifndef UX607_NICE_UVC
  ux607_clkgate u_nice_clkgate(
    .clk_in   (sys_clk      ),
    .clkgate_bypass(test_mode  ),
    .clock_en (nice_active),
    .clk_out  (nice_clk)
  );
    `endif 
  `endif 






     
 `ifdef UX607_HAS_ICACHE 
  wire                           icache_tag0_cs;  
  wire                           icache_tag0_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag0_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag0_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag0_rdata;
  wire                               clk_icache_tag0;

  wire                           icache_data0_cs;  
  wire                           icache_data0_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data0_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data0_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data0_rdata;
  wire                               clk_icache_data0;

  `ifndef UX607_ICACHE_1WAYS
  wire                           icache_tag1_cs;  
  wire                           icache_tag1_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag1_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag1_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag1_rdata;
  wire                               clk_icache_tag1;

  wire                           icache_data1_cs;  
  wire                           icache_data1_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data1_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data1_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data1_rdata;
  wire                               clk_icache_data1;
  `endif

  `ifdef UX607_ICACHE_1WAYS
  `elsif UX607_ICACHE_2WAYS
  `else 
  wire                           icache_tag2_cs;  
  wire                           icache_tag2_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag2_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag2_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag2_rdata;
  wire                               clk_icache_tag2;

  wire                           icache_data2_cs;  
  wire                           icache_data2_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data2_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data2_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data2_rdata;
  wire                               clk_icache_data2;

  wire                           icache_tag3_cs;  
  wire                           icache_tag3_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag3_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag3_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag3_rdata;
  wire                               clk_icache_tag3;

  wire                           icache_data3_cs;  
  wire                           icache_data3_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data3_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data3_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data3_rdata;
  wire                               clk_icache_data3;
  `endif
 
  `ifdef UX607_ICACHE_8WAYS
  wire                           icache_tag4_cs;  
  wire                           icache_tag4_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag4_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag4_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag4_rdata;
  wire                               clk_icache_tag4;

  wire                           icache_data4_cs;  
  wire                           icache_data4_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data4_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data4_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data4_rdata;
  wire                               clk_icache_data4;

  wire                           icache_tag5_cs;  
  wire                           icache_tag5_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag5_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag5_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag5_rdata;
  wire                               clk_icache_tag5;

  wire                           icache_data5_cs;  
  wire                           icache_data5_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data5_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data5_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data5_rdata;
  wire                               clk_icache_data5;

  wire                           icache_tag6_cs;  
  wire                           icache_tag6_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag6_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag6_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag6_rdata;
  wire                               clk_icache_tag6;

  wire                           icache_data6_cs;  
  wire                           icache_data6_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data6_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data6_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data6_rdata;
  wire                               clk_icache_data6;

  wire                           icache_tag7_cs;  
  wire                           icache_tag7_we;  
  wire [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag7_addr; 
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag7_wdata;          
  wire [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag7_rdata;
  wire                               clk_icache_tag7;

  wire                           icache_data7_cs;  
  wire                           icache_data7_we;  
  wire [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data7_addr; 
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data7_wdata;          
  wire [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data7_rdata;
  wire                               clk_icache_data7;
  `endif
  `endif
 
  `ifdef UX607_HAS_DCACHE
  wire                          dcache_disable_init = 1'b0;
  wire                          clk_dcache_w0_tram;  
  wire                          dcache_w0_tram_cs;  
  wire [`UX607_DTAG_RAM_AW-1:0]  dcache_w0_tram_addr;
  wire                          dcache_w0_tram_we ;
  wire [`UX607_DTAG_RAM_DW-1:0]  dcache_w0_tram_din;          
  wire [`UX607_DTAG_RAM_DW-1:0]  dcache_w0_tram_dout;
   
  wire                          clk_dcache_w1_tram;  
  wire                          dcache_w1_tram_cs;  
  wire [`UX607_DTAG_RAM_AW-1:0]  dcache_w1_tram_addr; 
  wire                          dcache_w1_tram_we ;
  wire [`UX607_DTAG_RAM_DW-1:0]  dcache_w1_tram_din;          
  wire [`UX607_DTAG_RAM_DW-1:0]  dcache_w1_tram_dout;

 
 
 
 
 
 
 
 
 
 
 
 
 
 

  
  
  wire                          clk_dcache_dram_b0;  
  wire                          dcache_dram_b0_cs;  
  wire [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b0_addr; 
  wire [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b0_wem;
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b0_din;          
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b0_dout;
                                                
  wire                          clk_dcache_dram_b1;  
  wire                          dcache_dram_b1_cs;  
  wire [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b1_addr; 
  wire [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b1_wem;
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b1_din;          
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b1_dout;
                                                
  wire                          clk_dcache_dram_b2;  
  wire                          dcache_dram_b2_cs;  
  wire [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b2_addr; 
  wire [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b2_wem;
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b2_din;          
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b2_dout;
                                                
  wire                          clk_dcache_dram_b3;  
  wire                          dcache_dram_b3_cs;  
  wire [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b3_addr; 
  wire [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b3_wem;
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b3_din;          
  wire [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b3_dout;

  `endif

  `ifdef UX607_HAS_MMU 
  wire                               mmu_disable_init = 1'b0;
  wire                               clk_mmu_tlb_way0;
  wire                               clk_mmu_tlb_way1;
  wire                               mmu_tlb_way0_cs; 
  wire                               mmu_tlb_way1_cs; 
  wire                               mmu_tlb_way0_we; 
  wire                               mmu_tlb_way1_we; 
  wire [`UX607_TLB_DATA_WIDTH-1:0]    mmu_tlb_way0_wdata; 
  wire [`UX607_TLB_DATA_WIDTH-1:0]    mmu_tlb_way1_wdata;
  wire [`UX607_TLB_INDEX_WIDTH-1:0]   mmu_tlb_way0_addr; 
  wire [`UX607_TLB_INDEX_WIDTH-1:0]   mmu_tlb_way1_addr; 
  wire [`UX607_TLB_DATA_WIDTH-1:0]    mmu_tlb_way0_dout; 
  wire [`UX607_TLB_DATA_WIDTH-1:0]    mmu_tlb_way1_dout; 
  `endif

  `ifdef UX607_LM_ITF_TYPE_SRAM 
  wire [`UX607_ILM_RAM_CS_W-1:0] ilm_cs;  
  wire [`UX607_ILM_RAM_AW-1:0] ilm_addr; 
  wire [`UX607_ILM_RAM_MW-1:0] ilm_byte_we;
  wire [`UX607_ILM_RAM_DW-1:0] ilm_wdata;          
  wire [`UX607_ILM_RAM_DW-1:0] ilm_rdata;
  wire              clk_ilm_ram;
  `endif

  `ifdef UX607_HAS_DLM 
  `ifdef UX607_LM_ITF_TYPE_SRAM 
  wire [`UX607_DLM_RAM_CS_W-1:0] dlm_cs;  
  wire [`UX607_DLM_RAM_AW-1:0] dlm_addr; 
  wire [`UX607_DLM_WMSK_WIDTH-1:0] dlm_byte_we;
  wire [`UX607_DLM_DATA_WIDTH-1:0] dlm_wdata;          
  wire [`UX607_DLM_DATA_WIDTH-1:0] dlm_rdata;
  wire              clk_dlm_ram;
  
  wire                        dlm0_cs; 
  wire [`UX607_DLM_RAM_AW-1:0] dlm0_addr; 
  wire [`UX607_DLM_RAM_MW-1:0] dlm0_byte_we;
  wire [`UX607_DLM_RAM_DW-1:0] dlm0_wdata;          
  wire [`UX607_DLM_RAM_DW-1:0] dlm0_rdata;

  wire                        dlm1_cs; 
  wire [`UX607_DLM_RAM_AW-1:0] dlm1_addr; 
  wire [`UX607_DLM_RAM_MW-1:0] dlm1_byte_we;
  wire [`UX607_DLM_RAM_DW-1:0] dlm1_wdata;          
  wire [`UX607_DLM_RAM_DW-1:0] dlm1_rdata;
  
  `endif
  `endif

     
     

     
  
  
  
  
     
     

     

  
  
  
      `ifdef UX607_HAS_LM_SLAVE
    `ifdef UX607_MEM_TYPE_AXI 
  
   wire slv_arready  ;
   wire slv_arvalid  = 1'b0;
   wire[`UX607_BUSID_W-1:0]   slv_arid     = `UX607_BUSID_W'b0;
   wire[`UX607_PA_SIZE-1:0] slv_araddr   = `UX607_PA_SIZE'b0;
   wire[7:0] slv_arlen    = 8'b0;
   wire[2:0] slv_arsize   = 3'b0;
   wire[1:0] slv_arburst  = 2'b0;
   wire[3:0] slv_arregion = 4'b0;
  
   wire                         slv_awready  ; 
   wire                         slv_awvalid  = 1'b0;
   wire [`UX607_BUSID_W-1:0]     slv_awid     = `UX607_BUSID_W'b0;
   wire [`UX607_PA_SIZE-1:0]   slv_awaddr   = `UX607_PA_SIZE'b0;
   wire [7:0]                   slv_awlen    = 8'b0;
   wire [2:0]                   slv_awsize   = 3'b0;
   wire [1:0]                   slv_awburst  = 2'b0;
   wire [3:0]                   slv_awregion = 4'b0;

   wire                     slv_wready   ; 
   wire                     slv_wvalid   = 1'b0; 
   wire [`UX607_MLEN-1:0]    slv_wdata    = `UX607_MLEN'b0; 
   wire [`UX607_MLEN_MW-1:0] slv_wstrb    = `UX607_MLEN_MW'b0; 
   wire                     slv_wlast    = 1'b0; 
  
   wire slv_rready   = 1'b1; 
   wire slv_rvalid   ; 
   wire[`UX607_BUSID_W-1:0] slv_rid      ; 
   wire[`UX607_MLEN-1:0] slv_rdata    ; 
   wire[1:0] slv_rresp    ; 
   wire slv_rlast    ; 
  
   wire slv_bready  = 1'b1;
   wire slv_bvalid  ;
   wire [`UX607_BUSID_W-1:0]slv_bid     ;
   wire [1:0]slv_bresp   ;

   wire slv_bus_clk_en = 1'b1;
   wire slv_bus_rst_n  = sys_rst_n; 
   `endif 

  `ifdef UX607_MEM_TYPE_AHBL 
   wire                       slv_huser         = 1'b0;
   wire                       slv_hsel          = 1'b0;   
   wire [1:0]                 slv_htrans        = 2'b0;   
   wire                       slv_hwrite        = 1'b0;   
   wire [`UX607_PA_SIZE-1:0] slv_haddr         = `UX607_PA_SIZE'h0;    
   wire [2:0]                 slv_hsize         = 3'h0;    
   wire [`UX607_PLEN-1:0]      slv_hwdata        = `UX607_PLEN'h0;   

   wire  [`UX607_PLEN-1:0]     slv_hrdata        ;   
   wire [1:0]                 slv_hresp         ;    
   wire                       slv_hready_in     = 1'b0;   
   wire                       slv_hready_out    ;   
  `endif

  `ifdef UX607_MEM_TYPE_ICB 
  
  wire                       slv_icb_cmd_valid = 0; 
  wire                       slv_icb_cmd_ready = 0; 
  wire [`UX607_PA_SIZE-1:0] slv_icb_cmd_addr  = `UX607_PA_SIZE'h0;
  wire                       slv_icb_cmd_read  = 0; 
  wire [`UX607_PLEN-1:0]      slv_icb_cmd_wdata = `UX607_PLEN'h0; 
  wire [ 4-1:0]              slv_icb_cmd_wmask = 0; 
  wire [ 2-1:0]              slv_icb_cmd_size  = 0; 

  wire                       slv_icb_rsp_valid = 0; 
  wire                       slv_icb_rsp_ready = 0; 
  wire                       slv_icb_rsp_err   = 0;   
  wire [`UX607_PLEN-1:0]      slv_icb_rsp_rdata = 0; 
  `endif
      `endif


  ux607_core u_ux607_core(

     
`ifdef UX607_HAS_DEBUG
     
    .hart_halted     (           ), 
     
     
     
     

     
     .jtag_TCK    (jtag_tck),
     .jtag_TMS    (jtag_tms),
     .jtag_TDI    (jtag_tdi),
     .jtag_TDO    (jtag_tdo),
     .i_dbg_stop  (1'b0),
     .jtag_DRV_TDO(),
     .override_dm_sleep  (1'b0),
     
     

     

`endif
     
    .sysrstreq       (sysrstreq       ),

    .trace_ivalid    (trace_ivalid    ),
    .trace_iexception(trace_iexception),
    .trace_cause     (trace_cause     ),
    .trace_tval      (trace_tval      ),
    .trace_interrupt (trace_interrupt ),
    .trace_iaddr     (trace_iaddr     ),
    .trace_instr     (trace_instr     ),
    .trace_priv      (trace_priv      ),
    .trace_bjp_taken (trace_bjp_taken ),
    .trace_dmode     (trace_dmode     ),


      
      
    .nmi            (nmi_i),


     
     

     
     
      
     
    .mtime_toggle_a     (mtime_toggle_a  ),
     
     
    `ifdef UX607_DBG_TIMEOUT 
    .dbg_toggle_a     (dbg_toggle_a),
    `endif 

     
`ifdef UX607_HAS_PLIC
      
      
    .irq_i      (irq_i),
`else
   `ifdef UX607_HAS_CLIC
     
      
      
    .irq_i      (irq_i),
     
   `endif
     
`endif


      
      
    .reset_vector             (reset_vector),

    
      
      
    .core_wfi_mode            (core_wfi_mode),
    .core_sleep_value         (core_sleep_value),

      
      

      
      
    .hart_id            (`UX607_XLEN'b0),  

     
  `ifdef UX607_HAS_ICACHE 
    .icache_disable_init  (1'b0),

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
                                                
    `ifndef UX607_ICACHE_1WAYS
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
    `endif

    `ifdef UX607_ICACHE_1WAYS
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
    `endif

    `ifdef UX607_ICACHE_8WAYS
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
    `endif

  `endif
  
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
    .mmu_tlb_disable_init (mmu_disable_init    ),
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
  
  `ifdef UX607_HAS_ILM 
    `ifdef UX607_LM_ITF_TYPE_SRAM 
    .ilm_cs       (ilm_cs      ),  
    .ilm_addr     (ilm_addr    ), 
    .ilm_byte_we  (ilm_byte_we ),
    .ilm_wdata    (ilm_wdata   ),          
    .ilm_rdata    (ilm_rdata   ),
    .clk_ilm_ram  (clk_ilm_ram ),
    `endif
  `endif

  `ifdef UX607_HAS_DLM 
    `ifdef UX607_LM_ITF_TYPE_SRAM 
    
    .dlm0_cs       (dlm0_cs      ),  
    .dlm0_addr     (dlm0_addr    ), 
    .dlm0_byte_we  (dlm0_byte_we ),
    .dlm0_wdata    (dlm0_wdata   ),          
    .dlm0_rdata    (dlm0_rdata   ),
    .clk_dlm0_ram  (),
    .dlm1_cs       (dlm1_cs      ),  
    .dlm1_addr     (dlm1_addr    ), 
    .dlm1_byte_we  (dlm1_byte_we ),
    .dlm1_wdata    (dlm1_wdata   ),          
    .dlm1_rdata    (dlm1_rdata   ),
    .clk_dlm1_ram  (),
    
    
    
    
    
    
    
    
    `endif
  `endif


  `ifdef UX607_HAS_NICE 
      
      
    .nice_mem_holdup         (nice_mem_holdup),
    .nice_req_valid          (nice_req_valid ),
    .nice_req_ready          (nice_req_ready ),
    .nice_req_instr          (nice_req_instr ),
    .nice_req_rs1            (nice_req_rs1   ), 
    .nice_req_rs2            (nice_req_rs2   ), 
  `ifdef UX607_NICE_1CYC_64OP
    .nice_req_rs1_1          (nice_req_rs1_1     ), 
    .nice_req_rs2_1          (nice_req_rs2_1     ), 
  `endif
    .nice_req_mmode          (nice_req_mmode     ), 
  `ifdef UX607_HAS_SMODE
    .nice_req_smode          (nice_req_smode     ), 
  `endif

    
    
    
    .nice_rsp_1cyc_type      (nice_1cyc_type     ), 
    .nice_rsp_1cyc_dat       (nice_1cyc_rdat     ), 
  `ifdef UX607_NICE_1CYC_64OP
    .nice_rsp_1cyc_dat_1     (nice_1cyc_rdat_1   ), 
  `endif
    .nice_rsp_1cyc_err       (nice_1cyc_err      ),
                                              
    .nice_rsp_multicyc_valid (nice_rsp_valid     ), 
    .nice_rsp_multicyc_ready (nice_rsp_ready     ), 
    .nice_rsp_multicyc_dat   (nice_rsp_rdat      ), 
    .nice_rsp_multicyc_err   (nice_rsp_err       ),

    
    .nice_icb_cmd_valid      (nice_icb_cmd_valid ), 
    .nice_icb_cmd_ready      (nice_icb_cmd_ready ), 
    .nice_icb_cmd_addr       (nice_icb_cmd_addr  ), 
    .nice_icb_cmd_read       (nice_icb_cmd_read  ), 
    .nice_icb_cmd_wdata      (nice_icb_cmd_wdata ), 
    .nice_icb_cmd_size       (nice_icb_cmd_size  ), 
    .nice_icb_cmd_mmode      (nice_icb_cmd_mmode ), 
  `ifdef UX607_HAS_SMODE
    .nice_icb_cmd_smode      (nice_icb_cmd_smode ), 
  `endif

    
    .nice_icb_rsp_valid      (nice_icb_rsp_valid ), 
    .nice_icb_rsp_ready      (nice_icb_rsp_ready ), 
    .nice_icb_rsp_rdata      (nice_icb_rsp_rdata ), 
    .nice_icb_rsp_err        (nice_icb_rsp_err   ), 

  `endif



  `ifdef UX607_HAS_ITCM
    .ext2itcm_icb_cmd_valid  (1'b0),
    .ext2itcm_icb_cmd_ready  (),
    .ext2itcm_icb_cmd_addr   (`UX607_ITCM_ADDR_WIDTH'b0 ),
    .ext2itcm_icb_cmd_read   (1'b0 ),
    .ext2itcm_icb_cmd_wdata  (32'b0),
    .ext2itcm_icb_cmd_wmask  (4'b0),
    
    .ext2itcm_icb_rsp_valid  (),
    .ext2itcm_icb_rsp_ready  (1'b0),
    .ext2itcm_icb_rsp_err    (),
    .ext2itcm_icb_rsp_rdata  (),
  `endif

  `ifdef UX607_HAS_DTCM
    .ext2dtcm_icb_cmd_valid  (1'b0),
    .ext2dtcm_icb_cmd_ready  (),
    .ext2dtcm_icb_cmd_addr   (`UX607_DTCM_ADDR_WIDTH'b0 ),
    .ext2dtcm_icb_cmd_read   (1'b0 ),
    .ext2dtcm_icb_cmd_wdata  (32'b0),
    .ext2dtcm_icb_cmd_wmask  (4'b0),
    
    .ext2dtcm_icb_rsp_valid  (),
    .ext2dtcm_icb_rsp_ready  (1'b0),
    .ext2dtcm_icb_rsp_err    (),
    .ext2dtcm_icb_rsp_rdata  (),
  `endif

  `ifdef UX607_HAS_PPI 
  
  
  
  
      `ifdef UX607_PPI_TYPE_ICB 
    .ppi_icb_cmd_valid     (ppi_icb_cmd_valid),
    .ppi_icb_cmd_ready     (ppi_icb_cmd_ready),
    .ppi_icb_cmd_addr      (ppi_icb_cmd_addr ),
    .ppi_icb_cmd_read      (ppi_icb_cmd_read ),
    .ppi_icb_cmd_wdata     (ppi_icb_cmd_wdata),
    .ppi_icb_cmd_wmask     (ppi_icb_cmd_wmask),
    
    .ppi_icb_rsp_valid     (ppi_icb_rsp_valid),
    .ppi_icb_rsp_ready     (ppi_icb_rsp_ready),
    .ppi_icb_rsp_err       (ppi_icb_rsp_err  ),
    .ppi_icb_rsp_rdata     (ppi_icb_rsp_rdata),
      `endif

      `ifdef UX607_PPI_TYPE_APB 
    .ppi_paddr         (ppi_apb_paddr  ),
    .ppi_pwrite        (ppi_apb_pwrite ),
    .ppi_psel          (ppi_apb_psel   ),
    .ppi_dmode         (),
    .ppi_pprot         (),
    .ppi_pstrobe       (),
    .ppi_penable       (ppi_apb_penable), 
    .ppi_pwdata        (ppi_apb_pwdata ),
    .ppi_prdata        (ppi_apb_prdata ),
    .ppi_pready        (ppi_apb_pready ),
    .ppi_pslverr       (ppi_apb_pslverr),
      `endif
      `ifdef UX607_PPI_TYPE_AHB 
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
      `endif
  `endif


  `ifdef UX607_HAS_FIO 
    .fio_cmd_valid     (fio_icb_cmd_valid),
    .fio_cmd_addr      (fio_icb_cmd_addr ),
    .fio_cmd_read      (fio_icb_cmd_read ),
    .fio_cmd_mmode     (fio_icb_cmd_mmode),
    .fio_cmd_dmode     (fio_icb_cmd_dmode),
    .fio_cmd_wdata     (fio_icb_cmd_wdata),
    .fio_cmd_wmask     (fio_icb_cmd_wmask),
                                         
    .fio_rsp_err       (fio_icb_rsp_err  ),
    .fio_rsp_rdata     (fio_icb_rsp_rdata),
  `endif

    
      `ifdef UX607_MEM_TYPE_ICB 
    .mem_icb_cmd_valid  (mem_icb_cmd_valid),
    .mem_icb_cmd_ready  (mem_icb_cmd_ready),
    .mem_icb_cmd_addr   (mem_icb_cmd_addr ),
    .mem_icb_cmd_read   (mem_icb_cmd_read ),
    .mem_icb_cmd_wdata  (mem_icb_cmd_wdata),
    .mem_icb_cmd_wmask  (mem_icb_cmd_wmask),
    .mem_icb_cmd_burst  (mem_icb_cmd_burst),
    .mem_icb_cmd_beat   (mem_icb_cmd_beat ),
    .mem_icb_cmd_lock   (mem_icb_cmd_lock ),
    .mem_icb_cmd_excl   (mem_icb_cmd_excl ),
    .mem_icb_cmd_size   (mem_icb_cmd_size ),
    .mem_icb_cmd_dmode  (),
    .mem_icb_cmd_mmode  (),
    
    .mem_icb_rsp_valid  (mem_icb_rsp_valid),
    .mem_icb_rsp_ready  (mem_icb_rsp_ready),
    .mem_icb_rsp_err    (mem_icb_rsp_err  ),
    .mem_icb_rsp_rdata  (mem_icb_rsp_rdata),
    .mem_icb_rsp_excl_ok(mem_icb_rsp_excl_ok),
      `endif

      `ifdef UX607_MEM_TYPE_AHBL 
        `ifdef UX607_MEM_CLOCK_RATIO 
     .bus_clk_en(bus_clk_en),                                                                                                     
        `endif
     
    .htrans    (mem_ahbl_htrans),   
    .hwrite    (mem_ahbl_hwrite),   
    .haddr     (mem_ahbl_haddr ),   
    .hsize     (mem_ahbl_hsize ),   
    .hprot     (mem_ahbl_hprot ), 
    .master    (mem_ahbl_master),
    .hburst    (mem_ahbl_hburst),   
    .hwdata    (mem_ahbl_hwdata),   
    .hrdata    (mem_ahbl_hrdata),   
    .hresp     (mem_ahbl_hresp ),   
    .hready    (mem_ahbl_hready),   
    .hmastlock (mem_ahbl_hlock ),  
     
      `endif

    `ifdef UX607_MEM_TYPE_AXI
     .mem_arready (axi_arready),
     .mem_arvalid (axi_arvalid),
     
     .mem_araddr (axi_araddr),
     .mem_arlen (axi_arlen),
     .mem_arsize (axi_arsize),
     .mem_arburst (axi_arburst),
     .mem_arlock (axi_arlock),
     .mem_arcache (axi_arcache),
     .mem_arprot (axi_arprot),
     
     
     
     .mem_awready (axi_awready),
     .mem_awvalid (axi_awvalid),
     
     .mem_awaddr (axi_awaddr),
     .mem_awlen (axi_awlen),
     .mem_awsize (axi_awsize),
     .mem_awburst (axi_awburst),
     .mem_awlock (axi_awlock),
     .mem_awcache (axi_awcache),
     .mem_awprot (axi_awprot),
     
     
     
     .mem_wready (axi_wready),
     .mem_wvalid (axi_wvalid),
     
     .mem_wdata (axi_wdata),
     .mem_wstrb (axi_wstrb),
     .mem_wlast (axi_wlast),
     .mem_rready (axi_rready),
     .mem_rvalid (axi_rvalid),
     
     .mem_rdata (axi_rdata),
     .mem_rresp (axi_rresp),
     .mem_rlast (axi_rlast),
     .mem_bready (axi_bready),
     .mem_bvalid (axi_bvalid),
     
     .mem_bresp (axi_bresp),
     .mem_clk_en (bus_clk_en),
     `endif

  
  `ifdef UX607_HAS_ILM 

  `ifdef UX607_LM_ITF_TYPE_AHBL 
      
    .ilm_hwdata   (ilm_hwdata),
    .ilm_hwrite   (ilm_hwrite),
    .ilm_hmastlock(ilm_hmastlock),
    .ilm_htrans   (ilm_htrans),
    .ilm_haddr    (ilm_haddr ),
    .ilm_hsize    (ilm_hsize ),
    .ilm_hrdata   (ilm_hrdata),
    .ilm_hresp    (ilm_hresp ),
    .ilm_hready   (ilm_hready),
    .ilm_hburst   (),
    .ilm_hprot    (),
  `endif
  
      `endif



  
  
  
     `ifdef UX607_HAS_DLM 

  `ifdef UX607_LM_ITF_TYPE_AHBL 
    .dlm_hmastlock(dlm_hmastlock),
    .dlm_htrans   (dlm_htrans),    
    .dlm_hwrite   (dlm_hwrite),    
    .dlm_haddr    (dlm_haddr ),    
    .dlm_hsize    (dlm_hsize ),    
    .dlm_hwdata   (dlm_hwdata),    
    .dlm_hrdata   (dlm_hrdata),    
    .dlm_hresp    (dlm_hresp ),    
    .dlm_hready   (dlm_hready),    
    .dlm_hburst   (),
    .dlm_hprot    (),
    .dlm_master   (),
  `endif
  
      `endif
	
	  
      `ifdef UX607_HAS_LM_SLAVE

    `ifdef UX607_MEM_TYPE_AXI 
  
   .slv_arready (slv_arready ),
   .slv_arvalid (slv_arvalid ),
   .slv_arid    (slv_arid    ),
   .slv_araddr  (slv_araddr  ),
   .slv_arlen   (slv_arlen   ),
   .slv_arsize  (slv_arsize  ),
   .slv_arburst (slv_arburst ),
   .slv_arregion(slv_arregion),
  
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
  
   .slv_rready  (slv_rready),
   .slv_rvalid  (slv_rvalid),
   .slv_rid     (slv_rid   ),
   .slv_rdata   (slv_rdata ),
   .slv_rresp   (slv_rresp ),
   .slv_rlast   (slv_rlast ),
  
   .slv_bready  (slv_bready  ),
   .slv_bvalid  (slv_bvalid  ),
   .slv_bid     (slv_bid     ),
   .slv_bresp   (slv_bresp   ),

   .slv_bus_clk_en(slv_bus_clk_en),
   `endif 






    `ifdef UX607_MEM_TYPE_AHBL 
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
    `endif

  `ifdef UX607_MEM_TYPE_ICB 
    .slv_icb_cmd_valid (0), 
    .slv_icb_cmd_ready (0), 
    .slv_icb_cmd_addr  (0),
    .slv_icb_cmd_read  (0), 
    .slv_icb_cmd_wdata (0), 
    .slv_icb_cmd_wmask (0), 
    .slv_icb_cmd_size  (0), 

    .slv_icb_rsp_valid (0), 
    .slv_icb_rsp_ready (0), 
    .slv_icb_rsp_err   (0),   
    .slv_icb_rsp_rdata (0), 
  `endif
      `endif

     


     .tx_evt  (),
     .rx_evt  (evt_i),

     .clkgate_bypass   (test_mode), 
     .reset_bypass     (test_mode), 
     .core_clk         (core_clk  ),
     .core_clk_aon     (core_clk_aon),
     .core_reset_n     (sys_rst_n),
     .por_reset_n      (por_rst_n)

  );


     
      `ifndef UX607_D_SHARE_ILM 
     
  wire                          biu2ilm_icb_cmd_valid;
  wire                          biu2ilm_icb_cmd_ready;
  wire  [`UX607_ILM_ADDR_WIDTH-1:0]   biu2ilm_icb_cmd_addr; 
  wire                          biu2ilm_icb_cmd_read; 
  wire  [`UX607_MLEN-1:0]        biu2ilm_icb_cmd_wdata;
  wire  [`UX607_MLEN/8-1:0]      biu2ilm_icb_cmd_wmask;
  
  wire                          biu2ilm_icb_rsp_valid;
  wire                          biu2ilm_icb_rsp_ready;
  wire                          biu2ilm_icb_rsp_err;
  wire  [`UX607_MLEN-1:0]        biu2ilm_icb_rsp_rdata;
     
       `endif
     

  wire                               biu2dlm_icb_cmd_valid;
  wire                               biu2dlm_icb_cmd_ready;
  wire  [`UX607_DLM_ADDR_WIDTH-1:0]   biu2dlm_icb_cmd_addr; 
  wire                               biu2dlm_icb_cmd_read; 
  wire  [`UX607_MLEN-1:0]             biu2dlm_icb_cmd_wdata;
  wire  [`UX607_MLEN/8-1:0]           biu2dlm_icb_cmd_wmask;
  
  wire                               biu2dlm_icb_rsp_valid;
  wire                               biu2dlm_icb_rsp_ready;
  wire                               biu2dlm_icb_rsp_err;
  wire  [`UX607_MLEN-1:0]             biu2dlm_icb_rsp_rdata;

  `ifdef UX607_HAS_DLM 
    `ifdef UX607_LM_ITF_TYPE_SRAM 
  
  assign dlm_cs      = {dlm1_cs, dlm0_cs};
  assign dlm_addr    = dlm0_addr | dlm1_addr; 
  assign dlm_byte_we = {dlm1_byte_we, dlm0_byte_we};
  assign dlm_wdata   = {dlm1_wdata,dlm0_wdata};          
  assign {dlm1_rdata,dlm0_rdata}   = dlm_rdata;

    ux607_clkgate u_dlm_sram_clkgate(
    .clk_in   (core_clk     ),
    .clkgate_bypass(test_mode),
    .clock_en (|dlm_cs),
    .clk_out  (clk_dlm_ram)
  );
  
  `endif 
  `endif 

 ux607_subsys_lm u_ux607_subsys_lm(

     
  `ifdef UX607_HAS_ILM 
    `ifdef UX607_LM_ITF_TYPE_SRAM 
    .i_ilm_ram_cs       (ilm_cs      ),  
    .i_ilm_ram_addr     (ilm_addr    ), 
    .i_ilm_ram_wem      (ilm_byte_we ),
    .i_ilm_ram_din    (ilm_wdata   ),          
    .i_ilm_ram_dout    (ilm_rdata   ),
    .i_clk_ilm_ram     (clk_ilm_ram),
    `endif
  `endif

  `ifdef UX607_HAS_DLM 
    `ifdef UX607_LM_ITF_TYPE_SRAM 
    .i_dlm_ram_cs       (dlm_cs      ),  
    .i_dlm_ram_addr     (dlm_addr    ), 
    .i_dlm_ram_wem      (dlm_byte_we ),
    .i_dlm_ram_din    (dlm_wdata   ),          
    .i_dlm_ram_dout    (dlm_rdata   ),
    .i_clk_dlm_ram     (clk_dlm_ram),
    `endif
  `endif

      `ifndef UX607_D_SHARE_ILM 
     
    .biu2ilm_icb_cmd_valid (biu2ilm_icb_cmd_valid),
    .biu2ilm_icb_cmd_ready (biu2ilm_icb_cmd_ready),
    .biu2ilm_icb_cmd_addr  (biu2ilm_icb_cmd_addr ), 
    .biu2ilm_icb_cmd_read  (biu2ilm_icb_cmd_read ), 
    .biu2ilm_icb_cmd_wdata (biu2ilm_icb_cmd_wdata),
    .biu2ilm_icb_cmd_wmask (biu2ilm_icb_cmd_wmask),
    
    .biu2ilm_icb_rsp_valid (biu2ilm_icb_rsp_valid),
    .biu2ilm_icb_rsp_ready (biu2ilm_icb_rsp_ready),
    .biu2ilm_icb_rsp_err   (biu2ilm_icb_rsp_err  ),
    .biu2ilm_icb_rsp_rdata (biu2ilm_icb_rsp_rdata),
     
       `endif
     

    .biu2dlm_icb_cmd_valid (biu2dlm_icb_cmd_valid),
    .biu2dlm_icb_cmd_ready (biu2dlm_icb_cmd_ready),
    .biu2dlm_icb_cmd_addr  (biu2dlm_icb_cmd_addr ), 
    .biu2dlm_icb_cmd_read  (biu2dlm_icb_cmd_read ), 
    .biu2dlm_icb_cmd_wdata (biu2dlm_icb_cmd_wdata),
    .biu2dlm_icb_cmd_wmask (biu2dlm_icb_cmd_wmask),
    
    .biu2dlm_icb_rsp_valid (biu2dlm_icb_rsp_valid),
    .biu2dlm_icb_rsp_ready (biu2dlm_icb_rsp_ready),
    .biu2dlm_icb_rsp_err   (biu2dlm_icb_rsp_err  ),
    .biu2dlm_icb_rsp_rdata (biu2dlm_icb_rsp_rdata),

     
  
  `ifdef UX607_HAS_ILM 

  `ifdef UX607_LM_ITF_TYPE_AHBL 
      
    .ilm_ahbl_htrans   (ilm_htrans),
    .ilm_ahbl_haddr    (ilm_haddr ),
    .ilm_ahbl_hsize    (ilm_hsize ),
    .ilm_ahbl_hwrite   (ilm_hwrite),    
    .ilm_ahbl_hwdata   (ilm_hwdata),    
    .ilm_ahbl_hrdata   (ilm_hrdata),
    .ilm_ahbl_hresp    (ilm_hresp ),
    .ilm_ahbl_hready   (ilm_hready),
  `endif
  
      `endif


  
  
  
     `ifdef UX607_HAS_DLM 

  `ifdef UX607_LM_ITF_TYPE_AHBL 
    .dlm_ahbl_htrans  (dlm_htrans),    
    .dlm_ahbl_haddr   (dlm_haddr ),    
    .dlm_ahbl_hsize   (dlm_hsize ),    
    .dlm_ahbl_hwrite  (dlm_hwrite),    
    .dlm_ahbl_hwdata  (dlm_hwdata),    
    .dlm_ahbl_hrdata  (dlm_hrdata),    
    .dlm_ahbl_hresp   (dlm_hresp ),    
    .dlm_ahbl_hready  (dlm_hready),    
  `endif
  
      `endif
     

    .test_mode     (test_mode),
    .clk           (clk_bus  ),
    .rst_n         (sys_rst_n) 
  );
 
  wire                       qspi0_ro_icb_cmd_valid;
  wire                       qspi0_ro_icb_cmd_ready;
  wire [`UX607_PA_SIZE-1:0] qspi0_ro_icb_cmd_addr; 
  wire                       qspi0_ro_icb_cmd_read; 
  wire [`UX607_PLEN-1:0]              qspi0_ro_icb_cmd_wdata;
  
  wire                       qspi0_ro_icb_rsp_valid;
  wire                       qspi0_ro_icb_rsp_ready;
  wire [`UX607_PLEN-1:0]              qspi0_ro_icb_rsp_rdata;

  

     
  `ifdef UX607_HAS_FIO 
  wire [`UX607_PA_SIZE-1:0] fio_region_indic = `UX607_CFG_FIO_BASE_ADDR;
  `endif
  `ifdef UX607_HAS_PPI 
  wire [`UX607_PA_SIZE-1:0] ppi_region_indic = `UX607_CFG_PPI_BASE_ADDR;
  `endif
     

  ux607_subsys_perips u_ux607_subsys_perips (

     
  `ifdef UX607_HAS_FIO 
    .fio_icb_cmd_valid     (fio_icb_cmd_valid),
    .fio_icb_cmd_addr      ({fio_region_indic[`UX607_FIO_BASE_REGION],fio_icb_cmd_addr} ),
    .fio_icb_cmd_read      (fio_icb_cmd_read ),
    .fio_icb_cmd_wdata     (fio_icb_cmd_wdata),
    .fio_icb_cmd_wmask     (fio_icb_cmd_wmask),
     
    .fio_icb_rsp_err       (fio_icb_rsp_err  ),
    .fio_icb_rsp_rdata     (fio_icb_rsp_rdata),
  `endif
 
  `ifdef UX607_HAS_PPI 
      `ifdef UX607_PPI_TYPE_ICB 
    .ppi_icb_cmd_valid     (ppi_icb_cmd_valid),
    .ppi_icb_cmd_ready     (ppi_icb_cmd_ready),
    .ppi_icb_cmd_addr      (ppi_icb_cmd_addr ),
    .ppi_icb_cmd_read      (ppi_icb_cmd_read ),
    .ppi_icb_cmd_wdata     (ppi_icb_cmd_wdata),
    .ppi_icb_cmd_wmask     (ppi_icb_cmd_wmask),
    
    .ppi_icb_rsp_valid     (ppi_icb_rsp_valid),
    .ppi_icb_rsp_ready     (ppi_icb_rsp_ready),
    .ppi_icb_rsp_err       (ppi_icb_rsp_err  ),
    .ppi_icb_rsp_rdata     (ppi_icb_rsp_rdata),
      `endif

      `ifdef UX607_PPI_TYPE_APB 
    .ppi_apb_paddr         ({ppi_region_indic[`UX607_PPI_BASE_REGION],ppi_apb_paddr}  ),
    .ppi_apb_pwrite        (ppi_apb_pwrite ),
    .ppi_apb_psel          (ppi_apb_psel   ),
    .ppi_apb_penable       (ppi_apb_penable), 
    .ppi_apb_pwdata        (ppi_apb_pwdata ),
    .ppi_apb_prdata        (ppi_apb_prdata ),
    .ppi_apb_pready        (ppi_apb_pready ),
    .ppi_apb_pslverr       (ppi_apb_pslverr),
      `endif
       `ifdef UX607_PPI_TYPE_AHB 
    .ppi_ahbl_htrans (ppi_ahbl_htrans) ,  
    .ppi_ahbl_hwrite (ppi_ahbl_hwrite) ,  
    .ppi_ahbl_haddr  (ppi_ahbl_haddr ) ,  
    .ppi_ahbl_hsize  (ppi_ahbl_hsize ) ,  
    .ppi_ahbl_hwdata (ppi_ahbl_hwdata) ,  
    .ppi_ahbl_hprot  (ppi_ahbl_hprot ) ,
    .ppi_ahbl_hrdata (ppi_ahbl_hrdata) ,  
    .ppi_ahbl_hresp  (ppi_ahbl_hresp ) ,  
    .ppi_ahbl_hready (ppi_ahbl_hready) , 
      `endif



  `endif

  `ifndef UX607_HAS_PPI 
     
    .biu2ppi_icb_cmd_valid     (biu2ppi_icb_cmd_valid),
    .biu2ppi_icb_cmd_ready     (biu2ppi_icb_cmd_ready),
    .biu2ppi_icb_cmd_addr      (biu2ppi_icb_cmd_addr ),
    .biu2ppi_icb_cmd_read      (biu2ppi_icb_cmd_read ),
    .biu2ppi_icb_cmd_wdata     (biu2ppi_icb_cmd_wdata),
    .biu2ppi_icb_cmd_wmask     (biu2ppi_icb_cmd_wmask),
    
    .biu2ppi_icb_rsp_valid     (biu2ppi_icb_rsp_valid),
    .biu2ppi_icb_rsp_ready     (biu2ppi_icb_rsp_ready),
    .biu2ppi_icb_rsp_err       (biu2ppi_icb_rsp_err  ),
    .biu2ppi_icb_rsp_rdata     (biu2ppi_icb_rsp_rdata),
     
  `endif
     

    .qspi0_ro_icb_cmd_valid  (qspi0_ro_icb_cmd_valid), 
    .qspi0_ro_icb_cmd_ready  (qspi0_ro_icb_cmd_ready),
    .qspi0_ro_icb_cmd_addr   (qspi0_ro_icb_cmd_addr ),
    .qspi0_ro_icb_cmd_read   (qspi0_ro_icb_cmd_read ),
    .qspi0_ro_icb_cmd_wdata  (qspi0_ro_icb_cmd_wdata),
                             
    .qspi0_ro_icb_rsp_valid  (qspi0_ro_icb_rsp_valid),
    .qspi0_ro_icb_rsp_ready  (qspi0_ro_icb_rsp_ready),
    .qspi0_ro_icb_rsp_rdata  (qspi0_ro_icb_rsp_rdata),
                           
    .io_pads_gpio_0_i_ival   (io_pads_gpio_0_i_ival),
    .io_pads_gpio_0_o_oval   (io_pads_gpio_0_o_oval),
    .io_pads_gpio_0_o_oe     (io_pads_gpio_0_o_oe),
    .io_pads_gpio_0_o_ie     (io_pads_gpio_0_o_ie),
    .io_pads_gpio_0_o_pue    (io_pads_gpio_0_o_pue),
    .io_pads_gpio_0_o_ds     (io_pads_gpio_0_o_ds),
    .io_pads_gpio_1_i_ival   (io_pads_gpio_1_i_ival),
    .io_pads_gpio_1_o_oval   (io_pads_gpio_1_o_oval),
    .io_pads_gpio_1_o_oe     (io_pads_gpio_1_o_oe),
    .io_pads_gpio_1_o_ie     (io_pads_gpio_1_o_ie),
    .io_pads_gpio_1_o_pue    (io_pads_gpio_1_o_pue),
    .io_pads_gpio_1_o_ds     (io_pads_gpio_1_o_ds),
    .io_pads_gpio_2_i_ival   (io_pads_gpio_2_i_ival),
    .io_pads_gpio_2_o_oval   (io_pads_gpio_2_o_oval),
    .io_pads_gpio_2_o_oe     (io_pads_gpio_2_o_oe),
    .io_pads_gpio_2_o_ie     (io_pads_gpio_2_o_ie),
    .io_pads_gpio_2_o_pue    (io_pads_gpio_2_o_pue),
    .io_pads_gpio_2_o_ds     (io_pads_gpio_2_o_ds),
    .io_pads_gpio_3_i_ival   (io_pads_gpio_3_i_ival),
    .io_pads_gpio_3_o_oval   (io_pads_gpio_3_o_oval),
    .io_pads_gpio_3_o_oe     (io_pads_gpio_3_o_oe),
    .io_pads_gpio_3_o_ie     (io_pads_gpio_3_o_ie),
    .io_pads_gpio_3_o_pue    (io_pads_gpio_3_o_pue),
    .io_pads_gpio_3_o_ds     (io_pads_gpio_3_o_ds),
    .io_pads_gpio_4_i_ival   (io_pads_gpio_4_i_ival),
    .io_pads_gpio_4_o_oval   (io_pads_gpio_4_o_oval),
    .io_pads_gpio_4_o_oe     (io_pads_gpio_4_o_oe),
    .io_pads_gpio_4_o_ie     (io_pads_gpio_4_o_ie),
    .io_pads_gpio_4_o_pue    (io_pads_gpio_4_o_pue),
    .io_pads_gpio_4_o_ds     (io_pads_gpio_4_o_ds),
    .io_pads_gpio_5_i_ival   (io_pads_gpio_5_i_ival),
    .io_pads_gpio_5_o_oval   (io_pads_gpio_5_o_oval),
    .io_pads_gpio_5_o_oe     (io_pads_gpio_5_o_oe),
    .io_pads_gpio_5_o_ie     (io_pads_gpio_5_o_ie),
    .io_pads_gpio_5_o_pue    (io_pads_gpio_5_o_pue),
    .io_pads_gpio_5_o_ds     (io_pads_gpio_5_o_ds),
    .io_pads_gpio_6_i_ival   (io_pads_gpio_6_i_ival),
    .io_pads_gpio_6_o_oval   (io_pads_gpio_6_o_oval),
    .io_pads_gpio_6_o_oe     (io_pads_gpio_6_o_oe),
    .io_pads_gpio_6_o_ie     (io_pads_gpio_6_o_ie),
    .io_pads_gpio_6_o_pue    (io_pads_gpio_6_o_pue),
    .io_pads_gpio_6_o_ds     (io_pads_gpio_6_o_ds),
    .io_pads_gpio_7_i_ival   (io_pads_gpio_7_i_ival),
    .io_pads_gpio_7_o_oval   (io_pads_gpio_7_o_oval),
    .io_pads_gpio_7_o_oe     (io_pads_gpio_7_o_oe),
    .io_pads_gpio_7_o_ie     (io_pads_gpio_7_o_ie),
    .io_pads_gpio_7_o_pue    (io_pads_gpio_7_o_pue),
    .io_pads_gpio_7_o_ds     (io_pads_gpio_7_o_ds),
    .io_pads_gpio_8_i_ival   (io_pads_gpio_8_i_ival),
    .io_pads_gpio_8_o_oval   (io_pads_gpio_8_o_oval),
    .io_pads_gpio_8_o_oe     (io_pads_gpio_8_o_oe),
    .io_pads_gpio_8_o_ie     (io_pads_gpio_8_o_ie),
    .io_pads_gpio_8_o_pue    (io_pads_gpio_8_o_pue),
    .io_pads_gpio_8_o_ds     (io_pads_gpio_8_o_ds),
    .io_pads_gpio_9_i_ival   (io_pads_gpio_9_i_ival),
    .io_pads_gpio_9_o_oval   (io_pads_gpio_9_o_oval),
    .io_pads_gpio_9_o_oe     (io_pads_gpio_9_o_oe),
    .io_pads_gpio_9_o_ie     (io_pads_gpio_9_o_ie),
    .io_pads_gpio_9_o_pue    (io_pads_gpio_9_o_pue),
    .io_pads_gpio_9_o_ds     (io_pads_gpio_9_o_ds),
    .io_pads_gpio_10_i_ival  (io_pads_gpio_10_i_ival),
    .io_pads_gpio_10_o_oval  (io_pads_gpio_10_o_oval),
    .io_pads_gpio_10_o_oe    (io_pads_gpio_10_o_oe),
    .io_pads_gpio_10_o_ie    (io_pads_gpio_10_o_ie),
    .io_pads_gpio_10_o_pue   (io_pads_gpio_10_o_pue),
    .io_pads_gpio_10_o_ds    (io_pads_gpio_10_o_ds),
    .io_pads_gpio_11_i_ival  (io_pads_gpio_11_i_ival),
    .io_pads_gpio_11_o_oval  (io_pads_gpio_11_o_oval),
    .io_pads_gpio_11_o_oe    (io_pads_gpio_11_o_oe),
    .io_pads_gpio_11_o_ie    (io_pads_gpio_11_o_ie),
    .io_pads_gpio_11_o_pue   (io_pads_gpio_11_o_pue),
    .io_pads_gpio_11_o_ds    (io_pads_gpio_11_o_ds),
    .io_pads_gpio_12_i_ival  (io_pads_gpio_12_i_ival),
    .io_pads_gpio_12_o_oval  (io_pads_gpio_12_o_oval),
    .io_pads_gpio_12_o_oe    (io_pads_gpio_12_o_oe),
    .io_pads_gpio_12_o_ie    (io_pads_gpio_12_o_ie),
    .io_pads_gpio_12_o_pue   (io_pads_gpio_12_o_pue),
    .io_pads_gpio_12_o_ds    (io_pads_gpio_12_o_ds),
    .io_pads_gpio_13_i_ival  (io_pads_gpio_13_i_ival),
    .io_pads_gpio_13_o_oval  (io_pads_gpio_13_o_oval),
    .io_pads_gpio_13_o_oe    (io_pads_gpio_13_o_oe),
    .io_pads_gpio_13_o_ie    (io_pads_gpio_13_o_ie),
    .io_pads_gpio_13_o_pue   (io_pads_gpio_13_o_pue),
    .io_pads_gpio_13_o_ds    (io_pads_gpio_13_o_ds),
    .io_pads_gpio_14_i_ival  (io_pads_gpio_14_i_ival),
    .io_pads_gpio_14_o_oval  (io_pads_gpio_14_o_oval),
    .io_pads_gpio_14_o_oe    (io_pads_gpio_14_o_oe),
    .io_pads_gpio_14_o_ie    (io_pads_gpio_14_o_ie),
    .io_pads_gpio_14_o_pue   (io_pads_gpio_14_o_pue),
    .io_pads_gpio_14_o_ds    (io_pads_gpio_14_o_ds),
    .io_pads_gpio_15_i_ival  (io_pads_gpio_15_i_ival),
    .io_pads_gpio_15_o_oval  (io_pads_gpio_15_o_oval),
    .io_pads_gpio_15_o_oe    (io_pads_gpio_15_o_oe),
    .io_pads_gpio_15_o_ie    (io_pads_gpio_15_o_ie),
    .io_pads_gpio_15_o_pue   (io_pads_gpio_15_o_pue),
    .io_pads_gpio_15_o_ds    (io_pads_gpio_15_o_ds),
    .io_pads_gpio_16_i_ival  (io_pads_gpio_16_i_ival),
    .io_pads_gpio_16_o_oval  (io_pads_gpio_16_o_oval),
    .io_pads_gpio_16_o_oe    (io_pads_gpio_16_o_oe),
    .io_pads_gpio_16_o_ie    (io_pads_gpio_16_o_ie),
    .io_pads_gpio_16_o_pue   (io_pads_gpio_16_o_pue),
    .io_pads_gpio_16_o_ds    (io_pads_gpio_16_o_ds),
    .io_pads_gpio_17_i_ival  (io_pads_gpio_17_i_ival),
    .io_pads_gpio_17_o_oval  (io_pads_gpio_17_o_oval),
    .io_pads_gpio_17_o_oe    (io_pads_gpio_17_o_oe),
    .io_pads_gpio_17_o_ie    (io_pads_gpio_17_o_ie),
    .io_pads_gpio_17_o_pue   (io_pads_gpio_17_o_pue),
    .io_pads_gpio_17_o_ds    (io_pads_gpio_17_o_ds),
    .io_pads_gpio_18_i_ival  (io_pads_gpio_18_i_ival),
    .io_pads_gpio_18_o_oval  (io_pads_gpio_18_o_oval),
    .io_pads_gpio_18_o_oe    (io_pads_gpio_18_o_oe),
    .io_pads_gpio_18_o_ie    (io_pads_gpio_18_o_ie),
    .io_pads_gpio_18_o_pue   (io_pads_gpio_18_o_pue),
    .io_pads_gpio_18_o_ds    (io_pads_gpio_18_o_ds),
    .io_pads_gpio_19_i_ival  (io_pads_gpio_19_i_ival),
    .io_pads_gpio_19_o_oval  (io_pads_gpio_19_o_oval),
    .io_pads_gpio_19_o_oe    (io_pads_gpio_19_o_oe),
    .io_pads_gpio_19_o_ie    (io_pads_gpio_19_o_ie),
    .io_pads_gpio_19_o_pue   (io_pads_gpio_19_o_pue),
    .io_pads_gpio_19_o_ds    (io_pads_gpio_19_o_ds),
    .io_pads_gpio_20_i_ival  (io_pads_gpio_20_i_ival),
    .io_pads_gpio_20_o_oval  (io_pads_gpio_20_o_oval),
    .io_pads_gpio_20_o_oe    (io_pads_gpio_20_o_oe),
    .io_pads_gpio_20_o_ie    (io_pads_gpio_20_o_ie),
    .io_pads_gpio_20_o_pue   (io_pads_gpio_20_o_pue),
    .io_pads_gpio_20_o_ds    (io_pads_gpio_20_o_ds),
    .io_pads_gpio_21_i_ival  (io_pads_gpio_21_i_ival),
    .io_pads_gpio_21_o_oval  (io_pads_gpio_21_o_oval),
    .io_pads_gpio_21_o_oe    (io_pads_gpio_21_o_oe),
    .io_pads_gpio_21_o_ie    (io_pads_gpio_21_o_ie),
    .io_pads_gpio_21_o_pue   (io_pads_gpio_21_o_pue),
    .io_pads_gpio_21_o_ds    (io_pads_gpio_21_o_ds),
    .io_pads_gpio_22_i_ival  (io_pads_gpio_22_i_ival),
    .io_pads_gpio_22_o_oval  (io_pads_gpio_22_o_oval),
    .io_pads_gpio_22_o_oe    (io_pads_gpio_22_o_oe),
    .io_pads_gpio_22_o_ie    (io_pads_gpio_22_o_ie),
    .io_pads_gpio_22_o_pue   (io_pads_gpio_22_o_pue),
    .io_pads_gpio_22_o_ds    (io_pads_gpio_22_o_ds),
    .io_pads_gpio_23_i_ival  (io_pads_gpio_23_i_ival),
    .io_pads_gpio_23_o_oval  (io_pads_gpio_23_o_oval),
    .io_pads_gpio_23_o_oe    (io_pads_gpio_23_o_oe),
    .io_pads_gpio_23_o_ie    (io_pads_gpio_23_o_ie),
    .io_pads_gpio_23_o_pue   (io_pads_gpio_23_o_pue),
    .io_pads_gpio_23_o_ds    (io_pads_gpio_23_o_ds),
    .io_pads_gpio_24_i_ival  (io_pads_gpio_24_i_ival),
    .io_pads_gpio_24_o_oval  (io_pads_gpio_24_o_oval),
    .io_pads_gpio_24_o_oe    (io_pads_gpio_24_o_oe),
    .io_pads_gpio_24_o_ie    (io_pads_gpio_24_o_ie),
    .io_pads_gpio_24_o_pue   (io_pads_gpio_24_o_pue),
    .io_pads_gpio_24_o_ds    (io_pads_gpio_24_o_ds),
    .io_pads_gpio_25_i_ival  (io_pads_gpio_25_i_ival),
    .io_pads_gpio_25_o_oval  (io_pads_gpio_25_o_oval),
    .io_pads_gpio_25_o_oe    (io_pads_gpio_25_o_oe),
    .io_pads_gpio_25_o_ie    (io_pads_gpio_25_o_ie),
    .io_pads_gpio_25_o_pue   (io_pads_gpio_25_o_pue),
    .io_pads_gpio_25_o_ds    (io_pads_gpio_25_o_ds),
    .io_pads_gpio_26_i_ival  (io_pads_gpio_26_i_ival),
    .io_pads_gpio_26_o_oval  (io_pads_gpio_26_o_oval),
    .io_pads_gpio_26_o_oe    (io_pads_gpio_26_o_oe),
    .io_pads_gpio_26_o_ie    (io_pads_gpio_26_o_ie),
    .io_pads_gpio_26_o_pue   (io_pads_gpio_26_o_pue),
    .io_pads_gpio_26_o_ds    (io_pads_gpio_26_o_ds),
    .io_pads_gpio_27_i_ival  (io_pads_gpio_27_i_ival),
    .io_pads_gpio_27_o_oval  (io_pads_gpio_27_o_oval),
    .io_pads_gpio_27_o_oe    (io_pads_gpio_27_o_oe),
    .io_pads_gpio_27_o_ie    (io_pads_gpio_27_o_ie),
    .io_pads_gpio_27_o_pue   (io_pads_gpio_27_o_pue),
    .io_pads_gpio_27_o_ds    (io_pads_gpio_27_o_ds),
    .io_pads_gpio_28_i_ival  (io_pads_gpio_28_i_ival),
    .io_pads_gpio_28_o_oval  (io_pads_gpio_28_o_oval),
    .io_pads_gpio_28_o_oe    (io_pads_gpio_28_o_oe),
    .io_pads_gpio_28_o_ie    (io_pads_gpio_28_o_ie),
    .io_pads_gpio_28_o_pue   (io_pads_gpio_28_o_pue),
    .io_pads_gpio_28_o_ds    (io_pads_gpio_28_o_ds),
    .io_pads_gpio_29_i_ival  (io_pads_gpio_29_i_ival),
    .io_pads_gpio_29_o_oval  (io_pads_gpio_29_o_oval),
    .io_pads_gpio_29_o_oe    (io_pads_gpio_29_o_oe),
    .io_pads_gpio_29_o_ie    (io_pads_gpio_29_o_ie),
    .io_pads_gpio_29_o_pue   (io_pads_gpio_29_o_pue),
    .io_pads_gpio_29_o_ds    (io_pads_gpio_29_o_ds),
    .io_pads_gpio_30_i_ival  (io_pads_gpio_30_i_ival),
    .io_pads_gpio_30_o_oval  (io_pads_gpio_30_o_oval),
    .io_pads_gpio_30_o_oe    (io_pads_gpio_30_o_oe),
    .io_pads_gpio_30_o_ie    (io_pads_gpio_30_o_ie),
    .io_pads_gpio_30_o_pue   (io_pads_gpio_30_o_pue),
    .io_pads_gpio_30_o_ds    (io_pads_gpio_30_o_ds),
    .io_pads_gpio_31_i_ival  (io_pads_gpio_31_i_ival),
    .io_pads_gpio_31_o_oval  (io_pads_gpio_31_o_oval),
    .io_pads_gpio_31_o_oe    (io_pads_gpio_31_o_oe),
    .io_pads_gpio_31_o_ie    (io_pads_gpio_31_o_ie),
    .io_pads_gpio_31_o_pue   (io_pads_gpio_31_o_pue),
    .io_pads_gpio_31_o_ds    (io_pads_gpio_31_o_ds),

    .io_pads_qspi_sck_i_ival (io_pads_qspi_sck_i_ival    ),
    .io_pads_qspi_sck_o_oval (io_pads_qspi_sck_o_oval    ),
    .io_pads_qspi_sck_o_oe   (io_pads_qspi_sck_o_oe      ),
    .io_pads_qspi_sck_o_ie   (io_pads_qspi_sck_o_ie      ),
    .io_pads_qspi_sck_o_pue  (io_pads_qspi_sck_o_pue     ),
    .io_pads_qspi_sck_o_ds   (io_pads_qspi_sck_o_ds      ),
    .io_pads_qspi_dq_0_i_ival(io_pads_qspi_dq_0_i_ival   ),
    .io_pads_qspi_dq_0_o_oval(io_pads_qspi_dq_0_o_oval   ),
    .io_pads_qspi_dq_0_o_oe  (io_pads_qspi_dq_0_o_oe     ),
    .io_pads_qspi_dq_0_o_ie  (io_pads_qspi_dq_0_o_ie     ),
    .io_pads_qspi_dq_0_o_pue (io_pads_qspi_dq_0_o_pue    ),
    .io_pads_qspi_dq_0_o_ds  (io_pads_qspi_dq_0_o_ds     ),
    .io_pads_qspi_dq_1_i_ival(io_pads_qspi_dq_1_i_ival   ),
    .io_pads_qspi_dq_1_o_oval(io_pads_qspi_dq_1_o_oval   ),
    .io_pads_qspi_dq_1_o_oe  (io_pads_qspi_dq_1_o_oe     ),
    .io_pads_qspi_dq_1_o_ie  (io_pads_qspi_dq_1_o_ie     ),
    .io_pads_qspi_dq_1_o_pue (io_pads_qspi_dq_1_o_pue    ),
    .io_pads_qspi_dq_1_o_ds  (io_pads_qspi_dq_1_o_ds     ),
    .io_pads_qspi_dq_2_i_ival(io_pads_qspi_dq_2_i_ival   ),
    .io_pads_qspi_dq_2_o_oval(io_pads_qspi_dq_2_o_oval   ),
    .io_pads_qspi_dq_2_o_oe  (io_pads_qspi_dq_2_o_oe     ),
    .io_pads_qspi_dq_2_o_ie  (io_pads_qspi_dq_2_o_ie     ),
    .io_pads_qspi_dq_2_o_pue (io_pads_qspi_dq_2_o_pue    ),
    .io_pads_qspi_dq_2_o_ds  (io_pads_qspi_dq_2_o_ds     ),
    .io_pads_qspi_dq_3_i_ival(io_pads_qspi_dq_3_i_ival   ),
    .io_pads_qspi_dq_3_o_oval(io_pads_qspi_dq_3_o_oval   ),
    .io_pads_qspi_dq_3_o_oe  (io_pads_qspi_dq_3_o_oe     ),
    .io_pads_qspi_dq_3_o_ie  (io_pads_qspi_dq_3_o_ie     ),
    .io_pads_qspi_dq_3_o_pue (io_pads_qspi_dq_3_o_pue    ),
    .io_pads_qspi_dq_3_o_ds  (io_pads_qspi_dq_3_o_ds     ),
    .io_pads_qspi_cs_0_i_ival(io_pads_qspi_cs_0_i_ival   ),
    .io_pads_qspi_cs_0_o_oval(io_pads_qspi_cs_0_o_oval   ),
    .io_pads_qspi_cs_0_o_oe  (io_pads_qspi_cs_0_o_oe     ),
    .io_pads_qspi_cs_0_o_ie  (io_pads_qspi_cs_0_o_ie     ),
    .io_pads_qspi_cs_0_o_pue (io_pads_qspi_cs_0_o_pue    ),
    .io_pads_qspi_cs_0_o_ds  (io_pads_qspi_cs_0_o_ds     ),

    .qspi0_irq            (qspi0_irq  ),
    .qspi1_irq            (qspi1_irq  ),
    .qspi2_irq            (qspi2_irq  ),
    .uart0_irq            (uart0_irq  ),
    .uart1_irq            (uart1_irq  ),
    .pwm0_irq_0           (pwm0_irq_0 ),
    .pwm0_irq_1           (pwm0_irq_1 ),
    .pwm0_irq_2           (pwm0_irq_2 ),
    .pwm0_irq_3           (pwm0_irq_3 ),
    .pwm1_irq_0           (pwm1_irq_0 ),
    .pwm1_irq_1           (pwm1_irq_1 ),
    .pwm1_irq_2           (pwm1_irq_2 ),
    .pwm1_irq_3           (pwm1_irq_3 ),
    .pwm2_irq_0           (pwm2_irq_0 ),
    .pwm2_irq_1           (pwm2_irq_1 ),
    .pwm2_irq_2           (pwm2_irq_2 ),
    .pwm2_irq_3           (pwm2_irq_3 ),
    .i2c_mst_irq          (i2c_mst_irq),
    .gpio_irq_0           (gpio_irq_0 ),
    .gpio_irq_1           (gpio_irq_1 ),
    .gpio_irq_2           (gpio_irq_2 ),
    .gpio_irq_3           (gpio_irq_3 ),
    .gpio_irq_4           (gpio_irq_4 ),
    .gpio_irq_5           (gpio_irq_5 ),
    .gpio_irq_6           (gpio_irq_6 ),
    .gpio_irq_7           (gpio_irq_7 ),
    .gpio_irq_8           (gpio_irq_8 ),
    .gpio_irq_9           (gpio_irq_9 ),
    .gpio_irq_10          (gpio_irq_10),
    .gpio_irq_11          (gpio_irq_11),
    .gpio_irq_12            (gpio_irq_12),
    .gpio_irq_13            (gpio_irq_13),
    .gpio_irq_14            (gpio_irq_14),
    .gpio_irq_15            (gpio_irq_15),
    .gpio_irq_16            (gpio_irq_16),
    .gpio_irq_17            (gpio_irq_17),
    .gpio_irq_18            (gpio_irq_18),
    .gpio_irq_19            (gpio_irq_19),
    .gpio_irq_20            (gpio_irq_20),
    .gpio_irq_21            (gpio_irq_21),
    .gpio_irq_22            (gpio_irq_22),
    .gpio_irq_23            (gpio_irq_23),
    .gpio_irq_24            (gpio_irq_24),
    .gpio_irq_25            (gpio_irq_25),
    .gpio_irq_26            (gpio_irq_26),
    .gpio_irq_27            (gpio_irq_27),
    .gpio_irq_28            (gpio_irq_28),
    .gpio_irq_29            (gpio_irq_29),
    .gpio_irq_30            (gpio_irq_30),
    .gpio_irq_31            (gpio_irq_31),

    .clk                    (clk_bus  ),
    .bus_rst_n              (sys_rst_n), 
    .rst_n                  (sys_rst_n) 
  );

  ux607_subsys_mems u_ux607_subsys_mems(
     

      `ifdef UX607_MEM_TYPE_ICB 
    .mem_icb_cmd_valid  (mem_icb_cmd_valid),
    .mem_icb_cmd_ready  (mem_icb_cmd_ready),
    .mem_icb_cmd_addr   (mem_icb_cmd_addr ),
    .mem_icb_cmd_read   (mem_icb_cmd_read ),
    .mem_icb_cmd_excl   (mem_icb_cmd_excl ),
    .mem_icb_cmd_wdata  (mem_icb_cmd_wdata),
    .mem_icb_cmd_wmask  (mem_icb_cmd_wmask),
    .mem_icb_cmd_hlock  (1'b0),
    
    .mem_icb_rsp_valid  (mem_icb_rsp_valid),
    .mem_icb_rsp_ready  (mem_icb_rsp_ready),
    .mem_icb_rsp_err    (mem_icb_rsp_err  ),
    .mem_icb_rsp_excl_ok(mem_icb_rsp_excl_ok),
    .mem_icb_rsp_rdata  (mem_icb_rsp_rdata),
      `endif

      `ifndef UX607_D_SHARE_ILM 
     
    .biu2ilm_icb_cmd_valid (biu2ilm_icb_cmd_valid),
    .biu2ilm_icb_cmd_ready (biu2ilm_icb_cmd_ready),
    .biu2ilm_icb_cmd_addr  (biu2ilm_icb_cmd_addr ), 
    .biu2ilm_icb_cmd_read  (biu2ilm_icb_cmd_read ), 
    .biu2ilm_icb_cmd_wdata (biu2ilm_icb_cmd_wdata),
    .biu2ilm_icb_cmd_wmask (biu2ilm_icb_cmd_wmask),
    
    .biu2ilm_icb_rsp_valid (biu2ilm_icb_rsp_valid),
    .biu2ilm_icb_rsp_ready (biu2ilm_icb_rsp_ready),
    .biu2ilm_icb_rsp_err   (biu2ilm_icb_rsp_err  ),
    .biu2ilm_icb_rsp_rdata (biu2ilm_icb_rsp_rdata),
     
      `endif
     

    .biu2dlm_icb_cmd_valid (biu2dlm_icb_cmd_valid),
    .biu2dlm_icb_cmd_ready (biu2dlm_icb_cmd_ready),
    .biu2dlm_icb_cmd_addr  (biu2dlm_icb_cmd_addr ), 
    .biu2dlm_icb_cmd_read  (biu2dlm_icb_cmd_read ), 
    .biu2dlm_icb_cmd_wdata (biu2dlm_icb_cmd_wdata),
    .biu2dlm_icb_cmd_wmask (biu2dlm_icb_cmd_wmask),
    
    .biu2dlm_icb_rsp_valid (biu2dlm_icb_rsp_valid),
    .biu2dlm_icb_rsp_ready (biu2dlm_icb_rsp_ready),
    .biu2dlm_icb_rsp_err   (biu2dlm_icb_rsp_err  ),
    .biu2dlm_icb_rsp_rdata (biu2dlm_icb_rsp_rdata),


     
      `ifdef UX607_MEM_TYPE_AHBL 
     
    .mem_ahbl_htrans    (mem_ahbl_htrans),   
    .mem_ahbl_hwrite    (mem_ahbl_hwrite),   
    .mem_ahbl_haddr     (mem_ahbl_haddr ),   
    .mem_ahbl_hsize     (mem_ahbl_hsize[1:0]),   
    .mem_ahbl_hlock     (mem_ahbl_hlock ),  
    .mem_ahbl_hexcl     (1'b0 ),  
    .mem_ahbl_hburst    (mem_ahbl_hburst),   
    .mem_ahbl_hwdata    (mem_ahbl_hwdata),   
    .mem_ahbl_hrdata    (mem_ahbl_hrdata),   
    .mem_ahbl_hresp     (mem_ahbl_hresp ),   
    .mem_ahbl_hresp_exok(),   
    .mem_ahbl_hready    (mem_ahbl_hready),   
     
      `endif
     
     
    `ifdef UX607_MEM_TYPE_AXI
     .axi_arready      (o1_axi_arready),
     .axi_arvalid      (o1_axi_arvalid),
     
     .axi_araddr       (o1_axi_araddr),
     .axi_arlen        (o1_axi_arlen),
     .axi_arsize       (o1_axi_arsize),
     .axi_arburst      (o1_axi_arburst),
     .axi_arlock       (o1_axi_arlock),
     .axi_arcache      (o1_axi_arcache),
     .axi_arprot       (o1_axi_arprot),
     
     
     
     .axi_awready      (o1_axi_awready),
     .axi_awvalid      (o1_axi_awvalid),
     
     .axi_awaddr       (o1_axi_awaddr),
     .axi_awlen        (o1_axi_awlen),
     .axi_awsize       (o1_axi_awsize),
     .axi_awburst      (o1_axi_awburst),
     .axi_awlock       (o1_axi_awlock),
     .axi_awcache      (o1_axi_awcache),
     .axi_awprot       (o1_axi_awprot),
     
     
     
     .axi_wready       (o1_axi_wready),
     .axi_wvalid       (o1_axi_wvalid),
     
     .axi_wdata        (o1_axi_wdata),
     .axi_wstrb        (o1_axi_wstrb),
     .axi_wlast        (o1_axi_wlast),
     .axi_rready       (o1_axi_rready),
     .axi_rvalid       (o1_axi_rvalid),
     
     .axi_rdata        (o1_axi_rdata),
     .axi_rresp        (o1_axi_rresp),
     .axi_rlast        (o1_axi_rlast),
     .axi_bready       (o1_axi_bready),
     .axi_bvalid       (o1_axi_bvalid),
     
     .axi_bresp        (o1_axi_bresp),
     .axi_bus_clk_en   (bus_clk_en),
     `endif
 

    .qspi0_ro_icb_cmd_valid  (qspi0_ro_icb_cmd_valid), 
    .qspi0_ro_icb_cmd_ready  (qspi0_ro_icb_cmd_ready),
    .qspi0_ro_icb_cmd_addr   (qspi0_ro_icb_cmd_addr ),
    .qspi0_ro_icb_cmd_read   (qspi0_ro_icb_cmd_read ),
    .qspi0_ro_icb_cmd_wdata  (qspi0_ro_icb_cmd_wdata),
                             
    .qspi0_ro_icb_rsp_valid  (qspi0_ro_icb_rsp_valid),
    .qspi0_ro_icb_rsp_ready  (qspi0_ro_icb_rsp_ready),
    .qspi0_ro_icb_rsp_err    (1'b0  ),
    .qspi0_ro_icb_rsp_rdata  (qspi0_ro_icb_rsp_rdata),
                           
     
  `ifndef UX607_HAS_PPI 
     
    .biu2ppi_icb_cmd_valid     (biu2ppi_icb_cmd_valid),
    .biu2ppi_icb_cmd_ready     (biu2ppi_icb_cmd_ready),
    .biu2ppi_icb_cmd_addr      (biu2ppi_icb_cmd_addr ),
    .biu2ppi_icb_cmd_read      (biu2ppi_icb_cmd_read ),
    .biu2ppi_icb_cmd_wdata     (biu2ppi_icb_cmd_wdata),
    .biu2ppi_icb_cmd_wmask     (biu2ppi_icb_cmd_wmask),
    
    .biu2ppi_icb_rsp_valid     (biu2ppi_icb_rsp_valid),
    .biu2ppi_icb_rsp_ready     (biu2ppi_icb_rsp_ready),
    .biu2ppi_icb_rsp_err       (biu2ppi_icb_rsp_err  ),
    .biu2ppi_icb_rsp_rdata     (biu2ppi_icb_rsp_rdata),
     
  `endif
     

    .clk           (clk_bus  ),
    .bus_rst_n     (sys_rst_n), 
    .rst_n         (sys_rst_n) 
  );


     
 ux607_subsys_srams u_ux607_subsys_srams(
    .clk (sys_clk),
  `ifdef UX607_HAS_DCACHE
    .rst_dcache_ram           (sys_rst_n         ),
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

  `ifdef UX607_HAS_ICACHE 
    .rst_icache_ram       (sys_rst_n),

    .icache_tag0_cs       (icache_tag0_cs   ),
    .icache_tag0_we       (icache_tag0_we   ),
    .icache_tag0_addr     (icache_tag0_addr ),
    .icache_tag0_wdata    (icache_tag0_wdata),        
    .icache_tag0_rdata     (icache_tag0_rdata ),
    .clk_icache_tag0      (clk_icache_tag0),
                                                
    .icache_data0_cs       (icache_data0_cs   ),
    .icache_data0_we       (icache_data0_we   ),
    .icache_data0_addr     (icache_data0_addr ),
    .icache_data0_wdata    (icache_data0_wdata),        
    .icache_data0_rdata     (icache_data0_rdata ),
    .clk_icache_data0      (clk_icache_data0),
                                                
    `ifndef UX607_ICACHE_1WAYS
    .icache_tag1_cs       (icache_tag1_cs   ),
    .icache_tag1_we       (icache_tag1_we   ),
    .icache_tag1_addr     (icache_tag1_addr ),
    .icache_tag1_wdata    (icache_tag1_wdata),        
    .icache_tag1_rdata     (icache_tag1_rdata ),
    .clk_icache_tag1      (clk_icache_tag1),

    .icache_data1_cs       (icache_data1_cs   ),
    .icache_data1_we       (icache_data1_we   ),
    .icache_data1_addr     (icache_data1_addr ),
    .icache_data1_wdata    (icache_data1_wdata),        
    .icache_data1_rdata     (icache_data1_rdata ),
    .clk_icache_data1      (clk_icache_data1),
    `endif

    `ifdef UX607_ICACHE_1WAYS
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
    `endif

    `ifdef UX607_ICACHE_8WAYS
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
    `endif


  `endif

  `ifdef UX607_HAS_MMU
    .rst_tlb_ram          (sys_rst_n           ),
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
  
    .dummy(1'b0)
  );
     


  `ifdef UX607_HAS_NICE 
    `ifndef UX607_NICE_UVC
ux607_subsys_nice_core  u_ux607_subsys_nice_core(
    .nice_clk             (nice_clk            ),
    .nice_rst_n           (sys_rst_n          ),
    .nice_active          (nice_active         ),
    .nice_mem_holdup      (nice_mem_holdup     ),

    .nice_req_valid       (nice_req_valid      ),
    .nice_req_ready       (nice_req_ready      ),
    .nice_req_inst        (nice_req_instr      ),
    .nice_req_rs1         (nice_req_rs1        ),
    .nice_req_rs2         (nice_req_rs2        ),
  `ifdef UX607_NICE_1CYC_64OP
    .nice_req_rs1_1       (nice_req_rs1_1      ),
    .nice_req_rs2_1       (nice_req_rs2_1      ),
  `endif
    .nice_req_mmode       (nice_req_mmode      ),
  `ifdef UX607_HAS_SMODE
    .nice_req_smode       (nice_req_smode      ),
  `endif
    .nice_1cyc_type       (nice_1cyc_type      ),
    .nice_1cyc_rdat       (nice_1cyc_rdat      ),	
  `ifdef UX607_NICE_1CYC_64OP
    .nice_1cyc_rdat_1     (nice_1cyc_rdat_1    ),	
  `endif
    .nice_1cyc_err        (nice_1cyc_err       ),	
    .nice_rsp_valid       (nice_rsp_valid      ),
    .nice_rsp_ready       (nice_rsp_ready      ),
    .nice_rsp_rdat        (nice_rsp_rdat       ),
    .nice_rsp_err         (nice_rsp_err        ),
    .nice_icb_cmd_valid   (nice_icb_cmd_valid  ),
    .nice_icb_cmd_ready   (nice_icb_cmd_ready  ),
    .nice_icb_cmd_addr    (nice_icb_cmd_addr   ),
    .nice_icb_cmd_read    (nice_icb_cmd_read   ),
    .nice_icb_cmd_wdata   (nice_icb_cmd_wdata  ),
    .nice_icb_cmd_size    (nice_icb_cmd_size   ),
    .nice_icb_cmd_mmode   (nice_icb_cmd_mmode  ),
  `ifdef UX607_HAS_SMODE
    .nice_icb_cmd_smode   (nice_icb_cmd_smode  ),
  `endif
    .nice_icb_rsp_valid   (nice_icb_rsp_valid  ),
    .nice_icb_rsp_ready   (nice_icb_rsp_ready  ),
    .nice_icb_rsp_rdata   (nice_icb_rsp_rdata  ),
    .nice_icb_rsp_err	  (nice_icb_rsp_err	   )
);
    `endif
  `endif
  
  `ifdef DDR_CONTROLLER
  wire device_temp;
  wire app_zq_ack;
  wire app_ref_ack;
  wire app_sr_active;
  ddr3  u_mig7_ux607
      (

       .ddr3_addr                      (ddr3_addr),
       .ddr3_ba                        (ddr3_ba),
       .ddr3_cas_n                     (ddr3_cas_n),
       .ddr3_ck_n                      (ddr3_ck_n),
       .ddr3_ck_p                      (ddr3_ck_p),
       .ddr3_cke                       (ddr3_cke),
       .ddr3_ras_n                     (ddr3_ras_n),
       .ddr3_we_n                      (ddr3_we_n),
       .ddr3_dq                        (ddr3_dq),
       .ddr3_dqs_n                     (ddr3_dqs_n),
       .ddr3_dqs_p                     (ddr3_dqs_p),
       .ddr3_reset_n                   (ddr3_reset_n),

       .init_calib_complete            (init_calib_complete),

       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),


       .ui_clk                         (ui_clk),
       .ui_clk_sync_rst                (ui_clk_sync_rst),
       .mmcm_locked                    (mmcm_locked),

       .aresetn                        (sys_rst_n),

       .app_sr_req                     (1'b0),
       .app_ref_req                    (1'b0),
       .app_zq_req                     (1'b0),
       .app_sr_active                  (app_sr_active),
       .app_ref_ack                    (app_ref_ack),
       .app_zq_ack                     (app_zq_ack),


       .s_axi_awid                     (ddr_axi_awid),
       .s_axi_awaddr                   (ddr_axi_awaddr),
       .s_axi_awlen                    (ddr_axi_awlen),
       .s_axi_awsize                   (ddr_axi_awsize),
       .s_axi_awburst                  (ddr_axi_awburst),
       .s_axi_awlock                   (ddr_axi_awlock),
       .s_axi_awcache                  (ddr_axi_awcache),
       .s_axi_awprot                   (ddr_axi_awprot),
       .s_axi_awvalid                  (ddr_axi_awvalid),
       .s_axi_awready                  (ddr_axi_awready),

       .s_axi_wdata                    (ddr_axi_wdata),
       .s_axi_wstrb                    (ddr_axi_wstrb),
       .s_axi_wlast                    (ddr_axi_wlast),
       .s_axi_wvalid                   (ddr_axi_wvalid),
       .s_axi_wready                   (ddr_axi_wready),

       .s_axi_bid                      (ddr_axi_bid),
       .s_axi_bresp                    (ddr_axi_bresp),
       .s_axi_bvalid                   (ddr_axi_bvalid),
       .s_axi_bready                   (ddr_axi_bready),

       .s_axi_arid                     (ddr_axi_arid),
       .s_axi_araddr                   (ddr_axi_araddr),
       .s_axi_arlen                    (ddr_axi_arlen),
       .s_axi_arsize                   (ddr_axi_arsize),
       .s_axi_arburst                  (ddr_axi_arburst),
       .s_axi_arlock                   (ddr_axi_arlock),
       .s_axi_arcache                  (ddr_axi_arcache),
       .s_axi_arprot                   (ddr_axi_arprot),
       .s_axi_arvalid                  (ddr_axi_arvalid),
       .s_axi_arready                  (ddr_axi_arready),

       .s_axi_rid                      (ddr_axi_rid),
       .s_axi_rdata                    (ddr_axi_rdata),
       .s_axi_rresp                    (ddr_axi_rresp),
       .s_axi_rlast                    (ddr_axi_rlast),
       .s_axi_rvalid                   (ddr_axi_rvalid),
       .s_axi_rready                   (ddr_axi_rready),

       .s_axi_arqos                    (4'h0), 
       .s_axi_awqos                    (4'h0),        

       .sys_clk_i                       (ddr3_sys_clk_i),
       .device_temp                     (device_temp),

       `ifdef SKIP_CALIB

       .calib_tap_req                    (calib_tap_req),
       .calib_tap_load                   (calib_tap_load),
       .calib_tap_addr                   (calib_tap_addr),
       .calib_tap_val                    (calib_tap_val),
       .calib_tap_load_done              (calib_tap_load_done),

       `endif

       .sys_rst                        (ddr3_sys_rst_i)

       );
    `endif


endmodule
