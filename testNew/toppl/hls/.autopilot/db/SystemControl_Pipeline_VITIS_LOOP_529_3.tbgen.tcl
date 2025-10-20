set moduleName SystemControl_Pipeline_VITIS_LOOP_529_3
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
set C_modelName {SystemControl_Pipeline_VITIS_LOOP_529_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ convSet_L_0 int 32 regular {fifo 0 volatile }  }
	{ convSet_R_0 int 32 regular {fifo 0 volatile }  }
	{ convSet_L_1 int 32 regular {fifo 0 volatile }  }
	{ convSet_R_1 int 32 regular {fifo 0 volatile }  }
	{ convSet_L_2 int 32 regular {fifo 0 volatile }  }
	{ convSet_R_2 int 32 regular {fifo 0 volatile }  }
	{ convSet_L_3 int 32 regular {fifo 0 volatile }  }
	{ convSet_R_3 int 32 regular {fifo 0 volatile }  }
	{ conv32_lcssa11_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "convSet_L_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_R_0", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_L_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_R_1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_L_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_R_2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_L_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "convSet_R_3", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv32_lcssa11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ convSet_L_0_dout sc_in sc_lv 32 signal 0 } 
	{ convSet_L_0_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ convSet_L_0_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ convSet_L_0_empty_n sc_in sc_logic 1 signal 0 } 
	{ convSet_L_0_read sc_out sc_logic 1 signal 0 } 
	{ convSet_R_0_dout sc_in sc_lv 32 signal 1 } 
	{ convSet_R_0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ convSet_R_0_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ convSet_R_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ convSet_R_0_read sc_out sc_logic 1 signal 1 } 
	{ convSet_L_1_dout sc_in sc_lv 32 signal 2 } 
	{ convSet_L_1_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ convSet_L_1_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ convSet_L_1_empty_n sc_in sc_logic 1 signal 2 } 
	{ convSet_L_1_read sc_out sc_logic 1 signal 2 } 
	{ convSet_R_1_dout sc_in sc_lv 32 signal 3 } 
	{ convSet_R_1_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ convSet_R_1_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ convSet_R_1_empty_n sc_in sc_logic 1 signal 3 } 
	{ convSet_R_1_read sc_out sc_logic 1 signal 3 } 
	{ convSet_L_2_dout sc_in sc_lv 32 signal 4 } 
	{ convSet_L_2_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ convSet_L_2_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ convSet_L_2_empty_n sc_in sc_logic 1 signal 4 } 
	{ convSet_L_2_read sc_out sc_logic 1 signal 4 } 
	{ convSet_R_2_dout sc_in sc_lv 32 signal 5 } 
	{ convSet_R_2_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ convSet_R_2_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ convSet_R_2_empty_n sc_in sc_logic 1 signal 5 } 
	{ convSet_R_2_read sc_out sc_logic 1 signal 5 } 
	{ convSet_L_3_dout sc_in sc_lv 32 signal 6 } 
	{ convSet_L_3_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ convSet_L_3_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ convSet_L_3_empty_n sc_in sc_logic 1 signal 6 } 
	{ convSet_L_3_read sc_out sc_logic 1 signal 6 } 
	{ convSet_R_3_dout sc_in sc_lv 32 signal 7 } 
	{ convSet_R_3_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ convSet_R_3_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ convSet_R_3_empty_n sc_in sc_logic 1 signal 7 } 
	{ convSet_R_3_read sc_out sc_logic 1 signal 7 } 
	{ conv32_lcssa11_out sc_out sc_lv 32 signal 8 } 
	{ conv32_lcssa11_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "convSet_L_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "dout" }} , 
 	{ "name": "convSet_L_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "num_data_valid" }} , 
 	{ "name": "convSet_L_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "fifo_cap" }} , 
 	{ "name": "convSet_L_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "empty_n" }} , 
 	{ "name": "convSet_L_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_0", "role": "read" }} , 
 	{ "name": "convSet_R_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "dout" }} , 
 	{ "name": "convSet_R_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "num_data_valid" }} , 
 	{ "name": "convSet_R_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "fifo_cap" }} , 
 	{ "name": "convSet_R_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "empty_n" }} , 
 	{ "name": "convSet_R_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_0", "role": "read" }} , 
 	{ "name": "convSet_L_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "dout" }} , 
 	{ "name": "convSet_L_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "num_data_valid" }} , 
 	{ "name": "convSet_L_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "fifo_cap" }} , 
 	{ "name": "convSet_L_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "empty_n" }} , 
 	{ "name": "convSet_L_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_1", "role": "read" }} , 
 	{ "name": "convSet_R_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "dout" }} , 
 	{ "name": "convSet_R_1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "num_data_valid" }} , 
 	{ "name": "convSet_R_1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "fifo_cap" }} , 
 	{ "name": "convSet_R_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "empty_n" }} , 
 	{ "name": "convSet_R_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_1", "role": "read" }} , 
 	{ "name": "convSet_L_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "dout" }} , 
 	{ "name": "convSet_L_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "num_data_valid" }} , 
 	{ "name": "convSet_L_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "fifo_cap" }} , 
 	{ "name": "convSet_L_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "empty_n" }} , 
 	{ "name": "convSet_L_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_2", "role": "read" }} , 
 	{ "name": "convSet_R_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "dout" }} , 
 	{ "name": "convSet_R_2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "num_data_valid" }} , 
 	{ "name": "convSet_R_2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "fifo_cap" }} , 
 	{ "name": "convSet_R_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "empty_n" }} , 
 	{ "name": "convSet_R_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_2", "role": "read" }} , 
 	{ "name": "convSet_L_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "dout" }} , 
 	{ "name": "convSet_L_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "num_data_valid" }} , 
 	{ "name": "convSet_L_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "fifo_cap" }} , 
 	{ "name": "convSet_L_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "empty_n" }} , 
 	{ "name": "convSet_L_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_L_3", "role": "read" }} , 
 	{ "name": "convSet_R_3_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "dout" }} , 
 	{ "name": "convSet_R_3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "num_data_valid" }} , 
 	{ "name": "convSet_R_3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "fifo_cap" }} , 
 	{ "name": "convSet_R_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "empty_n" }} , 
 	{ "name": "convSet_R_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "convSet_R_3", "role": "read" }} , 
 	{ "name": "conv32_lcssa11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv32_lcssa11_out", "role": "default" }} , 
 	{ "name": "conv32_lcssa11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "conv32_lcssa11_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "SystemControl_Pipeline_VITIS_LOOP_529_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "722", "EstimateLatencyMax" : "722",
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
			{"Name" : "convSet_L_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_L_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_R_2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_R_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_L_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_L_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "convSet_R_3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "convSet_R_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv32_lcssa11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_529_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "24", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_fmax_double_s_fu_117", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_1_no_dsp_1_U6", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U7", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U8", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	SystemControl_Pipeline_VITIS_LOOP_529_3 {
		convSet_L_0 {Type I LastRead 1 FirstWrite -1}
		convSet_R_0 {Type I LastRead 1 FirstWrite -1}
		convSet_L_1 {Type I LastRead 1 FirstWrite -1}
		convSet_R_1 {Type I LastRead 1 FirstWrite -1}
		convSet_L_2 {Type I LastRead 1 FirstWrite -1}
		convSet_R_2 {Type I LastRead 1 FirstWrite -1}
		convSet_L_3 {Type I LastRead 1 FirstWrite -1}
		convSet_R_3 {Type I LastRead 1 FirstWrite -1}
		conv32_lcssa11_out {Type O LastRead -1 FirstWrite 0}}
	generic_fmax_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "722", "Max" : "722"}
	, {"Name" : "Interval", "Min" : "722", "Max" : "722"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	convSet_L_0 { ap_fifo {  { convSet_L_0_dout fifo_data_in 0 32 }  { convSet_L_0_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_L_0_fifo_cap fifo_update 0 3 }  { convSet_L_0_empty_n fifo_status 0 1 }  { convSet_L_0_read fifo_port_we 1 1 } } }
	convSet_R_0 { ap_fifo {  { convSet_R_0_dout fifo_data_in 0 32 }  { convSet_R_0_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_R_0_fifo_cap fifo_update 0 3 }  { convSet_R_0_empty_n fifo_status 0 1 }  { convSet_R_0_read fifo_port_we 1 1 } } }
	convSet_L_1 { ap_fifo {  { convSet_L_1_dout fifo_data_in 0 32 }  { convSet_L_1_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_L_1_fifo_cap fifo_update 0 3 }  { convSet_L_1_empty_n fifo_status 0 1 }  { convSet_L_1_read fifo_port_we 1 1 } } }
	convSet_R_1 { ap_fifo {  { convSet_R_1_dout fifo_data_in 0 32 }  { convSet_R_1_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_R_1_fifo_cap fifo_update 0 3 }  { convSet_R_1_empty_n fifo_status 0 1 }  { convSet_R_1_read fifo_port_we 1 1 } } }
	convSet_L_2 { ap_fifo {  { convSet_L_2_dout fifo_data_in 0 32 }  { convSet_L_2_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_L_2_fifo_cap fifo_update 0 3 }  { convSet_L_2_empty_n fifo_status 0 1 }  { convSet_L_2_read fifo_port_we 1 1 } } }
	convSet_R_2 { ap_fifo {  { convSet_R_2_dout fifo_data_in 0 32 }  { convSet_R_2_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_R_2_fifo_cap fifo_update 0 3 }  { convSet_R_2_empty_n fifo_status 0 1 }  { convSet_R_2_read fifo_port_we 1 1 } } }
	convSet_L_3 { ap_fifo {  { convSet_L_3_dout fifo_data_in 0 32 }  { convSet_L_3_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_L_3_fifo_cap fifo_update 0 3 }  { convSet_L_3_empty_n fifo_status 0 1 }  { convSet_L_3_read fifo_port_we 1 1 } } }
	convSet_R_3 { ap_fifo {  { convSet_R_3_dout fifo_data_in 0 32 }  { convSet_R_3_num_data_valid fifo_status_num_data_valid 0 3 }  { convSet_R_3_fifo_cap fifo_update 0 3 }  { convSet_R_3_empty_n fifo_status 0 1 }  { convSet_R_3_read fifo_port_we 1 1 } } }
	conv32_lcssa11_out { ap_vld {  { conv32_lcssa11_out out_data 1 32 }  { conv32_lcssa11_out_ap_vld out_vld 1 1 } } }
}
