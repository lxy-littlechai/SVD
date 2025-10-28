set ModuleHierarchy {[{
"Name" : "TopPL","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "SystemControl_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_369_1_fu_136","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_369_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_395_7_fu_169","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_395_7","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_375_2","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_379_3_fu_146","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_379_3","ID" : "8","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_generic_fmax_double_s_fu_85","ID" : "9","Type" : "pipeline"},]},]},
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_401_8_fu_159","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_401_8","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "Send_U0","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_204_1","ID" : "13","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dataflow_parent_loop_proc_fu_139","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_207_2","ID" : "15","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_207_2_U0","ID" : "16","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "send2AIE_U0","ID" : "17","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_126","ID" : "18","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_112_2","ID" : "19","Type" : "pipeline"},]},]},
						{"Name" : "send2AIE_4_U0","ID" : "20","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_4_Pipeline_VITIS_LOOP_112_2_fu_126","ID" : "21","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_112_2","ID" : "22","Type" : "pipeline"},]},]},
						{"Name" : "send2AIE_5_U0","ID" : "23","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_5_Pipeline_VITIS_LOOP_112_2_fu_126","ID" : "24","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_112_2","ID" : "25","Type" : "pipeline"},]},]},
						{"Name" : "send2AIE_6_U0","ID" : "26","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_6_Pipeline_VITIS_LOOP_112_2_fu_126","ID" : "27","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_112_2","ID" : "28","Type" : "pipeline"},]},]},]},]},]},]},
		{"Name" : "VITIS_LOOP_217_3","ID" : "29","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_219_5","ID" : "30","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_send2AIE_7_fu_183","ID" : "31","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_send2AIE_7_Pipeline_VITIS_LOOP_112_2_fu_126","ID" : "32","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_112_2","ID" : "33","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "RoundRobin_U0","ID" : "34","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_140_1","ID" : "35","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_153_4_VITIS_LOOP_154_5_fu_248","ID" : "36","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_153_4_VITIS_LOOP_154_5","ID" : "37","Type" : "pipeline"},]},
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_144_2_VITIS_LOOP_145_3_fu_259","ID" : "38","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_144_2_VITIS_LOOP_145_3","ID" : "39","Type" : "pipeline"},]},]},
		{"Name" : "VITIS_LOOP_288_1","ID" : "40","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_293_2","ID" : "41","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_297_3_fu_270","ID" : "42","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_297_3","ID" : "43","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_307_5_fu_282","ID" : "44","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_307_5","ID" : "45","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_321_7_fu_294","ID" : "46","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_321_7","ID" : "47","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_337_9_fu_314","ID" : "48","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_337_9","ID" : "49","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_348_11_fu_326","ID" : "50","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_348_11","ID" : "51","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_179_1","ID" : "52","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_180_2_fu_338","ID" : "53","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_180_2","ID" : "54","Type" : "pipeline"},]},]},]},
	{"Name" : "Receive_U0","ID" : "55","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_246_1","ID" : "56","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dataflow_parent_loop_proc16_fu_149","ID" : "57","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_250_2","ID" : "58","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_250_2_1_U0","ID" : "59","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "print_int_U0","ID" : "60","Type" : "sequential"},
						{"Name" : "receive4AIE_1_U0","ID" : "61","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_116","ID" : "62","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_76_2","ID" : "63","Type" : "pipeline"},]},]},
						{"Name" : "receive4AIE_2_U0","ID" : "64","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_116","ID" : "65","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_76_2","ID" : "66","Type" : "pipeline"},]},]},
						{"Name" : "receive4AIE_U0","ID" : "67","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_116","ID" : "68","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_76_2","ID" : "69","Type" : "pipeline"},]},]},
						{"Name" : "receive4AIE_3_U0","ID" : "70","Type" : "sequential",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_116","ID" : "71","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "VITIS_LOOP_76_2","ID" : "72","Type" : "pipeline"},]},]},
						{"Name" : "Block_newFuncRoot_proc_proc_U0","ID" : "73","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc18_U0","ID" : "74","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc20_U0","ID" : "75","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc22_U0","ID" : "76","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc17_U0","ID" : "77","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc19_U0","ID" : "78","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc21_U0","ID" : "79","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc23_U0","ID" : "80","Type" : "sequential"},]},]},]},]},
		{"Name" : "VITIS_LOOP_168_1","ID" : "81","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_169_2","ID" : "82","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_receive4DDR_fu_201","ID" : "83","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_85","ID" : "84","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_39_2","ID" : "85","Type" : "pipeline"},]},]},]},]},]},]
}]}