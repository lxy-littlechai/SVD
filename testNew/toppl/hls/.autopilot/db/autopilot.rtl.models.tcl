set SynModuleInfo {
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_519_1 MODELNAME SystemControl_Pipeline_VITIS_LOOP_519_1 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_519_1
    SUBMODULES {
      {MODELNAME TopPL_flow_control_loop_pipe_sequential_init RTLNAME TopPL_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME TopPL_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME generic_fmax<double> MODELNAME generic_fmax_double_s RTLNAME TopPL_generic_fmax_double_s}
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_529_3 MODELNAME SystemControl_Pipeline_VITIS_LOOP_529_3 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_529_3
    SUBMODULES {
      {MODELNAME TopPL_fptrunc_64ns_32_1_no_dsp_1 RTLNAME TopPL_fptrunc_64ns_32_1_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TopPL_fpext_32ns_64_1_no_dsp_1 RTLNAME TopPL_fpext_32ns_64_1_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_549_7 MODELNAME SystemControl_Pipeline_VITIS_LOOP_549_7 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_549_7}
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_543_6 MODELNAME SystemControl_Pipeline_VITIS_LOOP_543_6 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_543_6}
  {SRCNAME SystemControl MODELNAME SystemControl RTLNAME TopPL_SystemControl
    SUBMODULES {
      {MODELNAME TopPL_fcmp_32ns_32ns_1_1_no_dsp_1 RTLNAME TopPL_fcmp_32ns_32ns_1_1_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TopPL_printdouble RTLNAME TopPL_printdouble BINDTYPE op TYPE printdouble IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME send2AIE_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE MODELNAME send2AIE RTLNAME TopPL_send2AIE
    SUBMODULES {
      {MODELNAME TopPL_send2AIE_data_temp_RAM_AUTO_1R1W RTLNAME TopPL_send2AIE_data_temp_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME send2AIE.8_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_8_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_8_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.8 MODELNAME send2AIE_8 RTLNAME TopPL_send2AIE_8}
  {SRCNAME send2AIE.9_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_9_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_9_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.9 MODELNAME send2AIE_9 RTLNAME TopPL_send2AIE_9}
  {SRCNAME send2AIE.10_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_10_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_10_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.10 MODELNAME send2AIE_10 RTLNAME TopPL_send2AIE_10}
  {SRCNAME send2AIE.11_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_11_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_11_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.11 MODELNAME send2AIE_11 RTLNAME TopPL_send2AIE_11}
  {SRCNAME send2AIE.12_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_12_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_12_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.12 MODELNAME send2AIE_12 RTLNAME TopPL_send2AIE_12}
  {SRCNAME send2AIE.13_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_13_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_13_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.13 MODELNAME send2AIE_13 RTLNAME TopPL_send2AIE_13}
  {SRCNAME send2AIE.14_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_14_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_14_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.14 MODELNAME send2AIE_14 RTLNAME TopPL_send2AIE_14}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_235_2 MODELNAME dataflow_in_loop_VITIS_LOOP_235_2 RTLNAME TopPL_dataflow_in_loop_VITIS_LOOP_235_2}
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME TopPL_dataflow_parent_loop_proc}
  {SRCNAME send2AIE.15_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_15_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_15_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.15 MODELNAME send2AIE_15 RTLNAME TopPL_send2AIE_15}
  {SRCNAME Send MODELNAME Send RTLNAME TopPL_Send
    SUBMODULES {
      {MODELNAME TopPL_regslice_both RTLNAME TopPL_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME TopPL_regslice_both_U}
    }
  }
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_151_3 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_151_3 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_151_3}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_144_2 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_144_2 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_144_2}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_168_5 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_168_5 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_168_5}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_161_4 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_161_4 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_161_4}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_185_7 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_185_7 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_185_7}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_178_6 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_178_6 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_178_6}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_202_9 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_202_9 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_202_9}
  {SRCNAME DDR2FIFO_Pipeline_VITIS_LOOP_195_8 MODELNAME DDR2FIFO_Pipeline_VITIS_LOOP_195_8 RTLNAME TopPL_DDR2FIFO_Pipeline_VITIS_LOOP_195_8}
  {SRCNAME DDR2FIFO MODELNAME DDR2FIFO RTLNAME TopPL_DDR2FIFO}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_377_3 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_377_3 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_377_3}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_383_4 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_383_4 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_383_4}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_389_5 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_389_5 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_389_5}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_395_6 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_395_6 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_395_6}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_402_7 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_402_7 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_402_7}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_409_8 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_409_8 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_409_8}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_415_9 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_415_9 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_415_9}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_421_10 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_421_10 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_421_10}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_458_12 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_458_12 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_458_12}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_464_13 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_464_13 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_464_13}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_470_14 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_470_14 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_470_14}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_477_15 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_477_15 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_477_15}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_484_16 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_484_16 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_484_16}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_490_17 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_490_17 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_490_17}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_496_18 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_496_18 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_496_18}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_503_19 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_503_19 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_503_19}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_283_2 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_283_2 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_283_2}
  {SRCNAME RoundRobin MODELNAME RoundRobin RTLNAME TopPL_RoundRobin
    SUBMODULES {
      {MODELNAME TopPL_printint RTLNAME TopPL_printint BINDTYPE op TYPE printint IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME print<int> MODELNAME print_int_s RTLNAME TopPL_print_int_s}
  {SRCNAME receive4AIE_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE MODELNAME receive4AIE RTLNAME TopPL_receive4AIE}
  {SRCNAME receive4AIE.7_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_7_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_7_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.7 MODELNAME receive4AIE_7 RTLNAME TopPL_receive4AIE_7}
  {SRCNAME receive4AIE.1_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_1_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_1_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.1 MODELNAME receive4AIE_1 RTLNAME TopPL_receive4AIE_1}
  {SRCNAME receive4AIE.6_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_6_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_6_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.6 MODELNAME receive4AIE_6 RTLNAME TopPL_receive4AIE_6}
  {SRCNAME receive4AIE.2_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_2_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_2_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.2 MODELNAME receive4AIE_2 RTLNAME TopPL_receive4AIE_2}
  {SRCNAME receive4AIE.5_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_5_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_5_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.5 MODELNAME receive4AIE_5 RTLNAME TopPL_receive4AIE_5}
  {SRCNAME receive4AIE.3_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_3_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_3_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.3 MODELNAME receive4AIE_3 RTLNAME TopPL_receive4AIE_3}
  {SRCNAME receive4AIE.4_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_4_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_4_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.4 MODELNAME receive4AIE_4 RTLNAME TopPL_receive4AIE_4}
  {SRCNAME Block_newFuncRoot_proc_proc MODELNAME Block_newFuncRoot_proc_proc RTLNAME TopPL_Block_newFuncRoot_proc_proc}
  {SRCNAME Block_newFuncRoot_proc_proc29 MODELNAME Block_newFuncRoot_proc_proc29 RTLNAME TopPL_Block_newFuncRoot_proc_proc29}
  {SRCNAME Block_newFuncRoot_proc_proc30 MODELNAME Block_newFuncRoot_proc_proc30 RTLNAME TopPL_Block_newFuncRoot_proc_proc30}
  {SRCNAME Block_newFuncRoot_proc_proc31 MODELNAME Block_newFuncRoot_proc_proc31 RTLNAME TopPL_Block_newFuncRoot_proc_proc31}
  {SRCNAME Block_newFuncRoot_proc_proc32 MODELNAME Block_newFuncRoot_proc_proc32 RTLNAME TopPL_Block_newFuncRoot_proc_proc32}
  {SRCNAME Block_newFuncRoot_proc_proc33 MODELNAME Block_newFuncRoot_proc_proc33 RTLNAME TopPL_Block_newFuncRoot_proc_proc33}
  {SRCNAME Block_newFuncRoot_proc_proc34 MODELNAME Block_newFuncRoot_proc_proc34 RTLNAME TopPL_Block_newFuncRoot_proc_proc34}
  {SRCNAME Block_newFuncRoot_proc_proc35 MODELNAME Block_newFuncRoot_proc_proc35 RTLNAME TopPL_Block_newFuncRoot_proc_proc35}
  {SRCNAME Block_newFuncRoot_proc_proc36 MODELNAME Block_newFuncRoot_proc_proc36 RTLNAME TopPL_Block_newFuncRoot_proc_proc36}
  {SRCNAME Block_newFuncRoot_proc_proc37 MODELNAME Block_newFuncRoot_proc_proc37 RTLNAME TopPL_Block_newFuncRoot_proc_proc37}
  {SRCNAME Block_newFuncRoot_proc_proc38 MODELNAME Block_newFuncRoot_proc_proc38 RTLNAME TopPL_Block_newFuncRoot_proc_proc38}
  {SRCNAME Block_newFuncRoot_proc_proc39 MODELNAME Block_newFuncRoot_proc_proc39 RTLNAME TopPL_Block_newFuncRoot_proc_proc39}
  {SRCNAME Block_newFuncRoot_proc_proc40 MODELNAME Block_newFuncRoot_proc_proc40 RTLNAME TopPL_Block_newFuncRoot_proc_proc40}
  {SRCNAME Block_newFuncRoot_proc_proc41 MODELNAME Block_newFuncRoot_proc_proc41 RTLNAME TopPL_Block_newFuncRoot_proc_proc41}
  {SRCNAME Block_newFuncRoot_proc_proc42 MODELNAME Block_newFuncRoot_proc_proc42 RTLNAME TopPL_Block_newFuncRoot_proc_proc42}
  {SRCNAME Block_newFuncRoot_proc_proc43 MODELNAME Block_newFuncRoot_proc_proc43 RTLNAME TopPL_Block_newFuncRoot_proc_proc43}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_315_2.1 MODELNAME dataflow_in_loop_VITIS_LOOP_315_2_1 RTLNAME TopPL_dataflow_in_loop_VITIS_LOOP_315_2_1
    SUBMODULES {
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convL0_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convR0_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convL1_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convR1_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convL2_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convR2_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convL3_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convR3_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_153_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_152_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_151_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_150_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_149_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_148_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_147_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc28 MODELNAME dataflow_parent_loop_proc28 RTLNAME TopPL_dataflow_parent_loop_proc28}
  {SRCNAME receive4DDR_Pipeline_VITIS_LOOP_39_2 MODELNAME receive4DDR_Pipeline_VITIS_LOOP_39_2 RTLNAME TopPL_receive4DDR_Pipeline_VITIS_LOOP_39_2}
  {SRCNAME receive4DDR MODELNAME receive4DDR RTLNAME TopPL_receive4DDR}
  {SRCNAME Receive MODELNAME Receive RTLNAME TopPL_Receive}
  {SRCNAME TopPL MODELNAME TopPL RTLNAME TopPL IS_TOP 1
    SUBMODULES {
      {MODELNAME TopPL_fifo_w1_d4_S RTLNAME TopPL_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME syscontrol_U}
      {MODELNAME TopPL_fifo_w1_d4_S RTLNAME TopPL_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME syscontrol_1_U}
      {MODELNAME TopPL_fifo_w1_d4_S RTLNAME TopPL_fifo_w1_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME syscontrol_2_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_L_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_L_1_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_L_2_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_L_3_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_R_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_R_1_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_R_2_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_R_3_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_L_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_L_1_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_L_2_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_L_3_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_R_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_R_1_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_R_2_U}
      {MODELNAME TopPL_fifo_w128_d32_B RTLNAME TopPL_fifo_w128_d32_B BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_R_3_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_L_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_L_1_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_L_2_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_L_3_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_R_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_R_1_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_R_2_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_R_3_U}
      {MODELNAME TopPL_start_for_Send_U0 RTLNAME TopPL_start_for_Send_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Send_U0_U}
      {MODELNAME TopPL_start_for_Receive_U0 RTLNAME TopPL_start_for_Receive_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_Receive_U0_U}
      {MODELNAME TopPL_gmem0_m_axi RTLNAME TopPL_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_gmem1_m_axi RTLNAME TopPL_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_gmem2_m_axi RTLNAME TopPL_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_gmem3_m_axi RTLNAME TopPL_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME TopPL_control_s_axi RTLNAME TopPL_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
