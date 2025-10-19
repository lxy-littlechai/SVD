`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx3_monitor ( // for module TopPL_TopPL_inst.Send_U0.grp_dataflow_parent_loop_proc_fu_120.dataflow_in_loop_VITIS_LOOP_197_2_U0
    input wire clock,
    input wire reset,
    input wire [19:0] axis_block_sigs,
    input wire [49:0] inst_idle_sigs,
    input wire [22:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx4_block;
wire idx6_block;
wire idx8_block;
wire idx10_block;
wire [3:0] process_idle_vec;
wire [3:0] process_chan_block_vec;
wire [3:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign process_axis_block_vec[0] = idx4_block & (1'b0 | axis_block_sigs[0] | axis_block_sigs[1]);
assign process_idle_vec[0] = inst_idle_sigs[5];
assign process_chan_block_vec[0] = inst_block_sigs[5];
assign process_axis_block_vec[1] = idx6_block & (1'b0 | axis_block_sigs[2] | axis_block_sigs[3]);
assign process_idle_vec[1] = inst_idle_sigs[6];
assign process_chan_block_vec[1] = inst_block_sigs[6];
assign process_axis_block_vec[2] = idx8_block & (1'b0 | axis_block_sigs[4] | axis_block_sigs[5]);
assign process_idle_vec[2] = inst_idle_sigs[7];
assign process_chan_block_vec[2] = inst_block_sigs[7];
assign process_axis_block_vec[3] = idx10_block & (1'b0 | axis_block_sigs[6] | axis_block_sigs[7]);
assign process_idle_vec[3] = inst_idle_sigs[8];
assign process_chan_block_vec[3] = inst_block_sigs[8];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx4_monitor TopPL_hls_deadlock_idx4_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx4_block)
);

 TopPL_hls_deadlock_idx6_monitor TopPL_hls_deadlock_idx6_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx6_block)
);

 TopPL_hls_deadlock_idx8_monitor TopPL_hls_deadlock_idx8_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx8_block)
);

 TopPL_hls_deadlock_idx10_monitor TopPL_hls_deadlock_idx10_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx10_block)
);

endmodule
