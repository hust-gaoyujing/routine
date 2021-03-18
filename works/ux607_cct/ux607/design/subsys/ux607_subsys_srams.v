 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         



















`include "ux607_defines.v"

module ux607_subsys_srams(


  `ifdef UX607_HAS_ICACHE 
  input  rst_icache_ram,

  input                            icache_tag0_cs,  
  input                            icache_tag0_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag0_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag0_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag0_rdata,
  input                        clk_icache_tag0,

  input                            icache_data0_cs,  
  input                            icache_data0_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data0_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data0_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data0_rdata,
  input                        clk_icache_data0,

    `ifndef UX607_ICACHE_1WAYS
  input                            icache_tag1_cs,  
  input                            icache_tag1_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag1_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag1_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag1_rdata,
  input                        clk_icache_tag1,
  
  input                            icache_data1_cs,  
  input                            icache_data1_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data1_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data1_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data1_rdata,
  input                        clk_icache_data1,
    `endif

    `ifdef UX607_ICACHE_1WAYS
    `elsif UX607_ICACHE_2WAYS
    `else
  input                            icache_tag2_cs,  
  input                            icache_tag2_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag2_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag2_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag2_rdata,
  input                        clk_icache_tag2,
  
  input                            icache_data2_cs,  
  input                            icache_data2_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data2_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data2_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data2_rdata,
  input                        clk_icache_data2,

  input                            icache_tag3_cs,  
  input                            icache_tag3_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag3_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag3_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag3_rdata,
  input                        clk_icache_tag3,
  
  input                            icache_data3_cs,  
  input                            icache_data3_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data3_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data3_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data3_rdata,
  input                        clk_icache_data3,

    `endif

    `ifdef UX607_ICACHE_8WAYS
  input                            icache_tag4_cs,  
  input                            icache_tag4_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag4_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag4_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag4_rdata,
  input                        clk_icache_tag4,
  
  input                            icache_data4_cs,  
  input                            icache_data4_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data4_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data4_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data4_rdata,
  input                        clk_icache_data4,

  input                            icache_tag5_cs,  
  input                            icache_tag5_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag5_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag5_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag5_rdata,
  input                        clk_icache_tag5,
  
  input                            icache_data5_cs,  
  input                            icache_data5_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data5_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data5_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data5_rdata,
  input                        clk_icache_data5,

  input                            icache_tag6_cs,  
  input                            icache_tag6_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag6_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag6_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag6_rdata,
  input                        clk_icache_tag6,
  
  input                            icache_data6_cs,  
  input                            icache_data6_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data6_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data6_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data6_rdata,
  input                        clk_icache_data6,

  input                            icache_tag7_cs,  
  input                            icache_tag7_we,  
  input  [`UX607_ICACHE_TAG_RAM_AW-1:0] icache_tag7_addr, 
  input  [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag7_wdata,          
  output [`UX607_ICACHE_TAG_RAM_DW-1:0] icache_tag7_rdata,
  input                        clk_icache_tag7,
  
  input                            icache_data7_cs,  
  input                            icache_data7_we,  
  input  [`UX607_ICACHE_DATA_RAM_AW-1:0] icache_data7_addr, 
  input  [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data7_wdata,          
  output [`UX607_ICACHE_DATA_RAM_DW-1:0] icache_data7_rdata,
  input                        clk_icache_data7,


    `endif

  `endif

    input                            clk,
  `ifdef UX607_HAS_DCACHE
  input  rst_dcache_ram,
  input                          clk_dcache_w0_tram,
  input                          clk_dcache_w1_tram,
  input                          clk_dcache_dram_b0,
  input                          clk_dcache_dram_b1,
  input                          clk_dcache_dram_b2,
  input                          clk_dcache_dram_b3,
  
  input                           dcache_w0_tram_cs,  
  input  [`UX607_DTAG_RAM_AW-1:0]  dcache_w0_tram_addr,
  input                           dcache_w0_tram_we ,
  input  [`UX607_DTAG_RAM_DW-1:0]  dcache_w0_tram_din,          
  output [`UX607_DTAG_RAM_DW-1:0]  dcache_w0_tram_dout,
   
  input                           dcache_w1_tram_cs,  
  input  [`UX607_DTAG_RAM_AW-1:0]  dcache_w1_tram_addr, 
  input                           dcache_w1_tram_we ,
  input  [`UX607_DTAG_RAM_DW-1:0]  dcache_w1_tram_din,          
  output [`UX607_DTAG_RAM_DW-1:0]  dcache_w1_tram_dout,

  `ifdef UX607_DCACHE_HAS_ARAM
 
  input                          clk_dcache_w0_aram,
  input                          clk_dcache_w1_aram,

  input                           dcache_w0_aram_cs,  
  input  [`UX607_DSTAT_RAM_AW-1:0] dcache_w0_aram_addr, 
  input                           dcache_w0_aram_we ,
  input  [`UX607_DSTAT_RAM_DW-1:0] dcache_w0_aram_din,          
  output [`UX607_DSTAT_RAM_DW-1:0] dcache_w0_aram_dout,
   
  input                           dcache_w1_aram_cs,  
  input  [`UX607_DSTAT_RAM_AW-1:0] dcache_w1_aram_addr, 
  input                           dcache_w1_aram_we ,
  input  [`UX607_DSTAT_RAM_DW-1:0] dcache_w1_aram_din,          
  output [`UX607_DSTAT_RAM_DW-1:0] dcache_w1_aram_dout,
  `endif

  
  
  input                           dcache_dram_b0_cs,  
  input  [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b0_addr, 
  input  [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b0_wem,
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b0_din,          
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b0_dout,
                                                
  input                           dcache_dram_b1_cs,  
  input  [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b1_addr, 
  input  [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b1_wem,
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b1_din,          
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b1_dout,
                                                
  input                           dcache_dram_b2_cs,  
  input  [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b2_addr, 
  input  [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b2_wem,
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b2_din,          
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b2_dout,
                                                
  input                           dcache_dram_b3_cs,  
  input  [`UX607_DDATA_RAM_AW-1:0] dcache_dram_b3_addr, 
  input  [`UX607_DDATA_RAM_MW-1:0] dcache_dram_b3_wem,
  input  [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b3_din,          
  output [`UX607_DDATA_RAM_DW-1:0] dcache_dram_b3_dout,

  `endif

  `ifdef UX607_HAS_MMU
    input                               rst_tlb_ram,
    input                               clk_mmu_tlb_way0, 
    input                               clk_mmu_tlb_way1, 
    input                               mmu_tlb_way0_cs, 
    input                               mmu_tlb_way1_cs, 
    input                               mmu_tlb_way0_we, 
    input                               mmu_tlb_way1_we, 
    input  [`UX607_TLB_DATA_WIDTH-1:0]   mmu_tlb_way0_wdata, 
    input  [`UX607_TLB_DATA_WIDTH-1:0]   mmu_tlb_way1_wdata,
    input  [`UX607_TLB_INDEX_WIDTH-1:0]  mmu_tlb_way0_addr, 
    input  [`UX607_TLB_INDEX_WIDTH-1:0]  mmu_tlb_way1_addr, 
    output [`UX607_TLB_DATA_WIDTH-1:0]   mmu_tlb_way0_dout, 
    output [`UX607_TLB_DATA_WIDTH-1:0]   mmu_tlb_way1_dout, 
  `endif

  input  dummy

);


  `ifdef UX607_HAS_DCACHE                                                    
    
    ux607_data_ram u_data_b0_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_dram_b0_cs  ),  
                   .addr (dcache_dram_b0_addr), 
                   .wem  (dcache_dram_b0_wem ),
                   .din  (dcache_dram_b0_din ),          
                   .dout (dcache_dram_b0_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_dram_b0)
                   );

    ux607_data_ram u_data_b1_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_dram_b1_cs  ),  
                   .addr (dcache_dram_b1_addr), 
                   .wem  (dcache_dram_b1_wem ),
                   .din  (dcache_dram_b1_din ),          
                   .dout (dcache_dram_b1_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_dram_b1)
                   );

    ux607_data_ram u_data_b2_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_dram_b2_cs  ),  
                   .addr (dcache_dram_b2_addr), 
                   .wem  (dcache_dram_b2_wem ),
                   .din  (dcache_dram_b2_din ),          
                   .dout (dcache_dram_b2_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_dram_b2)
                   );

    ux607_data_ram u_data_b3_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_dram_b3_cs  ),  
                   .addr (dcache_dram_b3_addr), 
                   .wem  (dcache_dram_b3_wem ),
                   .din  (dcache_dram_b3_din ),          
                   .dout (dcache_dram_b3_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_dram_b3)
                   );

    ux607_dtag_ram u_dtag_w0_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_w0_tram_cs  ),  
                   .addr (dcache_w0_tram_addr), 
                   .wem  (dcache_w0_tram_we  ),
                   .din  (dcache_w0_tram_din ),          
                   .dout (dcache_w0_tram_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_w0_tram)
                   );

     ux607_dtag_ram u_dtag_w1_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_w1_tram_cs  ),  
                   .addr (dcache_w1_tram_addr), 
                   .wem  (dcache_w1_tram_we  ),
                   .din  (dcache_w1_tram_din ),          
                   .dout (dcache_w1_tram_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_w1_tram)
                   );

  `ifdef UX607_DCACHE_HAS_ARAM
    ux607_dstat_ram u_dstat_w0_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_w0_aram_cs  ),  
                   .addr (dcache_w0_aram_addr), 
                   .wem  (dcache_w0_aram_we  ),
                   .din  (dcache_w0_aram_din ),          
                   .dout (dcache_w0_aram_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_w0_aram)
                   );

     ux607_dstat_ram u_dstat_w1_ram(
                   .sd  (1'b0),
                   .ds  (1'b0),
                   .ls  (1'b0),
                   .cs   (dcache_w1_aram_cs  ),  
                   .addr (dcache_w1_aram_addr), 
                   .wem  (dcache_w1_aram_we  ),
                   .din  (dcache_w1_aram_din ),          
                   .dout (dcache_w1_aram_dout),
                   .rst_n (rst_dcache_ram),
                   .clk (clk_dcache_w1_aram)
                   );
   `endif



  `endif

  
  `ifdef UX607_HAS_ICACHE 

  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w0_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag0_cs   ),
    .addr (icache_tag0_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag0_we}}  ),
    .din  (icache_tag0_wdata  ),
    .dout (icache_tag0_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag0  )
    );
    
    
  ux607_icache_ram #(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w0_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data0_cs   ),
    .addr (icache_data0_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data0_we}}  ),
    .din  (icache_data0_wdata  ),
    .dout (icache_data0_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data0  )
    );

     `ifndef UX607_ICACHE_1WAYS
  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w1_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag1_cs   ),
    .addr (icache_tag1_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag1_we}}  ),
    .din  (icache_tag1_wdata  ),
    .dout (icache_tag1_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag1  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w1_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data1_cs   ),
    .addr (icache_data1_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data1_we }} ),
    .din  (icache_data1_wdata  ),
    .dout (icache_data1_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data1  )
    );
    `endif

     `ifdef UX607_ICACHE_1WAYS
     `elsif UX607_ICACHE_2WAYS
     `else
  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w2_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag2_cs   ),
    .addr (icache_tag2_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag2_we}}  ),
    .din  (icache_tag2_wdata  ),
    .dout (icache_tag2_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag2  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w2_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data2_cs   ),
    .addr (icache_data2_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data2_we }} ),
    .din  (icache_data2_wdata  ),
    .dout (icache_data2_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data2  )
    );

  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w3_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag3_cs   ),
    .addr (icache_tag3_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag3_we}}  ),
    .din  (icache_tag3_wdata  ),
    .dout (icache_tag3_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag3  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w3_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data3_cs   ),
    .addr (icache_data3_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data3_we }} ),
    .din  (icache_data3_wdata  ),
    .dout (icache_data3_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data3  )
    );

    `endif


     `ifdef UX607_ICACHE_8WAYS
  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w4_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag4_cs   ),
    .addr (icache_tag4_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag4_we}}  ),
    .din  (icache_tag4_wdata  ),
    .dout (icache_tag4_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag4  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w4_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data4_cs   ),
    .addr (icache_data4_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data4_we }} ),
    .din  (icache_data4_wdata  ),
    .dout (icache_data4_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data4  )
    );

  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w5_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag5_cs   ),
    .addr (icache_tag5_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag5_we}}  ),
    .din  (icache_tag5_wdata  ),
    .dout (icache_tag5_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag5  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w5_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data5_cs   ),
    .addr (icache_data5_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data5_we }} ),
    .din  (icache_data5_wdata  ),
    .dout (icache_data5_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data5  )
    );

  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w6_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag6_cs   ),
    .addr (icache_tag6_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag6_we}}  ),
    .din  (icache_tag6_wdata  ),
    .dout (icache_tag6_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag6  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w6_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data6_cs   ),
    .addr (icache_data6_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data6_we }} ),
    .din  (icache_data6_wdata  ),
    .dout (icache_data6_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data6  )
    );

  ux607_icache_ram #(
    .DP(`UX607_ICACHE_TAG_RAM_DP),
    .DW(`UX607_ICACHE_TAG_RAM_DW),
    .MW(`UX607_ICACHE_TAG_RAM_MW),
    .AW(`UX607_ICACHE_TAG_RAM_AW) 
  )u_ux607_icache_w7_tram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_tag7_cs   ),
    .addr (icache_tag7_addr ),
    .wem  ({`UX607_ICACHE_TAG_RAM_MW{icache_tag7_we}}  ),
    .din  (icache_tag7_wdata  ),
    .dout (icache_tag7_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_tag7  )
    );


  ux607_icache_ram#(
    .DP(`UX607_ICACHE_DRAM_DP),
    .DW(`UX607_ICACHE_DATA_RAM_DW),
    .MW(`UX607_ICACHE_DATA_RAM_MW),
    .AW(`UX607_ICACHE_DATA_RAM_AW) 
  )u_ux607_icache_w7_dram (
    .sd   (1'b0   ),
    .ds   (1'b0   ),
    .ls   (1'b0   ),
  
    .cs   (icache_data7_cs   ),
    .addr (icache_data7_addr ),
    .wem  ({`UX607_ICACHE_DATA_RAM_MW{icache_data7_we }} ),
    .din  (icache_data7_wdata  ),
    .dout (icache_data7_rdata ),
    .rst_n(rst_icache_ram  ),
    .clk  (clk_icache_data7  )
    );

    `endif


  `endif

  `ifdef UX607_HAS_MMU 

    ux607_tlb_ram u_tlb_ram_way0(
                   .cs   (mmu_tlb_way0_cs    ),  
                   .wem  (mmu_tlb_way0_we    ),  
                   .addr (mmu_tlb_way0_addr       ), 
                   .din  (mmu_tlb_way0_wdata ),          
                   .dout (mmu_tlb_way0_dout  ),
                   .rst_n(rst_tlb_ram),
                   .clk  (clk_mmu_tlb_way0)
                   );

    ux607_tlb_ram u_tlb_ram_way1(
                   .cs   (mmu_tlb_way1_cs    ),  
                   .wem  (mmu_tlb_way1_we    ),  
                   .addr (mmu_tlb_way1_addr       ), 
                   .din  (mmu_tlb_way1_wdata ),          
                   .dout (mmu_tlb_way1_dout  ),
                   .rst_n(rst_tlb_ram),
                   .clk  (clk_mmu_tlb_way1)
                   );

  `endif

endmodule
