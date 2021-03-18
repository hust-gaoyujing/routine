 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         


















`include "ux607_defines.v"

`ifdef UX607_HAS_ECC

module ux607_sram_icb_ecc_ctrl #(
    parameter ICB_CMD_BUF_DP = 0,
    parameter ICB_RSP_BUF_DP = 0,
    parameter RAM_OUT_BUF_DP = 0,
    parameter SRAM_CYCLE = 1,
    parameter ECC_DW = 7,
    parameter ECC_MW = 1,
    parameter DW = 32,
    parameter MW = 4,
    parameter AW = 32,
    parameter AW_LSB = 3,
    parameter USR_W = 3 
)(
  output sram_ctrl_active,
  
  
      
  input  tcm_cgstop,
  input  csr_dis_ecc_prot,
  input  csr_dis_ecc_excp,
  output ecc_err_detected,
  output [AW-1:0] ecc_err_addr,
  
  
  
  
  input  i_icb_cmd_valid, 
  output i_icb_cmd_ready, 
  input  i_icb_cmd_read,  
  input  [AW-1:0] i_icb_cmd_addr, 
  input  [DW-1:0] i_icb_cmd_wdata, 
  input  [MW-1:0] i_icb_cmd_wmask, 
  input  [USR_W-1:0] i_icb_cmd_usr, 
  input  [2-1:0] i_icb_cmd_size, 

  
  output i_icb_rsp_valid, 
  input  i_icb_rsp_ready, 
  output i_icb_rsp_err,
  output [DW-1:0] i_icb_rsp_rdata, 
  output [USR_W-1:0] i_icb_rsp_usr, 

  output sram_out_ecc_err,

  `ifdef UX607_LM_MASTER_SRAM 
  output          ram_cs,  
  output          ram_we,  
  output [AW-AW_LSB-1:0] ram_addr, 
  output [MW-1:0] ram_wem,
  output [DW-1:0] ram_din,          
  input  [DW-1:0] ram_dout,
  output          clk_ram,
  `endif

  `ifdef UX607_LM_MASTER_AHBL 
  output [1:0]       ram_ahbl_htrans,   
  output             ram_ahbl_hwrite,   
  output [AW    -1:0]ram_ahbl_haddr,    
  output [1:0]       ram_ahbl_hsize,    
  output [DW    -1:0]ram_ahbl_hwdata,   
  input  [DW    -1:0]ram_ahbl_hrdata,   
  input              ram_ahbl_hresp,    
  input              ram_ahbl_hready,   
  `endif
  
  `ifdef UX607_LM_MASTER_ICB 
  output             ram_icb_cmd_valid, 
  input              ram_icb_cmd_ready, 
  output [1-1:0]     ram_icb_cmd_read, 
  output [AW-1:0]    ram_icb_cmd_addr, 
  output [DW-1:0]    ram_icb_cmd_wdata, 
  output [DW/8-1:0]  ram_icb_cmd_wmask,
  output [2-1:0]     ram_icb_cmd_size,

  input              ram_icb_rsp_valid, 
  output             ram_icb_rsp_ready, 
  input              ram_icb_rsp_err,
  input  [DW-1:0]    ram_icb_rsp_rdata, 
  `endif

  input  clkgate_bypass,
  input  clk,
  input  rst_n
  );

  
    
  wire uop_cmd_valid; 
  wire uop_cmd_ready; 
  wire uop_cmd_read;  
  wire [AW-1:0] uop_cmd_addr; 
  wire [DW+ECC_DW-1:0] uop_cmd_wdata; 
  wire [MW+ECC_MW-1:0] uop_cmd_wmask; 
  wire [USR_W-1:0] uop_cmd_usr; 
  wire [2-1:0] uop_cmd_size; 

  
  wire uop_rsp_valid; 
  wire uop_rsp_ready; 
  wire [DW+ECC_DW-1:0] uop_rsp_rdata; 
  wire [USR_W-1:0] uop_rsp_usr; 
  wire uop_rsp_err;


  
  
  
  

    
    
  wire  byp_icb_cmd_valid;
  wire  byp_icb_cmd_ready;
  wire  byp_icb_cmd_read;
  wire  [AW-1:0] byp_icb_cmd_addr; 
  wire  [DW-1:0] byp_icb_cmd_wdata; 
  wire  [MW-1:0] byp_icb_cmd_wmask; 
  wire  [USR_W-1:0] byp_icb_cmd_usr; 
  wire  [2-1:0] byp_icb_cmd_size; 

  localparam BUF_CMD_PACK_W = (AW+DW+MW+USR_W+3);
  wire [BUF_CMD_PACK_W-1:0] byp_icb_cmd_o_pack;
  wire [BUF_CMD_PACK_W-1:0] byp_icb_cmd_i_pack =  {
                      i_icb_cmd_read, 
                      i_icb_cmd_addr, 
                      i_icb_cmd_wdata, 
                      i_icb_cmd_wmask, 
                      i_icb_cmd_size, 
                      i_icb_cmd_usr  
                    };
  assign {
                      byp_icb_cmd_read, 
                      byp_icb_cmd_addr, 
                      byp_icb_cmd_wdata, 
                      byp_icb_cmd_wmask, 
                      byp_icb_cmd_size, 
                      byp_icb_cmd_usr  
                    } = byp_icb_cmd_o_pack;

     
  ux607_gnrl_bypbuf # (
   .DP(1),
   .DW(BUF_CMD_PACK_W)
  ) u_byp_icb_cmd_buf(
    .i_vld(i_icb_cmd_valid), 
    .i_rdy(i_icb_cmd_ready), 
    .i_dat(byp_icb_cmd_i_pack),
    .o_vld(byp_icb_cmd_valid), 
    .o_rdy(byp_icb_cmd_ready), 
    .o_dat(byp_icb_cmd_o_pack),
  
    .clk  (clk  ),
    .rst_n(rst_n)  
   );


    
  wire  buf_icb_cmd_valid;
  wire  buf_icb_cmd_ready;
  wire  buf_icb_cmd_read;
  wire  [AW-1:0] buf_icb_cmd_addr; 
  wire  [DW-1:0] buf_icb_cmd_wdata; 
  wire  [MW-1:0] buf_icb_cmd_wmask; 
  wire  [USR_W-1:0] buf_icb_cmd_usr; 
  wire  [2-1:0] buf_icb_cmd_size; 

  wire [BUF_CMD_PACK_W-1:0] buf_icb_cmd_o_pack;
  wire [BUF_CMD_PACK_W-1:0] buf_icb_cmd_i_pack =  {
                      byp_icb_cmd_read, 
                      byp_icb_cmd_addr, 
                      byp_icb_cmd_wdata, 
                      byp_icb_cmd_wmask, 
                      byp_icb_cmd_size, 
                      byp_icb_cmd_usr  
                    };
  assign {
                      buf_icb_cmd_read, 
                      buf_icb_cmd_addr, 
                      buf_icb_cmd_wdata, 
                      buf_icb_cmd_wmask, 
                      buf_icb_cmd_size, 
                      buf_icb_cmd_usr  
                    } = buf_icb_cmd_o_pack;

     
  ux607_gnrl_pipe_stage # (
   .CUT_READY(0),
   .DP(ICB_CMD_BUF_DP),
   .DW(BUF_CMD_PACK_W)
  ) u_buf_icb_cmd_buf(
    .i_vld(byp_icb_cmd_valid), 
    .i_rdy(byp_icb_cmd_ready), 
    .i_dat(buf_icb_cmd_i_pack),
    .o_vld(buf_icb_cmd_valid), 
    .o_rdy(buf_icb_cmd_ready), 
    .o_dat(buf_icb_cmd_o_pack),
  
    .clk  (clk  ),
    .rst_n(rst_n)  
   );


  
wire buf_icb_cmd_wr_empty = ((~(|buf_icb_cmd_wmask)));
  
wire buf_icb_cmd_wr_full  = (&buf_icb_cmd_wmask);

    
    
    
wire buf_icb_part_wr_ecc_on = 
      (~csr_dis_ecc_prot) 
    & (~buf_icb_cmd_wr_empty) 
    & (~buf_icb_cmd_wr_full)
    & (~buf_icb_cmd_read)
    ;

wire buf_icb_cmd_wnop = buf_icb_cmd_wr_empty;

  
    
    
    
  wire sram_buf_raw;
  wire sram_buf_fake;
  wire sram_buf_rdicb;
  wire [AW-1:0]sram_buf_addr;
  wire [2-1:0]sram_buf_size;
  wire [DW-1:0]sram_buf_wdata;
  wire [MW-1:0]sram_buf_wmask;
  wire sram_buf_vld_r;
  wire sram_buf_read;
  wire sram_o_buf_rdicb;
  wire sram_o_buf_raw;  
  wire [AW-1:0]sram_o_buf_addr;
  wire [2-1:0]sram_o_buf_size;
  wire sram_o_buf_valid; 

  wire outs_match_addr_hzd = 
                        
                   (~csr_dis_ecc_prot) & 
                        
                       (   (buf_icb_cmd_addr[AW-1:AW_LSB] == sram_buf_addr[AW-1:AW_LSB])
                         & sram_buf_vld_r
                         & (sram_buf_raw | sram_buf_read)
                       )
                        
                     | (   (buf_icb_cmd_addr[AW-1:AW_LSB] == sram_o_buf_addr[AW-1:AW_LSB])
                         & sram_o_buf_valid
                         & (sram_o_buf_raw | sram_o_buf_rdicb)
                       )
                       ;
  wire back_byp_o_raw;
  wire back_byp_o_dberr;
  wire [AW-1:0]back_byp_o_addr;
  wire [2-1:0]back_byp_o_size;
  wire back_byp_o_valid;

  wire back_buf_o_ready;
  wire back_buf_o_valid;
  wire i_icb_stall_case = 
      
          
          
        outs_match_addr_hzd
      
      | back_buf_o_valid
      | back_byp_o_valid
          ; 

  wire cmd_valid;
  wire cmd_ready;

  assign buf_icb_cmd_ready = cmd_ready & (~i_icb_stall_case);
  assign cmd_valid = buf_icb_cmd_valid & (~i_icb_stall_case);

  wire   back_byp_o_ready = uop_cmd_ready;
  assign cmd_ready     = uop_cmd_ready & (~back_byp_o_valid);
  assign uop_cmd_valid = cmd_valid | back_byp_o_valid;  


  wire[DW-1:0] back_byp_o_rmw_wdata;
  wire[MW-1:0] back_byp_o_wmask;
  wire [DW-1:0]back_byp_o_wdata;
  wire [DW-1:0]back_byp_o_rdata;
  genvar i;
  generate 
     for(i=(MW-1); i>=0; i=i-1) begin:rmw
       assign back_byp_o_rmw_wdata[i*8+7:i*8] = 
           (back_byp_o_wmask[i] ? back_byp_o_wdata[i*8+7:i*8] : back_byp_o_rdata[i*8+7:i*8]); 
     end
  endgenerate

  wire back_byp_o_scrub;
  wire[DW-1:0] back_wdata = back_byp_o_scrub ? back_byp_o_rdata : back_byp_o_rmw_wdata; 
    
        
        
        
        
  wire back_wnop = back_byp_o_raw & back_byp_o_dberr & (~csr_dis_ecc_excp);
  wire[MW-1:0] back_wmask = back_wnop ? {MW{1'b0}} : {MW{1'b1}};

  wire[ECC_DW-1:0] uop_cmd_wdata_ecc;
  wire[DW-1:0] uop_cmd_wdata_noecc = back_byp_o_valid ? back_wdata : buf_icb_cmd_wdata;

  wire uop_cmd_rdicb    = back_byp_o_valid ? 1'b0 : buf_icb_cmd_read;
  wire uop_cmd_raw   = back_byp_o_valid ? 1'b0 : buf_icb_part_wr_ecc_on;
  assign uop_cmd_addr  = back_byp_o_valid ? back_byp_o_addr  : buf_icb_cmd_addr;
  assign uop_cmd_size  = back_byp_o_valid ? back_byp_o_size  : buf_icb_cmd_size;
  assign uop_cmd_wdata = {uop_cmd_wdata_ecc,uop_cmd_wdata_noecc};
  assign uop_cmd_wmask = back_byp_o_valid ? {{ECC_MW{~back_wnop}},back_wmask} 
                                          : {{ECC_MW{~buf_icb_cmd_wnop}},buf_icb_cmd_wmask};
                                          
                
  assign uop_cmd_read  = back_byp_o_valid ? 1'b0            : 
                
                    
                    
                (buf_icb_cmd_read | buf_icb_part_wr_ecc_on);
                

                
  wire uop_cmd_fake  = back_byp_o_valid ? 1'b1 : 1'b0;
  assign uop_cmd_usr = back_byp_o_valid ? {USR_W{1'b0}} : buf_icb_cmd_usr;

  
  
  generate
    if(DW == 64) begin: dw64_ecc_gen
      ux607_ecc_gen64 u_ux607_ecc_gen64(
        .i_dat  (uop_cmd_wdata_noecc),
        .ecc    (uop_cmd_wdata_ecc  ) 
      );
    end
    if(DW == 32) begin: dw32_ecc_gen
      ux607_ecc_gen32 u_ux607_ecc_gen32(
        .i_dat  (uop_cmd_wdata_noecc),
        .ecc    (uop_cmd_wdata_ecc  ) 
      );
    end
  endgenerate


  
  
  
  
   wire sram_buf_vld_set = uop_cmd_valid & uop_cmd_ready;
   wire sram_buf_vld_clr = uop_rsp_valid & uop_rsp_ready;
   wire sram_buf_vld_ena = sram_buf_vld_set |   sram_buf_vld_clr;
   wire sram_buf_vld_nxt = sram_buf_vld_set | (~sram_buf_vld_clr);

  ux607_gnrl_dfflr #(1)sram_buf_vld_dfflr(sram_buf_vld_ena, sram_buf_vld_nxt, sram_buf_vld_r, clk, rst_n);

   wire sram_buf_ena = sram_buf_vld_set;

  ux607_gnrl_dfflr #(DW)sram_buf_wdata_dfflr(sram_buf_ena, uop_cmd_wdata[DW-1:0], sram_buf_wdata, clk, rst_n);
  ux607_gnrl_dfflr #(MW)sram_buf_wmask_dfflr(sram_buf_ena, uop_cmd_wmask[MW-1:0], sram_buf_wmask, clk, rst_n);
  ux607_gnrl_dfflr #(AW)sram_buf_addr_dfflr(sram_buf_ena, uop_cmd_addr, sram_buf_addr, clk, rst_n);
  ux607_gnrl_dfflr #(2)sram_buf_size_dfflr(sram_buf_ena, uop_cmd_size, sram_buf_size, clk, rst_n);
  ux607_gnrl_dfflr #(1)sram_buf_raw_dfflr  (sram_buf_ena, uop_cmd_raw,  sram_buf_raw,  clk, rst_n);
  ux607_gnrl_dfflr #(1)sram_buf_rdicb_dfflr (sram_buf_ena, uop_cmd_rdicb ,  sram_buf_rdicb, clk, rst_n);
  ux607_gnrl_dfflr #(1)sram_buf_read_dfflr (sram_buf_ena, uop_cmd_read ,  sram_buf_read, clk, rst_n);
  ux607_gnrl_dfflr #(1)sram_buf_fake_dfflr (sram_buf_ena, uop_cmd_fake, sram_buf_fake, clk, rst_n);


  
  
  
  
  generate 
      if(SRAM_CYCLE == 1) begin: sram_cycle_1
  ux607_1cyc_sram_ctrl #(
      .DW     ((DW+ECC_DW)),
      .AW     (AW),
      .MW     ((MW+ECC_MW)),
      .AW_LSB (AW_LSB),
      .USR_W  (USR_W) 
  ) u_ux607_1cyc_sram_ctrl(
     .sram_ctrl_active (),
     .tcm_cgstop       (tcm_cgstop),
     
     .uop_cmd_valid (uop_cmd_valid),
     .uop_cmd_ready (uop_cmd_ready),
     .uop_cmd_read  (uop_cmd_read ),
     .uop_cmd_addr  (uop_cmd_addr ), 
     .uop_cmd_wdata (uop_cmd_wdata), 
     .uop_cmd_wmask (uop_cmd_wmask), 
     .uop_cmd_size  (uop_cmd_size ), 
     .uop_cmd_usr   (uop_cmd_usr  ),
  
     .uop_rsp_valid (uop_rsp_valid),
     .uop_rsp_ready (uop_rsp_ready),
     .uop_rsp_rdata (uop_rsp_rdata),
     .uop_rsp_err   (uop_rsp_err  ),
     .uop_rsp_usr   (uop_rsp_usr  ),
  
  `ifdef UX607_LM_MASTER_SRAM 
     .ram_cs   (ram_cs  ),  
     .ram_we   (ram_we  ),  
     .ram_addr (ram_addr), 
     .ram_wem  (ram_wem ),
     .ram_din  (ram_din ),          
     .ram_dout (ram_dout),
     .clk_ram  (clk_ram ),
  `endif

  `ifdef UX607_LM_MASTER_AHBL 
     .ram_ahbl_htrans (ram_ahbl_htrans),   
     .ram_ahbl_hwrite (ram_ahbl_hwrite),   
     .ram_ahbl_haddr  (ram_ahbl_haddr ),    
     .ram_ahbl_hsize  (ram_ahbl_hsize ),    
     .ram_ahbl_hwdata (ram_ahbl_hwdata),   
     .ram_ahbl_hrdata (ram_ahbl_hrdata),   
     .ram_ahbl_hresp  (ram_ahbl_hresp ),    
     .ram_ahbl_hready (ram_ahbl_hready),   
  `endif
  
  `ifdef UX607_LM_MASTER_ICB 
     .ram_icb_cmd_valid (ram_icb_cmd_valid),
     .ram_icb_cmd_ready (ram_icb_cmd_ready),
     .ram_icb_cmd_read  (ram_icb_cmd_read ),
     .ram_icb_cmd_addr  (ram_icb_cmd_addr ), 
     .ram_icb_cmd_wdata (ram_icb_cmd_wdata), 
     .ram_icb_cmd_wmask (ram_icb_cmd_wmask), 
     .ram_icb_cmd_size  (ram_icb_cmd_size ), 
  
     .ram_icb_rsp_valid (ram_icb_rsp_valid),
     .ram_icb_rsp_ready (ram_icb_rsp_ready),
     .ram_icb_rsp_rdata (ram_icb_rsp_rdata),
     .ram_icb_rsp_err   (ram_icb_rsp_err  ),
  `endif

     .clkgate_bypass(clkgate_bypass  ),
     .clk  (clk  ),
     .rst_n(rst_n)  
    );
        end
  endgenerate



  
  
  
  
  
  wire sram_o_buf_ready; 
  wire [DW+ECC_DW-1:0] sram_o_buf_rdata; 
  wire [USR_W-1:0] sram_o_buf_usr; 

  wire [MW-1:0]sram_o_buf_wmask;
  wire [DW-1:0]sram_o_buf_wdata;
  wire sram_o_buf_fake;  
  wire sram_o_buf_read  ;

  localparam SRAM_OUT_PACK_W = (AW+DW+DW+MW+ECC_DW+USR_W+1+5);
  wire [SRAM_OUT_PACK_W-1:0] sram_o_buf_pack;
  wire [SRAM_OUT_PACK_W-1:0] uop_rsp_pack =  {
                          uop_rsp_rdata
                         ,uop_rsp_usr  
                         ,sram_buf_wdata  
                         ,sram_buf_wmask  
                         ,sram_buf_addr  
                         ,sram_buf_size  
                         ,sram_buf_raw  
                         ,sram_buf_fake  
                         ,sram_buf_rdicb  
                         ,sram_buf_read  
                    };
  assign {
                          sram_o_buf_rdata
                         ,sram_o_buf_usr  
                         ,sram_o_buf_wdata  
                         ,sram_o_buf_wmask  
                         ,sram_o_buf_addr  
                         ,sram_o_buf_size  
                         ,sram_o_buf_raw  
                         ,sram_o_buf_fake  
                         ,sram_o_buf_rdicb  
                         ,sram_o_buf_read  
                    } = sram_o_buf_pack;

      
  ux607_gnrl_pipe_stage # (
   .CUT_READY(0),
   .DP(RAM_OUT_BUF_DP),
   .DW(SRAM_OUT_PACK_W)
  ) u_ram_out_buf(
    .i_vld(uop_rsp_valid), 
    .i_rdy(uop_rsp_ready), 
    .i_dat(uop_rsp_pack),
    .o_vld(sram_o_buf_valid), 
    .o_rdy(sram_o_buf_ready), 
    .o_dat(sram_o_buf_pack),
  
    .clk  (clk  ),
    .rst_n(rst_n)  
   );
 
  
  wire ecc_rsp_valid; 
  wire ecc_rsp_ready; 
  wire ecc_rsp_err;
  wire [DW-1:0] ecc_rsp_rdata; 
  wire [USR_W-1:0] ecc_rsp_usr;
  wire [DW-1:0] sram_o_buf_rdata_corr;
  
  
  
  wire sram_o_buf_sbcor_r;
  wire sram_o_buf_sberr;
  wire sram_o_buf_dberr;
  generate 
    if(DW == 64) begin: dw64_ecc_cac
      ux607_ecc_cac64 u_ux607_ecc_cac64(
        .clk    (clk  ),
        .rst_n  (rst_n),
        .i_dat  (sram_o_buf_rdata[DW-1:0]),
        .ecc    (sram_o_buf_rdata[DW+ECC_DW-1:DW]),
        .sel_crr(sram_o_buf_sbcor_r),
        .sberr  (sram_o_buf_sberr),
        .dberr  (sram_o_buf_dberr),
        .o_dat  (sram_o_buf_rdata_corr[DW-1:0])
      );
    end
    if(DW == 32) begin: dw32_ecc_cac
      ux607_ecc_cac32 u_ux607_ecc_cac32(
        .clk    (clk  ),
        .rst_n  (rst_n),
        .i_dat  (sram_o_buf_rdata[DW-1:0]),
        .ecc    (sram_o_buf_rdata[DW+ECC_DW-1:DW]),
        .sel_crr(sram_o_buf_sbcor_r),
        .sberr  (sram_o_buf_sberr),
        .dberr  (sram_o_buf_dberr),
        .o_dat  (sram_o_buf_rdata_corr[DW-1:0])
      );
    end

   endgenerate

   
   
   
      
   wire sram_o_buf_real_sberr = sram_o_buf_valid & sram_o_buf_read & sram_o_buf_sberr & (~csr_dis_ecc_prot);
      
   wire sram_o_buf_real_dberr = sram_o_buf_valid & sram_o_buf_read & sram_o_buf_dberr & (~csr_dis_ecc_prot);

      
   wire sram_o_buf_need_sbcor     = (sram_o_buf_read & sram_o_buf_real_sberr);
        
   wire sram_o_buf_sbcor_set = sram_o_buf_need_sbcor & (~sram_o_buf_sbcor_r); 
        
   wire sram_o_buf_hsked = sram_o_buf_valid & sram_o_buf_ready;
   wire sram_o_buf_sbcor_clr = sram_o_buf_sbcor_r & sram_o_buf_hsked;
   wire sram_o_buf_sbcor_ena = sram_o_buf_sbcor_set | sram_o_buf_sbcor_clr;
   wire sram_o_buf_sbcor_nxt = sram_o_buf_sbcor_set | (~sram_o_buf_sbcor_clr);

  ux607_gnrl_dfflr #(1)sram_o_buf_sbcor_dfflr(sram_o_buf_sbcor_ena, sram_o_buf_sbcor_nxt, sram_o_buf_sbcor_r, clk, rst_n);
   
  wire back_buf_i_valid; 
  wire back_buf_i_ready; 
  wire buf_icb_rsp_ready;
  wire buf_icb_rsp_valid;

   
  wire sram_o_buf_rd_blked = (sram_o_buf_need_sbcor & (~sram_o_buf_sbcor_r));

  assign ecc_rsp_valid = (~sram_o_buf_rd_blked) & sram_o_buf_valid;
  assign sram_o_buf_ready = (~sram_o_buf_rd_blked) & ecc_rsp_ready;
  assign ecc_rsp_err   = ((~csr_dis_ecc_excp) & sram_o_buf_real_dberr);
  assign ecc_rsp_rdata = sram_o_buf_rdata_corr;
  assign ecc_rsp_usr = sram_o_buf_usr;

  assign sram_out_ecc_err = (sram_o_buf_sberr | sram_o_buf_dberr) & sram_o_buf_read & (~csr_dis_ecc_prot);

  assign ecc_err_detected = sram_o_buf_real_dberr & sram_o_buf_hsked;
  assign ecc_err_addr     = sram_o_buf_addr;

  wire ecc_rsp_fake  = sram_o_buf_fake;
  wire ecc_rsp_raw   = sram_o_buf_raw;
  wire ecc_rsp_scrub = sram_o_buf_rdicb & sram_o_buf_need_sbcor & (~sram_o_buf_raw);
  
  
  
  wire ecc_rsp_norm = (~ecc_rsp_raw) & (~ecc_rsp_scrub);
  wire buf_icb_rsp_condi = ecc_rsp_norm ? 1'b1 : back_buf_i_ready; 
  wire back_buf_i_condi = buf_icb_rsp_ready;
  assign buf_icb_rsp_valid = (~ecc_rsp_fake) & ecc_rsp_valid & buf_icb_rsp_condi; 
  assign back_buf_i_valid = (~ecc_rsp_fake) &(~ecc_rsp_norm) & ecc_rsp_valid & back_buf_i_condi;
  assign ecc_rsp_ready   = ecc_rsp_fake ? 1'b1 :
                           ecc_rsp_norm ? (buf_icb_rsp_ready & buf_icb_rsp_condi)
                                        : (back_buf_i_ready & back_buf_i_condi);


  wire buf_icb_rsp_err;
  wire [DW-1:0] buf_icb_rsp_rdata; 
  wire [USR_W-1:0] buf_icb_rsp_usr;

  assign buf_icb_rsp_err   = ecc_rsp_err;
  assign buf_icb_rsp_rdata = ecc_rsp_rdata; 
  assign buf_icb_rsp_usr   = ecc_rsp_usr; 

  
  
  
  

  localparam PACK_W = (AW+DW+DW+MW+5);
  wire [PACK_W-1:0] back_byp_o_pack;
  wire [PACK_W-1:0] back_buf_o_pack;
  wire [PACK_W-1:0] back_buf_i_pack =  {
                         sram_o_buf_real_dberr,
                         ecc_rsp_raw,
                         ecc_rsp_scrub, 
                         ecc_rsp_rdata,
                         
                         sram_o_buf_size,
                         sram_o_buf_addr,
                         sram_o_buf_wmask,
                         sram_o_buf_wdata
                    };
  assign {
                         back_byp_o_dberr,
                         back_byp_o_raw,
                         back_byp_o_scrub, 
                         back_byp_o_rdata,
                         
                         back_byp_o_size,
                         back_byp_o_addr,
                         back_byp_o_wmask,
                         back_byp_o_wdata
                    } = back_byp_o_pack;

      
  ux607_gnrl_pipe_stage # (
   .CUT_READY(0),
   .DP(1),
   .DW(PACK_W)
  ) u_back_buf(
    .i_vld(back_buf_i_valid), 
    .i_rdy(back_buf_i_ready), 
    .i_dat(back_buf_i_pack),
    .o_vld(back_buf_o_valid), 
    .o_rdy(back_buf_o_ready), 
    .o_dat(back_buf_o_pack),
  
    .clk  (clk  ),
    .rst_n(rst_n)  
   );
   
  

  ux607_gnrl_bypbuf # (
   .DP(1),
   .DW(PACK_W)
  ) u_rsp_bypbuf(
    .i_vld(back_buf_o_valid), 
    .i_rdy(back_buf_o_ready), 
    .i_dat(back_buf_o_pack),
    .o_vld(back_byp_o_valid), 
    .o_rdy(back_byp_o_ready), 
    .o_dat(back_byp_o_pack),
  
    .clk  (clk  ),
    .rst_n(rst_n)  
   );

   
   
   
  localparam SRAM_O_PACK_W = (DW+USR_W+1);
  wire [SRAM_O_PACK_W-1:0] buf_icb_rsp_o_pack;
  wire [SRAM_O_PACK_W-1:0] buf_icb_rsp_i_pack =  {
                        buf_icb_rsp_err  ,
                        buf_icb_rsp_rdata,
                        buf_icb_rsp_usr   
                    };
  assign {
                        i_icb_rsp_err  ,
                        i_icb_rsp_rdata,
                        i_icb_rsp_usr   
                    } = buf_icb_rsp_o_pack;

     
  ux607_gnrl_pipe_stage # (
   .CUT_READY(0),
   .DP(ICB_RSP_BUF_DP),
   .DW(SRAM_O_PACK_W)
  ) u_icb_rsp_buf(
    .i_vld(buf_icb_rsp_valid), 
    .i_rdy(buf_icb_rsp_ready), 
    .i_dat(buf_icb_rsp_i_pack),
    .o_vld(i_icb_rsp_valid), 
    .o_rdy(i_icb_rsp_ready), 
    .o_dat(buf_icb_rsp_o_pack),
  
    .clk  (clk  ),
    .rst_n(rst_n)  
   );

  assign sram_ctrl_active = 
                       i_icb_cmd_valid 
                     | byp_icb_cmd_valid 
                     | buf_icb_cmd_valid 
                     | sram_buf_vld_r  
                     | sram_o_buf_valid 
                     | i_icb_rsp_valid 
                     | back_buf_o_valid 
                     | back_byp_o_valid;

endmodule

`endif
