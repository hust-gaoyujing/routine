 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         
module ux607_soc_top(
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
   

  
  input  por_rst_n,

  
  input  sys_rst_n,
        
  
  input  sys_clk,
      
  
  input  aon_clk,
      

  input  evt_i,
  input  nmi_i,

  output core_wfi_mode,
  output core_sleep_value,

  
  input   io_pads_jtag_TCK_i_ival,

  
  input   io_pads_jtag_TMS_i_ival,

  
  input   io_pads_jtag_TDI_i_ival,

  
  output  io_pads_jtag_TDO_o_oval,

  
  input   io_pads_gpio_0_i_ival,
  output  io_pads_gpio_0_o_oval,
  output  io_pads_gpio_0_o_oe,
  output  io_pads_gpio_0_o_ie,
  output  io_pads_gpio_0_o_pue,
  output  io_pads_gpio_0_o_ds,
  input   io_pads_gpio_1_i_ival,
  output  io_pads_gpio_1_o_oval,
  output  io_pads_gpio_1_o_oe,
  output  io_pads_gpio_1_o_ie,
  output  io_pads_gpio_1_o_pue,
  output  io_pads_gpio_1_o_ds,
  input   io_pads_gpio_2_i_ival,
  output  io_pads_gpio_2_o_oval,
  output  io_pads_gpio_2_o_oe,
  output  io_pads_gpio_2_o_ie,
  output  io_pads_gpio_2_o_pue,
  output  io_pads_gpio_2_o_ds,
  input   io_pads_gpio_3_i_ival,
  output  io_pads_gpio_3_o_oval,
  output  io_pads_gpio_3_o_oe,
  output  io_pads_gpio_3_o_ie,
  output  io_pads_gpio_3_o_pue,
  output  io_pads_gpio_3_o_ds,
  input   io_pads_gpio_4_i_ival,
  output  io_pads_gpio_4_o_oval,
  output  io_pads_gpio_4_o_oe,
  output  io_pads_gpio_4_o_ie,
  output  io_pads_gpio_4_o_pue,
  output  io_pads_gpio_4_o_ds,
  input   io_pads_gpio_5_i_ival,
  output  io_pads_gpio_5_o_oval,
  output  io_pads_gpio_5_o_oe,
  output  io_pads_gpio_5_o_ie,
  output  io_pads_gpio_5_o_pue,
  output  io_pads_gpio_5_o_ds,
  input   io_pads_gpio_6_i_ival,
  output  io_pads_gpio_6_o_oval,
  output  io_pads_gpio_6_o_oe,
  output  io_pads_gpio_6_o_ie,
  output  io_pads_gpio_6_o_pue,
  output  io_pads_gpio_6_o_ds,
  input   io_pads_gpio_7_i_ival,
  output  io_pads_gpio_7_o_oval,
  output  io_pads_gpio_7_o_oe,
  output  io_pads_gpio_7_o_ie,
  output  io_pads_gpio_7_o_pue,
  output  io_pads_gpio_7_o_ds,
  input   io_pads_gpio_8_i_ival,
  output  io_pads_gpio_8_o_oval,
  output  io_pads_gpio_8_o_oe,
  output  io_pads_gpio_8_o_ie,
  output  io_pads_gpio_8_o_pue,
  output  io_pads_gpio_8_o_ds,
  input   io_pads_gpio_9_i_ival,
  output  io_pads_gpio_9_o_oval,
  output  io_pads_gpio_9_o_oe,
  output  io_pads_gpio_9_o_ie,
  output  io_pads_gpio_9_o_pue,
  output  io_pads_gpio_9_o_ds,
  input   io_pads_gpio_10_i_ival,
  output  io_pads_gpio_10_o_oval,
  output  io_pads_gpio_10_o_oe,
  output  io_pads_gpio_10_o_ie,
  output  io_pads_gpio_10_o_pue,
  output  io_pads_gpio_10_o_ds,
  input   io_pads_gpio_11_i_ival,
  output  io_pads_gpio_11_o_oval,
  output  io_pads_gpio_11_o_oe,
  output  io_pads_gpio_11_o_ie,
  output  io_pads_gpio_11_o_pue,
  output  io_pads_gpio_11_o_ds,
  input   io_pads_gpio_12_i_ival,
  output  io_pads_gpio_12_o_oval,
  output  io_pads_gpio_12_o_oe,
  output  io_pads_gpio_12_o_ie,
  output  io_pads_gpio_12_o_pue,
  output  io_pads_gpio_12_o_ds,
  input   io_pads_gpio_13_i_ival,
  output  io_pads_gpio_13_o_oval,
  output  io_pads_gpio_13_o_oe,
  output  io_pads_gpio_13_o_ie,
  output  io_pads_gpio_13_o_pue,
  output  io_pads_gpio_13_o_ds,
  input   io_pads_gpio_14_i_ival,
  output  io_pads_gpio_14_o_oval,
  output  io_pads_gpio_14_o_oe,
  output  io_pads_gpio_14_o_ie,
  output  io_pads_gpio_14_o_pue,
  output  io_pads_gpio_14_o_ds,
  input   io_pads_gpio_15_i_ival,
  output  io_pads_gpio_15_o_oval,
  output  io_pads_gpio_15_o_oe,
  output  io_pads_gpio_15_o_ie,
  output  io_pads_gpio_15_o_pue,
  output  io_pads_gpio_15_o_ds,
  input   io_pads_gpio_16_i_ival,
  output  io_pads_gpio_16_o_oval,
  output  io_pads_gpio_16_o_oe,
  output  io_pads_gpio_16_o_ie,
  output  io_pads_gpio_16_o_pue,
  output  io_pads_gpio_16_o_ds,
  input   io_pads_gpio_17_i_ival,
  output  io_pads_gpio_17_o_oval,
  output  io_pads_gpio_17_o_oe,
  output  io_pads_gpio_17_o_ie,
  output  io_pads_gpio_17_o_pue,
  output  io_pads_gpio_17_o_ds,
  input   io_pads_gpio_18_i_ival,
  output  io_pads_gpio_18_o_oval,
  output  io_pads_gpio_18_o_oe,
  output  io_pads_gpio_18_o_ie,
  output  io_pads_gpio_18_o_pue,
  output  io_pads_gpio_18_o_ds,
  input   io_pads_gpio_19_i_ival,
  output  io_pads_gpio_19_o_oval,
  output  io_pads_gpio_19_o_oe,
  output  io_pads_gpio_19_o_ie,
  output  io_pads_gpio_19_o_pue,
  output  io_pads_gpio_19_o_ds,
  input   io_pads_gpio_20_i_ival,
  output  io_pads_gpio_20_o_oval,
  output  io_pads_gpio_20_o_oe,
  output  io_pads_gpio_20_o_ie,
  output  io_pads_gpio_20_o_pue,
  output  io_pads_gpio_20_o_ds,
  input   io_pads_gpio_21_i_ival,
  output  io_pads_gpio_21_o_oval,
  output  io_pads_gpio_21_o_oe,
  output  io_pads_gpio_21_o_ie,
  output  io_pads_gpio_21_o_pue,
  output  io_pads_gpio_21_o_ds,
  input   io_pads_gpio_22_i_ival,
  output  io_pads_gpio_22_o_oval,
  output  io_pads_gpio_22_o_oe,
  output  io_pads_gpio_22_o_ie,
  output  io_pads_gpio_22_o_pue,
  output  io_pads_gpio_22_o_ds,
  input   io_pads_gpio_23_i_ival,
  output  io_pads_gpio_23_o_oval,
  output  io_pads_gpio_23_o_oe,
  output  io_pads_gpio_23_o_ie,
  output  io_pads_gpio_23_o_pue,
  output  io_pads_gpio_23_o_ds,
  input   io_pads_gpio_24_i_ival,
  output  io_pads_gpio_24_o_oval,
  output  io_pads_gpio_24_o_oe,
  output  io_pads_gpio_24_o_ie,
  output  io_pads_gpio_24_o_pue,
  output  io_pads_gpio_24_o_ds,
  input   io_pads_gpio_25_i_ival,
  output  io_pads_gpio_25_o_oval,
  output  io_pads_gpio_25_o_oe,
  output  io_pads_gpio_25_o_ie,
  output  io_pads_gpio_25_o_pue,
  output  io_pads_gpio_25_o_ds,
  input   io_pads_gpio_26_i_ival,
  output  io_pads_gpio_26_o_oval,
  output  io_pads_gpio_26_o_oe,
  output  io_pads_gpio_26_o_ie,
  output  io_pads_gpio_26_o_pue,
  output  io_pads_gpio_26_o_ds,
  input   io_pads_gpio_27_i_ival,
  output  io_pads_gpio_27_o_oval,
  output  io_pads_gpio_27_o_oe,
  output  io_pads_gpio_27_o_ie,
  output  io_pads_gpio_27_o_pue,
  output  io_pads_gpio_27_o_ds,
  input   io_pads_gpio_28_i_ival,
  output  io_pads_gpio_28_o_oval,
  output  io_pads_gpio_28_o_oe,
  output  io_pads_gpio_28_o_ie,
  output  io_pads_gpio_28_o_pue,
  output  io_pads_gpio_28_o_ds,
  input   io_pads_gpio_29_i_ival,
  output  io_pads_gpio_29_o_oval,
  output  io_pads_gpio_29_o_oe,
  output  io_pads_gpio_29_o_ie,
  output  io_pads_gpio_29_o_pue,
  output  io_pads_gpio_29_o_ds,
  input   io_pads_gpio_30_i_ival,
  output  io_pads_gpio_30_o_oval,
  output  io_pads_gpio_30_o_oe,
  output  io_pads_gpio_30_o_ie,
  output  io_pads_gpio_30_o_pue,
  output  io_pads_gpio_30_o_ds,
  input   io_pads_gpio_31_i_ival,
  output  io_pads_gpio_31_o_oval,
  output  io_pads_gpio_31_o_oe,
  output  io_pads_gpio_31_o_ie,
  output  io_pads_gpio_31_o_pue,
  output  io_pads_gpio_31_o_ds,


  
  output  io_pads_qspi_sck_o_oval,
  output  io_pads_qspi_cs_0_o_oval,

  
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
  output  io_pads_qspi_dq_3_o_ds 
 );


 

 ux607_subsys_top u_ux607_subsys_top(

  .por_rst_n(por_rst_n),
  .sys_rst_n(sys_rst_n),
  .sys_clk  (sys_clk  ),
  .aon_clk  (aon_clk  ),


  .jtag_tdi                        (io_pads_jtag_TDI_i_ival),     
  .jtag_tdo                        (io_pads_jtag_TDO_o_oval),
  .jtag_tms                        (io_pads_jtag_TMS_i_ival),
  .jtag_tck                        (io_pads_jtag_TCK_i_ival),

  .test_mode(1'b0),

  .io_pads_gpio_0_i_ival           (io_pads_gpio_0_i_ival & io_pads_gpio_0_o_ie),
  .io_pads_gpio_0_o_oval           (io_pads_gpio_0_o_oval),
  .io_pads_gpio_0_o_oe             (io_pads_gpio_0_o_oe),
  .io_pads_gpio_0_o_ie             (io_pads_gpio_0_o_ie),
  .io_pads_gpio_0_o_pue            (io_pads_gpio_0_o_pue),
  .io_pads_gpio_0_o_ds             (io_pads_gpio_0_o_ds),

  .io_pads_gpio_1_i_ival           (io_pads_gpio_1_i_ival & io_pads_gpio_1_o_ie),
  .io_pads_gpio_1_o_oval           (io_pads_gpio_1_o_oval),
  .io_pads_gpio_1_o_oe             (io_pads_gpio_1_o_oe),
  .io_pads_gpio_1_o_ie             (io_pads_gpio_1_o_ie),
  .io_pads_gpio_1_o_pue            (io_pads_gpio_1_o_pue),
  .io_pads_gpio_1_o_ds             (io_pads_gpio_1_o_ds),

  .io_pads_gpio_2_i_ival           (io_pads_gpio_2_i_ival & io_pads_gpio_2_o_ie),
  .io_pads_gpio_2_o_oval           (io_pads_gpio_2_o_oval),
  .io_pads_gpio_2_o_oe             (io_pads_gpio_2_o_oe),
  .io_pads_gpio_2_o_ie             (io_pads_gpio_2_o_ie),
  .io_pads_gpio_2_o_pue            (io_pads_gpio_2_o_pue),
  .io_pads_gpio_2_o_ds             (io_pads_gpio_2_o_ds),

  .io_pads_gpio_3_i_ival           (io_pads_gpio_3_i_ival & io_pads_gpio_3_o_ie),
  .io_pads_gpio_3_o_oval           (io_pads_gpio_3_o_oval),
  .io_pads_gpio_3_o_oe             (io_pads_gpio_3_o_oe),
  .io_pads_gpio_3_o_ie             (io_pads_gpio_3_o_ie),
  .io_pads_gpio_3_o_pue            (io_pads_gpio_3_o_pue),
  .io_pads_gpio_3_o_ds             (io_pads_gpio_3_o_ds),

  .io_pads_gpio_4_i_ival           (io_pads_gpio_4_i_ival & io_pads_gpio_4_o_ie),
  .io_pads_gpio_4_o_oval           (io_pads_gpio_4_o_oval),
  .io_pads_gpio_4_o_oe             (io_pads_gpio_4_o_oe),
  .io_pads_gpio_4_o_ie             (io_pads_gpio_4_o_ie),
  .io_pads_gpio_4_o_pue            (io_pads_gpio_4_o_pue),
  .io_pads_gpio_4_o_ds             (io_pads_gpio_4_o_ds),

  .io_pads_gpio_5_i_ival           (io_pads_gpio_5_i_ival & io_pads_gpio_5_o_ie),
  .io_pads_gpio_5_o_oval           (io_pads_gpio_5_o_oval),
  .io_pads_gpio_5_o_oe             (io_pads_gpio_5_o_oe),
  .io_pads_gpio_5_o_ie             (io_pads_gpio_5_o_ie),
  .io_pads_gpio_5_o_pue            (io_pads_gpio_5_o_pue),
  .io_pads_gpio_5_o_ds             (io_pads_gpio_5_o_ds),

  .io_pads_gpio_6_i_ival           (io_pads_gpio_6_i_ival & io_pads_gpio_6_o_ie),
  .io_pads_gpio_6_o_oval           (io_pads_gpio_6_o_oval),
  .io_pads_gpio_6_o_oe             (io_pads_gpio_6_o_oe),
  .io_pads_gpio_6_o_ie             (io_pads_gpio_6_o_ie),
  .io_pads_gpio_6_o_pue            (io_pads_gpio_6_o_pue),
  .io_pads_gpio_6_o_ds             (io_pads_gpio_6_o_ds),

  .io_pads_gpio_7_i_ival           (io_pads_gpio_7_i_ival & io_pads_gpio_7_o_ie),
  .io_pads_gpio_7_o_oval           (io_pads_gpio_7_o_oval),
  .io_pads_gpio_7_o_oe             (io_pads_gpio_7_o_oe),
  .io_pads_gpio_7_o_ie             (io_pads_gpio_7_o_ie),
  .io_pads_gpio_7_o_pue            (io_pads_gpio_7_o_pue),
  .io_pads_gpio_7_o_ds             (io_pads_gpio_7_o_ds),

  .io_pads_gpio_8_i_ival           (io_pads_gpio_8_i_ival & io_pads_gpio_8_o_ie),
  .io_pads_gpio_8_o_oval           (io_pads_gpio_8_o_oval),
  .io_pads_gpio_8_o_oe             (io_pads_gpio_8_o_oe),
  .io_pads_gpio_8_o_ie             (io_pads_gpio_8_o_ie),
  .io_pads_gpio_8_o_pue            (io_pads_gpio_8_o_pue),
  .io_pads_gpio_8_o_ds             (io_pads_gpio_8_o_ds),

  .io_pads_gpio_9_i_ival           (io_pads_gpio_9_i_ival & io_pads_gpio_9_o_ie),
  .io_pads_gpio_9_o_oval           (io_pads_gpio_9_o_oval),
  .io_pads_gpio_9_o_oe             (io_pads_gpio_9_o_oe),
  .io_pads_gpio_9_o_ie             (io_pads_gpio_9_o_ie),
  .io_pads_gpio_9_o_pue            (io_pads_gpio_9_o_pue),
  .io_pads_gpio_9_o_ds             (io_pads_gpio_9_o_ds),

  .io_pads_gpio_10_i_ival          (io_pads_gpio_10_i_ival & io_pads_gpio_10_o_ie),
  .io_pads_gpio_10_o_oval          (io_pads_gpio_10_o_oval),
  .io_pads_gpio_10_o_oe            (io_pads_gpio_10_o_oe),
  .io_pads_gpio_10_o_ie            (io_pads_gpio_10_o_ie),
  .io_pads_gpio_10_o_pue           (io_pads_gpio_10_o_pue),
  .io_pads_gpio_10_o_ds            (io_pads_gpio_10_o_ds),

  .io_pads_gpio_11_i_ival          (io_pads_gpio_11_i_ival & io_pads_gpio_11_o_ie),
  .io_pads_gpio_11_o_oval          (io_pads_gpio_11_o_oval),
  .io_pads_gpio_11_o_oe            (io_pads_gpio_11_o_oe),
  .io_pads_gpio_11_o_ie            (io_pads_gpio_11_o_ie),
  .io_pads_gpio_11_o_pue           (io_pads_gpio_11_o_pue),
  .io_pads_gpio_11_o_ds            (io_pads_gpio_11_o_ds),

  .io_pads_gpio_12_i_ival          (io_pads_gpio_12_i_ival & io_pads_gpio_12_o_ie),
  .io_pads_gpio_12_o_oval          (io_pads_gpio_12_o_oval),
  .io_pads_gpio_12_o_oe            (io_pads_gpio_12_o_oe),
  .io_pads_gpio_12_o_ie            (io_pads_gpio_12_o_ie),
  .io_pads_gpio_12_o_pue           (io_pads_gpio_12_o_pue),
  .io_pads_gpio_12_o_ds            (io_pads_gpio_12_o_ds),

  .io_pads_gpio_13_i_ival          (io_pads_gpio_13_i_ival & io_pads_gpio_13_o_ie),
  .io_pads_gpio_13_o_oval          (io_pads_gpio_13_o_oval),
  .io_pads_gpio_13_o_oe            (io_pads_gpio_13_o_oe),
  .io_pads_gpio_13_o_ie            (io_pads_gpio_13_o_ie),
  .io_pads_gpio_13_o_pue           (io_pads_gpio_13_o_pue),
  .io_pads_gpio_13_o_ds            (io_pads_gpio_13_o_ds),

  .io_pads_gpio_14_i_ival          (io_pads_gpio_14_i_ival & io_pads_gpio_14_o_ie),
  .io_pads_gpio_14_o_oval          (io_pads_gpio_14_o_oval),
  .io_pads_gpio_14_o_oe            (io_pads_gpio_14_o_oe),
  .io_pads_gpio_14_o_ie            (io_pads_gpio_14_o_ie),
  .io_pads_gpio_14_o_pue           (io_pads_gpio_14_o_pue),
  .io_pads_gpio_14_o_ds            (io_pads_gpio_14_o_ds),

  .io_pads_gpio_15_i_ival          (io_pads_gpio_15_i_ival & io_pads_gpio_15_o_ie),
  .io_pads_gpio_15_o_oval          (io_pads_gpio_15_o_oval),
  .io_pads_gpio_15_o_oe            (io_pads_gpio_15_o_oe),
  .io_pads_gpio_15_o_ie            (io_pads_gpio_15_o_ie),
  .io_pads_gpio_15_o_pue           (io_pads_gpio_15_o_pue),
  .io_pads_gpio_15_o_ds            (io_pads_gpio_15_o_ds),

  .io_pads_gpio_16_i_ival          (io_pads_gpio_16_i_ival & io_pads_gpio_16_o_ie),
  .io_pads_gpio_16_o_oval          (io_pads_gpio_16_o_oval),
  .io_pads_gpio_16_o_oe            (io_pads_gpio_16_o_oe),
  .io_pads_gpio_16_o_ie            (io_pads_gpio_16_o_ie),
  .io_pads_gpio_16_o_pue           (io_pads_gpio_16_o_pue),
  .io_pads_gpio_16_o_ds            (io_pads_gpio_16_o_ds),

  .io_pads_gpio_17_i_ival          (io_pads_gpio_17_i_ival & io_pads_gpio_17_o_ie),
  .io_pads_gpio_17_o_oval          (io_pads_gpio_17_o_oval),
  .io_pads_gpio_17_o_oe            (io_pads_gpio_17_o_oe),
  .io_pads_gpio_17_o_ie            (io_pads_gpio_17_o_ie),
  .io_pads_gpio_17_o_pue           (io_pads_gpio_17_o_pue),
  .io_pads_gpio_17_o_ds            (io_pads_gpio_17_o_ds),

  .io_pads_gpio_18_i_ival          (io_pads_gpio_18_i_ival & io_pads_gpio_18_o_ie),
  .io_pads_gpio_18_o_oval          (io_pads_gpio_18_o_oval),
  .io_pads_gpio_18_o_oe            (io_pads_gpio_18_o_oe),
  .io_pads_gpio_18_o_ie            (io_pads_gpio_18_o_ie),
  .io_pads_gpio_18_o_pue           (io_pads_gpio_18_o_pue),
  .io_pads_gpio_18_o_ds            (io_pads_gpio_18_o_ds),

  .io_pads_gpio_19_i_ival          (io_pads_gpio_19_i_ival & io_pads_gpio_19_o_ie),
  .io_pads_gpio_19_o_oval          (io_pads_gpio_19_o_oval),
  .io_pads_gpio_19_o_oe            (io_pads_gpio_19_o_oe),
  .io_pads_gpio_19_o_ie            (io_pads_gpio_19_o_ie),
  .io_pads_gpio_19_o_pue           (io_pads_gpio_19_o_pue),
  .io_pads_gpio_19_o_ds            (io_pads_gpio_19_o_ds),

  .io_pads_gpio_20_i_ival          (io_pads_gpio_20_i_ival & io_pads_gpio_20_o_ie),
  .io_pads_gpio_20_o_oval          (io_pads_gpio_20_o_oval),
  .io_pads_gpio_20_o_oe            (io_pads_gpio_20_o_oe),
  .io_pads_gpio_20_o_ie            (io_pads_gpio_20_o_ie),
  .io_pads_gpio_20_o_pue           (io_pads_gpio_20_o_pue),
  .io_pads_gpio_20_o_ds            (io_pads_gpio_20_o_ds),

  .io_pads_gpio_21_i_ival          (io_pads_gpio_21_i_ival & io_pads_gpio_21_o_ie),
  .io_pads_gpio_21_o_oval          (io_pads_gpio_21_o_oval),
  .io_pads_gpio_21_o_oe            (io_pads_gpio_21_o_oe),
  .io_pads_gpio_21_o_ie            (io_pads_gpio_21_o_ie),
  .io_pads_gpio_21_o_pue           (io_pads_gpio_21_o_pue),
  .io_pads_gpio_21_o_ds            (io_pads_gpio_21_o_ds),

  .io_pads_gpio_22_i_ival          (io_pads_gpio_22_i_ival & io_pads_gpio_22_o_ie),
  .io_pads_gpio_22_o_oval          (io_pads_gpio_22_o_oval),
  .io_pads_gpio_22_o_oe            (io_pads_gpio_22_o_oe),
  .io_pads_gpio_22_o_ie            (io_pads_gpio_22_o_ie),
  .io_pads_gpio_22_o_pue           (io_pads_gpio_22_o_pue),
  .io_pads_gpio_22_o_ds            (io_pads_gpio_22_o_ds),

  .io_pads_gpio_23_i_ival          (io_pads_gpio_23_i_ival & io_pads_gpio_23_o_ie),
  .io_pads_gpio_23_o_oval          (io_pads_gpio_23_o_oval),
  .io_pads_gpio_23_o_oe            (io_pads_gpio_23_o_oe),
  .io_pads_gpio_23_o_ie            (io_pads_gpio_23_o_ie),
  .io_pads_gpio_23_o_pue           (io_pads_gpio_23_o_pue),
  .io_pads_gpio_23_o_ds            (io_pads_gpio_23_o_ds),

  .io_pads_gpio_24_i_ival          (io_pads_gpio_24_i_ival & io_pads_gpio_24_o_ie),
  .io_pads_gpio_24_o_oval          (io_pads_gpio_24_o_oval),
  .io_pads_gpio_24_o_oe            (io_pads_gpio_24_o_oe),
  .io_pads_gpio_24_o_ie            (io_pads_gpio_24_o_ie),
  .io_pads_gpio_24_o_pue           (io_pads_gpio_24_o_pue),
  .io_pads_gpio_24_o_ds            (io_pads_gpio_24_o_ds),

  .io_pads_gpio_25_i_ival          (io_pads_gpio_25_i_ival & io_pads_gpio_25_o_ie),
  .io_pads_gpio_25_o_oval          (io_pads_gpio_25_o_oval),
  .io_pads_gpio_25_o_oe            (io_pads_gpio_25_o_oe),
  .io_pads_gpio_25_o_ie            (io_pads_gpio_25_o_ie),
  .io_pads_gpio_25_o_pue           (io_pads_gpio_25_o_pue),
  .io_pads_gpio_25_o_ds            (io_pads_gpio_25_o_ds),

  .io_pads_gpio_26_i_ival          (io_pads_gpio_26_i_ival & io_pads_gpio_26_o_ie),
  .io_pads_gpio_26_o_oval          (io_pads_gpio_26_o_oval),
  .io_pads_gpio_26_o_oe            (io_pads_gpio_26_o_oe),
  .io_pads_gpio_26_o_ie            (io_pads_gpio_26_o_ie),
  .io_pads_gpio_26_o_pue           (io_pads_gpio_26_o_pue),
  .io_pads_gpio_26_o_ds            (io_pads_gpio_26_o_ds),

  .io_pads_gpio_27_i_ival          (io_pads_gpio_27_i_ival & io_pads_gpio_27_o_ie),
  .io_pads_gpio_27_o_oval          (io_pads_gpio_27_o_oval),
  .io_pads_gpio_27_o_oe            (io_pads_gpio_27_o_oe),
  .io_pads_gpio_27_o_ie            (io_pads_gpio_27_o_ie),
  .io_pads_gpio_27_o_pue           (io_pads_gpio_27_o_pue),
  .io_pads_gpio_27_o_ds            (io_pads_gpio_27_o_ds),

  .io_pads_gpio_28_i_ival          (io_pads_gpio_28_i_ival & io_pads_gpio_28_o_ie),
  .io_pads_gpio_28_o_oval          (io_pads_gpio_28_o_oval),
  .io_pads_gpio_28_o_oe            (io_pads_gpio_28_o_oe),
  .io_pads_gpio_28_o_ie            (io_pads_gpio_28_o_ie),
  .io_pads_gpio_28_o_pue           (io_pads_gpio_28_o_pue),
  .io_pads_gpio_28_o_ds            (io_pads_gpio_28_o_ds),

  .io_pads_gpio_29_i_ival          (io_pads_gpio_29_i_ival & io_pads_gpio_29_o_ie),
  .io_pads_gpio_29_o_oval          (io_pads_gpio_29_o_oval),
  .io_pads_gpio_29_o_oe            (io_pads_gpio_29_o_oe),
  .io_pads_gpio_29_o_ie            (io_pads_gpio_29_o_ie),
  .io_pads_gpio_29_o_pue           (io_pads_gpio_29_o_pue),
  .io_pads_gpio_29_o_ds            (io_pads_gpio_29_o_ds),

  .io_pads_gpio_30_i_ival          (io_pads_gpio_30_i_ival & io_pads_gpio_30_o_ie),
  .io_pads_gpio_30_o_oval          (io_pads_gpio_30_o_oval),
  .io_pads_gpio_30_o_oe            (io_pads_gpio_30_o_oe),
  .io_pads_gpio_30_o_ie            (io_pads_gpio_30_o_ie),
  .io_pads_gpio_30_o_pue           (io_pads_gpio_30_o_pue),
  .io_pads_gpio_30_o_ds            (io_pads_gpio_30_o_ds),

  .io_pads_gpio_31_i_ival          (io_pads_gpio_31_i_ival & io_pads_gpio_31_o_ie),
  .io_pads_gpio_31_o_oval          (io_pads_gpio_31_o_oval),
  .io_pads_gpio_31_o_oe            (io_pads_gpio_31_o_oe),
  .io_pads_gpio_31_o_ie            (io_pads_gpio_31_o_ie),
  .io_pads_gpio_31_o_pue           (io_pads_gpio_31_o_pue),
  .io_pads_gpio_31_o_ds            (io_pads_gpio_31_o_ds),

  .io_pads_qspi_sck_i_ival    (1'b1 ),
  .io_pads_qspi_sck_o_oval    (io_pads_qspi_sck_o_oval ),
  .io_pads_qspi_sck_o_oe      (),
  .io_pads_qspi_sck_o_ie      (),
  .io_pads_qspi_sck_o_pue     (),
  .io_pads_qspi_sck_o_ds      (),
  .io_pads_qspi_dq_0_i_ival   (io_pads_qspi_dq_0_i_ival & io_pads_qspi_dq_0_o_ie),
  .io_pads_qspi_dq_0_o_oval   (io_pads_qspi_dq_0_o_oval),
  .io_pads_qspi_dq_0_o_oe     (io_pads_qspi_dq_0_o_oe  ),
  .io_pads_qspi_dq_0_o_ie     (io_pads_qspi_dq_0_o_ie  ),
  .io_pads_qspi_dq_0_o_pue    (io_pads_qspi_dq_0_o_pue ),
  .io_pads_qspi_dq_0_o_ds     (io_pads_qspi_dq_0_o_ds  ),

  .io_pads_qspi_dq_1_i_ival   (io_pads_qspi_dq_1_i_ival & io_pads_qspi_dq_1_o_ie),
  .io_pads_qspi_dq_1_o_oval   (io_pads_qspi_dq_1_o_oval),
  .io_pads_qspi_dq_1_o_oe     (io_pads_qspi_dq_1_o_oe  ),
  .io_pads_qspi_dq_1_o_ie     (io_pads_qspi_dq_1_o_ie  ),
  .io_pads_qspi_dq_1_o_pue    (io_pads_qspi_dq_1_o_pue ),
  .io_pads_qspi_dq_1_o_ds     (io_pads_qspi_dq_1_o_ds  ),

  .io_pads_qspi_dq_2_i_ival   (io_pads_qspi_dq_2_i_ival & io_pads_qspi_dq_2_o_ie),
  .io_pads_qspi_dq_2_o_oval   (io_pads_qspi_dq_2_o_oval),
  .io_pads_qspi_dq_2_o_oe     (io_pads_qspi_dq_2_o_oe  ),
  .io_pads_qspi_dq_2_o_ie     (io_pads_qspi_dq_2_o_ie  ),
  .io_pads_qspi_dq_2_o_pue    (io_pads_qspi_dq_2_o_pue ),
  .io_pads_qspi_dq_2_o_ds     (io_pads_qspi_dq_2_o_ds  ),

  .io_pads_qspi_dq_3_i_ival   (io_pads_qspi_dq_3_i_ival & io_pads_qspi_dq_3_o_ie),
  .io_pads_qspi_dq_3_o_oval   (io_pads_qspi_dq_3_o_oval),
  .io_pads_qspi_dq_3_o_oe     (io_pads_qspi_dq_3_o_oe  ),
  .io_pads_qspi_dq_3_o_ie     (io_pads_qspi_dq_3_o_ie  ),
  .io_pads_qspi_dq_3_o_pue    (io_pads_qspi_dq_3_o_pue ),
  .io_pads_qspi_dq_3_o_ds     (io_pads_qspi_dq_3_o_ds  ),
  .io_pads_qspi_cs_0_i_ival   (1'b1),
  .io_pads_qspi_cs_0_o_oval   (io_pads_qspi_cs_0_o_oval),
  .io_pads_qspi_cs_0_o_oe     (),
  .io_pads_qspi_cs_0_o_ie     (),
  .io_pads_qspi_cs_0_o_pue    (),
  .io_pads_qspi_cs_0_o_ds     (),
  
  `ifdef DDR_CONTROLLER
  
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

       .ddr3_sys_clk_i                 (ddr3_sys_clk_i),
       .ddr3_sys_rst_i                 (ddr3_sys_rst_i),

       .ddr3_cs_n                      (ddr3_cs_n),
       .ddr3_dm                        (ddr3_dm),
       .ddr3_odt                       (ddr3_odt),
       .init_calib_complete            (init_calib_complete),
    `endif
    
  .evt_i               (evt_i),
  .nmi_i               (nmi_i),
  .core_sleep_value    (core_sleep_value),
  .core_wfi_mode       (core_wfi_mode) 

  );





































endmodule
