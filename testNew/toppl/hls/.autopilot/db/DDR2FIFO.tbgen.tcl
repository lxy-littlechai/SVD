set moduleName DDR2FIFO
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
set C_modelName {DDR2FIFO}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ dataIn int 64 regular  }
	{ send_fifo_L_0 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_L_1 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_L_2 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_L_3 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_0 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_1 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_2 int 128 regular {fifo 1 volatile }  }
	{ send_fifo_R_3 int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dataIn","offset": { "type": "dynamic","port_name": "dataIn","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "dataIn", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "send_fifo_L_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_L_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_L_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_L_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_fifo_R_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 93
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 0 } 
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
	{ m_axi_gmem0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ dataIn sc_in sc_lv 64 signal 1 } 
	{ send_fifo_L_0_din sc_out sc_lv 128 signal 2 } 
	{ send_fifo_L_0_num_data_valid sc_in sc_lv 6 signal 2 } 
	{ send_fifo_L_0_fifo_cap sc_in sc_lv 6 signal 2 } 
	{ send_fifo_L_0_full_n sc_in sc_logic 1 signal 2 } 
	{ send_fifo_L_0_write sc_out sc_logic 1 signal 2 } 
	{ send_fifo_L_1_din sc_out sc_lv 128 signal 3 } 
	{ send_fifo_L_1_num_data_valid sc_in sc_lv 6 signal 3 } 
	{ send_fifo_L_1_fifo_cap sc_in sc_lv 6 signal 3 } 
	{ send_fifo_L_1_full_n sc_in sc_logic 1 signal 3 } 
	{ send_fifo_L_1_write sc_out sc_logic 1 signal 3 } 
	{ send_fifo_L_2_din sc_out sc_lv 128 signal 4 } 
	{ send_fifo_L_2_num_data_valid sc_in sc_lv 6 signal 4 } 
	{ send_fifo_L_2_fifo_cap sc_in sc_lv 6 signal 4 } 
	{ send_fifo_L_2_full_n sc_in sc_logic 1 signal 4 } 
	{ send_fifo_L_2_write sc_out sc_logic 1 signal 4 } 
	{ send_fifo_L_3_din sc_out sc_lv 128 signal 5 } 
	{ send_fifo_L_3_num_data_valid sc_in sc_lv 6 signal 5 } 
	{ send_fifo_L_3_fifo_cap sc_in sc_lv 6 signal 5 } 
	{ send_fifo_L_3_full_n sc_in sc_logic 1 signal 5 } 
	{ send_fifo_L_3_write sc_out sc_logic 1 signal 5 } 
	{ send_fifo_R_0_din sc_out sc_lv 128 signal 6 } 
	{ send_fifo_R_0_num_data_valid sc_in sc_lv 6 signal 6 } 
	{ send_fifo_R_0_fifo_cap sc_in sc_lv 6 signal 6 } 
	{ send_fifo_R_0_full_n sc_in sc_logic 1 signal 6 } 
	{ send_fifo_R_0_write sc_out sc_logic 1 signal 6 } 
	{ send_fifo_R_1_din sc_out sc_lv 128 signal 7 } 
	{ send_fifo_R_1_num_data_valid sc_in sc_lv 6 signal 7 } 
	{ send_fifo_R_1_fifo_cap sc_in sc_lv 6 signal 7 } 
	{ send_fifo_R_1_full_n sc_in sc_logic 1 signal 7 } 
	{ send_fifo_R_1_write sc_out sc_logic 1 signal 7 } 
	{ send_fifo_R_2_din sc_out sc_lv 128 signal 8 } 
	{ send_fifo_R_2_num_data_valid sc_in sc_lv 6 signal 8 } 
	{ send_fifo_R_2_fifo_cap sc_in sc_lv 6 signal 8 } 
	{ send_fifo_R_2_full_n sc_in sc_logic 1 signal 8 } 
	{ send_fifo_R_2_write sc_out sc_logic 1 signal 8 } 
	{ send_fifo_R_3_din sc_out sc_lv 128 signal 9 } 
	{ send_fifo_R_3_num_data_valid sc_in sc_lv 6 signal 9 } 
	{ send_fifo_R_3_fifo_cap sc_in sc_lv 6 signal 9 } 
	{ send_fifo_R_3_full_n sc_in sc_logic 1 signal 9 } 
	{ send_fifo_R_3_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "send_fifo_L_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "din" }} , 
 	{ "name": "send_fifo_L_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_0", "role": "write" }} , 
 	{ "name": "send_fifo_L_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "din" }} , 
 	{ "name": "send_fifo_L_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_1", "role": "write" }} , 
 	{ "name": "send_fifo_L_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "din" }} , 
 	{ "name": "send_fifo_L_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_2", "role": "write" }} , 
 	{ "name": "send_fifo_L_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "din" }} , 
 	{ "name": "send_fifo_L_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_L_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_L_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "full_n" }} , 
 	{ "name": "send_fifo_L_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_L_3", "role": "write" }} , 
 	{ "name": "send_fifo_R_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "din" }} , 
 	{ "name": "send_fifo_R_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_0", "role": "write" }} , 
 	{ "name": "send_fifo_R_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "din" }} , 
 	{ "name": "send_fifo_R_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_1", "role": "write" }} , 
 	{ "name": "send_fifo_R_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "din" }} , 
 	{ "name": "send_fifo_R_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_2", "role": "write" }} , 
 	{ "name": "send_fifo_R_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "din" }} , 
 	{ "name": "send_fifo_R_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "num_data_valid" }} , 
 	{ "name": "send_fifo_R_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "fifo_cap" }} , 
 	{ "name": "send_fifo_R_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "full_n" }} , 
 	{ "name": "send_fifo_R_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "send_fifo_R_3", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11", "13", "15"],
		"CDFG" : "DDR2FIFO",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "81", "EstimateLatencyMax" : "5825",
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
					{"ID" : "7", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_177", "Port" : "gmem0", "Inst_start_state" : "147", "Inst_end_state" : "150"},
					{"ID" : "15", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_213", "Port" : "gmem0", "Inst_start_state" : "295", "Inst_end_state" : "296"},
					{"ID" : "11", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_195", "Port" : "gmem0", "Inst_start_state" : "221", "Inst_end_state" : "224"},
					{"ID" : "13", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_204", "Port" : "gmem0", "Inst_start_state" : "295", "Inst_end_state" : "296"},
					{"ID" : "5", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_168", "Port" : "gmem0", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "9", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_186", "Port" : "gmem0", "Inst_start_state" : "221", "Inst_end_state" : "222"},
					{"ID" : "3", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_159", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "76"},
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_150", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_150", "Port" : "send_fifo_L_0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_168", "Port" : "send_fifo_L_1", "Inst_start_state" : "147", "Inst_end_state" : "148"}]},
			{"Name" : "send_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_186", "Port" : "send_fifo_L_2", "Inst_start_state" : "221", "Inst_end_state" : "222"}]},
			{"Name" : "send_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_204", "Port" : "send_fifo_L_3", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_159", "Port" : "send_fifo_R_0", "Inst_start_state" : "73", "Inst_end_state" : "76"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_177", "Port" : "send_fifo_R_1", "Inst_start_state" : "147", "Inst_end_state" : "150"}]},
			{"Name" : "send_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_195", "Port" : "send_fifo_R_2", "Inst_start_state" : "221", "Inst_end_state" : "224"}]},
			{"Name" : "send_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_213", "Port" : "send_fifo_R_3", "Inst_start_state" : "295", "Inst_end_state" : "296"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "296", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state296"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_150", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_151_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_150.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_159", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_144_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_168", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_168_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_168.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_177", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_161_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_186", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_185_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_186.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_195", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_178_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_204", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_202_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_204.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_213", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "DDR2FIFO_Pipeline_VITIS_LOOP_195_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
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
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_213.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"}]}


set ArgLastReadFirstWriteLatency {
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
		sext_ln202 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "81", "Max" : "5825"}
	, {"Name" : "Interval", "Min" : "81", "Max" : "5825"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 32 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 32 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RFIFONUM LEN 0 11 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	dataIn { ap_none {  { dataIn in_data 0 64 } } }
	send_fifo_L_0 { ap_fifo {  { send_fifo_L_0_din fifo_data_in 1 128 }  { send_fifo_L_0_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_L_0_fifo_cap fifo_update 0 6 }  { send_fifo_L_0_full_n fifo_status 0 1 }  { send_fifo_L_0_write fifo_port_we 1 1 } } }
	send_fifo_L_1 { ap_fifo {  { send_fifo_L_1_din fifo_data_in 1 128 }  { send_fifo_L_1_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_L_1_fifo_cap fifo_update 0 6 }  { send_fifo_L_1_full_n fifo_status 0 1 }  { send_fifo_L_1_write fifo_port_we 1 1 } } }
	send_fifo_L_2 { ap_fifo {  { send_fifo_L_2_din fifo_data_in 1 128 }  { send_fifo_L_2_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_L_2_fifo_cap fifo_update 0 6 }  { send_fifo_L_2_full_n fifo_status 0 1 }  { send_fifo_L_2_write fifo_port_we 1 1 } } }
	send_fifo_L_3 { ap_fifo {  { send_fifo_L_3_din fifo_data_in 1 128 }  { send_fifo_L_3_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_L_3_fifo_cap fifo_update 0 6 }  { send_fifo_L_3_full_n fifo_status 0 1 }  { send_fifo_L_3_write fifo_port_we 1 1 } } }
	send_fifo_R_0 { ap_fifo {  { send_fifo_R_0_din fifo_data_in 1 128 }  { send_fifo_R_0_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_R_0_fifo_cap fifo_update 0 6 }  { send_fifo_R_0_full_n fifo_status 0 1 }  { send_fifo_R_0_write fifo_port_we 1 1 } } }
	send_fifo_R_1 { ap_fifo {  { send_fifo_R_1_din fifo_data_in 1 128 }  { send_fifo_R_1_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_R_1_fifo_cap fifo_update 0 6 }  { send_fifo_R_1_full_n fifo_status 0 1 }  { send_fifo_R_1_write fifo_port_we 1 1 } } }
	send_fifo_R_2 { ap_fifo {  { send_fifo_R_2_din fifo_data_in 1 128 }  { send_fifo_R_2_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_R_2_fifo_cap fifo_update 0 6 }  { send_fifo_R_2_full_n fifo_status 0 1 }  { send_fifo_R_2_write fifo_port_we 1 1 } } }
	send_fifo_R_3 { ap_fifo {  { send_fifo_R_3_din fifo_data_in 1 128 }  { send_fifo_R_3_num_data_valid fifo_status_num_data_valid 0 6 }  { send_fifo_R_3_fifo_cap fifo_update 0 6 }  { send_fifo_R_3_full_n fifo_status 0 1 }  { send_fifo_R_3_write fifo_port_we 1 1 } } }
}
