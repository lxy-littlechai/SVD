`timescale 1 ns / 1 ps

module TopPL_hls_deadlock_idx25_monitor ( // for module TopPL_TopPL_inst.Receive_U0.grp_receive4DDR_fu_180
    input wire clock,
    input wire reset,
    input wire [19:0] axis_block_sigs,
    input wire [49:0] inst_idle_sigs,
    input wire [22:0] inst_block_sigs,
    output wire block
);

// signal declare
reg monitor_find_block;
wire idx26_block;
wire sub_parallel_block;
wire all_sub_parallel_has_block;
wire all_sub_single_has_block;
wire cur_axis_has_block;
wire seq_is_axis_block;

assign block = monitor_find_block;
assign idx26_block = axis_block_sigs[19];
assign all_sub_parallel_has_block = 1'b0;
assign all_sub_single_has_block = 1'b0 | (idx26_block & (axis_block_sigs[19]));
assign cur_axis_has_block = 1'b0 | axis_block_sigs[18];
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
endmodule
