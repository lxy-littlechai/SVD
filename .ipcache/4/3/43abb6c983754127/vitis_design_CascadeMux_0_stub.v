// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Apr 10 13:06:02 2024
// Host        : localhost.localdomain running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vitis_design_CascadeMux_0_stub.v
// Design      : vitis_design_CascadeMux_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsva2197-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CascadeMux,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem0_AWID, m_axi_gmem0_AWADDR, 
  m_axi_gmem0_AWLEN, m_axi_gmem0_AWSIZE, m_axi_gmem0_AWBURST, m_axi_gmem0_AWLOCK, 
  m_axi_gmem0_AWREGION, m_axi_gmem0_AWCACHE, m_axi_gmem0_AWPROT, m_axi_gmem0_AWQOS, 
  m_axi_gmem0_AWVALID, m_axi_gmem0_AWREADY, m_axi_gmem0_WID, m_axi_gmem0_WDATA, 
  m_axi_gmem0_WSTRB, m_axi_gmem0_WLAST, m_axi_gmem0_WVALID, m_axi_gmem0_WREADY, 
  m_axi_gmem0_BID, m_axi_gmem0_BRESP, m_axi_gmem0_BVALID, m_axi_gmem0_BREADY, 
  m_axi_gmem0_ARID, m_axi_gmem0_ARADDR, m_axi_gmem0_ARLEN, m_axi_gmem0_ARSIZE, 
  m_axi_gmem0_ARBURST, m_axi_gmem0_ARLOCK, m_axi_gmem0_ARREGION, m_axi_gmem0_ARCACHE, 
  m_axi_gmem0_ARPROT, m_axi_gmem0_ARQOS, m_axi_gmem0_ARVALID, m_axi_gmem0_ARREADY, 
  m_axi_gmem0_RID, m_axi_gmem0_RDATA, m_axi_gmem0_RRESP, m_axi_gmem0_RLAST, 
  m_axi_gmem0_RVALID, m_axi_gmem0_RREADY, m_axi_gmem1_AWID, m_axi_gmem1_AWADDR, 
  m_axi_gmem1_AWLEN, m_axi_gmem1_AWSIZE, m_axi_gmem1_AWBURST, m_axi_gmem1_AWLOCK, 
  m_axi_gmem1_AWREGION, m_axi_gmem1_AWCACHE, m_axi_gmem1_AWPROT, m_axi_gmem1_AWQOS, 
  m_axi_gmem1_AWVALID, m_axi_gmem1_AWREADY, m_axi_gmem1_WID, m_axi_gmem1_WDATA, 
  m_axi_gmem1_WSTRB, m_axi_gmem1_WLAST, m_axi_gmem1_WVALID, m_axi_gmem1_WREADY, 
  m_axi_gmem1_BID, m_axi_gmem1_BRESP, m_axi_gmem1_BVALID, m_axi_gmem1_BREADY, 
  m_axi_gmem1_ARID, m_axi_gmem1_ARADDR, m_axi_gmem1_ARLEN, m_axi_gmem1_ARSIZE, 
  m_axi_gmem1_ARBURST, m_axi_gmem1_ARLOCK, m_axi_gmem1_ARREGION, m_axi_gmem1_ARCACHE, 
  m_axi_gmem1_ARPROT, m_axi_gmem1_ARQOS, m_axi_gmem1_ARVALID, m_axi_gmem1_ARREADY, 
  m_axi_gmem1_RID, m_axi_gmem1_RDATA, m_axi_gmem1_RRESP, m_axi_gmem1_RLAST, 
  m_axi_gmem1_RVALID, m_axi_gmem1_RREADY, m_axi_gmem2_AWID, m_axi_gmem2_AWADDR, 
  m_axi_gmem2_AWLEN, m_axi_gmem2_AWSIZE, m_axi_gmem2_AWBURST, m_axi_gmem2_AWLOCK, 
  m_axi_gmem2_AWREGION, m_axi_gmem2_AWCACHE, m_axi_gmem2_AWPROT, m_axi_gmem2_AWQOS, 
  m_axi_gmem2_AWVALID, m_axi_gmem2_AWREADY, m_axi_gmem2_WID, m_axi_gmem2_WDATA, 
  m_axi_gmem2_WSTRB, m_axi_gmem2_WLAST, m_axi_gmem2_WVALID, m_axi_gmem2_WREADY, 
  m_axi_gmem2_BID, m_axi_gmem2_BRESP, m_axi_gmem2_BVALID, m_axi_gmem2_BREADY, 
  m_axi_gmem2_ARID, m_axi_gmem2_ARADDR, m_axi_gmem2_ARLEN, m_axi_gmem2_ARSIZE, 
  m_axi_gmem2_ARBURST, m_axi_gmem2_ARLOCK, m_axi_gmem2_ARREGION, m_axi_gmem2_ARCACHE, 
  m_axi_gmem2_ARPROT, m_axi_gmem2_ARQOS, m_axi_gmem2_ARVALID, m_axi_gmem2_ARREADY, 
  m_axi_gmem2_RID, m_axi_gmem2_RDATA, m_axi_gmem2_RRESP, m_axi_gmem2_RLAST, 
  m_axi_gmem2_RVALID, m_axi_gmem2_RREADY, sweep_tx0_0_TVALID, sweep_tx0_0_TREADY, 
  sweep_tx0_0_TDATA, sweep_tx0_0_TKEEP, sweep_tx0_0_TSTRB, sweep_tx0_0_TLAST, 
  sweep_rx0_0_TVALID, sweep_rx0_0_TREADY, sweep_rx0_0_TDATA, sweep_rx0_0_TKEEP, 
  sweep_rx0_0_TSTRB, sweep_rx0_0_TLAST, sweep_tx0_1_TVALID, sweep_tx0_1_TREADY, 
  sweep_tx0_1_TDATA, sweep_tx0_1_TKEEP, sweep_tx0_1_TSTRB, sweep_tx0_1_TLAST, 
  sweep_rx0_1_TVALID, sweep_rx0_1_TREADY, sweep_rx0_1_TDATA, sweep_rx0_1_TKEEP, 
  sweep_rx0_1_TSTRB, sweep_rx0_1_TLAST, norm_tx0_TVALID, norm_tx0_TREADY, norm_tx0_TDATA, 
  norm_tx0_TKEEP, norm_tx0_TSTRB, norm_tx0_TLAST, norm_rx0_TVALID, norm_rx0_TREADY, 
  norm_rx0_TDATA, norm_rx0_TKEEP, norm_rx0_TSTRB, norm_rx0_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_rst_n,interrupt,m_axi_gmem0_AWID[0:0],m_axi_gmem0_AWADDR[63:0],m_axi_gmem0_AWLEN[7:0],m_axi_gmem0_AWSIZE[2:0],m_axi_gmem0_AWBURST[1:0],m_axi_gmem0_AWLOCK[1:0],m_axi_gmem0_AWREGION[3:0],m_axi_gmem0_AWCACHE[3:0],m_axi_gmem0_AWPROT[2:0],m_axi_gmem0_AWQOS[3:0],m_axi_gmem0_AWVALID,m_axi_gmem0_AWREADY,m_axi_gmem0_WID[0:0],m_axi_gmem0_WDATA[127:0],m_axi_gmem0_WSTRB[15:0],m_axi_gmem0_WLAST,m_axi_gmem0_WVALID,m_axi_gmem0_WREADY,m_axi_gmem0_BID[0:0],m_axi_gmem0_BRESP[1:0],m_axi_gmem0_BVALID,m_axi_gmem0_BREADY,m_axi_gmem0_ARID[0:0],m_axi_gmem0_ARADDR[63:0],m_axi_gmem0_ARLEN[7:0],m_axi_gmem0_ARSIZE[2:0],m_axi_gmem0_ARBURST[1:0],m_axi_gmem0_ARLOCK[1:0],m_axi_gmem0_ARREGION[3:0],m_axi_gmem0_ARCACHE[3:0],m_axi_gmem0_ARPROT[2:0],m_axi_gmem0_ARQOS[3:0],m_axi_gmem0_ARVALID,m_axi_gmem0_ARREADY,m_axi_gmem0_RID[0:0],m_axi_gmem0_RDATA[127:0],m_axi_gmem0_RRESP[1:0],m_axi_gmem0_RLAST,m_axi_gmem0_RVALID,m_axi_gmem0_RREADY,m_axi_gmem1_AWID[0:0],m_axi_gmem1_AWADDR[63:0],m_axi_gmem1_AWLEN[7:0],m_axi_gmem1_AWSIZE[2:0],m_axi_gmem1_AWBURST[1:0],m_axi_gmem1_AWLOCK[1:0],m_axi_gmem1_AWREGION[3:0],m_axi_gmem1_AWCACHE[3:0],m_axi_gmem1_AWPROT[2:0],m_axi_gmem1_AWQOS[3:0],m_axi_gmem1_AWVALID,m_axi_gmem1_AWREADY,m_axi_gmem1_WID[0:0],m_axi_gmem1_WDATA[127:0],m_axi_gmem1_WSTRB[15:0],m_axi_gmem1_WLAST,m_axi_gmem1_WVALID,m_axi_gmem1_WREADY,m_axi_gmem1_BID[0:0],m_axi_gmem1_BRESP[1:0],m_axi_gmem1_BVALID,m_axi_gmem1_BREADY,m_axi_gmem1_ARID[0:0],m_axi_gmem1_ARADDR[63:0],m_axi_gmem1_ARLEN[7:0],m_axi_gmem1_ARSIZE[2:0],m_axi_gmem1_ARBURST[1:0],m_axi_gmem1_ARLOCK[1:0],m_axi_gmem1_ARREGION[3:0],m_axi_gmem1_ARCACHE[3:0],m_axi_gmem1_ARPROT[2:0],m_axi_gmem1_ARQOS[3:0],m_axi_gmem1_ARVALID,m_axi_gmem1_ARREADY,m_axi_gmem1_RID[0:0],m_axi_gmem1_RDATA[127:0],m_axi_gmem1_RRESP[1:0],m_axi_gmem1_RLAST,m_axi_gmem1_RVALID,m_axi_gmem1_RREADY,m_axi_gmem2_AWID[0:0],m_axi_gmem2_AWADDR[63:0],m_axi_gmem2_AWLEN[7:0],m_axi_gmem2_AWSIZE[2:0],m_axi_gmem2_AWBURST[1:0],m_axi_gmem2_AWLOCK[1:0],m_axi_gmem2_AWREGION[3:0],m_axi_gmem2_AWCACHE[3:0],m_axi_gmem2_AWPROT[2:0],m_axi_gmem2_AWQOS[3:0],m_axi_gmem2_AWVALID,m_axi_gmem2_AWREADY,m_axi_gmem2_WID[0:0],m_axi_gmem2_WDATA[511:0],m_axi_gmem2_WSTRB[63:0],m_axi_gmem2_WLAST,m_axi_gmem2_WVALID,m_axi_gmem2_WREADY,m_axi_gmem2_BID[0:0],m_axi_gmem2_BRESP[1:0],m_axi_gmem2_BVALID,m_axi_gmem2_BREADY,m_axi_gmem2_ARID[0:0],m_axi_gmem2_ARADDR[63:0],m_axi_gmem2_ARLEN[7:0],m_axi_gmem2_ARSIZE[2:0],m_axi_gmem2_ARBURST[1:0],m_axi_gmem2_ARLOCK[1:0],m_axi_gmem2_ARREGION[3:0],m_axi_gmem2_ARCACHE[3:0],m_axi_gmem2_ARPROT[2:0],m_axi_gmem2_ARQOS[3:0],m_axi_gmem2_ARVALID,m_axi_gmem2_ARREADY,m_axi_gmem2_RID[0:0],m_axi_gmem2_RDATA[511:0],m_axi_gmem2_RRESP[1:0],m_axi_gmem2_RLAST,m_axi_gmem2_RVALID,m_axi_gmem2_RREADY,sweep_tx0_0_TVALID,sweep_tx0_0_TREADY,sweep_tx0_0_TDATA[127:0],sweep_tx0_0_TKEEP[15:0],sweep_tx0_0_TSTRB[15:0],sweep_tx0_0_TLAST[0:0],sweep_rx0_0_TVALID,sweep_rx0_0_TREADY,sweep_rx0_0_TDATA[127:0],sweep_rx0_0_TKEEP[15:0],sweep_rx0_0_TSTRB[15:0],sweep_rx0_0_TLAST[0:0],sweep_tx0_1_TVALID,sweep_tx0_1_TREADY,sweep_tx0_1_TDATA[127:0],sweep_tx0_1_TKEEP[15:0],sweep_tx0_1_TSTRB[15:0],sweep_tx0_1_TLAST[0:0],sweep_rx0_1_TVALID,sweep_rx0_1_TREADY,sweep_rx0_1_TDATA[127:0],sweep_rx0_1_TKEEP[15:0],sweep_rx0_1_TSTRB[15:0],sweep_rx0_1_TLAST[0:0],norm_tx0_TVALID,norm_tx0_TREADY,norm_tx0_TDATA[127:0],norm_tx0_TKEEP[15:0],norm_tx0_TSTRB[15:0],norm_tx0_TLAST[0:0],norm_rx0_TVALID,norm_rx0_TREADY,norm_rx0_TDATA[127:0],norm_rx0_TKEEP[15:0],norm_rx0_TSTRB[15:0],norm_rx0_TLAST[0:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  output [0:0]m_axi_gmem0_AWID;
  output [63:0]m_axi_gmem0_AWADDR;
  output [7:0]m_axi_gmem0_AWLEN;
  output [2:0]m_axi_gmem0_AWSIZE;
  output [1:0]m_axi_gmem0_AWBURST;
  output [1:0]m_axi_gmem0_AWLOCK;
  output [3:0]m_axi_gmem0_AWREGION;
  output [3:0]m_axi_gmem0_AWCACHE;
  output [2:0]m_axi_gmem0_AWPROT;
  output [3:0]m_axi_gmem0_AWQOS;
  output m_axi_gmem0_AWVALID;
  input m_axi_gmem0_AWREADY;
  output [0:0]m_axi_gmem0_WID;
  output [127:0]m_axi_gmem0_WDATA;
  output [15:0]m_axi_gmem0_WSTRB;
  output m_axi_gmem0_WLAST;
  output m_axi_gmem0_WVALID;
  input m_axi_gmem0_WREADY;
  input [0:0]m_axi_gmem0_BID;
  input [1:0]m_axi_gmem0_BRESP;
  input m_axi_gmem0_BVALID;
  output m_axi_gmem0_BREADY;
  output [0:0]m_axi_gmem0_ARID;
  output [63:0]m_axi_gmem0_ARADDR;
  output [7:0]m_axi_gmem0_ARLEN;
  output [2:0]m_axi_gmem0_ARSIZE;
  output [1:0]m_axi_gmem0_ARBURST;
  output [1:0]m_axi_gmem0_ARLOCK;
  output [3:0]m_axi_gmem0_ARREGION;
  output [3:0]m_axi_gmem0_ARCACHE;
  output [2:0]m_axi_gmem0_ARPROT;
  output [3:0]m_axi_gmem0_ARQOS;
  output m_axi_gmem0_ARVALID;
  input m_axi_gmem0_ARREADY;
  input [0:0]m_axi_gmem0_RID;
  input [127:0]m_axi_gmem0_RDATA;
  input [1:0]m_axi_gmem0_RRESP;
  input m_axi_gmem0_RLAST;
  input m_axi_gmem0_RVALID;
  output m_axi_gmem0_RREADY;
  output [0:0]m_axi_gmem1_AWID;
  output [63:0]m_axi_gmem1_AWADDR;
  output [7:0]m_axi_gmem1_AWLEN;
  output [2:0]m_axi_gmem1_AWSIZE;
  output [1:0]m_axi_gmem1_AWBURST;
  output [1:0]m_axi_gmem1_AWLOCK;
  output [3:0]m_axi_gmem1_AWREGION;
  output [3:0]m_axi_gmem1_AWCACHE;
  output [2:0]m_axi_gmem1_AWPROT;
  output [3:0]m_axi_gmem1_AWQOS;
  output m_axi_gmem1_AWVALID;
  input m_axi_gmem1_AWREADY;
  output [0:0]m_axi_gmem1_WID;
  output [127:0]m_axi_gmem1_WDATA;
  output [15:0]m_axi_gmem1_WSTRB;
  output m_axi_gmem1_WLAST;
  output m_axi_gmem1_WVALID;
  input m_axi_gmem1_WREADY;
  input [0:0]m_axi_gmem1_BID;
  input [1:0]m_axi_gmem1_BRESP;
  input m_axi_gmem1_BVALID;
  output m_axi_gmem1_BREADY;
  output [0:0]m_axi_gmem1_ARID;
  output [63:0]m_axi_gmem1_ARADDR;
  output [7:0]m_axi_gmem1_ARLEN;
  output [2:0]m_axi_gmem1_ARSIZE;
  output [1:0]m_axi_gmem1_ARBURST;
  output [1:0]m_axi_gmem1_ARLOCK;
  output [3:0]m_axi_gmem1_ARREGION;
  output [3:0]m_axi_gmem1_ARCACHE;
  output [2:0]m_axi_gmem1_ARPROT;
  output [3:0]m_axi_gmem1_ARQOS;
  output m_axi_gmem1_ARVALID;
  input m_axi_gmem1_ARREADY;
  input [0:0]m_axi_gmem1_RID;
  input [127:0]m_axi_gmem1_RDATA;
  input [1:0]m_axi_gmem1_RRESP;
  input m_axi_gmem1_RLAST;
  input m_axi_gmem1_RVALID;
  output m_axi_gmem1_RREADY;
  output [0:0]m_axi_gmem2_AWID;
  output [63:0]m_axi_gmem2_AWADDR;
  output [7:0]m_axi_gmem2_AWLEN;
  output [2:0]m_axi_gmem2_AWSIZE;
  output [1:0]m_axi_gmem2_AWBURST;
  output [1:0]m_axi_gmem2_AWLOCK;
  output [3:0]m_axi_gmem2_AWREGION;
  output [3:0]m_axi_gmem2_AWCACHE;
  output [2:0]m_axi_gmem2_AWPROT;
  output [3:0]m_axi_gmem2_AWQOS;
  output m_axi_gmem2_AWVALID;
  input m_axi_gmem2_AWREADY;
  output [0:0]m_axi_gmem2_WID;
  output [511:0]m_axi_gmem2_WDATA;
  output [63:0]m_axi_gmem2_WSTRB;
  output m_axi_gmem2_WLAST;
  output m_axi_gmem2_WVALID;
  input m_axi_gmem2_WREADY;
  input [0:0]m_axi_gmem2_BID;
  input [1:0]m_axi_gmem2_BRESP;
  input m_axi_gmem2_BVALID;
  output m_axi_gmem2_BREADY;
  output [0:0]m_axi_gmem2_ARID;
  output [63:0]m_axi_gmem2_ARADDR;
  output [7:0]m_axi_gmem2_ARLEN;
  output [2:0]m_axi_gmem2_ARSIZE;
  output [1:0]m_axi_gmem2_ARBURST;
  output [1:0]m_axi_gmem2_ARLOCK;
  output [3:0]m_axi_gmem2_ARREGION;
  output [3:0]m_axi_gmem2_ARCACHE;
  output [2:0]m_axi_gmem2_ARPROT;
  output [3:0]m_axi_gmem2_ARQOS;
  output m_axi_gmem2_ARVALID;
  input m_axi_gmem2_ARREADY;
  input [0:0]m_axi_gmem2_RID;
  input [511:0]m_axi_gmem2_RDATA;
  input [1:0]m_axi_gmem2_RRESP;
  input m_axi_gmem2_RLAST;
  input m_axi_gmem2_RVALID;
  output m_axi_gmem2_RREADY;
  output sweep_tx0_0_TVALID;
  input sweep_tx0_0_TREADY;
  output [127:0]sweep_tx0_0_TDATA;
  output [15:0]sweep_tx0_0_TKEEP;
  output [15:0]sweep_tx0_0_TSTRB;
  output [0:0]sweep_tx0_0_TLAST;
  input sweep_rx0_0_TVALID;
  output sweep_rx0_0_TREADY;
  input [127:0]sweep_rx0_0_TDATA;
  input [15:0]sweep_rx0_0_TKEEP;
  input [15:0]sweep_rx0_0_TSTRB;
  input [0:0]sweep_rx0_0_TLAST;
  output sweep_tx0_1_TVALID;
  input sweep_tx0_1_TREADY;
  output [127:0]sweep_tx0_1_TDATA;
  output [15:0]sweep_tx0_1_TKEEP;
  output [15:0]sweep_tx0_1_TSTRB;
  output [0:0]sweep_tx0_1_TLAST;
  input sweep_rx0_1_TVALID;
  output sweep_rx0_1_TREADY;
  input [127:0]sweep_rx0_1_TDATA;
  input [15:0]sweep_rx0_1_TKEEP;
  input [15:0]sweep_rx0_1_TSTRB;
  input [0:0]sweep_rx0_1_TLAST;
  output norm_tx0_TVALID;
  input norm_tx0_TREADY;
  output [127:0]norm_tx0_TDATA;
  output [15:0]norm_tx0_TKEEP;
  output [15:0]norm_tx0_TSTRB;
  output [0:0]norm_tx0_TLAST;
  input norm_rx0_TVALID;
  output norm_rx0_TREADY;
  input [127:0]norm_rx0_TDATA;
  input [15:0]norm_rx0_TKEEP;
  input [15:0]norm_rx0_TSTRB;
  input [0:0]norm_rx0_TLAST;
endmodule
