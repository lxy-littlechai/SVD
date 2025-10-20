`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx23_monitor ( // for module TopPL_TopPL_inst.Receive_U0.grp_dataflow_parent_loop_proc28_fu_184
    input wire clock,
    input wire reset,
    input wire [35:0] axis_block_sigs,
    input wire [81:0] inst_idle_sigs,
    input wire [38:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx24_block;
wire [0:0] process_idle_vec;
wire [0:0] process_chan_block_vec;
wire [0:0] process_axis_block_vec;
wire df_has_axis_block;
wire all_process_stop;

assign block = monitor_find_block;
assign process_axis_block_vec[0] = idx24_block & (1'b0 | axis_block_sigs[19] | axis_block_sigs[18] | axis_block_sigs[21] | axis_block_sigs[20] | axis_block_sigs[23] | axis_block_sigs[22] | axis_block_sigs[25] | axis_block_sigs[24] | axis_block_sigs[27] | axis_block_sigs[26] | axis_block_sigs[29] | axis_block_sigs[28] | axis_block_sigs[31] | axis_block_sigs[30] | axis_block_sigs[33] | axis_block_sigs[32]);
assign process_idle_vec[0] = inst_idle_sigs[13];
assign process_chan_block_vec[0] = inst_block_sigs[13];
assign df_has_axis_block = |{process_axis_block_vec};
assign all_process_stop = (process_idle_vec[0] | process_chan_block_vec[0] | process_axis_block_vec[0]);

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (df_has_axis_block == 1'b1 && all_process_stop == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx24_monitor TopPL_hls_deadlock_idx24_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx24_block)
);

endmodule
