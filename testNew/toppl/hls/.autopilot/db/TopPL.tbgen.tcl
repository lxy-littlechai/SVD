set moduleName TopPL
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {TopPL}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem1 int 512 regular {axi_master 1}  }
	{ gmem2 int 512 regular {axi_master 1}  }
	{ gmem3 int 32 regular {axi_master 1}  }
	{ dataIn int 64 regular {axi_slave 0}  }
	{ U int 64 regular {axi_slave 0}  }
	{ S int 64 regular {axi_slave 0}  }
	{ ConvArray int 64 regular {axi_slave 0}  }
	{ ITER int 32 regular {axi_slave 0}  }
	{ sweep_tx1_0_V_data_V int 128 regular {axi_s 1 volatile  { sweep_tx1_0 Data } }  }
	{ sweep_tx1_0_V_keep_V int 16 regular {axi_s 1 volatile  { sweep_tx1_0 Keep } }  }
	{ sweep_tx1_0_V_strb_V int 16 regular {axi_s 1 volatile  { sweep_tx1_0 Strb } }  }
	{ sweep_tx1_0_V_last_V int 1 regular {axi_s 1 volatile  { sweep_tx1_0 Last } }  }
	{ sweep_rx1_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_0 Data } }  }
	{ sweep_rx1_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_0 Keep } }  }
	{ sweep_rx1_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_0 Strb } }  }
	{ sweep_rx1_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_0 Last } }  }
	{ sweep_tx1_1_V_data_V int 128 regular {axi_s 1 volatile  { sweep_tx1_1 Data } }  }
	{ sweep_tx1_1_V_keep_V int 16 regular {axi_s 1 volatile  { sweep_tx1_1 Keep } }  }
	{ sweep_tx1_1_V_strb_V int 16 regular {axi_s 1 volatile  { sweep_tx1_1 Strb } }  }
	{ sweep_tx1_1_V_last_V int 1 regular {axi_s 1 volatile  { sweep_tx1_1 Last } }  }
	{ sweep_rx1_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_1 Data } }  }
	{ sweep_rx1_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_1 Keep } }  }
	{ sweep_rx1_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_1 Strb } }  }
	{ sweep_rx1_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_1 Last } }  }
	{ sweep_tx2_0_V_data_V int 128 regular {axi_s 1 volatile  { sweep_tx2_0 Data } }  }
	{ sweep_tx2_0_V_keep_V int 16 regular {axi_s 1 volatile  { sweep_tx2_0 Keep } }  }
	{ sweep_tx2_0_V_strb_V int 16 regular {axi_s 1 volatile  { sweep_tx2_0 Strb } }  }
	{ sweep_tx2_0_V_last_V int 1 regular {axi_s 1 volatile  { sweep_tx2_0 Last } }  }
	{ sweep_rx2_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx2_0 Data } }  }
	{ sweep_rx2_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx2_0 Keep } }  }
	{ sweep_rx2_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx2_0 Strb } }  }
	{ sweep_rx2_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx2_0 Last } }  }
	{ sweep_tx2_1_V_data_V int 128 regular {axi_s 1 volatile  { sweep_tx2_1 Data } }  }
	{ sweep_tx2_1_V_keep_V int 16 regular {axi_s 1 volatile  { sweep_tx2_1 Keep } }  }
	{ sweep_tx2_1_V_strb_V int 16 regular {axi_s 1 volatile  { sweep_tx2_1 Strb } }  }
	{ sweep_tx2_1_V_last_V int 1 regular {axi_s 1 volatile  { sweep_tx2_1 Last } }  }
	{ sweep_rx2_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx2_1 Data } }  }
	{ sweep_rx2_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx2_1 Keep } }  }
	{ sweep_rx2_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx2_1 Strb } }  }
	{ sweep_rx2_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx2_1 Last } }  }
	{ norm_tx0_V_data_V int 128 regular {axi_s 1 volatile  { norm_tx0 Data } }  }
	{ norm_tx0_V_keep_V int 16 regular {axi_s 1 volatile  { norm_tx0 Keep } }  }
	{ norm_tx0_V_strb_V int 16 regular {axi_s 1 volatile  { norm_tx0 Strb } }  }
	{ norm_tx0_V_last_V int 1 regular {axi_s 1 volatile  { norm_tx0 Last } }  }
	{ norm_rx0_V_data_V int 128 regular {axi_s 0 volatile  { norm_rx0 Data } }  }
	{ norm_rx0_V_keep_V int 16 regular {axi_s 0 volatile  { norm_rx0 Keep } }  }
	{ norm_rx0_V_strb_V int 16 regular {axi_s 0 volatile  { norm_rx0 Strb } }  }
	{ norm_rx0_V_last_V int 1 regular {axi_s 0 volatile  { norm_rx0 Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dataIn","offset": { "type": "dynamic","port_name": "dataIn","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "U","offset": { "type": "dynamic","port_name": "U","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "S","offset": { "type": "dynamic","port_name": "S","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "ConvArray","offset": { "type": "dynamic","port_name": "ConvArray","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "dataIn", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "U", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "S", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "ConvArray", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "ITER", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "sweep_tx1_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx1_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx1_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx1_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_tx1_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx1_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx1_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx1_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_tx2_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx2_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx2_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx2_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_tx2_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx2_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx2_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_tx2_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "norm_tx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_tx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "norm_rx0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "norm_rx0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 260
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
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
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 512 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 512 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 3 } 
	{ sweep_tx1_0_TDATA sc_out sc_lv 128 signal 9 } 
	{ sweep_tx1_0_TKEEP sc_out sc_lv 16 signal 10 } 
	{ sweep_tx1_0_TSTRB sc_out sc_lv 16 signal 11 } 
	{ sweep_tx1_0_TLAST sc_out sc_lv 1 signal 12 } 
	{ sweep_rx1_0_TDATA sc_in sc_lv 128 signal 13 } 
	{ sweep_rx1_0_TKEEP sc_in sc_lv 16 signal 14 } 
	{ sweep_rx1_0_TSTRB sc_in sc_lv 16 signal 15 } 
	{ sweep_rx1_0_TLAST sc_in sc_lv 1 signal 16 } 
	{ sweep_tx1_1_TDATA sc_out sc_lv 128 signal 17 } 
	{ sweep_tx1_1_TKEEP sc_out sc_lv 16 signal 18 } 
	{ sweep_tx1_1_TSTRB sc_out sc_lv 16 signal 19 } 
	{ sweep_tx1_1_TLAST sc_out sc_lv 1 signal 20 } 
	{ sweep_rx1_1_TDATA sc_in sc_lv 128 signal 21 } 
	{ sweep_rx1_1_TKEEP sc_in sc_lv 16 signal 22 } 
	{ sweep_rx1_1_TSTRB sc_in sc_lv 16 signal 23 } 
	{ sweep_rx1_1_TLAST sc_in sc_lv 1 signal 24 } 
	{ sweep_tx2_0_TDATA sc_out sc_lv 128 signal 25 } 
	{ sweep_tx2_0_TKEEP sc_out sc_lv 16 signal 26 } 
	{ sweep_tx2_0_TSTRB sc_out sc_lv 16 signal 27 } 
	{ sweep_tx2_0_TLAST sc_out sc_lv 1 signal 28 } 
	{ sweep_rx2_0_TDATA sc_in sc_lv 128 signal 29 } 
	{ sweep_rx2_0_TKEEP sc_in sc_lv 16 signal 30 } 
	{ sweep_rx2_0_TSTRB sc_in sc_lv 16 signal 31 } 
	{ sweep_rx2_0_TLAST sc_in sc_lv 1 signal 32 } 
	{ sweep_tx2_1_TDATA sc_out sc_lv 128 signal 33 } 
	{ sweep_tx2_1_TKEEP sc_out sc_lv 16 signal 34 } 
	{ sweep_tx2_1_TSTRB sc_out sc_lv 16 signal 35 } 
	{ sweep_tx2_1_TLAST sc_out sc_lv 1 signal 36 } 
	{ sweep_rx2_1_TDATA sc_in sc_lv 128 signal 37 } 
	{ sweep_rx2_1_TKEEP sc_in sc_lv 16 signal 38 } 
	{ sweep_rx2_1_TSTRB sc_in sc_lv 16 signal 39 } 
	{ sweep_rx2_1_TLAST sc_in sc_lv 1 signal 40 } 
	{ norm_tx0_TDATA sc_out sc_lv 128 signal 41 } 
	{ norm_tx0_TKEEP sc_out sc_lv 16 signal 42 } 
	{ norm_tx0_TSTRB sc_out sc_lv 16 signal 43 } 
	{ norm_tx0_TLAST sc_out sc_lv 1 signal 44 } 
	{ norm_rx0_TDATA sc_in sc_lv 128 signal 45 } 
	{ norm_rx0_TKEEP sc_in sc_lv 16 signal 46 } 
	{ norm_rx0_TSTRB sc_in sc_lv 16 signal 47 } 
	{ norm_rx0_TLAST sc_in sc_lv 1 signal 48 } 
	{ sweep_tx1_0_TVALID sc_out sc_logic 1 outvld 12 } 
	{ sweep_tx1_0_TREADY sc_in sc_logic 1 outacc 12 } 
	{ sweep_tx1_1_TVALID sc_out sc_logic 1 outvld 20 } 
	{ sweep_tx1_1_TREADY sc_in sc_logic 1 outacc 20 } 
	{ sweep_tx2_0_TVALID sc_out sc_logic 1 outvld 28 } 
	{ sweep_tx2_0_TREADY sc_in sc_logic 1 outacc 28 } 
	{ sweep_tx2_1_TVALID sc_out sc_logic 1 outvld 36 } 
	{ sweep_tx2_1_TREADY sc_in sc_logic 1 outacc 36 } 
	{ norm_tx0_TVALID sc_out sc_logic 1 outvld 44 } 
	{ norm_tx0_TREADY sc_in sc_logic 1 outacc 44 } 
	{ sweep_rx1_0_TVALID sc_in sc_logic 1 invld 16 } 
	{ sweep_rx1_0_TREADY sc_out sc_logic 1 inacc 16 } 
	{ sweep_rx1_1_TVALID sc_in sc_logic 1 invld 24 } 
	{ sweep_rx1_1_TREADY sc_out sc_logic 1 inacc 24 } 
	{ sweep_rx2_0_TVALID sc_in sc_logic 1 invld 32 } 
	{ sweep_rx2_0_TREADY sc_out sc_logic 1 inacc 32 } 
	{ sweep_rx2_1_TVALID sc_in sc_logic 1 invld 40 } 
	{ sweep_rx2_1_TREADY sc_out sc_logic 1 inacc 40 } 
	{ norm_rx0_TVALID sc_in sc_logic 1 invld 48 } 
	{ norm_rx0_TREADY sc_out sc_logic 1 inacc 48 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"TopPL","role":"start","value":"0","valid_bit":"0"},{"name":"TopPL","role":"continue","value":"0","valid_bit":"4"},{"name":"TopPL","role":"auto_start","value":"0","valid_bit":"7"},{"name":"dataIn","role":"data","value":"16"},{"name":"U","role":"data","value":"28"},{"name":"S","role":"data","value":"40"},{"name":"ConvArray","role":"data","value":"52"},{"name":"ITER","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"TopPL","role":"start","value":"0","valid_bit":"0"},{"name":"TopPL","role":"done","value":"0","valid_bit":"1"},{"name":"TopPL","role":"idle","value":"0","valid_bit":"2"},{"name":"TopPL","role":"ready","value":"0","valid_bit":"3"},{"name":"TopPL","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
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
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "sweep_tx1_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_tx1_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx1_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx1_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_tx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_tx1_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx1_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx1_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_tx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_tx2_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx2_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx2_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_tx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_tx2_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx2_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_tx2_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_tx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_tx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_tx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_tx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "norm_rx0_V_data_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_keep_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "norm_rx0_V_strb_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sweep_tx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sweep_tx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sweep_tx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx1_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sweep_tx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sweep_tx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sweep_tx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sweep_tx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_tx2_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sweep_tx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_tx0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "norm_tx0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }} , 
 	{ "name": "norm_rx0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "norm_rx0_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "22", "65", "95", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179"],
		"CDFG" : "TopPL",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "6", "Name" : "SystemControl_U0"},
			{"ID" : "65", "Name" : "RoundRobin_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "SystemControl_U0"},
			{"ID" : "22", "Name" : "Send_U0"},
			{"ID" : "65", "Name" : "RoundRobin_U0"},
			{"ID" : "95", "Name" : "Receive_U0"}],
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "RoundRobin_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "RoundRobin_U0", "Port" : "gmem1"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "RoundRobin_U0", "Port" : "gmem2"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "SystemControl_U0", "Port" : "gmem3"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "U", "Type" : "None", "Direction" : "I"},
			{"Name" : "S", "Type" : "None", "Direction" : "I"},
			{"Name" : "ConvArray", "Type" : "None", "Direction" : "I"},
			{"Name" : "ITER", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_tx1_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_0_V_data_V"}]},
			{"Name" : "sweep_tx1_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_0_V_keep_V"}]},
			{"Name" : "sweep_tx1_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_0_V_strb_V"}]},
			{"Name" : "sweep_tx1_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_0_V_last_V"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_0_V_data_V"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_0_V_last_V"}]},
			{"Name" : "sweep_tx1_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_1_V_data_V"}]},
			{"Name" : "sweep_tx1_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_1_V_keep_V"}]},
			{"Name" : "sweep_tx1_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_1_V_strb_V"}]},
			{"Name" : "sweep_tx1_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx1_1_V_last_V"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_1_V_data_V"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx1_1_V_last_V"}]},
			{"Name" : "sweep_tx2_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_0_V_data_V"}]},
			{"Name" : "sweep_tx2_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_0_V_keep_V"}]},
			{"Name" : "sweep_tx2_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_0_V_strb_V"}]},
			{"Name" : "sweep_tx2_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_0_V_last_V"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_0_V_data_V"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_0_V_keep_V"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_0_V_strb_V"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_0_V_last_V"}]},
			{"Name" : "sweep_tx2_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_1_V_data_V"}]},
			{"Name" : "sweep_tx2_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_1_V_keep_V"}]},
			{"Name" : "sweep_tx2_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_1_V_strb_V"}]},
			{"Name" : "sweep_tx2_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "sweep_tx2_1_V_last_V"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_1_V_data_V"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_1_V_keep_V"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_1_V_strb_V"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "sweep_rx2_1_V_last_V"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_data_V"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_keep_V"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_strb_V"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "Send_U0", "Port" : "norm_tx0_V_last_V"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_data_V"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_keep_V"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_strb_V"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "95", "SubInstance" : "Receive_U0", "Port" : "norm_rx0_V_last_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem3_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0", "Parent" : "0", "Child" : ["7", "9", "15", "17", "19", "20", "21"],
		"CDFG" : "SystemControl",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "ITER", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ConvArray", "Type" : "None", "Direction" : "I"},
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "163", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_395_1_fu_136", "Port" : "syscontrol_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "15", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_425_7_fu_159", "Port" : "syscontrol_0", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "17", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_419_6_fu_169", "Port" : "syscontrol_0", "Inst_start_state" : "76", "Inst_end_state" : "78"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "164", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_395_1_fu_136", "Port" : "syscontrol_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "15", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_425_7_fu_159", "Port" : "syscontrol_1", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "17", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_419_6_fu_169", "Port" : "syscontrol_1", "Inst_start_state" : "76", "Inst_end_state" : "78"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["95"], "DependentChan" : "165", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_395_1_fu_136", "Port" : "syscontrol_2", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "15", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_425_7_fu_159", "Port" : "syscontrol_2", "Inst_start_state" : "76", "Inst_end_state" : "77"},
					{"ID" : "17", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_419_6_fu_169", "Port" : "syscontrol_2", "Inst_start_state" : "76", "Inst_end_state" : "78"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "166", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146", "Port" : "convSet_L_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "167", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146", "Port" : "convSet_L_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "168", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146", "Port" : "convSet_R_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "169", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146", "Port" : "convSet_R_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_401_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state77"], "QuitState" : ["ap_ST_fsm_state76"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state78"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_395_1_fu_136", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_395_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_395_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_395_1_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146", "Parent" : "6", "Child" : ["10", "11", "12", "13", "14"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_405_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "542", "EstimateLatencyMax" : "542",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv32_lcssa11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_405_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146.grp_generic_fmax_double_s_fu_85", "Parent" : "9",
		"CDFG" : "generic_fmax_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146.fptrunc_64ns_32_1_no_dsp_1_U6", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146.fpext_32ns_64_1_no_dsp_1_U7", "Parent" : "9"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146.fpext_32ns_64_1_no_dsp_1_U8", "Parent" : "9"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_405_3_fu_146.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_425_7_fu_159", "Parent" : "6", "Child" : ["16"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_425_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_425_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_425_7_fu_159.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_419_6_fu_169", "Parent" : "6", "Child" : ["18"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_419_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_419_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_419_6_fu_169.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.fpext_32ns_64_1_no_dsp_1_U22", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.fcmp_32ns_32ns_1_1_no_dsp_1_U23", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.SystemControl_U0.printdouble_U24", "Parent" : "6"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Send_U0", "Parent" : "0", "Child" : ["23", "41", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "Send",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "6",
		"StartFifo" : "start_for_Send_U0_U",
		"Port" : [
			{"Name" : "syscontrol_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "163", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "170", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "send_fifo_L_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "send_fifo_L_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "171", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "send_fifo_L_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "send_fifo_L_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "172", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "send_fifo_R_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "send_fifo_L_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["65"], "DependentChan" : "173", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "send_fifo_R_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "send_fifo_L_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "sweep_tx1_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx1_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx1_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_tx2_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_120", "Port" : "sweep_tx2_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "norm_tx0_V_data_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "norm_tx0_V_keep_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "norm_tx0_V_strb_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_send2AIE_7_fu_164", "Port" : "norm_tx0_V_last_V", "Inst_start_state" : "10", "Inst_end_state" : "11"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_194_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_209_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state11"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state12"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1981", "EstimateLatencyMax" : "1981",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "24", "Name" : "dataflow_in_loop_VITIS_LOOP_197_2_U0"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "dataflow_in_loop_VITIS_LOOP_197_2_U0"}],
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "send_fifo_L_0"}]},
			{"Name" : "sweep_tx1_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_0_V_data_V"}]},
			{"Name" : "sweep_tx1_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_0_V_keep_V"}]},
			{"Name" : "sweep_tx1_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_0_V_strb_V"}]},
			{"Name" : "sweep_tx1_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_0_V_last_V"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "send_fifo_R_0"}]},
			{"Name" : "sweep_tx1_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_1_V_data_V"}]},
			{"Name" : "sweep_tx1_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_1_V_keep_V"}]},
			{"Name" : "sweep_tx1_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_1_V_strb_V"}]},
			{"Name" : "sweep_tx1_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx1_1_V_last_V"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "send_fifo_L_1"}]},
			{"Name" : "sweep_tx2_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_0_V_data_V"}]},
			{"Name" : "sweep_tx2_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_0_V_keep_V"}]},
			{"Name" : "sweep_tx2_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_0_V_strb_V"}]},
			{"Name" : "sweep_tx2_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_0_V_last_V"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "send_fifo_R_1"}]},
			{"Name" : "sweep_tx2_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_1_V_data_V"}]},
			{"Name" : "sweep_tx2_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_1_V_keep_V"}]},
			{"Name" : "sweep_tx2_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_1_V_strb_V"}]},
			{"Name" : "sweep_tx2_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "Port" : "sweep_tx2_1_V_last_V"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_197_2_U0", "has_continue" : "1"}}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0", "Parent" : "23", "Child" : ["25", "29", "33", "37"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_197_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "25", "Name" : "send2AIE_U0"},
			{"ID" : "29", "Name" : "send2AIE_4_U0"},
			{"ID" : "33", "Name" : "send2AIE_5_U0"},
			{"ID" : "37", "Name" : "send2AIE_6_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "send2AIE_U0"},
			{"ID" : "29", "Name" : "send2AIE_4_U0"},
			{"ID" : "33", "Name" : "send2AIE_5_U0"},
			{"ID" : "37", "Name" : "send2AIE_6_U0"}],
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "send2AIE_U0", "Port" : "send_fifo_L_0"}]},
			{"Name" : "sweep_tx1_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx1_0_V_data_V"}]},
			{"Name" : "sweep_tx1_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx1_0_V_keep_V"}]},
			{"Name" : "sweep_tx1_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx1_0_V_strb_V"}]},
			{"Name" : "sweep_tx1_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "send2AIE_U0", "Port" : "sweep_tx1_0_V_last_V"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "send2AIE_4_U0", "Port" : "send_fifo_R_0"}]},
			{"Name" : "sweep_tx1_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "send2AIE_4_U0", "Port" : "sweep_tx1_1_V_data_V"}]},
			{"Name" : "sweep_tx1_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "send2AIE_4_U0", "Port" : "sweep_tx1_1_V_keep_V"}]},
			{"Name" : "sweep_tx1_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "send2AIE_4_U0", "Port" : "sweep_tx1_1_V_strb_V"}]},
			{"Name" : "sweep_tx1_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "send2AIE_4_U0", "Port" : "sweep_tx1_1_V_last_V"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "send2AIE_5_U0", "Port" : "send_fifo_L_1"}]},
			{"Name" : "sweep_tx2_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "send2AIE_5_U0", "Port" : "sweep_tx2_0_V_data_V"}]},
			{"Name" : "sweep_tx2_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "send2AIE_5_U0", "Port" : "sweep_tx2_0_V_keep_V"}]},
			{"Name" : "sweep_tx2_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "send2AIE_5_U0", "Port" : "sweep_tx2_0_V_strb_V"}]},
			{"Name" : "sweep_tx2_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "send2AIE_5_U0", "Port" : "sweep_tx2_0_V_last_V"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "send2AIE_6_U0", "Port" : "send_fifo_R_1"}]},
			{"Name" : "sweep_tx2_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "send2AIE_6_U0", "Port" : "sweep_tx2_1_V_data_V"}]},
			{"Name" : "sweep_tx2_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "send2AIE_6_U0", "Port" : "sweep_tx2_1_V_keep_V"}]},
			{"Name" : "sweep_tx2_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "send2AIE_6_U0", "Port" : "sweep_tx2_1_V_strb_V"}]},
			{"Name" : "sweep_tx2_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "send2AIE_6_U0", "Port" : "sweep_tx2_1_V_last_V"}]}]},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_U0", "Parent" : "24", "Child" : ["26", "27"],
		"CDFG" : "send2AIE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "send_fifo_L_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"BlockSignal" : [
					{"Name" : "sweep_tx1_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "26", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_U0.data_temp_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_U0.grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145", "Parent" : "25", "Child" : ["28"],
		"CDFG" : "send2AIE_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sweep_tx1_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0",
				"BlockSignal" : [
					{"Name" : "sweep_tx1_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_tx1_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0"},
			{"Name" : "sweep_tx1_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0"},
			{"Name" : "sweep_tx1_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_0"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_U0.grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_4_U0", "Parent" : "24", "Child" : ["30", "31"],
		"CDFG" : "send2AIE_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "send_fifo_R_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"BlockSignal" : [
					{"Name" : "sweep_tx1_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx1_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx1_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_4_U0.data_temp_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_4_U0.grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145", "Parent" : "29", "Child" : ["32"],
		"CDFG" : "send2AIE_4_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sweep_tx1_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1",
				"BlockSignal" : [
					{"Name" : "sweep_tx1_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_tx1_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1"},
			{"Name" : "sweep_tx1_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1"},
			{"Name" : "sweep_tx1_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx1_1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_4_U0.grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_5_U0", "Parent" : "24", "Child" : ["34", "35"],
		"CDFG" : "send2AIE_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "send_fifo_L_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"BlockSignal" : [
					{"Name" : "sweep_tx2_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_5_U0.data_temp_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_5_U0.grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145", "Parent" : "33", "Child" : ["36"],
		"CDFG" : "send2AIE_5_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sweep_tx2_0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0",
				"BlockSignal" : [
					{"Name" : "sweep_tx2_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_tx2_0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0"},
			{"Name" : "sweep_tx2_0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0"},
			{"Name" : "sweep_tx2_0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_0"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_5_U0.grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_6_U0", "Parent" : "24", "Child" : ["38", "39"],
		"CDFG" : "send2AIE_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "send_fifo_R_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"BlockSignal" : [
					{"Name" : "sweep_tx2_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_tx2_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "sweep_tx2_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_6_U0.data_temp_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_6_U0.grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145", "Parent" : "37", "Child" : ["40"],
		"CDFG" : "send2AIE_6_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sweep_tx2_1_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1",
				"BlockSignal" : [
					{"Name" : "sweep_tx2_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_tx2_1_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1"},
			{"Name" : "sweep_tx2_1_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1"},
			{"Name" : "sweep_tx2_1_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "sweep_tx2_1"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0.send2AIE_6_U0.grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_7_fu_164", "Parent" : "22", "Child" : ["42", "43"],
		"CDFG" : "send2AIE_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "send_fifo_L_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"BlockSignal" : [
					{"Name" : "norm_tx0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "norm_tx0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "norm_tx0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "norm_tx0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145", "Port" : "norm_tx0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_102_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_7_fu_164.data_temp_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_7_fu_164.grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145", "Parent" : "41", "Child" : ["44"],
		"CDFG" : "send2AIE_7_Pipeline_VITIS_LOOP_112_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "norm_tx0_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0",
				"BlockSignal" : [
					{"Name" : "norm_tx0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_tx0_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0"},
			{"Name" : "norm_tx0_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0"},
			{"Name" : "norm_tx0_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "norm_tx0"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Send_U0.grp_send2AIE_7_fu_164.grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_145.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_0_V_data_V_U", "Parent" : "22"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_0_V_keep_V_U", "Parent" : "22"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_0_V_strb_V_U", "Parent" : "22"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_0_V_last_V_U", "Parent" : "22"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_1_V_data_V_U", "Parent" : "22"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_1_V_keep_V_U", "Parent" : "22"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_1_V_strb_V_U", "Parent" : "22"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx1_1_V_last_V_U", "Parent" : "22"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_0_V_data_V_U", "Parent" : "22"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_0_V_keep_V_U", "Parent" : "22"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_0_V_strb_V_U", "Parent" : "22"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_0_V_last_V_U", "Parent" : "22"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_1_V_data_V_U", "Parent" : "22"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_1_V_keep_V_U", "Parent" : "22"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_1_V_strb_V_U", "Parent" : "22"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_sweep_tx2_1_V_last_V_U", "Parent" : "22"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_data_V_U", "Parent" : "22"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_keep_V_U", "Parent" : "22"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_strb_V_U", "Parent" : "22"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Send_U0.regslice_both_norm_tx0_V_last_V_U", "Parent" : "22"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0", "Parent" : "0", "Child" : ["66", "68", "70", "72", "74", "76", "78", "80", "82", "84", "86", "88", "90", "92", "94"],
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
			{"Name" : "syscontrol_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "164", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_161_4_fu_289", "Port" : "gmem0", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "70", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_168_5_fu_280", "Port" : "gmem0", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "68", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_144_2_fu_271", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "76"},
					{"ID" : "66", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_151_3_fu_262", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "dataIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_233_2_fu_398", "Port" : "gmem1", "Inst_start_state" : "176", "Inst_end_state" : "177"}]},
			{"Name" : "U", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "S", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "170", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_358_8_fu_360", "Port" : "send_fifo_L_0", "Inst_start_state" : "165", "Inst_end_state" : "166"},
					{"ID" : "76", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_317_4_fu_309", "Port" : "send_fifo_L_0", "Inst_start_state" : "153", "Inst_end_state" : "154"},
					{"ID" : "78", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_324_5_fu_320", "Port" : "send_fifo_L_0", "Inst_start_state" : "156", "Inst_end_state" : "157"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "send_fifo_L_0", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "74", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_311_3_fu_298", "Port" : "send_fifo_L_0", "Inst_start_state" : "150", "Inst_end_state" : "151"},
					{"ID" : "66", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_151_3_fu_262", "Port" : "send_fifo_L_0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "171", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_358_8_fu_360", "Port" : "send_fifo_L_1", "Inst_start_state" : "165", "Inst_end_state" : "166"},
					{"ID" : "76", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_317_4_fu_309", "Port" : "send_fifo_L_1", "Inst_start_state" : "153", "Inst_end_state" : "154"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "send_fifo_L_1", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "70", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_168_5_fu_280", "Port" : "send_fifo_L_1", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "74", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_311_3_fu_298", "Port" : "send_fifo_L_1", "Inst_start_state" : "150", "Inst_end_state" : "151"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "172", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_331_6_fu_328", "Port" : "send_fifo_R_0", "Inst_start_state" : "159", "Inst_end_state" : "160"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "send_fifo_R_0", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "86", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_365_9_fu_371", "Port" : "send_fifo_R_0", "Inst_start_state" : "168", "Inst_end_state" : "169"},
					{"ID" : "88", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_372_10_fu_379", "Port" : "send_fifo_R_0", "Inst_start_state" : "171", "Inst_end_state" : "172"},
					{"ID" : "68", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_144_2_fu_271", "Port" : "send_fifo_R_0", "Inst_start_state" : "73", "Inst_end_state" : "76"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["22"], "DependentChan" : "173", "DependentChanDepth" : "32", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_331_6_fu_328", "Port" : "send_fifo_R_1", "Inst_start_state" : "159", "Inst_end_state" : "160"},
					{"ID" : "72", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_161_4_fu_289", "Port" : "send_fifo_R_1", "Inst_start_state" : "147", "Inst_end_state" : "148"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "send_fifo_R_1", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "88", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_372_10_fu_379", "Port" : "send_fifo_R_1", "Inst_start_state" : "171", "Inst_end_state" : "172"},
					{"ID" : "90", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_379_11_fu_390", "Port" : "send_fifo_R_1", "Inst_start_state" : "174", "Inst_end_state" : "175"}]},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "174", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_358_8_fu_360", "Port" : "receive_fifo_L_0", "Inst_start_state" : "165", "Inst_end_state" : "166"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "receive_fifo_L_0", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "74", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_311_3_fu_298", "Port" : "receive_fifo_L_0", "Inst_start_state" : "150", "Inst_end_state" : "151"},
					{"ID" : "92", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_233_2_fu_398", "Port" : "receive_fifo_L_0", "Inst_start_state" : "176", "Inst_end_state" : "177"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "175", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_317_4_fu_309", "Port" : "receive_fifo_L_1", "Inst_start_state" : "153", "Inst_end_state" : "154"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "receive_fifo_L_1", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "86", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_365_9_fu_371", "Port" : "receive_fifo_L_1", "Inst_start_state" : "168", "Inst_end_state" : "169"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "176", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_324_5_fu_320", "Port" : "receive_fifo_R_0", "Inst_start_state" : "156", "Inst_end_state" : "157"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "receive_fifo_R_0", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "88", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_372_10_fu_379", "Port" : "receive_fifo_R_0", "Inst_start_state" : "171", "Inst_end_state" : "172"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["95"], "DependentChan" : "177", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_331_6_fu_328", "Port" : "receive_fifo_R_1", "Inst_start_state" : "159", "Inst_end_state" : "160"},
					{"ID" : "82", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Port" : "receive_fifo_R_1", "Inst_start_state" : "162", "Inst_end_state" : "163"},
					{"ID" : "90", "SubInstance" : "grp_RoundRobin_Pipeline_VITIS_LOOP_379_11_fu_390", "Port" : "receive_fifo_R_1", "Inst_start_state" : "174", "Inst_end_state" : "175"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "245", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state148"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state149"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_307_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "245", "FirstState" : "ap_ST_fsm_state150", "LastState" : ["ap_ST_fsm_state175"], "QuitState" : ["ap_ST_fsm_state150"], "PreState" : ["ap_ST_fsm_state149"], "PostState" : ["ap_ST_fsm_state149"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_302_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "245", "FirstState" : "ap_ST_fsm_state149", "LastState" : ["ap_ST_fsm_state150"], "QuitState" : ["ap_ST_fsm_state149"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state176"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_232_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "245", "FirstState" : "ap_ST_fsm_state176", "LastState" : ["ap_ST_fsm_state178"], "QuitState" : ["ap_ST_fsm_state176"], "PreState" : ["ap_ST_fsm_state149"], "PostState" : ["ap_ST_fsm_state179"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_151_3_fu_262", "Parent" : "65", "Child" : ["67"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_151_3",
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_151_3_fu_262.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_144_2_fu_271", "Parent" : "65", "Child" : ["69"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_144_2",
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_144_2_fu_271.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_168_5_fu_280", "Parent" : "65", "Child" : ["71"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_168_5",
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
			{"Name" : "sext_ln151", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_168_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_168_5_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_161_4_fu_289", "Parent" : "65", "Child" : ["73"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_161_4",
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
			{"Name" : "sext_ln151", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_161_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_161_4_fu_289.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_311_3_fu_298", "Parent" : "65", "Child" : ["75"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_311_3",
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
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_311_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_311_3_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_317_4_fu_309", "Parent" : "65", "Child" : ["77"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_317_4",
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
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_317_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_317_4_fu_309.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_324_5_fu_320", "Parent" : "65", "Child" : ["79"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_324_5",
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
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_324_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_324_5_fu_320.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_331_6_fu_328", "Parent" : "65", "Child" : ["81"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_331_6",
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
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_331_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_331_6_fu_328.flow_control_loop_pipe_sequential_init_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339", "Parent" : "65", "Child" : ["83"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_341_7",
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
			{"Name" : "send_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_341_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_341_7_fu_339.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_358_8_fu_360", "Parent" : "65", "Child" : ["85"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_358_8",
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
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_L_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_358_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_358_8_fu_360.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_365_9_fu_371", "Parent" : "65", "Child" : ["87"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_365_9",
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
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_365_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_365_9_fu_371.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_372_10_fu_379", "Parent" : "65", "Child" : ["89"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_372_10",
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
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_372_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_372_10_fu_379.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_379_11_fu_390", "Parent" : "65", "Child" : ["91"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_379_11",
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
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "send_fifo_R_1_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_379_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_379_11_fu_390.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_233_2_fu_398", "Parent" : "65", "Child" : ["93"],
		"CDFG" : "RoundRobin_Pipeline_VITIS_LOOP_233_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
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
			{"Name" : "sext_ln232", "Type" : "None", "Direction" : "I"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_233_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_233_2_fu_398.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.RoundRobin_U0.printint_U228", "Parent" : "65"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Receive_U0", "Parent" : "0", "Child" : ["96", "140", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162"],
		"CDFG" : "Receive",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"StartSource" : "6",
		"StartFifo" : "start_for_Receive_U0_U",
		"Port" : [
			{"Name" : "syscontrol_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "165", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "syscontrol_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "166", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "convSet_L_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "167", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "convSet_L_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "168", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "convSet_R_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["6"], "DependentChan" : "169", "DependentChanDepth" : "4", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "convSet_R_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "174", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "receive_fifo_L_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "140", "SubInstance" : "grp_receive4DDR_fu_180", "Port" : "receive_fifo_L_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "175", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "receive_fifo_L_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "176", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "receive_fifo_R_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "177", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "receive_fifo_R_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx1_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_128", "Port" : "sweep_rx2_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_receive4DDR_fu_180", "Port" : "norm_rx0_V_data_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_receive4DDR_fu_180", "Port" : "norm_rx0_V_keep_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_receive4DDR_fu_180", "Port" : "norm_rx0_V_strb_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "140", "SubInstance" : "grp_receive4DDR_fu_180", "Port" : "norm_rx0_V_last_V", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_257_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state4"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_223_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128", "Parent" : "95", "Child" : ["97"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1923", "EstimateLatencyMax" : "1923",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [],
		"OutputProcess" : [
			{"ID" : "97", "Name" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "receive_fifo_L_0"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_0_V_data_V"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "receive_fifo_R_0"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_1_V_data_V"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx1_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "receive_fifo_L_1"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_0_V_data_V"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_0_V_keep_V"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_0_V_strb_V"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "receive_fifo_R_1"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_1_V_data_V"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_1_V_keep_V"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_1_V_strb_V"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "sweep_rx2_1_V_last_V"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "convSet_L_0"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "convSet_R_0"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "convSet_L_1"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "97", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Port" : "convSet_R_1"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_261_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "has_continue" : "1"}}]},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0", "Parent" : "96", "Child" : ["98", "100", "106", "112", "118", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_261_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "98", "Name" : "print_int_U0"},
			{"ID" : "100", "Name" : "receive4AIE_U0"},
			{"ID" : "106", "Name" : "receive4AIE_3_U0"},
			{"ID" : "112", "Name" : "receive4AIE_1_U0"},
			{"ID" : "118", "Name" : "receive4AIE_2_U0"}],
		"OutputProcess" : [
			{"ID" : "98", "Name" : "print_int_U0"},
			{"ID" : "125", "Name" : "Block_newFuncRoot_proc_proc17_U0"},
			{"ID" : "127", "Name" : "Block_newFuncRoot_proc_proc19_U0"},
			{"ID" : "129", "Name" : "Block_newFuncRoot_proc_proc21_U0"},
			{"ID" : "131", "Name" : "Block_newFuncRoot_proc_proc23_U0"}],
		"Port" : [
			{"Name" : "i_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "receive4AIE_U0", "Port" : "receive_fifo_L_0"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_data_V"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "receive4AIE_3_U0", "Port" : "receive_fifo_R_0"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_1_V_data_V"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "receive4AIE_1_U0", "Port" : "receive_fifo_L_1"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_data_V"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_keep_V"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_strb_V"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "receive4AIE_2_U0", "Port" : "receive_fifo_R_1"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx2_1_V_data_V"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx2_1_V_keep_V"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx2_1_V_strb_V"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx2_1_V_last_V"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "125", "SubInstance" : "Block_newFuncRoot_proc_proc17_U0", "Port" : "convSet_L_0"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "127", "SubInstance" : "Block_newFuncRoot_proc_proc19_U0", "Port" : "convSet_R_0"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "Block_newFuncRoot_proc_proc21_U0", "Port" : "convSet_L_1"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "131", "SubInstance" : "Block_newFuncRoot_proc_proc23_U0", "Port" : "convSet_R_1"}]}]},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.print_int_U0", "Parent" : "97", "Child" : ["99"],
		"CDFG" : "print_int_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.print_int_U0.printint_U245", "Parent" : "98"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_U0", "Parent" : "97", "Child" : ["101", "103", "104", "105"],
		"CDFG" : "receive4AIE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["124"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_L_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "101", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "100", "Child" : ["102"],
		"CDFG" : "receive4AIE_Pipeline_VITIS_LOOP_76_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_temp_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0"},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0"},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_36_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_U0.fptrunc_64ns_32_1_no_dsp_1_U256", "Parent" : "100"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U257", "Parent" : "100"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U258", "Parent" : "100"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_3_U0", "Parent" : "97", "Child" : ["107", "109", "110", "111"],
		"CDFG" : "receive4AIE_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["126"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_R_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "107", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "106", "Child" : ["108"],
		"CDFG" : "receive4AIE_3_Pipeline_VITIS_LOOP_76_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_temp_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1"},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1"},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1"},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_12_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "107"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_3_U0.fptrunc_64ns_32_1_no_dsp_1_U274", "Parent" : "106"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_3_U0.fpext_32ns_64_1_no_dsp_1_U275", "Parent" : "106"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_3_U0.fpext_32ns_64_1_no_dsp_1_U276", "Parent" : "106"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_1_U0", "Parent" : "97", "Child" : ["113", "115", "116", "117"],
		"CDFG" : "receive4AIE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["128"], "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_L_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "112", "Child" : ["114"],
		"CDFG" : "receive4AIE_1_Pipeline_VITIS_LOOP_76_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_temp_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0"},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0"},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0"},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_28_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_1_U0.fptrunc_64ns_32_1_no_dsp_1_U292", "Parent" : "112"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U293", "Parent" : "112"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U294", "Parent" : "112"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_2_U0", "Parent" : "97", "Child" : ["119", "121", "122", "123"],
		"CDFG" : "receive4AIE_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["130"], "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_R_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "119", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "118", "Child" : ["120"],
		"CDFG" : "receive4AIE_2_Pipeline_VITIS_LOOP_76_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_temp_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1"},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1"},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1"},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_20_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_2_U0.fptrunc_64ns_32_1_no_dsp_1_U310", "Parent" : "118"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_2_U0.fpext_32ns_64_1_no_dsp_1_U311", "Parent" : "118"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.receive4AIE_2_U0.fpext_32ns_64_1_no_dsp_1_U312", "Parent" : "118"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convL0", "Type" : "None", "Direction" : "I", "DependentProc" : ["100"], "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["125"], "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc17_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["124"], "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc18_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convR0", "Type" : "None", "Direction" : "I", "DependentProc" : ["106"], "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["127"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc19_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["126"], "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc20_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convL1", "Type" : "None", "Direction" : "I", "DependentProc" : ["112"], "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["129"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc21_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["128"], "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc22_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convR1", "Type" : "None", "Direction" : "I", "DependentProc" : ["118"], "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["131"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.Block_newFuncRoot_proc_proc23_U0", "Parent" : "97",
		"CDFG" : "Block_newFuncRoot_proc_proc23",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["130"], "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.convL0_channel_U", "Parent" : "97"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.convR0_channel_U", "Parent" : "97"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.convL1_channel_U", "Parent" : "97"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.convR1_channel_U", "Parent" : "97"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.empty_112_U", "Parent" : "97"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.empty_111_U", "Parent" : "97"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.empty_110_U", "Parent" : "97"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_dataflow_parent_loop_proc16_fu_128.dataflow_in_loop_VITIS_LOOP_261_2_1_U0.empty_U", "Parent" : "97"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_receive4DDR_fu_180", "Parent" : "95", "Child" : ["141"],
		"CDFG" : "receive4DDR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "receive_fifo_L_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"BlockSignal" : [
					{"Name" : "norm_rx0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Port" : "norm_rx0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_receive4DDR_fu_180.grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119", "Parent" : "140", "Child" : ["142"],
		"CDFG" : "receive4DDR_Pipeline_VITIS_LOOP_39_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_temp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_rx0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0",
				"BlockSignal" : [
					{"Name" : "norm_rx0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "norm_rx0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0"},
			{"Name" : "norm_rx0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0"},
			{"Name" : "norm_rx0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "norm_rx0"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_4_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_39_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.Receive_U0.grp_receive4DDR_fu_180.grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_0_V_data_V_U", "Parent" : "95"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_0_V_keep_V_U", "Parent" : "95"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_0_V_strb_V_U", "Parent" : "95"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_0_V_last_V_U", "Parent" : "95"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_1_V_data_V_U", "Parent" : "95"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_1_V_keep_V_U", "Parent" : "95"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_1_V_strb_V_U", "Parent" : "95"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx1_1_V_last_V_U", "Parent" : "95"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_0_V_data_V_U", "Parent" : "95"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_0_V_keep_V_U", "Parent" : "95"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_0_V_strb_V_U", "Parent" : "95"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_0_V_last_V_U", "Parent" : "95"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_1_V_data_V_U", "Parent" : "95"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_1_V_keep_V_U", "Parent" : "95"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_1_V_strb_V_U", "Parent" : "95"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_sweep_rx2_1_V_last_V_U", "Parent" : "95"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_data_V_U", "Parent" : "95"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_keep_V_U", "Parent" : "95"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_strb_V_U", "Parent" : "95"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Receive_U0.regslice_both_norm_rx0_V_last_V_U", "Parent" : "95"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.syscontrol_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.syscontrol_1_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.syscontrol_2_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convSet_L_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convSet_L_1_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convSet_R_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convSet_R_1_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_fifo_L_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_fifo_L_1_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_fifo_R_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.send_fifo_R_1_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_fifo_L_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_fifo_L_1_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_fifo_R_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive_fifo_R_1_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Send_U0_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Receive_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	TopPL {
		gmem0 {Type I LastRead 74 FirstWrite -1}
		gmem1 {Type O LastRead 3 FirstWrite 1}
		gmem2 {Type O LastRead 3 FirstWrite 5}
		gmem3 {Type O LastRead 8 FirstWrite 7}
		dataIn {Type I LastRead 0 FirstWrite -1}
		U {Type I LastRead 0 FirstWrite -1}
		S {Type I LastRead 0 FirstWrite -1}
		ConvArray {Type I LastRead 0 FirstWrite -1}
		ITER {Type I LastRead 0 FirstWrite -1}
		sweep_tx1_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_rx1_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_tx1_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_rx1_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_tx2_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_rx2_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_tx2_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_rx2_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 1}
		norm_rx0_V_data_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	SystemControl {
		ITER {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type O LastRead 8 FirstWrite 7}
		ConvArray {Type I LastRead 0 FirstWrite -1}
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}
		convSet_L_0 {Type I LastRead 1 FirstWrite -1}
		convSet_L_1 {Type I LastRead 1 FirstWrite -1}
		convSet_R_0 {Type I LastRead 1 FirstWrite -1}
		convSet_R_1 {Type I LastRead 1 FirstWrite -1}}
	SystemControl_Pipeline_VITIS_LOOP_395_1 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}
	SystemControl_Pipeline_VITIS_LOOP_405_3 {
		convSet_L_0 {Type I LastRead 1 FirstWrite -1}
		convSet_R_0 {Type I LastRead 1 FirstWrite -1}
		convSet_L_1 {Type I LastRead 1 FirstWrite -1}
		convSet_R_1 {Type I LastRead 1 FirstWrite -1}
		conv32_lcssa11_out {Type O LastRead -1 FirstWrite 0}}
	generic_fmax_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}
	SystemControl_Pipeline_VITIS_LOOP_425_7 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}
	SystemControl_Pipeline_VITIS_LOOP_419_6 {
		syscontrol_0 {Type O LastRead -1 FirstWrite 1}
		syscontrol_1 {Type O LastRead -1 FirstWrite 1}
		syscontrol_2 {Type O LastRead -1 FirstWrite 1}}
	Send {
		syscontrol_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_last_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 1}}
	dataflow_parent_loop_proc {
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_last_V {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx2_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx2_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_last_V {Type O LastRead -1 FirstWrite 1}}
	dataflow_in_loop_VITIS_LOOP_197_2 {
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_last_V {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx2_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_last_V {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx2_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_last_V {Type O LastRead -1 FirstWrite 1}}
	send2AIE {
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_0_V_last_V {Type O LastRead -1 FirstWrite 1}}
	send2AIE_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 1 FirstWrite 1}
		sweep_tx1_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx1_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx1_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx1_0_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_4 {
		send_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		sweep_tx1_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx1_1_V_last_V {Type O LastRead -1 FirstWrite 1}}
	send2AIE_4_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 1 FirstWrite 1}
		sweep_tx1_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx1_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx1_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx1_1_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_5 {
		send_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx2_0_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_0_V_last_V {Type O LastRead -1 FirstWrite 1}}
	send2AIE_5_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 1 FirstWrite 1}
		sweep_tx2_0_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx2_0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx2_0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx2_0_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_6 {
		send_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		sweep_tx2_1_V_data_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_keep_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_strb_V {Type O LastRead -1 FirstWrite 1}
		sweep_tx2_1_V_last_V {Type O LastRead -1 FirstWrite 1}}
	send2AIE_6_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 1 FirstWrite 1}
		sweep_tx2_1_V_data_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx2_1_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx2_1_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sweep_tx2_1_V_last_V {Type O LastRead -1 FirstWrite 2}}
	send2AIE_7 {
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 1}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 1}}
	send2AIE_7_Pipeline_VITIS_LOOP_112_2 {
		send_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		data_temp {Type IO LastRead 1 FirstWrite 1}
		norm_tx0_V_data_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_keep_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_strb_V {Type O LastRead -1 FirstWrite 2}
		norm_tx0_V_last_V {Type O LastRead -1 FirstWrite 2}}
	RoundRobin {
		syscontrol_1 {Type I LastRead 2 FirstWrite -1}
		gmem0 {Type I LastRead 74 FirstWrite -1}
		dataIn {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type O LastRead 3 FirstWrite 1}
		U {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type O LastRead 3 FirstWrite 5}
		S {Type I LastRead 0 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_0 {Type I LastRead 5 FirstWrite -1}
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_151_3 {
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_144_2 {
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_168_5 {
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_161_4 {
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln151 {Type I LastRead 0 FirstWrite -1}}
	RoundRobin_Pipeline_VITIS_LOOP_311_3 {
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_317_4 {
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_324_5 {
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_331_6 {
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_341_7 {
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_358_8 {
		send_fifo_L_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		send_fifo_L_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_365_9 {
		receive_fifo_L_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_372_10 {
		send_fifo_R_0 {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_0 {Type I LastRead 1 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_379_11 {
		receive_fifo_R_1 {Type I LastRead 1 FirstWrite -1}
		send_fifo_R_1 {Type O LastRead -1 FirstWrite 1}}
	RoundRobin_Pipeline_VITIS_LOOP_233_2 {
		gmem1 {Type O LastRead -1 FirstWrite 1}
		sext_ln232 {Type I LastRead 0 FirstWrite -1}
		receive_fifo_L_0 {Type I LastRead 1 FirstWrite -1}}
	Receive {
		syscontrol_2 {Type I LastRead 1 FirstWrite -1}
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_data_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_261_2_1 {
		i_0 {Type I LastRead 0 FirstWrite -1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}}
	print_int_s {
		v {Type I LastRead 0 FirstWrite -1}}
	receive4AIE {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_Pipeline_VITIS_LOOP_76_2 {
		data_temp_33 {Type I LastRead 0 FirstWrite -1}
		data_temp_34 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		data_temp_37_out {Type O LastRead -1 FirstWrite 1}
		data_temp_36_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_3 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_3_Pipeline_VITIS_LOOP_76_2 {
		data_temp_9 {Type I LastRead 0 FirstWrite -1}
		data_temp_10 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		data_temp_13_out {Type O LastRead -1 FirstWrite 1}
		data_temp_12_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_1 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_1_Pipeline_VITIS_LOOP_76_2 {
		data_temp_25 {Type I LastRead 0 FirstWrite -1}
		data_temp_26 {Type I LastRead 0 FirstWrite -1}
		sweep_rx2_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		data_temp_29_out {Type O LastRead -1 FirstWrite 1}
		data_temp_28_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_2 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_2_Pipeline_VITIS_LOOP_76_2 {
		data_temp_17 {Type I LastRead 0 FirstWrite -1}
		data_temp_18 {Type I LastRead 0 FirstWrite -1}
		sweep_rx2_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		data_temp_21_out {Type O LastRead -1 FirstWrite 1}
		data_temp_20_out {Type IO LastRead 1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc {
		convL0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc17 {
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc18 {
		convR0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc19 {
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc20 {
		convL1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc21 {
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc22 {
		convR1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc23 {
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	receive4DDR {
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		norm_rx0_V_data_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4DDR_Pipeline_VITIS_LOOP_39_2 {
		data_temp_1 {Type I LastRead 0 FirstWrite -1}
		data_temp_2 {Type I LastRead 0 FirstWrite -1}
		norm_rx0_V_data_V {Type I LastRead 1 FirstWrite -1}
		norm_rx0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		norm_rx0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		norm_rx0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		data_temp_5_out {Type O LastRead -1 FirstWrite 1}
		data_temp_4_out {Type IO LastRead 1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 512 }  { m_axi_gmem1_WSTRB STRB 1 64 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 512 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 512 }  { m_axi_gmem2_WSTRB STRB 1 64 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 512 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN SIZE 1 8 }  { m_axi_gmem3_AWSIZE BURST 1 3 }  { m_axi_gmem3_AWBURST LOCK 1 2 }  { m_axi_gmem3_AWLOCK CACHE 1 2 }  { m_axi_gmem3_AWCACHE PROT 1 4 }  { m_axi_gmem3_AWPROT QOS 1 3 }  { m_axi_gmem3_AWQOS REGION 1 4 }  { m_axi_gmem3_AWREGION USER 1 4 }  { m_axi_gmem3_AWUSER DATA 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA FIFONUM 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER DATA 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN SIZE 1 8 }  { m_axi_gmem3_ARSIZE BURST 1 3 }  { m_axi_gmem3_ARBURST LOCK 1 2 }  { m_axi_gmem3_ARLOCK CACHE 1 2 }  { m_axi_gmem3_ARCACHE PROT 1 4 }  { m_axi_gmem3_ARPROT QOS 1 3 }  { m_axi_gmem3_ARQOS REGION 1 4 }  { m_axi_gmem3_ARREGION USER 1 4 }  { m_axi_gmem3_ARUSER DATA 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA FIFONUM 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER DATA 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER DATA 0 1 } } }
	sweep_tx1_0_V_data_V { axis {  { sweep_tx1_0_TDATA out_data 1 128 } } }
	sweep_tx1_0_V_keep_V { axis {  { sweep_tx1_0_TKEEP out_data 1 16 } } }
	sweep_tx1_0_V_strb_V { axis {  { sweep_tx1_0_TSTRB out_data 1 16 } } }
	sweep_tx1_0_V_last_V { axis {  { sweep_tx1_0_TLAST out_data 1 1 }  { sweep_tx1_0_TVALID out_vld 1 1 }  { sweep_tx1_0_TREADY out_acc 0 1 } } }
	sweep_rx1_0_V_data_V { axis {  { sweep_rx1_0_TDATA in_data 0 128 } } }
	sweep_rx1_0_V_keep_V { axis {  { sweep_rx1_0_TKEEP in_data 0 16 } } }
	sweep_rx1_0_V_strb_V { axis {  { sweep_rx1_0_TSTRB in_data 0 16 } } }
	sweep_rx1_0_V_last_V { axis {  { sweep_rx1_0_TLAST in_data 0 1 }  { sweep_rx1_0_TVALID in_vld 0 1 }  { sweep_rx1_0_TREADY in_acc 1 1 } } }
	sweep_tx1_1_V_data_V { axis {  { sweep_tx1_1_TDATA out_data 1 128 } } }
	sweep_tx1_1_V_keep_V { axis {  { sweep_tx1_1_TKEEP out_data 1 16 } } }
	sweep_tx1_1_V_strb_V { axis {  { sweep_tx1_1_TSTRB out_data 1 16 } } }
	sweep_tx1_1_V_last_V { axis {  { sweep_tx1_1_TLAST out_data 1 1 }  { sweep_tx1_1_TVALID out_vld 1 1 }  { sweep_tx1_1_TREADY out_acc 0 1 } } }
	sweep_rx1_1_V_data_V { axis {  { sweep_rx1_1_TDATA in_data 0 128 } } }
	sweep_rx1_1_V_keep_V { axis {  { sweep_rx1_1_TKEEP in_data 0 16 } } }
	sweep_rx1_1_V_strb_V { axis {  { sweep_rx1_1_TSTRB in_data 0 16 } } }
	sweep_rx1_1_V_last_V { axis {  { sweep_rx1_1_TLAST in_data 0 1 }  { sweep_rx1_1_TVALID in_vld 0 1 }  { sweep_rx1_1_TREADY in_acc 1 1 } } }
	sweep_tx2_0_V_data_V { axis {  { sweep_tx2_0_TDATA out_data 1 128 } } }
	sweep_tx2_0_V_keep_V { axis {  { sweep_tx2_0_TKEEP out_data 1 16 } } }
	sweep_tx2_0_V_strb_V { axis {  { sweep_tx2_0_TSTRB out_data 1 16 } } }
	sweep_tx2_0_V_last_V { axis {  { sweep_tx2_0_TLAST out_data 1 1 }  { sweep_tx2_0_TVALID out_vld 1 1 }  { sweep_tx2_0_TREADY out_acc 0 1 } } }
	sweep_rx2_0_V_data_V { axis {  { sweep_rx2_0_TDATA in_data 0 128 } } }
	sweep_rx2_0_V_keep_V { axis {  { sweep_rx2_0_TKEEP in_data 0 16 } } }
	sweep_rx2_0_V_strb_V { axis {  { sweep_rx2_0_TSTRB in_data 0 16 } } }
	sweep_rx2_0_V_last_V { axis {  { sweep_rx2_0_TLAST in_data 0 1 }  { sweep_rx2_0_TVALID in_vld 0 1 }  { sweep_rx2_0_TREADY in_acc 1 1 } } }
	sweep_tx2_1_V_data_V { axis {  { sweep_tx2_1_TDATA out_data 1 128 } } }
	sweep_tx2_1_V_keep_V { axis {  { sweep_tx2_1_TKEEP out_data 1 16 } } }
	sweep_tx2_1_V_strb_V { axis {  { sweep_tx2_1_TSTRB out_data 1 16 } } }
	sweep_tx2_1_V_last_V { axis {  { sweep_tx2_1_TLAST out_data 1 1 }  { sweep_tx2_1_TVALID out_vld 1 1 }  { sweep_tx2_1_TREADY out_acc 0 1 } } }
	sweep_rx2_1_V_data_V { axis {  { sweep_rx2_1_TDATA in_data 0 128 } } }
	sweep_rx2_1_V_keep_V { axis {  { sweep_rx2_1_TKEEP in_data 0 16 } } }
	sweep_rx2_1_V_strb_V { axis {  { sweep_rx2_1_TSTRB in_data 0 16 } } }
	sweep_rx2_1_V_last_V { axis {  { sweep_rx2_1_TLAST in_data 0 1 }  { sweep_rx2_1_TVALID in_vld 0 1 }  { sweep_rx2_1_TREADY in_acc 1 1 } } }
	norm_tx0_V_data_V { axis {  { norm_tx0_TDATA out_data 1 128 } } }
	norm_tx0_V_keep_V { axis {  { norm_tx0_TKEEP out_data 1 16 } } }
	norm_tx0_V_strb_V { axis {  { norm_tx0_TSTRB out_data 1 16 } } }
	norm_tx0_V_last_V { axis {  { norm_tx0_TLAST out_data 1 1 }  { norm_tx0_TVALID out_vld 1 1 }  { norm_tx0_TREADY out_acc 0 1 } } }
	norm_rx0_V_data_V { axis {  { norm_rx0_TDATA in_data 0 128 } } }
	norm_rx0_V_keep_V { axis {  { norm_rx0_TKEEP in_data 0 16 } } }
	norm_rx0_V_strb_V { axis {  { norm_rx0_TSTRB in_data 0 16 } } }
	norm_rx0_V_last_V { axis {  { norm_rx0_TLAST in_data 0 1 }  { norm_rx0_TVALID in_vld 0 1 }  { norm_rx0_TREADY in_acc 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
	{ gmem3 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
	{ gmem3 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
