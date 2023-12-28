set SynModuleInfo {
  {SRCNAME dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2 MODELNAME dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2 RTLNAME dma_dma_Pipeline_VITIS_LOOP_39_1_VITIS_LOOP_41_2
    SUBMODULES {
      {MODELNAME dma_flow_control_loop_pipe_sequential_init RTLNAME dma_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dma_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2 MODELNAME dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2 RTLNAME dma_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2}
  {SRCNAME receive_Pipeline_VITIS_LOOP_78_1 MODELNAME receive_Pipeline_VITIS_LOOP_78_1 RTLNAME dma_receive_Pipeline_VITIS_LOOP_78_1}
  {SRCNAME receive_Pipeline_VITIS_LOOP_83_2 MODELNAME receive_Pipeline_VITIS_LOOP_83_2 RTLNAME dma_receive_Pipeline_VITIS_LOOP_83_2}
  {SRCNAME receive_Pipeline_VITIS_LOOP_88_3 MODELNAME receive_Pipeline_VITIS_LOOP_88_3 RTLNAME dma_receive_Pipeline_VITIS_LOOP_88_3}
  {SRCNAME receive_Pipeline_VITIS_LOOP_93_4 MODELNAME receive_Pipeline_VITIS_LOOP_93_4 RTLNAME dma_receive_Pipeline_VITIS_LOOP_93_4}
  {SRCNAME receive MODELNAME receive RTLNAME dma_receive}
  {SRCNAME dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2 MODELNAME dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2 RTLNAME dma_dma_Pipeline_VITIS_LOOP_101_1_VITIS_LOOP_103_2}
  {SRCNAME dma MODELNAME dma RTLNAME dma IS_TOP 1
    SUBMODULES {
      {MODELNAME dma_dataManager_RAM_AUTO_1R1W RTLNAME dma_dataManager_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dma_gmem0_m_axi RTLNAME dma_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dma_gmem2_m_axi RTLNAME dma_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dma_control_s_axi RTLNAME dma_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME dma_regslice_both RTLNAME dma_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME dma_regslice_both_U}
    }
  }
}
