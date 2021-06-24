//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Jun 24 17:19:46 2021
//Host        : DESKTOP-6L7V3O8 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=11,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=6,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire ACLK_1;

  design_1_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(ACLK_1),
        .ARESETN(1'b0),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(1'b0),
        .M00_AXI_arready(1'b0),
        .M00_AXI_awready(1'b0),
        .M00_AXI_bresp(1'b0),
        .M00_AXI_bvalid(1'b0),
        .M00_AXI_rdata(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rresp(1'b0),
        .M00_AXI_rvalid(1'b0),
        .M00_AXI_wready(1'b0),
        .M01_ACLK(ACLK_1),
        .M01_ARESETN(1'b0),
        .M01_AXI_arready(1'b0),
        .M01_AXI_awready(1'b0),
        .M01_AXI_bresp(1'b0),
        .M01_AXI_bvalid(1'b0),
        .M01_AXI_rdata(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rresp(1'b0),
        .M01_AXI_rvalid(1'b0),
        .M01_AXI_wready(1'b0),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(1'b0),
        .S00_AXI_araddr(1'b0),
        .S00_AXI_arburst(1'b1),
        .S00_AXI_arcache(1'b1),
        .S00_AXI_arlen(1'b0),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(1'b0),
        .S00_AXI_arqos(1'b0),
        .S00_AXI_arsize(1'b0),
        .S00_AXI_arvalid(1'b0),
        .S00_AXI_awaddr(1'b0),
        .S00_AXI_awburst(1'b1),
        .S00_AXI_awcache(1'b1),
        .S00_AXI_awlen(1'b0),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(1'b0),
        .S00_AXI_awqos(1'b0),
        .S00_AXI_awsize(1'b0),
        .S00_AXI_awvalid(1'b0),
        .S00_AXI_bready(1'b0),
        .S00_AXI_rready(1'b0),
        .S00_AXI_wdata(1'b0),
        .S00_AXI_wlast(1'b0),
        .S00_AXI_wstrb(1'b1),
        .S00_AXI_wvalid(1'b0),
        .S01_ACLK(ACLK_1),
        .S01_ARESETN(1'b0),
        .S01_AXI_araddr(1'b0),
        .S01_AXI_arburst(1'b1),
        .S01_AXI_arcache(1'b1),
        .S01_AXI_arlen(1'b0),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot(1'b0),
        .S01_AXI_arqos(1'b0),
        .S01_AXI_arregion(1'b0),
        .S01_AXI_arsize(1'b0),
        .S01_AXI_arvalid(1'b0),
        .S01_AXI_awaddr(1'b0),
        .S01_AXI_awburst(1'b1),
        .S01_AXI_awcache(1'b1),
        .S01_AXI_awlen(1'b0),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(1'b0),
        .S01_AXI_awqos(1'b0),
        .S01_AXI_awregion(1'b0),
        .S01_AXI_awsize(1'b0),
        .S01_AXI_awvalid(1'b0),
        .S01_AXI_bready(1'b0),
        .S01_AXI_rready(1'b0),
        .S01_AXI_wdata(1'b0),
        .S01_AXI_wlast(1'b0),
        .S01_AXI_wstrb(1'b1),
        .S01_AXI_wvalid(1'b0),
        .S02_ACLK(ACLK_1),
        .S02_ARESETN(1'b0),
        .S02_AXI_araddr(1'b0),
        .S02_AXI_arburst(1'b1),
        .S02_AXI_arcache(1'b1),
        .S02_AXI_arlen(1'b0),
        .S02_AXI_arlock(1'b0),
        .S02_AXI_arprot(1'b0),
        .S02_AXI_arqos(1'b0),
        .S02_AXI_arregion(1'b0),
        .S02_AXI_arsize(1'b0),
        .S02_AXI_arvalid(1'b0),
        .S02_AXI_awaddr(1'b0),
        .S02_AXI_awburst(1'b1),
        .S02_AXI_awcache(1'b1),
        .S02_AXI_awlen(1'b0),
        .S02_AXI_awlock(1'b0),
        .S02_AXI_awprot(1'b0),
        .S02_AXI_awqos(1'b0),
        .S02_AXI_awregion(1'b0),
        .S02_AXI_awsize(1'b0),
        .S02_AXI_awvalid(1'b0),
        .S02_AXI_bready(1'b0),
        .S02_AXI_rready(1'b0),
        .S02_AXI_wdata(1'b0),
        .S02_AXI_wlast(1'b0),
        .S02_AXI_wstrb(1'b1),
        .S02_AXI_wvalid(1'b0));
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1(ACLK_1),
        .clk_out1(ACLK_1));
endmodule

module design_1_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output M00_AXI_araddr;
  output M00_AXI_arburst;
  output M00_AXI_arcache;
  output M00_AXI_arlen;
  output M00_AXI_arlock;
  output M00_AXI_arprot;
  output M00_AXI_arqos;
  input M00_AXI_arready;
  output M00_AXI_arregion;
  output M00_AXI_arsize;
  output M00_AXI_arvalid;
  output M00_AXI_awaddr;
  output M00_AXI_awburst;
  output M00_AXI_awcache;
  output M00_AXI_awlen;
  output M00_AXI_awlock;
  output M00_AXI_awprot;
  output M00_AXI_awqos;
  input M00_AXI_awready;
  output M00_AXI_awregion;
  output M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output M01_AXI_araddr;
  output M01_AXI_arburst;
  output M01_AXI_arcache;
  output M01_AXI_arlen;
  output M01_AXI_arlock;
  output M01_AXI_arprot;
  output M01_AXI_arqos;
  input M01_AXI_arready;
  output M01_AXI_arregion;
  output M01_AXI_arsize;
  output M01_AXI_arvalid;
  output M01_AXI_awaddr;
  output M01_AXI_awburst;
  output M01_AXI_awcache;
  output M01_AXI_awlen;
  output M01_AXI_awlock;
  output M01_AXI_awprot;
  output M01_AXI_awqos;
  input M01_AXI_awready;
  output M01_AXI_awregion;
  output M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input M01_AXI_bresp;
  input M01_AXI_bvalid;
  input M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input S00_AXI_araddr;
  input S00_AXI_arburst;
  input S00_AXI_arcache;
  input S00_AXI_arlen;
  input S00_AXI_arlock;
  input S00_AXI_arprot;
  input S00_AXI_arqos;
  output S00_AXI_arready;
  input S00_AXI_arsize;
  input S00_AXI_arvalid;
  input S00_AXI_awaddr;
  input S00_AXI_awburst;
  input S00_AXI_awcache;
  input S00_AXI_awlen;
  input S00_AXI_awlock;
  input S00_AXI_awprot;
  input S00_AXI_awqos;
  output S00_AXI_awready;
  input S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input S01_AXI_araddr;
  input S01_AXI_arburst;
  input S01_AXI_arcache;
  input S01_AXI_arlen;
  input S01_AXI_arlock;
  input S01_AXI_arprot;
  input S01_AXI_arqos;
  output S01_AXI_arready;
  input S01_AXI_arregion;
  input S01_AXI_arsize;
  input S01_AXI_arvalid;
  input S01_AXI_awaddr;
  input S01_AXI_awburst;
  input S01_AXI_awcache;
  input S01_AXI_awlen;
  input S01_AXI_awlock;
  input S01_AXI_awprot;
  input S01_AXI_awqos;
  output S01_AXI_awready;
  input S01_AXI_awregion;
  input S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output S01_AXI_bresp;
  output S01_AXI_bvalid;
  output S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input S02_AXI_araddr;
  input S02_AXI_arburst;
  input S02_AXI_arcache;
  input S02_AXI_arlen;
  input S02_AXI_arlock;
  input S02_AXI_arprot;
  input S02_AXI_arqos;
  output S02_AXI_arready;
  input S02_AXI_arregion;
  input S02_AXI_arsize;
  input S02_AXI_arvalid;
  input S02_AXI_awaddr;
  input S02_AXI_awburst;
  input S02_AXI_awcache;
  input S02_AXI_awlen;
  input S02_AXI_awlock;
  input S02_AXI_awprot;
  input S02_AXI_awqos;
  output S02_AXI_awready;
  input S02_AXI_awregion;
  input S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output S02_AXI_bresp;
  output S02_AXI_bvalid;
  output S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output S02_AXI_rresp;
  output S02_AXI_rvalid;
  input S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire axi_interconnect_0_to_s00_couplers_ARADDR;
  wire axi_interconnect_0_to_s00_couplers_ARBURST;
  wire axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire axi_interconnect_0_to_s00_couplers_ARPROT;
  wire axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire axi_interconnect_0_to_s00_couplers_AWADDR;
  wire axi_interconnect_0_to_s00_couplers_AWBURST;
  wire axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire axi_interconnect_0_to_s00_couplers_AWPROT;
  wire axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire axi_interconnect_0_to_s00_couplers_RDATA;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire axi_interconnect_0_to_s01_couplers_ARADDR;
  wire axi_interconnect_0_to_s01_couplers_ARBURST;
  wire axi_interconnect_0_to_s01_couplers_ARCACHE;
  wire axi_interconnect_0_to_s01_couplers_ARLEN;
  wire axi_interconnect_0_to_s01_couplers_ARLOCK;
  wire axi_interconnect_0_to_s01_couplers_ARPROT;
  wire axi_interconnect_0_to_s01_couplers_ARQOS;
  wire axi_interconnect_0_to_s01_couplers_ARREADY;
  wire axi_interconnect_0_to_s01_couplers_ARREGION;
  wire axi_interconnect_0_to_s01_couplers_ARSIZE;
  wire axi_interconnect_0_to_s01_couplers_ARVALID;
  wire axi_interconnect_0_to_s01_couplers_AWADDR;
  wire axi_interconnect_0_to_s01_couplers_AWBURST;
  wire axi_interconnect_0_to_s01_couplers_AWCACHE;
  wire axi_interconnect_0_to_s01_couplers_AWLEN;
  wire axi_interconnect_0_to_s01_couplers_AWLOCK;
  wire axi_interconnect_0_to_s01_couplers_AWPROT;
  wire axi_interconnect_0_to_s01_couplers_AWQOS;
  wire axi_interconnect_0_to_s01_couplers_AWREADY;
  wire axi_interconnect_0_to_s01_couplers_AWREGION;
  wire axi_interconnect_0_to_s01_couplers_AWSIZE;
  wire axi_interconnect_0_to_s01_couplers_AWVALID;
  wire axi_interconnect_0_to_s01_couplers_BREADY;
  wire axi_interconnect_0_to_s01_couplers_BRESP;
  wire axi_interconnect_0_to_s01_couplers_BVALID;
  wire axi_interconnect_0_to_s01_couplers_RDATA;
  wire axi_interconnect_0_to_s01_couplers_RLAST;
  wire axi_interconnect_0_to_s01_couplers_RREADY;
  wire axi_interconnect_0_to_s01_couplers_RRESP;
  wire axi_interconnect_0_to_s01_couplers_RVALID;
  wire axi_interconnect_0_to_s01_couplers_WDATA;
  wire axi_interconnect_0_to_s01_couplers_WLAST;
  wire axi_interconnect_0_to_s01_couplers_WREADY;
  wire axi_interconnect_0_to_s01_couplers_WSTRB;
  wire axi_interconnect_0_to_s01_couplers_WVALID;
  wire axi_interconnect_0_to_s02_couplers_ARADDR;
  wire axi_interconnect_0_to_s02_couplers_ARBURST;
  wire axi_interconnect_0_to_s02_couplers_ARCACHE;
  wire axi_interconnect_0_to_s02_couplers_ARLEN;
  wire axi_interconnect_0_to_s02_couplers_ARLOCK;
  wire axi_interconnect_0_to_s02_couplers_ARPROT;
  wire axi_interconnect_0_to_s02_couplers_ARQOS;
  wire axi_interconnect_0_to_s02_couplers_ARREADY;
  wire axi_interconnect_0_to_s02_couplers_ARREGION;
  wire axi_interconnect_0_to_s02_couplers_ARSIZE;
  wire axi_interconnect_0_to_s02_couplers_ARVALID;
  wire axi_interconnect_0_to_s02_couplers_AWADDR;
  wire axi_interconnect_0_to_s02_couplers_AWBURST;
  wire axi_interconnect_0_to_s02_couplers_AWCACHE;
  wire axi_interconnect_0_to_s02_couplers_AWLEN;
  wire axi_interconnect_0_to_s02_couplers_AWLOCK;
  wire axi_interconnect_0_to_s02_couplers_AWPROT;
  wire axi_interconnect_0_to_s02_couplers_AWQOS;
  wire axi_interconnect_0_to_s02_couplers_AWREADY;
  wire axi_interconnect_0_to_s02_couplers_AWREGION;
  wire axi_interconnect_0_to_s02_couplers_AWSIZE;
  wire axi_interconnect_0_to_s02_couplers_AWVALID;
  wire axi_interconnect_0_to_s02_couplers_BREADY;
  wire axi_interconnect_0_to_s02_couplers_BRESP;
  wire axi_interconnect_0_to_s02_couplers_BVALID;
  wire axi_interconnect_0_to_s02_couplers_RDATA;
  wire axi_interconnect_0_to_s02_couplers_RLAST;
  wire axi_interconnect_0_to_s02_couplers_RREADY;
  wire axi_interconnect_0_to_s02_couplers_RRESP;
  wire axi_interconnect_0_to_s02_couplers_RVALID;
  wire axi_interconnect_0_to_s02_couplers_WDATA;
  wire axi_interconnect_0_to_s02_couplers_WLAST;
  wire axi_interconnect_0_to_s02_couplers_WREADY;
  wire axi_interconnect_0_to_s02_couplers_WSTRB;
  wire axi_interconnect_0_to_s02_couplers_WVALID;
  wire m00_couplers_to_axi_interconnect_0_ARADDR;
  wire m00_couplers_to_axi_interconnect_0_ARBURST;
  wire m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire m00_couplers_to_axi_interconnect_0_ARLEN;
  wire m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire m00_couplers_to_axi_interconnect_0_ARPROT;
  wire m00_couplers_to_axi_interconnect_0_ARQOS;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire m00_couplers_to_axi_interconnect_0_ARREGION;
  wire m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire m00_couplers_to_axi_interconnect_0_AWADDR;
  wire m00_couplers_to_axi_interconnect_0_AWBURST;
  wire m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire m00_couplers_to_axi_interconnect_0_AWLEN;
  wire m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire m00_couplers_to_axi_interconnect_0_AWPROT;
  wire m00_couplers_to_axi_interconnect_0_AWQOS;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire m00_couplers_to_axi_interconnect_0_AWREGION;
  wire m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARBURST;
  wire m01_couplers_to_axi_interconnect_0_ARCACHE;
  wire m01_couplers_to_axi_interconnect_0_ARLEN;
  wire m01_couplers_to_axi_interconnect_0_ARLOCK;
  wire m01_couplers_to_axi_interconnect_0_ARPROT;
  wire m01_couplers_to_axi_interconnect_0_ARQOS;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARREGION;
  wire m01_couplers_to_axi_interconnect_0_ARSIZE;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWBURST;
  wire m01_couplers_to_axi_interconnect_0_AWCACHE;
  wire m01_couplers_to_axi_interconnect_0_AWLEN;
  wire m01_couplers_to_axi_interconnect_0_AWLOCK;
  wire m01_couplers_to_axi_interconnect_0_AWPROT;
  wire m01_couplers_to_axi_interconnect_0_AWQOS;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWREGION;
  wire m01_couplers_to_axi_interconnect_0_AWSIZE;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RLAST;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WLAST;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [0:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arlen = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arqos = m00_couplers_to_axi_interconnect_0_ARQOS;
  assign M00_AXI_arregion = m00_couplers_to_axi_interconnect_0_ARREGION;
  assign M00_AXI_arsize = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awlen = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awqos = m00_couplers_to_axi_interconnect_0_AWQOS;
  assign M00_AXI_awregion = m00_couplers_to_axi_interconnect_0_AWREGION;
  assign M00_AXI_awsize = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_AXI_araddr = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arburst = m01_couplers_to_axi_interconnect_0_ARBURST;
  assign M01_AXI_arcache = m01_couplers_to_axi_interconnect_0_ARCACHE;
  assign M01_AXI_arlen = m01_couplers_to_axi_interconnect_0_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_axi_interconnect_0_ARLOCK;
  assign M01_AXI_arprot = m01_couplers_to_axi_interconnect_0_ARPROT;
  assign M01_AXI_arqos = m01_couplers_to_axi_interconnect_0_ARQOS;
  assign M01_AXI_arregion = m01_couplers_to_axi_interconnect_0_ARREGION;
  assign M01_AXI_arsize = m01_couplers_to_axi_interconnect_0_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awburst = m01_couplers_to_axi_interconnect_0_AWBURST;
  assign M01_AXI_awcache = m01_couplers_to_axi_interconnect_0_AWCACHE;
  assign M01_AXI_awlen = m01_couplers_to_axi_interconnect_0_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_axi_interconnect_0_AWLOCK;
  assign M01_AXI_awprot = m01_couplers_to_axi_interconnect_0_AWPROT;
  assign M01_AXI_awqos = m01_couplers_to_axi_interconnect_0_AWQOS;
  assign M01_AXI_awregion = m01_couplers_to_axi_interconnect_0_AWREGION;
  assign M01_AXI_awsize = m01_couplers_to_axi_interconnect_0_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_axi_interconnect_0_WLAST;
  assign M01_AXI_wstrb = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign S01_AXI_arready = axi_interconnect_0_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_0_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp = axi_interconnect_0_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_0_to_s01_couplers_BVALID;
  assign S01_AXI_rdata = axi_interconnect_0_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_interconnect_0_to_s01_couplers_RLAST;
  assign S01_AXI_rresp = axi_interconnect_0_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_0_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_0_to_s01_couplers_WREADY;
  assign S02_AXI_arready = axi_interconnect_0_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = axi_interconnect_0_to_s02_couplers_AWREADY;
  assign S02_AXI_bresp = axi_interconnect_0_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = axi_interconnect_0_to_s02_couplers_BVALID;
  assign S02_AXI_rdata = axi_interconnect_0_to_s02_couplers_RDATA;
  assign S02_AXI_rlast = axi_interconnect_0_to_s02_couplers_RLAST;
  assign S02_AXI_rresp = axi_interconnect_0_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = axi_interconnect_0_to_s02_couplers_RVALID;
  assign S02_AXI_wready = axi_interconnect_0_to_s02_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr;
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst;
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache;
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen;
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot;
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos;
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize;
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr;
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst;
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache;
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen;
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot;
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos;
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize;
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata;
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb;
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_0_to_s01_couplers_ARADDR = S01_AXI_araddr;
  assign axi_interconnect_0_to_s01_couplers_ARBURST = S01_AXI_arburst;
  assign axi_interconnect_0_to_s01_couplers_ARCACHE = S01_AXI_arcache;
  assign axi_interconnect_0_to_s01_couplers_ARLEN = S01_AXI_arlen;
  assign axi_interconnect_0_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign axi_interconnect_0_to_s01_couplers_ARPROT = S01_AXI_arprot;
  assign axi_interconnect_0_to_s01_couplers_ARQOS = S01_AXI_arqos;
  assign axi_interconnect_0_to_s01_couplers_ARREGION = S01_AXI_arregion;
  assign axi_interconnect_0_to_s01_couplers_ARSIZE = S01_AXI_arsize;
  assign axi_interconnect_0_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_0_to_s01_couplers_AWADDR = S01_AXI_awaddr;
  assign axi_interconnect_0_to_s01_couplers_AWBURST = S01_AXI_awburst;
  assign axi_interconnect_0_to_s01_couplers_AWCACHE = S01_AXI_awcache;
  assign axi_interconnect_0_to_s01_couplers_AWLEN = S01_AXI_awlen;
  assign axi_interconnect_0_to_s01_couplers_AWLOCK = S01_AXI_awlock;
  assign axi_interconnect_0_to_s01_couplers_AWPROT = S01_AXI_awprot;
  assign axi_interconnect_0_to_s01_couplers_AWQOS = S01_AXI_awqos;
  assign axi_interconnect_0_to_s01_couplers_AWREGION = S01_AXI_awregion;
  assign axi_interconnect_0_to_s01_couplers_AWSIZE = S01_AXI_awsize;
  assign axi_interconnect_0_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_0_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_0_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_0_to_s01_couplers_WDATA = S01_AXI_wdata;
  assign axi_interconnect_0_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_0_to_s01_couplers_WSTRB = S01_AXI_wstrb;
  assign axi_interconnect_0_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign axi_interconnect_0_to_s02_couplers_ARADDR = S02_AXI_araddr;
  assign axi_interconnect_0_to_s02_couplers_ARBURST = S02_AXI_arburst;
  assign axi_interconnect_0_to_s02_couplers_ARCACHE = S02_AXI_arcache;
  assign axi_interconnect_0_to_s02_couplers_ARLEN = S02_AXI_arlen;
  assign axi_interconnect_0_to_s02_couplers_ARLOCK = S02_AXI_arlock;
  assign axi_interconnect_0_to_s02_couplers_ARPROT = S02_AXI_arprot;
  assign axi_interconnect_0_to_s02_couplers_ARQOS = S02_AXI_arqos;
  assign axi_interconnect_0_to_s02_couplers_ARREGION = S02_AXI_arregion;
  assign axi_interconnect_0_to_s02_couplers_ARSIZE = S02_AXI_arsize;
  assign axi_interconnect_0_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign axi_interconnect_0_to_s02_couplers_AWADDR = S02_AXI_awaddr;
  assign axi_interconnect_0_to_s02_couplers_AWBURST = S02_AXI_awburst;
  assign axi_interconnect_0_to_s02_couplers_AWCACHE = S02_AXI_awcache;
  assign axi_interconnect_0_to_s02_couplers_AWLEN = S02_AXI_awlen;
  assign axi_interconnect_0_to_s02_couplers_AWLOCK = S02_AXI_awlock;
  assign axi_interconnect_0_to_s02_couplers_AWPROT = S02_AXI_awprot;
  assign axi_interconnect_0_to_s02_couplers_AWQOS = S02_AXI_awqos;
  assign axi_interconnect_0_to_s02_couplers_AWREGION = S02_AXI_awregion;
  assign axi_interconnect_0_to_s02_couplers_AWSIZE = S02_AXI_awsize;
  assign axi_interconnect_0_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign axi_interconnect_0_to_s02_couplers_BREADY = S02_AXI_bready;
  assign axi_interconnect_0_to_s02_couplers_RREADY = S02_AXI_rready;
  assign axi_interconnect_0_to_s02_couplers_WDATA = S02_AXI_wdata;
  assign axi_interconnect_0_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign axi_interconnect_0_to_s02_couplers_WSTRB = S02_AXI_wstrb;
  assign axi_interconnect_0_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp;
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata;
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp;
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp;
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata;
  assign m01_couplers_to_axi_interconnect_0_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp;
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  m00_couplers_imp_1CA5Z32 m00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m00_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m00_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR[0]),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST[0]),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE[0]),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN[0]),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT[0]),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS[0]),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION[0]),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE[0]),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR[0]),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST[0]),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE[0]),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN[0]),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT[0]),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS[0]),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION[0]),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE[0]),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA[0]),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB[0]),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_I4GRPB m01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m01_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m01_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m01_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arqos(m01_couplers_to_axi_interconnect_0_ARQOS),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arregion(m01_couplers_to_axi_interconnect_0_ARREGION),
        .M_AXI_arsize(m01_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m01_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m01_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m01_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awqos(m01_couplers_to_axi_interconnect_0_AWQOS),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awregion(m01_couplers_to_axi_interconnect_0_AWREGION),
        .M_AXI_awsize(m01_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m01_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m01_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR[32]),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST[2]),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE[4]),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN[8]),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT[3]),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS[4]),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION[4]),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE[3]),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR[32]),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST[2]),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE[4]),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN[8]),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT[3]),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS[4]),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION[4]),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE[3]),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA[32]),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB[4]),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_O7FAN0 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arregion(1'b0),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awregion(1'b0),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  s01_couplers_imp_1F69D31 s01_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s01_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s01_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s01_couplers_WVALID));
  s02_couplers_imp_N071UN s02_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_0_to_s02_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s02_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s02_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_to_s02_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s02_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s02_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s02_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_0_to_s02_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_0_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s02_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s02_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s02_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_to_s02_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s02_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s02_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s02_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_0_to_s02_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_0_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_to_s02_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_0_to_s02_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s02_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s02_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s02_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_0_to_s02_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s02_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s02_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s02_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s02_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s02_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s02_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s02_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast({xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_1CA5Z32
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARBURST;
  wire m00_couplers_to_m00_couplers_ARCACHE;
  wire m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARREGION;
  wire m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWBURST;
  wire m00_couplers_to_m00_couplers_AWCACHE;
  wire m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWREGION;
  wire m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arregion = m00_couplers_to_m00_couplers_ARREGION;
  assign M_AXI_arsize = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awregion = m00_couplers_to_m00_couplers_AWREGION;
  assign M_AXI_awsize = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr;
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst;
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache;
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen;
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot;
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos;
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARREGION = S_AXI_arregion;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr;
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst;
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache;
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen;
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot;
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos;
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWREGION = S_AXI_awregion;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp;
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata;
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp;
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata;
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_I4GRPB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output M_AXI_araddr;
  output M_AXI_arburst;
  output M_AXI_arcache;
  output M_AXI_arlen;
  output M_AXI_arlock;
  output M_AXI_arprot;
  output M_AXI_arqos;
  input M_AXI_arready;
  output M_AXI_arregion;
  output M_AXI_arsize;
  output M_AXI_arvalid;
  output M_AXI_awaddr;
  output M_AXI_awburst;
  output M_AXI_awcache;
  output M_AXI_awlen;
  output M_AXI_awlock;
  output M_AXI_awprot;
  output M_AXI_awqos;
  input M_AXI_awready;
  output M_AXI_awregion;
  output M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bresp;
  input M_AXI_bvalid;
  input M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input M_AXI_rresp;
  input M_AXI_rvalid;
  output M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARBURST;
  wire m01_couplers_to_m01_couplers_ARCACHE;
  wire m01_couplers_to_m01_couplers_ARLEN;
  wire m01_couplers_to_m01_couplers_ARLOCK;
  wire m01_couplers_to_m01_couplers_ARPROT;
  wire m01_couplers_to_m01_couplers_ARQOS;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARREGION;
  wire m01_couplers_to_m01_couplers_ARSIZE;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWBURST;
  wire m01_couplers_to_m01_couplers_AWCACHE;
  wire m01_couplers_to_m01_couplers_AWLEN;
  wire m01_couplers_to_m01_couplers_AWLOCK;
  wire m01_couplers_to_m01_couplers_AWPROT;
  wire m01_couplers_to_m01_couplers_AWQOS;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWREGION;
  wire m01_couplers_to_m01_couplers_AWSIZE;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RLAST;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WLAST;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arburst = m01_couplers_to_m01_couplers_ARBURST;
  assign M_AXI_arcache = m01_couplers_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen = m01_couplers_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = m01_couplers_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arqos = m01_couplers_to_m01_couplers_ARQOS;
  assign M_AXI_arregion = m01_couplers_to_m01_couplers_ARREGION;
  assign M_AXI_arsize = m01_couplers_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awburst = m01_couplers_to_m01_couplers_AWBURST;
  assign M_AXI_awcache = m01_couplers_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen = m01_couplers_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = m01_couplers_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awqos = m01_couplers_to_m01_couplers_AWQOS;
  assign M_AXI_awregion = m01_couplers_to_m01_couplers_AWREGION;
  assign M_AXI_awsize = m01_couplers_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wlast = m01_couplers_to_m01_couplers_WLAST;
  assign M_AXI_wstrb = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rlast = m01_couplers_to_m01_couplers_RLAST;
  assign S_AXI_rresp = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr;
  assign m01_couplers_to_m01_couplers_ARBURST = S_AXI_arburst;
  assign m01_couplers_to_m01_couplers_ARCACHE = S_AXI_arcache;
  assign m01_couplers_to_m01_couplers_ARLEN = S_AXI_arlen;
  assign m01_couplers_to_m01_couplers_ARLOCK = S_AXI_arlock;
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot;
  assign m01_couplers_to_m01_couplers_ARQOS = S_AXI_arqos;
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARREGION = S_AXI_arregion;
  assign m01_couplers_to_m01_couplers_ARSIZE = S_AXI_arsize;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr;
  assign m01_couplers_to_m01_couplers_AWBURST = S_AXI_awburst;
  assign m01_couplers_to_m01_couplers_AWCACHE = S_AXI_awcache;
  assign m01_couplers_to_m01_couplers_AWLEN = S_AXI_awlen;
  assign m01_couplers_to_m01_couplers_AWLOCK = S_AXI_awlock;
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot;
  assign m01_couplers_to_m01_couplers_AWQOS = S_AXI_awqos;
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWREGION = S_AXI_awregion;
  assign m01_couplers_to_m01_couplers_AWSIZE = S_AXI_awsize;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp;
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata;
  assign m01_couplers_to_m01_couplers_RLAST = M_AXI_rlast;
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp;
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata;
  assign m01_couplers_to_m01_couplers_WLAST = S_AXI_wlast;
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb;
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_O7FAN0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire s00_couplers_to_s00_data_fifo_ARADDR;
  wire s00_couplers_to_s00_data_fifo_ARBURST;
  wire s00_couplers_to_s00_data_fifo_ARCACHE;
  wire s00_couplers_to_s00_data_fifo_ARLEN;
  wire s00_couplers_to_s00_data_fifo_ARLOCK;
  wire s00_couplers_to_s00_data_fifo_ARPROT;
  wire s00_couplers_to_s00_data_fifo_ARQOS;
  wire s00_couplers_to_s00_data_fifo_ARREADY;
  wire s00_couplers_to_s00_data_fifo_ARREGION;
  wire s00_couplers_to_s00_data_fifo_ARSIZE;
  wire s00_couplers_to_s00_data_fifo_ARVALID;
  wire s00_couplers_to_s00_data_fifo_AWADDR;
  wire s00_couplers_to_s00_data_fifo_AWBURST;
  wire s00_couplers_to_s00_data_fifo_AWCACHE;
  wire s00_couplers_to_s00_data_fifo_AWLEN;
  wire s00_couplers_to_s00_data_fifo_AWLOCK;
  wire s00_couplers_to_s00_data_fifo_AWPROT;
  wire s00_couplers_to_s00_data_fifo_AWQOS;
  wire s00_couplers_to_s00_data_fifo_AWREADY;
  wire s00_couplers_to_s00_data_fifo_AWREGION;
  wire s00_couplers_to_s00_data_fifo_AWSIZE;
  wire s00_couplers_to_s00_data_fifo_AWVALID;
  wire s00_couplers_to_s00_data_fifo_BREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_BRESP;
  wire s00_couplers_to_s00_data_fifo_BVALID;
  wire [31:0]s00_couplers_to_s00_data_fifo_RDATA;
  wire s00_couplers_to_s00_data_fifo_RLAST;
  wire s00_couplers_to_s00_data_fifo_RREADY;
  wire [1:0]s00_couplers_to_s00_data_fifo_RRESP;
  wire s00_couplers_to_s00_data_fifo_RVALID;
  wire s00_couplers_to_s00_data_fifo_WDATA;
  wire s00_couplers_to_s00_data_fifo_WLAST;
  wire s00_couplers_to_s00_data_fifo_WREADY;
  wire s00_couplers_to_s00_data_fifo_WSTRB;
  wire s00_couplers_to_s00_data_fifo_WVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_ARADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_ARBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_ARLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_ARLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_ARQOS;
  wire s00_data_fifo_to_s00_couplers_ARREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_ARSIZE;
  wire s00_data_fifo_to_s00_couplers_ARVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_AWADDR;
  wire [1:0]s00_data_fifo_to_s00_couplers_AWBURST;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWCACHE;
  wire [7:0]s00_data_fifo_to_s00_couplers_AWLEN;
  wire [0:0]s00_data_fifo_to_s00_couplers_AWLOCK;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWPROT;
  wire [3:0]s00_data_fifo_to_s00_couplers_AWQOS;
  wire s00_data_fifo_to_s00_couplers_AWREADY;
  wire [2:0]s00_data_fifo_to_s00_couplers_AWSIZE;
  wire s00_data_fifo_to_s00_couplers_AWVALID;
  wire s00_data_fifo_to_s00_couplers_BREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_BRESP;
  wire s00_data_fifo_to_s00_couplers_BVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_RDATA;
  wire s00_data_fifo_to_s00_couplers_RLAST;
  wire s00_data_fifo_to_s00_couplers_RREADY;
  wire [1:0]s00_data_fifo_to_s00_couplers_RRESP;
  wire s00_data_fifo_to_s00_couplers_RVALID;
  wire [31:0]s00_data_fifo_to_s00_couplers_WDATA;
  wire s00_data_fifo_to_s00_couplers_WLAST;
  wire s00_data_fifo_to_s00_couplers_WREADY;
  wire [3:0]s00_data_fifo_to_s00_couplers_WSTRB;
  wire s00_data_fifo_to_s00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s00_data_fifo_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s00_data_fifo_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s00_data_fifo_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s00_data_fifo_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = s00_data_fifo_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s00_data_fifo_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s00_data_fifo_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s00_data_fifo_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = s00_data_fifo_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_data_fifo_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s00_data_fifo_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s00_data_fifo_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s00_data_fifo_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = s00_data_fifo_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s00_data_fifo_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s00_data_fifo_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s00_data_fifo_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = s00_data_fifo_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_data_fifo_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_data_fifo_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_data_fifo_to_s00_couplers_WDATA;
  assign M_AXI_wlast = s00_data_fifo_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s00_data_fifo_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_data_fifo_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_data_fifo_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_data_fifo_AWREADY;
  assign S_AXI_bresp = s00_couplers_to_s00_data_fifo_BRESP[0];
  assign S_AXI_bvalid = s00_couplers_to_s00_data_fifo_BVALID;
  assign S_AXI_rdata = s00_couplers_to_s00_data_fifo_RDATA[0];
  assign S_AXI_rlast = s00_couplers_to_s00_data_fifo_RLAST;
  assign S_AXI_rresp = s00_couplers_to_s00_data_fifo_RRESP[0];
  assign S_AXI_rvalid = s00_couplers_to_s00_data_fifo_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_data_fifo_WREADY;
  assign s00_couplers_to_s00_data_fifo_ARADDR = S_AXI_araddr;
  assign s00_couplers_to_s00_data_fifo_ARBURST = S_AXI_arburst;
  assign s00_couplers_to_s00_data_fifo_ARCACHE = S_AXI_arcache;
  assign s00_couplers_to_s00_data_fifo_ARLEN = S_AXI_arlen;
  assign s00_couplers_to_s00_data_fifo_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_data_fifo_ARPROT = S_AXI_arprot;
  assign s00_couplers_to_s00_data_fifo_ARQOS = S_AXI_arqos;
  assign s00_couplers_to_s00_data_fifo_ARREGION = S_AXI_arregion;
  assign s00_couplers_to_s00_data_fifo_ARSIZE = S_AXI_arsize;
  assign s00_couplers_to_s00_data_fifo_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_data_fifo_AWADDR = S_AXI_awaddr;
  assign s00_couplers_to_s00_data_fifo_AWBURST = S_AXI_awburst;
  assign s00_couplers_to_s00_data_fifo_AWCACHE = S_AXI_awcache;
  assign s00_couplers_to_s00_data_fifo_AWLEN = S_AXI_awlen;
  assign s00_couplers_to_s00_data_fifo_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_data_fifo_AWPROT = S_AXI_awprot;
  assign s00_couplers_to_s00_data_fifo_AWQOS = S_AXI_awqos;
  assign s00_couplers_to_s00_data_fifo_AWREGION = S_AXI_awregion;
  assign s00_couplers_to_s00_data_fifo_AWSIZE = S_AXI_awsize;
  assign s00_couplers_to_s00_data_fifo_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_data_fifo_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_data_fifo_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_data_fifo_WDATA = S_AXI_wdata;
  assign s00_couplers_to_s00_data_fifo_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_data_fifo_WSTRB = S_AXI_wstrb;
  assign s00_couplers_to_s00_data_fifo_WVALID = S_AXI_wvalid;
  assign s00_data_fifo_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_data_fifo_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_data_fifo_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_data_fifo_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_data_fifo_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_data_fifo_to_s00_couplers_RLAST = M_AXI_rlast;
  assign s00_data_fifo_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_data_fifo_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_data_fifo_to_s00_couplers_WREADY = M_AXI_wready;
  design_1_s00_data_fifo_0 s00_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s00_data_fifo_to_s00_couplers_ARADDR),
        .m_axi_arburst(s00_data_fifo_to_s00_couplers_ARBURST),
        .m_axi_arcache(s00_data_fifo_to_s00_couplers_ARCACHE),
        .m_axi_arlen(s00_data_fifo_to_s00_couplers_ARLEN),
        .m_axi_arlock(s00_data_fifo_to_s00_couplers_ARLOCK),
        .m_axi_arprot(s00_data_fifo_to_s00_couplers_ARPROT),
        .m_axi_arqos(s00_data_fifo_to_s00_couplers_ARQOS),
        .m_axi_arready(s00_data_fifo_to_s00_couplers_ARREADY),
        .m_axi_arsize(s00_data_fifo_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(s00_data_fifo_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_data_fifo_to_s00_couplers_AWADDR),
        .m_axi_awburst(s00_data_fifo_to_s00_couplers_AWBURST),
        .m_axi_awcache(s00_data_fifo_to_s00_couplers_AWCACHE),
        .m_axi_awlen(s00_data_fifo_to_s00_couplers_AWLEN),
        .m_axi_awlock(s00_data_fifo_to_s00_couplers_AWLOCK),
        .m_axi_awprot(s00_data_fifo_to_s00_couplers_AWPROT),
        .m_axi_awqos(s00_data_fifo_to_s00_couplers_AWQOS),
        .m_axi_awready(s00_data_fifo_to_s00_couplers_AWREADY),
        .m_axi_awsize(s00_data_fifo_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(s00_data_fifo_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_data_fifo_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_data_fifo_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_data_fifo_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_data_fifo_to_s00_couplers_RDATA),
        .m_axi_rlast(s00_data_fifo_to_s00_couplers_RLAST),
        .m_axi_rready(s00_data_fifo_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_data_fifo_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_data_fifo_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_data_fifo_to_s00_couplers_WDATA),
        .m_axi_wlast(s00_data_fifo_to_s00_couplers_WLAST),
        .m_axi_wready(s00_data_fifo_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_data_fifo_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_data_fifo_to_s00_couplers_WVALID),
        .s_axi_araddr({s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR,s00_couplers_to_s00_data_fifo_ARADDR}),
        .s_axi_arburst({s00_couplers_to_s00_data_fifo_ARBURST,s00_couplers_to_s00_data_fifo_ARBURST}),
        .s_axi_arcache({s00_couplers_to_s00_data_fifo_ARCACHE,s00_couplers_to_s00_data_fifo_ARCACHE,s00_couplers_to_s00_data_fifo_ARCACHE,s00_couplers_to_s00_data_fifo_ARCACHE}),
        .s_axi_arlen({s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN,s00_couplers_to_s00_data_fifo_ARLEN}),
        .s_axi_arlock(s00_couplers_to_s00_data_fifo_ARLOCK),
        .s_axi_arprot({s00_couplers_to_s00_data_fifo_ARPROT,s00_couplers_to_s00_data_fifo_ARPROT,s00_couplers_to_s00_data_fifo_ARPROT}),
        .s_axi_arqos({s00_couplers_to_s00_data_fifo_ARQOS,s00_couplers_to_s00_data_fifo_ARQOS,s00_couplers_to_s00_data_fifo_ARQOS,s00_couplers_to_s00_data_fifo_ARQOS}),
        .s_axi_arready(s00_couplers_to_s00_data_fifo_ARREADY),
        .s_axi_arregion({s00_couplers_to_s00_data_fifo_ARREGION,s00_couplers_to_s00_data_fifo_ARREGION,s00_couplers_to_s00_data_fifo_ARREGION,s00_couplers_to_s00_data_fifo_ARREGION}),
        .s_axi_arsize({s00_couplers_to_s00_data_fifo_ARSIZE,s00_couplers_to_s00_data_fifo_ARSIZE,s00_couplers_to_s00_data_fifo_ARSIZE}),
        .s_axi_arvalid(s00_couplers_to_s00_data_fifo_ARVALID),
        .s_axi_awaddr({s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR,s00_couplers_to_s00_data_fifo_AWADDR}),
        .s_axi_awburst({s00_couplers_to_s00_data_fifo_AWBURST,s00_couplers_to_s00_data_fifo_AWBURST}),
        .s_axi_awcache({s00_couplers_to_s00_data_fifo_AWCACHE,s00_couplers_to_s00_data_fifo_AWCACHE,s00_couplers_to_s00_data_fifo_AWCACHE,s00_couplers_to_s00_data_fifo_AWCACHE}),
        .s_axi_awlen({s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN,s00_couplers_to_s00_data_fifo_AWLEN}),
        .s_axi_awlock(s00_couplers_to_s00_data_fifo_AWLOCK),
        .s_axi_awprot({s00_couplers_to_s00_data_fifo_AWPROT,s00_couplers_to_s00_data_fifo_AWPROT,s00_couplers_to_s00_data_fifo_AWPROT}),
        .s_axi_awqos({s00_couplers_to_s00_data_fifo_AWQOS,s00_couplers_to_s00_data_fifo_AWQOS,s00_couplers_to_s00_data_fifo_AWQOS,s00_couplers_to_s00_data_fifo_AWQOS}),
        .s_axi_awready(s00_couplers_to_s00_data_fifo_AWREADY),
        .s_axi_awregion({s00_couplers_to_s00_data_fifo_AWREGION,s00_couplers_to_s00_data_fifo_AWREGION,s00_couplers_to_s00_data_fifo_AWREGION,s00_couplers_to_s00_data_fifo_AWREGION}),
        .s_axi_awsize({s00_couplers_to_s00_data_fifo_AWSIZE,s00_couplers_to_s00_data_fifo_AWSIZE,s00_couplers_to_s00_data_fifo_AWSIZE}),
        .s_axi_awvalid(s00_couplers_to_s00_data_fifo_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_data_fifo_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_data_fifo_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_data_fifo_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_data_fifo_RDATA),
        .s_axi_rlast(s00_couplers_to_s00_data_fifo_RLAST),
        .s_axi_rready(s00_couplers_to_s00_data_fifo_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_data_fifo_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_data_fifo_RVALID),
        .s_axi_wdata({s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA,s00_couplers_to_s00_data_fifo_WDATA}),
        .s_axi_wlast(s00_couplers_to_s00_data_fifo_WLAST),
        .s_axi_wready(s00_couplers_to_s00_data_fifo_WREADY),
        .s_axi_wstrb({s00_couplers_to_s00_data_fifo_WSTRB,s00_couplers_to_s00_data_fifo_WSTRB,s00_couplers_to_s00_data_fifo_WSTRB,s00_couplers_to_s00_data_fifo_WSTRB}),
        .s_axi_wvalid(s00_couplers_to_s00_data_fifo_WVALID));
endmodule

module s01_couplers_imp_1F69D31
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire s01_couplers_to_s01_data_fifo_ARADDR;
  wire s01_couplers_to_s01_data_fifo_ARBURST;
  wire s01_couplers_to_s01_data_fifo_ARCACHE;
  wire s01_couplers_to_s01_data_fifo_ARLEN;
  wire s01_couplers_to_s01_data_fifo_ARLOCK;
  wire s01_couplers_to_s01_data_fifo_ARPROT;
  wire s01_couplers_to_s01_data_fifo_ARQOS;
  wire s01_couplers_to_s01_data_fifo_ARREADY;
  wire s01_couplers_to_s01_data_fifo_ARREGION;
  wire s01_couplers_to_s01_data_fifo_ARSIZE;
  wire s01_couplers_to_s01_data_fifo_ARVALID;
  wire s01_couplers_to_s01_data_fifo_AWADDR;
  wire s01_couplers_to_s01_data_fifo_AWBURST;
  wire s01_couplers_to_s01_data_fifo_AWCACHE;
  wire s01_couplers_to_s01_data_fifo_AWLEN;
  wire s01_couplers_to_s01_data_fifo_AWLOCK;
  wire s01_couplers_to_s01_data_fifo_AWPROT;
  wire s01_couplers_to_s01_data_fifo_AWQOS;
  wire s01_couplers_to_s01_data_fifo_AWREADY;
  wire s01_couplers_to_s01_data_fifo_AWREGION;
  wire s01_couplers_to_s01_data_fifo_AWSIZE;
  wire s01_couplers_to_s01_data_fifo_AWVALID;
  wire s01_couplers_to_s01_data_fifo_BREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_BRESP;
  wire s01_couplers_to_s01_data_fifo_BVALID;
  wire [31:0]s01_couplers_to_s01_data_fifo_RDATA;
  wire s01_couplers_to_s01_data_fifo_RLAST;
  wire s01_couplers_to_s01_data_fifo_RREADY;
  wire [1:0]s01_couplers_to_s01_data_fifo_RRESP;
  wire s01_couplers_to_s01_data_fifo_RVALID;
  wire s01_couplers_to_s01_data_fifo_WDATA;
  wire s01_couplers_to_s01_data_fifo_WLAST;
  wire s01_couplers_to_s01_data_fifo_WREADY;
  wire s01_couplers_to_s01_data_fifo_WSTRB;
  wire s01_couplers_to_s01_data_fifo_WVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_ARADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_ARBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_ARLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_ARLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_ARQOS;
  wire s01_data_fifo_to_s01_couplers_ARREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_ARSIZE;
  wire s01_data_fifo_to_s01_couplers_ARVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_AWADDR;
  wire [1:0]s01_data_fifo_to_s01_couplers_AWBURST;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWCACHE;
  wire [7:0]s01_data_fifo_to_s01_couplers_AWLEN;
  wire [0:0]s01_data_fifo_to_s01_couplers_AWLOCK;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWPROT;
  wire [3:0]s01_data_fifo_to_s01_couplers_AWQOS;
  wire s01_data_fifo_to_s01_couplers_AWREADY;
  wire [2:0]s01_data_fifo_to_s01_couplers_AWSIZE;
  wire s01_data_fifo_to_s01_couplers_AWVALID;
  wire s01_data_fifo_to_s01_couplers_BREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_BRESP;
  wire s01_data_fifo_to_s01_couplers_BVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_RDATA;
  wire s01_data_fifo_to_s01_couplers_RLAST;
  wire s01_data_fifo_to_s01_couplers_RREADY;
  wire [1:0]s01_data_fifo_to_s01_couplers_RRESP;
  wire s01_data_fifo_to_s01_couplers_RVALID;
  wire [31:0]s01_data_fifo_to_s01_couplers_WDATA;
  wire s01_data_fifo_to_s01_couplers_WLAST;
  wire s01_data_fifo_to_s01_couplers_WREADY;
  wire [3:0]s01_data_fifo_to_s01_couplers_WSTRB;
  wire s01_data_fifo_to_s01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s01_data_fifo_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s01_data_fifo_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s01_data_fifo_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s01_data_fifo_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = s01_data_fifo_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s01_data_fifo_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s01_data_fifo_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s01_data_fifo_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = s01_data_fifo_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s01_data_fifo_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s01_data_fifo_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s01_data_fifo_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s01_data_fifo_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = s01_data_fifo_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s01_data_fifo_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s01_data_fifo_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s01_data_fifo_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = s01_data_fifo_to_s01_couplers_AWVALID;
  assign M_AXI_bready = s01_data_fifo_to_s01_couplers_BREADY;
  assign M_AXI_rready = s01_data_fifo_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s01_data_fifo_to_s01_couplers_WDATA;
  assign M_AXI_wlast = s01_data_fifo_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s01_data_fifo_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = s01_data_fifo_to_s01_couplers_WVALID;
  assign S_AXI_arready = s01_couplers_to_s01_data_fifo_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_data_fifo_AWREADY;
  assign S_AXI_bresp = s01_couplers_to_s01_data_fifo_BRESP[0];
  assign S_AXI_bvalid = s01_couplers_to_s01_data_fifo_BVALID;
  assign S_AXI_rdata = s01_couplers_to_s01_data_fifo_RDATA[0];
  assign S_AXI_rlast = s01_couplers_to_s01_data_fifo_RLAST;
  assign S_AXI_rresp = s01_couplers_to_s01_data_fifo_RRESP[0];
  assign S_AXI_rvalid = s01_couplers_to_s01_data_fifo_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_data_fifo_WREADY;
  assign s01_couplers_to_s01_data_fifo_ARADDR = S_AXI_araddr;
  assign s01_couplers_to_s01_data_fifo_ARBURST = S_AXI_arburst;
  assign s01_couplers_to_s01_data_fifo_ARCACHE = S_AXI_arcache;
  assign s01_couplers_to_s01_data_fifo_ARLEN = S_AXI_arlen;
  assign s01_couplers_to_s01_data_fifo_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_s01_data_fifo_ARPROT = S_AXI_arprot;
  assign s01_couplers_to_s01_data_fifo_ARQOS = S_AXI_arqos;
  assign s01_couplers_to_s01_data_fifo_ARREGION = S_AXI_arregion;
  assign s01_couplers_to_s01_data_fifo_ARSIZE = S_AXI_arsize;
  assign s01_couplers_to_s01_data_fifo_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_data_fifo_AWADDR = S_AXI_awaddr;
  assign s01_couplers_to_s01_data_fifo_AWBURST = S_AXI_awburst;
  assign s01_couplers_to_s01_data_fifo_AWCACHE = S_AXI_awcache;
  assign s01_couplers_to_s01_data_fifo_AWLEN = S_AXI_awlen;
  assign s01_couplers_to_s01_data_fifo_AWLOCK = S_AXI_awlock;
  assign s01_couplers_to_s01_data_fifo_AWPROT = S_AXI_awprot;
  assign s01_couplers_to_s01_data_fifo_AWQOS = S_AXI_awqos;
  assign s01_couplers_to_s01_data_fifo_AWREGION = S_AXI_awregion;
  assign s01_couplers_to_s01_data_fifo_AWSIZE = S_AXI_awsize;
  assign s01_couplers_to_s01_data_fifo_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_data_fifo_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_data_fifo_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_data_fifo_WDATA = S_AXI_wdata;
  assign s01_couplers_to_s01_data_fifo_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_data_fifo_WSTRB = S_AXI_wstrb;
  assign s01_couplers_to_s01_data_fifo_WVALID = S_AXI_wvalid;
  assign s01_data_fifo_to_s01_couplers_ARREADY = M_AXI_arready;
  assign s01_data_fifo_to_s01_couplers_AWREADY = M_AXI_awready;
  assign s01_data_fifo_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign s01_data_fifo_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign s01_data_fifo_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign s01_data_fifo_to_s01_couplers_RLAST = M_AXI_rlast;
  assign s01_data_fifo_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign s01_data_fifo_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_data_fifo_to_s01_couplers_WREADY = M_AXI_wready;
  design_1_s01_data_fifo_0 s01_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s01_data_fifo_to_s01_couplers_ARADDR),
        .m_axi_arburst(s01_data_fifo_to_s01_couplers_ARBURST),
        .m_axi_arcache(s01_data_fifo_to_s01_couplers_ARCACHE),
        .m_axi_arlen(s01_data_fifo_to_s01_couplers_ARLEN),
        .m_axi_arlock(s01_data_fifo_to_s01_couplers_ARLOCK),
        .m_axi_arprot(s01_data_fifo_to_s01_couplers_ARPROT),
        .m_axi_arqos(s01_data_fifo_to_s01_couplers_ARQOS),
        .m_axi_arready(s01_data_fifo_to_s01_couplers_ARREADY),
        .m_axi_arsize(s01_data_fifo_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(s01_data_fifo_to_s01_couplers_ARVALID),
        .m_axi_awaddr(s01_data_fifo_to_s01_couplers_AWADDR),
        .m_axi_awburst(s01_data_fifo_to_s01_couplers_AWBURST),
        .m_axi_awcache(s01_data_fifo_to_s01_couplers_AWCACHE),
        .m_axi_awlen(s01_data_fifo_to_s01_couplers_AWLEN),
        .m_axi_awlock(s01_data_fifo_to_s01_couplers_AWLOCK),
        .m_axi_awprot(s01_data_fifo_to_s01_couplers_AWPROT),
        .m_axi_awqos(s01_data_fifo_to_s01_couplers_AWQOS),
        .m_axi_awready(s01_data_fifo_to_s01_couplers_AWREADY),
        .m_axi_awsize(s01_data_fifo_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(s01_data_fifo_to_s01_couplers_AWVALID),
        .m_axi_bready(s01_data_fifo_to_s01_couplers_BREADY),
        .m_axi_bresp(s01_data_fifo_to_s01_couplers_BRESP),
        .m_axi_bvalid(s01_data_fifo_to_s01_couplers_BVALID),
        .m_axi_rdata(s01_data_fifo_to_s01_couplers_RDATA),
        .m_axi_rlast(s01_data_fifo_to_s01_couplers_RLAST),
        .m_axi_rready(s01_data_fifo_to_s01_couplers_RREADY),
        .m_axi_rresp(s01_data_fifo_to_s01_couplers_RRESP),
        .m_axi_rvalid(s01_data_fifo_to_s01_couplers_RVALID),
        .m_axi_wdata(s01_data_fifo_to_s01_couplers_WDATA),
        .m_axi_wlast(s01_data_fifo_to_s01_couplers_WLAST),
        .m_axi_wready(s01_data_fifo_to_s01_couplers_WREADY),
        .m_axi_wstrb(s01_data_fifo_to_s01_couplers_WSTRB),
        .m_axi_wvalid(s01_data_fifo_to_s01_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR,s01_couplers_to_s01_data_fifo_ARADDR}),
        .s_axi_arburst({s01_couplers_to_s01_data_fifo_ARBURST,s01_couplers_to_s01_data_fifo_ARBURST}),
        .s_axi_arcache({s01_couplers_to_s01_data_fifo_ARCACHE,s01_couplers_to_s01_data_fifo_ARCACHE,s01_couplers_to_s01_data_fifo_ARCACHE,s01_couplers_to_s01_data_fifo_ARCACHE}),
        .s_axi_arlen({s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN,s01_couplers_to_s01_data_fifo_ARLEN}),
        .s_axi_arlock(s01_couplers_to_s01_data_fifo_ARLOCK),
        .s_axi_arprot({s01_couplers_to_s01_data_fifo_ARPROT,s01_couplers_to_s01_data_fifo_ARPROT,s01_couplers_to_s01_data_fifo_ARPROT}),
        .s_axi_arqos({s01_couplers_to_s01_data_fifo_ARQOS,s01_couplers_to_s01_data_fifo_ARQOS,s01_couplers_to_s01_data_fifo_ARQOS,s01_couplers_to_s01_data_fifo_ARQOS}),
        .s_axi_arready(s01_couplers_to_s01_data_fifo_ARREADY),
        .s_axi_arregion({s01_couplers_to_s01_data_fifo_ARREGION,s01_couplers_to_s01_data_fifo_ARREGION,s01_couplers_to_s01_data_fifo_ARREGION,s01_couplers_to_s01_data_fifo_ARREGION}),
        .s_axi_arsize({s01_couplers_to_s01_data_fifo_ARSIZE,s01_couplers_to_s01_data_fifo_ARSIZE,s01_couplers_to_s01_data_fifo_ARSIZE}),
        .s_axi_arvalid(s01_couplers_to_s01_data_fifo_ARVALID),
        .s_axi_awaddr({s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR,s01_couplers_to_s01_data_fifo_AWADDR}),
        .s_axi_awburst({s01_couplers_to_s01_data_fifo_AWBURST,s01_couplers_to_s01_data_fifo_AWBURST}),
        .s_axi_awcache({s01_couplers_to_s01_data_fifo_AWCACHE,s01_couplers_to_s01_data_fifo_AWCACHE,s01_couplers_to_s01_data_fifo_AWCACHE,s01_couplers_to_s01_data_fifo_AWCACHE}),
        .s_axi_awlen({s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN,s01_couplers_to_s01_data_fifo_AWLEN}),
        .s_axi_awlock(s01_couplers_to_s01_data_fifo_AWLOCK),
        .s_axi_awprot({s01_couplers_to_s01_data_fifo_AWPROT,s01_couplers_to_s01_data_fifo_AWPROT,s01_couplers_to_s01_data_fifo_AWPROT}),
        .s_axi_awqos({s01_couplers_to_s01_data_fifo_AWQOS,s01_couplers_to_s01_data_fifo_AWQOS,s01_couplers_to_s01_data_fifo_AWQOS,s01_couplers_to_s01_data_fifo_AWQOS}),
        .s_axi_awready(s01_couplers_to_s01_data_fifo_AWREADY),
        .s_axi_awregion({s01_couplers_to_s01_data_fifo_AWREGION,s01_couplers_to_s01_data_fifo_AWREGION,s01_couplers_to_s01_data_fifo_AWREGION,s01_couplers_to_s01_data_fifo_AWREGION}),
        .s_axi_awsize({s01_couplers_to_s01_data_fifo_AWSIZE,s01_couplers_to_s01_data_fifo_AWSIZE,s01_couplers_to_s01_data_fifo_AWSIZE}),
        .s_axi_awvalid(s01_couplers_to_s01_data_fifo_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_data_fifo_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_data_fifo_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_data_fifo_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_data_fifo_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_data_fifo_RLAST),
        .s_axi_rready(s01_couplers_to_s01_data_fifo_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_data_fifo_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_data_fifo_RVALID),
        .s_axi_wdata({s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA,s01_couplers_to_s01_data_fifo_WDATA}),
        .s_axi_wlast(s01_couplers_to_s01_data_fifo_WLAST),
        .s_axi_wready(s01_couplers_to_s01_data_fifo_WREADY),
        .s_axi_wstrb({s01_couplers_to_s01_data_fifo_WSTRB,s01_couplers_to_s01_data_fifo_WSTRB,s01_couplers_to_s01_data_fifo_WSTRB,s01_couplers_to_s01_data_fifo_WSTRB}),
        .s_axi_wvalid(s01_couplers_to_s01_data_fifo_WVALID));
endmodule

module s02_couplers_imp_N071UN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input S_AXI_araddr;
  input S_AXI_arburst;
  input S_AXI_arcache;
  input S_AXI_arlen;
  input S_AXI_arlock;
  input S_AXI_arprot;
  input S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arregion;
  input S_AXI_arsize;
  input S_AXI_arvalid;
  input S_AXI_awaddr;
  input S_AXI_awburst;
  input S_AXI_awcache;
  input S_AXI_awlen;
  input S_AXI_awlock;
  input S_AXI_awprot;
  input S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awregion;
  input S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output S_AXI_rresp;
  output S_AXI_rvalid;
  input S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire s02_couplers_to_s02_data_fifo_ARADDR;
  wire s02_couplers_to_s02_data_fifo_ARBURST;
  wire s02_couplers_to_s02_data_fifo_ARCACHE;
  wire s02_couplers_to_s02_data_fifo_ARLEN;
  wire s02_couplers_to_s02_data_fifo_ARLOCK;
  wire s02_couplers_to_s02_data_fifo_ARPROT;
  wire s02_couplers_to_s02_data_fifo_ARQOS;
  wire s02_couplers_to_s02_data_fifo_ARREADY;
  wire s02_couplers_to_s02_data_fifo_ARREGION;
  wire s02_couplers_to_s02_data_fifo_ARSIZE;
  wire s02_couplers_to_s02_data_fifo_ARVALID;
  wire s02_couplers_to_s02_data_fifo_AWADDR;
  wire s02_couplers_to_s02_data_fifo_AWBURST;
  wire s02_couplers_to_s02_data_fifo_AWCACHE;
  wire s02_couplers_to_s02_data_fifo_AWLEN;
  wire s02_couplers_to_s02_data_fifo_AWLOCK;
  wire s02_couplers_to_s02_data_fifo_AWPROT;
  wire s02_couplers_to_s02_data_fifo_AWQOS;
  wire s02_couplers_to_s02_data_fifo_AWREADY;
  wire s02_couplers_to_s02_data_fifo_AWREGION;
  wire s02_couplers_to_s02_data_fifo_AWSIZE;
  wire s02_couplers_to_s02_data_fifo_AWVALID;
  wire s02_couplers_to_s02_data_fifo_BREADY;
  wire [1:0]s02_couplers_to_s02_data_fifo_BRESP;
  wire s02_couplers_to_s02_data_fifo_BVALID;
  wire [31:0]s02_couplers_to_s02_data_fifo_RDATA;
  wire s02_couplers_to_s02_data_fifo_RLAST;
  wire s02_couplers_to_s02_data_fifo_RREADY;
  wire [1:0]s02_couplers_to_s02_data_fifo_RRESP;
  wire s02_couplers_to_s02_data_fifo_RVALID;
  wire s02_couplers_to_s02_data_fifo_WDATA;
  wire s02_couplers_to_s02_data_fifo_WLAST;
  wire s02_couplers_to_s02_data_fifo_WREADY;
  wire s02_couplers_to_s02_data_fifo_WSTRB;
  wire s02_couplers_to_s02_data_fifo_WVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_ARADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_ARBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_ARLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_ARLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_ARQOS;
  wire s02_data_fifo_to_s02_couplers_ARREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_ARSIZE;
  wire s02_data_fifo_to_s02_couplers_ARVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_AWADDR;
  wire [1:0]s02_data_fifo_to_s02_couplers_AWBURST;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWCACHE;
  wire [7:0]s02_data_fifo_to_s02_couplers_AWLEN;
  wire [0:0]s02_data_fifo_to_s02_couplers_AWLOCK;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWPROT;
  wire [3:0]s02_data_fifo_to_s02_couplers_AWQOS;
  wire s02_data_fifo_to_s02_couplers_AWREADY;
  wire [2:0]s02_data_fifo_to_s02_couplers_AWSIZE;
  wire s02_data_fifo_to_s02_couplers_AWVALID;
  wire s02_data_fifo_to_s02_couplers_BREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_BRESP;
  wire s02_data_fifo_to_s02_couplers_BVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_RDATA;
  wire s02_data_fifo_to_s02_couplers_RLAST;
  wire s02_data_fifo_to_s02_couplers_RREADY;
  wire [1:0]s02_data_fifo_to_s02_couplers_RRESP;
  wire s02_data_fifo_to_s02_couplers_RVALID;
  wire [31:0]s02_data_fifo_to_s02_couplers_WDATA;
  wire s02_data_fifo_to_s02_couplers_WLAST;
  wire s02_data_fifo_to_s02_couplers_WREADY;
  wire [3:0]s02_data_fifo_to_s02_couplers_WSTRB;
  wire s02_data_fifo_to_s02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = s02_data_fifo_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_data_fifo_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_data_fifo_to_s02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = s02_data_fifo_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[0] = s02_data_fifo_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_data_fifo_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_data_fifo_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_data_fifo_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_data_fifo_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s02_data_fifo_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_data_fifo_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_data_fifo_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = s02_data_fifo_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = s02_data_fifo_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_data_fifo_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_data_fifo_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_data_fifo_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_data_fifo_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_data_fifo_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_data_fifo_to_s02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s02_data_fifo_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_data_fifo_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = s02_data_fifo_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_data_fifo_to_s02_couplers_WVALID;
  assign S_AXI_arready = s02_couplers_to_s02_data_fifo_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_data_fifo_AWREADY;
  assign S_AXI_bresp = s02_couplers_to_s02_data_fifo_BRESP[0];
  assign S_AXI_bvalid = s02_couplers_to_s02_data_fifo_BVALID;
  assign S_AXI_rdata = s02_couplers_to_s02_data_fifo_RDATA[0];
  assign S_AXI_rlast = s02_couplers_to_s02_data_fifo_RLAST;
  assign S_AXI_rresp = s02_couplers_to_s02_data_fifo_RRESP[0];
  assign S_AXI_rvalid = s02_couplers_to_s02_data_fifo_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_data_fifo_WREADY;
  assign s02_couplers_to_s02_data_fifo_ARADDR = S_AXI_araddr;
  assign s02_couplers_to_s02_data_fifo_ARBURST = S_AXI_arburst;
  assign s02_couplers_to_s02_data_fifo_ARCACHE = S_AXI_arcache;
  assign s02_couplers_to_s02_data_fifo_ARLEN = S_AXI_arlen;
  assign s02_couplers_to_s02_data_fifo_ARLOCK = S_AXI_arlock;
  assign s02_couplers_to_s02_data_fifo_ARPROT = S_AXI_arprot;
  assign s02_couplers_to_s02_data_fifo_ARQOS = S_AXI_arqos;
  assign s02_couplers_to_s02_data_fifo_ARREGION = S_AXI_arregion;
  assign s02_couplers_to_s02_data_fifo_ARSIZE = S_AXI_arsize;
  assign s02_couplers_to_s02_data_fifo_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_data_fifo_AWADDR = S_AXI_awaddr;
  assign s02_couplers_to_s02_data_fifo_AWBURST = S_AXI_awburst;
  assign s02_couplers_to_s02_data_fifo_AWCACHE = S_AXI_awcache;
  assign s02_couplers_to_s02_data_fifo_AWLEN = S_AXI_awlen;
  assign s02_couplers_to_s02_data_fifo_AWLOCK = S_AXI_awlock;
  assign s02_couplers_to_s02_data_fifo_AWPROT = S_AXI_awprot;
  assign s02_couplers_to_s02_data_fifo_AWQOS = S_AXI_awqos;
  assign s02_couplers_to_s02_data_fifo_AWREGION = S_AXI_awregion;
  assign s02_couplers_to_s02_data_fifo_AWSIZE = S_AXI_awsize;
  assign s02_couplers_to_s02_data_fifo_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_data_fifo_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_data_fifo_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_data_fifo_WDATA = S_AXI_wdata;
  assign s02_couplers_to_s02_data_fifo_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_data_fifo_WSTRB = S_AXI_wstrb;
  assign s02_couplers_to_s02_data_fifo_WVALID = S_AXI_wvalid;
  assign s02_data_fifo_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_data_fifo_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_data_fifo_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_data_fifo_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_data_fifo_to_s02_couplers_RDATA = M_AXI_rdata[31:0];
  assign s02_data_fifo_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_data_fifo_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_data_fifo_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_data_fifo_to_s02_couplers_WREADY = M_AXI_wready;
  design_1_s02_data_fifo_0 s02_data_fifo
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(s02_data_fifo_to_s02_couplers_ARADDR),
        .m_axi_arburst(s02_data_fifo_to_s02_couplers_ARBURST),
        .m_axi_arcache(s02_data_fifo_to_s02_couplers_ARCACHE),
        .m_axi_arlen(s02_data_fifo_to_s02_couplers_ARLEN),
        .m_axi_arlock(s02_data_fifo_to_s02_couplers_ARLOCK),
        .m_axi_arprot(s02_data_fifo_to_s02_couplers_ARPROT),
        .m_axi_arqos(s02_data_fifo_to_s02_couplers_ARQOS),
        .m_axi_arready(s02_data_fifo_to_s02_couplers_ARREADY),
        .m_axi_arsize(s02_data_fifo_to_s02_couplers_ARSIZE),
        .m_axi_arvalid(s02_data_fifo_to_s02_couplers_ARVALID),
        .m_axi_awaddr(s02_data_fifo_to_s02_couplers_AWADDR),
        .m_axi_awburst(s02_data_fifo_to_s02_couplers_AWBURST),
        .m_axi_awcache(s02_data_fifo_to_s02_couplers_AWCACHE),
        .m_axi_awlen(s02_data_fifo_to_s02_couplers_AWLEN),
        .m_axi_awlock(s02_data_fifo_to_s02_couplers_AWLOCK),
        .m_axi_awprot(s02_data_fifo_to_s02_couplers_AWPROT),
        .m_axi_awqos(s02_data_fifo_to_s02_couplers_AWQOS),
        .m_axi_awready(s02_data_fifo_to_s02_couplers_AWREADY),
        .m_axi_awsize(s02_data_fifo_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(s02_data_fifo_to_s02_couplers_AWVALID),
        .m_axi_bready(s02_data_fifo_to_s02_couplers_BREADY),
        .m_axi_bresp(s02_data_fifo_to_s02_couplers_BRESP),
        .m_axi_bvalid(s02_data_fifo_to_s02_couplers_BVALID),
        .m_axi_rdata(s02_data_fifo_to_s02_couplers_RDATA),
        .m_axi_rlast(s02_data_fifo_to_s02_couplers_RLAST),
        .m_axi_rready(s02_data_fifo_to_s02_couplers_RREADY),
        .m_axi_rresp(s02_data_fifo_to_s02_couplers_RRESP),
        .m_axi_rvalid(s02_data_fifo_to_s02_couplers_RVALID),
        .m_axi_wdata(s02_data_fifo_to_s02_couplers_WDATA),
        .m_axi_wlast(s02_data_fifo_to_s02_couplers_WLAST),
        .m_axi_wready(s02_data_fifo_to_s02_couplers_WREADY),
        .m_axi_wstrb(s02_data_fifo_to_s02_couplers_WSTRB),
        .m_axi_wvalid(s02_data_fifo_to_s02_couplers_WVALID),
        .s_axi_araddr({s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR,s02_couplers_to_s02_data_fifo_ARADDR}),
        .s_axi_arburst({s02_couplers_to_s02_data_fifo_ARBURST,s02_couplers_to_s02_data_fifo_ARBURST}),
        .s_axi_arcache({s02_couplers_to_s02_data_fifo_ARCACHE,s02_couplers_to_s02_data_fifo_ARCACHE,s02_couplers_to_s02_data_fifo_ARCACHE,s02_couplers_to_s02_data_fifo_ARCACHE}),
        .s_axi_arlen({s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN,s02_couplers_to_s02_data_fifo_ARLEN}),
        .s_axi_arlock(s02_couplers_to_s02_data_fifo_ARLOCK),
        .s_axi_arprot({s02_couplers_to_s02_data_fifo_ARPROT,s02_couplers_to_s02_data_fifo_ARPROT,s02_couplers_to_s02_data_fifo_ARPROT}),
        .s_axi_arqos({s02_couplers_to_s02_data_fifo_ARQOS,s02_couplers_to_s02_data_fifo_ARQOS,s02_couplers_to_s02_data_fifo_ARQOS,s02_couplers_to_s02_data_fifo_ARQOS}),
        .s_axi_arready(s02_couplers_to_s02_data_fifo_ARREADY),
        .s_axi_arregion({s02_couplers_to_s02_data_fifo_ARREGION,s02_couplers_to_s02_data_fifo_ARREGION,s02_couplers_to_s02_data_fifo_ARREGION,s02_couplers_to_s02_data_fifo_ARREGION}),
        .s_axi_arsize({s02_couplers_to_s02_data_fifo_ARSIZE,s02_couplers_to_s02_data_fifo_ARSIZE,s02_couplers_to_s02_data_fifo_ARSIZE}),
        .s_axi_arvalid(s02_couplers_to_s02_data_fifo_ARVALID),
        .s_axi_awaddr({s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR,s02_couplers_to_s02_data_fifo_AWADDR}),
        .s_axi_awburst({s02_couplers_to_s02_data_fifo_AWBURST,s02_couplers_to_s02_data_fifo_AWBURST}),
        .s_axi_awcache({s02_couplers_to_s02_data_fifo_AWCACHE,s02_couplers_to_s02_data_fifo_AWCACHE,s02_couplers_to_s02_data_fifo_AWCACHE,s02_couplers_to_s02_data_fifo_AWCACHE}),
        .s_axi_awlen({s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN,s02_couplers_to_s02_data_fifo_AWLEN}),
        .s_axi_awlock(s02_couplers_to_s02_data_fifo_AWLOCK),
        .s_axi_awprot({s02_couplers_to_s02_data_fifo_AWPROT,s02_couplers_to_s02_data_fifo_AWPROT,s02_couplers_to_s02_data_fifo_AWPROT}),
        .s_axi_awqos({s02_couplers_to_s02_data_fifo_AWQOS,s02_couplers_to_s02_data_fifo_AWQOS,s02_couplers_to_s02_data_fifo_AWQOS,s02_couplers_to_s02_data_fifo_AWQOS}),
        .s_axi_awready(s02_couplers_to_s02_data_fifo_AWREADY),
        .s_axi_awregion({s02_couplers_to_s02_data_fifo_AWREGION,s02_couplers_to_s02_data_fifo_AWREGION,s02_couplers_to_s02_data_fifo_AWREGION,s02_couplers_to_s02_data_fifo_AWREGION}),
        .s_axi_awsize({s02_couplers_to_s02_data_fifo_AWSIZE,s02_couplers_to_s02_data_fifo_AWSIZE,s02_couplers_to_s02_data_fifo_AWSIZE}),
        .s_axi_awvalid(s02_couplers_to_s02_data_fifo_AWVALID),
        .s_axi_bready(s02_couplers_to_s02_data_fifo_BREADY),
        .s_axi_bresp(s02_couplers_to_s02_data_fifo_BRESP),
        .s_axi_bvalid(s02_couplers_to_s02_data_fifo_BVALID),
        .s_axi_rdata(s02_couplers_to_s02_data_fifo_RDATA),
        .s_axi_rlast(s02_couplers_to_s02_data_fifo_RLAST),
        .s_axi_rready(s02_couplers_to_s02_data_fifo_RREADY),
        .s_axi_rresp(s02_couplers_to_s02_data_fifo_RRESP),
        .s_axi_rvalid(s02_couplers_to_s02_data_fifo_RVALID),
        .s_axi_wdata({s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA,s02_couplers_to_s02_data_fifo_WDATA}),
        .s_axi_wlast(s02_couplers_to_s02_data_fifo_WLAST),
        .s_axi_wready(s02_couplers_to_s02_data_fifo_WREADY),
        .s_axi_wstrb({s02_couplers_to_s02_data_fifo_WSTRB,s02_couplers_to_s02_data_fifo_WSTRB,s02_couplers_to_s02_data_fifo_WSTRB,s02_couplers_to_s02_data_fifo_WSTRB}),
        .s_axi_wvalid(s02_couplers_to_s02_data_fifo_WVALID));
endmodule
