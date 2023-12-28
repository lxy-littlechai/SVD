set moduleName dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ tx_0_V_data_V int 128 regular {axi_s 1 volatile  { tx_0 Data } }  }
	{ tx_0_V_keep_V int 16 regular {axi_s 1 volatile  { tx_0 Keep } }  }
	{ tx_0_V_strb_V int 16 regular {axi_s 1 volatile  { tx_0 Strb } }  }
	{ tx_0_V_last_V int 1 regular {axi_s 1 volatile  { tx_0 Last } }  }
	{ dataManager int 128 regular {array 64 { 1 3 } 1 1 }  }
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
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "tx_0_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_0_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_0_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tx_0_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dataManager", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
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
 	{ "Name" : "tx_3_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tx_2_TREADY sc_in sc_logic 1 outacc 9 } 
	{ tx_1_TREADY sc_in sc_logic 1 outacc 5 } 
	{ tx_3_TREADY sc_in sc_logic 1 outacc 13 } 
	{ tx_0_TREADY sc_in sc_logic 1 outacc 0 } 
	{ tx_0_TDATA sc_out sc_lv 128 signal 0 } 
	{ tx_0_TVALID sc_out sc_logic 1 outvld 3 } 
	{ tx_0_TKEEP sc_out sc_lv 16 signal 1 } 
	{ tx_0_TSTRB sc_out sc_lv 16 signal 2 } 
	{ tx_0_TLAST sc_out sc_lv 1 signal 3 } 
	{ dataManager_address0 sc_out sc_lv 6 signal 4 } 
	{ dataManager_ce0 sc_out sc_logic 1 signal 4 } 
	{ dataManager_q0 sc_in sc_lv 128 signal 4 } 
	{ tx_1_TDATA sc_out sc_lv 128 signal 5 } 
	{ tx_1_TVALID sc_out sc_logic 1 outvld 8 } 
	{ tx_1_TKEEP sc_out sc_lv 16 signal 6 } 
	{ tx_1_TSTRB sc_out sc_lv 16 signal 7 } 
	{ tx_1_TLAST sc_out sc_lv 1 signal 8 } 
	{ tx_2_TDATA sc_out sc_lv 128 signal 9 } 
	{ tx_2_TVALID sc_out sc_logic 1 outvld 12 } 
	{ tx_2_TKEEP sc_out sc_lv 16 signal 10 } 
	{ tx_2_TSTRB sc_out sc_lv 16 signal 11 } 
	{ tx_2_TLAST sc_out sc_lv 1 signal 12 } 
	{ tx_3_TDATA sc_out sc_lv 128 signal 13 } 
	{ tx_3_TVALID sc_out sc_logic 1 outvld 16 } 
	{ tx_3_TKEEP sc_out sc_lv 16 signal 14 } 
	{ tx_3_TSTRB sc_out sc_lv 16 signal 15 } 
	{ tx_3_TLAST sc_out sc_lv 1 signal 16 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tx_2_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_2_V_data_V", "role": "default" }} , 
 	{ "name": "tx_1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_1_V_data_V", "role": "default" }} , 
 	{ "name": "tx_3_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_3_V_data_V", "role": "default" }} , 
 	{ "name": "tx_0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "tx_0_V_data_V", "role": "default" }} , 
 	{ "name": "tx_0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_0_V_data_V", "role": "default" }} , 
 	{ "name": "tx_0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_0_V_last_V", "role": "default" }} , 
 	{ "name": "tx_0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_0_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_0_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_0_V_last_V", "role": "default" }} , 
 	{ "name": "dataManager_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "dataManager", "role": "address0" }} , 
 	{ "name": "dataManager_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataManager", "role": "ce0" }} , 
 	{ "name": "dataManager_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "dataManager", "role": "q0" }} , 
 	{ "name": "tx_1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_1_V_data_V", "role": "default" }} , 
 	{ "name": "tx_1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_1_V_last_V", "role": "default" }} , 
 	{ "name": "tx_1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_1_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_1_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_1_V_last_V", "role": "default" }} , 
 	{ "name": "tx_2_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_2_V_data_V", "role": "default" }} , 
 	{ "name": "tx_2_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_2_V_last_V", "role": "default" }} , 
 	{ "name": "tx_2_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_2_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_2_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_2_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_2_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_2_V_last_V", "role": "default" }} , 
 	{ "name": "tx_3_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "tx_3_V_data_V", "role": "default" }} , 
 	{ "name": "tx_3_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "tx_3_V_last_V", "role": "default" }} , 
 	{ "name": "tx_3_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_3_V_keep_V", "role": "default" }} , 
 	{ "name": "tx_3_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tx_3_V_strb_V", "role": "default" }} , 
 	{ "name": "tx_3_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "tx_3_V_last_V", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		tx_3_V_last_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tx_0_V_data_V { axis {  { tx_0_TREADY out_acc 0 1 }  { tx_0_TDATA out_data 1 128 } } }
	tx_0_V_keep_V { axis {  { tx_0_TKEEP out_data 1 16 } } }
	tx_0_V_strb_V { axis {  { tx_0_TSTRB out_data 1 16 } } }
	tx_0_V_last_V { axis {  { tx_0_TVALID out_vld 1 1 }  { tx_0_TLAST out_data 1 1 } } }
	dataManager { ap_memory {  { dataManager_address0 mem_address 1 6 }  { dataManager_ce0 mem_ce 1 1 }  { dataManager_q0 in_data 0 128 } } }
	tx_1_V_data_V { axis {  { tx_1_TREADY out_acc 0 1 }  { tx_1_TDATA out_data 1 128 } } }
	tx_1_V_keep_V { axis {  { tx_1_TKEEP out_data 1 16 } } }
	tx_1_V_strb_V { axis {  { tx_1_TSTRB out_data 1 16 } } }
	tx_1_V_last_V { axis {  { tx_1_TVALID out_vld 1 1 }  { tx_1_TLAST out_data 1 1 } } }
	tx_2_V_data_V { axis {  { tx_2_TREADY out_acc 0 1 }  { tx_2_TDATA out_data 1 128 } } }
	tx_2_V_keep_V { axis {  { tx_2_TKEEP out_data 1 16 } } }
	tx_2_V_strb_V { axis {  { tx_2_TSTRB out_data 1 16 } } }
	tx_2_V_last_V { axis {  { tx_2_TVALID out_vld 1 1 }  { tx_2_TLAST out_data 1 1 } } }
	tx_3_V_data_V { axis {  { tx_3_TREADY out_acc 0 1 }  { tx_3_TDATA out_data 1 128 } } }
	tx_3_V_keep_V { axis {  { tx_3_TKEEP out_data 1 16 } } }
	tx_3_V_strb_V { axis {  { tx_3_TSTRB out_data 1 16 } } }
	tx_3_V_last_V { axis {  { tx_3_TVALID out_vld 1 1 }  { tx_3_TLAST out_data 1 1 } } }
}
