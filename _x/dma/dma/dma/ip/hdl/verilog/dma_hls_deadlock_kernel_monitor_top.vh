
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [7:0] axis_block_sigs;
wire [6:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203.tx_0_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203.tx_1_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203.tx_2_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203.tx_3_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68.rx_0_TDATA_blk_n;
assign axis_block_sigs[5] = ~grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82.rx_1_TDATA_blk_n;
assign axis_block_sigs[6] = ~grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96.rx_2_TDATA_blk_n;
assign axis_block_sigs[7] = ~grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110.rx_3_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_dma_Pipeline_VITIS_LOOP_51_1_VITIS_LOOP_53_2_fu_203.ap_idle;
assign inst_idle_sigs[2] = grp_receive_fu_240.ap_idle;
assign inst_idle_sigs[3] = grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_78_1_fu_68.ap_idle;
assign inst_idle_sigs[4] = grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_83_2_fu_82.ap_idle;
assign inst_idle_sigs[5] = grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_88_3_fu_96.ap_idle;
assign inst_idle_sigs[6] = grp_receive_fu_240.grp_receive_Pipeline_VITIS_LOOP_93_4_fu_110.ap_idle;

dma_hls_deadlock_idx0_monitor dma_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
