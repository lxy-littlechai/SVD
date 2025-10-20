`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx24_monitor ( // for module TopPL_TopPL_inst.Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0
    input wire clock,
    input wire reset,
    input wire [35:0] axis_block_sigs,
    input wire [81:0] inst_idle_sigs,
    input wire [38:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx25_block;
wire idx27_block;
wire idx29_block;
wire idx31_block;
wire idx33_block;
wire idx35_block;
wire idx37_block;
wire idx39_block;
wire [24:0] process_idle_vec;
wire [24:0] process_chan_block_vec;
wire [24:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign process_axis_block_vec[0] = 1'b0;
assign process_idle_vec[0] = inst_idle_sigs[14];
assign process_chan_block_vec[0] = inst_block_sigs[14];
assign process_axis_block_vec[1] = idx25_block & (1'b0 | axis_block_sigs[18] | axis_block_sigs[19]);
assign process_idle_vec[1] = inst_idle_sigs[15];
assign process_chan_block_vec[1] = inst_block_sigs[15];
assign process_axis_block_vec[2] = idx27_block & (1'b0 | axis_block_sigs[20] | axis_block_sigs[21]);
assign process_idle_vec[2] = inst_idle_sigs[16];
assign process_chan_block_vec[2] = inst_block_sigs[16];
assign process_axis_block_vec[3] = idx29_block & (1'b0 | axis_block_sigs[22] | axis_block_sigs[23]);
assign process_idle_vec[3] = inst_idle_sigs[17];
assign process_chan_block_vec[3] = inst_block_sigs[17];
assign process_axis_block_vec[4] = idx31_block & (1'b0 | axis_block_sigs[24] | axis_block_sigs[25]);
assign process_idle_vec[4] = inst_idle_sigs[18];
assign process_chan_block_vec[4] = inst_block_sigs[18];
assign process_axis_block_vec[5] = idx33_block & (1'b0 | axis_block_sigs[26] | axis_block_sigs[27]);
assign process_idle_vec[5] = inst_idle_sigs[19];
assign process_chan_block_vec[5] = inst_block_sigs[19];
assign process_axis_block_vec[6] = idx35_block & (1'b0 | axis_block_sigs[28] | axis_block_sigs[29]);
assign process_idle_vec[6] = inst_idle_sigs[20];
assign process_chan_block_vec[6] = inst_block_sigs[20];
assign process_axis_block_vec[7] = idx37_block & (1'b0 | axis_block_sigs[30] | axis_block_sigs[31]);
assign process_idle_vec[7] = inst_idle_sigs[21];
assign process_chan_block_vec[7] = inst_block_sigs[21];
assign process_axis_block_vec[8] = idx39_block & (1'b0 | axis_block_sigs[32] | axis_block_sigs[33]);
assign process_idle_vec[8] = inst_idle_sigs[22];
assign process_chan_block_vec[8] = inst_block_sigs[22];
assign process_axis_block_vec[9] = 1'b0;
assign process_idle_vec[9] = inst_idle_sigs[23];
assign process_chan_block_vec[9] = inst_block_sigs[23];
assign process_axis_block_vec[10] = 1'b0;
assign process_idle_vec[10] = inst_idle_sigs[24];
assign process_chan_block_vec[10] = inst_block_sigs[24];
assign process_axis_block_vec[11] = 1'b0;
assign process_idle_vec[11] = inst_idle_sigs[25];
assign process_chan_block_vec[11] = inst_block_sigs[25];
assign process_axis_block_vec[12] = 1'b0;
assign process_idle_vec[12] = inst_idle_sigs[26];
assign process_chan_block_vec[12] = inst_block_sigs[26];
assign process_axis_block_vec[13] = 1'b0;
assign process_idle_vec[13] = inst_idle_sigs[27];
assign process_chan_block_vec[13] = inst_block_sigs[27];
assign process_axis_block_vec[14] = 1'b0;
assign process_idle_vec[14] = inst_idle_sigs[28];
assign process_chan_block_vec[14] = inst_block_sigs[28];
assign process_axis_block_vec[15] = 1'b0;
assign process_idle_vec[15] = inst_idle_sigs[29];
assign process_chan_block_vec[15] = inst_block_sigs[29];
assign process_axis_block_vec[16] = 1'b0;
assign process_idle_vec[16] = inst_idle_sigs[30];
assign process_chan_block_vec[16] = inst_block_sigs[30];
assign process_axis_block_vec[17] = 1'b0;
assign process_idle_vec[17] = inst_idle_sigs[31];
assign process_chan_block_vec[17] = inst_block_sigs[31];
assign process_axis_block_vec[18] = 1'b0;
assign process_idle_vec[18] = inst_idle_sigs[32];
assign process_chan_block_vec[18] = inst_block_sigs[32];
assign process_axis_block_vec[19] = 1'b0;
assign process_idle_vec[19] = inst_idle_sigs[33];
assign process_chan_block_vec[19] = inst_block_sigs[33];
assign process_axis_block_vec[20] = 1'b0;
assign process_idle_vec[20] = inst_idle_sigs[34];
assign process_chan_block_vec[20] = inst_block_sigs[34];
assign process_axis_block_vec[21] = 1'b0;
assign process_idle_vec[21] = inst_idle_sigs[35];
assign process_chan_block_vec[21] = inst_block_sigs[35];
assign process_axis_block_vec[22] = 1'b0;
assign process_idle_vec[22] = inst_idle_sigs[36];
assign process_chan_block_vec[22] = inst_block_sigs[36];
assign process_axis_block_vec[23] = 1'b0;
assign process_idle_vec[23] = inst_idle_sigs[37];
assign process_chan_block_vec[23] = inst_block_sigs[37];
assign process_axis_block_vec[24] = 1'b0;
assign process_idle_vec[24] = inst_idle_sigs[38];
assign process_chan_block_vec[24] = inst_block_sigs[38];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]) & (process_idle_vec[6] | process_chan_block_vec[6] | process_axis_block_vec[6]) & (process_idle_vec[7] | process_chan_block_vec[7] | process_axis_block_vec[7]) & (process_idle_vec[8] | process_chan_block_vec[8] | process_axis_block_vec[8]) & (process_idle_vec[9] | process_chan_block_vec[9] | process_axis_block_vec[9]) & (process_idle_vec[10] | process_chan_block_vec[10] | process_axis_block_vec[10]) & (process_idle_vec[11] | process_chan_block_vec[11] | process_axis_block_vec[11]) & (process_idle_vec[12] | process_chan_block_vec[12] | process_axis_block_vec[12]) & (process_idle_vec[13] | process_chan_block_vec[13] | process_axis_block_vec[13]) & (process_idle_vec[14] | process_chan_block_vec[14] | process_axis_block_vec[14]) & (process_idle_vec[15] | process_chan_block_vec[15] | process_axis_block_vec[15]) & (process_idle_vec[16] | process_chan_block_vec[16] | process_axis_block_vec[16]) & (process_idle_vec[17] | process_chan_block_vec[17] | process_axis_block_vec[17]) & (process_idle_vec[18] | process_chan_block_vec[18] | process_axis_block_vec[18]) & (process_idle_vec[19] | process_chan_block_vec[19] | process_axis_block_vec[19]) & (process_idle_vec[20] | process_chan_block_vec[20] | process_axis_block_vec[20]) & (process_idle_vec[21] | process_chan_block_vec[21] | process_axis_block_vec[21]) & (process_idle_vec[22] | process_chan_block_vec[22] | process_axis_block_vec[22]) & (process_idle_vec[23] | process_chan_block_vec[23] | process_axis_block_vec[23]) & (process_idle_vec[24] | process_chan_block_vec[24] | process_axis_block_vec[24]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx25_monitor TopPL_hls_deadlock_idx25_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx25_block)
);

 TopPL_hls_deadlock_idx27_monitor TopPL_hls_deadlock_idx27_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx27_block)
);

 TopPL_hls_deadlock_idx29_monitor TopPL_hls_deadlock_idx29_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx29_block)
);

 TopPL_hls_deadlock_idx31_monitor TopPL_hls_deadlock_idx31_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx31_block)
);

 TopPL_hls_deadlock_idx33_monitor TopPL_hls_deadlock_idx33_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx33_block)
);

 TopPL_hls_deadlock_idx35_monitor TopPL_hls_deadlock_idx35_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx35_block)
);

 TopPL_hls_deadlock_idx37_monitor TopPL_hls_deadlock_idx37_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx37_block)
);

 TopPL_hls_deadlock_idx39_monitor TopPL_hls_deadlock_idx39_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx39_block)
);

endmodule
