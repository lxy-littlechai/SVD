set moduleName RoundRobin
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {RoundRobin}
set C_modelType { void 0 }
set C_modelArgList {
	{ syscontrol_1 int 1 regular {fifo 0 volatile }  }
	{ gmem0 int 512 regular {axi_master 0}  }
	{ dataIn int 64 regular  }
	{ gmem1 int 512 regular {axi_master 1}  }
	{ U int 64 regular  }
	{ gmem2 int 512 regular {axi_master 1}  }
	{ S int 64 regular  }
	{ send_fifo_L_0 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_L_1 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_L_2 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_L_3 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_0 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_1 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_2 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_3 int 128 regular {fifo 1 volatile }  }
	{ receive_fifo_L_0 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_L_1 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_L_2 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_L_3 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_R_0 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_R_1 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_R_2 int 128 regular {fifo 0 volatile }  }
	{ receive_fifo_R_3 int 128 regular {fifo 0 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "syscontrol_1", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dataIn","offset": { "type": "dynamic","port_name": "dataIn","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "dataIn", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "U","offset": { "type": "dynamic","port_name": "U","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "U", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "S","offset": { "type": "dynamic","port_name": "S","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "S", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "send_fifo_L_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_L_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_L_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_L_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "receive_fifo_L_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 241
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ syscontrol_1_dout sc_in sc_lv 1 signal 0 } 
	{ syscontrol_1_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ syscontrol_1_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ syscontrol_1_empty_n sc_in sc_logic 1 signal 0 } 
	{ syscontrol_1_read sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 11 signal 1 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 1 } 
	{ dataIn sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 3 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 3 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 11 signal 3 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 3 } 
	{ U sc_in sc_lv 64 signal 4 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 5 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 5 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem2_RFIFONUM sc_in sc_lv 11 signal 5 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 5 } 
	{ S sc_in sc_lv 64 signal 6 } 
	{ send_fifo_L_0_din sc_out sc_lv 128 signal 7 } 
	{ send_fifo_L_0_num_data_valid sc_in sc_lv 11 signal 7 } 
	{ send_fifo_L_0_fifo_cap sc_in sc_lv 11 signal 7 } 
	{ send_fifo_L_0_full_n sc_in sc_logic 1 signal 7 } 
	{ send_fifo_L_0_almost_full_n sc_in sc_logic 1 signal 7 } 
	{ send_fifo_L_0_write sc_out sc_logic 1 signal 7 } 
	{ send_fifo_L_1_din sc_out sc_lv 128 signal 8 } 
	{ send_fifo_L_1_num_data_valid sc_in sc_lv 11 signal 8 } 
	{ send_fifo_L_1_fifo_cap sc_in sc_lv 11 signal 8 } 
	{ send_fifo_L_1_full_n sc_in sc_logic 1 signal 8 } 
	{ send_fifo_L_1_almost_full_n sc_in sc_logic 1 signal 8 } 
	{ send_fifo_L_1_write sc_out sc_logic 1 signal 8 } 
	{ send_fifo_L_2_din sc_out sc_lv 128 signal 9 } 
	{ send_fifo_L_2_num_data_valid sc_in sc_lv 11 signal 9 } 
	{ send_fifo_L_2_fifo_cap sc_in sc_lv 11 signal 9 } 
	{ send_fifo_L_2_full_n sc_in sc_logic 1 signal 9 } 
	{ send_fifo_L_2_almost_full_n sc_in sc_logic 1 signal 9 } 
	{ send_fifo_L_2_write sc_out sc_logic 1 signal 9 } 
	{ send_fifo_L_3_din sc_out sc_lv 128 signal 10 } 
	{ send_fifo_L_3_num_data_valid sc_in sc_lv 11 signal 10 } 
	{ send_fifo_L_3_fifo_cap sc_in sc_lv 11 signal 10 } 
	{ send_fifo_L_3_full_n sc_in sc_logic 1 signal 10 } 
	{ send_fifo_L_3_almost_full_n sc_in sc_logic 1 signal 10 } 
	{ send_fifo_L_3_write sc_out sc_logic 1 signal 10 } 
	{ send_fifo_R_0_din sc_out sc_lv 128 signal 11 } 
	{ send_fifo_R_0_num_data_valid sc_in sc_lv 11 signal 11 } 
	{ send_fifo_R_0_fifo_cap sc_in sc_lv 11 signal 11 } 
	{ send_fifo_R_0_full_n sc_in sc_logic 1 signal 11 } 
	{ send_fifo_R_0_almost_full_n sc_in sc_logic 1 signal 11 } 
	{ send_fifo_R_0_write sc_out sc_logic 1 signal 11 } 
	{ send_fifo_R_1_din sc_out sc_lv 128 signal 12 } 
	{ send_fifo_R_1_num_data_valid sc_in sc_lv 11 signal 12 } 
	{ send_fifo_R_1_fifo_cap sc_in sc_lv 11 signal 12 } 
	{ send_fifo_R_1_full_n sc_in sc_logic 1 signal 12 } 
	{ send_fifo_R_1_almost_full_n sc_in sc_logic 1 signal 12 } 
	{ send_fifo_R_1_write sc_out sc_logic 1 signal 12 } 
	{ send_fifo_R_2_din sc_out sc_lv 128 signal 13 } 
	{ send_fifo_R_2_num_data_valid sc_in sc_lv 11 signal 13 } 
	{ send_fifo_R_2_fifo_cap sc_in sc_lv 11 signal 13 } 
	{ send_fifo_R_2_full_n sc_in sc_logic 1 signal 13 } 
	{ send_fifo_R_2_almost_full_n sc_in sc_logic 1 signal 13 } 
	{ send_fifo_R_2_write sc_out sc_logic 1 signal 13 } 
	{ send_fifo_R_3_din sc_out sc_lv 128 signal 14 } 
	{ send_fifo_R_3_num_data_valid sc_in sc_lv 11 signal 14 } 
	{ send_fifo_R_3_fifo_cap sc_in sc_lv 11 signal 14 } 
	{ send_fifo_R_3_full_n sc_in sc_logic 1 signal 14 } 
	{ send_fifo_R_3_almost_full_n sc_in sc_logic 1 signal 14 } 
	{ send_fifo_R_3_write sc_out sc_logic 1 signal 14 } 
	{ receive_fifo_L_0_dout sc_in sc_lv 128 signal 15 } 
	{ receive_fifo_L_0_num_data_valid sc_in sc_lv 15 signal 15 } 
	{ receive_fifo_L_0_fifo_cap sc_in sc_lv 15 signal 15 } 
	{ receive_fifo_L_0_empty_n sc_in sc_logic 1 signal 15 } 
	{ receive_fifo_L_0_read sc_out sc_logic 1 signal 15 } 
	{ receive_fifo_L_1_dout sc_in sc_lv 128 signal 16 } 
	{ receive_fifo_L_1_num_data_valid sc_in sc_lv 15 signal 16 } 
	{ receive_fifo_L_1_fifo_cap sc_in sc_lv 15 signal 16 } 
	{ receive_fifo_L_1_empty_n sc_in sc_logic 1 signal 16 } 
	{ receive_fifo_L_1_read sc_out sc_logic 1 signal 16 } 
	{ receive_fifo_L_2_dout sc_in sc_lv 128 signal 17 } 
	{ receive_fifo_L_2_num_data_valid sc_in sc_lv 15 signal 17 } 
	{ receive_fifo_L_2_fifo_cap sc_in sc_lv 15 signal 17 } 
	{ receive_fifo_L_2_empty_n sc_in sc_logic 1 signal 17 } 
	{ receive_fifo_L_2_read sc_out sc_logic 1 signal 17 } 
	{ receive_fifo_L_3_dout sc_in sc_lv 128 signal 18 } 
	{ receive_fifo_L_3_num_data_valid sc_in sc_lv 15 signal 18 } 
	{ receive_fifo_L_3_fifo_cap sc_in sc_lv 15 signal 18 } 
	{ receive_fifo_L_3_empty_n sc_in sc_logic 1 signal 18 } 
	{ receive_fifo_L_3_read sc_out sc_logic 1 signal 18 } 
	{ receive_fifo_R_0_dout sc_in sc_lv 128 signal 19 } 
	{ receive_fifo_R_0_num_data_valid sc_in sc_lv 15 signal 19 } 
	{ receive_fifo_R_0_fifo_cap sc_in sc_lv 15 signal 19 } 
	{ receive_fifo_R_0_empty_n sc_in sc_logic 1 signal 19 } 
	{ receive_fifo_R_0_read sc_out sc_logic 1 signal 19 } 
	{ receive_fifo_R_1_dout sc_in sc_lv 128 signal 20 } 
	{ receive_fifo_R_1_num_data_valid sc_in sc_lv 15 signal 20 } 
	{ receive_fifo_R_1_fifo_cap sc_in sc_lv 15 signal 20 } 
	{ receive_fifo_R_1_empty_n sc_in sc_logic 1 signal 20 } 
	{ receive_fifo_R_1_read sc_out sc_logic 1 signal 20 } 
	{ receive_fifo_R_2_dout sc_in sc_lv 128 signal 21 } 
	{ receive_fifo_R_2_num_data_valid sc_in sc_lv 15 signal 21 } 
	{ receive_fifo_R_2_fifo_cap sc_in sc_lv 15 signal 21 } 
	{ receive_fifo_R_2_empty_n sc_in sc_logic 1 signal 21 } 
	{ receive_fifo_R_2_read sc_out sc_logic 1 signal 21 } 
	{ receive_fifo_R_3_dout sc_in sc_lv 128 signal 22 } 
	{ receive_fifo_R_3_num_data_valid sc_in sc_lv 15 signal 22 } 
	{ receive_fifo_R_3_fifo_cap sc_in sc_lv 15 signal 22 } 
	{ receive_fifo_R_3_empty_n sc_in sc_logic 1 signal 22 } 
	{ receive_fifo_R_3_read sc_out sc_logic 1 signal 22 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "syscontrol_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "dout" }} , 
 	{ "name": "syscontrol_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "num_data_valid" }} , 
 	{ "name": "syscontrol_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "fifo_cap" }} , 
 	{ "name": "syscontrol_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "empty_n" }} , 
 	{ "name": "syscontrol_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "syscontrol_1", "role": "read" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "dataIn", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataIn", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "U", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "U", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem2_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem2", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "S", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "S", "role": "default" }} , 
 	{ "name": "send_fifo_L_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "din" }} , 
 	{ "name": "send_fifo_L_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_0_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_L_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "write" }} , 
 	{ "name": "send_fifo_L_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "din" }} , 
 	{ "name": "send_fifo_L_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_1_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_L_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "write" }} , 
 	{ "name": "send_fifo_L_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "din" }} , 
 	{ "name": "send_fifo_L_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_2_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_L_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "write" }} , 
 	{ "name": "send_fifo_L_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "din" }} , 
 	{ "name": "send_fifo_L_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_3_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_L_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "write" }} , 
 	{ "name": "send_fifo_R_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "din" }} , 
 	{ "name": "send_fifo_R_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_0_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_R_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "write" }} , 
 	{ "name": "send_fifo_R_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "din" }} , 
 	{ "name": "send_fifo_R_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_1_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_R_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "write" }} , 
 	{ "name": "send_fifo_R_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "din" }} , 
 	{ "name": "send_fifo_R_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_2_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_R_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "write" }} , 
 	{ "name": "send_fifo_R_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "din" }} , 
 	{ "name": "send_fifo_R_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_3_almost_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "almost_full_n" }} , 
 	{ "name": "send_fifo_R_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "write" }} , 
 	{ "name": "receive_fifo_L_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "dout" }} , 
 	{ "name": "receive_fifo_L_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_L_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_L_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_L_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "read" }} , 
 	{ "name": "receive_fifo_L_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "dout" }} , 
 	{ "name": "receive_fifo_L_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_L_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_L_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_L_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "read" }} , 
 	{ "name": "receive_fifo_L_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "dout" }} , 
 	{ "name": "receive_fifo_L_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_L_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_L_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_L_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "read" }} , 
 	{ "name": "receive_fifo_L_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "dout" }} , 
 	{ "name": "receive_fifo_L_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_L_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_L_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_L_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "read" }} , 
 	{ "name": "receive_fifo_R_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "dout" }} , 
 	{ "name": "receive_fifo_R_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_R_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_R_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_R_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "read" }} , 
 	{ "name": "receive_fifo_R_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "dout" }} , 
 	{ "name": "receive_fifo_R_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_R_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_R_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_R_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "read" }} , 
 	{ "name": "receive_fifo_R_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "dout" }} , 
 	{ "name": "receive_fifo_R_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_R_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_R_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_R_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "read" }} , 
 	{ "name": "receive_fifo_R_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "dout" }} , 
 	{ "name": "receive_fifo_R_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "num_data_valid" }} , 
 	{ "name": "receive_fifo_R_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "fifo_cap" }} , 
 	{ "name": "receive_fifo_R_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "empty_n" }} , 
 	{ "name": "receive_fifo_R_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38", "40", "42", "44", "46", "48", "50", "52", "54"],
		"CDFG" : "RoundRobin",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "gmem0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_283_2_fu_447", "Port" : "gmem1", "Inst_start_state" : "54", "Inst_end_state" : "55"}]},
			{"Name" : "U", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "S", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_L_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_402_7_fu_315", "Port" : "send_fifo_L_0", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_L_0", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "24", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_395_6_fu_307", "Port" : "send_fifo_L_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_L_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "36", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_458_12_fu_383", "Port" : "send_fifo_L_1", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "18", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_377_3_fu_283", "Port" : "send_fifo_L_1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_L_1", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_L_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "38", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_464_13_fu_391", "Port" : "send_fifo_L_2", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "20", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_383_4_fu_291", "Port" : "send_fifo_L_2", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_L_2", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_L_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "22", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_389_5_fu_299", "Port" : "send_fifo_L_3", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_L_3", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "40", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_470_14_fu_399", "Port" : "send_fifo_L_3", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_R_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "28", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_409_8_fu_323", "Port" : "send_fifo_R_0", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "46", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_490_17_fu_423", "Port" : "send_fifo_R_0", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_R_0", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_R_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "48", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_496_18_fu_431", "Port" : "send_fifo_R_1", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_R_1", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "30", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_415_9_fu_331", "Port" : "send_fifo_R_1", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_R_2", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "32", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_421_10_fu_339", "Port" : "send_fifo_R_2", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "42", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_477_15_fu_407", "Port" : "send_fifo_R_2", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_R_2", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "512", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_fu_259", "Port" : "send_fifo_R_3", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "44", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_484_16_fu_415", "Port" : "send_fifo_R_3", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "50", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_503_19_fu_439", "Port" : "send_fifo_R_3", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "send_fifo_R_3", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "36", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_458_12_fu_383", "Port" : "receive_fifo_L_0", "Inst_start_state" : "31", "Inst_end_state" : "32"},
					{"ID" : "18", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_377_3_fu_283", "Port" : "receive_fifo_L_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "52", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_283_2_fu_447", "Port" : "receive_fifo_L_0", "Inst_start_state" : "54", "Inst_end_state" : "55"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_L_0", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_464_13_fu_391", "Port" : "receive_fifo_L_1", "Inst_start_state" : "34", "Inst_end_state" : "35"},
					{"ID" : "20", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_383_4_fu_291", "Port" : "receive_fifo_L_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_L_1", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_389_5_fu_299", "Port" : "receive_fifo_L_2", "Inst_start_state" : "10", "Inst_end_state" : "11"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_L_2", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "40", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_470_14_fu_399", "Port" : "receive_fifo_L_2", "Inst_start_state" : "37", "Inst_end_state" : "38"}]},
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_477_15_fu_407", "Port" : "receive_fifo_L_3", "Inst_start_state" : "40", "Inst_end_state" : "41"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_L_3", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "24", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_395_6_fu_307", "Port" : "receive_fifo_L_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_402_7_fu_315", "Port" : "receive_fifo_R_0", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "44", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_484_16_fu_415", "Port" : "receive_fifo_R_0", "Inst_start_state" : "43", "Inst_end_state" : "44"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_R_0", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_409_8_fu_323", "Port" : "receive_fifo_R_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "46", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_490_17_fu_423", "Port" : "receive_fifo_R_1", "Inst_start_state" : "46", "Inst_end_state" : "47"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_R_1", "Inst_start_state" : "28", "Inst_end_state" : "29"}]},
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_496_18_fu_431", "Port" : "receive_fifo_R_2", "Inst_start_state" : "49", "Inst_end_state" : "50"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_R_2", "Inst_start_state" : "28", "Inst_end_state" : "29"},
					{"ID" : "30", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_415_9_fu_331", "Port" : "receive_fifo_R_2", "Inst_start_state" : "22", "Inst_end_state" : "23"}]},
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16384", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_421_10_fu_339", "Port" : "receive_fifo_R_3", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "50", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_503_19_fu_439", "Port" : "receive_fifo_R_3", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "34", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Port" : "receive_fifo_R_3", "Inst_start_state" : "28", "Inst_end_state" : "29"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_373_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "123", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state53"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_368_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "123", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state54"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_282_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "123", "FirstState" : "ap_ST_fsm_state54", "LastState" : ["ap_ST_fsm_state56"], "QuitState" : ["ap_ST_fsm_state54"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state57"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259", "Parent" : "0", "Child" : ["2", "4", "6", "8", "10", "12", "14", "16"],
		"CDFG" : "DDR2FIFO",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "321", "EstimateLatencyMax" : "84737",
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
					{"ID" : "2", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_148", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "74"},
					{"ID" : "14", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_202", "Port" : "gmem0", "Inst_start_state" : "295", "Inst_end_state" : "296"},
					{"ID" : "16", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_211", "Port" : "gmem0", "Inst_start_state" : "295", "Inst_end_state" : "296"},
					{"ID" : "6", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_166", "Port" : "gmem0", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "4", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_157", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "76"},
					{"ID" : "10", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_184", "Port" : "gmem0", "Inst_start_state" : "221", "Inst_end_state" : "222"},
					{"ID" : "12", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_193", "Port" : "gmem0", "Inst_start_state" : "221", "Inst_end_state" : "224"},
					{"ID" : "8", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_175", "Port" : "gmem0", "Inst_start_state" : "147", "Inst_end_state" : "150"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_148", "Port" : "send_fifo_L_0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_166", "Port" : "send_fifo_L_1", "Inst_start_state" : "147", "Inst_end_state" : "148"}]},
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_184", "Port" : "send_fifo_L_2", "Inst_start_state" : "221", "Inst_end_state" : "222"}]},
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_202", "Port" : "send_fifo_L_3", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_157", "Port" : "send_fifo_R_0", "Inst_start_state" : "73", "Inst_end_state" : "76"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_175", "Port" : "send_fifo_R_1", "Inst_start_state" : "147", "Inst_end_state" : "150"}]},
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_193", "Port" : "send_fifo_R_2", "Inst_start_state" : "221", "Inst_end_state" : "224"}]},
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_211", "Port" : "send_fifo_R_3", "Inst_start_state" : "295", "Inst_end_state" : "296"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "296", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state296"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_148", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_151_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln151", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_151_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_148.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_157", "Parent" : "1", "Child" : ["5"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln151", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_144_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_157.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_166", "Parent" : "1", "Child" : ["7"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_168_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln168", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_168_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_166.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_175", "Parent" : "1", "Child" : ["9"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_161_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln168", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_161_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_175.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_184", "Parent" : "1", "Child" : ["11"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_185_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln185", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_185_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_184.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_193", "Parent" : "1", "Child" : ["13"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_178_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln185", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_193.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_202", "Parent" : "1", "Child" : ["15"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_202_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln202", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_202_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_202.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_211", "Parent" : "1", "Child" : ["17"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_195_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln202", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_195_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_211.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_377_3_fu_283", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_377_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_377_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_377_3_fu_283.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_383_4_fu_291", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_383_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_383_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_383_4_fu_291.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_389_5_fu_299", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_389_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_389_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_389_5_fu_299.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_395_6_fu_307", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_395_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_395_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_395_6_fu_307.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_402_7_fu_315", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_402_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_402_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_402_7_fu_315.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_409_8_fu_323", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_409_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_409_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_409_8_fu_323.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_415_9_fu_331", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_415_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_415_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_415_9_fu_331.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_421_10_fu_339", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_421_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_421_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_421_10_fu_339.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_431_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1538", "EstimateLatencyMax" : "1538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_431_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_431_11_fu_347.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_458_12_fu_383", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_458_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_458_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_458_12_fu_383.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_464_13_fu_391", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_464_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_464_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_464_13_fu_391.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_470_14_fu_399", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_470_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_470_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_470_14_fu_399.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_477_15_fu_407", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_477_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_477_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_477_15_fu_407.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_484_16_fu_415", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_484_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_484_16", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_484_16_fu_415.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_490_17_fu_423", "Parent" : "0", "Child" : ["47"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_490_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_490_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_490_17_fu_423.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_496_18_fu_431", "Parent" : "0", "Child" : ["49"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_496_18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_496_18", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_496_18_fu_431.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_503_19_fu_439", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_503_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_503_19", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_503_19_fu_439.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_283_2_fu_447", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_283_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln282", "Type" : "None", "Direction" : "I"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_283_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_RoundRobin_Pipeline_VITIS_LOOP_283_2_fu_447.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.printint_U391", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	RoundRobin {
		syscontrol_1 {Type I LastRead 2 FirstWrite -1}
		gmem0 {Type I LastRead 220 FirstWrite -1}
		dataIn {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type O LastRead 3 FirstWrite 1}
		U {Type I LastRead 1 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 5}
		S {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_2 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_3 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_2 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_3 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_0 {Type I LastRead 5 FirstWrite -1}
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_2 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_3 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_2 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_3 {Type I LastRead 1 FirstWrite -1}}
	DDR2FIFO {
		gmem0 {Type I LastRead 220 FirstWrite -1}
		dataIn {Type I LastRead 0 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_2 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_3 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_2 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_3 {Type O LastRead -1 FirstWrite 1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_151_3 {
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_144_2 {
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_168_5 {
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln168 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_161_4 {
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln168 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_185_7 {
		send_fifo_L_2 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln185 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_178_6 {
		send_fifo_R_2 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln185 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_202_9 {
		send_fifo_L_3 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln202 {Type I LastRead 0 FirstWrite -1}}
	DDR2FIFO_Pipeline_VITIS_LOOP_195_8 {
		send_fifo_R_3 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln202 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_377_3 {
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_383_4 {
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_2 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_389_5 {
		receive_fifo_L_2 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_3 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_395_6 {
		receive_fifo_L_3 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_402_7 {
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_409_8 {
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_415_9 {
		receive_fifo_R_2 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_421_10 {
		receive_fifo_R_3 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_2 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_431_11 {
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_3 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_2 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_2 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_3 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_2 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_3 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_3 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_2 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_458_12 {
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_464_13 {
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_2 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_470_14 {
		receive_fifo_L_2 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_3 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_477_15 {
		receive_fifo_L_3 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_2 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_484_16 {
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_3 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_490_17 {
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_496_18 {
		receive_fifo_R_2 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_503_19 {
		receive_fifo_R_3 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_3 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_283_2 {
		gmem1 {Type O LastRead -1 FirstWrite 1}
		sext_ln282 {Type I LastRead 0 FirstWrite -1}
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	syscontrol_1 { ap_fifo {  { syscontrol_1_dout fifo_data_in 0 1 }  { syscontrol_1_num_data_valid fifo_status_num_data_valid 0 3 }  { syscontrol_1_fifo_cap fifo_update 0 3 }  { syscontrol_1_empty_n fifo_status 0 1 }  { syscontrol_1_read fifo_port_we 1 1 } } }
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 11 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	dataIn { ap_none {  { dataIn in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 11 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	U { ap_none {  { U in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 32 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 32 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RFIFONUM LEN 0 11 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	S { ap_none {  { S in_data 0 64 } } }
	send_fifo_L_0 { ap_fifo {  { send_fifo_L_0_din fifo_data_in 1 128 }  { send_fifo_L_0_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_L_0_fifo_cap fifo_update 0 11 }  { send_fifo_L_0_full_n fifo_status 0 1 }  { send_fifo_L_0_almost_full_n fifo_data 0 1 }  { send_fifo_L_0_write fifo_port_we 1 1 } } }
	send_fifo_L_1 { ap_fifo {  { send_fifo_L_1_din fifo_data_in 1 128 }  { send_fifo_L_1_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_L_1_fifo_cap fifo_update 0 11 }  { send_fifo_L_1_full_n fifo_status 0 1 }  { send_fifo_L_1_almost_full_n fifo_data 0 1 }  { send_fifo_L_1_write fifo_port_we 1 1 } } }
	send_fifo_L_2 { ap_fifo {  { send_fifo_L_2_din fifo_data_in 1 128 }  { send_fifo_L_2_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_L_2_fifo_cap fifo_update 0 11 }  { send_fifo_L_2_full_n fifo_status 0 1 }  { send_fifo_L_2_almost_full_n fifo_data 0 1 }  { send_fifo_L_2_write fifo_port_we 1 1 } } }
	send_fifo_L_3 { ap_fifo {  { send_fifo_L_3_din fifo_data_in 1 128 }  { send_fifo_L_3_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_L_3_fifo_cap fifo_update 0 11 }  { send_fifo_L_3_full_n fifo_status 0 1 }  { send_fifo_L_3_almost_full_n fifo_data 0 1 }  { send_fifo_L_3_write fifo_port_we 1 1 } } }
	send_fifo_R_0 { ap_fifo {  { send_fifo_R_0_din fifo_data_in 1 128 }  { send_fifo_R_0_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_R_0_fifo_cap fifo_update 0 11 }  { send_fifo_R_0_full_n fifo_status 0 1 }  { send_fifo_R_0_almost_full_n fifo_data 0 1 }  { send_fifo_R_0_write fifo_port_we 1 1 } } }
	send_fifo_R_1 { ap_fifo {  { send_fifo_R_1_din fifo_data_in 1 128 }  { send_fifo_R_1_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_R_1_fifo_cap fifo_update 0 11 }  { send_fifo_R_1_full_n fifo_status 0 1 }  { send_fifo_R_1_almost_full_n fifo_data 0 1 }  { send_fifo_R_1_write fifo_port_we 1 1 } } }
	send_fifo_R_2 { ap_fifo {  { send_fifo_R_2_din fifo_data_in 1 128 }  { send_fifo_R_2_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_R_2_fifo_cap fifo_update 0 11 }  { send_fifo_R_2_full_n fifo_status 0 1 }  { send_fifo_R_2_almost_full_n fifo_data 0 1 }  { send_fifo_R_2_write fifo_port_we 1 1 } } }
	send_fifo_R_3 { ap_fifo {  { send_fifo_R_3_din fifo_data_in 1 128 }  { send_fifo_R_3_num_data_valid fifo_status_num_data_valid 0 11 }  { send_fifo_R_3_fifo_cap fifo_update 0 11 }  { send_fifo_R_3_full_n fifo_status 0 1 }  { send_fifo_R_3_almost_full_n fifo_data 0 1 }  { send_fifo_R_3_write fifo_port_we 1 1 } } }
	receive_fifo_L_0 { ap_fifo {  { receive_fifo_L_0_dout fifo_data_in 0 128 }  { receive_fifo_L_0_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_L_0_fifo_cap fifo_update 0 15 }  { receive_fifo_L_0_empty_n fifo_status 0 1 }  { receive_fifo_L_0_read fifo_port_we 1 1 } } }
	receive_fifo_L_1 { ap_fifo {  { receive_fifo_L_1_dout fifo_data_in 0 128 }  { receive_fifo_L_1_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_L_1_fifo_cap fifo_update 0 15 }  { receive_fifo_L_1_empty_n fifo_status 0 1 }  { receive_fifo_L_1_read fifo_port_we 1 1 } } }
	receive_fifo_L_2 { ap_fifo {  { receive_fifo_L_2_dout fifo_data_in 0 128 }  { receive_fifo_L_2_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_L_2_fifo_cap fifo_update 0 15 }  { receive_fifo_L_2_empty_n fifo_status 0 1 }  { receive_fifo_L_2_read fifo_port_we 1 1 } } }
	receive_fifo_L_3 { ap_fifo {  { receive_fifo_L_3_dout fifo_data_in 0 128 }  { receive_fifo_L_3_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_L_3_fifo_cap fifo_update 0 15 }  { receive_fifo_L_3_empty_n fifo_status 0 1 }  { receive_fifo_L_3_read fifo_port_we 1 1 } } }
	receive_fifo_R_0 { ap_fifo {  { receive_fifo_R_0_dout fifo_data_in 0 128 }  { receive_fifo_R_0_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_R_0_fifo_cap fifo_update 0 15 }  { receive_fifo_R_0_empty_n fifo_status 0 1 }  { receive_fifo_R_0_read fifo_port_we 1 1 } } }
	receive_fifo_R_1 { ap_fifo {  { receive_fifo_R_1_dout fifo_data_in 0 128 }  { receive_fifo_R_1_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_R_1_fifo_cap fifo_update 0 15 }  { receive_fifo_R_1_empty_n fifo_status 0 1 }  { receive_fifo_R_1_read fifo_port_we 1 1 } } }
	receive_fifo_R_2 { ap_fifo {  { receive_fifo_R_2_dout fifo_data_in 0 128 }  { receive_fifo_R_2_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_R_2_fifo_cap fifo_update 0 15 }  { receive_fifo_R_2_empty_n fifo_status 0 1 }  { receive_fifo_R_2_read fifo_port_we 1 1 } } }
	receive_fifo_R_3 { ap_fifo {  { receive_fifo_R_3_dout fifo_data_in 0 128 }  { receive_fifo_R_3_num_data_valid fifo_status_num_data_valid 0 15 }  { receive_fifo_R_3_fifo_cap fifo_update 0 15 }  { receive_fifo_R_3_empty_n fifo_status 0 1 }  { receive_fifo_R_3_read fifo_port_we 1 1 } } }
}
