`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx3_monitor ( // for module TopPL_TopPL_inst.Send_U0.grp_dataflow_parent_loop_proc_fu_168.dataflow_in_loop_VITIS_LOOP_235_2_U0
    input wire clock,
    input wire reset,
    input wire [35:0] axis_block_sigs,
    input wire [81:0] inst_idle_sigs,
    input wire [38:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx4_block;
wire idx6_block;
wire idx8_block;
wire idx10_block;
wire idx12_block;
wire idx14_block;
wire idx16_block;
wire idx18_block;
wire [7:0] process_idle_vec;
wire [7:0] process_chan_block_vec;
wire [7:0] process_axis_block_vec;
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
assign process_axis_block_vec[4] = idx12_block & (1'b0 | axis_block_sigs[8] | axis_block_sigs[9]);
assign process_idle_vec[4] = inst_idle_sigs[9];
assign process_chan_block_vec[4] = inst_block_sigs[9];
assign process_axis_block_vec[5] = idx14_block & (1'b0 | axis_block_sigs[10] | axis_block_sigs[11]);
assign process_idle_vec[5] = inst_idle_sigs[10];
assign process_chan_block_vec[5] = inst_block_sigs[10];
assign process_axis_block_vec[6] = idx16_block & (1'b0 | axis_block_sigs[12] | axis_block_sigs[13]);
assign process_idle_vec[6] = inst_idle_sigs[11];
assign process_chan_block_vec[6] = inst_block_sigs[11];
assign process_axis_block_vec[7] = idx18_block & (1'b0 | axis_block_sigs[14] | axis_block_sigs[15]);
assign process_idle_vec[7] = inst_idle_sigs[12];
assign process_chan_block_vec[7] = inst_block_sigs[12];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]) & (process_idle_vec[1] | process_chan_block_vec[1] | process_axis_block_vec[1]) & (process_idle_vec[2] | process_chan_block_vec[2] | process_axis_block_vec[2]) & (process_idle_vec[3] | process_chan_block_vec[3] | process_axis_block_vec[3]) & (process_idle_vec[4] | process_chan_block_vec[4] | process_axis_block_vec[4]) & (process_idle_vec[5] | process_chan_block_vec[5] | process_axis_block_vec[5]) & (process_idle_vec[6] | process_chan_block_vec[6] | process_axis_block_vec[6]) & (process_idle_vec[7] | process_chan_block_vec[7] | process_axis_block_vec[7]);

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

 TopPL_hls_deadlock_idx12_monitor TopPL_hls_deadlock_idx12_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx12_block)
);

 TopPL_hls_deadlock_idx14_monitor TopPL_hls_deadlock_idx14_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx14_block)
);

 TopPL_hls_deadlock_idx16_monitor TopPL_hls_deadlock_idx16_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx16_block)
);

 TopPL_hls_deadlock_idx18_monitor TopPL_hls_deadlock_idx18_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx18_block)
);

endmodule
