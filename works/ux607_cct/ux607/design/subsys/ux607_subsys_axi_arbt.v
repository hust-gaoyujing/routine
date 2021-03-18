 /*                                                                      
  *  Copyright (c) 2018-2020 Nuclei System Technology, Inc.              
  *  All rights reserved.                                                
  */                                                                     
                                                                         

module ux607_subsys_axi_arbt # (
  parameter AW = 32,
  parameter DW = 32,
  parameter ID_W = 4,
  parameter USR_W = 4,
  parameter MW = 4,

  parameter ARBT_SCHEME = 0,
  parameter FIFO_OUTS_NUM = 1,
  parameter FIFO_CUT_READY = 0,
  parameter ARBT_NUM = 4,
  parameter ARBT_PTR_W = 2
) (
  output                            arbt_active, 
  input                             clk_en,

  input                             o_axi_arready,
  output                            o_axi_arvalid,
  output  [ID_W-1:0]                o_axi_arid,
  output  [AW-1:0]                  o_axi_araddr,
  output  [7:0]                     o_axi_arlen,
  output  [2:0]                     o_axi_arsize,
  output  [1:0]                     o_axi_arburst,
  output  [1:0]                     o_axi_arlock,
  output  [3:0]                     o_axi_arcache,
  output  [2:0]                     o_axi_arprot,
  output  [3:0]                     o_axi_arqos,
  output  [3:0]                     o_axi_arregion,
  output  [USR_W-1:0]               o_axi_aruser,
  
  input                             o_axi_awready,
  output                            o_axi_awvalid,
  output  [ID_W-1:0]                o_axi_awid,
  output  [AW-1:0]                  o_axi_awaddr,
  output  [7:0]                     o_axi_awlen,
  output  [2:0]                     o_axi_awsize,
  output  [1:0]                     o_axi_awburst,
  output  [1:0]                     o_axi_awlock,
  output  [3:0]                     o_axi_awcache,
  output  [2:0]                     o_axi_awprot,
  output  [3:0]                     o_axi_awqos,
  output  [3:0]                     o_axi_awregion,
  output  [USR_W-1:0]               o_axi_awuser, 

  input                             o_axi_wready,
  output                            o_axi_wvalid,
  output  [ID_W-1:0]                o_axi_wid,
  output  [DW-1:0]                  o_axi_wdata,
  output  [MW-1:0]                  o_axi_wstrb,
  output                            o_axi_wlast,
  
  output                            o_axi_rready,
  input                             o_axi_rvalid,
  input  [ID_W-1:0]                 o_axi_rid,
  input  [DW-1:0]                   o_axi_rdata,
  input  [1:0]                      o_axi_rresp,
  input                             o_axi_rlast,
  
  output                            o_axi_bready,
  input                             o_axi_bvalid,
  input  [ID_W-1:0]                 o_axi_bid,
  input  [1:0]                      o_axi_bresp,

  
  output [ARBT_NUM*1-1:0]           i_bus_axi_arready,
  input  [ARBT_NUM*1-1:0]           i_bus_axi_arvalid,
  input  [ARBT_NUM*ID_W-1:0]        i_bus_axi_arid,
  input  [ARBT_NUM*AW-1:0]          i_bus_axi_araddr,
  input  [ARBT_NUM*8-1:0]           i_bus_axi_arlen,
  input  [ARBT_NUM*3-1:0]           i_bus_axi_arsize,
  input  [ARBT_NUM*2-1:0]           i_bus_axi_arburst,
  input  [ARBT_NUM*2-1:0]           i_bus_axi_arlock,
  input  [ARBT_NUM*4-1:0]           i_bus_axi_arcache,
  input  [ARBT_NUM*3-1:0]           i_bus_axi_arprot,
  input  [ARBT_NUM*4-1:0]           i_bus_axi_arqos,
  input  [ARBT_NUM*4-1:0]           i_bus_axi_arregion,
  input  [ARBT_NUM*USR_W-1:0]       i_bus_axi_aruser,
  
  output [ARBT_NUM*1-1:0]           i_bus_axi_awready,
  input  [ARBT_NUM*1-1:0]           i_bus_axi_awvalid,
  input  [ARBT_NUM*ID_W-1:0]        i_bus_axi_awid,
  input  [ARBT_NUM*AW-1:0]          i_bus_axi_awaddr,
  input  [ARBT_NUM*8-1:0]           i_bus_axi_awlen,
  input  [ARBT_NUM*3-1:0]           i_bus_axi_awsize,
  input  [ARBT_NUM*2-1:0]           i_bus_axi_awburst,
  input  [ARBT_NUM*2-1:0]           i_bus_axi_awlock,
  input  [ARBT_NUM*4-1:0]           i_bus_axi_awcache,
  input  [ARBT_NUM*3-1:0]           i_bus_axi_awprot,
  input  [ARBT_NUM*4-1:0]           i_bus_axi_awqos,
  input  [ARBT_NUM*4-1:0]           i_bus_axi_awregion,
  input  [ARBT_NUM*USR_W-1:0]       i_bus_axi_awuser, 

  output [ARBT_NUM*1-1:0]           i_bus_axi_wready,
  input  [ARBT_NUM*1-1:0]           i_bus_axi_wvalid,
  input  [ARBT_NUM*ID_W-1:0]        i_bus_axi_wid,
  input  [ARBT_NUM*DW-1:0]          i_bus_axi_wdata,
  input  [ARBT_NUM*MW-1:0]          i_bus_axi_wstrb,
  input  [ARBT_NUM*1-1:0]           i_bus_axi_wlast,
  
  input  [ARBT_NUM*1-1:0]           i_bus_axi_rready,
  output [ARBT_NUM*1-1:0]           i_bus_axi_rvalid,
  output [ARBT_NUM*ID_W-1:0]        i_bus_axi_rid,
  output [ARBT_NUM*DW-1:0]          i_bus_axi_rdata,
  output [ARBT_NUM*2-1:0]           i_bus_axi_rresp,
  output [ARBT_NUM*1-1:0]           i_bus_axi_rlast,
  
  input  [ARBT_NUM*1-1:0]           i_bus_axi_bready,
  output [ARBT_NUM*1-1:0]           i_bus_axi_bvalid,
  output [ARBT_NUM*ID_W-1:0]        i_bus_axi_bid,
  output [ARBT_NUM*2-1:0]           i_bus_axi_bresp,

  input                             clk,  
  input                             rst_n
  );



genvar i;
generate 
  if(ARBT_NUM == 1) begin:gen_arbt_num_eq_1

    assign      i_bus_axi_arready   =  o_axi_arready;
    assign      o_axi_arvalid       =  i_bus_axi_arvalid; 
    assign      o_axi_arid          =  i_bus_axi_arid;
    assign      o_axi_araddr        =  i_bus_axi_araddr;
    assign      o_axi_arlen         =  i_bus_axi_arlen;
    assign      o_axi_arsize        =  i_bus_axi_arsize; 
    assign      o_axi_arburst       =  i_bus_axi_arburst;  
    assign      o_axi_arlock        =  i_bus_axi_arlock;      
    assign      o_axi_arcache       =  i_bus_axi_arcache;        
    assign      o_axi_arprot        =  i_bus_axi_arprot;          
    assign      o_axi_arqos         =  i_bus_axi_arqos;        
    assign      o_axi_arregion      =  i_bus_axi_arregion;         
    assign      o_axi_aruser        =  i_bus_axi_aruser;        
  
    assign      o_axi_rready        =  i_bus_axi_rready;       
    assign      i_bus_axi_rvalid    =  o_axi_rvalid;            
    assign      i_bus_axi_rid       =  o_axi_rid;         
    assign      i_bus_axi_rdata     =  o_axi_rdata;           
    assign      i_bus_axi_rresp     =  o_axi_rresp;             
    assign      i_bus_axi_rlast     =  o_axi_rlast;

    assign      i_bus_axi_awready   =  o_axi_awready;     
    assign      o_axi_awvalid       =  i_bus_axi_awvalid;          
    assign      o_axi_awid          =  i_bus_axi_awid;        
    assign      o_axi_awaddr        =  i_bus_axi_awaddr;          
    assign      o_axi_awlen         =  i_bus_axi_awlen;           
    assign      o_axi_awsize        =  i_bus_axi_awsize;       
    assign      o_axi_awburst       =  i_bus_axi_awburst;    
    assign      o_axi_awlock        =  i_bus_axi_awlock;       
    assign      o_axi_awcache       =  i_bus_axi_awcache;      
    assign      o_axi_awprot        =  i_bus_axi_awprot;        
    assign      o_axi_awqos         =  i_bus_axi_awqos;         
    assign      o_axi_awregion      =  i_bus_axi_awregion;         
    assign      o_axi_awuser        =  i_bus_axi_awuser;        
  
    assign      i_bus_axi_wready    =  o_axi_wready;          
    assign      o_axi_wvalid        =  i_bus_axi_wvalid;           
    assign      o_axi_wid           =  i_bus_axi_wid;              
    assign      o_axi_wdata         =  i_bus_axi_wdata;           
    assign      o_axi_wstrb         =  i_bus_axi_wstrb;           
    assign      o_axi_wlast         =  i_bus_axi_wlast;         
  
    assign      o_axi_bready        =  i_bus_axi_bready;         
    assign      i_bus_axi_bvalid    =  o_axi_bvalid;        
    assign      i_bus_axi_bid       =  o_axi_bid;      
    assign      i_bus_axi_bresp     =  o_axi_bresp;          


  end
  else begin:gen_arbt_num_gt_1

    integer j;



    wire  [ARBT_NUM*1-1:0]   i_axi_arready  ;
    wire  [ARBT_NUM*1-1:0]   i_axi_arvalid  ;
    wire  [ID_W-1:0]         i_axi_arid     [ARBT_NUM-1:0];
    wire  [AW-1:0]           i_axi_araddr   [ARBT_NUM-1:0];
    wire  [7:0]              i_axi_arlen    [ARBT_NUM-1:0];
    wire  [2:0]              i_axi_arsize   [ARBT_NUM-1:0];
    wire  [1:0]              i_axi_arburst  [ARBT_NUM-1:0];
    wire  [ARBT_NUM*2-1:0]   i_axi_arlock   [ARBT_NUM-1:0];
    wire  [3:0]              i_axi_arcache  [ARBT_NUM-1:0];
    wire  [2:0]              i_axi_arprot   [ARBT_NUM-1:0];
    wire  [3:0]              i_axi_arqos    [ARBT_NUM-1:0];
    wire  [3:0]              i_axi_arregion [ARBT_NUM-1:0];
    wire  [USR_W-1:0]        i_axi_aruser   [ARBT_NUM-1:0];
    
    wire  [ARBT_NUM*1-1:0]   i_axi_rready   ;
    wire  [ARBT_NUM*1-1:0]   i_axi_rvalid   ;
    wire  [ID_W-1:0]         i_axi_rid      [ARBT_NUM-1:0];
    wire  [DW-1:0]           i_axi_rdata    [ARBT_NUM-1:0];
    wire  [1:0]              i_axi_rresp    [ARBT_NUM-1:0];
    wire  [ARBT_NUM*1-1:0]   i_axi_rlast    ;

    wire  [ARBT_NUM*1-1:0]   i_axi_awready  ;
    wire  [ARBT_NUM*1-1:0]   i_axi_awvalid  ;
    wire  [ID_W-1:0]         i_axi_awid     [ARBT_NUM-1:0];
    wire  [AW-1:0]           i_axi_awaddr   [ARBT_NUM-1:0];
    wire  [7:0]              i_axi_awlen    [ARBT_NUM-1:0];
    wire  [2:0]              i_axi_awsize   [ARBT_NUM-1:0];
    wire  [1:0]              i_axi_awburst  [ARBT_NUM-1:0];
    wire  [ARBT_NUM*2-1:0]   i_axi_awlock   [ARBT_NUM-1:0];
    wire  [3:0]              i_axi_awcache  [ARBT_NUM-1:0];
    wire  [2:0]              i_axi_awprot   [ARBT_NUM-1:0];
    wire  [3:0]              i_axi_awqos    [ARBT_NUM-1:0];
    wire  [3:0]              i_axi_awregion [ARBT_NUM-1:0];
    wire  [USR_W-1:0]        i_axi_awuser   [ARBT_NUM-1:0]; 
                  
    wire  [ARBT_NUM*1-1:0]   i_axi_wready   ;
    wire  [ARBT_NUM*1-1:0]   i_axi_wvalid   ;
    wire  [ID_W-1:0]         i_axi_wid      [ARBT_NUM-1:0];
    wire  [DW-1:0]           i_axi_wdata    [ARBT_NUM-1:0];
    wire  [MW-1:0]           i_axi_wstrb    [ARBT_NUM-1:0];
    wire  [ARBT_NUM*1-1:0]   i_axi_wlast    ;
     
    wire  [ARBT_NUM*1-1:0]   i_axi_bready   ;
    wire  [ARBT_NUM*1-1:0]   i_axi_bvalid   ;
    wire  [ID_W-1:0]         i_axi_bid      [ARBT_NUM-1:0];
    wire  [1:0]              i_axi_bresp    [ARBT_NUM-1:0];

    wire  [ID_W-1:0]         i_axi_arid_pos     [ARBT_NUM-1:0];
    wire  [ID_W-1:0]         i_axi_awid_pos     [ARBT_NUM-1:0];
    wire  [ID_W-1:0]         i_axi_wid_pos     [ARBT_NUM-1:0];
    

    reg  [ID_W-1:0]         sel_o_axi_arid     ;
    reg  [AW-1:0]           sel_o_axi_araddr   ;
    reg  [7:0]              sel_o_axi_arlen    ;
    reg  [2:0]              sel_o_axi_arsize   ;
    reg  [1:0]              sel_o_axi_arburst  ;
    reg  [1:0]              sel_o_axi_arlock   ;
    reg  [3:0]              sel_o_axi_arcache  ;
    reg  [2:0]              sel_o_axi_arprot   ;
    reg  [3:0]              sel_o_axi_arqos    ;
    reg  [3:0]              sel_o_axi_arregion ;
    reg  [USR_W-1:0]        sel_o_axi_aruser   ;
    
    reg  [ID_W-1:0]         sel_o_axi_awid     ;
    reg  [AW-1:0]           sel_o_axi_awaddr   ;
    reg  [7:0]              sel_o_axi_awlen    ;
    reg  [2:0]              sel_o_axi_awsize   ;
    reg  [1:0]              sel_o_axi_awburst  ;
    reg  [1:0]              sel_o_axi_awlock   ;
    reg  [3:0]              sel_o_axi_awcache  ;
    reg  [2:0]              sel_o_axi_awprot   ;
    reg  [3:0]              sel_o_axi_awqos    ;
    reg  [3:0]              sel_o_axi_awregion ;
    reg  [USR_W-1:0]        sel_o_axi_awuser   ; 
             
    reg  [ID_W-1:0]         sel_o_axi_wid      ;
    reg  [DW-1:0]           sel_o_axi_wdata    ;
    reg  [MW-1:0]           sel_o_axi_wstrb    ;
    reg                     sel_o_axi_wlast    ;
     

    reg [ARBT_PTR_W-1:0] i_arbt_indic_wid;
    reg [ARBT_PTR_W-1:0] i_arbt_indic_awid;
    reg [ARBT_PTR_W-1:0] i_arbt_indic_arid;

    wire arbt_ar_ena;
    wire arbt_aw_ena;
    wire arbt_w_ena;
        
    wire [ARBT_PTR_W-1:0] icb_rsp_port_id;

    wire [ARBT_NUM-1:0] i_bus_axi_ar_cmd_grt_vec; 
    wire [ARBT_NUM-1:0] i_bus_axi_ar_cmd_sel;

    wire o_axi_arvalid_real; 
    wire o_axi_arready_real; 
    
    wire [ARBT_NUM-1:0] i_bus_axi_aw_cmd_grt_vec; 
    wire [ARBT_NUM-1:0] i_bus_axi_aw_cmd_sel;

    wire o_axi_awvalid_real; 
    wire o_axi_awready_real; 

    wire [ARBT_NUM-1:0] i_bus_axi_w_cmd_grt_vec; 
    wire [ARBT_NUM-1:0] i_bus_axi_w_cmd_sel;

    wire o_axi_wvalid_real; 
    wire o_axi_wready_real;

    wire aw_w_same_cycle;
    wire aw_w_fifo_bypass;
    wire aw_w_id_fifo_wen;
    wire aw_w_id_fifo_ren;
    
    wire aw_w_id_fifo_i_valid;
    wire aw_w_id_fifo_o_valid;
    wire aw_w_id_fifo_i_ready;
    wire aw_w_id_fifo_o_ready;
    wire [ARBT_NUM-1:0] aw_w_id_fifo_rdat;
    wire [ARBT_NUM-1:0] aw_w_id_fifo_wdat;
    
    wire aw_w_id_fifo_full;       
    wire aw_w_id_fifo_empty;
    
    wire aw_w_block;

    wire [ARBT_NUM*1-1:0] i_bus_axi_arvalid_pos; 
    wire [ARBT_NUM*1-1:0] i_bus_axi_arready_pos; 

    wire [ARBT_NUM*1-1:0] i_bus_axi_awvalid_pos; 
    wire [ARBT_NUM*1-1:0] i_bus_axi_awready_pos; 

    wire [ARBT_NUM*1-1:0] i_bus_axi_wvalid_pos; 
    wire [ARBT_NUM*1-1:0] i_bus_axi_wready_pos; 

    
    assign i_bus_axi_arvalid_pos = i_bus_axi_arvalid; 
    assign i_bus_axi_arready     = i_bus_axi_arready_pos; 

    assign o_axi_arvalid = o_axi_arvalid_real;
    assign o_axi_arready_real = o_axi_arready;

    
    assign i_bus_axi_awvalid_pos = i_bus_axi_awvalid; 
    assign i_bus_axi_awready     = i_bus_axi_awready_pos; 

    assign o_axi_awvalid = o_axi_awvalid_real;
    assign o_axi_awready_real = o_axi_awready; 

    
    assign i_bus_axi_wvalid_pos = i_bus_axi_wvalid; 
    assign i_bus_axi_wready     = i_bus_axi_wready_pos; 

    assign o_axi_wvalid = o_axi_wvalid_real & (~aw_w_block);
    assign o_axi_wready_real = o_axi_wready &  (~aw_w_block); 

    

    for(i = 0; i < ARBT_NUM; i = i+1)
    begin:gen_icb_distract

      assign  i_axi_arid    [i]  =  i_bus_axi_arid     [(i+1)*ID_W-1   : i*ID_W]      ;
      assign  i_axi_araddr  [i]  =  i_bus_axi_araddr   [(i+1)*AW-1     : i*AW]        ;
      assign  i_axi_arlen   [i]  =  i_bus_axi_arlen    [(i+1)*8-1      : i*8]         ;
      assign  i_axi_arsize  [i]  =  i_bus_axi_arsize   [(i+1)*3-1      : i*3]         ;
      assign  i_axi_arburst [i]  =  i_bus_axi_arburst  [(i+1)*2-1      : i*2]         ;
      assign  i_axi_arlock  [i]  =  i_bus_axi_arlock   [(i+1)*2-1      : i*2]         ;
      assign  i_axi_arcache [i]  =  i_bus_axi_arcache  [(i+1)*4-1      : i*4]         ;
      assign  i_axi_arprot  [i]  =  i_bus_axi_arprot   [(i+1)*3-1      : i*3]         ;
      assign  i_axi_arqos   [i]  =  i_bus_axi_arqos    [(i+1)*4-1      : i*4]         ;
      assign  i_axi_arregion[i]  =  i_bus_axi_arregion [(i+1)*4-1      : i*4]         ;
      assign  i_axi_aruser  [i]  =  i_bus_axi_aruser   [(i+1)*USR_W-1  : i*USR_W]     ;
      
      assign  i_axi_awid    [i]  =  i_bus_axi_awid     [(i+1)*ID_W-1   : i*ID_W]      ;
      assign  i_axi_awaddr  [i]  =  i_bus_axi_awaddr   [(i+1)*AW-1     : i*AW]        ;
      assign  i_axi_awlen   [i]  =  i_bus_axi_awlen    [(i+1)*8-1      : i*8]         ;
      assign  i_axi_awsize  [i]  =  i_bus_axi_awsize   [(i+1)*3-1      : i*3]         ;
      assign  i_axi_awburst [i]  =  i_bus_axi_awburst  [(i+1)*2-1      : i*2]         ;
      assign  i_axi_awlock  [i]  =  i_bus_axi_awlock   [(i+1)*2-1      : i*2]         ;
      assign  i_axi_awcache [i]  =  i_bus_axi_awcache  [(i+1)*4-1      : i*4]         ;
      assign  i_axi_awprot  [i]  =  i_bus_axi_awprot   [(i+1)*3-1      : i*3]         ;
      assign  i_axi_awqos   [i]  =  i_bus_axi_awqos    [(i+1)*4-1      : i*4]         ;
      assign  i_axi_awregion[i]  =  i_bus_axi_awregion [(i+1)*4-1      : i*4]         ;
      assign  i_axi_awuser  [i]  =  i_bus_axi_awuser   [(i+1)*USR_W-1  : i*USR_W]     ; 
      
      assign  i_axi_wid     [i]  =  i_bus_axi_wid      [(i+1)*ID_W-1   : i*ID_W]      ;
      assign  i_axi_wdata   [i]  =  i_bus_axi_wdata    [(i+1)*DW-1     : i*DW]        ;
      assign  i_axi_wstrb   [i]  =  i_bus_axi_wstrb    [(i+1)*MW-1     : i*MW]        ;
      assign  i_axi_wlast   [i]  =  i_bus_axi_wlast    [(i+1)*1-1      : i*1]         ;

      assign  i_bus_axi_arready_pos[i] = i_bus_axi_ar_cmd_grt_vec[i] & o_axi_arready_real;
      assign  i_bus_axi_rvalid[i] = o_axi_rvalid & (o_axi_rid[ID_W-1:ID_W-ARBT_PTR_W] == i[ARBT_PTR_W-1:0]);

      assign  i_bus_axi_awready_pos[i] = i_bus_axi_aw_cmd_grt_vec[i] & o_axi_awready_real;
      assign  i_bus_axi_bvalid[i] = o_axi_bvalid & (o_axi_bid[ID_W-1:ID_W-ARBT_PTR_W] == i[ARBT_PTR_W-1:0]); 

      assign  i_bus_axi_wready_pos[i] = i_bus_axi_w_cmd_grt_vec[i] & o_axi_wready_real;

      assign i_axi_arid_pos[i]   = {i_arbt_indic_arid,i_axi_arid[i][ID_W-ARBT_PTR_W-1:0]};
      assign i_axi_awid_pos[i]   = {i_arbt_indic_awid,i_axi_awid[i][ID_W-ARBT_PTR_W-1:0]};
      assign i_axi_wid_pos[i]    = {i_arbt_indic_wid,i_axi_wid[i][ID_W-ARBT_PTR_W-1:0]};

    end

    if(ARBT_SCHEME == 0) begin:gen_priorty_arbt
        
      for(i = 0; i < ARBT_NUM; i = i+1)
      begin:gen_priroty_grt_vec

        if(i==0) begin: gen_i_is_0
          assign i_bus_axi_ar_cmd_grt_vec[i] =  1'b1;
          assign i_bus_axi_ar_cmd_sel[i] = i_bus_axi_ar_cmd_grt_vec[i] & i_bus_axi_arvalid_pos[i];
          assign i_bus_axi_aw_cmd_grt_vec[i] =  1'b1;
          assign i_bus_axi_aw_cmd_sel[i] = i_bus_axi_aw_cmd_grt_vec[i] & i_bus_axi_awvalid_pos[i];
        end
        else begin:gen_i_is_not_0
          assign i_bus_axi_ar_cmd_grt_vec[i] =  ~(|i_bus_axi_arvalid_pos[i-1:0]);
          assign i_bus_axi_ar_cmd_sel[i] = i_bus_axi_ar_cmd_grt_vec[i] & i_bus_axi_arvalid_pos[i];
          assign i_bus_axi_aw_cmd_grt_vec[i] =  ~(|i_bus_axi_awvalid_pos[i-1:0]);
          assign i_bus_axi_aw_cmd_sel[i] = i_bus_axi_aw_cmd_grt_vec[i] & i_bus_axi_awvalid_pos[i];
        end
       
       assign i_bus_axi_w_cmd_sel[i] = i_bus_axi_w_cmd_grt_vec[i] & i_bus_axi_wvalid_pos[i];
      
      end

      assign o_axi_arvalid_real = |i_bus_axi_arvalid_pos; 
      assign o_axi_awvalid_real = |i_bus_axi_awvalid_pos; 
      assign o_axi_wvalid_real = |i_bus_axi_wvalid_pos; 

    end
    
   if(ARBT_SCHEME == 1) begin:gen_rrobin_arbt
     
     assign arbt_ar_ena = o_axi_arvalid & o_axi_arready; 
     n300_gnrl_rrobin # (
         .ARBT_NUM(ARBT_NUM)
     )u_n300_gnrl_ar_rrobin(
       .grt_vec  (i_bus_axi_ar_cmd_grt_vec),  
       .req_vec  (i_bus_axi_arvalid_pos),  
       .arbt_ena (arbt_ar_ena & clk_en),   
       .clk      (clk),
       .rst_n    (rst_n)
     );
     assign i_bus_axi_ar_cmd_sel = i_bus_axi_ar_cmd_grt_vec;
     assign o_axi_arvalid_real = |i_bus_axi_arvalid_pos; 

     
     assign arbt_aw_ena = o_axi_arvalid & o_axi_arready; 
     n300_gnrl_rrobin # (
         .ARBT_NUM(ARBT_NUM)
     )u_n300_gnrl_aw_rrobin(
       .grt_vec  (i_bus_axi_aw_cmd_grt_vec),  
       .req_vec  (i_bus_axi_awvalid_pos),  
       .arbt_ena (arbt_aw_ena & clk_en),   
       .clk      (clk),
       .rst_n    (rst_n)
     );
     assign i_bus_axi_aw_cmd_sel = i_bus_axi_aw_cmd_grt_vec;
     assign o_axi_awvalid_real = |i_bus_axi_awvalid_pos;

     assign i_bus_axi_w_cmd_sel = i_bus_axi_w_cmd_grt_vec;
     assign o_axi_wvalid_real = |i_bus_axi_wvalid_pos;

   end


    always @ (*) begin : sel_o_icb_cmd_ready_PROC
      sel_o_axi_arid      =  {ID_W   {1'b0}}  ;
      sel_o_axi_araddr    =  {AW     {1'b0}}  ;
      sel_o_axi_arlen     =  {8      {1'b0}}  ;
      sel_o_axi_arsize    =  {3      {1'b0}}  ;
      sel_o_axi_arburst   =  {2      {1'b0}}  ;
      sel_o_axi_arlock    =  {2      {1'b0}}  ;
      sel_o_axi_arcache   =  {4      {1'b0}}  ;
      sel_o_axi_arprot    =  {3      {1'b0}}  ;
      sel_o_axi_arqos     =  {4      {1'b0}}  ;
      sel_o_axi_arregion  =  {4      {1'b0}}  ;
      sel_o_axi_aruser    =  {USR_W  {1'b0}}  ;
                                   
      sel_o_axi_awid      =  {ID_W   {1'b0}}  ;
      sel_o_axi_awaddr    =  {AW     {1'b0}}  ;
      sel_o_axi_awlen     =  {8      {1'b0}}  ;
      sel_o_axi_awsize    =  {3      {1'b0}}  ;
      sel_o_axi_awburst   =  {2      {1'b0}}  ;
      sel_o_axi_awlock    =  {2      {1'b0}}  ;
      sel_o_axi_awcache   =  {4      {1'b0}}  ;
      sel_o_axi_awprot    =  {3      {1'b0}}  ;
      sel_o_axi_awqos     =  {4      {1'b0}}  ;
      sel_o_axi_awregion  =  {4      {1'b0}}  ;
      sel_o_axi_awuser    =  {USR_W  {1'b0}}  ; 
                                
      sel_o_axi_wid       =  {ID_W   {1'b0}}  ;
      sel_o_axi_wdata     =  {DW     {1'b0}}  ;
      sel_o_axi_wstrb     =  {MW     {1'b0}}  ;
      sel_o_axi_wlast     =  {1      {1'b0}}  ;

      
      for(j = 0; j < ARBT_NUM; j = j+1) begin
 
        sel_o_axi_arid      =  sel_o_axi_arid      | ( {ID_W   {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arid_pos     [j] ) ;
        sel_o_axi_araddr    =  sel_o_axi_araddr    | ( {AW     {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_araddr   [j] ) ;
        sel_o_axi_arlen     =  sel_o_axi_arlen     | ( {8      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arlen    [j] ) ;
        sel_o_axi_arsize    =  sel_o_axi_arsize    | ( {3      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arsize   [j] ) ;
        sel_o_axi_arburst   =  sel_o_axi_arburst   | ( {2      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arburst  [j] ) ;
        sel_o_axi_arlock    =  sel_o_axi_arlock    | ( {2      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arlock   [j] ) ;
        sel_o_axi_arcache   =  sel_o_axi_arcache   | ( {4      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arcache  [j] ) ;
        sel_o_axi_arprot    =  sel_o_axi_arprot    | ( {3      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arprot   [j] ) ;
        sel_o_axi_arqos     =  sel_o_axi_arqos     | ( {4      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arqos    [j] ) ;
        sel_o_axi_arregion  =  sel_o_axi_arregion  | ( {4      {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_arregion [j] ) ;
        sel_o_axi_aruser    =  sel_o_axi_aruser    | ( {USR_W  {i_bus_axi_ar_cmd_sel[j]}}  &  i_axi_aruser   [j] ) ;
                                                                                 
        sel_o_axi_awid      =  sel_o_axi_awid      | ( {ID_W   {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awid_pos     [j] ) ;
        sel_o_axi_awaddr    =  sel_o_axi_awaddr    | ( {AW     {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awaddr   [j] ) ;
        sel_o_axi_awlen     =  sel_o_axi_awlen     | ( {8      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awlen    [j] ) ;
        sel_o_axi_awsize    =  sel_o_axi_awsize    | ( {3      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awsize   [j] ) ;
        sel_o_axi_awburst   =  sel_o_axi_awburst   | ( {2      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awburst  [j] ) ;
        sel_o_axi_awlock    =  sel_o_axi_awlock    | ( {2      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awlock   [j] ) ;
        sel_o_axi_awcache   =  sel_o_axi_awcache   | ( {4      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awcache  [j] ) ;
        sel_o_axi_awprot    =  sel_o_axi_awprot    | ( {3      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awprot   [j] ) ;
        sel_o_axi_awqos     =  sel_o_axi_awqos     | ( {4      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awqos    [j] ) ;
        sel_o_axi_awregion  =  sel_o_axi_awregion  | ( {4      {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awregion [j] ) ;
        sel_o_axi_awuser    =  sel_o_axi_awuser    | ( {USR_W  {i_bus_axi_aw_cmd_sel[j]}}  &  i_axi_awuser   [j] ) ; 
                                               
        sel_o_axi_wid       =  sel_o_axi_wid       | ( {ID_W   {i_bus_axi_w_cmd_sel[j]}}  &  i_axi_wid_pos      [j] ) ;
        sel_o_axi_wdata     =  sel_o_axi_wdata     | ( {DW     {i_bus_axi_w_cmd_sel[j]}}  &  i_axi_wdata    [j] ) ;
        sel_o_axi_wstrb     =  sel_o_axi_wstrb     | ( {MW     {i_bus_axi_w_cmd_sel[j]}}  &  i_axi_wstrb    [j] ) ;
        sel_o_axi_wlast     =  sel_o_axi_wlast     | ( {1      {i_bus_axi_w_cmd_sel[j]}}  &  i_axi_wlast    [j] ) ;

      end
    end

    always @ (*) begin : i_arbt_indic_awid_PROC
      i_arbt_indic_awid = {ARBT_PTR_W{1'b0}};
      for(j = 0; j < ARBT_NUM; j = j+1) begin
        i_arbt_indic_awid = i_arbt_indic_awid | ({ARBT_PTR_W{i_bus_axi_aw_cmd_sel[j]}} & $unsigned(j[ARBT_PTR_W-1:0]));
      end
    end


    always @ (*) begin : i_arbt_indic_arid_PROC
      i_arbt_indic_arid = {ARBT_PTR_W{1'b0}};
      for(j = 0; j < ARBT_NUM; j = j+1) begin
        i_arbt_indic_arid = i_arbt_indic_arid | ({ARBT_PTR_W{i_bus_axi_ar_cmd_sel[j]}} & $unsigned(j[ARBT_PTR_W-1:0]));
      end
    end

    always @ (*) begin : i_arbt_indic_wid_PROC
      i_arbt_indic_wid = {ARBT_PTR_W{1'b0}};
      for(j = 0; j < ARBT_NUM; j = j+1) begin
        i_arbt_indic_wid = i_arbt_indic_wid | ({ARBT_PTR_W{i_bus_axi_w_cmd_sel[j]}} & $unsigned(j[ARBT_PTR_W-1:0]));
      end
    end


    
    assign aw_w_same_cycle = aw_w_id_fifo_empty &  o_axi_awvalid & o_axi_wvalid & o_axi_awready & o_axi_wready;
    assign aw_w_fifo_bypass = aw_w_same_cycle & (o_axi_awlen == 8'h0);

    assign aw_w_id_fifo_wen = o_axi_awvalid & o_axi_awready & (~aw_w_fifo_bypass);
    assign aw_w_id_fifo_ren = o_axi_wvalid & o_axi_wready & o_axi_wlast & (~aw_w_fifo_bypass);

    assign i_bus_axi_w_cmd_grt_vec = aw_w_same_cycle ? aw_w_id_fifo_wdat : aw_w_id_fifo_rdat;

    assign aw_w_id_fifo_i_valid = aw_w_id_fifo_wen ;
    assign aw_w_id_fifo_full    = (~aw_w_id_fifo_i_ready);
    assign aw_w_id_fifo_o_ready = aw_w_id_fifo_ren;
    assign aw_w_id_fifo_empty   = (~aw_w_id_fifo_o_valid);
    assign aw_w_id_fifo_wdat   = i_bus_axi_aw_cmd_grt_vec;
    assign aw_w_block = aw_w_id_fifo_empty & (~aw_w_same_cycle);


      ux607_gnrl_fifo # (
        .CUT_READY (FIFO_CUT_READY),
        .MSKO      (0),
        .DP  (FIFO_OUTS_NUM),
        .DW  (ARBT_NUM )
      ) u_ux607_gnrl_aw_w_id_fifo (
        .i_vld(aw_w_id_fifo_i_valid),
        .i_rdy(aw_w_id_fifo_i_ready),
        .i_dat(aw_w_id_fifo_wdat ),
        .o_vld(aw_w_id_fifo_o_valid),
        .o_rdy(aw_w_id_fifo_o_ready),  
        .o_dat(aw_w_id_fifo_rdat ),  
      
        .clk  (clk),
        .rst_n(rst_n)
      );

    assign o_axi_arid      =  sel_o_axi_arid     ;
    assign o_axi_araddr    =  sel_o_axi_araddr   ;
    assign o_axi_arlen     =  sel_o_axi_arlen    ;
    assign o_axi_arsize    =  sel_o_axi_arsize   ;
    assign o_axi_arburst   =  sel_o_axi_arburst  ;
    assign o_axi_arlock    =  sel_o_axi_arlock   ;
    assign o_axi_arcache   =  sel_o_axi_arcache  ;
    assign o_axi_arprot    =  sel_o_axi_arprot   ;
    assign o_axi_arqos     =  sel_o_axi_arqos    ;
    assign o_axi_arregion  =  sel_o_axi_arregion ;
    assign o_axi_aruser    =  sel_o_axi_aruser   ;
                          
    assign o_axi_awid      =  sel_o_axi_awid     ;
    assign o_axi_awaddr    =  sel_o_axi_awaddr   ;
    assign o_axi_awlen     =  sel_o_axi_awlen    ;
    assign o_axi_awsize    =  sel_o_axi_awsize   ;
    assign o_axi_awburst   =  sel_o_axi_awburst  ;
    assign o_axi_awlock    =  sel_o_axi_awlock   ;
    assign o_axi_awcache   =  sel_o_axi_awcache  ;
    assign o_axi_awprot    =  sel_o_axi_awprot   ;
    assign o_axi_awqos     =  sel_o_axi_awqos    ;
    assign o_axi_awregion  =  sel_o_axi_awregion ;
    assign o_axi_awuser    =  sel_o_axi_awuser   ; 
                          
    assign o_axi_wid       =  sel_o_axi_wid      ;
    assign o_axi_wdata     =  sel_o_axi_wdata    ;
    assign o_axi_wstrb     =  sel_o_axi_wstrb    ;
    assign o_axi_wlast     =  sel_o_axi_wlast    ;

    assign o_axi_rready = i_bus_axi_rready[o_axi_rid[ID_W-1:ID_W-ARBT_PTR_W]]; 
    assign o_axi_bready = i_bus_axi_bready[o_axi_bid[ID_W-1:ID_W-ARBT_PTR_W]]; 


    assign i_bus_axi_rid   =  {ARBT_NUM{o_axi_rid}};
    assign i_bus_axi_rdata =  {ARBT_NUM{o_axi_rdata}};
    assign i_bus_axi_rresp =  {ARBT_NUM{o_axi_rresp}};
    assign i_bus_axi_rlast =  {ARBT_NUM{o_axi_rlast}};
  
    assign i_bus_axi_bid   =  {ARBT_NUM{o_axi_bid}};
    assign i_bus_axi_bresp =  {ARBT_NUM{o_axi_bresp}};

  end
  endgenerate 

  assign arbt_active = 1'b1;


endmodule

