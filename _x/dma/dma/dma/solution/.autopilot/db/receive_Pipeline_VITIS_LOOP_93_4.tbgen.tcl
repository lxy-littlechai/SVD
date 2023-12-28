set moduleName receive_Pipeline_VITIS_LOOP_93_4
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
set C_modelName {receive_Pipeline_VITIS_LOOP_93_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ this_r int 128 regular {array 64 { 0 3 } 0 1 }  }
	{ rx_3_V_data_V int 128 regular {axi_s 0 volatile  { rx_3 Data } }  }
	{ rx_3_V_keep_V int 16 regular {axi_s 0 volatile  { rx_3 Keep } }  }
	{ rx_3_V_strb_V int 16 regular {axi_s 0 volatile  { rx_3 Strb } }  }
	{ rx_3_V_last_V int 1 regular {axi_s 0 volatile  { rx_3 Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "this_r", "interface" : "memory", "bitwidth" : 128, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rx_3_V_data_V", "interface" : "axis", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_keep_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_strb_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "rx_3_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rx_3_TVALID sc_in sc_logic 1 invld 1 } 
	{ this_r_address0 sc_out sc_lv 6 signal 0 } 
	{ this_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_r_we0 sc_out sc_logic 1 signal 0 } 
	{ this_r_d0 sc_out sc_lv 128 signal 0 } 
	{ rx_3_TDATA sc_in sc_lv 128 signal 1 } 
	{ rx_3_TREADY sc_out sc_logic 1 inacc 4 } 
	{ rx_3_TKEEP sc_in sc_lv 16 signal 2 } 
	{ rx_3_TSTRB sc_in sc_lv 16 signal 3 } 
	{ rx_3_TLAST sc_in sc_lv 1 signal 4 } 
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
 	{ "name": "rx_3_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rx_3_V_data_V", "role": "default" }} , 
 	{ "name": "this_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_r", "role": "address0" }} , 
 	{ "name": "this_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_r", "role": "ce0" }} , 
 	{ "name": "this_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_r", "role": "we0" }} , 
 	{ "name": "this_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "this_r", "role": "d0" }} , 
 	{ "name": "rx_3_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "rx_3_V_data_V", "role": "default" }} , 
 	{ "name": "rx_3_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rx_3_V_last_V", "role": "default" }} , 
 	{ "name": "rx_3_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_3_V_keep_V", "role": "default" }} , 
 	{ "name": "rx_3_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rx_3_V_strb_V", "role": "default" }} , 
 	{ "name": "rx_3_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rx_3_V_last_V", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	receive_Pipeline_VITIS_LOOP_93_4 {
		this_r {Type O LastRead -1 FirstWrite 1}
		rx_3_V_data_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_keep_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_strb_V {Type I LastRead 0 FirstWrite -1}
		rx_3_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "6"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	this_r { ap_memory {  { this_r_address0 mem_address 1 6 }  { this_r_ce0 mem_ce 1 1 }  { this_r_we0 mem_we 1 1 }  { this_r_d0 mem_din 1 128 } } }
	rx_3_V_data_V { axis {  { rx_3_TVALID in_vld 0 1 }  { rx_3_TDATA in_data 0 128 } } }
	rx_3_V_keep_V { axis {  { rx_3_TKEEP in_data 0 16 } } }
	rx_3_V_strb_V { axis {  { rx_3_TSTRB in_data 0 16 } } }
	rx_3_V_last_V { axis {  { rx_3_TREADY in_acc 1 1 }  { rx_3_TLAST in_data 0 1 } } }
}
