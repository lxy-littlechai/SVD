set SynModuleInfo {
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_395_1 MODELNAME SystemControl_Pipeline_VITIS_LOOP_395_1 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_395_1
    SUBMODULES {
      {MODELNAME TopPL_flow_control_loop_pipe_sequential_init RTLNAME TopPL_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME TopPL_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME generic_fmax<double> MODELNAME generic_fmax_double_s RTLNAME TopPL_generic_fmax_double_s}
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_405_3 MODELNAME SystemControl_Pipeline_VITIS_LOOP_405_3 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_405_3
    SUBMODULES {
      {MODELNAME TopPL_fptrunc_64ns_32_1_no_dsp_1 RTLNAME TopPL_fptrunc_64ns_32_1_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME TopPL_fpext_32ns_64_1_no_dsp_1 RTLNAME TopPL_fpext_32ns_64_1_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_425_7 MODELNAME SystemControl_Pipeline_VITIS_LOOP_425_7 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_425_7}
  {SRCNAME SystemControl_Pipeline_VITIS_LOOP_419_6 MODELNAME SystemControl_Pipeline_VITIS_LOOP_419_6 RTLNAME TopPL_SystemControl_Pipeline_VITIS_LOOP_419_6}
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
  {SRCNAME send2AIE.4_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_4_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_4_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.4 MODELNAME send2AIE_4 RTLNAME TopPL_send2AIE_4}
  {SRCNAME send2AIE.5_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_5_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_5_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.5 MODELNAME send2AIE_5 RTLNAME TopPL_send2AIE_5}
  {SRCNAME send2AIE.6_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_6_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_6_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.6 MODELNAME send2AIE_6 RTLNAME TopPL_send2AIE_6}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_197_2 MODELNAME dataflow_in_loop_VITIS_LOOP_197_2 RTLNAME TopPL_dataflow_in_loop_VITIS_LOOP_197_2}
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME TopPL_dataflow_parent_loop_proc}
  {SRCNAME send2AIE.7_Pipeline_VITIS_LOOP_112_2 MODELNAME send2AIE_7_Pipeline_VITIS_LOOP_112_2 RTLNAME TopPL_send2AIE_7_Pipeline_VITIS_LOOP_112_2}
  {SRCNAME send2AIE.7 MODELNAME send2AIE_7 RTLNAME TopPL_send2AIE_7}
  {SRCNAME Send MODELNAME Send RTLNAME TopPL_Send
    SUBMODULES {
      {MODELNAME TopPL_regslice_both RTLNAME TopPL_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME TopPL_regslice_both_U}
    }
  }
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_151_3 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_151_3 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_151_3}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_144_2 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_144_2 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_144_2}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_168_5 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_168_5 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_168_5}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_161_4 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_161_4 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_161_4}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_311_3 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_311_3 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_311_3}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_317_4 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_317_4 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_317_4}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_324_5 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_324_5 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_324_5}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_331_6 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_331_6 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_331_6}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_341_7 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_341_7 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_341_7}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_358_8 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_358_8 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_358_8}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_365_9 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_365_9 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_365_9}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_372_10 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_372_10 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_372_10}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_379_11 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_379_11 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_379_11}
  {SRCNAME RoundRobin_Pipeline_VITIS_LOOP_233_2 MODELNAME RoundRobin_Pipeline_VITIS_LOOP_233_2 RTLNAME TopPL_RoundRobin_Pipeline_VITIS_LOOP_233_2}
  {SRCNAME RoundRobin MODELNAME RoundRobin RTLNAME TopPL_RoundRobin
    SUBMODULES {
      {MODELNAME TopPL_printint RTLNAME TopPL_printint BINDTYPE op TYPE printint IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME print<int> MODELNAME print_int_s RTLNAME TopPL_print_int_s}
  {SRCNAME receive4AIE_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE MODELNAME receive4AIE RTLNAME TopPL_receive4AIE}
  {SRCNAME receive4AIE.3_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_3_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_3_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.3 MODELNAME receive4AIE_3 RTLNAME TopPL_receive4AIE_3}
  {SRCNAME receive4AIE.1_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_1_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_1_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.1 MODELNAME receive4AIE_1 RTLNAME TopPL_receive4AIE_1}
  {SRCNAME receive4AIE.2_Pipeline_VITIS_LOOP_76_2 MODELNAME receive4AIE_2_Pipeline_VITIS_LOOP_76_2 RTLNAME TopPL_receive4AIE_2_Pipeline_VITIS_LOOP_76_2}
  {SRCNAME receive4AIE.2 MODELNAME receive4AIE_2 RTLNAME TopPL_receive4AIE_2}
  {SRCNAME Block_newFuncRoot_proc_proc MODELNAME Block_newFuncRoot_proc_proc RTLNAME TopPL_Block_newFuncRoot_proc_proc}
  {SRCNAME Block_newFuncRoot_proc_proc17 MODELNAME Block_newFuncRoot_proc_proc17 RTLNAME TopPL_Block_newFuncRoot_proc_proc17}
  {SRCNAME Block_newFuncRoot_proc_proc18 MODELNAME Block_newFuncRoot_proc_proc18 RTLNAME TopPL_Block_newFuncRoot_proc_proc18}
  {SRCNAME Block_newFuncRoot_proc_proc19 MODELNAME Block_newFuncRoot_proc_proc19 RTLNAME TopPL_Block_newFuncRoot_proc_proc19}
  {SRCNAME Block_newFuncRoot_proc_proc20 MODELNAME Block_newFuncRoot_proc_proc20 RTLNAME TopPL_Block_newFuncRoot_proc_proc20}
  {SRCNAME Block_newFuncRoot_proc_proc21 MODELNAME Block_newFuncRoot_proc_proc21 RTLNAME TopPL_Block_newFuncRoot_proc_proc21}
  {SRCNAME Block_newFuncRoot_proc_proc22 MODELNAME Block_newFuncRoot_proc_proc22 RTLNAME TopPL_Block_newFuncRoot_proc_proc22}
  {SRCNAME Block_newFuncRoot_proc_proc23 MODELNAME Block_newFuncRoot_proc_proc23 RTLNAME TopPL_Block_newFuncRoot_proc_proc23}
  {SRCNAME dataflow_in_loop_VITIS_LOOP_261_2.1 MODELNAME dataflow_in_loop_VITIS_LOOP_261_2_1 RTLNAME TopPL_dataflow_in_loop_VITIS_LOOP_261_2_1
    SUBMODULES {
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convL0_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convR0_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convL1_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convR1_channel_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_112_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_111_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_110_U}
      {MODELNAME TopPL_fifo_w32_d2_S RTLNAME TopPL_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME empty_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc16 MODELNAME dataflow_parent_loop_proc16 RTLNAME TopPL_dataflow_parent_loop_proc16}
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
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_R_U}
      {MODELNAME TopPL_fifo_w32_d4_S RTLNAME TopPL_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME convSet_R_1_U}
      {MODELNAME TopPL_fifo_w128_d32_B_with_almost RTLNAME TopPL_fifo_w128_d32_B_with_almost BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_L_U}
      {MODELNAME TopPL_fifo_w128_d32_B_with_almost RTLNAME TopPL_fifo_w128_d32_B_with_almost BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_L_1_U}
      {MODELNAME TopPL_fifo_w128_d32_B_with_almost RTLNAME TopPL_fifo_w128_d32_B_with_almost BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_R_U}
      {MODELNAME TopPL_fifo_w128_d32_B_with_almost RTLNAME TopPL_fifo_w128_d32_B_with_almost BINDTYPE storage TYPE fifo IMPL bram ALLOW_PRAGMA 1 INSTNAME send_fifo_R_1_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_L_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_L_1_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_R_U}
      {MODELNAME TopPL_fifo_w128_d256_U RTLNAME TopPL_fifo_w128_d256_U BINDTYPE storage TYPE fifo IMPL uram ALLOW_PRAGMA 1 INSTNAME receive_fifo_R_1_U}
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
