set moduleName dataflow_parent_loop_proc28
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dataflow_parent_loop_proc28}
set C_modelType { void 0 }
set C_modelArgList {
	{ receive_fifo_L_0 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx1_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_0 Data } }  }
	{ sweep_rx1_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_0 Keep } }  }
	{ sweep_rx1_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_0 Strb } }  }
	{ sweep_rx1_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_0 Last } }  }
	{ receive_fifo_R_0 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx1_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx1_1 Data } }  }
	{ sweep_rx1_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx1_1 Keep } }  }
	{ sweep_rx1_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx1_1 Strb } }  }
	{ sweep_rx1_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx1_1 Last } }  }
	{ receive_fifo_L_1 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx2_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx2_0 Data } }  }
	{ sweep_rx2_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx2_0 Keep } }  }
	{ sweep_rx2_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx2_0 Strb } }  }
	{ sweep_rx2_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx2_0 Last } }  }
	{ receive_fifo_R_1 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx2_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx2_1 Data } }  }
	{ sweep_rx2_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx2_1 Keep } }  }
	{ sweep_rx2_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx2_1 Strb } }  }
	{ sweep_rx2_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx2_1 Last } }  }
	{ receive_fifo_L_2 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx3_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx3_0 Data } }  }
	{ sweep_rx3_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx3_0 Keep } }  }
	{ sweep_rx3_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx3_0 Strb } }  }
	{ sweep_rx3_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx3_0 Last } }  }
	{ receive_fifo_R_2 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx3_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx3_1 Data } }  }
	{ sweep_rx3_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx3_1 Keep } }  }
	{ sweep_rx3_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx3_1 Strb } }  }
	{ sweep_rx3_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx3_1 Last } }  }
	{ receive_fifo_L_3 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx4_0_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx4_0 Data } }  }
	{ sweep_rx4_0_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx4_0 Keep } }  }
	{ sweep_rx4_0_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx4_0 Strb } }  }
	{ sweep_rx4_0_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx4_0 Last } }  }
	{ receive_fifo_R_3 int 128 regular {fifo 1 volatile }  }
	{ sweep_rx4_1_V_data_V int 128 regular {axi_s 0 volatile  { sweep_rx4_1 Data } }  }
	{ sweep_rx4_1_V_keep_V int 16 regular {axi_s 0 volatile  { sweep_rx4_1 Keep } }  }
	{ sweep_rx4_1_V_strb_V int 16 regular {axi_s 0 volatile  { sweep_rx4_1 Strb } }  }
	{ sweep_rx4_1_V_last_V int 1 regular {axi_s 0 volatile  { sweep_rx4_1 Last } }  }
	{ convSet_L_0 int 32 regular {fifo 1 volatile }  }
	{ convSet_R_0 int 32 regular {fifo 1 volatile }  }
	{ convSet_L_1 int 32 regular {fifo 1 volatile }  }
	{ convSet_R_1 int 32 regular {fifo 1 volatile }  }
	{ convSet_L_2 int 32 regular {fifo 1 volatile }  }
	{ convSet_R_2 int 32 regular {fifo 1 volatile }  }
	{ convSet_L_3 int 32 regular {fifo 1 volatile }  }
	{ convSet_R_3 int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "receive_fifo_L_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_0", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx1_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_1", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx2_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx3_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx3_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx3_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx3_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_2", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx3_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx3_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx3_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx3_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_L_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx4_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx4_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx4_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx4_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "receive_fifo_R_3", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sweep_rx4_1_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx4_1_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx4_1_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sweep_rx4_1_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_L_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_R_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_L_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_R_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_L_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_R_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_L_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "convSet_R_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 103
set portList { 
	{ receive_fifo_L_0_din sc_out sc_lv 128 signal 0 } 
	{ receive_fifo_L_0_full_n sc_in sc_logic 1 signal 0 } 
	{ receive_fifo_L_0_write sc_out sc_logic 1 signal 0 } 
	{ sweep_rx1_0_TDATA sc_in sc_lv 128 signal 1 } 
	{ sweep_rx1_0_TKEEP sc_in sc_lv 16 signal 2 } 
	{ sweep_rx1_0_TSTRB sc_in sc_lv 16 signal 3 } 
	{ sweep_rx1_0_TLAST sc_in sc_lv 1 signal 4 } 
	{ receive_fifo_R_0_din sc_out sc_lv 128 signal 5 } 
	{ receive_fifo_R_0_full_n sc_in sc_logic 1 signal 5 } 
	{ receive_fifo_R_0_write sc_out sc_logic 1 signal 5 } 
	{ sweep_rx1_1_TDATA sc_in sc_lv 128 signal 6 } 
	{ sweep_rx1_1_TKEEP sc_in sc_lv 16 signal 7 } 
	{ sweep_rx1_1_TSTRB sc_in sc_lv 16 signal 8 } 
	{ sweep_rx1_1_TLAST sc_in sc_lv 1 signal 9 } 
	{ receive_fifo_L_1_din sc_out sc_lv 128 signal 10 } 
	{ receive_fifo_L_1_full_n sc_in sc_logic 1 signal 10 } 
	{ receive_fifo_L_1_write sc_out sc_logic 1 signal 10 } 
	{ sweep_rx2_0_TDATA sc_in sc_lv 128 signal 11 } 
	{ sweep_rx2_0_TKEEP sc_in sc_lv 16 signal 12 } 
	{ sweep_rx2_0_TSTRB sc_in sc_lv 16 signal 13 } 
	{ sweep_rx2_0_TLAST sc_in sc_lv 1 signal 14 } 
	{ receive_fifo_R_1_din sc_out sc_lv 128 signal 15 } 
	{ receive_fifo_R_1_full_n sc_in sc_logic 1 signal 15 } 
	{ receive_fifo_R_1_write sc_out sc_logic 1 signal 15 } 
	{ sweep_rx2_1_TDATA sc_in sc_lv 128 signal 16 } 
	{ sweep_rx2_1_TKEEP sc_in sc_lv 16 signal 17 } 
	{ sweep_rx2_1_TSTRB sc_in sc_lv 16 signal 18 } 
	{ sweep_rx2_1_TLAST sc_in sc_lv 1 signal 19 } 
	{ receive_fifo_L_2_din sc_out sc_lv 128 signal 20 } 
	{ receive_fifo_L_2_full_n sc_in sc_logic 1 signal 20 } 
	{ receive_fifo_L_2_write sc_out sc_logic 1 signal 20 } 
	{ sweep_rx3_0_TDATA sc_in sc_lv 128 signal 21 } 
	{ sweep_rx3_0_TKEEP sc_in sc_lv 16 signal 22 } 
	{ sweep_rx3_0_TSTRB sc_in sc_lv 16 signal 23 } 
	{ sweep_rx3_0_TLAST sc_in sc_lv 1 signal 24 } 
	{ receive_fifo_R_2_din sc_out sc_lv 128 signal 25 } 
	{ receive_fifo_R_2_full_n sc_in sc_logic 1 signal 25 } 
	{ receive_fifo_R_2_write sc_out sc_logic 1 signal 25 } 
	{ sweep_rx3_1_TDATA sc_in sc_lv 128 signal 26 } 
	{ sweep_rx3_1_TKEEP sc_in sc_lv 16 signal 27 } 
	{ sweep_rx3_1_TSTRB sc_in sc_lv 16 signal 28 } 
	{ sweep_rx3_1_TLAST sc_in sc_lv 1 signal 29 } 
	{ receive_fifo_L_3_din sc_out sc_lv 128 signal 30 } 
	{ receive_fifo_L_3_full_n sc_in sc_logic 1 signal 30 } 
	{ receive_fifo_L_3_write sc_out sc_logic 1 signal 30 } 
	{ sweep_rx4_0_TDATA sc_in sc_lv 128 signal 31 } 
	{ sweep_rx4_0_TKEEP sc_in sc_lv 16 signal 32 } 
	{ sweep_rx4_0_TSTRB sc_in sc_lv 16 signal 33 } 
	{ sweep_rx4_0_TLAST sc_in sc_lv 1 signal 34 } 
	{ receive_fifo_R_3_din sc_out sc_lv 128 signal 35 } 
	{ receive_fifo_R_3_full_n sc_in sc_logic 1 signal 35 } 
	{ receive_fifo_R_3_write sc_out sc_logic 1 signal 35 } 
	{ sweep_rx4_1_TDATA sc_in sc_lv 128 signal 36 } 
	{ sweep_rx4_1_TKEEP sc_in sc_lv 16 signal 37 } 
	{ sweep_rx4_1_TSTRB sc_in sc_lv 16 signal 38 } 
	{ sweep_rx4_1_TLAST sc_in sc_lv 1 signal 39 } 
	{ convSet_L_0_din sc_out sc_lv 32 signal 40 } 
	{ convSet_L_0_full_n sc_in sc_logic 1 signal 40 } 
	{ convSet_L_0_write sc_out sc_logic 1 signal 40 } 
	{ convSet_R_0_din sc_out sc_lv 32 signal 41 } 
	{ convSet_R_0_full_n sc_in sc_logic 1 signal 41 } 
	{ convSet_R_0_write sc_out sc_logic 1 signal 41 } 
	{ convSet_L_1_din sc_out sc_lv 32 signal 42 } 
	{ convSet_L_1_full_n sc_in sc_logic 1 signal 42 } 
	{ convSet_L_1_write sc_out sc_logic 1 signal 42 } 
	{ convSet_R_1_din sc_out sc_lv 32 signal 43 } 
	{ convSet_R_1_full_n sc_in sc_logic 1 signal 43 } 
	{ convSet_R_1_write sc_out sc_logic 1 signal 43 } 
	{ convSet_L_2_din sc_out sc_lv 32 signal 44 } 
	{ convSet_L_2_full_n sc_in sc_logic 1 signal 44 } 
	{ convSet_L_2_write sc_out sc_logic 1 signal 44 } 
	{ convSet_R_2_din sc_out sc_lv 32 signal 45 } 
	{ convSet_R_2_full_n sc_in sc_logic 1 signal 45 } 
	{ convSet_R_2_write sc_out sc_logic 1 signal 45 } 
	{ convSet_L_3_din sc_out sc_lv 32 signal 46 } 
	{ convSet_L_3_full_n sc_in sc_logic 1 signal 46 } 
	{ convSet_L_3_write sc_out sc_logic 1 signal 46 } 
	{ convSet_R_3_din sc_out sc_lv 32 signal 47 } 
	{ convSet_R_3_full_n sc_in sc_logic 1 signal 47 } 
	{ convSet_R_3_write sc_out sc_logic 1 signal 47 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ sweep_rx1_0_TVALID sc_in sc_logic 1 invld 4 } 
	{ sweep_rx1_0_TREADY sc_out sc_logic 1 inacc 4 } 
	{ sweep_rx1_1_TVALID sc_in sc_logic 1 invld 9 } 
	{ sweep_rx1_1_TREADY sc_out sc_logic 1 inacc 9 } 
	{ sweep_rx2_0_TVALID sc_in sc_logic 1 invld 14 } 
	{ sweep_rx2_0_TREADY sc_out sc_logic 1 inacc 14 } 
	{ sweep_rx2_1_TVALID sc_in sc_logic 1 invld 19 } 
	{ sweep_rx2_1_TREADY sc_out sc_logic 1 inacc 19 } 
	{ sweep_rx3_0_TVALID sc_in sc_logic 1 invld 24 } 
	{ sweep_rx3_0_TREADY sc_out sc_logic 1 inacc 24 } 
	{ sweep_rx3_1_TVALID sc_in sc_logic 1 invld 29 } 
	{ sweep_rx3_1_TREADY sc_out sc_logic 1 inacc 29 } 
	{ sweep_rx4_0_TVALID sc_in sc_logic 1 invld 34 } 
	{ sweep_rx4_0_TREADY sc_out sc_logic 1 inacc 34 } 
	{ sweep_rx4_1_TVALID sc_in sc_logic 1 invld 39 } 
	{ sweep_rx4_1_TREADY sc_out sc_logic 1 inacc 39 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "receive_fifo_L_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "din" }} , 
 	{ "name": "receive_fifo_L_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_L_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_0", "role": "write" }} , 
 	{ "name": "sweep_rx1_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_R_0_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "din" }} , 
 	{ "name": "receive_fifo_R_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "full_n" }} , 
 	{ "name": "receive_fifo_R_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_0", "role": "write" }} , 
 	{ "name": "sweep_rx1_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_L_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "din" }} , 
 	{ "name": "receive_fifo_L_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "full_n" }} , 
 	{ "name": "receive_fifo_L_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_1", "role": "write" }} , 
 	{ "name": "sweep_rx2_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_R_1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "din" }} , 
 	{ "name": "receive_fifo_R_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "full_n" }} , 
 	{ "name": "receive_fifo_R_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_1", "role": "write" }} , 
 	{ "name": "sweep_rx2_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_L_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "din" }} , 
 	{ "name": "receive_fifo_L_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "full_n" }} , 
 	{ "name": "receive_fifo_L_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_2", "role": "write" }} , 
 	{ "name": "sweep_rx3_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx3_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx3_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx3_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx3_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_R_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "din" }} , 
 	{ "name": "receive_fifo_R_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "full_n" }} , 
 	{ "name": "receive_fifo_R_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_2", "role": "write" }} , 
 	{ "name": "sweep_rx3_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx3_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx3_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx3_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx3_1_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_L_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "din" }} , 
 	{ "name": "receive_fifo_L_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "full_n" }} , 
 	{ "name": "receive_fifo_L_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_L_3", "role": "write" }} , 
 	{ "name": "sweep_rx4_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx4_0_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx4_0_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx4_0_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx4_0_V_last_V", "role": "default" }} , 
 	{ "name": "receive_fifo_R_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "din" }} , 
 	{ "name": "receive_fifo_R_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "full_n" }} , 
 	{ "name": "receive_fifo_R_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "receive_fifo_R_3", "role": "write" }} , 
 	{ "name": "sweep_rx4_1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "sweep_rx4_1_V_data_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx4_1_V_keep_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sweep_rx4_1_V_strb_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sweep_rx4_1_V_last_V", "role": "default" }} , 
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
 	{ "name": "convSet_L_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "din" }} , 
 	{ "name": "convSet_L_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "full_n" }} , 
 	{ "name": "convSet_L_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "write" }} , 
 	{ "name": "convSet_R_2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "din" }} , 
 	{ "name": "convSet_R_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "full_n" }} , 
 	{ "name": "convSet_R_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "write" }} , 
 	{ "name": "convSet_L_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "din" }} , 
 	{ "name": "convSet_L_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "full_n" }} , 
 	{ "name": "convSet_L_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "write" }} , 
 	{ "name": "convSet_R_3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "din" }} , 
 	{ "name": "convSet_R_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "full_n" }} , 
 	{ "name": "convSet_R_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx1_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx1_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx2_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx2_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx2_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx3_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx3_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx3_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx3_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx3_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx4_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx4_0_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sweep_rx4_1_V_last_V", "role": "default" }} , 
 	{ "name": "sweep_rx4_1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sweep_rx4_1_V_last_V", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc28",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "963", "EstimateLatencyMax" : "963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0"}],
		"Port" : [
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_L_0"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_0_V_data_V"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_R_0"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_1_V_data_V"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx1_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_L_1"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_0_V_data_V"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_0_V_keep_V"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_0_V_strb_V"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_R_1"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_1_V_data_V"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_1_V_keep_V"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_1_V_strb_V"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx2_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_L_2"}]},
			{"Name" : "sweep_rx3_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_0_V_data_V"}]},
			{"Name" : "sweep_rx3_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_0_V_keep_V"}]},
			{"Name" : "sweep_rx3_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_0_V_strb_V"}]},
			{"Name" : "sweep_rx3_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_R_2"}]},
			{"Name" : "sweep_rx3_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_1_V_data_V"}]},
			{"Name" : "sweep_rx3_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_1_V_keep_V"}]},
			{"Name" : "sweep_rx3_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_1_V_strb_V"}]},
			{"Name" : "sweep_rx3_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx3_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_L_3"}]},
			{"Name" : "sweep_rx4_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_0_V_data_V"}]},
			{"Name" : "sweep_rx4_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_0_V_keep_V"}]},
			{"Name" : "sweep_rx4_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_0_V_strb_V"}]},
			{"Name" : "sweep_rx4_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "receive_fifo_R_3"}]},
			{"Name" : "sweep_rx4_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_1_V_data_V"}]},
			{"Name" : "sweep_rx4_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_1_V_keep_V"}]},
			{"Name" : "sweep_rx4_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_1_V_strb_V"}]},
			{"Name" : "sweep_rx4_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "sweep_rx4_1_V_last_V"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_L_0"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_R_0"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_L_1"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_R_1"}]},
			{"Name" : "convSet_L_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_L_2"}]},
			{"Name" : "convSet_R_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_R_2"}]},
			{"Name" : "convSet_L_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_L_3"}]},
			{"Name" : "convSet_R_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Port" : "convSet_R_3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_315_2", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0", "Parent" : "0", "Child" : ["2", "4", "10", "16", "22", "28", "34", "40", "46", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83"],
		"CDFG" : "dataflow_in_loop_VITIS_LOOP_315_2_1",
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
			{"ID" : "2", "Name" : "print_int_U0"},
			{"ID" : "4", "Name" : "receive4AIE_U0"},
			{"ID" : "10", "Name" : "receive4AIE_7_U0"},
			{"ID" : "16", "Name" : "receive4AIE_1_U0"},
			{"ID" : "22", "Name" : "receive4AIE_6_U0"},
			{"ID" : "28", "Name" : "receive4AIE_2_U0"},
			{"ID" : "34", "Name" : "receive4AIE_5_U0"},
			{"ID" : "40", "Name" : "receive4AIE_3_U0"},
			{"ID" : "46", "Name" : "receive4AIE_4_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "print_int_U0"},
			{"ID" : "53", "Name" : "Block_newFuncRoot_proc_proc29_U0"},
			{"ID" : "55", "Name" : "Block_newFuncRoot_proc_proc31_U0"},
			{"ID" : "57", "Name" : "Block_newFuncRoot_proc_proc33_U0"},
			{"ID" : "59", "Name" : "Block_newFuncRoot_proc_proc35_U0"},
			{"ID" : "61", "Name" : "Block_newFuncRoot_proc_proc37_U0"},
			{"ID" : "63", "Name" : "Block_newFuncRoot_proc_proc39_U0"},
			{"ID" : "65", "Name" : "Block_newFuncRoot_proc_proc41_U0"},
			{"ID" : "67", "Name" : "Block_newFuncRoot_proc_proc43_U0"}],
		"Port" : [
			{"Name" : "i_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "receive4AIE_U0", "Port" : "receive_fifo_L_0"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_data_V"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_keep_V"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_strb_V"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "receive4AIE_U0", "Port" : "sweep_rx1_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "receive4AIE_7_U0", "Port" : "receive_fifo_R_0"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "receive4AIE_7_U0", "Port" : "sweep_rx1_1_V_data_V"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "receive4AIE_7_U0", "Port" : "sweep_rx1_1_V_keep_V"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "receive4AIE_7_U0", "Port" : "sweep_rx1_1_V_strb_V"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "receive4AIE_7_U0", "Port" : "sweep_rx1_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "receive4AIE_1_U0", "Port" : "receive_fifo_L_1"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_data_V"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_keep_V"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_strb_V"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "receive4AIE_1_U0", "Port" : "sweep_rx2_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "receive4AIE_6_U0", "Port" : "receive_fifo_R_1"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "receive4AIE_6_U0", "Port" : "sweep_rx2_1_V_data_V"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "receive4AIE_6_U0", "Port" : "sweep_rx2_1_V_keep_V"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "receive4AIE_6_U0", "Port" : "sweep_rx2_1_V_strb_V"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "receive4AIE_6_U0", "Port" : "sweep_rx2_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "receive4AIE_2_U0", "Port" : "receive_fifo_L_2"}]},
			{"Name" : "sweep_rx3_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx3_0_V_data_V"}]},
			{"Name" : "sweep_rx3_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx3_0_V_keep_V"}]},
			{"Name" : "sweep_rx3_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx3_0_V_strb_V"}]},
			{"Name" : "sweep_rx3_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "receive4AIE_2_U0", "Port" : "sweep_rx3_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "receive4AIE_5_U0", "Port" : "receive_fifo_R_2"}]},
			{"Name" : "sweep_rx3_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "receive4AIE_5_U0", "Port" : "sweep_rx3_1_V_data_V"}]},
			{"Name" : "sweep_rx3_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "receive4AIE_5_U0", "Port" : "sweep_rx3_1_V_keep_V"}]},
			{"Name" : "sweep_rx3_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "receive4AIE_5_U0", "Port" : "sweep_rx3_1_V_strb_V"}]},
			{"Name" : "sweep_rx3_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "receive4AIE_5_U0", "Port" : "sweep_rx3_1_V_last_V"}]},
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "receive4AIE_3_U0", "Port" : "receive_fifo_L_3"}]},
			{"Name" : "sweep_rx4_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx4_0_V_data_V"}]},
			{"Name" : "sweep_rx4_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx4_0_V_keep_V"}]},
			{"Name" : "sweep_rx4_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx4_0_V_strb_V"}]},
			{"Name" : "sweep_rx4_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "receive4AIE_3_U0", "Port" : "sweep_rx4_0_V_last_V"}]},
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "receive4AIE_4_U0", "Port" : "receive_fifo_R_3"}]},
			{"Name" : "sweep_rx4_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "receive4AIE_4_U0", "Port" : "sweep_rx4_1_V_data_V"}]},
			{"Name" : "sweep_rx4_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "receive4AIE_4_U0", "Port" : "sweep_rx4_1_V_keep_V"}]},
			{"Name" : "sweep_rx4_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "receive4AIE_4_U0", "Port" : "sweep_rx4_1_V_strb_V"}]},
			{"Name" : "sweep_rx4_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "receive4AIE_4_U0", "Port" : "sweep_rx4_1_V_last_V"}]},
			{"Name" : "convSet_L_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "Block_newFuncRoot_proc_proc29_U0", "Port" : "convSet_L_0"}]},
			{"Name" : "convSet_R_0", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "Block_newFuncRoot_proc_proc31_U0", "Port" : "convSet_R_0"}]},
			{"Name" : "convSet_L_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "Block_newFuncRoot_proc_proc33_U0", "Port" : "convSet_L_1"}]},
			{"Name" : "convSet_R_1", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "Block_newFuncRoot_proc_proc35_U0", "Port" : "convSet_R_1"}]},
			{"Name" : "convSet_L_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "Block_newFuncRoot_proc_proc37_U0", "Port" : "convSet_L_2"}]},
			{"Name" : "convSet_R_2", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "Block_newFuncRoot_proc_proc39_U0", "Port" : "convSet_R_2"}]},
			{"Name" : "convSet_L_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "Block_newFuncRoot_proc_proc41_U0", "Port" : "convSet_L_3"}]},
			{"Name" : "convSet_R_3", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "Block_newFuncRoot_proc_proc43_U0", "Port" : "convSet_R_3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0", "Parent" : "1", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.printint_U400", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0", "Parent" : "1", "Child" : ["5", "7", "8", "9"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["52"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_L_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "4", "Child" : ["6"],
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
			{"Name" : "data_temp_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx1_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx1_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0"},
			{"Name" : "sweep_rx1_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0"},
			{"Name" : "sweep_rx1_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_0"},
			{"Name" : "receive_fifo_L_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_0_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_68_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.fptrunc_64ns_32_1_no_dsp_1_U411", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U412", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.fpext_32ns_64_1_no_dsp_1_U413", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0", "Parent" : "1", "Child" : ["11", "13", "14", "15"],
		"CDFG" : "receive4AIE_7",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["54"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_0", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_0_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_R_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx1_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx1_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx1_1",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx1_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "10", "Child" : ["12"],
		"CDFG" : "receive4AIE_7_Pipeline_VITIS_LOOP_76_2",
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
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.fptrunc_64ns_32_1_no_dsp_1_U429", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.fpext_32ns_64_1_no_dsp_1_U430", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.fpext_32ns_64_1_no_dsp_1_U431", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0", "Parent" : "1", "Child" : ["17", "19", "20", "21"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["56"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_L_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "16", "Child" : ["18"],
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
			{"Name" : "data_temp_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx2_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx2_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0"},
			{"Name" : "sweep_rx2_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0"},
			{"Name" : "sweep_rx2_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_0"},
			{"Name" : "receive_fifo_L_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_60_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.fptrunc_64ns_32_1_no_dsp_1_U447", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U448", "Parent" : "16"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.fpext_32ns_64_1_no_dsp_1_U449", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0", "Parent" : "1", "Child" : ["23", "25", "26", "27"],
		"CDFG" : "receive4AIE_6",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["58"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_1", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_1_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_R_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx2_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx2_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx2_1",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx2_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "receive4AIE_6_Pipeline_VITIS_LOOP_76_2",
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
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.fptrunc_64ns_32_1_no_dsp_1_U465", "Parent" : "22"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.fpext_32ns_64_1_no_dsp_1_U466", "Parent" : "22"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.fpext_32ns_64_1_no_dsp_1_U467", "Parent" : "22"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0", "Parent" : "1", "Child" : ["29", "31", "32", "33"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["60"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_L_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx3_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "28", "Child" : ["30"],
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
			{"Name" : "data_temp_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx3_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx3_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx3_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0"},
			{"Name" : "sweep_rx3_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0"},
			{"Name" : "sweep_rx3_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_0"},
			{"Name" : "receive_fifo_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_52_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.fptrunc_64ns_32_1_no_dsp_1_U483", "Parent" : "28"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.fpext_32ns_64_1_no_dsp_1_U484", "Parent" : "28"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.fpext_32ns_64_1_no_dsp_1_U485", "Parent" : "28"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0", "Parent" : "1", "Child" : ["35", "37", "38", "39"],
		"CDFG" : "receive4AIE_5",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["62"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_2_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_R_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx3_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx3_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx3_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "34", "Child" : ["36"],
		"CDFG" : "receive4AIE_5_Pipeline_VITIS_LOOP_76_2",
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
			{"Name" : "sweep_rx3_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx3_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx3_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1"},
			{"Name" : "sweep_rx3_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1"},
			{"Name" : "sweep_rx3_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx3_1"},
			{"Name" : "receive_fifo_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_28_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.fptrunc_64ns_32_1_no_dsp_1_U501", "Parent" : "34"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.fpext_32ns_64_1_no_dsp_1_U502", "Parent" : "34"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.fpext_32ns_64_1_no_dsp_1_U503", "Parent" : "34"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0", "Parent" : "1", "Child" : ["41", "43", "44", "45"],
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["64"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_L_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx4_0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_0_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_0_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_0_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_0_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "40", "Child" : ["42"],
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
			{"Name" : "data_temp_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_temp_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "sweep_rx4_0_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0",
				"BlockSignal" : [
					{"Name" : "sweep_rx4_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx4_0_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0"},
			{"Name" : "sweep_rx4_0_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0"},
			{"Name" : "sweep_rx4_0_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_0"},
			{"Name" : "receive_fifo_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_44_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.fptrunc_64ns_32_1_no_dsp_1_U519", "Parent" : "40"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.fpext_32ns_64_1_no_dsp_1_U520", "Parent" : "40"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.fpext_32ns_64_1_no_dsp_1_U521", "Parent" : "40"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0", "Parent" : "1", "Child" : ["47", "49", "50", "51"],
		"CDFG" : "receive4AIE_4",
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
			{"Name" : "return_r", "Type" : "None", "Direction" : "O", "DependentProc" : ["66"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_3_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "receive_fifo_R_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx4_1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_1_V_data_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_1_V_keep_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_1_V_strb_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "sweep_rx4_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158", "Port" : "sweep_rx4_1_V_last_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state7"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158", "Parent" : "46", "Child" : ["48"],
		"CDFG" : "receive4AIE_4_Pipeline_VITIS_LOOP_76_2",
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
			{"Name" : "sweep_rx4_1_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1",
				"BlockSignal" : [
					{"Name" : "sweep_rx4_1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sweep_rx4_1_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1"},
			{"Name" : "sweep_rx4_1_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1"},
			{"Name" : "sweep_rx4_1_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "sweep_rx4_1"},
			{"Name" : "receive_fifo_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "receive_fifo_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_temp_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_temp_36_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.fptrunc_64ns_32_1_no_dsp_1_U537", "Parent" : "46"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.fpext_32ns_64_1_no_dsp_1_U538", "Parent" : "46"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.fpext_32ns_64_1_no_dsp_1_U539", "Parent" : "46"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0", "Parent" : "1",
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
			{"Name" : "convL0", "Type" : "None", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "68", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["53"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc29",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["52"], "DependentChan" : "76", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc30",
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
			{"Name" : "convR0", "Type" : "None", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "69", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["55"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc31",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["54"], "DependentChan" : "77", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc32",
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
			{"Name" : "convL1", "Type" : "None", "Direction" : "I", "DependentProc" : ["16"], "DependentChan" : "70", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["57"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc33",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["56"], "DependentChan" : "78", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc34",
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
			{"Name" : "convR1", "Type" : "None", "Direction" : "I", "DependentProc" : ["22"], "DependentChan" : "71", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["59"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc35",
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
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["58"], "DependentChan" : "79", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc36",
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
			{"Name" : "convL2", "Type" : "None", "Direction" : "I", "DependentProc" : ["28"], "DependentChan" : "72", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["61"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc37",
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
			{"Name" : "convSet_L_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["60"], "DependentChan" : "80", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc38",
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
			{"Name" : "convR2", "Type" : "None", "Direction" : "I", "DependentProc" : ["34"], "DependentChan" : "73", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["63"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc39",
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
			{"Name" : "convSet_R_2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["62"], "DependentChan" : "81", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc40",
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
			{"Name" : "convL3", "Type" : "None", "Direction" : "I", "DependentProc" : ["40"], "DependentChan" : "74", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["65"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc41",
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
			{"Name" : "convSet_L_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["64"], "DependentChan" : "82", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc42",
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
			{"Name" : "convR3", "Type" : "None", "Direction" : "I", "DependentProc" : ["46"], "DependentChan" : "75", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "empty", "Type" : "None", "Direction" : "O", "DependentProc" : ["67"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0", "Parent" : "1",
		"CDFG" : "Block_newFuncRoot_proc_proc43",
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
			{"Name" : "convSet_R_3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "convSet_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "None", "Direction" : "I", "DependentProc" : ["66"], "DependentChan" : "83", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL0_channel_U", "Parent" : "1"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR0_channel_U", "Parent" : "1"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL1_channel_U", "Parent" : "1"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR1_channel_U", "Parent" : "1"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL2_channel_U", "Parent" : "1"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR2_channel_U", "Parent" : "1"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL3_channel_U", "Parent" : "1"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR3_channel_U", "Parent" : "1"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_153_U", "Parent" : "1"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_152_U", "Parent" : "1"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_151_U", "Parent" : "1"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_150_U", "Parent" : "1"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_149_U", "Parent" : "1"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_148_U", "Parent" : "1"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_147_U", "Parent" : "1"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc28 {
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
		receive_fifo_L_2 {Type O LastRead -1 FirstWrite 2}
		sweep_rx3_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_2 {Type O LastRead -1 FirstWrite 2}
		sweep_rx3_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_L_3 {Type O LastRead -1 FirstWrite 2}
		sweep_rx4_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_3 {Type O LastRead -1 FirstWrite 2}
		sweep_rx4_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}
		convSet_L_2 {Type O LastRead -1 FirstWrite 0}
		convSet_R_2 {Type O LastRead -1 FirstWrite 0}
		convSet_L_3 {Type O LastRead -1 FirstWrite 0}
		convSet_R_3 {Type O LastRead -1 FirstWrite 0}}
	dataflow_in_loop_VITIS_LOOP_315_2_1 {
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
		receive_fifo_L_2 {Type O LastRead -1 FirstWrite 2}
		sweep_rx3_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_2 {Type O LastRead -1 FirstWrite 2}
		sweep_rx3_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_L_3 {Type O LastRead -1 FirstWrite 2}
		sweep_rx4_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_last_V {Type I LastRead 4 FirstWrite -1}
		receive_fifo_R_3 {Type O LastRead -1 FirstWrite 2}
		sweep_rx4_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_last_V {Type I LastRead 4 FirstWrite -1}
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}
		convSet_L_2 {Type O LastRead -1 FirstWrite 0}
		convSet_R_2 {Type O LastRead -1 FirstWrite 0}
		convSet_L_3 {Type O LastRead -1 FirstWrite 0}
		convSet_R_3 {Type O LastRead -1 FirstWrite 0}}
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
		data_temp_65 {Type I LastRead 0 FirstWrite -1}
		data_temp_66 {Type I LastRead 0 FirstWrite -1}
		sweep_rx1_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx1_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_0 {Type O LastRead -1 FirstWrite 2}
		data_temp_69_out {Type O LastRead -1 FirstWrite 1}
		data_temp_68_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_7 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_0 {Type O LastRead -1 FirstWrite 2}
		sweep_rx1_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx1_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_7_Pipeline_VITIS_LOOP_76_2 {
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
		data_temp_57 {Type I LastRead 0 FirstWrite -1}
		data_temp_58 {Type I LastRead 0 FirstWrite -1}
		sweep_rx2_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_1 {Type O LastRead -1 FirstWrite 2}
		data_temp_61_out {Type O LastRead -1 FirstWrite 1}
		data_temp_60_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_6 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		sweep_rx2_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_6_Pipeline_VITIS_LOOP_76_2 {
		data_temp_17 {Type I LastRead 0 FirstWrite -1}
		data_temp_18 {Type I LastRead 0 FirstWrite -1}
		sweep_rx2_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx2_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_1 {Type O LastRead -1 FirstWrite 2}
		data_temp_21_out {Type O LastRead -1 FirstWrite 1}
		data_temp_20_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_2 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_2 {Type O LastRead -1 FirstWrite 2}
		sweep_rx3_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_2_Pipeline_VITIS_LOOP_76_2 {
		data_temp_49 {Type I LastRead 0 FirstWrite -1}
		data_temp_50 {Type I LastRead 0 FirstWrite -1}
		sweep_rx3_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx3_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx3_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx3_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_2 {Type O LastRead -1 FirstWrite 2}
		data_temp_53_out {Type O LastRead -1 FirstWrite 1}
		data_temp_52_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_5 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_2 {Type O LastRead -1 FirstWrite 2}
		sweep_rx3_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx3_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_5_Pipeline_VITIS_LOOP_76_2 {
		data_temp_25 {Type I LastRead 0 FirstWrite -1}
		data_temp_26 {Type I LastRead 0 FirstWrite -1}
		sweep_rx3_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx3_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx3_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx3_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_2 {Type O LastRead -1 FirstWrite 2}
		data_temp_29_out {Type O LastRead -1 FirstWrite 1}
		data_temp_28_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_3 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_L_3 {Type O LastRead -1 FirstWrite 2}
		sweep_rx4_0_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_0_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_3_Pipeline_VITIS_LOOP_76_2 {
		data_temp_41 {Type I LastRead 0 FirstWrite -1}
		data_temp_42 {Type I LastRead 0 FirstWrite -1}
		sweep_rx4_0_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx4_0_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx4_0_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx4_0_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_L_3 {Type O LastRead -1 FirstWrite 2}
		data_temp_45_out {Type O LastRead -1 FirstWrite 1}
		data_temp_44_out {Type IO LastRead 1 FirstWrite 0}}
	receive4AIE_4 {
		return_r {Type O LastRead -1 FirstWrite 1}
		receive_fifo_R_3 {Type O LastRead -1 FirstWrite 2}
		sweep_rx4_1_V_data_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_keep_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_strb_V {Type I LastRead 4 FirstWrite -1}
		sweep_rx4_1_V_last_V {Type I LastRead 4 FirstWrite -1}}
	receive4AIE_4_Pipeline_VITIS_LOOP_76_2 {
		data_temp_33 {Type I LastRead 0 FirstWrite -1}
		data_temp_34 {Type I LastRead 0 FirstWrite -1}
		sweep_rx4_1_V_data_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx4_1_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx4_1_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sweep_rx4_1_V_last_V {Type I LastRead 1 FirstWrite -1}
		receive_fifo_R_3 {Type O LastRead -1 FirstWrite 2}
		data_temp_37_out {Type O LastRead -1 FirstWrite 1}
		data_temp_36_out {Type IO LastRead 1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc {
		convL0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc29 {
		convSet_L_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc30 {
		convR0 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc31 {
		convSet_R_0 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc32 {
		convL1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc33 {
		convSet_L_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc34 {
		convR1 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc35 {
		convSet_R_1 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc36 {
		convL2 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc37 {
		convSet_L_2 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc38 {
		convR2 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc39 {
		convSet_R_2 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc40 {
		convL3 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc41 {
		convSet_L_3 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}
	Block_newFuncRoot_proc_proc42 {
		convR3 {Type I LastRead 0 FirstWrite -1}
		empty {Type O LastRead -1 FirstWrite 0}}
	Block_newFuncRoot_proc_proc43 {
		convSet_R_3 {Type O LastRead -1 FirstWrite 0}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "963", "Max" : "963"}
	, {"Name" : "Interval", "Min" : "963", "Max" : "963"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	receive_fifo_L_0 { ap_fifo {  { receive_fifo_L_0_din fifo_data_in 1 128 }  { receive_fifo_L_0_full_n fifo_status 0 1 }  { receive_fifo_L_0_write fifo_port_we 1 1 } } }
	sweep_rx1_0_V_data_V { axis {  { sweep_rx1_0_TDATA in_data 0 128 } } }
	sweep_rx1_0_V_keep_V { axis {  { sweep_rx1_0_TKEEP in_data 0 16 } } }
	sweep_rx1_0_V_strb_V { axis {  { sweep_rx1_0_TSTRB in_data 0 16 } } }
	sweep_rx1_0_V_last_V { axis {  { sweep_rx1_0_TLAST in_data 0 1 }  { sweep_rx1_0_TVALID in_vld 0 1 }  { sweep_rx1_0_TREADY in_acc 1 1 } } }
	receive_fifo_R_0 { ap_fifo {  { receive_fifo_R_0_din fifo_data_in 1 128 }  { receive_fifo_R_0_full_n fifo_status 0 1 }  { receive_fifo_R_0_write fifo_port_we 1 1 } } }
	sweep_rx1_1_V_data_V { axis {  { sweep_rx1_1_TDATA in_data 0 128 } } }
	sweep_rx1_1_V_keep_V { axis {  { sweep_rx1_1_TKEEP in_data 0 16 } } }
	sweep_rx1_1_V_strb_V { axis {  { sweep_rx1_1_TSTRB in_data 0 16 } } }
	sweep_rx1_1_V_last_V { axis {  { sweep_rx1_1_TLAST in_data 0 1 }  { sweep_rx1_1_TVALID in_vld 0 1 }  { sweep_rx1_1_TREADY in_acc 1 1 } } }
	receive_fifo_L_1 { ap_fifo {  { receive_fifo_L_1_din fifo_data_in 1 128 }  { receive_fifo_L_1_full_n fifo_status 0 1 }  { receive_fifo_L_1_write fifo_port_we 1 1 } } }
	sweep_rx2_0_V_data_V { axis {  { sweep_rx2_0_TDATA in_data 0 128 } } }
	sweep_rx2_0_V_keep_V { axis {  { sweep_rx2_0_TKEEP in_data 0 16 } } }
	sweep_rx2_0_V_strb_V { axis {  { sweep_rx2_0_TSTRB in_data 0 16 } } }
	sweep_rx2_0_V_last_V { axis {  { sweep_rx2_0_TLAST in_data 0 1 }  { sweep_rx2_0_TVALID in_vld 0 1 }  { sweep_rx2_0_TREADY in_acc 1 1 } } }
	receive_fifo_R_1 { ap_fifo {  { receive_fifo_R_1_din fifo_data_in 1 128 }  { receive_fifo_R_1_full_n fifo_status 0 1 }  { receive_fifo_R_1_write fifo_port_we 1 1 } } }
	sweep_rx2_1_V_data_V { axis {  { sweep_rx2_1_TDATA in_data 0 128 } } }
	sweep_rx2_1_V_keep_V { axis {  { sweep_rx2_1_TKEEP in_data 0 16 } } }
	sweep_rx2_1_V_strb_V { axis {  { sweep_rx2_1_TSTRB in_data 0 16 } } }
	sweep_rx2_1_V_last_V { axis {  { sweep_rx2_1_TLAST in_data 0 1 }  { sweep_rx2_1_TVALID in_vld 0 1 }  { sweep_rx2_1_TREADY in_acc 1 1 } } }
	receive_fifo_L_2 { ap_fifo {  { receive_fifo_L_2_din fifo_data_in 1 128 }  { receive_fifo_L_2_full_n fifo_status 0 1 }  { receive_fifo_L_2_write fifo_port_we 1 1 } } }
	sweep_rx3_0_V_data_V { axis {  { sweep_rx3_0_TDATA in_data 0 128 } } }
	sweep_rx3_0_V_keep_V { axis {  { sweep_rx3_0_TKEEP in_data 0 16 } } }
	sweep_rx3_0_V_strb_V { axis {  { sweep_rx3_0_TSTRB in_data 0 16 } } }
	sweep_rx3_0_V_last_V { axis {  { sweep_rx3_0_TLAST in_data 0 1 }  { sweep_rx3_0_TVALID in_vld 0 1 }  { sweep_rx3_0_TREADY in_acc 1 1 } } }
	receive_fifo_R_2 { ap_fifo {  { receive_fifo_R_2_din fifo_data_in 1 128 }  { receive_fifo_R_2_full_n fifo_status 0 1 }  { receive_fifo_R_2_write fifo_port_we 1 1 } } }
	sweep_rx3_1_V_data_V { axis {  { sweep_rx3_1_TDATA in_data 0 128 } } }
	sweep_rx3_1_V_keep_V { axis {  { sweep_rx3_1_TKEEP in_data 0 16 } } }
	sweep_rx3_1_V_strb_V { axis {  { sweep_rx3_1_TSTRB in_data 0 16 } } }
	sweep_rx3_1_V_last_V { axis {  { sweep_rx3_1_TLAST in_data 0 1 }  { sweep_rx3_1_TVALID in_vld 0 1 }  { sweep_rx3_1_TREADY in_acc 1 1 } } }
	receive_fifo_L_3 { ap_fifo {  { receive_fifo_L_3_din fifo_data_in 1 128 }  { receive_fifo_L_3_full_n fifo_status 0 1 }  { receive_fifo_L_3_write fifo_port_we 1 1 } } }
	sweep_rx4_0_V_data_V { axis {  { sweep_rx4_0_TDATA in_data 0 128 } } }
	sweep_rx4_0_V_keep_V { axis {  { sweep_rx4_0_TKEEP in_data 0 16 } } }
	sweep_rx4_0_V_strb_V { axis {  { sweep_rx4_0_TSTRB in_data 0 16 } } }
	sweep_rx4_0_V_last_V { axis {  { sweep_rx4_0_TLAST in_data 0 1 }  { sweep_rx4_0_TVALID in_vld 0 1 }  { sweep_rx4_0_TREADY in_acc 1 1 } } }
	receive_fifo_R_3 { ap_fifo {  { receive_fifo_R_3_din fifo_data_in 1 128 }  { receive_fifo_R_3_full_n fifo_status 0 1 }  { receive_fifo_R_3_write fifo_port_we 1 1 } } }
	sweep_rx4_1_V_data_V { axis {  { sweep_rx4_1_TDATA in_data 0 128 } } }
	sweep_rx4_1_V_keep_V { axis {  { sweep_rx4_1_TKEEP in_data 0 16 } } }
	sweep_rx4_1_V_strb_V { axis {  { sweep_rx4_1_TSTRB in_data 0 16 } } }
	sweep_rx4_1_V_last_V { axis {  { sweep_rx4_1_TLAST in_data 0 1 }  { sweep_rx4_1_TVALID in_vld 0 1 }  { sweep_rx4_1_TREADY in_acc 1 1 } } }
	convSet_L_0 { ap_fifo {  { convSet_L_0_din fifo_data_in 1 32 }  { convSet_L_0_full_n fifo_status 0 1 }  { convSet_L_0_write fifo_port_we 1 1 } } }
	convSet_R_0 { ap_fifo {  { convSet_R_0_din fifo_data_in 1 32 }  { convSet_R_0_full_n fifo_status 0 1 }  { convSet_R_0_write fifo_port_we 1 1 } } }
	convSet_L_1 { ap_fifo {  { convSet_L_1_din fifo_data_in 1 32 }  { convSet_L_1_full_n fifo_status 0 1 }  { convSet_L_1_write fifo_port_we 1 1 } } }
	convSet_R_1 { ap_fifo {  { convSet_R_1_din fifo_data_in 1 32 }  { convSet_R_1_full_n fifo_status 0 1 }  { convSet_R_1_write fifo_port_we 1 1 } } }
	convSet_L_2 { ap_fifo {  { convSet_L_2_din fifo_data_in 1 32 }  { convSet_L_2_full_n fifo_status 0 1 }  { convSet_L_2_write fifo_port_we 1 1 } } }
	convSet_R_2 { ap_fifo {  { convSet_R_2_din fifo_data_in 1 32 }  { convSet_R_2_full_n fifo_status 0 1 }  { convSet_R_2_write fifo_port_we 1 1 } } }
	convSet_L_3 { ap_fifo {  { convSet_L_3_din fifo_data_in 1 32 }  { convSet_L_3_full_n fifo_status 0 1 }  { convSet_L_3_write fifo_port_we 1 1 } } }
	convSet_R_3 { ap_fifo {  { convSet_R_3_din fifo_data_in 1 32 }  { convSet_R_3_full_n fifo_status 0 1 }  { convSet_R_3_write fifo_port_we 1 1 } } }
}
