`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx16_monitor ( // for module TopPL_TopPL_inst.Receive_U0.grp_dataflow_parent_loop_proc16_fu_149.dataflow_in_loop_VITIS_LOOP_250_2_1_U0
    input wire clock,
    input wire reset,
    input wire [19:0] axis_block_sigs,
    input wire [49:0] inst_idle_sigs,
    input wire [22:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx17_block;
wire idx19_block;
wire idx21_block;
wire idx23_block;
wire [12:0] process_idle_vec;
wire [12:0] process_chan_block_vec;
wire [12:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign process_axis_block_vec[0] = 1'b0;
assign process_idle_vec[0] = inst_idle_sigs[10];
assign process_chan_block_vec[0] = inst_block_sigs[10];
assign process_axis_block_vec[1] = idx17_block & (1'b0 | axis_block_sigs[10] | axis_block_sigs[11]);
assign process_idle_vec[1] = inst_idle_sigs[11];
assign process_chan_block_vec[1] = inst_block_sigs[11];
assign process_axis_block_vec[2] = idx19_block & (1'b0 | axis_block_sigs[12] | axis_block_sigs[13]);
assign process_idle_vec[2] = inst_idle_sigs[12];
assign process_chan_block_vec[2] = inst_block_sigs[12];
assign process_axis_block_vec[3] = idx21_block & (1'b0 | axis_block_sigs[14] | axis_block_sigs[15]);
assign process_idle_vec[3] = inst_idle_sigs[13];
assign process_chan_block_vec[3] = inst_block_sigs[13];
assign process_axis_block_vec[4] = idx23_block & (1'b0 | axis_block_sigs[16] | axis_block_sigs[17]);
assign process_idle_vec[4] = inst_idle_sigs[14];
assign process_chan_block_vec[4] = inst_block_sigs[14];
assign process_axis_block_vec[5] = 1'b0;
assign process_idle_vec[5] = inst_idle_sigs[15];
assign process_chan_block_vec[5] = inst_block_sigs[15];
assign process_axis_block_vec[6] = 1'b0;
assign process_idle_vec[6] = inst_idle_sigs[16];
assign process_chan_block_vec[6] = inst_block_sigs[16];
assign process_axis_block_vec[7] = 1'b0;
assign process_idle_vec[7] = inst_idle_sigs[17];
assign process_chan_block_vec[7] = inst_block_sigs[17];
assign process_axis_block_vec[8] = 1'b0;
assign process_idle_vec[8] = inst_idle_sigs[18];
assign process_chan_block_vec[8] = inst_block_sigs[18];
assign process_axis_block_vec[9] = 1'b0;
assign process_idle_vec[9] = inst_idle_sigs[19];
assign process_chan_block_vec[9] = inst_block_sigs[19];
assign process_axis_block_vec[10] = 1'b0;
assign process_idle_vec[10] = inst_idle_sigs[20];
assign process_chan_block_vec[10] = inst_block_sigs[20];
assign process_axis_block_vec[11] = 1'b0;
assign process_idle_vec[11] = inst_idle_sigs[21];
assign process_chan_block_vec[11] = inst_block_sigs[21];
assign process_axis_block_vec[12] = 1'b0;
assign process_idle_vec[12] = inst_idle_sigs[22];
assign process_chan_block_vec[12] = inst_block_sigs[22];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]) & (process_idle_vec[6] | process_chan_block_vec[6] | process_axis_block_vec[6]) & (process_idle_vec[7] | process_chan_block_vec[7] | process_axis_block_vec[7]) & (process_idle_vec[8] | process_chan_block_vec[8] | process_axis_block_vec[8]) & (process_idle_vec[9] | process_chan_block_vec[9] | process_axis_block_vec[9]) & (process_idle_vec[10] | process_chan_block_vec[10] | process_axis_block_vec[10]) & (process_idle_vec[11] | process_chan_block_vec[11] | process_axis_block_vec[11]) & (process_idle_vec[12] | process_chan_block_vec[12] | process_axis_block_vec[12]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx17_monitor TopPL_hls_deadlock_idx17_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx17_block)
);

 TopPL_hls_deadlock_idx19_monitor TopPL_hls_deadlock_idx19_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx19_block)
);

 TopPL_hls_deadlock_idx21_monitor TopPL_hls_deadlock_idx21_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx21_block)
);

 TopPL_hls_deadlock_idx23_monitor TopPL_hls_deadlock_idx23_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx23_block)
);

endmodule
