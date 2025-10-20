`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx22_monitor ( // for module TopPL_TopPL_inst.Receive_U0
    input wire clock,
    input wire reset,
    input wire [35:0] axis_block_sigs,
    input wire [81:0] inst_idle_sigs,
    input wire [38:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx23_block;
wire idx41_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx23_block & (axis_block_sigs[19] | axis_block_sigs[18] | axis_block_sigs[21] | axis_block_sigs[20] | axis_block_sigs[23] | axis_block_sigs[22] | axis_block_sigs[25] | axis_block_sigs[24] | axis_block_sigs[27] | axis_block_sigs[26] | axis_block_sigs[29] | axis_block_sigs[28] | axis_block_sigs[31] | axis_block_sigs[30] | axis_block_sigs[33] | axis_block_sigs[32])) | (idx41_block & (axis_block_sigs[34] | axis_block_sigs[35]));
assign cur_axis_has_block = 1'b0;
assign seq_is_axis_block = all_sub_parallel_has_block | all_sub_single_has_block | cur_axis_has_block;

always @(posedge clock) begin
    if (reset == 1'b1)
        monitor_find_block <= 1'b0;
    else if (seq_is_axis_block == 1'b1)
        monitor_find_block <= 1'b1;
    else
        monitor_find_block <= 1'b0;
end


// instant sub module
 TopPL_hls_deadlock_idx23_monitor TopPL_hls_deadlock_idx23_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx23_block)
);

 TopPL_hls_deadlock_idx41_monitor TopPL_hls_deadlock_idx41_monitor_U (
    .clock(clock),
    .reset(reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(idx41_block)
);

endmodule
