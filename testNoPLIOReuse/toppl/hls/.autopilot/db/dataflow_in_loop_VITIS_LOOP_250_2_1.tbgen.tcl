set moduleName dataflow_in_loop_VITIS_LOOP_250_2_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dataflow_in_loop_VITIS_LOOP_250_2.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ i_0 int 7 regular  }
	{ receive_fifo_L_0 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx1_L_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_L_0 Data } }  }
	{ sweep_rx1_L_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_L_0 Keep } }  }
	{ sweep_rx1_L_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_L_0 Strb } }  }
	{ sweep_rx1_L_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_L_0 Last } }  }
	{ receive_fifo_R_0 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx1_R_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_R_0 Data } }  }
	{ sweep_rx1_R_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_R_0 Keep } }  }
	{ sweep_rx1_R_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_R_0 Strb } }  }
	{ sweep_rx1_R_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_R_0 Last } }  }
	{ receive_fifo_L_1 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx1_L_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_L_1 Data } }  }
	{ sweep_rx1_L_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_L_1 Keep } }  }
	{ sweep_rx1_L_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_L_1 Strb } }  }
	{ sweep_rx1_L_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_L_1 Last } }  }
	{ receive_fifo_R_1 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx1_R_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_R_1 Data } }  }
	{ sweep_rx1_R_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_R_1 Keep } }  }
	{ sweep_rx1_R_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_R_1 Strb } }  }
	{ sweep_rx1_R_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_R_1 Last } }  }
	{ convSet_L_0 int 32 regular {fifo 1 volatile }  }
	{ convSet_R_0 int 32 regular {fifo 1 volatile }  }
	{ convSet_L_1 int 32 regular {fifo 1 volatile }  }
	{ convSet_R_1 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "i_0", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_L_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_L_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_L_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_L_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_R_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_R_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_R_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_R_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_L_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_L_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_L_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_L_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_R_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_R_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_R_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_R_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_L_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_R_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_L_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_R_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 57
set portList { 
	{ i_0 sc_in sc_lv 7 signal 0 } 
	{ receive_fifo_L_0_din sc_out sc_lv 128 signal 1 } 
	{ receive_fifo_L_0_full_n sc_in sc_logic 1 signal 1 } 
	{ receive_fifo_L_0_write sc_out sc_logic 1 signal 1 } 
	{ sweep_rx1_L_0_TDATA sc_in sc_lv 128 signal 2 } 
	{ sweep_rx1_L_0_TKEEP sc_in sc_lv 16 signal 3 } 
	{ sweep_rx1_L_0_TSTRB sc_in sc_lv 16 signal 4 } 
	{ sweep_rx1_L_0_TLAST sc_in sc_lv 1 signal 5 } 
	{ receive_fifo_R_0_din sc_out sc_lv 128 signal 6 } 
	{ receive_fifo_R_0_full_n sc_in sc_logic 1 signal 6 } 
	{ receive_fifo_R_0_write sc_out sc_logic 1 signal 6 } 
	{ sweep_rx1_R_0_TDATA sc_in sc_lv 128 signal 7 } 
	{ sweep_rx1_R_0_TKEEP sc_in sc_lv 16 signal 8 } 
	{ sweep_rx1_R_0_TSTRB sc_in sc_lv 16 signal 9 } 
	{ sweep_rx1_R_0_TLAST sc_in sc_lv 1 signal 10 } 
	{ receive_fifo_L_1_din sc_out sc_lv 128 signal 11 } 
	{ receive_fifo_L_1_full_n sc_in sc_logic 1 signal 11 } 
	{ receive_fifo_L_1_write sc_out sc_logic 1 signal 11 } 
	{ sweep_rx1_L_1_TDATA sc_in sc_lv 128 signal 12 } 
	{ sweep_rx1_L_1_TKEEP sc_in sc_lv 16 signal 13 } 
	{ sweep_rx1_L_1_TSTRB sc_in sc_lv 16 signal 14 } 
	{ sweep_rx1_L_1_TLAST sc_in sc_lv 1 signal 15 } 
	{ receive_fifo_R_1_din sc_out sc_lv 128 signal 16 } 
	{ receive_fifo_R_1_full_n sc_in sc_logic 1 signal 16 } 
	{ receive_fifo_R_1_write sc_out sc_logic 1 signal 16 } 
	{ sweep_rx1_R_1_TDATA sc_in sc_lv 128 signal 17 } 
	{ sweep_rx1_R_1_TKEEP sc_in sc_lv 16 signal 18 } 
	{ sweep_rx1_R_1_TSTRB sc_in sc_lv 16 signal 19 } 
	{ sweep_rx1_R_1_TLAST sc_in sc_lv 1 signal 20 } 
	{ convSet_L_0_din sc_out sc_lv 32 signal 21 } 
	{ convSet_L_0_full_n sc_in sc_logic 1 signal 21 } 
	{ convSet_L_0_write sc_out sc_logic 1 signal 21 } 
	{ convSet_R_0_din sc_out sc_lv 32 signal 22 } 
	{ convSet_R_0_full_n sc_in sc_logic 1 signal 22 } 
	{ convSet_R_0_write sc_out sc_logic 1 signal 22 } 
	{ convSet_L_1_din sc_out sc_lv 32 signal 23 } 
	{ convSet_L_1_full_n sc_in sc_logic 1 signal 23 } 
	{ convSet_L_1_write sc_out sc_logic 1 signal 23 } 
	{ convSet_R_1_din sc_out sc_lv 32 signal 24 } 
	{ convSet_R_1_full_n sc_in sc_logic 1 signal 24 } 
	{ convSet_R_1_write sc_out sc_logic 1 signal 24 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ i_0_ap_vld sc_in sc_logic 1 invld 0 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ sweep_rx1_L_0_TVALID sc_in sc_logic 1 invld 5 } 
	{ sweep_rx1_L_0_TREADY sc_out sc_logic 1 inacc 5 } 
	{ sweep_rx1_R_0_TVALID sc_in sc_logic 1 invld 10 } 
	{ sweep_rx1_R_0_TREADY sc_out sc_logic 1 inacc 10 } 
	{ sweep_rx1_L_1_TVALID sc_in sc_logic 1 invld 15 } 
	{ sweep_rx1_L_1_TREADY sc_out sc_logic 1 inacc 15 } 
	{ sweep_rx1_R_1_TVALID sc_in sc_logic 1 invld 20 } 
	{ sweep_rx1_R_1_TREADY sc_out sc_logic 1 inacc 20 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "i_0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "i_0", "role": "default" }} , 
 	{ "name": "receive_fifo_L_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "din" }} , 
 	{ "name": "receive_fifo_L_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_L_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "write" }} , 
 	{ "name": "sweep_rx1_L_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_L_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_L_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_L_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_L_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_R_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "din" }} , 
 	{ "name": "receive_fifo_R_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_R_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "write" }} , 
 	{ "name": "sweep_rx1_R_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_R_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_R_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_R_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_R_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_L_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "din" }} , 
 	{ "name": "receive_fifo_L_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "full_n" }} , 
 	{ "name": "receive_fifo_L_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "write" }} , 
 	{ "name": "sweep_rx1_L_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_L_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_L_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_L_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_L_1_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_R_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "din" }} , 
 	{ "name": "receive_fifo_R_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "full_n" }} , 
 	{ "name": "receive_fifo_R_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "write" }} , 
 	{ "name": "sweep_rx1_R_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_R_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_R_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_R_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_R_1_V_last_V", "role": "default" }} , 
 	{ "name": "convSet_L_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "din" }} , 
 	{ "name": "convSet_L_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "full_n" }} , 
 	{ "name": "convSet_L_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "write" }} , 
 	{ "name": "convSet_R_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "din" }} , 
 	{ "name": "convSet_R_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "full_n" }} , 
 	{ "name": "convSet_R_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "write" }} , 
 	{ "name": "convSet_L_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "din" }} , 
 	{ "name": "convSet_L_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "full_n" }} , 
 	{ "name": "convSet_L_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "write" }} , 
 	{ "name": "convSet_R_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "din" }} , 
 	{ "name": "convSet_R_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "full_n" }} , 
 	{ "name": "convSet_R_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "i_0_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "i_0", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_L_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_L_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_R_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_R_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_L_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_L_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_L_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_R_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_R_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_R_1_V_last_V", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "8", "13", "18", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_250_2_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "print_int_U0"},
			{"ID" : "3", "Name" : "receive4AIE_1_U0"},
			{"ID" : "8", "Name" : "receive4AIE_2_U0"},
			{"ID" : "13", "Name" : "receive4AIE_U0"},
			{"ID" : "18", "Name" : "receive4AIE_3_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "print_int_U0"},
			{"ID" : "24", "Name" : "Block_newFuncRoot_proc_proc17_U0"},
			{"ID" : "26", "Name" : "Block_newFuncRoot_proc_proc19_U0"},
			{"ID" : "28", "Name" : "Block_newFuncRoot_proc_proc21_U0"},
			{"ID" : "30", "Name" : "Block_newFuncRoot_proc_proc23_U0"}],
		"Port" : [
			{"Name" : "i_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "receive_fifo_L_0"}]},
			{"Name" : "sweep_rx1_L_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx1_L_0_V_data_V"}]},
			{"Name" : "sweep_rx1_L_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx1_L_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_L_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx1_L_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_L_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx1_L_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "receive4AIE_2_U0", "Port" : "receive_fifo_R_0"}]},
			{"Name" : "sweep_rx1_R_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx1_R_0_V_data_V"}]},
			{"Name" : "sweep_rx1_R_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx1_R_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_R_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx1_R_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_R_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx1_R_0_V_last_V"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "receive4AIE_U0", "Port" : "receive_fifo_L_1"}]},
			{"Name" : "sweep_rx1_L_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_L_1_V_data_V"}]},
			{"Name" : "sweep_rx1_L_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_L_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_L_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_L_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_L_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_L_1_V_last_V"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "receive4AIE_3_U0", "Port" : "receive_fifo_R_1"}]},
			{"Name" : "sweep_rx1_R_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_R_1_V_data_V"}]},
			{"Name" : "sweep_rx1_R_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_R_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_R_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_R_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_R_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx1_R_1_V_last_V"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "Block_newFuncRoot_proc_proc17_U0", "Port" : "convSet_L_0"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "Block_newFuncRoot_proc_proc19_U0", "Port" : "convSet_R_0"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "Block_newFuncRoot_proc_proc21_U0", "Port" : "convSet_L_1"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "Block_newFuncRoot_proc_proc23_U0", "Port" : "convSet_R_1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.print_int_U0", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.print_int_U0.printint_U230", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0", "Parent" : "0", "Child" : ["4", "6", "7"],
		"CDFG" : "receive4AIE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["23"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "receive_fifo_L_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_L_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116", "Parent" : "3", "Child" : ["5"],
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
			{"Name" : "zext_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_L_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_L_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_L_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0"},
			{"Name" : "sweep_rx1_L_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0"},
			{"Name" : "sweep_rx1_L_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_0"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_17_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.fptrunc_64ns_32_1_no_dsp_1_U239", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U240", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive4AIE_2_U0", "Parent" : "0", "Child" : ["9", "11", "12"],
		"CDFG" : "receive4AIE_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["25"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "receive_fifo_R_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_R_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_0_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_0_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_0_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_0_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116", "Parent" : "8", "Child" : ["10"],
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
			{"Name" : "zext_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_R_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_R_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_R_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0"},
			{"Name" : "sweep_rx1_R_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0"},
			{"Name" : "sweep_rx1_R_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_0"},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_12_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_2_U0.fptrunc_64ns_32_1_no_dsp_1_U254", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_2_U0.fpext_32ns_64_1_no_dsp_1_U255", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0", "Parent" : "0", "Child" : ["14", "16", "17"],
		"CDFG" : "receive4AIE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "receive_fifo_L_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_L_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_L_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_L_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116", "Parent" : "13", "Child" : ["15"],
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
			{"Name" : "zext_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_L_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_L_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_L_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1"},
			{"Name" : "sweep_rx1_L_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1"},
			{"Name" : "sweep_rx1_L_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_L_1"},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_22_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.fptrunc_64ns_32_1_no_dsp_1_U269", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U270", "Parent" : "13"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.receive4AIE_3_U0", "Parent" : "0", "Child" : ["19", "21", "22"],
		"CDFG" : "receive4AIE_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["29"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "receive_fifo_R_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_R_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_1_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_1_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_1_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sweep_rx1_R_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116", "Port" : "sweep_rx1_R_1_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116", "Parent" : "18", "Child" : ["20"],
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
			{"Name" : "zext_ln74", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_R_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_R_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_R_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1"},
			{"Name" : "sweep_rx1_R_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1"},
			{"Name" : "sweep_rx1_R_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_R_1"},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_7_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_3_U0.fptrunc_64ns_32_1_no_dsp_1_U284", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.receive4AIE_3_U0.fpext_32ns_64_1_no_dsp_1_U285", "Parent" : "18"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc_U0", "Parent" : "0",
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
			{"Name" : "conv0L0", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["24"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc17_U0", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["23"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc18_U0", "Parent" : "0",
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
			{"Name" : "conv0R0", "Type" : "None", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["26"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc19_U0", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["25"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc20_U0", "Parent" : "0",
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
			{"Name" : "conv0L1", "Type" : "None", "Direction" : "I", "DependentProc" : ["13"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["28"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc21_U0", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["27"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc22_U0", "Parent" : "0",
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
			{"Name" : "conv0R1", "Type" : "None", "Direction" : "I", "DependentProc" : ["18"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["30"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_newFuncRoot_proc_proc23_U0", "Parent" : "0",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["29"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv0L0_channel_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv0R0_channel_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv0L1_channel_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv0R1_channel_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_103_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_102_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_101_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.empty_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_VITIS_LOOP_250_2_1 {
		i_0 {Type I LastRead 0 FirstWrite -1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_L_0_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_0_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_0_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_0_V_last_V {Type I LastRead 3 FirstWrite -1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_R_0_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_0_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_0_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_0_V_last_V {Type I LastRead 3 FirstWrite -1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_L_1_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_1_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_1_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_1_V_last_V {Type I LastRead 3 FirstWrite -1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_R_1_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_1_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_1_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_1_V_last_V {Type I LastRead 3 FirstWrite -1}
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}}
	print_int_s {
		v {Type I LastRead 0 FirstWrite -1}}
	receive4AIE_1 {
		return_r {Type O LastRead -1 FirstWrite 4}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_L_0_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_0_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_0_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_0_V_last_V {Type I LastRead 3 FirstWrite -1}}
	receive4AIE_1_Pipeline_VITIS_LOOP_76_2 {
		zext_ln74 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_L_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_L_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_L_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_L_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		data_temp_17_out {Type O LastRead -1 FirstWrite 1}}
	receive4AIE_2 {
		return_r {Type O LastRead -1 FirstWrite 4}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_R_0_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_0_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_0_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_0_V_last_V {Type I LastRead 3 FirstWrite -1}}
	receive4AIE_2_Pipeline_VITIS_LOOP_76_2 {
		zext_ln74 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_R_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_R_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_R_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_R_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		data_temp_12_out {Type O LastRead -1 FirstWrite 1}}
	receive4AIE {
		return_r {Type O LastRead -1 FirstWrite 4}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_L_1_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_1_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_1_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_L_1_V_last_V {Type I LastRead 3 FirstWrite -1}}
	receive4AIE_Pipeline_VITIS_LOOP_76_2 {
		zext_ln74 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_L_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_L_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_L_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_L_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		data_temp_22_out {Type O LastRead -1 FirstWrite 1}}
	receive4AIE_3 {
		return_r {Type O LastRead -1 FirstWrite 4}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_R_1_V_data_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_1_V_keep_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_1_V_strb_V {Type I LastRead 3 FirstWrite -1}
		sweep_rx1_R_1_V_last_V {Type I LastRead 3 FirstWrite -1}}
	receive4AIE_3_Pipeline_VITIS_LOOP_76_2 {
		zext_ln74 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_R_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_R_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_R_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_R_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		data_temp_7_out {Type O LastRead -1 FirstWrite 1}}
	Block_newFuncRoot_proc_proc {
		conv0L0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc17 {
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc18 {
		conv0R0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc19 {
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc20 {
		conv0L1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc21 {
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc22 {
		conv0R1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc23 {
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "15"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "14"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	i_0 { ap_none {  { i_0 in_data 0 7 }  { i_0_ap_vld in_vld 0 1 } } }
	receive_fifo_L_0 { ap_fifo {  { receive_fifo_L_0_din fifo_data_in 1 128 }  { receive_fifo_L_0_full_n fifo_status 0 1 }  { receive_fifo_L_0_write fifo_port_we 1 1 } } }
	sweep_rx1_L_0_V_data_V { axis {  { sweep_rx1_L_0_TDATA in_data 0 128 } } }
	sweep_rx1_L_0_V_keep_V { axis {  { sweep_rx1_L_0_TKEEP in_data 0 16 } } }
	sweep_rx1_L_0_V_strb_V { axis {  { sweep_rx1_L_0_TSTRB in_data 0 16 } } }
	sweep_rx1_L_0_V_last_V { axis {  { sweep_rx1_L_0_TLAST in_data 0 1 }  { sweep_rx1_L_0_TVALID in_vld 0 1 }  { sweep_rx1_L_0_TREADY in_acc 1 1 } } }
	receive_fifo_R_0 { ap_fifo {  { receive_fifo_R_0_din fifo_data_in 1 128 }  { receive_fifo_R_0_full_n fifo_status 0 1 }  { receive_fifo_R_0_write fifo_port_we 1 1 } } }
	sweep_rx1_R_0_V_data_V { axis {  { sweep_rx1_R_0_TDATA in_data 0 128 } } }
	sweep_rx1_R_0_V_keep_V { axis {  { sweep_rx1_R_0_TKEEP in_data 0 16 } } }
	sweep_rx1_R_0_V_strb_V { axis {  { sweep_rx1_R_0_TSTRB in_data 0 16 } } }
	sweep_rx1_R_0_V_last_V { axis {  { sweep_rx1_R_0_TLAST in_data 0 1 }  { sweep_rx1_R_0_TVALID in_vld 0 1 }  { sweep_rx1_R_0_TREADY in_acc 1 1 } } }
	receive_fifo_L_1 { ap_fifo {  { receive_fifo_L_1_din fifo_data_in 1 128 }  { receive_fifo_L_1_full_n fifo_status 0 1 }  { receive_fifo_L_1_write fifo_port_we 1 1 } } }
	sweep_rx1_L_1_V_data_V { axis {  { sweep_rx1_L_1_TDATA in_data 0 128 } } }
	sweep_rx1_L_1_V_keep_V { axis {  { sweep_rx1_L_1_TKEEP in_data 0 16 } } }
	sweep_rx1_L_1_V_strb_V { axis {  { sweep_rx1_L_1_TSTRB in_data 0 16 } } }
	sweep_rx1_L_1_V_last_V { axis {  { sweep_rx1_L_1_TLAST in_data 0 1 }  { sweep_rx1_L_1_TVALID in_vld 0 1 }  { sweep_rx1_L_1_TREADY in_acc 1 1 } } }
	receive_fifo_R_1 { ap_fifo {  { receive_fifo_R_1_din fifo_data_in 1 128 }  { receive_fifo_R_1_full_n fifo_status 0 1 }  { receive_fifo_R_1_write fifo_port_we 1 1 } } }
	sweep_rx1_R_1_V_data_V { axis {  { sweep_rx1_R_1_TDATA in_data 0 128 } } }
	sweep_rx1_R_1_V_keep_V { axis {  { sweep_rx1_R_1_TKEEP in_data 0 16 } } }
	sweep_rx1_R_1_V_strb_V { axis {  { sweep_rx1_R_1_TSTRB in_data 0 16 } } }
	sweep_rx1_R_1_V_last_V { axis {  { sweep_rx1_R_1_TLAST in_data 0 1 }  { sweep_rx1_R_1_TVALID in_vld 0 1 }  { sweep_rx1_R_1_TREADY in_acc 1 1 } } }
	convSet_L_0 { ap_fifo {  { convSet_L_0_din fifo_data_in 1 32 }  { convSet_L_0_full_n fifo_status 0 1 }  { convSet_L_0_write fifo_port_we 1 1 } } }
	convSet_R_0 { ap_fifo {  { convSet_R_0_din fifo_data_in 1 32 }  { convSet_R_0_full_n fifo_status 0 1 }  { convSet_R_0_write fifo_port_we 1 1 } } }
	convSet_L_1 { ap_fifo {  { convSet_L_1_din fifo_data_in 1 32 }  { convSet_L_1_full_n fifo_status 0 1 }  { convSet_L_1_write fifo_port_we 1 1 } } }
	convSet_R_1 { ap_fifo {  { convSet_R_1_din fifo_data_in 1 32 }  { convSet_R_1_full_n fifo_status 0 1 }  { convSet_R_1_write fifo_port_we 1 1 } } }
}
