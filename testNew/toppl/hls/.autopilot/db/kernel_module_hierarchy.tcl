set ModuleHierarchy {[{
"Name" : "TopPL","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "SystemControl_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_519_1_fu_144","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_519_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_543_6_fu_185","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_543_6","ID" : "5","Type" : "pipeline"},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_525_2","ID" : "6","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_529_3","ID" : "8","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_generic_fmax_double_s_fu_117","ID" : "9","Type" : "pipeline"},]},]},
		{"Name" : "grp_SystemControl_Pipeline_VITIS_LOOP_549_7_fu_175","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_549_7","ID" : "11","Type" : "pipeline"},]},]},]},
	{"Name" : "Send_U0","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_232_1","ID" : "13","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dataflow_parent_loop_proc_fu_168","ID" : "14","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_235_2","ID" : "15","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_235_2_U0","ID" : "16","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "send2AIE_U0","ID" : "17","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "18","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "19","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "20","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_8_U0","ID" : "21","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "22","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_8_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "23","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "24","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_9_U0","ID" : "25","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "26","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_9_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "27","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "28","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_10_U0","ID" : "29","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "30","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_10_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "31","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "32","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_11_U0","ID" : "33","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "34","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_11_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "35","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "36","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_12_U0","ID" : "37","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "38","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_12_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "39","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "40","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_13_U0","ID" : "41","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "42","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_13_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "43","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "44","Type" : "pipeline"},]},]},]},
						{"Name" : "send2AIE_14_U0","ID" : "45","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_102_1","ID" : "46","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_send2AIE_14_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "47","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_112_2","ID" : "48","Type" : "pipeline"},]},]},]},]},]},]},]},
		{"Name" : "VITIS_LOOP_253_3","ID" : "49","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_send2AIE_15_fu_252","ID" : "50","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_102_1","ID" : "51","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_send2AIE_15_Pipeline_VITIS_LOOP_112_2_fu_145","ID" : "52","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_112_2","ID" : "53","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "RoundRobin_U0","ID" : "54","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_DDR2FIFO_fu_255","ID" : "55","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_140_1","ID" : "56","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_150","ID" : "57","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_151_3","ID" : "58","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_159","ID" : "59","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_144_2","ID" : "60","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_168","ID" : "61","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_168_5","ID" : "62","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_177","ID" : "63","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_161_4","ID" : "64","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_186","ID" : "65","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_185_7","ID" : "66","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_195","ID" : "67","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_178_6","ID" : "68","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_204","ID" : "69","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_202_9","ID" : "70","Type" : "pipeline"},]},
			{"Name" : "grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_213","ID" : "71","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_195_8","ID" : "72","Type" : "pipeline"},]},]},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_368_1","ID" : "73","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_373_2","ID" : "74","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_377_3_fu_279","ID" : "75","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_377_3","ID" : "76","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_383_4_fu_287","ID" : "77","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_383_4","ID" : "78","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_389_5_fu_295","ID" : "79","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_389_5","ID" : "80","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_395_6_fu_303","ID" : "81","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_395_6","ID" : "82","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_402_7_fu_311","ID" : "83","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_402_7","ID" : "84","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_409_8_fu_319","ID" : "85","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_409_8","ID" : "86","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_415_9_fu_327","ID" : "87","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_415_9","ID" : "88","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_421_10_fu_335","ID" : "89","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_421_10","ID" : "90","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_458_12_fu_343","ID" : "91","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_458_12","ID" : "92","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_464_13_fu_351","ID" : "93","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_464_13","ID" : "94","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_470_14_fu_359","ID" : "95","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_470_14","ID" : "96","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_477_15_fu_367","ID" : "97","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_477_15","ID" : "98","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_484_16_fu_375","ID" : "99","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_484_16","ID" : "100","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_490_17_fu_383","ID" : "101","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_490_17","ID" : "102","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_496_18_fu_391","ID" : "103","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_496_18","ID" : "104","Type" : "pipeline"},]},
			{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_503_19_fu_399","ID" : "105","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_503_19","ID" : "106","Type" : "pipeline"},]},]},]},
		{"Name" : "VITIS_LOOP_282_1","ID" : "107","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_RoundRobin_Pipeline_VITIS_LOOP_283_2_fu_407","ID" : "108","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_283_2","ID" : "109","Type" : "pipeline"},]},]},]},
	{"Name" : "Receive_U0","ID" : "110","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_311_1","ID" : "111","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_dataflow_parent_loop_proc28_fu_184","ID" : "112","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_315_2","ID" : "113","Type" : "no",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_VITIS_LOOP_315_2_1_U0","ID" : "114","Type" : "dataflow",
						"SubInsts" : [
						{"Name" : "print_int_U0","ID" : "115","Type" : "sequential"},
						{"Name" : "receive4AIE_U0","ID" : "116","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "117","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "118","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "119","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_7_U0","ID" : "120","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "121","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "122","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "123","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_1_U0","ID" : "124","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "125","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "126","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "127","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_6_U0","ID" : "128","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "129","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "130","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "131","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_2_U0","ID" : "132","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "133","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "134","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "135","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_5_U0","ID" : "136","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "137","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "138","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "139","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_3_U0","ID" : "140","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "141","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "142","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "143","Type" : "pipeline"},]},]},]},
						{"Name" : "receive4AIE_4_U0","ID" : "144","Type" : "sequential",
							"SubLoops" : [
							{"Name" : "VITIS_LOOP_69_1","ID" : "145","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158","ID" : "146","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "VITIS_LOOP_76_2","ID" : "147","Type" : "pipeline"},]},]},]},
						{"Name" : "Block_newFuncRoot_proc_proc_U0","ID" : "148","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc30_U0","ID" : "149","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc32_U0","ID" : "150","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc34_U0","ID" : "151","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc36_U0","ID" : "152","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc38_U0","ID" : "153","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc40_U0","ID" : "154","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc42_U0","ID" : "155","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc29_U0","ID" : "156","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc31_U0","ID" : "157","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc33_U0","ID" : "158","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc35_U0","ID" : "159","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc37_U0","ID" : "160","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc39_U0","ID" : "161","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc41_U0","ID" : "162","Type" : "sequential"},
						{"Name" : "Block_newFuncRoot_proc_proc43_U0","ID" : "163","Type" : "sequential"},]},]},]},]},
		{"Name" : "VITIS_LOOP_273_1","ID" : "164","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_receive4DDR_fu_284","ID" : "165","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_32_1","ID" : "166","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_receive4DDR_Pipeline_VITIS_LOOP_39_2_fu_119","ID" : "167","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_39_2","ID" : "168","Type" : "pipeline"},]},]},]},]},]},]
}]}