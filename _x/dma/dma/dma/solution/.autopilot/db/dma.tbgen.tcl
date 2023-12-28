set moduleName dma
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dma}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem2 int 512 regular {axi_master 1}  }
	{ in_r int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ tx_0_V_data_V int 128 regular {axi_s 1 volatile  { tx_0 Data } }  }
	{ tx_0_V_keep_V int 16 regular {axi_s 1 volatile  { tx_0 Keep } }  }
	{ tx_0_V_strb_V int 16 regular {axi_s 1 volatile  { tx_0 Strb } }  }
	{ tx_0_V_last_V int 1 regular {axi_s 1 volatile  { tx_0 Last } }  }
	{ tx_1_V_data_V int 128 regular {axi_s 1 volatile  { tx_1 Data } }  }
	{ tx_1_V_keep_V int 16 regular {axi_s 1 volatile  { tx_1 Keep } }  }
	{ tx_1_V_strb_V int 16 regular {axi_s 1 volatile  { tx_1 Strb } }  }
	{ tx_1_V_last_V int 1 regular {axi_s 1 volatile  { tx_1 Last } }  }
	{ tx_2_V_data_V int 128 regular {axi_s 1 volatile  { tx_2 Data } }  }
	{ tx_2_V_keep_V int 16 regular {axi_s 1 volatile  { tx_2 Keep } }  }
	{ tx_2_V_strb_V int 16 regular {axi_s 1 volatile  { tx_2 Strb } }  }
	{ tx_2_V_last_V int 1 regular {axi_s 1 volatile  { tx_2 Last } }  }
	{ tx_3_V_data_V int 128 regular {axi_s 1 volatile  { tx_3 Data } }  }
	{ tx_3_V_keep_V int 16 regular {axi_s 1 volatile  { tx_3 Keep } }  }
	{ tx_3_V_strb_V int 16 regular {axi_s 1 volatile  { tx_3 Strb } }  }
	{ tx_3_V_last_V int 1 regular {axi_s 1 volatile  { tx_3 Last } }  }
	{ rx_0_V_data_V int 128 regular {axi_s 0 volatile  { rx_0 Data } }  }
	{ rx_0_V_keep_V int 16 regular {axi_s 0 volatile  { rx_0 Keep } }  }
	{ rx_0_V_strb_V int 16 regular {axi_s 0 volatile  { rx_0 Strb } }  }
	{ rx_0_V_last_V int 1 regular {axi_s 0 volatile  { rx_0 Last } }  }
	{ rx_1_V_data_V int 128 regular {axi_s 0 volatile  { rx_1 Data } }  }
	{ rx_1_V_keep_V int 16 regular {axi_s 0 volatile  { rx_1 Keep } }  }
	{ rx_1_V_strb_V int 16 regular {axi_s 0 volatile  { rx_1 Strb } }  }
	{ rx_1_V_last_V int 1 regular {axi_s 0 volatile  { rx_1 Last } }  }
	{ rx_2_V_data_V int 128 regular {axi_s 0 volatile  { rx_2 Data } }  }
	{ rx_2_V_keep_V int 16 regular {axi_s 0 volatile  { rx_2 Keep } }  }
	{ rx_2_V_strb_V int 16 regular {axi_s 0 volatile  { rx_2 Strb } }  }
	{ rx_2_V_last_V int 1 regular {axi_s 0 volatile  { rx_2 Last } }  }
	{ rx_3_V_data_V int 128 regular {axi_s 0 volatile  { rx_3 Data } }  }
	{ rx_3_V_keep_V int 16 regular {axi_s 0 volatile  { rx_3 Keep } }  }
	{ rx_3_V_strb_V int 16 regular {axi_s 0 volatile  { rx_3 Strb } }  }
	{ rx_3_V_last_V int 1 regular {axi_s 0 volatile  { rx_3 Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "in_r","offset": { "type": "dynamic","port_name": "in_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "tx_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_2_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_2_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_2_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_3_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_3_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_3_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_3_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rx_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "rx_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "rx_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_2_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "rx_2_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_2_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_2_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 166
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ event_done sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 1 } 
	{ tx_0_TDATA sc_out sc_lv 128 signal 4 } 
	{ tx_0_TVALID sc_out sc_logic 1 outvld 7 } 
	{ tx_0_TREADY sc_in sc_logic 1 outacc 7 } 
	{ tx_0_TKEEP sc_out sc_lv 16 signal 5 } 
	{ tx_0_TSTRB sc_out sc_lv 16 signal 6 } 
	{ tx_0_TLAST sc_out sc_lv 1 signal 7 } 
	{ tx_1_TDATA sc_out sc_lv 128 signal 8 } 
	{ tx_1_TVALID sc_out sc_logic 1 outvld 11 } 
	{ tx_1_TREADY sc_in sc_logic 1 outacc 11 } 
	{ tx_1_TKEEP sc_out sc_lv 16 signal 9 } 
	{ tx_1_TSTRB sc_out sc_lv 16 signal 10 } 
	{ tx_1_TLAST sc_out sc_lv 1 signal 11 } 
	{ tx_2_TDATA sc_out sc_lv 128 signal 12 } 
	{ tx_2_TVALID sc_out sc_logic 1 outvld 15 } 
	{ tx_2_TREADY sc_in sc_logic 1 outacc 15 } 
	{ tx_2_TKEEP sc_out sc_lv 16 signal 13 } 
	{ tx_2_TSTRB sc_out sc_lv 16 signal 14 } 
	{ tx_2_TLAST sc_out sc_lv 1 signal 15 } 
	{ tx_3_TDATA sc_out sc_lv 128 signal 16 } 
	{ tx_3_TVALID sc_out sc_logic 1 outvld 19 } 
	{ tx_3_TREADY sc_in sc_logic 1 outacc 19 } 
	{ tx_3_TKEEP sc_out sc_lv 16 signal 17 } 
	{ tx_3_TSTRB sc_out sc_lv 16 signal 18 } 
	{ tx_3_TLAST sc_out sc_lv 1 signal 19 } 
	{ rx_0_TDATA sc_in sc_lv 128 signal 20 } 
	{ rx_0_TVALID sc_in sc_logic 1 invld 23 } 
	{ rx_0_TREADY sc_out sc_logic 1 inacc 23 } 
	{ rx_0_TKEEP sc_in sc_lv 16 signal 21 } 
	{ rx_0_TSTRB sc_in sc_lv 16 signal 22 } 
	{ rx_0_TLAST sc_in sc_lv 1 signal 23 } 
	{ rx_1_TDATA sc_in sc_lv 128 signal 24 } 
	{ rx_1_TVALID sc_in sc_logic 1 invld 27 } 
	{ rx_1_TREADY sc_out sc_logic 1 inacc 27 } 
	{ rx_1_TKEEP sc_in sc_lv 16 signal 25 } 
	{ rx_1_TSTRB sc_in sc_lv 16 signal 26 } 
	{ rx_1_TLAST sc_in sc_lv 1 signal 27 } 
	{ rx_2_TDATA sc_in sc_lv 128 signal 28 } 
	{ rx_2_TVALID sc_in sc_logic 1 invld 31 } 
	{ rx_2_TREADY sc_out sc_logic 1 inacc 31 } 
	{ rx_2_TKEEP sc_in sc_lv 16 signal 29 } 
	{ rx_2_TSTRB sc_in sc_lv 16 signal 30 } 
	{ rx_2_TLAST sc_in sc_lv 1 signal 31 } 
	{ rx_3_TDATA sc_in sc_lv 128 signal 32 } 
	{ rx_3_TVALID sc_in sc_logic 1 invld 35 } 
	{ rx_3_TREADY sc_out sc_logic 1 inacc 35 } 
	{ rx_3_TKEEP sc_in sc_lv 16 signal 33 } 
	{ rx_3_TSTRB sc_in sc_lv 16 signal 34 } 
	{ rx_3_TLAST sc_in sc_lv 1 signal 35 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ event_start sc_out sc_logic 1 signal -1 } 
	{ stall_start_ext sc_out sc_logic 1 signal -1 } 
	{ stall_done_ext sc_out sc_logic 1 signal -1 } 
	{ stall_start_str sc_out sc_logic 1 signal -1 } 
	{ stall_done_str sc_out sc_logic 1 signal -1 } 
	{ stall_start_int sc_out sc_logic 1 signal -1 } 
	{ stall_done_int sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dma","role":"start","value":"0","valid_bit":"0"},{"name":"dma","role":"continue","value":"0","valid_bit":"4"},{"name":"dma","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_r","role":"data","value":"16"},{"name":"out_r","role":"data","value":"28"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dma","role":"start","value":"0","valid_bit":"0"},{"name":"dma","role":"done","value":"0","valid_bit":"1"},{"name":"dma","role":"idle","value":"0","valid_bit":"2"},{"name":"dma","role":"ready","value":"0","valid_bit":"3"},{"name":"dma","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "event_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "event_done", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "tx_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_0_V_data_V", "role": "default" }} , 
 	{ "name": "tx_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_0_V_last_V", "role": "default" }} , 
 	{ "name": "tx_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_0_V_last_V", "role": "default" }} , 
 	{ "name": "tx_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_0_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_0_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_0_V_last_V", "role": "default" }} , 
 	{ "name": "tx_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_1_V_data_V", "role": "default" }} , 
 	{ "name": "tx_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_1_V_last_V", "role": "default" }} , 
 	{ "name": "tx_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_1_V_last_V", "role": "default" }} , 
 	{ "name": "tx_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_1_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_1_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_1_V_last_V", "role": "default" }} , 
 	{ "name": "tx_2_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_2_V_data_V", "role": "default" }} , 
 	{ "name": "tx_2_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_2_V_last_V", "role": "default" }} , 
 	{ "name": "tx_2_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_2_V_last_V", "role": "default" }} , 
 	{ "name": "tx_2_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_2_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_2_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_2_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_2_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_2_V_last_V", "role": "default" }} , 
 	{ "name": "tx_3_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_3_V_data_V", "role": "default" }} , 
 	{ "name": "tx_3_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_3_V_last_V", "role": "default" }} , 
 	{ "name": "tx_3_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_3_V_last_V", "role": "default" }} , 
 	{ "name": "tx_3_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_3_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_3_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_3_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_3_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_3_V_last_V", "role": "default" }} , 
 	{ "name": "rx_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rx_0_V_data_V", "role": "default" }} , 
 	{ "name": "rx_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_0_V_last_V", "role": "default" }} , 
 	{ "name": "rx_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_0_V_last_V", "role": "default" }} , 
 	{ "name": "rx_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_0_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_0_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_0_V_last_V", "role": "default" }} , 
 	{ "name": "rx_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rx_1_V_data_V", "role": "default" }} , 
 	{ "name": "rx_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_1_V_last_V", "role": "default" }} , 
 	{ "name": "rx_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_1_V_last_V", "role": "default" }} , 
 	{ "name": "rx_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_1_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_1_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_1_V_last_V", "role": "default" }} , 
 	{ "name": "rx_2_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rx_2_V_data_V", "role": "default" }} , 
 	{ "name": "rx_2_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_2_V_last_V", "role": "default" }} , 
 	{ "name": "rx_2_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_2_V_last_V", "role": "default" }} , 
 	{ "name": "rx_2_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_2_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_2_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_2_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_2_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_2_V_last_V", "role": "default" }} , 
 	{ "name": "rx_3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rx_3_V_data_V", "role": "default" }} , 
 	{ "name": "rx_3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_3_V_last_V", "role": "default" }} , 
 	{ "name": "rx_3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_3_V_last_V", "role": "default" }} , 
 	{ "name": "rx_3_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_3_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_3_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_3_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_3_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_3_V_last_V", "role": "default" }} , 
 	{ "name": "event_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "event_start", "role": "default" }} , 
 	{ "name": "stall_start_ext", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_ext", "role": "default" }} , 
 	{ "name": "stall_done_ext", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_ext", "role": "default" }} , 
 	{ "name": "stall_start_str", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_str", "role": "default" }} , 
 	{ "name": "stall_done_str", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_str", "role": "default" }} , 
 	{ "name": "stall_start_int", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_int", "role": "default" }} , 
 	{ "name": "stall_done_int", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_int", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "15", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "dma",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "381", "EstimateLatencyMax" : "381",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2_fu_195", "Port" : "gmem0", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2_fu_277", "Port" : "gmem2", "Inst_start_state" : "78", "Inst_end_state" : "79"}]},
			{"Name" : "in_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "tx_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_0_V_data_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_0_V_keep_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_0_V_strb_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_0_V_last_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_1_V_data_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_1_V_keep_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_1_V_strb_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_1_V_last_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_2_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_2_V_data_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_2_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_2_V_keep_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_2_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_2_V_strb_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_2_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_2_V_last_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_3_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_3_V_data_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_3_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_3_V_keep_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_3_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_3_V_strb_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "tx_3_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Port" : "tx_3_V_last_V", "Inst_start_state" : "74", "Inst_end_state" : "75"}]},
			{"Name" : "rx_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_0_V_data_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_0_V_keep_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_0_V_strb_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_0_V_last_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_1_V_data_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_1_V_keep_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_1_V_strb_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_1_V_last_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_2_V_data_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_2_V_keep_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_2_V_strb_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_2_V_last_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_3_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_3_V_data_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_3_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_3_V_keep_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_3_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_3_V_strb_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]},
			{"Name" : "rx_3_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_receive_fu_240", "Port" : "rx_3_V_last_V", "Inst_start_state" : "76", "Inst_end_state" : "77"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataManager_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2_fu_195", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln39", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataManager", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_1_VITIS_LOOP_41_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tx_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0",
				"BlockSignal" : [
					{"Name" : "tx_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0"},
			{"Name" : "tx_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0"},
			{"Name" : "tx_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_0"},
			{"Name" : "dataManager", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tx_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1",
				"BlockSignal" : [
					{"Name" : "tx_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1"},
			{"Name" : "tx_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1"},
			{"Name" : "tx_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_1"},
			{"Name" : "tx_2_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2",
				"BlockSignal" : [
					{"Name" : "tx_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_2_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2"},
			{"Name" : "tx_2_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2"},
			{"Name" : "tx_2_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_2"},
			{"Name" : "tx_3_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3",
				"BlockSignal" : [
					{"Name" : "tx_3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tx_3_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3"},
			{"Name" : "tx_3_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3"},
			{"Name" : "tx_3_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "tx_3"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_51_1_VITIS_LOOP_53_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240", "Parent" : "0", "Child" : ["7", "9", "11", "13"],
		"CDFG" : "receive",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68", "Port" : "this_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82", "Port" : "this_r", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "11", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96", "Port" : "this_r", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "13", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110", "Port" : "this_r", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "rx_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68", "Port" : "rx_0_V_data_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rx_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68", "Port" : "rx_0_V_keep_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rx_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68", "Port" : "rx_0_V_strb_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rx_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68", "Port" : "rx_0_V_last_V", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "rx_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82", "Port" : "rx_1_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rx_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82", "Port" : "rx_1_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rx_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82", "Port" : "rx_1_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rx_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82", "Port" : "rx_1_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "rx_2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96", "Port" : "rx_2_V_data_V", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "rx_2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96", "Port" : "rx_2_V_keep_V", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "rx_2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96", "Port" : "rx_2_V_strb_V", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "rx_2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96", "Port" : "rx_2_V_last_V", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "rx_3_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110", "Port" : "rx_3_V_data_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "rx_3_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110", "Port" : "rx_3_V_keep_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "rx_3_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110", "Port" : "rx_3_V_strb_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "rx_3_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110", "Port" : "rx_3_V_last_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "receive_Pipeline_VITIS_LOOP_78_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rx_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0",
				"BlockSignal" : [
					{"Name" : "rx_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0"},
			{"Name" : "rx_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0"},
			{"Name" : "rx_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_0"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82", "Parent" : "6", "Child" : ["10"],
		"CDFG" : "receive_Pipeline_VITIS_LOOP_83_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rx_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1",
				"BlockSignal" : [
					{"Name" : "rx_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1"},
			{"Name" : "rx_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1"},
			{"Name" : "rx_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_83_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96", "Parent" : "6", "Child" : ["12"],
		"CDFG" : "receive_Pipeline_VITIS_LOOP_88_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rx_2_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2",
				"BlockSignal" : [
					{"Name" : "rx_2_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_2_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2"},
			{"Name" : "rx_2_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2"},
			{"Name" : "rx_2_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_2"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110", "Parent" : "6", "Child" : ["14"],
		"CDFG" : "receive_Pipeline_VITIS_LOOP_93_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "this_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rx_3_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3",
				"BlockSignal" : [
					{"Name" : "rx_3_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rx_3_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3"},
			{"Name" : "rx_3_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3"},
			{"Name" : "rx_3_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "rx_3"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2_fu_277", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln101", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataManager", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_101_1_VITIS_LOOP_103_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2_fu_277.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_2_V_data_V_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_2_V_keep_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_2_V_strb_V_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_2_V_last_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_3_V_data_V_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_3_V_keep_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_3_V_strb_V_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_tx_3_V_last_V_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_0_V_data_V_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_0_V_keep_V_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_0_V_strb_V_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_0_V_last_V_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_1_V_data_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_1_V_keep_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_1_V_strb_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_1_V_last_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_2_V_data_V_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_2_V_keep_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_2_V_strb_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_2_V_last_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_3_V_data_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_3_V_keep_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_3_V_strb_V_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_rx_3_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dma {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		gmem2 {Type O LastRead 79 FirstWrite 2}
		in_r {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		tx_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_last_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_last_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_last_V {Type O LastRead -1 FirstWrite 2}
		rx_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_last_V {Type I LastRead 0 FirstWrite -1}}
	dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2 {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln39 {Type I LastRead 0 FirstWrite -1}
		dataManager {Type O LastRead -1 FirstWrite 2}}
	dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2 {
		tx_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_0_V_last_V {Type O LastRead -1 FirstWrite 2}
		dataManager {Type I LastRead 1 FirstWrite -1}
		tx_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_1_V_last_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_2_V_last_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_data_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_keep_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_strb_V {Type O LastRead -1 FirstWrite 2}
		tx_3_V_last_V {Type O LastRead -1 FirstWrite 2}}
	receive {
		this_r {Type O LastRead -1 FirstWrite 1}
		rx_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_last_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_last_V {Type I LastRead 0 FirstWrite -1}}
	receive_Pipeline_VITIS_LOOP_78_1 {
		this_r {Type O LastRead -1 FirstWrite 1}
		rx_0_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_0_V_last_V {Type I LastRead 0 FirstWrite -1}}
	receive_Pipeline_VITIS_LOOP_83_2 {
		this_r {Type O LastRead -1 FirstWrite 1}
		rx_1_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_1_V_last_V {Type I LastRead 0 FirstWrite -1}}
	receive_Pipeline_VITIS_LOOP_88_3 {
		this_r {Type O LastRead -1 FirstWrite 1}
		rx_2_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_2_V_last_V {Type I LastRead 0 FirstWrite -1}}
	receive_Pipeline_VITIS_LOOP_93_4 {
		this_r {Type O LastRead -1 FirstWrite 1}
		rx_3_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_last_V {Type I LastRead 0 FirstWrite -1}}
	dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2 {
		gmem2 {Type O LastRead -1 FirstWrite 2}
		sext_ln101 {Type I LastRead 0 FirstWrite -1}
		dataManager {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "381", "Max" : "381"}
	, {"Name" : "Interval", "Min" : "382", "Max" : "382"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	tx_0_V_data_V { axis {  { tx_0_TDATA out_data 1 128 } } }
	tx_0_V_keep_V { axis {  { tx_0_TKEEP out_data 1 16 } } }
	tx_0_V_strb_V { axis {  { tx_0_TSTRB out_data 1 16 } } }
	tx_0_V_last_V { axis {  { tx_0_TVALID out_vld 1 1 }  { tx_0_TREADY out_acc 0 1 }  { tx_0_TLAST out_data 1 1 } } }
	tx_1_V_data_V { axis {  { tx_1_TDATA out_data 1 128 } } }
	tx_1_V_keep_V { axis {  { tx_1_TKEEP out_data 1 16 } } }
	tx_1_V_strb_V { axis {  { tx_1_TSTRB out_data 1 16 } } }
	tx_1_V_last_V { axis {  { tx_1_TVALID out_vld 1 1 }  { tx_1_TREADY out_acc 0 1 }  { tx_1_TLAST out_data 1 1 } } }
	tx_2_V_data_V { axis {  { tx_2_TDATA out_data 1 128 } } }
	tx_2_V_keep_V { axis {  { tx_2_TKEEP out_data 1 16 } } }
	tx_2_V_strb_V { axis {  { tx_2_TSTRB out_data 1 16 } } }
	tx_2_V_last_V { axis {  { tx_2_TVALID out_vld 1 1 }  { tx_2_TREADY out_acc 0 1 }  { tx_2_TLAST out_data 1 1 } } }
	tx_3_V_data_V { axis {  { tx_3_TDATA out_data 1 128 } } }
	tx_3_V_keep_V { axis {  { tx_3_TKEEP out_data 1 16 } } }
	tx_3_V_strb_V { axis {  { tx_3_TSTRB out_data 1 16 } } }
	tx_3_V_last_V { axis {  { tx_3_TVALID out_vld 1 1 }  { tx_3_TREADY out_acc 0 1 }  { tx_3_TLAST out_data 1 1 } } }
	rx_0_V_data_V { axis {  { rx_0_TDATA in_data 0 128 } } }
	rx_0_V_keep_V { axis {  { rx_0_TKEEP in_data 0 16 } } }
	rx_0_V_strb_V { axis {  { rx_0_TSTRB in_data 0 16 } } }
	rx_0_V_last_V { axis {  { rx_0_TVALID in_vld 0 1 }  { rx_0_TREADY in_acc 1 1 }  { rx_0_TLAST in_data 0 1 } } }
	rx_1_V_data_V { axis {  { rx_1_TDATA in_data 0 128 } } }
	rx_1_V_keep_V { axis {  { rx_1_TKEEP in_data 0 16 } } }
	rx_1_V_strb_V { axis {  { rx_1_TSTRB in_data 0 16 } } }
	rx_1_V_last_V { axis {  { rx_1_TVALID in_vld 0 1 }  { rx_1_TREADY in_acc 1 1 }  { rx_1_TLAST in_data 0 1 } } }
	rx_2_V_data_V { axis {  { rx_2_TDATA in_data 0 128 } } }
	rx_2_V_keep_V { axis {  { rx_2_TKEEP in_data 0 16 } } }
	rx_2_V_strb_V { axis {  { rx_2_TSTRB in_data 0 16 } } }
	rx_2_V_last_V { axis {  { rx_2_TVALID in_vld 0 1 }  { rx_2_TREADY in_acc 1 1 }  { rx_2_TLAST in_data 0 1 } } }
	rx_3_V_data_V { axis {  { rx_3_TDATA in_data 0 128 } } }
	rx_3_V_keep_V { axis {  { rx_3_TKEEP in_data 0 16 } } }
	rx_3_V_strb_V { axis {  { rx_3_TSTRB in_data 0 16 } } }
	rx_3_V_last_V { axis {  { rx_3_TVALID in_vld 0 1 }  { rx_3_TREADY in_acc 1 1 }  { rx_3_TLAST in_data 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 64 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 64 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 1 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem2 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem2 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
