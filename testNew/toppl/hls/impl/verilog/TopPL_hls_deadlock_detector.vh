
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [110:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [36:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [36:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_10_0;
    wire [36:0] dep_chan_data_10_0;
    wire token_10_0;
    wire dep_chan_vld_11_0;
    wire [36:0] dep_chan_data_11_0;
    wire token_11_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [110:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [36:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [36:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_10_1;
    wire [36:0] dep_chan_data_10_1;
    wire token_10_1;
    wire dep_chan_vld_11_1;
    wire [36:0] dep_chan_data_11_1;
    wire token_11_1;
    wire [6:0] proc_2_data_FIFO_blk;
    wire [6:0] proc_2_data_PIPO_blk;
    wire [6:0] proc_2_start_FIFO_blk;
    wire [6:0] proc_2_TLF_FIFO_blk;
    wire [6:0] proc_2_input_sync_blk;
    wire [6:0] proc_2_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_2;
    reg [6:0] proc_dep_vld_vec_2_reg;
    wire [6:0] in_chan_dep_vld_vec_2;
    wire [258:0] in_chan_dep_data_vec_2;
    wire [6:0] token_in_vec_2;
    wire [6:0] out_chan_dep_vld_vec_2;
    wire [36:0] out_chan_dep_data_2;
    wire [6:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_3_2;
    wire [36:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_4_2;
    wire [36:0] dep_chan_data_4_2;
    wire token_4_2;
    wire dep_chan_vld_5_2;
    wire [36:0] dep_chan_data_5_2;
    wire token_5_2;
    wire dep_chan_vld_6_2;
    wire [36:0] dep_chan_data_6_2;
    wire token_6_2;
    wire dep_chan_vld_7_2;
    wire [36:0] dep_chan_data_7_2;
    wire token_7_2;
    wire dep_chan_vld_8_2;
    wire [36:0] dep_chan_data_8_2;
    wire token_8_2;
    wire dep_chan_vld_9_2;
    wire [36:0] dep_chan_data_9_2;
    wire token_9_2;
    wire [6:0] proc_3_data_FIFO_blk;
    wire [6:0] proc_3_data_PIPO_blk;
    wire [6:0] proc_3_start_FIFO_blk;
    wire [6:0] proc_3_TLF_FIFO_blk;
    wire [6:0] proc_3_input_sync_blk;
    wire [6:0] proc_3_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_3;
    reg [6:0] proc_dep_vld_vec_3_reg;
    wire [6:0] in_chan_dep_vld_vec_3;
    wire [258:0] in_chan_dep_data_vec_3;
    wire [6:0] token_in_vec_3;
    wire [6:0] out_chan_dep_vld_vec_3;
    wire [36:0] out_chan_dep_data_3;
    wire [6:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [36:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [36:0] dep_chan_data_4_3;
    wire token_4_3;
    wire dep_chan_vld_5_3;
    wire [36:0] dep_chan_data_5_3;
    wire token_5_3;
    wire dep_chan_vld_6_3;
    wire [36:0] dep_chan_data_6_3;
    wire token_6_3;
    wire dep_chan_vld_7_3;
    wire [36:0] dep_chan_data_7_3;
    wire token_7_3;
    wire dep_chan_vld_8_3;
    wire [36:0] dep_chan_data_8_3;
    wire token_8_3;
    wire dep_chan_vld_9_3;
    wire [36:0] dep_chan_data_9_3;
    wire token_9_3;
    wire [6:0] proc_4_data_FIFO_blk;
    wire [6:0] proc_4_data_PIPO_blk;
    wire [6:0] proc_4_start_FIFO_blk;
    wire [6:0] proc_4_TLF_FIFO_blk;
    wire [6:0] proc_4_input_sync_blk;
    wire [6:0] proc_4_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_4;
    reg [6:0] proc_dep_vld_vec_4_reg;
    wire [6:0] in_chan_dep_vld_vec_4;
    wire [258:0] in_chan_dep_data_vec_4;
    wire [6:0] token_in_vec_4;
    wire [6:0] out_chan_dep_vld_vec_4;
    wire [36:0] out_chan_dep_data_4;
    wire [6:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_2_4;
    wire [36:0] dep_chan_data_2_4;
    wire token_2_4;
    wire dep_chan_vld_3_4;
    wire [36:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_5_4;
    wire [36:0] dep_chan_data_5_4;
    wire token_5_4;
    wire dep_chan_vld_6_4;
    wire [36:0] dep_chan_data_6_4;
    wire token_6_4;
    wire dep_chan_vld_7_4;
    wire [36:0] dep_chan_data_7_4;
    wire token_7_4;
    wire dep_chan_vld_8_4;
    wire [36:0] dep_chan_data_8_4;
    wire token_8_4;
    wire dep_chan_vld_9_4;
    wire [36:0] dep_chan_data_9_4;
    wire token_9_4;
    wire [6:0] proc_5_data_FIFO_blk;
    wire [6:0] proc_5_data_PIPO_blk;
    wire [6:0] proc_5_start_FIFO_blk;
    wire [6:0] proc_5_TLF_FIFO_blk;
    wire [6:0] proc_5_input_sync_blk;
    wire [6:0] proc_5_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_5;
    reg [6:0] proc_dep_vld_vec_5_reg;
    wire [6:0] in_chan_dep_vld_vec_5;
    wire [258:0] in_chan_dep_data_vec_5;
    wire [6:0] token_in_vec_5;
    wire [6:0] out_chan_dep_vld_vec_5;
    wire [36:0] out_chan_dep_data_5;
    wire [6:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_2_5;
    wire [36:0] dep_chan_data_2_5;
    wire token_2_5;
    wire dep_chan_vld_3_5;
    wire [36:0] dep_chan_data_3_5;
    wire token_3_5;
    wire dep_chan_vld_4_5;
    wire [36:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [36:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [36:0] dep_chan_data_7_5;
    wire token_7_5;
    wire dep_chan_vld_8_5;
    wire [36:0] dep_chan_data_8_5;
    wire token_8_5;
    wire dep_chan_vld_9_5;
    wire [36:0] dep_chan_data_9_5;
    wire token_9_5;
    wire [6:0] proc_6_data_FIFO_blk;
    wire [6:0] proc_6_data_PIPO_blk;
    wire [6:0] proc_6_start_FIFO_blk;
    wire [6:0] proc_6_TLF_FIFO_blk;
    wire [6:0] proc_6_input_sync_blk;
    wire [6:0] proc_6_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_6;
    reg [6:0] proc_dep_vld_vec_6_reg;
    wire [6:0] in_chan_dep_vld_vec_6;
    wire [258:0] in_chan_dep_data_vec_6;
    wire [6:0] token_in_vec_6;
    wire [6:0] out_chan_dep_vld_vec_6;
    wire [36:0] out_chan_dep_data_6;
    wire [6:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_2_6;
    wire [36:0] dep_chan_data_2_6;
    wire token_2_6;
    wire dep_chan_vld_3_6;
    wire [36:0] dep_chan_data_3_6;
    wire token_3_6;
    wire dep_chan_vld_4_6;
    wire [36:0] dep_chan_data_4_6;
    wire token_4_6;
    wire dep_chan_vld_5_6;
    wire [36:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_7_6;
    wire [36:0] dep_chan_data_7_6;
    wire token_7_6;
    wire dep_chan_vld_8_6;
    wire [36:0] dep_chan_data_8_6;
    wire token_8_6;
    wire dep_chan_vld_9_6;
    wire [36:0] dep_chan_data_9_6;
    wire token_9_6;
    wire [6:0] proc_7_data_FIFO_blk;
    wire [6:0] proc_7_data_PIPO_blk;
    wire [6:0] proc_7_start_FIFO_blk;
    wire [6:0] proc_7_TLF_FIFO_blk;
    wire [6:0] proc_7_input_sync_blk;
    wire [6:0] proc_7_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_7;
    reg [6:0] proc_dep_vld_vec_7_reg;
    wire [6:0] in_chan_dep_vld_vec_7;
    wire [258:0] in_chan_dep_data_vec_7;
    wire [6:0] token_in_vec_7;
    wire [6:0] out_chan_dep_vld_vec_7;
    wire [36:0] out_chan_dep_data_7;
    wire [6:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_2_7;
    wire [36:0] dep_chan_data_2_7;
    wire token_2_7;
    wire dep_chan_vld_3_7;
    wire [36:0] dep_chan_data_3_7;
    wire token_3_7;
    wire dep_chan_vld_4_7;
    wire [36:0] dep_chan_data_4_7;
    wire token_4_7;
    wire dep_chan_vld_5_7;
    wire [36:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_6_7;
    wire [36:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_8_7;
    wire [36:0] dep_chan_data_8_7;
    wire token_8_7;
    wire dep_chan_vld_9_7;
    wire [36:0] dep_chan_data_9_7;
    wire token_9_7;
    wire [6:0] proc_8_data_FIFO_blk;
    wire [6:0] proc_8_data_PIPO_blk;
    wire [6:0] proc_8_start_FIFO_blk;
    wire [6:0] proc_8_TLF_FIFO_blk;
    wire [6:0] proc_8_input_sync_blk;
    wire [6:0] proc_8_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_8;
    reg [6:0] proc_dep_vld_vec_8_reg;
    wire [6:0] in_chan_dep_vld_vec_8;
    wire [258:0] in_chan_dep_data_vec_8;
    wire [6:0] token_in_vec_8;
    wire [6:0] out_chan_dep_vld_vec_8;
    wire [36:0] out_chan_dep_data_8;
    wire [6:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_2_8;
    wire [36:0] dep_chan_data_2_8;
    wire token_2_8;
    wire dep_chan_vld_3_8;
    wire [36:0] dep_chan_data_3_8;
    wire token_3_8;
    wire dep_chan_vld_4_8;
    wire [36:0] dep_chan_data_4_8;
    wire token_4_8;
    wire dep_chan_vld_5_8;
    wire [36:0] dep_chan_data_5_8;
    wire token_5_8;
    wire dep_chan_vld_6_8;
    wire [36:0] dep_chan_data_6_8;
    wire token_6_8;
    wire dep_chan_vld_7_8;
    wire [36:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [36:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [6:0] proc_9_data_FIFO_blk;
    wire [6:0] proc_9_data_PIPO_blk;
    wire [6:0] proc_9_start_FIFO_blk;
    wire [6:0] proc_9_TLF_FIFO_blk;
    wire [6:0] proc_9_input_sync_blk;
    wire [6:0] proc_9_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_9;
    reg [6:0] proc_dep_vld_vec_9_reg;
    wire [6:0] in_chan_dep_vld_vec_9;
    wire [258:0] in_chan_dep_data_vec_9;
    wire [6:0] token_in_vec_9;
    wire [6:0] out_chan_dep_vld_vec_9;
    wire [36:0] out_chan_dep_data_9;
    wire [6:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_2_9;
    wire [36:0] dep_chan_data_2_9;
    wire token_2_9;
    wire dep_chan_vld_3_9;
    wire [36:0] dep_chan_data_3_9;
    wire token_3_9;
    wire dep_chan_vld_4_9;
    wire [36:0] dep_chan_data_4_9;
    wire token_4_9;
    wire dep_chan_vld_5_9;
    wire [36:0] dep_chan_data_5_9;
    wire token_5_9;
    wire dep_chan_vld_6_9;
    wire [36:0] dep_chan_data_6_9;
    wire token_6_9;
    wire dep_chan_vld_7_9;
    wire [36:0] dep_chan_data_7_9;
    wire token_7_9;
    wire dep_chan_vld_8_9;
    wire [36:0] dep_chan_data_8_9;
    wire token_8_9;
    wire [2:0] proc_10_data_FIFO_blk;
    wire [2:0] proc_10_data_PIPO_blk;
    wire [2:0] proc_10_start_FIFO_blk;
    wire [2:0] proc_10_TLF_FIFO_blk;
    wire [2:0] proc_10_input_sync_blk;
    wire [2:0] proc_10_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_10;
    reg [2:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [110:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [2:0] out_chan_dep_vld_vec_10;
    wire [36:0] out_chan_dep_data_10;
    wire [2:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_0_10;
    wire [36:0] dep_chan_data_0_10;
    wire token_0_10;
    wire dep_chan_vld_1_10;
    wire [36:0] dep_chan_data_1_10;
    wire token_1_10;
    wire dep_chan_vld_11_10;
    wire [36:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [2:0] proc_11_data_FIFO_blk;
    wire [2:0] proc_11_data_PIPO_blk;
    wire [2:0] proc_11_start_FIFO_blk;
    wire [2:0] proc_11_TLF_FIFO_blk;
    wire [2:0] proc_11_input_sync_blk;
    wire [2:0] proc_11_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_11;
    reg [2:0] proc_dep_vld_vec_11_reg;
    wire [2:0] in_chan_dep_vld_vec_11;
    wire [110:0] in_chan_dep_data_vec_11;
    wire [2:0] token_in_vec_11;
    wire [2:0] out_chan_dep_vld_vec_11;
    wire [36:0] out_chan_dep_data_11;
    wire [2:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_0_11;
    wire [36:0] dep_chan_data_0_11;
    wire token_0_11;
    wire dep_chan_vld_1_11;
    wire [36:0] dep_chan_data_1_11;
    wire token_1_11;
    wire dep_chan_vld_10_11;
    wire [36:0] dep_chan_data_10_11;
    wire token_10_11;
    wire [15:0] proc_12_data_FIFO_blk;
    wire [15:0] proc_12_data_PIPO_blk;
    wire [15:0] proc_12_start_FIFO_blk;
    wire [15:0] proc_12_TLF_FIFO_blk;
    wire [15:0] proc_12_input_sync_blk;
    wire [15:0] proc_12_output_sync_blk;
    wire [15:0] proc_dep_vld_vec_12;
    reg [15:0] proc_dep_vld_vec_12_reg;
    wire [15:0] in_chan_dep_vld_vec_12;
    wire [591:0] in_chan_dep_data_vec_12;
    wire [15:0] token_in_vec_12;
    wire [15:0] out_chan_dep_vld_vec_12;
    wire [36:0] out_chan_dep_data_12;
    wire [15:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_13_12;
    wire [36:0] dep_chan_data_13_12;
    wire token_13_12;
    wire dep_chan_vld_14_12;
    wire [36:0] dep_chan_data_14_12;
    wire token_14_12;
    wire dep_chan_vld_15_12;
    wire [36:0] dep_chan_data_15_12;
    wire token_15_12;
    wire dep_chan_vld_16_12;
    wire [36:0] dep_chan_data_16_12;
    wire token_16_12;
    wire dep_chan_vld_17_12;
    wire [36:0] dep_chan_data_17_12;
    wire token_17_12;
    wire dep_chan_vld_18_12;
    wire [36:0] dep_chan_data_18_12;
    wire token_18_12;
    wire dep_chan_vld_19_12;
    wire [36:0] dep_chan_data_19_12;
    wire token_19_12;
    wire dep_chan_vld_20_12;
    wire [36:0] dep_chan_data_20_12;
    wire token_20_12;
    wire dep_chan_vld_22_12;
    wire [36:0] dep_chan_data_22_12;
    wire token_22_12;
    wire dep_chan_vld_24_12;
    wire [36:0] dep_chan_data_24_12;
    wire token_24_12;
    wire dep_chan_vld_26_12;
    wire [36:0] dep_chan_data_26_12;
    wire token_26_12;
    wire dep_chan_vld_28_12;
    wire [36:0] dep_chan_data_28_12;
    wire token_28_12;
    wire dep_chan_vld_30_12;
    wire [36:0] dep_chan_data_30_12;
    wire token_30_12;
    wire dep_chan_vld_32_12;
    wire [36:0] dep_chan_data_32_12;
    wire token_32_12;
    wire dep_chan_vld_34_12;
    wire [36:0] dep_chan_data_34_12;
    wire token_34_12;
    wire dep_chan_vld_36_12;
    wire [36:0] dep_chan_data_36_12;
    wire token_36_12;
    wire [8:0] proc_13_data_FIFO_blk;
    wire [8:0] proc_13_data_PIPO_blk;
    wire [8:0] proc_13_start_FIFO_blk;
    wire [8:0] proc_13_TLF_FIFO_blk;
    wire [8:0] proc_13_input_sync_blk;
    wire [8:0] proc_13_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_13;
    reg [8:0] proc_dep_vld_vec_13_reg;
    wire [8:0] in_chan_dep_vld_vec_13;
    wire [332:0] in_chan_dep_data_vec_13;
    wire [8:0] token_in_vec_13;
    wire [8:0] out_chan_dep_vld_vec_13;
    wire [36:0] out_chan_dep_data_13;
    wire [8:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_12_13;
    wire [36:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [36:0] dep_chan_data_14_13;
    wire token_14_13;
    wire dep_chan_vld_15_13;
    wire [36:0] dep_chan_data_15_13;
    wire token_15_13;
    wire dep_chan_vld_16_13;
    wire [36:0] dep_chan_data_16_13;
    wire token_16_13;
    wire dep_chan_vld_17_13;
    wire [36:0] dep_chan_data_17_13;
    wire token_17_13;
    wire dep_chan_vld_18_13;
    wire [36:0] dep_chan_data_18_13;
    wire token_18_13;
    wire dep_chan_vld_19_13;
    wire [36:0] dep_chan_data_19_13;
    wire token_19_13;
    wire dep_chan_vld_20_13;
    wire [36:0] dep_chan_data_20_13;
    wire token_20_13;
    wire dep_chan_vld_21_13;
    wire [36:0] dep_chan_data_21_13;
    wire token_21_13;
    wire [8:0] proc_14_data_FIFO_blk;
    wire [8:0] proc_14_data_PIPO_blk;
    wire [8:0] proc_14_start_FIFO_blk;
    wire [8:0] proc_14_TLF_FIFO_blk;
    wire [8:0] proc_14_input_sync_blk;
    wire [8:0] proc_14_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_14;
    reg [8:0] proc_dep_vld_vec_14_reg;
    wire [8:0] in_chan_dep_vld_vec_14;
    wire [332:0] in_chan_dep_data_vec_14;
    wire [8:0] token_in_vec_14;
    wire [8:0] out_chan_dep_vld_vec_14;
    wire [36:0] out_chan_dep_data_14;
    wire [8:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_12_14;
    wire [36:0] dep_chan_data_12_14;
    wire token_12_14;
    wire dep_chan_vld_13_14;
    wire [36:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [36:0] dep_chan_data_15_14;
    wire token_15_14;
    wire dep_chan_vld_16_14;
    wire [36:0] dep_chan_data_16_14;
    wire token_16_14;
    wire dep_chan_vld_17_14;
    wire [36:0] dep_chan_data_17_14;
    wire token_17_14;
    wire dep_chan_vld_18_14;
    wire [36:0] dep_chan_data_18_14;
    wire token_18_14;
    wire dep_chan_vld_19_14;
    wire [36:0] dep_chan_data_19_14;
    wire token_19_14;
    wire dep_chan_vld_20_14;
    wire [36:0] dep_chan_data_20_14;
    wire token_20_14;
    wire dep_chan_vld_23_14;
    wire [36:0] dep_chan_data_23_14;
    wire token_23_14;
    wire [8:0] proc_15_data_FIFO_blk;
    wire [8:0] proc_15_data_PIPO_blk;
    wire [8:0] proc_15_start_FIFO_blk;
    wire [8:0] proc_15_TLF_FIFO_blk;
    wire [8:0] proc_15_input_sync_blk;
    wire [8:0] proc_15_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_15;
    reg [8:0] proc_dep_vld_vec_15_reg;
    wire [8:0] in_chan_dep_vld_vec_15;
    wire [332:0] in_chan_dep_data_vec_15;
    wire [8:0] token_in_vec_15;
    wire [8:0] out_chan_dep_vld_vec_15;
    wire [36:0] out_chan_dep_data_15;
    wire [8:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_12_15;
    wire [36:0] dep_chan_data_12_15;
    wire token_12_15;
    wire dep_chan_vld_13_15;
    wire [36:0] dep_chan_data_13_15;
    wire token_13_15;
    wire dep_chan_vld_14_15;
    wire [36:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_16_15;
    wire [36:0] dep_chan_data_16_15;
    wire token_16_15;
    wire dep_chan_vld_17_15;
    wire [36:0] dep_chan_data_17_15;
    wire token_17_15;
    wire dep_chan_vld_18_15;
    wire [36:0] dep_chan_data_18_15;
    wire token_18_15;
    wire dep_chan_vld_19_15;
    wire [36:0] dep_chan_data_19_15;
    wire token_19_15;
    wire dep_chan_vld_20_15;
    wire [36:0] dep_chan_data_20_15;
    wire token_20_15;
    wire dep_chan_vld_25_15;
    wire [36:0] dep_chan_data_25_15;
    wire token_25_15;
    wire [8:0] proc_16_data_FIFO_blk;
    wire [8:0] proc_16_data_PIPO_blk;
    wire [8:0] proc_16_start_FIFO_blk;
    wire [8:0] proc_16_TLF_FIFO_blk;
    wire [8:0] proc_16_input_sync_blk;
    wire [8:0] proc_16_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_16;
    reg [8:0] proc_dep_vld_vec_16_reg;
    wire [8:0] in_chan_dep_vld_vec_16;
    wire [332:0] in_chan_dep_data_vec_16;
    wire [8:0] token_in_vec_16;
    wire [8:0] out_chan_dep_vld_vec_16;
    wire [36:0] out_chan_dep_data_16;
    wire [8:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_12_16;
    wire [36:0] dep_chan_data_12_16;
    wire token_12_16;
    wire dep_chan_vld_13_16;
    wire [36:0] dep_chan_data_13_16;
    wire token_13_16;
    wire dep_chan_vld_14_16;
    wire [36:0] dep_chan_data_14_16;
    wire token_14_16;
    wire dep_chan_vld_15_16;
    wire [36:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_17_16;
    wire [36:0] dep_chan_data_17_16;
    wire token_17_16;
    wire dep_chan_vld_18_16;
    wire [36:0] dep_chan_data_18_16;
    wire token_18_16;
    wire dep_chan_vld_19_16;
    wire [36:0] dep_chan_data_19_16;
    wire token_19_16;
    wire dep_chan_vld_20_16;
    wire [36:0] dep_chan_data_20_16;
    wire token_20_16;
    wire dep_chan_vld_27_16;
    wire [36:0] dep_chan_data_27_16;
    wire token_27_16;
    wire [8:0] proc_17_data_FIFO_blk;
    wire [8:0] proc_17_data_PIPO_blk;
    wire [8:0] proc_17_start_FIFO_blk;
    wire [8:0] proc_17_TLF_FIFO_blk;
    wire [8:0] proc_17_input_sync_blk;
    wire [8:0] proc_17_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_17;
    reg [8:0] proc_dep_vld_vec_17_reg;
    wire [8:0] in_chan_dep_vld_vec_17;
    wire [332:0] in_chan_dep_data_vec_17;
    wire [8:0] token_in_vec_17;
    wire [8:0] out_chan_dep_vld_vec_17;
    wire [36:0] out_chan_dep_data_17;
    wire [8:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_12_17;
    wire [36:0] dep_chan_data_12_17;
    wire token_12_17;
    wire dep_chan_vld_13_17;
    wire [36:0] dep_chan_data_13_17;
    wire token_13_17;
    wire dep_chan_vld_14_17;
    wire [36:0] dep_chan_data_14_17;
    wire token_14_17;
    wire dep_chan_vld_15_17;
    wire [36:0] dep_chan_data_15_17;
    wire token_15_17;
    wire dep_chan_vld_16_17;
    wire [36:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_18_17;
    wire [36:0] dep_chan_data_18_17;
    wire token_18_17;
    wire dep_chan_vld_19_17;
    wire [36:0] dep_chan_data_19_17;
    wire token_19_17;
    wire dep_chan_vld_20_17;
    wire [36:0] dep_chan_data_20_17;
    wire token_20_17;
    wire dep_chan_vld_29_17;
    wire [36:0] dep_chan_data_29_17;
    wire token_29_17;
    wire [8:0] proc_18_data_FIFO_blk;
    wire [8:0] proc_18_data_PIPO_blk;
    wire [8:0] proc_18_start_FIFO_blk;
    wire [8:0] proc_18_TLF_FIFO_blk;
    wire [8:0] proc_18_input_sync_blk;
    wire [8:0] proc_18_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_18;
    reg [8:0] proc_dep_vld_vec_18_reg;
    wire [8:0] in_chan_dep_vld_vec_18;
    wire [332:0] in_chan_dep_data_vec_18;
    wire [8:0] token_in_vec_18;
    wire [8:0] out_chan_dep_vld_vec_18;
    wire [36:0] out_chan_dep_data_18;
    wire [8:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_12_18;
    wire [36:0] dep_chan_data_12_18;
    wire token_12_18;
    wire dep_chan_vld_13_18;
    wire [36:0] dep_chan_data_13_18;
    wire token_13_18;
    wire dep_chan_vld_14_18;
    wire [36:0] dep_chan_data_14_18;
    wire token_14_18;
    wire dep_chan_vld_15_18;
    wire [36:0] dep_chan_data_15_18;
    wire token_15_18;
    wire dep_chan_vld_16_18;
    wire [36:0] dep_chan_data_16_18;
    wire token_16_18;
    wire dep_chan_vld_17_18;
    wire [36:0] dep_chan_data_17_18;
    wire token_17_18;
    wire dep_chan_vld_19_18;
    wire [36:0] dep_chan_data_19_18;
    wire token_19_18;
    wire dep_chan_vld_20_18;
    wire [36:0] dep_chan_data_20_18;
    wire token_20_18;
    wire dep_chan_vld_31_18;
    wire [36:0] dep_chan_data_31_18;
    wire token_31_18;
    wire [8:0] proc_19_data_FIFO_blk;
    wire [8:0] proc_19_data_PIPO_blk;
    wire [8:0] proc_19_start_FIFO_blk;
    wire [8:0] proc_19_TLF_FIFO_blk;
    wire [8:0] proc_19_input_sync_blk;
    wire [8:0] proc_19_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_19;
    reg [8:0] proc_dep_vld_vec_19_reg;
    wire [8:0] in_chan_dep_vld_vec_19;
    wire [332:0] in_chan_dep_data_vec_19;
    wire [8:0] token_in_vec_19;
    wire [8:0] out_chan_dep_vld_vec_19;
    wire [36:0] out_chan_dep_data_19;
    wire [8:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_12_19;
    wire [36:0] dep_chan_data_12_19;
    wire token_12_19;
    wire dep_chan_vld_13_19;
    wire [36:0] dep_chan_data_13_19;
    wire token_13_19;
    wire dep_chan_vld_14_19;
    wire [36:0] dep_chan_data_14_19;
    wire token_14_19;
    wire dep_chan_vld_15_19;
    wire [36:0] dep_chan_data_15_19;
    wire token_15_19;
    wire dep_chan_vld_16_19;
    wire [36:0] dep_chan_data_16_19;
    wire token_16_19;
    wire dep_chan_vld_17_19;
    wire [36:0] dep_chan_data_17_19;
    wire token_17_19;
    wire dep_chan_vld_18_19;
    wire [36:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [36:0] dep_chan_data_20_19;
    wire token_20_19;
    wire dep_chan_vld_33_19;
    wire [36:0] dep_chan_data_33_19;
    wire token_33_19;
    wire [8:0] proc_20_data_FIFO_blk;
    wire [8:0] proc_20_data_PIPO_blk;
    wire [8:0] proc_20_start_FIFO_blk;
    wire [8:0] proc_20_TLF_FIFO_blk;
    wire [8:0] proc_20_input_sync_blk;
    wire [8:0] proc_20_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_20;
    reg [8:0] proc_dep_vld_vec_20_reg;
    wire [8:0] in_chan_dep_vld_vec_20;
    wire [332:0] in_chan_dep_data_vec_20;
    wire [8:0] token_in_vec_20;
    wire [8:0] out_chan_dep_vld_vec_20;
    wire [36:0] out_chan_dep_data_20;
    wire [8:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_12_20;
    wire [36:0] dep_chan_data_12_20;
    wire token_12_20;
    wire dep_chan_vld_13_20;
    wire [36:0] dep_chan_data_13_20;
    wire token_13_20;
    wire dep_chan_vld_14_20;
    wire [36:0] dep_chan_data_14_20;
    wire token_14_20;
    wire dep_chan_vld_15_20;
    wire [36:0] dep_chan_data_15_20;
    wire token_15_20;
    wire dep_chan_vld_16_20;
    wire [36:0] dep_chan_data_16_20;
    wire token_16_20;
    wire dep_chan_vld_17_20;
    wire [36:0] dep_chan_data_17_20;
    wire token_17_20;
    wire dep_chan_vld_18_20;
    wire [36:0] dep_chan_data_18_20;
    wire token_18_20;
    wire dep_chan_vld_19_20;
    wire [36:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_35_20;
    wire [36:0] dep_chan_data_35_20;
    wire token_35_20;
    wire [1:0] proc_21_data_FIFO_blk;
    wire [1:0] proc_21_data_PIPO_blk;
    wire [1:0] proc_21_start_FIFO_blk;
    wire [1:0] proc_21_TLF_FIFO_blk;
    wire [1:0] proc_21_input_sync_blk;
    wire [1:0] proc_21_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_21;
    reg [1:0] proc_dep_vld_vec_21_reg;
    wire [1:0] in_chan_dep_vld_vec_21;
    wire [73:0] in_chan_dep_data_vec_21;
    wire [1:0] token_in_vec_21;
    wire [1:0] out_chan_dep_vld_vec_21;
    wire [36:0] out_chan_dep_data_21;
    wire [1:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_13_21;
    wire [36:0] dep_chan_data_13_21;
    wire token_13_21;
    wire dep_chan_vld_22_21;
    wire [36:0] dep_chan_data_22_21;
    wire token_22_21;
    wire [8:0] proc_22_data_FIFO_blk;
    wire [8:0] proc_22_data_PIPO_blk;
    wire [8:0] proc_22_start_FIFO_blk;
    wire [8:0] proc_22_TLF_FIFO_blk;
    wire [8:0] proc_22_input_sync_blk;
    wire [8:0] proc_22_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_22;
    reg [8:0] proc_dep_vld_vec_22_reg;
    wire [8:0] in_chan_dep_vld_vec_22;
    wire [332:0] in_chan_dep_data_vec_22;
    wire [8:0] token_in_vec_22;
    wire [8:0] out_chan_dep_vld_vec_22;
    wire [36:0] out_chan_dep_data_22;
    wire [8:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_12_22;
    wire [36:0] dep_chan_data_12_22;
    wire token_12_22;
    wire dep_chan_vld_21_22;
    wire [36:0] dep_chan_data_21_22;
    wire token_21_22;
    wire dep_chan_vld_24_22;
    wire [36:0] dep_chan_data_24_22;
    wire token_24_22;
    wire dep_chan_vld_26_22;
    wire [36:0] dep_chan_data_26_22;
    wire token_26_22;
    wire dep_chan_vld_28_22;
    wire [36:0] dep_chan_data_28_22;
    wire token_28_22;
    wire dep_chan_vld_30_22;
    wire [36:0] dep_chan_data_30_22;
    wire token_30_22;
    wire dep_chan_vld_32_22;
    wire [36:0] dep_chan_data_32_22;
    wire token_32_22;
    wire dep_chan_vld_34_22;
    wire [36:0] dep_chan_data_34_22;
    wire token_34_22;
    wire dep_chan_vld_36_22;
    wire [36:0] dep_chan_data_36_22;
    wire token_36_22;
    wire [1:0] proc_23_data_FIFO_blk;
    wire [1:0] proc_23_data_PIPO_blk;
    wire [1:0] proc_23_start_FIFO_blk;
    wire [1:0] proc_23_TLF_FIFO_blk;
    wire [1:0] proc_23_input_sync_blk;
    wire [1:0] proc_23_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_23;
    reg [1:0] proc_dep_vld_vec_23_reg;
    wire [1:0] in_chan_dep_vld_vec_23;
    wire [73:0] in_chan_dep_data_vec_23;
    wire [1:0] token_in_vec_23;
    wire [1:0] out_chan_dep_vld_vec_23;
    wire [36:0] out_chan_dep_data_23;
    wire [1:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_14_23;
    wire [36:0] dep_chan_data_14_23;
    wire token_14_23;
    wire dep_chan_vld_24_23;
    wire [36:0] dep_chan_data_24_23;
    wire token_24_23;
    wire [8:0] proc_24_data_FIFO_blk;
    wire [8:0] proc_24_data_PIPO_blk;
    wire [8:0] proc_24_start_FIFO_blk;
    wire [8:0] proc_24_TLF_FIFO_blk;
    wire [8:0] proc_24_input_sync_blk;
    wire [8:0] proc_24_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_24;
    reg [8:0] proc_dep_vld_vec_24_reg;
    wire [8:0] in_chan_dep_vld_vec_24;
    wire [332:0] in_chan_dep_data_vec_24;
    wire [8:0] token_in_vec_24;
    wire [8:0] out_chan_dep_vld_vec_24;
    wire [36:0] out_chan_dep_data_24;
    wire [8:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_12_24;
    wire [36:0] dep_chan_data_12_24;
    wire token_12_24;
    wire dep_chan_vld_22_24;
    wire [36:0] dep_chan_data_22_24;
    wire token_22_24;
    wire dep_chan_vld_23_24;
    wire [36:0] dep_chan_data_23_24;
    wire token_23_24;
    wire dep_chan_vld_26_24;
    wire [36:0] dep_chan_data_26_24;
    wire token_26_24;
    wire dep_chan_vld_28_24;
    wire [36:0] dep_chan_data_28_24;
    wire token_28_24;
    wire dep_chan_vld_30_24;
    wire [36:0] dep_chan_data_30_24;
    wire token_30_24;
    wire dep_chan_vld_32_24;
    wire [36:0] dep_chan_data_32_24;
    wire token_32_24;
    wire dep_chan_vld_34_24;
    wire [36:0] dep_chan_data_34_24;
    wire token_34_24;
    wire dep_chan_vld_36_24;
    wire [36:0] dep_chan_data_36_24;
    wire token_36_24;
    wire [1:0] proc_25_data_FIFO_blk;
    wire [1:0] proc_25_data_PIPO_blk;
    wire [1:0] proc_25_start_FIFO_blk;
    wire [1:0] proc_25_TLF_FIFO_blk;
    wire [1:0] proc_25_input_sync_blk;
    wire [1:0] proc_25_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_25;
    reg [1:0] proc_dep_vld_vec_25_reg;
    wire [1:0] in_chan_dep_vld_vec_25;
    wire [73:0] in_chan_dep_data_vec_25;
    wire [1:0] token_in_vec_25;
    wire [1:0] out_chan_dep_vld_vec_25;
    wire [36:0] out_chan_dep_data_25;
    wire [1:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_15_25;
    wire [36:0] dep_chan_data_15_25;
    wire token_15_25;
    wire dep_chan_vld_26_25;
    wire [36:0] dep_chan_data_26_25;
    wire token_26_25;
    wire [8:0] proc_26_data_FIFO_blk;
    wire [8:0] proc_26_data_PIPO_blk;
    wire [8:0] proc_26_start_FIFO_blk;
    wire [8:0] proc_26_TLF_FIFO_blk;
    wire [8:0] proc_26_input_sync_blk;
    wire [8:0] proc_26_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_26;
    reg [8:0] proc_dep_vld_vec_26_reg;
    wire [8:0] in_chan_dep_vld_vec_26;
    wire [332:0] in_chan_dep_data_vec_26;
    wire [8:0] token_in_vec_26;
    wire [8:0] out_chan_dep_vld_vec_26;
    wire [36:0] out_chan_dep_data_26;
    wire [8:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_12_26;
    wire [36:0] dep_chan_data_12_26;
    wire token_12_26;
    wire dep_chan_vld_22_26;
    wire [36:0] dep_chan_data_22_26;
    wire token_22_26;
    wire dep_chan_vld_24_26;
    wire [36:0] dep_chan_data_24_26;
    wire token_24_26;
    wire dep_chan_vld_25_26;
    wire [36:0] dep_chan_data_25_26;
    wire token_25_26;
    wire dep_chan_vld_28_26;
    wire [36:0] dep_chan_data_28_26;
    wire token_28_26;
    wire dep_chan_vld_30_26;
    wire [36:0] dep_chan_data_30_26;
    wire token_30_26;
    wire dep_chan_vld_32_26;
    wire [36:0] dep_chan_data_32_26;
    wire token_32_26;
    wire dep_chan_vld_34_26;
    wire [36:0] dep_chan_data_34_26;
    wire token_34_26;
    wire dep_chan_vld_36_26;
    wire [36:0] dep_chan_data_36_26;
    wire token_36_26;
    wire [1:0] proc_27_data_FIFO_blk;
    wire [1:0] proc_27_data_PIPO_blk;
    wire [1:0] proc_27_start_FIFO_blk;
    wire [1:0] proc_27_TLF_FIFO_blk;
    wire [1:0] proc_27_input_sync_blk;
    wire [1:0] proc_27_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_27;
    reg [1:0] proc_dep_vld_vec_27_reg;
    wire [1:0] in_chan_dep_vld_vec_27;
    wire [73:0] in_chan_dep_data_vec_27;
    wire [1:0] token_in_vec_27;
    wire [1:0] out_chan_dep_vld_vec_27;
    wire [36:0] out_chan_dep_data_27;
    wire [1:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_16_27;
    wire [36:0] dep_chan_data_16_27;
    wire token_16_27;
    wire dep_chan_vld_28_27;
    wire [36:0] dep_chan_data_28_27;
    wire token_28_27;
    wire [8:0] proc_28_data_FIFO_blk;
    wire [8:0] proc_28_data_PIPO_blk;
    wire [8:0] proc_28_start_FIFO_blk;
    wire [8:0] proc_28_TLF_FIFO_blk;
    wire [8:0] proc_28_input_sync_blk;
    wire [8:0] proc_28_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_28;
    reg [8:0] proc_dep_vld_vec_28_reg;
    wire [8:0] in_chan_dep_vld_vec_28;
    wire [332:0] in_chan_dep_data_vec_28;
    wire [8:0] token_in_vec_28;
    wire [8:0] out_chan_dep_vld_vec_28;
    wire [36:0] out_chan_dep_data_28;
    wire [8:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_12_28;
    wire [36:0] dep_chan_data_12_28;
    wire token_12_28;
    wire dep_chan_vld_22_28;
    wire [36:0] dep_chan_data_22_28;
    wire token_22_28;
    wire dep_chan_vld_24_28;
    wire [36:0] dep_chan_data_24_28;
    wire token_24_28;
    wire dep_chan_vld_26_28;
    wire [36:0] dep_chan_data_26_28;
    wire token_26_28;
    wire dep_chan_vld_27_28;
    wire [36:0] dep_chan_data_27_28;
    wire token_27_28;
    wire dep_chan_vld_30_28;
    wire [36:0] dep_chan_data_30_28;
    wire token_30_28;
    wire dep_chan_vld_32_28;
    wire [36:0] dep_chan_data_32_28;
    wire token_32_28;
    wire dep_chan_vld_34_28;
    wire [36:0] dep_chan_data_34_28;
    wire token_34_28;
    wire dep_chan_vld_36_28;
    wire [36:0] dep_chan_data_36_28;
    wire token_36_28;
    wire [1:0] proc_29_data_FIFO_blk;
    wire [1:0] proc_29_data_PIPO_blk;
    wire [1:0] proc_29_start_FIFO_blk;
    wire [1:0] proc_29_TLF_FIFO_blk;
    wire [1:0] proc_29_input_sync_blk;
    wire [1:0] proc_29_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_29;
    reg [1:0] proc_dep_vld_vec_29_reg;
    wire [1:0] in_chan_dep_vld_vec_29;
    wire [73:0] in_chan_dep_data_vec_29;
    wire [1:0] token_in_vec_29;
    wire [1:0] out_chan_dep_vld_vec_29;
    wire [36:0] out_chan_dep_data_29;
    wire [1:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_17_29;
    wire [36:0] dep_chan_data_17_29;
    wire token_17_29;
    wire dep_chan_vld_30_29;
    wire [36:0] dep_chan_data_30_29;
    wire token_30_29;
    wire [8:0] proc_30_data_FIFO_blk;
    wire [8:0] proc_30_data_PIPO_blk;
    wire [8:0] proc_30_start_FIFO_blk;
    wire [8:0] proc_30_TLF_FIFO_blk;
    wire [8:0] proc_30_input_sync_blk;
    wire [8:0] proc_30_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_30;
    reg [8:0] proc_dep_vld_vec_30_reg;
    wire [8:0] in_chan_dep_vld_vec_30;
    wire [332:0] in_chan_dep_data_vec_30;
    wire [8:0] token_in_vec_30;
    wire [8:0] out_chan_dep_vld_vec_30;
    wire [36:0] out_chan_dep_data_30;
    wire [8:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_12_30;
    wire [36:0] dep_chan_data_12_30;
    wire token_12_30;
    wire dep_chan_vld_22_30;
    wire [36:0] dep_chan_data_22_30;
    wire token_22_30;
    wire dep_chan_vld_24_30;
    wire [36:0] dep_chan_data_24_30;
    wire token_24_30;
    wire dep_chan_vld_26_30;
    wire [36:0] dep_chan_data_26_30;
    wire token_26_30;
    wire dep_chan_vld_28_30;
    wire [36:0] dep_chan_data_28_30;
    wire token_28_30;
    wire dep_chan_vld_29_30;
    wire [36:0] dep_chan_data_29_30;
    wire token_29_30;
    wire dep_chan_vld_32_30;
    wire [36:0] dep_chan_data_32_30;
    wire token_32_30;
    wire dep_chan_vld_34_30;
    wire [36:0] dep_chan_data_34_30;
    wire token_34_30;
    wire dep_chan_vld_36_30;
    wire [36:0] dep_chan_data_36_30;
    wire token_36_30;
    wire [1:0] proc_31_data_FIFO_blk;
    wire [1:0] proc_31_data_PIPO_blk;
    wire [1:0] proc_31_start_FIFO_blk;
    wire [1:0] proc_31_TLF_FIFO_blk;
    wire [1:0] proc_31_input_sync_blk;
    wire [1:0] proc_31_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_31;
    reg [1:0] proc_dep_vld_vec_31_reg;
    wire [1:0] in_chan_dep_vld_vec_31;
    wire [73:0] in_chan_dep_data_vec_31;
    wire [1:0] token_in_vec_31;
    wire [1:0] out_chan_dep_vld_vec_31;
    wire [36:0] out_chan_dep_data_31;
    wire [1:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_18_31;
    wire [36:0] dep_chan_data_18_31;
    wire token_18_31;
    wire dep_chan_vld_32_31;
    wire [36:0] dep_chan_data_32_31;
    wire token_32_31;
    wire [8:0] proc_32_data_FIFO_blk;
    wire [8:0] proc_32_data_PIPO_blk;
    wire [8:0] proc_32_start_FIFO_blk;
    wire [8:0] proc_32_TLF_FIFO_blk;
    wire [8:0] proc_32_input_sync_blk;
    wire [8:0] proc_32_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_32;
    reg [8:0] proc_dep_vld_vec_32_reg;
    wire [8:0] in_chan_dep_vld_vec_32;
    wire [332:0] in_chan_dep_data_vec_32;
    wire [8:0] token_in_vec_32;
    wire [8:0] out_chan_dep_vld_vec_32;
    wire [36:0] out_chan_dep_data_32;
    wire [8:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_12_32;
    wire [36:0] dep_chan_data_12_32;
    wire token_12_32;
    wire dep_chan_vld_22_32;
    wire [36:0] dep_chan_data_22_32;
    wire token_22_32;
    wire dep_chan_vld_24_32;
    wire [36:0] dep_chan_data_24_32;
    wire token_24_32;
    wire dep_chan_vld_26_32;
    wire [36:0] dep_chan_data_26_32;
    wire token_26_32;
    wire dep_chan_vld_28_32;
    wire [36:0] dep_chan_data_28_32;
    wire token_28_32;
    wire dep_chan_vld_30_32;
    wire [36:0] dep_chan_data_30_32;
    wire token_30_32;
    wire dep_chan_vld_31_32;
    wire [36:0] dep_chan_data_31_32;
    wire token_31_32;
    wire dep_chan_vld_34_32;
    wire [36:0] dep_chan_data_34_32;
    wire token_34_32;
    wire dep_chan_vld_36_32;
    wire [36:0] dep_chan_data_36_32;
    wire token_36_32;
    wire [1:0] proc_33_data_FIFO_blk;
    wire [1:0] proc_33_data_PIPO_blk;
    wire [1:0] proc_33_start_FIFO_blk;
    wire [1:0] proc_33_TLF_FIFO_blk;
    wire [1:0] proc_33_input_sync_blk;
    wire [1:0] proc_33_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_33;
    reg [1:0] proc_dep_vld_vec_33_reg;
    wire [1:0] in_chan_dep_vld_vec_33;
    wire [73:0] in_chan_dep_data_vec_33;
    wire [1:0] token_in_vec_33;
    wire [1:0] out_chan_dep_vld_vec_33;
    wire [36:0] out_chan_dep_data_33;
    wire [1:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_19_33;
    wire [36:0] dep_chan_data_19_33;
    wire token_19_33;
    wire dep_chan_vld_34_33;
    wire [36:0] dep_chan_data_34_33;
    wire token_34_33;
    wire [8:0] proc_34_data_FIFO_blk;
    wire [8:0] proc_34_data_PIPO_blk;
    wire [8:0] proc_34_start_FIFO_blk;
    wire [8:0] proc_34_TLF_FIFO_blk;
    wire [8:0] proc_34_input_sync_blk;
    wire [8:0] proc_34_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_34;
    reg [8:0] proc_dep_vld_vec_34_reg;
    wire [8:0] in_chan_dep_vld_vec_34;
    wire [332:0] in_chan_dep_data_vec_34;
    wire [8:0] token_in_vec_34;
    wire [8:0] out_chan_dep_vld_vec_34;
    wire [36:0] out_chan_dep_data_34;
    wire [8:0] token_out_vec_34;
    wire dl_detect_out_34;
    wire dep_chan_vld_12_34;
    wire [36:0] dep_chan_data_12_34;
    wire token_12_34;
    wire dep_chan_vld_22_34;
    wire [36:0] dep_chan_data_22_34;
    wire token_22_34;
    wire dep_chan_vld_24_34;
    wire [36:0] dep_chan_data_24_34;
    wire token_24_34;
    wire dep_chan_vld_26_34;
    wire [36:0] dep_chan_data_26_34;
    wire token_26_34;
    wire dep_chan_vld_28_34;
    wire [36:0] dep_chan_data_28_34;
    wire token_28_34;
    wire dep_chan_vld_30_34;
    wire [36:0] dep_chan_data_30_34;
    wire token_30_34;
    wire dep_chan_vld_32_34;
    wire [36:0] dep_chan_data_32_34;
    wire token_32_34;
    wire dep_chan_vld_33_34;
    wire [36:0] dep_chan_data_33_34;
    wire token_33_34;
    wire dep_chan_vld_36_34;
    wire [36:0] dep_chan_data_36_34;
    wire token_36_34;
    wire [1:0] proc_35_data_FIFO_blk;
    wire [1:0] proc_35_data_PIPO_blk;
    wire [1:0] proc_35_start_FIFO_blk;
    wire [1:0] proc_35_TLF_FIFO_blk;
    wire [1:0] proc_35_input_sync_blk;
    wire [1:0] proc_35_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_35;
    reg [1:0] proc_dep_vld_vec_35_reg;
    wire [1:0] in_chan_dep_vld_vec_35;
    wire [73:0] in_chan_dep_data_vec_35;
    wire [1:0] token_in_vec_35;
    wire [1:0] out_chan_dep_vld_vec_35;
    wire [36:0] out_chan_dep_data_35;
    wire [1:0] token_out_vec_35;
    wire dl_detect_out_35;
    wire dep_chan_vld_20_35;
    wire [36:0] dep_chan_data_20_35;
    wire token_20_35;
    wire dep_chan_vld_36_35;
    wire [36:0] dep_chan_data_36_35;
    wire token_36_35;
    wire [8:0] proc_36_data_FIFO_blk;
    wire [8:0] proc_36_data_PIPO_blk;
    wire [8:0] proc_36_start_FIFO_blk;
    wire [8:0] proc_36_TLF_FIFO_blk;
    wire [8:0] proc_36_input_sync_blk;
    wire [8:0] proc_36_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_36;
    reg [8:0] proc_dep_vld_vec_36_reg;
    wire [8:0] in_chan_dep_vld_vec_36;
    wire [332:0] in_chan_dep_data_vec_36;
    wire [8:0] token_in_vec_36;
    wire [8:0] out_chan_dep_vld_vec_36;
    wire [36:0] out_chan_dep_data_36;
    wire [8:0] token_out_vec_36;
    wire dl_detect_out_36;
    wire dep_chan_vld_12_36;
    wire [36:0] dep_chan_data_12_36;
    wire token_12_36;
    wire dep_chan_vld_22_36;
    wire [36:0] dep_chan_data_22_36;
    wire token_22_36;
    wire dep_chan_vld_24_36;
    wire [36:0] dep_chan_data_24_36;
    wire token_24_36;
    wire dep_chan_vld_26_36;
    wire [36:0] dep_chan_data_26_36;
    wire token_26_36;
    wire dep_chan_vld_28_36;
    wire [36:0] dep_chan_data_28_36;
    wire token_28_36;
    wire dep_chan_vld_30_36;
    wire [36:0] dep_chan_data_30_36;
    wire token_30_36;
    wire dep_chan_vld_32_36;
    wire [36:0] dep_chan_data_32_36;
    wire token_32_36;
    wire dep_chan_vld_34_36;
    wire [36:0] dep_chan_data_34_36;
    wire token_34_36;
    wire dep_chan_vld_35_36;
    wire [36:0] dep_chan_data_35_36;
    wire token_35_36;
    wire [36:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [36:0] origin;

    reg ap_done_reg_0;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_continue;
        end
    end

    reg ap_done_reg_8;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_8 <= 'b0;
        end
        else begin
            ap_done_reg_8 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_9;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_9 <= 'b0;
        end
        else begin
            ap_done_reg_9 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_continue;
        end
    end

    reg ap_done_reg_10;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_10 <= 'b0;
        end
        else begin
            ap_done_reg_10 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0.ap_continue;
        end
    end

    reg ap_done_reg_11;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_11 <= 'b0;
        end
        else begin
            ap_done_reg_11 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_continue;
        end
    end

    reg ap_done_reg_12;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_12 <= 'b0;
        end
        else begin
            ap_done_reg_12 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0.ap_continue;
        end
    end

    reg ap_done_reg_13;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_13 <= 'b0;
        end
        else begin
            ap_done_reg_13 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_continue;
        end
    end

    reg ap_done_reg_14;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_14 <= 'b0;
        end
        else begin
            ap_done_reg_14 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0.ap_continue;
        end
    end

    reg ap_done_reg_15;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_15 <= 'b0;
        end
        else begin
            ap_done_reg_15 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_continue;
        end
    end

    reg ap_done_reg_16;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_16 <= 'b0;
        end
        else begin
            ap_done_reg_16 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0.ap_continue;
        end
    end

    reg ap_done_reg_17;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_17 <= 'b0;
        end
        else begin
            ap_done_reg_17 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_continue;
        end
    end

    reg ap_done_reg_18;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_18 <= 'b0;
        end
        else begin
            ap_done_reg_18 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0.ap_continue;
        end
    end

    reg ap_done_reg_19;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_19 <= 'b0;
        end
        else begin
            ap_done_reg_19 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_continue;
        end
    end

    reg ap_done_reg_20;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_20 <= 'b0;
        end
        else begin
            ap_done_reg_20 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0.ap_continue;
        end
    end

    reg ap_done_reg_21;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_21 <= 'b0;
        end
        else begin
            ap_done_reg_21 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_continue;
        end
    end

    reg ap_done_reg_22;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_22 <= 'b0;
        end
        else begin
            ap_done_reg_22 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0.ap_continue;
        end
    end

    reg ap_done_reg_23;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_23 <= 'b0;
        end
        else begin
            ap_done_reg_23 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_continue;
        end
    end

    reg ap_done_reg_24;// for module SystemControl_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_24 <= 'b0;
        end
        else begin
            ap_done_reg_24 <= SystemControl_U0.ap_done & ~SystemControl_U0.ap_continue;
        end
    end

    reg ap_done_reg_25;// for module Send_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_25 <= 'b0;
        end
        else begin
            ap_done_reg_25 <= Send_U0.ap_done & ~Send_U0.ap_continue;
        end
    end

    reg ap_done_reg_26;// for module RoundRobin_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_26 <= 'b0;
        end
        else begin
            ap_done_reg_26 <= RoundRobin_U0.ap_done & ~RoundRobin_U0.ap_continue;
        end
    end

    reg ap_done_reg_27;// for module Receive_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_27 <= 'b0;
        end
        else begin
            ap_done_reg_27 <= Receive_U0.ap_done & ~Receive_U0.ap_continue;
        end
    end

    reg ap_done_reg_28;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_28 <= 'b0;
        end
        else begin
            ap_done_reg_28 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_continue;
        end
    end

    reg ap_done_reg_29;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_29 <= 'b0;
        end
        else begin
            ap_done_reg_29 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_continue;
        end
    end

    reg ap_done_reg_30;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_30 <= 'b0;
        end
        else begin
            ap_done_reg_30 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_continue;
        end
    end

    reg ap_done_reg_31;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_31 <= 'b0;
        end
        else begin
            ap_done_reg_31 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_continue;
        end
    end

    reg ap_done_reg_32;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_32 <= 'b0;
        end
        else begin
            ap_done_reg_32 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_continue;
        end
    end

    reg ap_done_reg_33;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_33 <= 'b0;
        end
        else begin
            ap_done_reg_33 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_continue;
        end
    end

    reg ap_done_reg_34;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_34 <= 'b0;
        end
        else begin
            ap_done_reg_34 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_continue;
        end
    end

    reg ap_done_reg_35;// for module Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_35 <= 'b0;
        end
        else begin
            ap_done_reg_35 <= Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_continue;
        end
    end

    reg ap_done_reg_36;// for module Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_36 <= 'b0;
        end
        else begin
            ap_done_reg_36 <= Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process SystemControl_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (SystemControl_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process SystemControl_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (SystemControl_U0.ap_done == 1'b1 && SystemControl_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

    // Process: SystemControl_U0
    TopPL_hls_deadlock_detect_unit #(37, 0, 3, 3) TopPL_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_549_7_fu_175.syscontrol_0_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~start_for_Send_U0_U.if_full_n & SystemControl_U0.ap_start & ~SystemControl_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_Send_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0 | (ap_done_reg_24 & SystemControl_U0.ap_done & ~Send_U0.ap_done);
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0 | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_549_7_fu_175.syscontrol_1_blk_n);
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (ap_sync_SystemControl_U0_ap_ready & SystemControl_U0.ap_idle & ~ap_sync_RoundRobin_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0 | (ap_done_reg_24 & SystemControl_U0.ap_done & ~RoundRobin_U0.ap_done);
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0 | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_549_7_fu_175.syscontrol_2_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_L_0_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_L_1_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_L_2_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_L_3_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_R_0_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_R_1_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_R_2_blk_n) | (~SystemControl_U0.grp_SystemControl_Pipeline_VITIS_LOOP_529_3_fu_154.convSet_R_3_blk_n);
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0 | (~start_for_Receive_U0_U.if_full_n & SystemControl_U0.ap_start & ~SystemControl_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_Receive_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0;
    assign proc_0_output_sync_blk[2] = 1'b0 | (ap_done_reg_24 & SystemControl_U0.ap_done & ~Receive_U0.ap_done);
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[36 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_10_0;
    assign in_chan_dep_data_vec_0[73 : 37] = dep_chan_data_10_0;
    assign token_in_vec_0[1] = token_10_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_11_0;
    assign in_chan_dep_data_vec_0[110 : 74] = dep_chan_data_11_0;
    assign token_in_vec_0[2] = token_11_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_10 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_10 = out_chan_dep_data_0;
    assign token_0_10 = token_out_vec_0[1];
    assign dep_chan_vld_0_11 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_11 = out_chan_dep_data_0;
    assign token_0_11 = token_out_vec_0[2];

    // Process: Send_U0
    TopPL_hls_deadlock_detect_unit #(37, 1, 3, 3) TopPL_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~Send_U0.syscontrol_0_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~start_for_Send_U0_U.if_empty_n & Send_U0.ap_idle & ~start_for_Send_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0 | (ap_done_reg_25 & Send_U0.ap_done & ~SystemControl_U0.ap_done);
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.grp_send2AIE_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_L_0_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.grp_send2AIE_9_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_L_1_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.grp_send2AIE_11_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_L_2_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.grp_send2AIE_13_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_L_3_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.grp_send2AIE_8_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_R_0_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.grp_send2AIE_10_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_R_1_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.grp_send2AIE_12_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_R_2_blk_n) | (~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.grp_send2AIE_14_Pipeline_VITIS_LOOP_112_2_fu_147.send_fifo_R_3_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0 | (ap_done_reg_25 & Send_U0.ap_done & ~RoundRobin_U0.ap_done);
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0;
    assign proc_1_output_sync_blk[2] = 1'b0 | (ap_done_reg_25 & Send_U0.ap_done & ~Receive_U0.ap_done);
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[36 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_10_1;
    assign in_chan_dep_data_vec_1[73 : 37] = dep_chan_data_10_1;
    assign token_in_vec_1[1] = token_10_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_11_1;
    assign in_chan_dep_data_vec_1[110 : 74] = dep_chan_data_11_1;
    assign token_in_vec_1[2] = token_11_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_10 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_10 = out_chan_dep_data_1;
    assign token_1_10 = token_out_vec_1[1];
    assign dep_chan_vld_1_11 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_11 = out_chan_dep_data_1;
    assign token_1_11 = token_out_vec_1[2];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0
    TopPL_hls_deadlock_detect_unit #(37, 2, 7, 7) TopPL_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0;
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_2_output_sync_blk[0] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_2_output_sync_blk[1] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    assign proc_2_data_FIFO_blk[3] = 1'b0;
    assign proc_2_data_PIPO_blk[3] = 1'b0;
    assign proc_2_start_FIFO_blk[3] = 1'b0;
    assign proc_2_TLF_FIFO_blk[3] = 1'b0;
    assign proc_2_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_2_output_sync_blk[3] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_2[3] = dl_detect_out ? proc_dep_vld_vec_2_reg[3] : (proc_2_data_FIFO_blk[3] | proc_2_data_PIPO_blk[3] | proc_2_start_FIFO_blk[3] | proc_2_TLF_FIFO_blk[3] | proc_2_input_sync_blk[3] | proc_2_output_sync_blk[3]);
    assign proc_2_data_FIFO_blk[4] = 1'b0;
    assign proc_2_data_PIPO_blk[4] = 1'b0;
    assign proc_2_start_FIFO_blk[4] = 1'b0;
    assign proc_2_TLF_FIFO_blk[4] = 1'b0;
    assign proc_2_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_2_output_sync_blk[4] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_2[4] = dl_detect_out ? proc_dep_vld_vec_2_reg[4] : (proc_2_data_FIFO_blk[4] | proc_2_data_PIPO_blk[4] | proc_2_start_FIFO_blk[4] | proc_2_TLF_FIFO_blk[4] | proc_2_input_sync_blk[4] | proc_2_output_sync_blk[4]);
    assign proc_2_data_FIFO_blk[5] = 1'b0;
    assign proc_2_data_PIPO_blk[5] = 1'b0;
    assign proc_2_start_FIFO_blk[5] = 1'b0;
    assign proc_2_TLF_FIFO_blk[5] = 1'b0;
    assign proc_2_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_2_output_sync_blk[5] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_2[5] = dl_detect_out ? proc_dep_vld_vec_2_reg[5] : (proc_2_data_FIFO_blk[5] | proc_2_data_PIPO_blk[5] | proc_2_start_FIFO_blk[5] | proc_2_TLF_FIFO_blk[5] | proc_2_input_sync_blk[5] | proc_2_output_sync_blk[5]);
    assign proc_2_data_FIFO_blk[6] = 1'b0;
    assign proc_2_data_PIPO_blk[6] = 1'b0;
    assign proc_2_start_FIFO_blk[6] = 1'b0;
    assign proc_2_TLF_FIFO_blk[6] = 1'b0;
    assign proc_2_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_2_output_sync_blk[6] = 1'b0 | (ap_done_reg_28 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_2[6] = dl_detect_out ? proc_dep_vld_vec_2_reg[6] : (proc_2_data_FIFO_blk[6] | proc_2_data_PIPO_blk[6] | proc_2_start_FIFO_blk[6] | proc_2_TLF_FIFO_blk[6] | proc_2_input_sync_blk[6] | proc_2_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[36 : 0] = dep_chan_data_3_2;
    assign token_in_vec_2[0] = token_3_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_4_2;
    assign in_chan_dep_data_vec_2[73 : 37] = dep_chan_data_4_2;
    assign token_in_vec_2[1] = token_4_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_5_2;
    assign in_chan_dep_data_vec_2[110 : 74] = dep_chan_data_5_2;
    assign token_in_vec_2[2] = token_5_2;
    assign in_chan_dep_vld_vec_2[3] = dep_chan_vld_6_2;
    assign in_chan_dep_data_vec_2[147 : 111] = dep_chan_data_6_2;
    assign token_in_vec_2[3] = token_6_2;
    assign in_chan_dep_vld_vec_2[4] = dep_chan_vld_7_2;
    assign in_chan_dep_data_vec_2[184 : 148] = dep_chan_data_7_2;
    assign token_in_vec_2[4] = token_7_2;
    assign in_chan_dep_vld_vec_2[5] = dep_chan_vld_8_2;
    assign in_chan_dep_data_vec_2[221 : 185] = dep_chan_data_8_2;
    assign token_in_vec_2[5] = token_8_2;
    assign in_chan_dep_vld_vec_2[6] = dep_chan_vld_9_2;
    assign in_chan_dep_data_vec_2[258 : 222] = dep_chan_data_9_2;
    assign token_in_vec_2[6] = token_9_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_4 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_4 = out_chan_dep_data_2;
    assign token_2_4 = token_out_vec_2[1];
    assign dep_chan_vld_2_5 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_5 = out_chan_dep_data_2;
    assign token_2_5 = token_out_vec_2[2];
    assign dep_chan_vld_2_6 = out_chan_dep_vld_vec_2[3];
    assign dep_chan_data_2_6 = out_chan_dep_data_2;
    assign token_2_6 = token_out_vec_2[3];
    assign dep_chan_vld_2_7 = out_chan_dep_vld_vec_2[4];
    assign dep_chan_data_2_7 = out_chan_dep_data_2;
    assign token_2_7 = token_out_vec_2[4];
    assign dep_chan_vld_2_8 = out_chan_dep_vld_vec_2[5];
    assign dep_chan_data_2_8 = out_chan_dep_data_2;
    assign token_2_8 = token_out_vec_2[5];
    assign dep_chan_vld_2_9 = out_chan_dep_vld_vec_2[6];
    assign dep_chan_data_2_9 = out_chan_dep_data_2;
    assign token_2_9 = token_out_vec_2[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0
    TopPL_hls_deadlock_detect_unit #(37, 3, 7, 7) TopPL_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_3_output_sync_blk[0] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_3_output_sync_blk[1] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0;
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_3_output_sync_blk[2] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    assign proc_3_data_FIFO_blk[3] = 1'b0;
    assign proc_3_data_PIPO_blk[3] = 1'b0;
    assign proc_3_start_FIFO_blk[3] = 1'b0;
    assign proc_3_TLF_FIFO_blk[3] = 1'b0;
    assign proc_3_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_3_output_sync_blk[3] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_3[3] = dl_detect_out ? proc_dep_vld_vec_3_reg[3] : (proc_3_data_FIFO_blk[3] | proc_3_data_PIPO_blk[3] | proc_3_start_FIFO_blk[3] | proc_3_TLF_FIFO_blk[3] | proc_3_input_sync_blk[3] | proc_3_output_sync_blk[3]);
    assign proc_3_data_FIFO_blk[4] = 1'b0;
    assign proc_3_data_PIPO_blk[4] = 1'b0;
    assign proc_3_start_FIFO_blk[4] = 1'b0;
    assign proc_3_TLF_FIFO_blk[4] = 1'b0;
    assign proc_3_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_3_output_sync_blk[4] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_3[4] = dl_detect_out ? proc_dep_vld_vec_3_reg[4] : (proc_3_data_FIFO_blk[4] | proc_3_data_PIPO_blk[4] | proc_3_start_FIFO_blk[4] | proc_3_TLF_FIFO_blk[4] | proc_3_input_sync_blk[4] | proc_3_output_sync_blk[4]);
    assign proc_3_data_FIFO_blk[5] = 1'b0;
    assign proc_3_data_PIPO_blk[5] = 1'b0;
    assign proc_3_start_FIFO_blk[5] = 1'b0;
    assign proc_3_TLF_FIFO_blk[5] = 1'b0;
    assign proc_3_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_3_output_sync_blk[5] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_3[5] = dl_detect_out ? proc_dep_vld_vec_3_reg[5] : (proc_3_data_FIFO_blk[5] | proc_3_data_PIPO_blk[5] | proc_3_start_FIFO_blk[5] | proc_3_TLF_FIFO_blk[5] | proc_3_input_sync_blk[5] | proc_3_output_sync_blk[5]);
    assign proc_3_data_FIFO_blk[6] = 1'b0;
    assign proc_3_data_PIPO_blk[6] = 1'b0;
    assign proc_3_start_FIFO_blk[6] = 1'b0;
    assign proc_3_TLF_FIFO_blk[6] = 1'b0;
    assign proc_3_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_3_output_sync_blk[6] = 1'b0 | (ap_done_reg_29 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_3[6] = dl_detect_out ? proc_dep_vld_vec_3_reg[6] : (proc_3_data_FIFO_blk[6] | proc_3_data_PIPO_blk[6] | proc_3_start_FIFO_blk[6] | proc_3_TLF_FIFO_blk[6] | proc_3_input_sync_blk[6] | proc_3_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[36 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[73 : 37] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_5_3;
    assign in_chan_dep_data_vec_3[110 : 74] = dep_chan_data_5_3;
    assign token_in_vec_3[2] = token_5_3;
    assign in_chan_dep_vld_vec_3[3] = dep_chan_vld_6_3;
    assign in_chan_dep_data_vec_3[147 : 111] = dep_chan_data_6_3;
    assign token_in_vec_3[3] = token_6_3;
    assign in_chan_dep_vld_vec_3[4] = dep_chan_vld_7_3;
    assign in_chan_dep_data_vec_3[184 : 148] = dep_chan_data_7_3;
    assign token_in_vec_3[4] = token_7_3;
    assign in_chan_dep_vld_vec_3[5] = dep_chan_vld_8_3;
    assign in_chan_dep_data_vec_3[221 : 185] = dep_chan_data_8_3;
    assign token_in_vec_3[5] = token_8_3;
    assign in_chan_dep_vld_vec_3[6] = dep_chan_vld_9_3;
    assign in_chan_dep_data_vec_3[258 : 222] = dep_chan_data_9_3;
    assign token_in_vec_3[6] = token_9_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[1];
    assign dep_chan_vld_3_5 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_5 = out_chan_dep_data_3;
    assign token_3_5 = token_out_vec_3[2];
    assign dep_chan_vld_3_6 = out_chan_dep_vld_vec_3[3];
    assign dep_chan_data_3_6 = out_chan_dep_data_3;
    assign token_3_6 = token_out_vec_3[3];
    assign dep_chan_vld_3_7 = out_chan_dep_vld_vec_3[4];
    assign dep_chan_data_3_7 = out_chan_dep_data_3;
    assign token_3_7 = token_out_vec_3[4];
    assign dep_chan_vld_3_8 = out_chan_dep_vld_vec_3[5];
    assign dep_chan_data_3_8 = out_chan_dep_data_3;
    assign token_3_8 = token_out_vec_3[5];
    assign dep_chan_vld_3_9 = out_chan_dep_vld_vec_3[6];
    assign dep_chan_data_3_9 = out_chan_dep_data_3;
    assign token_3_9 = token_out_vec_3[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0
    TopPL_hls_deadlock_detect_unit #(37, 4, 7, 7) TopPL_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0;
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_4_output_sync_blk[0] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0;
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_4_output_sync_blk[1] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0;
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_4_output_sync_blk[2] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    assign proc_4_data_FIFO_blk[3] = 1'b0;
    assign proc_4_data_PIPO_blk[3] = 1'b0;
    assign proc_4_start_FIFO_blk[3] = 1'b0;
    assign proc_4_TLF_FIFO_blk[3] = 1'b0;
    assign proc_4_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_4_output_sync_blk[3] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_4[3] = dl_detect_out ? proc_dep_vld_vec_4_reg[3] : (proc_4_data_FIFO_blk[3] | proc_4_data_PIPO_blk[3] | proc_4_start_FIFO_blk[3] | proc_4_TLF_FIFO_blk[3] | proc_4_input_sync_blk[3] | proc_4_output_sync_blk[3]);
    assign proc_4_data_FIFO_blk[4] = 1'b0;
    assign proc_4_data_PIPO_blk[4] = 1'b0;
    assign proc_4_start_FIFO_blk[4] = 1'b0;
    assign proc_4_TLF_FIFO_blk[4] = 1'b0;
    assign proc_4_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_4_output_sync_blk[4] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_4[4] = dl_detect_out ? proc_dep_vld_vec_4_reg[4] : (proc_4_data_FIFO_blk[4] | proc_4_data_PIPO_blk[4] | proc_4_start_FIFO_blk[4] | proc_4_TLF_FIFO_blk[4] | proc_4_input_sync_blk[4] | proc_4_output_sync_blk[4]);
    assign proc_4_data_FIFO_blk[5] = 1'b0;
    assign proc_4_data_PIPO_blk[5] = 1'b0;
    assign proc_4_start_FIFO_blk[5] = 1'b0;
    assign proc_4_TLF_FIFO_blk[5] = 1'b0;
    assign proc_4_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_4_output_sync_blk[5] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_4[5] = dl_detect_out ? proc_dep_vld_vec_4_reg[5] : (proc_4_data_FIFO_blk[5] | proc_4_data_PIPO_blk[5] | proc_4_start_FIFO_blk[5] | proc_4_TLF_FIFO_blk[5] | proc_4_input_sync_blk[5] | proc_4_output_sync_blk[5]);
    assign proc_4_data_FIFO_blk[6] = 1'b0;
    assign proc_4_data_PIPO_blk[6] = 1'b0;
    assign proc_4_start_FIFO_blk[6] = 1'b0;
    assign proc_4_TLF_FIFO_blk[6] = 1'b0;
    assign proc_4_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_4_output_sync_blk[6] = 1'b0 | (ap_done_reg_30 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_4[6] = dl_detect_out ? proc_dep_vld_vec_4_reg[6] : (proc_4_data_FIFO_blk[6] | proc_4_data_PIPO_blk[6] | proc_4_start_FIFO_blk[6] | proc_4_TLF_FIFO_blk[6] | proc_4_input_sync_blk[6] | proc_4_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_2_4;
    assign in_chan_dep_data_vec_4[36 : 0] = dep_chan_data_2_4;
    assign token_in_vec_4[0] = token_2_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[73 : 37] = dep_chan_data_3_4;
    assign token_in_vec_4[1] = token_3_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[110 : 74] = dep_chan_data_5_4;
    assign token_in_vec_4[2] = token_5_4;
    assign in_chan_dep_vld_vec_4[3] = dep_chan_vld_6_4;
    assign in_chan_dep_data_vec_4[147 : 111] = dep_chan_data_6_4;
    assign token_in_vec_4[3] = token_6_4;
    assign in_chan_dep_vld_vec_4[4] = dep_chan_vld_7_4;
    assign in_chan_dep_data_vec_4[184 : 148] = dep_chan_data_7_4;
    assign token_in_vec_4[4] = token_7_4;
    assign in_chan_dep_vld_vec_4[5] = dep_chan_vld_8_4;
    assign in_chan_dep_data_vec_4[221 : 185] = dep_chan_data_8_4;
    assign token_in_vec_4[5] = token_8_4;
    assign in_chan_dep_vld_vec_4[6] = dep_chan_vld_9_4;
    assign in_chan_dep_data_vec_4[258 : 222] = dep_chan_data_9_4;
    assign token_in_vec_4[6] = token_9_4;
    assign dep_chan_vld_4_2 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_2 = out_chan_dep_data_4;
    assign token_4_2 = token_out_vec_4[0];
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[1];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[2];
    assign dep_chan_vld_4_6 = out_chan_dep_vld_vec_4[3];
    assign dep_chan_data_4_6 = out_chan_dep_data_4;
    assign token_4_6 = token_out_vec_4[3];
    assign dep_chan_vld_4_7 = out_chan_dep_vld_vec_4[4];
    assign dep_chan_data_4_7 = out_chan_dep_data_4;
    assign token_4_7 = token_out_vec_4[4];
    assign dep_chan_vld_4_8 = out_chan_dep_vld_vec_4[5];
    assign dep_chan_data_4_8 = out_chan_dep_data_4;
    assign token_4_8 = token_out_vec_4[5];
    assign dep_chan_vld_4_9 = out_chan_dep_vld_vec_4[6];
    assign dep_chan_data_4_9 = out_chan_dep_data_4;
    assign token_4_9 = token_out_vec_4[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0
    TopPL_hls_deadlock_detect_unit #(37, 5, 7, 7) TopPL_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0;
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_5_output_sync_blk[0] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0;
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_5_output_sync_blk[1] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_5_output_sync_blk[2] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    assign proc_5_data_FIFO_blk[3] = 1'b0;
    assign proc_5_data_PIPO_blk[3] = 1'b0;
    assign proc_5_start_FIFO_blk[3] = 1'b0;
    assign proc_5_TLF_FIFO_blk[3] = 1'b0;
    assign proc_5_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_5_output_sync_blk[3] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_5[3] = dl_detect_out ? proc_dep_vld_vec_5_reg[3] : (proc_5_data_FIFO_blk[3] | proc_5_data_PIPO_blk[3] | proc_5_start_FIFO_blk[3] | proc_5_TLF_FIFO_blk[3] | proc_5_input_sync_blk[3] | proc_5_output_sync_blk[3]);
    assign proc_5_data_FIFO_blk[4] = 1'b0;
    assign proc_5_data_PIPO_blk[4] = 1'b0;
    assign proc_5_start_FIFO_blk[4] = 1'b0;
    assign proc_5_TLF_FIFO_blk[4] = 1'b0;
    assign proc_5_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_5_output_sync_blk[4] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_5[4] = dl_detect_out ? proc_dep_vld_vec_5_reg[4] : (proc_5_data_FIFO_blk[4] | proc_5_data_PIPO_blk[4] | proc_5_start_FIFO_blk[4] | proc_5_TLF_FIFO_blk[4] | proc_5_input_sync_blk[4] | proc_5_output_sync_blk[4]);
    assign proc_5_data_FIFO_blk[5] = 1'b0;
    assign proc_5_data_PIPO_blk[5] = 1'b0;
    assign proc_5_start_FIFO_blk[5] = 1'b0;
    assign proc_5_TLF_FIFO_blk[5] = 1'b0;
    assign proc_5_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_5_output_sync_blk[5] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_5[5] = dl_detect_out ? proc_dep_vld_vec_5_reg[5] : (proc_5_data_FIFO_blk[5] | proc_5_data_PIPO_blk[5] | proc_5_start_FIFO_blk[5] | proc_5_TLF_FIFO_blk[5] | proc_5_input_sync_blk[5] | proc_5_output_sync_blk[5]);
    assign proc_5_data_FIFO_blk[6] = 1'b0;
    assign proc_5_data_PIPO_blk[6] = 1'b0;
    assign proc_5_start_FIFO_blk[6] = 1'b0;
    assign proc_5_TLF_FIFO_blk[6] = 1'b0;
    assign proc_5_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_5_output_sync_blk[6] = 1'b0 | (ap_done_reg_31 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_5[6] = dl_detect_out ? proc_dep_vld_vec_5_reg[6] : (proc_5_data_FIFO_blk[6] | proc_5_data_PIPO_blk[6] | proc_5_start_FIFO_blk[6] | proc_5_TLF_FIFO_blk[6] | proc_5_input_sync_blk[6] | proc_5_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_2_5;
    assign in_chan_dep_data_vec_5[36 : 0] = dep_chan_data_2_5;
    assign token_in_vec_5[0] = token_2_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_3_5;
    assign in_chan_dep_data_vec_5[73 : 37] = dep_chan_data_3_5;
    assign token_in_vec_5[1] = token_3_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[110 : 74] = dep_chan_data_4_5;
    assign token_in_vec_5[2] = token_4_5;
    assign in_chan_dep_vld_vec_5[3] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[147 : 111] = dep_chan_data_6_5;
    assign token_in_vec_5[3] = token_6_5;
    assign in_chan_dep_vld_vec_5[4] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[184 : 148] = dep_chan_data_7_5;
    assign token_in_vec_5[4] = token_7_5;
    assign in_chan_dep_vld_vec_5[5] = dep_chan_vld_8_5;
    assign in_chan_dep_data_vec_5[221 : 185] = dep_chan_data_8_5;
    assign token_in_vec_5[5] = token_8_5;
    assign in_chan_dep_vld_vec_5[6] = dep_chan_vld_9_5;
    assign in_chan_dep_data_vec_5[258 : 222] = dep_chan_data_9_5;
    assign token_in_vec_5[6] = token_9_5;
    assign dep_chan_vld_5_2 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_2 = out_chan_dep_data_5;
    assign token_5_2 = token_out_vec_5[0];
    assign dep_chan_vld_5_3 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_3 = out_chan_dep_data_5;
    assign token_5_3 = token_out_vec_5[1];
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[2];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[3];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[3];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[4];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[4];
    assign dep_chan_vld_5_8 = out_chan_dep_vld_vec_5[5];
    assign dep_chan_data_5_8 = out_chan_dep_data_5;
    assign token_5_8 = token_out_vec_5[5];
    assign dep_chan_vld_5_9 = out_chan_dep_vld_vec_5[6];
    assign dep_chan_data_5_9 = out_chan_dep_data_5;
    assign token_5_9 = token_out_vec_5[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0
    TopPL_hls_deadlock_detect_unit #(37, 6, 7, 7) TopPL_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0;
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_6_output_sync_blk[0] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0;
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_6_output_sync_blk[1] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0;
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_6_output_sync_blk[2] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    assign proc_6_data_FIFO_blk[3] = 1'b0;
    assign proc_6_data_PIPO_blk[3] = 1'b0;
    assign proc_6_start_FIFO_blk[3] = 1'b0;
    assign proc_6_TLF_FIFO_blk[3] = 1'b0;
    assign proc_6_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_6_output_sync_blk[3] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_6[3] = dl_detect_out ? proc_dep_vld_vec_6_reg[3] : (proc_6_data_FIFO_blk[3] | proc_6_data_PIPO_blk[3] | proc_6_start_FIFO_blk[3] | proc_6_TLF_FIFO_blk[3] | proc_6_input_sync_blk[3] | proc_6_output_sync_blk[3]);
    assign proc_6_data_FIFO_blk[4] = 1'b0;
    assign proc_6_data_PIPO_blk[4] = 1'b0;
    assign proc_6_start_FIFO_blk[4] = 1'b0;
    assign proc_6_TLF_FIFO_blk[4] = 1'b0;
    assign proc_6_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_6_output_sync_blk[4] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_6[4] = dl_detect_out ? proc_dep_vld_vec_6_reg[4] : (proc_6_data_FIFO_blk[4] | proc_6_data_PIPO_blk[4] | proc_6_start_FIFO_blk[4] | proc_6_TLF_FIFO_blk[4] | proc_6_input_sync_blk[4] | proc_6_output_sync_blk[4]);
    assign proc_6_data_FIFO_blk[5] = 1'b0;
    assign proc_6_data_PIPO_blk[5] = 1'b0;
    assign proc_6_start_FIFO_blk[5] = 1'b0;
    assign proc_6_TLF_FIFO_blk[5] = 1'b0;
    assign proc_6_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_6_output_sync_blk[5] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_6[5] = dl_detect_out ? proc_dep_vld_vec_6_reg[5] : (proc_6_data_FIFO_blk[5] | proc_6_data_PIPO_blk[5] | proc_6_start_FIFO_blk[5] | proc_6_TLF_FIFO_blk[5] | proc_6_input_sync_blk[5] | proc_6_output_sync_blk[5]);
    assign proc_6_data_FIFO_blk[6] = 1'b0;
    assign proc_6_data_PIPO_blk[6] = 1'b0;
    assign proc_6_start_FIFO_blk[6] = 1'b0;
    assign proc_6_TLF_FIFO_blk[6] = 1'b0;
    assign proc_6_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_6_output_sync_blk[6] = 1'b0 | (ap_done_reg_32 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_6[6] = dl_detect_out ? proc_dep_vld_vec_6_reg[6] : (proc_6_data_FIFO_blk[6] | proc_6_data_PIPO_blk[6] | proc_6_start_FIFO_blk[6] | proc_6_TLF_FIFO_blk[6] | proc_6_input_sync_blk[6] | proc_6_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_2_6;
    assign in_chan_dep_data_vec_6[36 : 0] = dep_chan_data_2_6;
    assign token_in_vec_6[0] = token_2_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_3_6;
    assign in_chan_dep_data_vec_6[73 : 37] = dep_chan_data_3_6;
    assign token_in_vec_6[1] = token_3_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_4_6;
    assign in_chan_dep_data_vec_6[110 : 74] = dep_chan_data_4_6;
    assign token_in_vec_6[2] = token_4_6;
    assign in_chan_dep_vld_vec_6[3] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[147 : 111] = dep_chan_data_5_6;
    assign token_in_vec_6[3] = token_5_6;
    assign in_chan_dep_vld_vec_6[4] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[184 : 148] = dep_chan_data_7_6;
    assign token_in_vec_6[4] = token_7_6;
    assign in_chan_dep_vld_vec_6[5] = dep_chan_vld_8_6;
    assign in_chan_dep_data_vec_6[221 : 185] = dep_chan_data_8_6;
    assign token_in_vec_6[5] = token_8_6;
    assign in_chan_dep_vld_vec_6[6] = dep_chan_vld_9_6;
    assign in_chan_dep_data_vec_6[258 : 222] = dep_chan_data_9_6;
    assign token_in_vec_6[6] = token_9_6;
    assign dep_chan_vld_6_2 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_2 = out_chan_dep_data_6;
    assign token_6_2 = token_out_vec_6[0];
    assign dep_chan_vld_6_3 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_3 = out_chan_dep_data_6;
    assign token_6_3 = token_out_vec_6[1];
    assign dep_chan_vld_6_4 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_4 = out_chan_dep_data_6;
    assign token_6_4 = token_out_vec_6[2];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[3];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[3];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[4];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[4];
    assign dep_chan_vld_6_8 = out_chan_dep_vld_vec_6[5];
    assign dep_chan_data_6_8 = out_chan_dep_data_6;
    assign token_6_8 = token_out_vec_6[5];
    assign dep_chan_vld_6_9 = out_chan_dep_vld_vec_6[6];
    assign dep_chan_data_6_9 = out_chan_dep_data_6;
    assign token_6_9 = token_out_vec_6[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0
    TopPL_hls_deadlock_detect_unit #(37, 7, 7, 7) TopPL_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0;
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_7_output_sync_blk[0] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0;
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_7_output_sync_blk[1] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0;
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0;
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_7_output_sync_blk[2] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    assign proc_7_data_FIFO_blk[3] = 1'b0;
    assign proc_7_data_PIPO_blk[3] = 1'b0;
    assign proc_7_start_FIFO_blk[3] = 1'b0;
    assign proc_7_TLF_FIFO_blk[3] = 1'b0;
    assign proc_7_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_7_output_sync_blk[3] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_7[3] = dl_detect_out ? proc_dep_vld_vec_7_reg[3] : (proc_7_data_FIFO_blk[3] | proc_7_data_PIPO_blk[3] | proc_7_start_FIFO_blk[3] | proc_7_TLF_FIFO_blk[3] | proc_7_input_sync_blk[3] | proc_7_output_sync_blk[3]);
    assign proc_7_data_FIFO_blk[4] = 1'b0;
    assign proc_7_data_PIPO_blk[4] = 1'b0;
    assign proc_7_start_FIFO_blk[4] = 1'b0;
    assign proc_7_TLF_FIFO_blk[4] = 1'b0;
    assign proc_7_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_7_output_sync_blk[4] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_7[4] = dl_detect_out ? proc_dep_vld_vec_7_reg[4] : (proc_7_data_FIFO_blk[4] | proc_7_data_PIPO_blk[4] | proc_7_start_FIFO_blk[4] | proc_7_TLF_FIFO_blk[4] | proc_7_input_sync_blk[4] | proc_7_output_sync_blk[4]);
    assign proc_7_data_FIFO_blk[5] = 1'b0;
    assign proc_7_data_PIPO_blk[5] = 1'b0;
    assign proc_7_start_FIFO_blk[5] = 1'b0;
    assign proc_7_TLF_FIFO_blk[5] = 1'b0;
    assign proc_7_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_7_output_sync_blk[5] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_7[5] = dl_detect_out ? proc_dep_vld_vec_7_reg[5] : (proc_7_data_FIFO_blk[5] | proc_7_data_PIPO_blk[5] | proc_7_start_FIFO_blk[5] | proc_7_TLF_FIFO_blk[5] | proc_7_input_sync_blk[5] | proc_7_output_sync_blk[5]);
    assign proc_7_data_FIFO_blk[6] = 1'b0;
    assign proc_7_data_PIPO_blk[6] = 1'b0;
    assign proc_7_start_FIFO_blk[6] = 1'b0;
    assign proc_7_TLF_FIFO_blk[6] = 1'b0;
    assign proc_7_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_7_output_sync_blk[6] = 1'b0 | (ap_done_reg_33 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_7[6] = dl_detect_out ? proc_dep_vld_vec_7_reg[6] : (proc_7_data_FIFO_blk[6] | proc_7_data_PIPO_blk[6] | proc_7_start_FIFO_blk[6] | proc_7_TLF_FIFO_blk[6] | proc_7_input_sync_blk[6] | proc_7_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_2_7;
    assign in_chan_dep_data_vec_7[36 : 0] = dep_chan_data_2_7;
    assign token_in_vec_7[0] = token_2_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_3_7;
    assign in_chan_dep_data_vec_7[73 : 37] = dep_chan_data_3_7;
    assign token_in_vec_7[1] = token_3_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_4_7;
    assign in_chan_dep_data_vec_7[110 : 74] = dep_chan_data_4_7;
    assign token_in_vec_7[2] = token_4_7;
    assign in_chan_dep_vld_vec_7[3] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[147 : 111] = dep_chan_data_5_7;
    assign token_in_vec_7[3] = token_5_7;
    assign in_chan_dep_vld_vec_7[4] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[184 : 148] = dep_chan_data_6_7;
    assign token_in_vec_7[4] = token_6_7;
    assign in_chan_dep_vld_vec_7[5] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[221 : 185] = dep_chan_data_8_7;
    assign token_in_vec_7[5] = token_8_7;
    assign in_chan_dep_vld_vec_7[6] = dep_chan_vld_9_7;
    assign in_chan_dep_data_vec_7[258 : 222] = dep_chan_data_9_7;
    assign token_in_vec_7[6] = token_9_7;
    assign dep_chan_vld_7_2 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_2 = out_chan_dep_data_7;
    assign token_7_2 = token_out_vec_7[0];
    assign dep_chan_vld_7_3 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_3 = out_chan_dep_data_7;
    assign token_7_3 = token_out_vec_7[1];
    assign dep_chan_vld_7_4 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_4 = out_chan_dep_data_7;
    assign token_7_4 = token_out_vec_7[2];
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[3];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[3];
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[4];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[4];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[5];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[5];
    assign dep_chan_vld_7_9 = out_chan_dep_vld_vec_7[6];
    assign dep_chan_data_7_9 = out_chan_dep_data_7;
    assign token_7_9 = token_out_vec_7[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0
    TopPL_hls_deadlock_detect_unit #(37, 8, 7, 7) TopPL_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0;
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_8_output_sync_blk[0] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0;
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_8_output_sync_blk[1] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0;
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0;
    assign proc_8_TLF_FIFO_blk[2] = 1'b0;
    assign proc_8_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_8_output_sync_blk[2] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    assign proc_8_data_FIFO_blk[3] = 1'b0;
    assign proc_8_data_PIPO_blk[3] = 1'b0;
    assign proc_8_start_FIFO_blk[3] = 1'b0;
    assign proc_8_TLF_FIFO_blk[3] = 1'b0;
    assign proc_8_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_8_output_sync_blk[3] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_8[3] = dl_detect_out ? proc_dep_vld_vec_8_reg[3] : (proc_8_data_FIFO_blk[3] | proc_8_data_PIPO_blk[3] | proc_8_start_FIFO_blk[3] | proc_8_TLF_FIFO_blk[3] | proc_8_input_sync_blk[3] | proc_8_output_sync_blk[3]);
    assign proc_8_data_FIFO_blk[4] = 1'b0;
    assign proc_8_data_PIPO_blk[4] = 1'b0;
    assign proc_8_start_FIFO_blk[4] = 1'b0;
    assign proc_8_TLF_FIFO_blk[4] = 1'b0;
    assign proc_8_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_8_output_sync_blk[4] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_8[4] = dl_detect_out ? proc_dep_vld_vec_8_reg[4] : (proc_8_data_FIFO_blk[4] | proc_8_data_PIPO_blk[4] | proc_8_start_FIFO_blk[4] | proc_8_TLF_FIFO_blk[4] | proc_8_input_sync_blk[4] | proc_8_output_sync_blk[4]);
    assign proc_8_data_FIFO_blk[5] = 1'b0;
    assign proc_8_data_PIPO_blk[5] = 1'b0;
    assign proc_8_start_FIFO_blk[5] = 1'b0;
    assign proc_8_TLF_FIFO_blk[5] = 1'b0;
    assign proc_8_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_8_output_sync_blk[5] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_8[5] = dl_detect_out ? proc_dep_vld_vec_8_reg[5] : (proc_8_data_FIFO_blk[5] | proc_8_data_PIPO_blk[5] | proc_8_start_FIFO_blk[5] | proc_8_TLF_FIFO_blk[5] | proc_8_input_sync_blk[5] | proc_8_output_sync_blk[5]);
    assign proc_8_data_FIFO_blk[6] = 1'b0;
    assign proc_8_data_PIPO_blk[6] = 1'b0;
    assign proc_8_start_FIFO_blk[6] = 1'b0;
    assign proc_8_TLF_FIFO_blk[6] = 1'b0;
    assign proc_8_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready);
    assign proc_8_output_sync_blk[6] = 1'b0 | (ap_done_reg_34 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done);
    assign proc_dep_vld_vec_8[6] = dl_detect_out ? proc_dep_vld_vec_8_reg[6] : (proc_8_data_FIFO_blk[6] | proc_8_data_PIPO_blk[6] | proc_8_start_FIFO_blk[6] | proc_8_TLF_FIFO_blk[6] | proc_8_input_sync_blk[6] | proc_8_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_2_8;
    assign in_chan_dep_data_vec_8[36 : 0] = dep_chan_data_2_8;
    assign token_in_vec_8[0] = token_2_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_3_8;
    assign in_chan_dep_data_vec_8[73 : 37] = dep_chan_data_3_8;
    assign token_in_vec_8[1] = token_3_8;
    assign in_chan_dep_vld_vec_8[2] = dep_chan_vld_4_8;
    assign in_chan_dep_data_vec_8[110 : 74] = dep_chan_data_4_8;
    assign token_in_vec_8[2] = token_4_8;
    assign in_chan_dep_vld_vec_8[3] = dep_chan_vld_5_8;
    assign in_chan_dep_data_vec_8[147 : 111] = dep_chan_data_5_8;
    assign token_in_vec_8[3] = token_5_8;
    assign in_chan_dep_vld_vec_8[4] = dep_chan_vld_6_8;
    assign in_chan_dep_data_vec_8[184 : 148] = dep_chan_data_6_8;
    assign token_in_vec_8[4] = token_6_8;
    assign in_chan_dep_vld_vec_8[5] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[221 : 185] = dep_chan_data_7_8;
    assign token_in_vec_8[5] = token_7_8;
    assign in_chan_dep_vld_vec_8[6] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[258 : 222] = dep_chan_data_9_8;
    assign token_in_vec_8[6] = token_9_8;
    assign dep_chan_vld_8_2 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_2 = out_chan_dep_data_8;
    assign token_8_2 = token_out_vec_8[0];
    assign dep_chan_vld_8_3 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_3 = out_chan_dep_data_8;
    assign token_8_3 = token_out_vec_8[1];
    assign dep_chan_vld_8_4 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_4 = out_chan_dep_data_8;
    assign token_8_4 = token_out_vec_8[2];
    assign dep_chan_vld_8_5 = out_chan_dep_vld_vec_8[3];
    assign dep_chan_data_8_5 = out_chan_dep_data_8;
    assign token_8_5 = token_out_vec_8[3];
    assign dep_chan_vld_8_6 = out_chan_dep_vld_vec_8[4];
    assign dep_chan_data_8_6 = out_chan_dep_data_8;
    assign token_8_6 = token_out_vec_8[4];
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[5];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[5];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[6];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[6];

    // Process: Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0
    TopPL_hls_deadlock_detect_unit #(37, 9, 7, 7) TopPL_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0;
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_U0_ap_ready);
    assign proc_9_output_sync_blk[0] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_U0.ap_done);
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0;
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_8_U0_ap_ready);
    assign proc_9_output_sync_blk[1] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_8_U0.ap_done);
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0;
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_9_U0_ap_ready);
    assign proc_9_output_sync_blk[2] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_9_U0.ap_done);
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    assign proc_9_data_FIFO_blk[3] = 1'b0;
    assign proc_9_data_PIPO_blk[3] = 1'b0;
    assign proc_9_start_FIFO_blk[3] = 1'b0;
    assign proc_9_TLF_FIFO_blk[3] = 1'b0;
    assign proc_9_input_sync_blk[3] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_10_U0_ap_ready);
    assign proc_9_output_sync_blk[3] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_10_U0.ap_done);
    assign proc_dep_vld_vec_9[3] = dl_detect_out ? proc_dep_vld_vec_9_reg[3] : (proc_9_data_FIFO_blk[3] | proc_9_data_PIPO_blk[3] | proc_9_start_FIFO_blk[3] | proc_9_TLF_FIFO_blk[3] | proc_9_input_sync_blk[3] | proc_9_output_sync_blk[3]);
    assign proc_9_data_FIFO_blk[4] = 1'b0;
    assign proc_9_data_PIPO_blk[4] = 1'b0;
    assign proc_9_start_FIFO_blk[4] = 1'b0;
    assign proc_9_TLF_FIFO_blk[4] = 1'b0;
    assign proc_9_input_sync_blk[4] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_11_U0_ap_ready);
    assign proc_9_output_sync_blk[4] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_11_U0.ap_done);
    assign proc_dep_vld_vec_9[4] = dl_detect_out ? proc_dep_vld_vec_9_reg[4] : (proc_9_data_FIFO_blk[4] | proc_9_data_PIPO_blk[4] | proc_9_start_FIFO_blk[4] | proc_9_TLF_FIFO_blk[4] | proc_9_input_sync_blk[4] | proc_9_output_sync_blk[4]);
    assign proc_9_data_FIFO_blk[5] = 1'b0;
    assign proc_9_data_PIPO_blk[5] = 1'b0;
    assign proc_9_start_FIFO_blk[5] = 1'b0;
    assign proc_9_TLF_FIFO_blk[5] = 1'b0;
    assign proc_9_input_sync_blk[5] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_12_U0_ap_ready);
    assign proc_9_output_sync_blk[5] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_12_U0.ap_done);
    assign proc_dep_vld_vec_9[5] = dl_detect_out ? proc_dep_vld_vec_9_reg[5] : (proc_9_data_FIFO_blk[5] | proc_9_data_PIPO_blk[5] | proc_9_start_FIFO_blk[5] | proc_9_TLF_FIFO_blk[5] | proc_9_input_sync_blk[5] | proc_9_output_sync_blk[5]);
    assign proc_9_data_FIFO_blk[6] = 1'b0;
    assign proc_9_data_PIPO_blk[6] = 1'b0;
    assign proc_9_start_FIFO_blk[6] = 1'b0;
    assign proc_9_TLF_FIFO_blk[6] = 1'b0;
    assign proc_9_input_sync_blk[6] = 1'b0 | (Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_14_U0_ap_ready & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_idle & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.ap_sync_send2AIE_13_U0_ap_ready);
    assign proc_9_output_sync_blk[6] = 1'b0 | (ap_done_reg_35 & Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_14_U0.ap_done & ~Send_U0.grp_dataflow_parent_loop_proc_fu_166.dataflow_in_loop_VITIS_LOOP_235_2_U0.send2AIE_13_U0.ap_done);
    assign proc_dep_vld_vec_9[6] = dl_detect_out ? proc_dep_vld_vec_9_reg[6] : (proc_9_data_FIFO_blk[6] | proc_9_data_PIPO_blk[6] | proc_9_start_FIFO_blk[6] | proc_9_TLF_FIFO_blk[6] | proc_9_input_sync_blk[6] | proc_9_output_sync_blk[6]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_2_9;
    assign in_chan_dep_data_vec_9[36 : 0] = dep_chan_data_2_9;
    assign token_in_vec_9[0] = token_2_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_3_9;
    assign in_chan_dep_data_vec_9[73 : 37] = dep_chan_data_3_9;
    assign token_in_vec_9[1] = token_3_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_4_9;
    assign in_chan_dep_data_vec_9[110 : 74] = dep_chan_data_4_9;
    assign token_in_vec_9[2] = token_4_9;
    assign in_chan_dep_vld_vec_9[3] = dep_chan_vld_5_9;
    assign in_chan_dep_data_vec_9[147 : 111] = dep_chan_data_5_9;
    assign token_in_vec_9[3] = token_5_9;
    assign in_chan_dep_vld_vec_9[4] = dep_chan_vld_6_9;
    assign in_chan_dep_data_vec_9[184 : 148] = dep_chan_data_6_9;
    assign token_in_vec_9[4] = token_6_9;
    assign in_chan_dep_vld_vec_9[5] = dep_chan_vld_7_9;
    assign in_chan_dep_data_vec_9[221 : 185] = dep_chan_data_7_9;
    assign token_in_vec_9[5] = token_7_9;
    assign in_chan_dep_vld_vec_9[6] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[258 : 222] = dep_chan_data_8_9;
    assign token_in_vec_9[6] = token_8_9;
    assign dep_chan_vld_9_2 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_2 = out_chan_dep_data_9;
    assign token_9_2 = token_out_vec_9[0];
    assign dep_chan_vld_9_3 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_3 = out_chan_dep_data_9;
    assign token_9_3 = token_out_vec_9[1];
    assign dep_chan_vld_9_4 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_4 = out_chan_dep_data_9;
    assign token_9_4 = token_out_vec_9[2];
    assign dep_chan_vld_9_5 = out_chan_dep_vld_vec_9[3];
    assign dep_chan_data_9_5 = out_chan_dep_data_9;
    assign token_9_5 = token_out_vec_9[3];
    assign dep_chan_vld_9_6 = out_chan_dep_vld_vec_9[4];
    assign dep_chan_data_9_6 = out_chan_dep_data_9;
    assign token_9_6 = token_out_vec_9[4];
    assign dep_chan_vld_9_7 = out_chan_dep_vld_vec_9[5];
    assign dep_chan_data_9_7 = out_chan_dep_data_9;
    assign token_9_7 = token_out_vec_9[5];
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[6];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[6];

    // Process: RoundRobin_U0
    TopPL_hls_deadlock_detect_unit #(37, 10, 3, 3) TopPL_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~RoundRobin_U0.syscontrol_1_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0 | (ap_sync_RoundRobin_U0_ap_ready & RoundRobin_U0.ap_idle & ~ap_sync_SystemControl_U0_ap_ready);
    assign proc_10_output_sync_blk[0] = 1'b0 | (ap_done_reg_26 & RoundRobin_U0.ap_done & ~SystemControl_U0.ap_done);
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_151_3_fu_148.send_fifo_L_0_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_168_5_fu_166.send_fifo_L_1_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_185_7_fu_184.send_fifo_L_2_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_202_9_fu_202.send_fifo_L_3_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_144_2_fu_157.send_fifo_R_0_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_161_4_fu_175.send_fifo_R_1_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_178_6_fu_193.send_fifo_R_2_blk_n) | (~RoundRobin_U0.grp_DDR2FIFO_fu_259.grp_DDR2FIFO_Pipeline_VITIS_LOOP_195_8_fu_211.send_fifo_R_3_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0 | (ap_done_reg_26 & RoundRobin_U0.ap_done & ~Send_U0.ap_done);
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0 | (~RoundRobin_U0.receive_fifo_L_0_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_464_13_fu_391.receive_fifo_L_1_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_389_5_fu_299.receive_fifo_L_2_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_477_15_fu_407.receive_fifo_L_3_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_402_7_fu_315.receive_fifo_R_0_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_409_8_fu_323.receive_fifo_R_1_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_496_18_fu_431.receive_fifo_R_2_blk_n) | (~RoundRobin_U0.grp_RoundRobin_Pipeline_VITIS_LOOP_421_10_fu_339.receive_fifo_R_3_blk_n);
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0;
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0;
    assign proc_10_output_sync_blk[2] = 1'b0 | (ap_done_reg_26 & RoundRobin_U0.ap_done & ~Receive_U0.ap_done);
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_0_10;
    assign in_chan_dep_data_vec_10[36 : 0] = dep_chan_data_0_10;
    assign token_in_vec_10[0] = token_0_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_1_10;
    assign in_chan_dep_data_vec_10[73 : 37] = dep_chan_data_1_10;
    assign token_in_vec_10[1] = token_1_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[110 : 74] = dep_chan_data_11_10;
    assign token_in_vec_10[2] = token_11_10;
    assign dep_chan_vld_10_0 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_0 = out_chan_dep_data_10;
    assign token_10_0 = token_out_vec_10[0];
    assign dep_chan_vld_10_1 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_1 = out_chan_dep_data_10;
    assign token_10_1 = token_out_vec_10[1];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[2];

    // Process: Receive_U0
    TopPL_hls_deadlock_detect_unit #(37, 11, 3, 3) TopPL_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~Receive_U0.syscontrol_2_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.convSet_L_0_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.convSet_L_1_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.convSet_L_2_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.convSet_L_3_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.convSet_R_0_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.convSet_R_1_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.convSet_R_2_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.convSet_R_3_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0 | (~start_for_Receive_U0_U.if_empty_n & Receive_U0.ap_idle & ~start_for_Receive_U0_U.if_write);
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0 | (ap_done_reg_27 & Receive_U0.ap_done & ~SystemControl_U0.ap_done);
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.grp_receive4AIE_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_L_0_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.grp_receive4AIE_1_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_L_1_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.grp_receive4AIE_2_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_L_2_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.grp_receive4AIE_3_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_L_3_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.grp_receive4AIE_7_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_R_0_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.grp_receive4AIE_6_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_R_1_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.grp_receive4AIE_5_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_R_2_blk_n) | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.grp_receive4AIE_4_Pipeline_VITIS_LOOP_76_2_fu_158.receive_fifo_R_3_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0 | (ap_done_reg_27 & Receive_U0.ap_done & ~RoundRobin_U0.ap_done);
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0;
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0;
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0;
    assign proc_11_output_sync_blk[2] = 1'b0 | (ap_done_reg_27 & Receive_U0.ap_done & ~Send_U0.ap_done);
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_0_11;
    assign in_chan_dep_data_vec_11[36 : 0] = dep_chan_data_0_11;
    assign token_in_vec_11[0] = token_0_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_1_11;
    assign in_chan_dep_data_vec_11[73 : 37] = dep_chan_data_1_11;
    assign token_in_vec_11[1] = token_1_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[110 : 74] = dep_chan_data_10_11;
    assign token_in_vec_11[2] = token_10_11;
    assign dep_chan_vld_11_0 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_0 = out_chan_dep_data_11;
    assign token_11_0 = token_out_vec_11[0];
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[1];
    assign dep_chan_vld_11_1 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_1 = out_chan_dep_data_11;
    assign token_11_1 = token_out_vec_11[2];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0
    TopPL_hls_deadlock_detect_unit #(37, 12, 16, 16) TopPL_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0;
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0;
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0;
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    assign proc_12_data_FIFO_blk[3] = 1'b0;
    assign proc_12_data_PIPO_blk[3] = 1'b0;
    assign proc_12_start_FIFO_blk[3] = 1'b0;
    assign proc_12_TLF_FIFO_blk[3] = 1'b0;
    assign proc_12_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_12_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_12[3] = dl_detect_out ? proc_dep_vld_vec_12_reg[3] : (proc_12_data_FIFO_blk[3] | proc_12_data_PIPO_blk[3] | proc_12_start_FIFO_blk[3] | proc_12_TLF_FIFO_blk[3] | proc_12_input_sync_blk[3] | proc_12_output_sync_blk[3]);
    assign proc_12_data_FIFO_blk[4] = 1'b0;
    assign proc_12_data_PIPO_blk[4] = 1'b0;
    assign proc_12_start_FIFO_blk[4] = 1'b0;
    assign proc_12_TLF_FIFO_blk[4] = 1'b0;
    assign proc_12_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_12_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_12[4] = dl_detect_out ? proc_dep_vld_vec_12_reg[4] : (proc_12_data_FIFO_blk[4] | proc_12_data_PIPO_blk[4] | proc_12_start_FIFO_blk[4] | proc_12_TLF_FIFO_blk[4] | proc_12_input_sync_blk[4] | proc_12_output_sync_blk[4]);
    assign proc_12_data_FIFO_blk[5] = 1'b0;
    assign proc_12_data_PIPO_blk[5] = 1'b0;
    assign proc_12_start_FIFO_blk[5] = 1'b0;
    assign proc_12_TLF_FIFO_blk[5] = 1'b0;
    assign proc_12_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_12_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_12[5] = dl_detect_out ? proc_dep_vld_vec_12_reg[5] : (proc_12_data_FIFO_blk[5] | proc_12_data_PIPO_blk[5] | proc_12_start_FIFO_blk[5] | proc_12_TLF_FIFO_blk[5] | proc_12_input_sync_blk[5] | proc_12_output_sync_blk[5]);
    assign proc_12_data_FIFO_blk[6] = 1'b0;
    assign proc_12_data_PIPO_blk[6] = 1'b0;
    assign proc_12_start_FIFO_blk[6] = 1'b0;
    assign proc_12_TLF_FIFO_blk[6] = 1'b0;
    assign proc_12_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_12_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_12[6] = dl_detect_out ? proc_dep_vld_vec_12_reg[6] : (proc_12_data_FIFO_blk[6] | proc_12_data_PIPO_blk[6] | proc_12_start_FIFO_blk[6] | proc_12_TLF_FIFO_blk[6] | proc_12_input_sync_blk[6] | proc_12_output_sync_blk[6]);
    assign proc_12_data_FIFO_blk[7] = 1'b0;
    assign proc_12_data_PIPO_blk[7] = 1'b0;
    assign proc_12_start_FIFO_blk[7] = 1'b0;
    assign proc_12_TLF_FIFO_blk[7] = 1'b0;
    assign proc_12_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_12_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_12[7] = dl_detect_out ? proc_dep_vld_vec_12_reg[7] : (proc_12_data_FIFO_blk[7] | proc_12_data_PIPO_blk[7] | proc_12_start_FIFO_blk[7] | proc_12_TLF_FIFO_blk[7] | proc_12_input_sync_blk[7] | proc_12_output_sync_blk[7]);
    assign proc_12_data_FIFO_blk[8] = 1'b0;
    assign proc_12_data_PIPO_blk[8] = 1'b0;
    assign proc_12_start_FIFO_blk[8] = 1'b0;
    assign proc_12_TLF_FIFO_blk[8] = 1'b0;
    assign proc_12_input_sync_blk[8] = 1'b0;
    assign proc_12_output_sync_blk[8] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_12[8] = dl_detect_out ? proc_dep_vld_vec_12_reg[8] : (proc_12_data_FIFO_blk[8] | proc_12_data_PIPO_blk[8] | proc_12_start_FIFO_blk[8] | proc_12_TLF_FIFO_blk[8] | proc_12_input_sync_blk[8] | proc_12_output_sync_blk[8]);
    assign proc_12_data_FIFO_blk[9] = 1'b0;
    assign proc_12_data_PIPO_blk[9] = 1'b0;
    assign proc_12_start_FIFO_blk[9] = 1'b0;
    assign proc_12_TLF_FIFO_blk[9] = 1'b0;
    assign proc_12_input_sync_blk[9] = 1'b0;
    assign proc_12_output_sync_blk[9] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_12[9] = dl_detect_out ? proc_dep_vld_vec_12_reg[9] : (proc_12_data_FIFO_blk[9] | proc_12_data_PIPO_blk[9] | proc_12_start_FIFO_blk[9] | proc_12_TLF_FIFO_blk[9] | proc_12_input_sync_blk[9] | proc_12_output_sync_blk[9]);
    assign proc_12_data_FIFO_blk[10] = 1'b0;
    assign proc_12_data_PIPO_blk[10] = 1'b0;
    assign proc_12_start_FIFO_blk[10] = 1'b0;
    assign proc_12_TLF_FIFO_blk[10] = 1'b0;
    assign proc_12_input_sync_blk[10] = 1'b0;
    assign proc_12_output_sync_blk[10] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_12[10] = dl_detect_out ? proc_dep_vld_vec_12_reg[10] : (proc_12_data_FIFO_blk[10] | proc_12_data_PIPO_blk[10] | proc_12_start_FIFO_blk[10] | proc_12_TLF_FIFO_blk[10] | proc_12_input_sync_blk[10] | proc_12_output_sync_blk[10]);
    assign proc_12_data_FIFO_blk[11] = 1'b0;
    assign proc_12_data_PIPO_blk[11] = 1'b0;
    assign proc_12_start_FIFO_blk[11] = 1'b0;
    assign proc_12_TLF_FIFO_blk[11] = 1'b0;
    assign proc_12_input_sync_blk[11] = 1'b0;
    assign proc_12_output_sync_blk[11] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_12[11] = dl_detect_out ? proc_dep_vld_vec_12_reg[11] : (proc_12_data_FIFO_blk[11] | proc_12_data_PIPO_blk[11] | proc_12_start_FIFO_blk[11] | proc_12_TLF_FIFO_blk[11] | proc_12_input_sync_blk[11] | proc_12_output_sync_blk[11]);
    assign proc_12_data_FIFO_blk[12] = 1'b0;
    assign proc_12_data_PIPO_blk[12] = 1'b0;
    assign proc_12_start_FIFO_blk[12] = 1'b0;
    assign proc_12_TLF_FIFO_blk[12] = 1'b0;
    assign proc_12_input_sync_blk[12] = 1'b0;
    assign proc_12_output_sync_blk[12] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_12[12] = dl_detect_out ? proc_dep_vld_vec_12_reg[12] : (proc_12_data_FIFO_blk[12] | proc_12_data_PIPO_blk[12] | proc_12_start_FIFO_blk[12] | proc_12_TLF_FIFO_blk[12] | proc_12_input_sync_blk[12] | proc_12_output_sync_blk[12]);
    assign proc_12_data_FIFO_blk[13] = 1'b0;
    assign proc_12_data_PIPO_blk[13] = 1'b0;
    assign proc_12_start_FIFO_blk[13] = 1'b0;
    assign proc_12_TLF_FIFO_blk[13] = 1'b0;
    assign proc_12_input_sync_blk[13] = 1'b0;
    assign proc_12_output_sync_blk[13] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_12[13] = dl_detect_out ? proc_dep_vld_vec_12_reg[13] : (proc_12_data_FIFO_blk[13] | proc_12_data_PIPO_blk[13] | proc_12_start_FIFO_blk[13] | proc_12_TLF_FIFO_blk[13] | proc_12_input_sync_blk[13] | proc_12_output_sync_blk[13]);
    assign proc_12_data_FIFO_blk[14] = 1'b0;
    assign proc_12_data_PIPO_blk[14] = 1'b0;
    assign proc_12_start_FIFO_blk[14] = 1'b0;
    assign proc_12_TLF_FIFO_blk[14] = 1'b0;
    assign proc_12_input_sync_blk[14] = 1'b0;
    assign proc_12_output_sync_blk[14] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_12[14] = dl_detect_out ? proc_dep_vld_vec_12_reg[14] : (proc_12_data_FIFO_blk[14] | proc_12_data_PIPO_blk[14] | proc_12_start_FIFO_blk[14] | proc_12_TLF_FIFO_blk[14] | proc_12_input_sync_blk[14] | proc_12_output_sync_blk[14]);
    assign proc_12_data_FIFO_blk[15] = 1'b0;
    assign proc_12_data_PIPO_blk[15] = 1'b0;
    assign proc_12_start_FIFO_blk[15] = 1'b0;
    assign proc_12_TLF_FIFO_blk[15] = 1'b0;
    assign proc_12_input_sync_blk[15] = 1'b0;
    assign proc_12_output_sync_blk[15] = 1'b0 | (ap_done_reg_36 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_12[15] = dl_detect_out ? proc_dep_vld_vec_12_reg[15] : (proc_12_data_FIFO_blk[15] | proc_12_data_PIPO_blk[15] | proc_12_start_FIFO_blk[15] | proc_12_TLF_FIFO_blk[15] | proc_12_input_sync_blk[15] | proc_12_output_sync_blk[15]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[36 : 0] = dep_chan_data_13_12;
    assign token_in_vec_12[0] = token_13_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_14_12;
    assign in_chan_dep_data_vec_12[73 : 37] = dep_chan_data_14_12;
    assign token_in_vec_12[1] = token_14_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_15_12;
    assign in_chan_dep_data_vec_12[110 : 74] = dep_chan_data_15_12;
    assign token_in_vec_12[2] = token_15_12;
    assign in_chan_dep_vld_vec_12[3] = dep_chan_vld_16_12;
    assign in_chan_dep_data_vec_12[147 : 111] = dep_chan_data_16_12;
    assign token_in_vec_12[3] = token_16_12;
    assign in_chan_dep_vld_vec_12[4] = dep_chan_vld_17_12;
    assign in_chan_dep_data_vec_12[184 : 148] = dep_chan_data_17_12;
    assign token_in_vec_12[4] = token_17_12;
    assign in_chan_dep_vld_vec_12[5] = dep_chan_vld_18_12;
    assign in_chan_dep_data_vec_12[221 : 185] = dep_chan_data_18_12;
    assign token_in_vec_12[5] = token_18_12;
    assign in_chan_dep_vld_vec_12[6] = dep_chan_vld_19_12;
    assign in_chan_dep_data_vec_12[258 : 222] = dep_chan_data_19_12;
    assign token_in_vec_12[6] = token_19_12;
    assign in_chan_dep_vld_vec_12[7] = dep_chan_vld_20_12;
    assign in_chan_dep_data_vec_12[295 : 259] = dep_chan_data_20_12;
    assign token_in_vec_12[7] = token_20_12;
    assign in_chan_dep_vld_vec_12[8] = dep_chan_vld_22_12;
    assign in_chan_dep_data_vec_12[332 : 296] = dep_chan_data_22_12;
    assign token_in_vec_12[8] = token_22_12;
    assign in_chan_dep_vld_vec_12[9] = dep_chan_vld_24_12;
    assign in_chan_dep_data_vec_12[369 : 333] = dep_chan_data_24_12;
    assign token_in_vec_12[9] = token_24_12;
    assign in_chan_dep_vld_vec_12[10] = dep_chan_vld_26_12;
    assign in_chan_dep_data_vec_12[406 : 370] = dep_chan_data_26_12;
    assign token_in_vec_12[10] = token_26_12;
    assign in_chan_dep_vld_vec_12[11] = dep_chan_vld_28_12;
    assign in_chan_dep_data_vec_12[443 : 407] = dep_chan_data_28_12;
    assign token_in_vec_12[11] = token_28_12;
    assign in_chan_dep_vld_vec_12[12] = dep_chan_vld_30_12;
    assign in_chan_dep_data_vec_12[480 : 444] = dep_chan_data_30_12;
    assign token_in_vec_12[12] = token_30_12;
    assign in_chan_dep_vld_vec_12[13] = dep_chan_vld_32_12;
    assign in_chan_dep_data_vec_12[517 : 481] = dep_chan_data_32_12;
    assign token_in_vec_12[13] = token_32_12;
    assign in_chan_dep_vld_vec_12[14] = dep_chan_vld_34_12;
    assign in_chan_dep_data_vec_12[554 : 518] = dep_chan_data_34_12;
    assign token_in_vec_12[14] = token_34_12;
    assign in_chan_dep_vld_vec_12[15] = dep_chan_vld_36_12;
    assign in_chan_dep_data_vec_12[591 : 555] = dep_chan_data_36_12;
    assign token_in_vec_12[15] = token_36_12;
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[0];
    assign dep_chan_vld_12_14 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_14 = out_chan_dep_data_12;
    assign token_12_14 = token_out_vec_12[1];
    assign dep_chan_vld_12_15 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_15 = out_chan_dep_data_12;
    assign token_12_15 = token_out_vec_12[2];
    assign dep_chan_vld_12_16 = out_chan_dep_vld_vec_12[3];
    assign dep_chan_data_12_16 = out_chan_dep_data_12;
    assign token_12_16 = token_out_vec_12[3];
    assign dep_chan_vld_12_17 = out_chan_dep_vld_vec_12[4];
    assign dep_chan_data_12_17 = out_chan_dep_data_12;
    assign token_12_17 = token_out_vec_12[4];
    assign dep_chan_vld_12_18 = out_chan_dep_vld_vec_12[5];
    assign dep_chan_data_12_18 = out_chan_dep_data_12;
    assign token_12_18 = token_out_vec_12[5];
    assign dep_chan_vld_12_19 = out_chan_dep_vld_vec_12[6];
    assign dep_chan_data_12_19 = out_chan_dep_data_12;
    assign token_12_19 = token_out_vec_12[6];
    assign dep_chan_vld_12_20 = out_chan_dep_vld_vec_12[7];
    assign dep_chan_data_12_20 = out_chan_dep_data_12;
    assign token_12_20 = token_out_vec_12[7];
    assign dep_chan_vld_12_22 = out_chan_dep_vld_vec_12[8];
    assign dep_chan_data_12_22 = out_chan_dep_data_12;
    assign token_12_22 = token_out_vec_12[8];
    assign dep_chan_vld_12_24 = out_chan_dep_vld_vec_12[9];
    assign dep_chan_data_12_24 = out_chan_dep_data_12;
    assign token_12_24 = token_out_vec_12[9];
    assign dep_chan_vld_12_26 = out_chan_dep_vld_vec_12[10];
    assign dep_chan_data_12_26 = out_chan_dep_data_12;
    assign token_12_26 = token_out_vec_12[10];
    assign dep_chan_vld_12_28 = out_chan_dep_vld_vec_12[11];
    assign dep_chan_data_12_28 = out_chan_dep_data_12;
    assign token_12_28 = token_out_vec_12[11];
    assign dep_chan_vld_12_30 = out_chan_dep_vld_vec_12[12];
    assign dep_chan_data_12_30 = out_chan_dep_data_12;
    assign token_12_30 = token_out_vec_12[12];
    assign dep_chan_vld_12_32 = out_chan_dep_vld_vec_12[13];
    assign dep_chan_data_12_32 = out_chan_dep_data_12;
    assign token_12_32 = token_out_vec_12[13];
    assign dep_chan_vld_12_34 = out_chan_dep_vld_vec_12[14];
    assign dep_chan_data_12_34 = out_chan_dep_data_12;
    assign token_12_34 = token_out_vec_12[14];
    assign dep_chan_vld_12_36 = out_chan_dep_vld_vec_12[15];
    assign dep_chan_data_12_36 = out_chan_dep_data_12;
    assign token_12_36 = token_out_vec_12[15];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0
    TopPL_hls_deadlock_detect_unit #(37, 13, 9, 9) TopPL_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0;
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL0_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_done & ap_done_reg_0 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL0_channel_U.if_read);
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0;
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0;
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    assign proc_13_data_FIFO_blk[3] = 1'b0;
    assign proc_13_data_PIPO_blk[3] = 1'b0;
    assign proc_13_start_FIFO_blk[3] = 1'b0;
    assign proc_13_TLF_FIFO_blk[3] = 1'b0;
    assign proc_13_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_13_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_13[3] = dl_detect_out ? proc_dep_vld_vec_13_reg[3] : (proc_13_data_FIFO_blk[3] | proc_13_data_PIPO_blk[3] | proc_13_start_FIFO_blk[3] | proc_13_TLF_FIFO_blk[3] | proc_13_input_sync_blk[3] | proc_13_output_sync_blk[3]);
    assign proc_13_data_FIFO_blk[4] = 1'b0;
    assign proc_13_data_PIPO_blk[4] = 1'b0;
    assign proc_13_start_FIFO_blk[4] = 1'b0;
    assign proc_13_TLF_FIFO_blk[4] = 1'b0;
    assign proc_13_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_13_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_13[4] = dl_detect_out ? proc_dep_vld_vec_13_reg[4] : (proc_13_data_FIFO_blk[4] | proc_13_data_PIPO_blk[4] | proc_13_start_FIFO_blk[4] | proc_13_TLF_FIFO_blk[4] | proc_13_input_sync_blk[4] | proc_13_output_sync_blk[4]);
    assign proc_13_data_FIFO_blk[5] = 1'b0;
    assign proc_13_data_PIPO_blk[5] = 1'b0;
    assign proc_13_start_FIFO_blk[5] = 1'b0;
    assign proc_13_TLF_FIFO_blk[5] = 1'b0;
    assign proc_13_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_13_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_13[5] = dl_detect_out ? proc_dep_vld_vec_13_reg[5] : (proc_13_data_FIFO_blk[5] | proc_13_data_PIPO_blk[5] | proc_13_start_FIFO_blk[5] | proc_13_TLF_FIFO_blk[5] | proc_13_input_sync_blk[5] | proc_13_output_sync_blk[5]);
    assign proc_13_data_FIFO_blk[6] = 1'b0;
    assign proc_13_data_PIPO_blk[6] = 1'b0;
    assign proc_13_start_FIFO_blk[6] = 1'b0;
    assign proc_13_TLF_FIFO_blk[6] = 1'b0;
    assign proc_13_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_13_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_13[6] = dl_detect_out ? proc_dep_vld_vec_13_reg[6] : (proc_13_data_FIFO_blk[6] | proc_13_data_PIPO_blk[6] | proc_13_start_FIFO_blk[6] | proc_13_TLF_FIFO_blk[6] | proc_13_input_sync_blk[6] | proc_13_output_sync_blk[6]);
    assign proc_13_data_FIFO_blk[7] = 1'b0;
    assign proc_13_data_PIPO_blk[7] = 1'b0;
    assign proc_13_start_FIFO_blk[7] = 1'b0;
    assign proc_13_TLF_FIFO_blk[7] = 1'b0;
    assign proc_13_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_13_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_13[7] = dl_detect_out ? proc_dep_vld_vec_13_reg[7] : (proc_13_data_FIFO_blk[7] | proc_13_data_PIPO_blk[7] | proc_13_start_FIFO_blk[7] | proc_13_TLF_FIFO_blk[7] | proc_13_input_sync_blk[7] | proc_13_output_sync_blk[7]);
    assign proc_13_data_FIFO_blk[8] = 1'b0;
    assign proc_13_data_PIPO_blk[8] = 1'b0;
    assign proc_13_start_FIFO_blk[8] = 1'b0;
    assign proc_13_TLF_FIFO_blk[8] = 1'b0;
    assign proc_13_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_13_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_13[8] = dl_detect_out ? proc_dep_vld_vec_13_reg[8] : (proc_13_data_FIFO_blk[8] | proc_13_data_PIPO_blk[8] | proc_13_start_FIFO_blk[8] | proc_13_TLF_FIFO_blk[8] | proc_13_input_sync_blk[8] | proc_13_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[36 : 0] = dep_chan_data_12_13;
    assign token_in_vec_13[0] = token_12_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[73 : 37] = dep_chan_data_14_13;
    assign token_in_vec_13[1] = token_14_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_15_13;
    assign in_chan_dep_data_vec_13[110 : 74] = dep_chan_data_15_13;
    assign token_in_vec_13[2] = token_15_13;
    assign in_chan_dep_vld_vec_13[3] = dep_chan_vld_16_13;
    assign in_chan_dep_data_vec_13[147 : 111] = dep_chan_data_16_13;
    assign token_in_vec_13[3] = token_16_13;
    assign in_chan_dep_vld_vec_13[4] = dep_chan_vld_17_13;
    assign in_chan_dep_data_vec_13[184 : 148] = dep_chan_data_17_13;
    assign token_in_vec_13[4] = token_17_13;
    assign in_chan_dep_vld_vec_13[5] = dep_chan_vld_18_13;
    assign in_chan_dep_data_vec_13[221 : 185] = dep_chan_data_18_13;
    assign token_in_vec_13[5] = token_18_13;
    assign in_chan_dep_vld_vec_13[6] = dep_chan_vld_19_13;
    assign in_chan_dep_data_vec_13[258 : 222] = dep_chan_data_19_13;
    assign token_in_vec_13[6] = token_19_13;
    assign in_chan_dep_vld_vec_13[7] = dep_chan_vld_20_13;
    assign in_chan_dep_data_vec_13[295 : 259] = dep_chan_data_20_13;
    assign token_in_vec_13[7] = token_20_13;
    assign in_chan_dep_vld_vec_13[8] = dep_chan_vld_21_13;
    assign in_chan_dep_data_vec_13[332 : 296] = dep_chan_data_21_13;
    assign token_in_vec_13[8] = token_21_13;
    assign dep_chan_vld_13_21 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_21 = out_chan_dep_data_13;
    assign token_13_21 = token_out_vec_13[0];
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[1];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[2];
    assign dep_chan_vld_13_15 = out_chan_dep_vld_vec_13[3];
    assign dep_chan_data_13_15 = out_chan_dep_data_13;
    assign token_13_15 = token_out_vec_13[3];
    assign dep_chan_vld_13_16 = out_chan_dep_vld_vec_13[4];
    assign dep_chan_data_13_16 = out_chan_dep_data_13;
    assign token_13_16 = token_out_vec_13[4];
    assign dep_chan_vld_13_17 = out_chan_dep_vld_vec_13[5];
    assign dep_chan_data_13_17 = out_chan_dep_data_13;
    assign token_13_17 = token_out_vec_13[5];
    assign dep_chan_vld_13_18 = out_chan_dep_vld_vec_13[6];
    assign dep_chan_data_13_18 = out_chan_dep_data_13;
    assign token_13_18 = token_out_vec_13[6];
    assign dep_chan_vld_13_19 = out_chan_dep_vld_vec_13[7];
    assign dep_chan_data_13_19 = out_chan_dep_data_13;
    assign token_13_19 = token_out_vec_13[7];
    assign dep_chan_vld_13_20 = out_chan_dep_vld_vec_13[8];
    assign dep_chan_data_13_20 = out_chan_dep_data_13;
    assign token_13_20 = token_out_vec_13[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0
    TopPL_hls_deadlock_detect_unit #(37, 14, 9, 9) TopPL_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0;
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR0_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_done & ap_done_reg_1 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR0_channel_U.if_read);
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0;
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0;
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_14_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    assign proc_14_data_FIFO_blk[3] = 1'b0;
    assign proc_14_data_PIPO_blk[3] = 1'b0;
    assign proc_14_start_FIFO_blk[3] = 1'b0;
    assign proc_14_TLF_FIFO_blk[3] = 1'b0;
    assign proc_14_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_14_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_14[3] = dl_detect_out ? proc_dep_vld_vec_14_reg[3] : (proc_14_data_FIFO_blk[3] | proc_14_data_PIPO_blk[3] | proc_14_start_FIFO_blk[3] | proc_14_TLF_FIFO_blk[3] | proc_14_input_sync_blk[3] | proc_14_output_sync_blk[3]);
    assign proc_14_data_FIFO_blk[4] = 1'b0;
    assign proc_14_data_PIPO_blk[4] = 1'b0;
    assign proc_14_start_FIFO_blk[4] = 1'b0;
    assign proc_14_TLF_FIFO_blk[4] = 1'b0;
    assign proc_14_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_14_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_14[4] = dl_detect_out ? proc_dep_vld_vec_14_reg[4] : (proc_14_data_FIFO_blk[4] | proc_14_data_PIPO_blk[4] | proc_14_start_FIFO_blk[4] | proc_14_TLF_FIFO_blk[4] | proc_14_input_sync_blk[4] | proc_14_output_sync_blk[4]);
    assign proc_14_data_FIFO_blk[5] = 1'b0;
    assign proc_14_data_PIPO_blk[5] = 1'b0;
    assign proc_14_start_FIFO_blk[5] = 1'b0;
    assign proc_14_TLF_FIFO_blk[5] = 1'b0;
    assign proc_14_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_14_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_14[5] = dl_detect_out ? proc_dep_vld_vec_14_reg[5] : (proc_14_data_FIFO_blk[5] | proc_14_data_PIPO_blk[5] | proc_14_start_FIFO_blk[5] | proc_14_TLF_FIFO_blk[5] | proc_14_input_sync_blk[5] | proc_14_output_sync_blk[5]);
    assign proc_14_data_FIFO_blk[6] = 1'b0;
    assign proc_14_data_PIPO_blk[6] = 1'b0;
    assign proc_14_start_FIFO_blk[6] = 1'b0;
    assign proc_14_TLF_FIFO_blk[6] = 1'b0;
    assign proc_14_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_14_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_14[6] = dl_detect_out ? proc_dep_vld_vec_14_reg[6] : (proc_14_data_FIFO_blk[6] | proc_14_data_PIPO_blk[6] | proc_14_start_FIFO_blk[6] | proc_14_TLF_FIFO_blk[6] | proc_14_input_sync_blk[6] | proc_14_output_sync_blk[6]);
    assign proc_14_data_FIFO_blk[7] = 1'b0;
    assign proc_14_data_PIPO_blk[7] = 1'b0;
    assign proc_14_start_FIFO_blk[7] = 1'b0;
    assign proc_14_TLF_FIFO_blk[7] = 1'b0;
    assign proc_14_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_14_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_14[7] = dl_detect_out ? proc_dep_vld_vec_14_reg[7] : (proc_14_data_FIFO_blk[7] | proc_14_data_PIPO_blk[7] | proc_14_start_FIFO_blk[7] | proc_14_TLF_FIFO_blk[7] | proc_14_input_sync_blk[7] | proc_14_output_sync_blk[7]);
    assign proc_14_data_FIFO_blk[8] = 1'b0;
    assign proc_14_data_PIPO_blk[8] = 1'b0;
    assign proc_14_start_FIFO_blk[8] = 1'b0;
    assign proc_14_TLF_FIFO_blk[8] = 1'b0;
    assign proc_14_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_7_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_14_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_14[8] = dl_detect_out ? proc_dep_vld_vec_14_reg[8] : (proc_14_data_FIFO_blk[8] | proc_14_data_PIPO_blk[8] | proc_14_start_FIFO_blk[8] | proc_14_TLF_FIFO_blk[8] | proc_14_input_sync_blk[8] | proc_14_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_12_14;
    assign in_chan_dep_data_vec_14[36 : 0] = dep_chan_data_12_14;
    assign token_in_vec_14[0] = token_12_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[73 : 37] = dep_chan_data_13_14;
    assign token_in_vec_14[1] = token_13_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[110 : 74] = dep_chan_data_15_14;
    assign token_in_vec_14[2] = token_15_14;
    assign in_chan_dep_vld_vec_14[3] = dep_chan_vld_16_14;
    assign in_chan_dep_data_vec_14[147 : 111] = dep_chan_data_16_14;
    assign token_in_vec_14[3] = token_16_14;
    assign in_chan_dep_vld_vec_14[4] = dep_chan_vld_17_14;
    assign in_chan_dep_data_vec_14[184 : 148] = dep_chan_data_17_14;
    assign token_in_vec_14[4] = token_17_14;
    assign in_chan_dep_vld_vec_14[5] = dep_chan_vld_18_14;
    assign in_chan_dep_data_vec_14[221 : 185] = dep_chan_data_18_14;
    assign token_in_vec_14[5] = token_18_14;
    assign in_chan_dep_vld_vec_14[6] = dep_chan_vld_19_14;
    assign in_chan_dep_data_vec_14[258 : 222] = dep_chan_data_19_14;
    assign token_in_vec_14[6] = token_19_14;
    assign in_chan_dep_vld_vec_14[7] = dep_chan_vld_20_14;
    assign in_chan_dep_data_vec_14[295 : 259] = dep_chan_data_20_14;
    assign token_in_vec_14[7] = token_20_14;
    assign in_chan_dep_vld_vec_14[8] = dep_chan_vld_23_14;
    assign in_chan_dep_data_vec_14[332 : 296] = dep_chan_data_23_14;
    assign token_in_vec_14[8] = token_23_14;
    assign dep_chan_vld_14_23 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_23 = out_chan_dep_data_14;
    assign token_14_23 = token_out_vec_14[0];
    assign dep_chan_vld_14_12 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_12 = out_chan_dep_data_14;
    assign token_14_12 = token_out_vec_14[1];
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[2];
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[3];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[3];
    assign dep_chan_vld_14_16 = out_chan_dep_vld_vec_14[4];
    assign dep_chan_data_14_16 = out_chan_dep_data_14;
    assign token_14_16 = token_out_vec_14[4];
    assign dep_chan_vld_14_17 = out_chan_dep_vld_vec_14[5];
    assign dep_chan_data_14_17 = out_chan_dep_data_14;
    assign token_14_17 = token_out_vec_14[5];
    assign dep_chan_vld_14_18 = out_chan_dep_vld_vec_14[6];
    assign dep_chan_data_14_18 = out_chan_dep_data_14;
    assign token_14_18 = token_out_vec_14[6];
    assign dep_chan_vld_14_19 = out_chan_dep_vld_vec_14[7];
    assign dep_chan_data_14_19 = out_chan_dep_data_14;
    assign token_14_19 = token_out_vec_14[7];
    assign dep_chan_vld_14_20 = out_chan_dep_vld_vec_14[8];
    assign dep_chan_data_14_20 = out_chan_dep_data_14;
    assign token_14_20 = token_out_vec_14[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0
    TopPL_hls_deadlock_detect_unit #(37, 15, 9, 9) TopPL_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0;
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0;
    assign proc_15_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL1_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_done & ap_done_reg_2 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL1_channel_U.if_read);
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0;
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0;
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0;
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    assign proc_15_data_FIFO_blk[3] = 1'b0;
    assign proc_15_data_PIPO_blk[3] = 1'b0;
    assign proc_15_start_FIFO_blk[3] = 1'b0;
    assign proc_15_TLF_FIFO_blk[3] = 1'b0;
    assign proc_15_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_15_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_15[3] = dl_detect_out ? proc_dep_vld_vec_15_reg[3] : (proc_15_data_FIFO_blk[3] | proc_15_data_PIPO_blk[3] | proc_15_start_FIFO_blk[3] | proc_15_TLF_FIFO_blk[3] | proc_15_input_sync_blk[3] | proc_15_output_sync_blk[3]);
    assign proc_15_data_FIFO_blk[4] = 1'b0;
    assign proc_15_data_PIPO_blk[4] = 1'b0;
    assign proc_15_start_FIFO_blk[4] = 1'b0;
    assign proc_15_TLF_FIFO_blk[4] = 1'b0;
    assign proc_15_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_15_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_15[4] = dl_detect_out ? proc_dep_vld_vec_15_reg[4] : (proc_15_data_FIFO_blk[4] | proc_15_data_PIPO_blk[4] | proc_15_start_FIFO_blk[4] | proc_15_TLF_FIFO_blk[4] | proc_15_input_sync_blk[4] | proc_15_output_sync_blk[4]);
    assign proc_15_data_FIFO_blk[5] = 1'b0;
    assign proc_15_data_PIPO_blk[5] = 1'b0;
    assign proc_15_start_FIFO_blk[5] = 1'b0;
    assign proc_15_TLF_FIFO_blk[5] = 1'b0;
    assign proc_15_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_15_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_15[5] = dl_detect_out ? proc_dep_vld_vec_15_reg[5] : (proc_15_data_FIFO_blk[5] | proc_15_data_PIPO_blk[5] | proc_15_start_FIFO_blk[5] | proc_15_TLF_FIFO_blk[5] | proc_15_input_sync_blk[5] | proc_15_output_sync_blk[5]);
    assign proc_15_data_FIFO_blk[6] = 1'b0;
    assign proc_15_data_PIPO_blk[6] = 1'b0;
    assign proc_15_start_FIFO_blk[6] = 1'b0;
    assign proc_15_TLF_FIFO_blk[6] = 1'b0;
    assign proc_15_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_15_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_15[6] = dl_detect_out ? proc_dep_vld_vec_15_reg[6] : (proc_15_data_FIFO_blk[6] | proc_15_data_PIPO_blk[6] | proc_15_start_FIFO_blk[6] | proc_15_TLF_FIFO_blk[6] | proc_15_input_sync_blk[6] | proc_15_output_sync_blk[6]);
    assign proc_15_data_FIFO_blk[7] = 1'b0;
    assign proc_15_data_PIPO_blk[7] = 1'b0;
    assign proc_15_start_FIFO_blk[7] = 1'b0;
    assign proc_15_TLF_FIFO_blk[7] = 1'b0;
    assign proc_15_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_15_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_15[7] = dl_detect_out ? proc_dep_vld_vec_15_reg[7] : (proc_15_data_FIFO_blk[7] | proc_15_data_PIPO_blk[7] | proc_15_start_FIFO_blk[7] | proc_15_TLF_FIFO_blk[7] | proc_15_input_sync_blk[7] | proc_15_output_sync_blk[7]);
    assign proc_15_data_FIFO_blk[8] = 1'b0;
    assign proc_15_data_PIPO_blk[8] = 1'b0;
    assign proc_15_start_FIFO_blk[8] = 1'b0;
    assign proc_15_TLF_FIFO_blk[8] = 1'b0;
    assign proc_15_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_1_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_15_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_15[8] = dl_detect_out ? proc_dep_vld_vec_15_reg[8] : (proc_15_data_FIFO_blk[8] | proc_15_data_PIPO_blk[8] | proc_15_start_FIFO_blk[8] | proc_15_TLF_FIFO_blk[8] | proc_15_input_sync_blk[8] | proc_15_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_12_15;
    assign in_chan_dep_data_vec_15[36 : 0] = dep_chan_data_12_15;
    assign token_in_vec_15[0] = token_12_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_13_15;
    assign in_chan_dep_data_vec_15[73 : 37] = dep_chan_data_13_15;
    assign token_in_vec_15[1] = token_13_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[110 : 74] = dep_chan_data_14_15;
    assign token_in_vec_15[2] = token_14_15;
    assign in_chan_dep_vld_vec_15[3] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[147 : 111] = dep_chan_data_16_15;
    assign token_in_vec_15[3] = token_16_15;
    assign in_chan_dep_vld_vec_15[4] = dep_chan_vld_17_15;
    assign in_chan_dep_data_vec_15[184 : 148] = dep_chan_data_17_15;
    assign token_in_vec_15[4] = token_17_15;
    assign in_chan_dep_vld_vec_15[5] = dep_chan_vld_18_15;
    assign in_chan_dep_data_vec_15[221 : 185] = dep_chan_data_18_15;
    assign token_in_vec_15[5] = token_18_15;
    assign in_chan_dep_vld_vec_15[6] = dep_chan_vld_19_15;
    assign in_chan_dep_data_vec_15[258 : 222] = dep_chan_data_19_15;
    assign token_in_vec_15[6] = token_19_15;
    assign in_chan_dep_vld_vec_15[7] = dep_chan_vld_20_15;
    assign in_chan_dep_data_vec_15[295 : 259] = dep_chan_data_20_15;
    assign token_in_vec_15[7] = token_20_15;
    assign in_chan_dep_vld_vec_15[8] = dep_chan_vld_25_15;
    assign in_chan_dep_data_vec_15[332 : 296] = dep_chan_data_25_15;
    assign token_in_vec_15[8] = token_25_15;
    assign dep_chan_vld_15_25 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_25 = out_chan_dep_data_15;
    assign token_15_25 = token_out_vec_15[0];
    assign dep_chan_vld_15_12 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_12 = out_chan_dep_data_15;
    assign token_15_12 = token_out_vec_15[1];
    assign dep_chan_vld_15_13 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_13 = out_chan_dep_data_15;
    assign token_15_13 = token_out_vec_15[2];
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[3];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[3];
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[4];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[4];
    assign dep_chan_vld_15_17 = out_chan_dep_vld_vec_15[5];
    assign dep_chan_data_15_17 = out_chan_dep_data_15;
    assign token_15_17 = token_out_vec_15[5];
    assign dep_chan_vld_15_18 = out_chan_dep_vld_vec_15[6];
    assign dep_chan_data_15_18 = out_chan_dep_data_15;
    assign token_15_18 = token_out_vec_15[6];
    assign dep_chan_vld_15_19 = out_chan_dep_vld_vec_15[7];
    assign dep_chan_data_15_19 = out_chan_dep_data_15;
    assign token_15_19 = token_out_vec_15[7];
    assign dep_chan_vld_15_20 = out_chan_dep_vld_vec_15[8];
    assign dep_chan_data_15_20 = out_chan_dep_data_15;
    assign token_15_20 = token_out_vec_15[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0
    TopPL_hls_deadlock_detect_unit #(37, 16, 9, 9) TopPL_hls_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0;
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR1_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_done & ap_done_reg_3 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR1_channel_U.if_read);
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0;
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0;
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    assign proc_16_data_FIFO_blk[2] = 1'b0;
    assign proc_16_data_PIPO_blk[2] = 1'b0;
    assign proc_16_start_FIFO_blk[2] = 1'b0;
    assign proc_16_TLF_FIFO_blk[2] = 1'b0;
    assign proc_16_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_16_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_16[2] = dl_detect_out ? proc_dep_vld_vec_16_reg[2] : (proc_16_data_FIFO_blk[2] | proc_16_data_PIPO_blk[2] | proc_16_start_FIFO_blk[2] | proc_16_TLF_FIFO_blk[2] | proc_16_input_sync_blk[2] | proc_16_output_sync_blk[2]);
    assign proc_16_data_FIFO_blk[3] = 1'b0;
    assign proc_16_data_PIPO_blk[3] = 1'b0;
    assign proc_16_start_FIFO_blk[3] = 1'b0;
    assign proc_16_TLF_FIFO_blk[3] = 1'b0;
    assign proc_16_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_16_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_16[3] = dl_detect_out ? proc_dep_vld_vec_16_reg[3] : (proc_16_data_FIFO_blk[3] | proc_16_data_PIPO_blk[3] | proc_16_start_FIFO_blk[3] | proc_16_TLF_FIFO_blk[3] | proc_16_input_sync_blk[3] | proc_16_output_sync_blk[3]);
    assign proc_16_data_FIFO_blk[4] = 1'b0;
    assign proc_16_data_PIPO_blk[4] = 1'b0;
    assign proc_16_start_FIFO_blk[4] = 1'b0;
    assign proc_16_TLF_FIFO_blk[4] = 1'b0;
    assign proc_16_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_16_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_16[4] = dl_detect_out ? proc_dep_vld_vec_16_reg[4] : (proc_16_data_FIFO_blk[4] | proc_16_data_PIPO_blk[4] | proc_16_start_FIFO_blk[4] | proc_16_TLF_FIFO_blk[4] | proc_16_input_sync_blk[4] | proc_16_output_sync_blk[4]);
    assign proc_16_data_FIFO_blk[5] = 1'b0;
    assign proc_16_data_PIPO_blk[5] = 1'b0;
    assign proc_16_start_FIFO_blk[5] = 1'b0;
    assign proc_16_TLF_FIFO_blk[5] = 1'b0;
    assign proc_16_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_16_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_16[5] = dl_detect_out ? proc_dep_vld_vec_16_reg[5] : (proc_16_data_FIFO_blk[5] | proc_16_data_PIPO_blk[5] | proc_16_start_FIFO_blk[5] | proc_16_TLF_FIFO_blk[5] | proc_16_input_sync_blk[5] | proc_16_output_sync_blk[5]);
    assign proc_16_data_FIFO_blk[6] = 1'b0;
    assign proc_16_data_PIPO_blk[6] = 1'b0;
    assign proc_16_start_FIFO_blk[6] = 1'b0;
    assign proc_16_TLF_FIFO_blk[6] = 1'b0;
    assign proc_16_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_16_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_16[6] = dl_detect_out ? proc_dep_vld_vec_16_reg[6] : (proc_16_data_FIFO_blk[6] | proc_16_data_PIPO_blk[6] | proc_16_start_FIFO_blk[6] | proc_16_TLF_FIFO_blk[6] | proc_16_input_sync_blk[6] | proc_16_output_sync_blk[6]);
    assign proc_16_data_FIFO_blk[7] = 1'b0;
    assign proc_16_data_PIPO_blk[7] = 1'b0;
    assign proc_16_start_FIFO_blk[7] = 1'b0;
    assign proc_16_TLF_FIFO_blk[7] = 1'b0;
    assign proc_16_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_16_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_16[7] = dl_detect_out ? proc_dep_vld_vec_16_reg[7] : (proc_16_data_FIFO_blk[7] | proc_16_data_PIPO_blk[7] | proc_16_start_FIFO_blk[7] | proc_16_TLF_FIFO_blk[7] | proc_16_input_sync_blk[7] | proc_16_output_sync_blk[7]);
    assign proc_16_data_FIFO_blk[8] = 1'b0;
    assign proc_16_data_PIPO_blk[8] = 1'b0;
    assign proc_16_start_FIFO_blk[8] = 1'b0;
    assign proc_16_TLF_FIFO_blk[8] = 1'b0;
    assign proc_16_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_6_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_16_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_16[8] = dl_detect_out ? proc_dep_vld_vec_16_reg[8] : (proc_16_data_FIFO_blk[8] | proc_16_data_PIPO_blk[8] | proc_16_start_FIFO_blk[8] | proc_16_TLF_FIFO_blk[8] | proc_16_input_sync_blk[8] | proc_16_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_12_16;
    assign in_chan_dep_data_vec_16[36 : 0] = dep_chan_data_12_16;
    assign token_in_vec_16[0] = token_12_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_13_16;
    assign in_chan_dep_data_vec_16[73 : 37] = dep_chan_data_13_16;
    assign token_in_vec_16[1] = token_13_16;
    assign in_chan_dep_vld_vec_16[2] = dep_chan_vld_14_16;
    assign in_chan_dep_data_vec_16[110 : 74] = dep_chan_data_14_16;
    assign token_in_vec_16[2] = token_14_16;
    assign in_chan_dep_vld_vec_16[3] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[147 : 111] = dep_chan_data_15_16;
    assign token_in_vec_16[3] = token_15_16;
    assign in_chan_dep_vld_vec_16[4] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[184 : 148] = dep_chan_data_17_16;
    assign token_in_vec_16[4] = token_17_16;
    assign in_chan_dep_vld_vec_16[5] = dep_chan_vld_18_16;
    assign in_chan_dep_data_vec_16[221 : 185] = dep_chan_data_18_16;
    assign token_in_vec_16[5] = token_18_16;
    assign in_chan_dep_vld_vec_16[6] = dep_chan_vld_19_16;
    assign in_chan_dep_data_vec_16[258 : 222] = dep_chan_data_19_16;
    assign token_in_vec_16[6] = token_19_16;
    assign in_chan_dep_vld_vec_16[7] = dep_chan_vld_20_16;
    assign in_chan_dep_data_vec_16[295 : 259] = dep_chan_data_20_16;
    assign token_in_vec_16[7] = token_20_16;
    assign in_chan_dep_vld_vec_16[8] = dep_chan_vld_27_16;
    assign in_chan_dep_data_vec_16[332 : 296] = dep_chan_data_27_16;
    assign token_in_vec_16[8] = token_27_16;
    assign dep_chan_vld_16_27 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_27 = out_chan_dep_data_16;
    assign token_16_27 = token_out_vec_16[0];
    assign dep_chan_vld_16_12 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_12 = out_chan_dep_data_16;
    assign token_16_12 = token_out_vec_16[1];
    assign dep_chan_vld_16_13 = out_chan_dep_vld_vec_16[2];
    assign dep_chan_data_16_13 = out_chan_dep_data_16;
    assign token_16_13 = token_out_vec_16[2];
    assign dep_chan_vld_16_14 = out_chan_dep_vld_vec_16[3];
    assign dep_chan_data_16_14 = out_chan_dep_data_16;
    assign token_16_14 = token_out_vec_16[3];
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[4];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[4];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[5];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[5];
    assign dep_chan_vld_16_18 = out_chan_dep_vld_vec_16[6];
    assign dep_chan_data_16_18 = out_chan_dep_data_16;
    assign token_16_18 = token_out_vec_16[6];
    assign dep_chan_vld_16_19 = out_chan_dep_vld_vec_16[7];
    assign dep_chan_data_16_19 = out_chan_dep_data_16;
    assign token_16_19 = token_out_vec_16[7];
    assign dep_chan_vld_16_20 = out_chan_dep_vld_vec_16[8];
    assign dep_chan_data_16_20 = out_chan_dep_data_16;
    assign token_16_20 = token_out_vec_16[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0
    TopPL_hls_deadlock_detect_unit #(37, 17, 9, 9) TopPL_hls_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0;
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0;
    assign proc_17_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL2_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_done & ap_done_reg_4 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL2_channel_U.if_read);
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0;
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0;
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0;
    assign proc_17_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_17_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    assign proc_17_data_FIFO_blk[3] = 1'b0;
    assign proc_17_data_PIPO_blk[3] = 1'b0;
    assign proc_17_start_FIFO_blk[3] = 1'b0;
    assign proc_17_TLF_FIFO_blk[3] = 1'b0;
    assign proc_17_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_17_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_17[3] = dl_detect_out ? proc_dep_vld_vec_17_reg[3] : (proc_17_data_FIFO_blk[3] | proc_17_data_PIPO_blk[3] | proc_17_start_FIFO_blk[3] | proc_17_TLF_FIFO_blk[3] | proc_17_input_sync_blk[3] | proc_17_output_sync_blk[3]);
    assign proc_17_data_FIFO_blk[4] = 1'b0;
    assign proc_17_data_PIPO_blk[4] = 1'b0;
    assign proc_17_start_FIFO_blk[4] = 1'b0;
    assign proc_17_TLF_FIFO_blk[4] = 1'b0;
    assign proc_17_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_17_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_17[4] = dl_detect_out ? proc_dep_vld_vec_17_reg[4] : (proc_17_data_FIFO_blk[4] | proc_17_data_PIPO_blk[4] | proc_17_start_FIFO_blk[4] | proc_17_TLF_FIFO_blk[4] | proc_17_input_sync_blk[4] | proc_17_output_sync_blk[4]);
    assign proc_17_data_FIFO_blk[5] = 1'b0;
    assign proc_17_data_PIPO_blk[5] = 1'b0;
    assign proc_17_start_FIFO_blk[5] = 1'b0;
    assign proc_17_TLF_FIFO_blk[5] = 1'b0;
    assign proc_17_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_17_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_17[5] = dl_detect_out ? proc_dep_vld_vec_17_reg[5] : (proc_17_data_FIFO_blk[5] | proc_17_data_PIPO_blk[5] | proc_17_start_FIFO_blk[5] | proc_17_TLF_FIFO_blk[5] | proc_17_input_sync_blk[5] | proc_17_output_sync_blk[5]);
    assign proc_17_data_FIFO_blk[6] = 1'b0;
    assign proc_17_data_PIPO_blk[6] = 1'b0;
    assign proc_17_start_FIFO_blk[6] = 1'b0;
    assign proc_17_TLF_FIFO_blk[6] = 1'b0;
    assign proc_17_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_17_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_17[6] = dl_detect_out ? proc_dep_vld_vec_17_reg[6] : (proc_17_data_FIFO_blk[6] | proc_17_data_PIPO_blk[6] | proc_17_start_FIFO_blk[6] | proc_17_TLF_FIFO_blk[6] | proc_17_input_sync_blk[6] | proc_17_output_sync_blk[6]);
    assign proc_17_data_FIFO_blk[7] = 1'b0;
    assign proc_17_data_PIPO_blk[7] = 1'b0;
    assign proc_17_start_FIFO_blk[7] = 1'b0;
    assign proc_17_TLF_FIFO_blk[7] = 1'b0;
    assign proc_17_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_17_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_17[7] = dl_detect_out ? proc_dep_vld_vec_17_reg[7] : (proc_17_data_FIFO_blk[7] | proc_17_data_PIPO_blk[7] | proc_17_start_FIFO_blk[7] | proc_17_TLF_FIFO_blk[7] | proc_17_input_sync_blk[7] | proc_17_output_sync_blk[7]);
    assign proc_17_data_FIFO_blk[8] = 1'b0;
    assign proc_17_data_PIPO_blk[8] = 1'b0;
    assign proc_17_start_FIFO_blk[8] = 1'b0;
    assign proc_17_TLF_FIFO_blk[8] = 1'b0;
    assign proc_17_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_2_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_17_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_17[8] = dl_detect_out ? proc_dep_vld_vec_17_reg[8] : (proc_17_data_FIFO_blk[8] | proc_17_data_PIPO_blk[8] | proc_17_start_FIFO_blk[8] | proc_17_TLF_FIFO_blk[8] | proc_17_input_sync_blk[8] | proc_17_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_12_17;
    assign in_chan_dep_data_vec_17[36 : 0] = dep_chan_data_12_17;
    assign token_in_vec_17[0] = token_12_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_13_17;
    assign in_chan_dep_data_vec_17[73 : 37] = dep_chan_data_13_17;
    assign token_in_vec_17[1] = token_13_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_14_17;
    assign in_chan_dep_data_vec_17[110 : 74] = dep_chan_data_14_17;
    assign token_in_vec_17[2] = token_14_17;
    assign in_chan_dep_vld_vec_17[3] = dep_chan_vld_15_17;
    assign in_chan_dep_data_vec_17[147 : 111] = dep_chan_data_15_17;
    assign token_in_vec_17[3] = token_15_17;
    assign in_chan_dep_vld_vec_17[4] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[184 : 148] = dep_chan_data_16_17;
    assign token_in_vec_17[4] = token_16_17;
    assign in_chan_dep_vld_vec_17[5] = dep_chan_vld_18_17;
    assign in_chan_dep_data_vec_17[221 : 185] = dep_chan_data_18_17;
    assign token_in_vec_17[5] = token_18_17;
    assign in_chan_dep_vld_vec_17[6] = dep_chan_vld_19_17;
    assign in_chan_dep_data_vec_17[258 : 222] = dep_chan_data_19_17;
    assign token_in_vec_17[6] = token_19_17;
    assign in_chan_dep_vld_vec_17[7] = dep_chan_vld_20_17;
    assign in_chan_dep_data_vec_17[295 : 259] = dep_chan_data_20_17;
    assign token_in_vec_17[7] = token_20_17;
    assign in_chan_dep_vld_vec_17[8] = dep_chan_vld_29_17;
    assign in_chan_dep_data_vec_17[332 : 296] = dep_chan_data_29_17;
    assign token_in_vec_17[8] = token_29_17;
    assign dep_chan_vld_17_29 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_29 = out_chan_dep_data_17;
    assign token_17_29 = token_out_vec_17[0];
    assign dep_chan_vld_17_12 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_12 = out_chan_dep_data_17;
    assign token_17_12 = token_out_vec_17[1];
    assign dep_chan_vld_17_13 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_13 = out_chan_dep_data_17;
    assign token_17_13 = token_out_vec_17[2];
    assign dep_chan_vld_17_14 = out_chan_dep_vld_vec_17[3];
    assign dep_chan_data_17_14 = out_chan_dep_data_17;
    assign token_17_14 = token_out_vec_17[3];
    assign dep_chan_vld_17_15 = out_chan_dep_vld_vec_17[4];
    assign dep_chan_data_17_15 = out_chan_dep_data_17;
    assign token_17_15 = token_out_vec_17[4];
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[5];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[5];
    assign dep_chan_vld_17_18 = out_chan_dep_vld_vec_17[6];
    assign dep_chan_data_17_18 = out_chan_dep_data_17;
    assign token_17_18 = token_out_vec_17[6];
    assign dep_chan_vld_17_19 = out_chan_dep_vld_vec_17[7];
    assign dep_chan_data_17_19 = out_chan_dep_data_17;
    assign token_17_19 = token_out_vec_17[7];
    assign dep_chan_vld_17_20 = out_chan_dep_vld_vec_17[8];
    assign dep_chan_data_17_20 = out_chan_dep_data_17;
    assign token_17_20 = token_out_vec_17[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0
    TopPL_hls_deadlock_detect_unit #(37, 18, 9, 9) TopPL_hls_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0;
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0;
    assign proc_18_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR2_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_done & ap_done_reg_5 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR2_channel_U.if_read);
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0;
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0;
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    assign proc_18_data_FIFO_blk[2] = 1'b0;
    assign proc_18_data_PIPO_blk[2] = 1'b0;
    assign proc_18_start_FIFO_blk[2] = 1'b0;
    assign proc_18_TLF_FIFO_blk[2] = 1'b0;
    assign proc_18_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_18_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_18[2] = dl_detect_out ? proc_dep_vld_vec_18_reg[2] : (proc_18_data_FIFO_blk[2] | proc_18_data_PIPO_blk[2] | proc_18_start_FIFO_blk[2] | proc_18_TLF_FIFO_blk[2] | proc_18_input_sync_blk[2] | proc_18_output_sync_blk[2]);
    assign proc_18_data_FIFO_blk[3] = 1'b0;
    assign proc_18_data_PIPO_blk[3] = 1'b0;
    assign proc_18_start_FIFO_blk[3] = 1'b0;
    assign proc_18_TLF_FIFO_blk[3] = 1'b0;
    assign proc_18_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_18_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_18[3] = dl_detect_out ? proc_dep_vld_vec_18_reg[3] : (proc_18_data_FIFO_blk[3] | proc_18_data_PIPO_blk[3] | proc_18_start_FIFO_blk[3] | proc_18_TLF_FIFO_blk[3] | proc_18_input_sync_blk[3] | proc_18_output_sync_blk[3]);
    assign proc_18_data_FIFO_blk[4] = 1'b0;
    assign proc_18_data_PIPO_blk[4] = 1'b0;
    assign proc_18_start_FIFO_blk[4] = 1'b0;
    assign proc_18_TLF_FIFO_blk[4] = 1'b0;
    assign proc_18_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_18_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_18[4] = dl_detect_out ? proc_dep_vld_vec_18_reg[4] : (proc_18_data_FIFO_blk[4] | proc_18_data_PIPO_blk[4] | proc_18_start_FIFO_blk[4] | proc_18_TLF_FIFO_blk[4] | proc_18_input_sync_blk[4] | proc_18_output_sync_blk[4]);
    assign proc_18_data_FIFO_blk[5] = 1'b0;
    assign proc_18_data_PIPO_blk[5] = 1'b0;
    assign proc_18_start_FIFO_blk[5] = 1'b0;
    assign proc_18_TLF_FIFO_blk[5] = 1'b0;
    assign proc_18_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_18_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_18[5] = dl_detect_out ? proc_dep_vld_vec_18_reg[5] : (proc_18_data_FIFO_blk[5] | proc_18_data_PIPO_blk[5] | proc_18_start_FIFO_blk[5] | proc_18_TLF_FIFO_blk[5] | proc_18_input_sync_blk[5] | proc_18_output_sync_blk[5]);
    assign proc_18_data_FIFO_blk[6] = 1'b0;
    assign proc_18_data_PIPO_blk[6] = 1'b0;
    assign proc_18_start_FIFO_blk[6] = 1'b0;
    assign proc_18_TLF_FIFO_blk[6] = 1'b0;
    assign proc_18_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_18_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_18[6] = dl_detect_out ? proc_dep_vld_vec_18_reg[6] : (proc_18_data_FIFO_blk[6] | proc_18_data_PIPO_blk[6] | proc_18_start_FIFO_blk[6] | proc_18_TLF_FIFO_blk[6] | proc_18_input_sync_blk[6] | proc_18_output_sync_blk[6]);
    assign proc_18_data_FIFO_blk[7] = 1'b0;
    assign proc_18_data_PIPO_blk[7] = 1'b0;
    assign proc_18_start_FIFO_blk[7] = 1'b0;
    assign proc_18_TLF_FIFO_blk[7] = 1'b0;
    assign proc_18_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_18_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_18[7] = dl_detect_out ? proc_dep_vld_vec_18_reg[7] : (proc_18_data_FIFO_blk[7] | proc_18_data_PIPO_blk[7] | proc_18_start_FIFO_blk[7] | proc_18_TLF_FIFO_blk[7] | proc_18_input_sync_blk[7] | proc_18_output_sync_blk[7]);
    assign proc_18_data_FIFO_blk[8] = 1'b0;
    assign proc_18_data_PIPO_blk[8] = 1'b0;
    assign proc_18_start_FIFO_blk[8] = 1'b0;
    assign proc_18_TLF_FIFO_blk[8] = 1'b0;
    assign proc_18_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_5_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_18_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_18[8] = dl_detect_out ? proc_dep_vld_vec_18_reg[8] : (proc_18_data_FIFO_blk[8] | proc_18_data_PIPO_blk[8] | proc_18_start_FIFO_blk[8] | proc_18_TLF_FIFO_blk[8] | proc_18_input_sync_blk[8] | proc_18_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_12_18;
    assign in_chan_dep_data_vec_18[36 : 0] = dep_chan_data_12_18;
    assign token_in_vec_18[0] = token_12_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_13_18;
    assign in_chan_dep_data_vec_18[73 : 37] = dep_chan_data_13_18;
    assign token_in_vec_18[1] = token_13_18;
    assign in_chan_dep_vld_vec_18[2] = dep_chan_vld_14_18;
    assign in_chan_dep_data_vec_18[110 : 74] = dep_chan_data_14_18;
    assign token_in_vec_18[2] = token_14_18;
    assign in_chan_dep_vld_vec_18[3] = dep_chan_vld_15_18;
    assign in_chan_dep_data_vec_18[147 : 111] = dep_chan_data_15_18;
    assign token_in_vec_18[3] = token_15_18;
    assign in_chan_dep_vld_vec_18[4] = dep_chan_vld_16_18;
    assign in_chan_dep_data_vec_18[184 : 148] = dep_chan_data_16_18;
    assign token_in_vec_18[4] = token_16_18;
    assign in_chan_dep_vld_vec_18[5] = dep_chan_vld_17_18;
    assign in_chan_dep_data_vec_18[221 : 185] = dep_chan_data_17_18;
    assign token_in_vec_18[5] = token_17_18;
    assign in_chan_dep_vld_vec_18[6] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[258 : 222] = dep_chan_data_19_18;
    assign token_in_vec_18[6] = token_19_18;
    assign in_chan_dep_vld_vec_18[7] = dep_chan_vld_20_18;
    assign in_chan_dep_data_vec_18[295 : 259] = dep_chan_data_20_18;
    assign token_in_vec_18[7] = token_20_18;
    assign in_chan_dep_vld_vec_18[8] = dep_chan_vld_31_18;
    assign in_chan_dep_data_vec_18[332 : 296] = dep_chan_data_31_18;
    assign token_in_vec_18[8] = token_31_18;
    assign dep_chan_vld_18_31 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_31 = out_chan_dep_data_18;
    assign token_18_31 = token_out_vec_18[0];
    assign dep_chan_vld_18_12 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_12 = out_chan_dep_data_18;
    assign token_18_12 = token_out_vec_18[1];
    assign dep_chan_vld_18_13 = out_chan_dep_vld_vec_18[2];
    assign dep_chan_data_18_13 = out_chan_dep_data_18;
    assign token_18_13 = token_out_vec_18[2];
    assign dep_chan_vld_18_14 = out_chan_dep_vld_vec_18[3];
    assign dep_chan_data_18_14 = out_chan_dep_data_18;
    assign token_18_14 = token_out_vec_18[3];
    assign dep_chan_vld_18_15 = out_chan_dep_vld_vec_18[4];
    assign dep_chan_data_18_15 = out_chan_dep_data_18;
    assign token_18_15 = token_out_vec_18[4];
    assign dep_chan_vld_18_16 = out_chan_dep_vld_vec_18[5];
    assign dep_chan_data_18_16 = out_chan_dep_data_18;
    assign token_18_16 = token_out_vec_18[5];
    assign dep_chan_vld_18_17 = out_chan_dep_vld_vec_18[6];
    assign dep_chan_data_18_17 = out_chan_dep_data_18;
    assign token_18_17 = token_out_vec_18[6];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[7];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[7];
    assign dep_chan_vld_18_20 = out_chan_dep_vld_vec_18[8];
    assign dep_chan_data_18_20 = out_chan_dep_data_18;
    assign token_18_20 = token_out_vec_18[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0
    TopPL_hls_deadlock_detect_unit #(37, 19, 9, 9) TopPL_hls_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0;
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0;
    assign proc_19_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL3_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_done & ap_done_reg_6 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL3_channel_U.if_read);
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0;
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0;
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0;
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    assign proc_19_data_FIFO_blk[3] = 1'b0;
    assign proc_19_data_PIPO_blk[3] = 1'b0;
    assign proc_19_start_FIFO_blk[3] = 1'b0;
    assign proc_19_TLF_FIFO_blk[3] = 1'b0;
    assign proc_19_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_19_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_19[3] = dl_detect_out ? proc_dep_vld_vec_19_reg[3] : (proc_19_data_FIFO_blk[3] | proc_19_data_PIPO_blk[3] | proc_19_start_FIFO_blk[3] | proc_19_TLF_FIFO_blk[3] | proc_19_input_sync_blk[3] | proc_19_output_sync_blk[3]);
    assign proc_19_data_FIFO_blk[4] = 1'b0;
    assign proc_19_data_PIPO_blk[4] = 1'b0;
    assign proc_19_start_FIFO_blk[4] = 1'b0;
    assign proc_19_TLF_FIFO_blk[4] = 1'b0;
    assign proc_19_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_19_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_19[4] = dl_detect_out ? proc_dep_vld_vec_19_reg[4] : (proc_19_data_FIFO_blk[4] | proc_19_data_PIPO_blk[4] | proc_19_start_FIFO_blk[4] | proc_19_TLF_FIFO_blk[4] | proc_19_input_sync_blk[4] | proc_19_output_sync_blk[4]);
    assign proc_19_data_FIFO_blk[5] = 1'b0;
    assign proc_19_data_PIPO_blk[5] = 1'b0;
    assign proc_19_start_FIFO_blk[5] = 1'b0;
    assign proc_19_TLF_FIFO_blk[5] = 1'b0;
    assign proc_19_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_19_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_19[5] = dl_detect_out ? proc_dep_vld_vec_19_reg[5] : (proc_19_data_FIFO_blk[5] | proc_19_data_PIPO_blk[5] | proc_19_start_FIFO_blk[5] | proc_19_TLF_FIFO_blk[5] | proc_19_input_sync_blk[5] | proc_19_output_sync_blk[5]);
    assign proc_19_data_FIFO_blk[6] = 1'b0;
    assign proc_19_data_PIPO_blk[6] = 1'b0;
    assign proc_19_start_FIFO_blk[6] = 1'b0;
    assign proc_19_TLF_FIFO_blk[6] = 1'b0;
    assign proc_19_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_19_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_19[6] = dl_detect_out ? proc_dep_vld_vec_19_reg[6] : (proc_19_data_FIFO_blk[6] | proc_19_data_PIPO_blk[6] | proc_19_start_FIFO_blk[6] | proc_19_TLF_FIFO_blk[6] | proc_19_input_sync_blk[6] | proc_19_output_sync_blk[6]);
    assign proc_19_data_FIFO_blk[7] = 1'b0;
    assign proc_19_data_PIPO_blk[7] = 1'b0;
    assign proc_19_start_FIFO_blk[7] = 1'b0;
    assign proc_19_TLF_FIFO_blk[7] = 1'b0;
    assign proc_19_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_19_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_19[7] = dl_detect_out ? proc_dep_vld_vec_19_reg[7] : (proc_19_data_FIFO_blk[7] | proc_19_data_PIPO_blk[7] | proc_19_start_FIFO_blk[7] | proc_19_TLF_FIFO_blk[7] | proc_19_input_sync_blk[7] | proc_19_output_sync_blk[7]);
    assign proc_19_data_FIFO_blk[8] = 1'b0;
    assign proc_19_data_PIPO_blk[8] = 1'b0;
    assign proc_19_start_FIFO_blk[8] = 1'b0;
    assign proc_19_TLF_FIFO_blk[8] = 1'b0;
    assign proc_19_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_3_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready);
    assign proc_19_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_19[8] = dl_detect_out ? proc_dep_vld_vec_19_reg[8] : (proc_19_data_FIFO_blk[8] | proc_19_data_PIPO_blk[8] | proc_19_start_FIFO_blk[8] | proc_19_TLF_FIFO_blk[8] | proc_19_input_sync_blk[8] | proc_19_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_12_19;
    assign in_chan_dep_data_vec_19[36 : 0] = dep_chan_data_12_19;
    assign token_in_vec_19[0] = token_12_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_13_19;
    assign in_chan_dep_data_vec_19[73 : 37] = dep_chan_data_13_19;
    assign token_in_vec_19[1] = token_13_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_14_19;
    assign in_chan_dep_data_vec_19[110 : 74] = dep_chan_data_14_19;
    assign token_in_vec_19[2] = token_14_19;
    assign in_chan_dep_vld_vec_19[3] = dep_chan_vld_15_19;
    assign in_chan_dep_data_vec_19[147 : 111] = dep_chan_data_15_19;
    assign token_in_vec_19[3] = token_15_19;
    assign in_chan_dep_vld_vec_19[4] = dep_chan_vld_16_19;
    assign in_chan_dep_data_vec_19[184 : 148] = dep_chan_data_16_19;
    assign token_in_vec_19[4] = token_16_19;
    assign in_chan_dep_vld_vec_19[5] = dep_chan_vld_17_19;
    assign in_chan_dep_data_vec_19[221 : 185] = dep_chan_data_17_19;
    assign token_in_vec_19[5] = token_17_19;
    assign in_chan_dep_vld_vec_19[6] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[258 : 222] = dep_chan_data_18_19;
    assign token_in_vec_19[6] = token_18_19;
    assign in_chan_dep_vld_vec_19[7] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[295 : 259] = dep_chan_data_20_19;
    assign token_in_vec_19[7] = token_20_19;
    assign in_chan_dep_vld_vec_19[8] = dep_chan_vld_33_19;
    assign in_chan_dep_data_vec_19[332 : 296] = dep_chan_data_33_19;
    assign token_in_vec_19[8] = token_33_19;
    assign dep_chan_vld_19_33 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_33 = out_chan_dep_data_19;
    assign token_19_33 = token_out_vec_19[0];
    assign dep_chan_vld_19_12 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_12 = out_chan_dep_data_19;
    assign token_19_12 = token_out_vec_19[1];
    assign dep_chan_vld_19_13 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_13 = out_chan_dep_data_19;
    assign token_19_13 = token_out_vec_19[2];
    assign dep_chan_vld_19_14 = out_chan_dep_vld_vec_19[3];
    assign dep_chan_data_19_14 = out_chan_dep_data_19;
    assign token_19_14 = token_out_vec_19[3];
    assign dep_chan_vld_19_15 = out_chan_dep_vld_vec_19[4];
    assign dep_chan_data_19_15 = out_chan_dep_data_19;
    assign token_19_15 = token_out_vec_19[4];
    assign dep_chan_vld_19_16 = out_chan_dep_vld_vec_19[5];
    assign dep_chan_data_19_16 = out_chan_dep_data_19;
    assign token_19_16 = token_out_vec_19[5];
    assign dep_chan_vld_19_17 = out_chan_dep_vld_vec_19[6];
    assign dep_chan_data_19_17 = out_chan_dep_data_19;
    assign token_19_17 = token_out_vec_19[6];
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[7];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[7];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[8];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0
    TopPL_hls_deadlock_detect_unit #(37, 20, 9, 9) TopPL_hls_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0;
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0;
    assign proc_20_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR3_channel_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_done & ap_done_reg_7 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR3_channel_U.if_read);
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0;
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_print_int_U0_ap_ready);
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0;
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_U0_ap_ready);
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0;
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0;
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_7_U0_ap_ready);
    assign proc_20_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    assign proc_20_data_FIFO_blk[4] = 1'b0;
    assign proc_20_data_PIPO_blk[4] = 1'b0;
    assign proc_20_start_FIFO_blk[4] = 1'b0;
    assign proc_20_TLF_FIFO_blk[4] = 1'b0;
    assign proc_20_input_sync_blk[4] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_1_U0_ap_ready);
    assign proc_20_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_20[4] = dl_detect_out ? proc_dep_vld_vec_20_reg[4] : (proc_20_data_FIFO_blk[4] | proc_20_data_PIPO_blk[4] | proc_20_start_FIFO_blk[4] | proc_20_TLF_FIFO_blk[4] | proc_20_input_sync_blk[4] | proc_20_output_sync_blk[4]);
    assign proc_20_data_FIFO_blk[5] = 1'b0;
    assign proc_20_data_PIPO_blk[5] = 1'b0;
    assign proc_20_start_FIFO_blk[5] = 1'b0;
    assign proc_20_TLF_FIFO_blk[5] = 1'b0;
    assign proc_20_input_sync_blk[5] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_6_U0_ap_ready);
    assign proc_20_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_20[5] = dl_detect_out ? proc_dep_vld_vec_20_reg[5] : (proc_20_data_FIFO_blk[5] | proc_20_data_PIPO_blk[5] | proc_20_start_FIFO_blk[5] | proc_20_TLF_FIFO_blk[5] | proc_20_input_sync_blk[5] | proc_20_output_sync_blk[5]);
    assign proc_20_data_FIFO_blk[6] = 1'b0;
    assign proc_20_data_PIPO_blk[6] = 1'b0;
    assign proc_20_start_FIFO_blk[6] = 1'b0;
    assign proc_20_TLF_FIFO_blk[6] = 1'b0;
    assign proc_20_input_sync_blk[6] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_2_U0_ap_ready);
    assign proc_20_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_20[6] = dl_detect_out ? proc_dep_vld_vec_20_reg[6] : (proc_20_data_FIFO_blk[6] | proc_20_data_PIPO_blk[6] | proc_20_start_FIFO_blk[6] | proc_20_TLF_FIFO_blk[6] | proc_20_input_sync_blk[6] | proc_20_output_sync_blk[6]);
    assign proc_20_data_FIFO_blk[7] = 1'b0;
    assign proc_20_data_PIPO_blk[7] = 1'b0;
    assign proc_20_start_FIFO_blk[7] = 1'b0;
    assign proc_20_TLF_FIFO_blk[7] = 1'b0;
    assign proc_20_input_sync_blk[7] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_5_U0_ap_ready);
    assign proc_20_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_20[7] = dl_detect_out ? proc_dep_vld_vec_20_reg[7] : (proc_20_data_FIFO_blk[7] | proc_20_data_PIPO_blk[7] | proc_20_start_FIFO_blk[7] | proc_20_TLF_FIFO_blk[7] | proc_20_input_sync_blk[7] | proc_20_output_sync_blk[7]);
    assign proc_20_data_FIFO_blk[8] = 1'b0;
    assign proc_20_data_PIPO_blk[8] = 1'b0;
    assign proc_20_start_FIFO_blk[8] = 1'b0;
    assign proc_20_TLF_FIFO_blk[8] = 1'b0;
    assign proc_20_input_sync_blk[8] = 1'b0 | (Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_4_U0_ap_ready & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.receive4AIE_4_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.ap_sync_receive4AIE_3_U0_ap_ready);
    assign proc_20_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_20[8] = dl_detect_out ? proc_dep_vld_vec_20_reg[8] : (proc_20_data_FIFO_blk[8] | proc_20_data_PIPO_blk[8] | proc_20_start_FIFO_blk[8] | proc_20_TLF_FIFO_blk[8] | proc_20_input_sync_blk[8] | proc_20_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_12_20;
    assign in_chan_dep_data_vec_20[36 : 0] = dep_chan_data_12_20;
    assign token_in_vec_20[0] = token_12_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_13_20;
    assign in_chan_dep_data_vec_20[73 : 37] = dep_chan_data_13_20;
    assign token_in_vec_20[1] = token_13_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_14_20;
    assign in_chan_dep_data_vec_20[110 : 74] = dep_chan_data_14_20;
    assign token_in_vec_20[2] = token_14_20;
    assign in_chan_dep_vld_vec_20[3] = dep_chan_vld_15_20;
    assign in_chan_dep_data_vec_20[147 : 111] = dep_chan_data_15_20;
    assign token_in_vec_20[3] = token_15_20;
    assign in_chan_dep_vld_vec_20[4] = dep_chan_vld_16_20;
    assign in_chan_dep_data_vec_20[184 : 148] = dep_chan_data_16_20;
    assign token_in_vec_20[4] = token_16_20;
    assign in_chan_dep_vld_vec_20[5] = dep_chan_vld_17_20;
    assign in_chan_dep_data_vec_20[221 : 185] = dep_chan_data_17_20;
    assign token_in_vec_20[5] = token_17_20;
    assign in_chan_dep_vld_vec_20[6] = dep_chan_vld_18_20;
    assign in_chan_dep_data_vec_20[258 : 222] = dep_chan_data_18_20;
    assign token_in_vec_20[6] = token_18_20;
    assign in_chan_dep_vld_vec_20[7] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[295 : 259] = dep_chan_data_19_20;
    assign token_in_vec_20[7] = token_19_20;
    assign in_chan_dep_vld_vec_20[8] = dep_chan_vld_35_20;
    assign in_chan_dep_data_vec_20[332 : 296] = dep_chan_data_35_20;
    assign token_in_vec_20[8] = token_35_20;
    assign dep_chan_vld_20_35 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_35 = out_chan_dep_data_20;
    assign token_20_35 = token_out_vec_20[0];
    assign dep_chan_vld_20_12 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_12 = out_chan_dep_data_20;
    assign token_20_12 = token_out_vec_20[1];
    assign dep_chan_vld_20_13 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_13 = out_chan_dep_data_20;
    assign token_20_13 = token_out_vec_20[2];
    assign dep_chan_vld_20_14 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_14 = out_chan_dep_data_20;
    assign token_20_14 = token_out_vec_20[3];
    assign dep_chan_vld_20_15 = out_chan_dep_vld_vec_20[4];
    assign dep_chan_data_20_15 = out_chan_dep_data_20;
    assign token_20_15 = token_out_vec_20[4];
    assign dep_chan_vld_20_16 = out_chan_dep_vld_vec_20[5];
    assign dep_chan_data_20_16 = out_chan_dep_data_20;
    assign token_20_16 = token_out_vec_20[5];
    assign dep_chan_vld_20_17 = out_chan_dep_vld_vec_20[6];
    assign dep_chan_data_20_17 = out_chan_dep_data_20;
    assign token_20_17 = token_out_vec_20[6];
    assign dep_chan_vld_20_18 = out_chan_dep_vld_vec_20[7];
    assign dep_chan_data_20_18 = out_chan_dep_data_20;
    assign token_20_18 = token_out_vec_20[7];
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[8];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0
    TopPL_hls_deadlock_detect_unit #(37, 21, 2, 2) TopPL_hls_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0;
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0;
    assign proc_21_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL0_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL0_channel_U.if_write);
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0;
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_154_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc_U0.ap_done & ap_done_reg_8 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_154_U.if_read);
    assign proc_21_input_sync_blk[1] = 1'b0;
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_13_21;
    assign in_chan_dep_data_vec_21[36 : 0] = dep_chan_data_13_21;
    assign token_in_vec_21[0] = token_13_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_22_21;
    assign in_chan_dep_data_vec_21[73 : 37] = dep_chan_data_22_21;
    assign token_in_vec_21[1] = token_22_21;
    assign dep_chan_vld_21_13 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_13 = out_chan_dep_data_21;
    assign token_21_13 = token_out_vec_21[0];
    assign dep_chan_vld_21_22 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_22 = out_chan_dep_data_21;
    assign token_21_22 = token_out_vec_21[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0
    TopPL_hls_deadlock_detect_unit #(37, 22, 9, 9) TopPL_hls_deadlock_detect_unit_22 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0;
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0;
    assign proc_22_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_154_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_154_U.if_write);
    assign proc_22_input_sync_blk[0] = 1'b0;
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0;
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0;
    assign proc_22_output_sync_blk[1] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0;
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0;
    assign proc_22_input_sync_blk[2] = 1'b0;
    assign proc_22_output_sync_blk[2] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    assign proc_22_data_FIFO_blk[3] = 1'b0;
    assign proc_22_data_PIPO_blk[3] = 1'b0;
    assign proc_22_start_FIFO_blk[3] = 1'b0;
    assign proc_22_TLF_FIFO_blk[3] = 1'b0;
    assign proc_22_input_sync_blk[3] = 1'b0;
    assign proc_22_output_sync_blk[3] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_22[3] = dl_detect_out ? proc_dep_vld_vec_22_reg[3] : (proc_22_data_FIFO_blk[3] | proc_22_data_PIPO_blk[3] | proc_22_start_FIFO_blk[3] | proc_22_TLF_FIFO_blk[3] | proc_22_input_sync_blk[3] | proc_22_output_sync_blk[3]);
    assign proc_22_data_FIFO_blk[4] = 1'b0;
    assign proc_22_data_PIPO_blk[4] = 1'b0;
    assign proc_22_start_FIFO_blk[4] = 1'b0;
    assign proc_22_TLF_FIFO_blk[4] = 1'b0;
    assign proc_22_input_sync_blk[4] = 1'b0;
    assign proc_22_output_sync_blk[4] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_22[4] = dl_detect_out ? proc_dep_vld_vec_22_reg[4] : (proc_22_data_FIFO_blk[4] | proc_22_data_PIPO_blk[4] | proc_22_start_FIFO_blk[4] | proc_22_TLF_FIFO_blk[4] | proc_22_input_sync_blk[4] | proc_22_output_sync_blk[4]);
    assign proc_22_data_FIFO_blk[5] = 1'b0;
    assign proc_22_data_PIPO_blk[5] = 1'b0;
    assign proc_22_start_FIFO_blk[5] = 1'b0;
    assign proc_22_TLF_FIFO_blk[5] = 1'b0;
    assign proc_22_input_sync_blk[5] = 1'b0;
    assign proc_22_output_sync_blk[5] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_22[5] = dl_detect_out ? proc_dep_vld_vec_22_reg[5] : (proc_22_data_FIFO_blk[5] | proc_22_data_PIPO_blk[5] | proc_22_start_FIFO_blk[5] | proc_22_TLF_FIFO_blk[5] | proc_22_input_sync_blk[5] | proc_22_output_sync_blk[5]);
    assign proc_22_data_FIFO_blk[6] = 1'b0;
    assign proc_22_data_PIPO_blk[6] = 1'b0;
    assign proc_22_start_FIFO_blk[6] = 1'b0;
    assign proc_22_TLF_FIFO_blk[6] = 1'b0;
    assign proc_22_input_sync_blk[6] = 1'b0;
    assign proc_22_output_sync_blk[6] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_22[6] = dl_detect_out ? proc_dep_vld_vec_22_reg[6] : (proc_22_data_FIFO_blk[6] | proc_22_data_PIPO_blk[6] | proc_22_start_FIFO_blk[6] | proc_22_TLF_FIFO_blk[6] | proc_22_input_sync_blk[6] | proc_22_output_sync_blk[6]);
    assign proc_22_data_FIFO_blk[7] = 1'b0;
    assign proc_22_data_PIPO_blk[7] = 1'b0;
    assign proc_22_start_FIFO_blk[7] = 1'b0;
    assign proc_22_TLF_FIFO_blk[7] = 1'b0;
    assign proc_22_input_sync_blk[7] = 1'b0;
    assign proc_22_output_sync_blk[7] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_22[7] = dl_detect_out ? proc_dep_vld_vec_22_reg[7] : (proc_22_data_FIFO_blk[7] | proc_22_data_PIPO_blk[7] | proc_22_start_FIFO_blk[7] | proc_22_TLF_FIFO_blk[7] | proc_22_input_sync_blk[7] | proc_22_output_sync_blk[7]);
    assign proc_22_data_FIFO_blk[8] = 1'b0;
    assign proc_22_data_PIPO_blk[8] = 1'b0;
    assign proc_22_start_FIFO_blk[8] = 1'b0;
    assign proc_22_TLF_FIFO_blk[8] = 1'b0;
    assign proc_22_input_sync_blk[8] = 1'b0;
    assign proc_22_output_sync_blk[8] = 1'b0 | (ap_done_reg_9 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_22[8] = dl_detect_out ? proc_dep_vld_vec_22_reg[8] : (proc_22_data_FIFO_blk[8] | proc_22_data_PIPO_blk[8] | proc_22_start_FIFO_blk[8] | proc_22_TLF_FIFO_blk[8] | proc_22_input_sync_blk[8] | proc_22_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_12_22;
    assign in_chan_dep_data_vec_22[36 : 0] = dep_chan_data_12_22;
    assign token_in_vec_22[0] = token_12_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_21_22;
    assign in_chan_dep_data_vec_22[73 : 37] = dep_chan_data_21_22;
    assign token_in_vec_22[1] = token_21_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_24_22;
    assign in_chan_dep_data_vec_22[110 : 74] = dep_chan_data_24_22;
    assign token_in_vec_22[2] = token_24_22;
    assign in_chan_dep_vld_vec_22[3] = dep_chan_vld_26_22;
    assign in_chan_dep_data_vec_22[147 : 111] = dep_chan_data_26_22;
    assign token_in_vec_22[3] = token_26_22;
    assign in_chan_dep_vld_vec_22[4] = dep_chan_vld_28_22;
    assign in_chan_dep_data_vec_22[184 : 148] = dep_chan_data_28_22;
    assign token_in_vec_22[4] = token_28_22;
    assign in_chan_dep_vld_vec_22[5] = dep_chan_vld_30_22;
    assign in_chan_dep_data_vec_22[221 : 185] = dep_chan_data_30_22;
    assign token_in_vec_22[5] = token_30_22;
    assign in_chan_dep_vld_vec_22[6] = dep_chan_vld_32_22;
    assign in_chan_dep_data_vec_22[258 : 222] = dep_chan_data_32_22;
    assign token_in_vec_22[6] = token_32_22;
    assign in_chan_dep_vld_vec_22[7] = dep_chan_vld_34_22;
    assign in_chan_dep_data_vec_22[295 : 259] = dep_chan_data_34_22;
    assign token_in_vec_22[7] = token_34_22;
    assign in_chan_dep_vld_vec_22[8] = dep_chan_vld_36_22;
    assign in_chan_dep_data_vec_22[332 : 296] = dep_chan_data_36_22;
    assign token_in_vec_22[8] = token_36_22;
    assign dep_chan_vld_22_21 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_21 = out_chan_dep_data_22;
    assign token_22_21 = token_out_vec_22[0];
    assign dep_chan_vld_22_12 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_12 = out_chan_dep_data_22;
    assign token_22_12 = token_out_vec_22[1];
    assign dep_chan_vld_22_24 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_24 = out_chan_dep_data_22;
    assign token_22_24 = token_out_vec_22[2];
    assign dep_chan_vld_22_26 = out_chan_dep_vld_vec_22[3];
    assign dep_chan_data_22_26 = out_chan_dep_data_22;
    assign token_22_26 = token_out_vec_22[3];
    assign dep_chan_vld_22_28 = out_chan_dep_vld_vec_22[4];
    assign dep_chan_data_22_28 = out_chan_dep_data_22;
    assign token_22_28 = token_out_vec_22[4];
    assign dep_chan_vld_22_30 = out_chan_dep_vld_vec_22[5];
    assign dep_chan_data_22_30 = out_chan_dep_data_22;
    assign token_22_30 = token_out_vec_22[5];
    assign dep_chan_vld_22_32 = out_chan_dep_vld_vec_22[6];
    assign dep_chan_data_22_32 = out_chan_dep_data_22;
    assign token_22_32 = token_out_vec_22[6];
    assign dep_chan_vld_22_34 = out_chan_dep_vld_vec_22[7];
    assign dep_chan_data_22_34 = out_chan_dep_data_22;
    assign token_22_34 = token_out_vec_22[7];
    assign dep_chan_vld_22_36 = out_chan_dep_vld_vec_22[8];
    assign dep_chan_data_22_36 = out_chan_dep_data_22;
    assign token_22_36 = token_out_vec_22[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0
    TopPL_hls_deadlock_detect_unit #(37, 23, 2, 2) TopPL_hls_deadlock_detect_unit_23 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0;
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR0_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR0_channel_U.if_write);
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0;
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0;
    assign proc_23_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_153_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc30_U0.ap_done & ap_done_reg_10 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_153_U.if_read);
    assign proc_23_input_sync_blk[1] = 1'b0;
    assign proc_23_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_14_23;
    assign in_chan_dep_data_vec_23[36 : 0] = dep_chan_data_14_23;
    assign token_in_vec_23[0] = token_14_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_24_23;
    assign in_chan_dep_data_vec_23[73 : 37] = dep_chan_data_24_23;
    assign token_in_vec_23[1] = token_24_23;
    assign dep_chan_vld_23_14 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_14 = out_chan_dep_data_23;
    assign token_23_14 = token_out_vec_23[0];
    assign dep_chan_vld_23_24 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_24 = out_chan_dep_data_23;
    assign token_23_24 = token_out_vec_23[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0
    TopPL_hls_deadlock_detect_unit #(37, 24, 9, 9) TopPL_hls_deadlock_detect_unit_24 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0;
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_153_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_153_U.if_write);
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0;
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0;
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    assign proc_24_data_FIFO_blk[2] = 1'b0;
    assign proc_24_data_PIPO_blk[2] = 1'b0;
    assign proc_24_start_FIFO_blk[2] = 1'b0;
    assign proc_24_TLF_FIFO_blk[2] = 1'b0;
    assign proc_24_input_sync_blk[2] = 1'b0;
    assign proc_24_output_sync_blk[2] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_24[2] = dl_detect_out ? proc_dep_vld_vec_24_reg[2] : (proc_24_data_FIFO_blk[2] | proc_24_data_PIPO_blk[2] | proc_24_start_FIFO_blk[2] | proc_24_TLF_FIFO_blk[2] | proc_24_input_sync_blk[2] | proc_24_output_sync_blk[2]);
    assign proc_24_data_FIFO_blk[3] = 1'b0;
    assign proc_24_data_PIPO_blk[3] = 1'b0;
    assign proc_24_start_FIFO_blk[3] = 1'b0;
    assign proc_24_TLF_FIFO_blk[3] = 1'b0;
    assign proc_24_input_sync_blk[3] = 1'b0;
    assign proc_24_output_sync_blk[3] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_24[3] = dl_detect_out ? proc_dep_vld_vec_24_reg[3] : (proc_24_data_FIFO_blk[3] | proc_24_data_PIPO_blk[3] | proc_24_start_FIFO_blk[3] | proc_24_TLF_FIFO_blk[3] | proc_24_input_sync_blk[3] | proc_24_output_sync_blk[3]);
    assign proc_24_data_FIFO_blk[4] = 1'b0;
    assign proc_24_data_PIPO_blk[4] = 1'b0;
    assign proc_24_start_FIFO_blk[4] = 1'b0;
    assign proc_24_TLF_FIFO_blk[4] = 1'b0;
    assign proc_24_input_sync_blk[4] = 1'b0;
    assign proc_24_output_sync_blk[4] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_24[4] = dl_detect_out ? proc_dep_vld_vec_24_reg[4] : (proc_24_data_FIFO_blk[4] | proc_24_data_PIPO_blk[4] | proc_24_start_FIFO_blk[4] | proc_24_TLF_FIFO_blk[4] | proc_24_input_sync_blk[4] | proc_24_output_sync_blk[4]);
    assign proc_24_data_FIFO_blk[5] = 1'b0;
    assign proc_24_data_PIPO_blk[5] = 1'b0;
    assign proc_24_start_FIFO_blk[5] = 1'b0;
    assign proc_24_TLF_FIFO_blk[5] = 1'b0;
    assign proc_24_input_sync_blk[5] = 1'b0;
    assign proc_24_output_sync_blk[5] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_24[5] = dl_detect_out ? proc_dep_vld_vec_24_reg[5] : (proc_24_data_FIFO_blk[5] | proc_24_data_PIPO_blk[5] | proc_24_start_FIFO_blk[5] | proc_24_TLF_FIFO_blk[5] | proc_24_input_sync_blk[5] | proc_24_output_sync_blk[5]);
    assign proc_24_data_FIFO_blk[6] = 1'b0;
    assign proc_24_data_PIPO_blk[6] = 1'b0;
    assign proc_24_start_FIFO_blk[6] = 1'b0;
    assign proc_24_TLF_FIFO_blk[6] = 1'b0;
    assign proc_24_input_sync_blk[6] = 1'b0;
    assign proc_24_output_sync_blk[6] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_24[6] = dl_detect_out ? proc_dep_vld_vec_24_reg[6] : (proc_24_data_FIFO_blk[6] | proc_24_data_PIPO_blk[6] | proc_24_start_FIFO_blk[6] | proc_24_TLF_FIFO_blk[6] | proc_24_input_sync_blk[6] | proc_24_output_sync_blk[6]);
    assign proc_24_data_FIFO_blk[7] = 1'b0;
    assign proc_24_data_PIPO_blk[7] = 1'b0;
    assign proc_24_start_FIFO_blk[7] = 1'b0;
    assign proc_24_TLF_FIFO_blk[7] = 1'b0;
    assign proc_24_input_sync_blk[7] = 1'b0;
    assign proc_24_output_sync_blk[7] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_24[7] = dl_detect_out ? proc_dep_vld_vec_24_reg[7] : (proc_24_data_FIFO_blk[7] | proc_24_data_PIPO_blk[7] | proc_24_start_FIFO_blk[7] | proc_24_TLF_FIFO_blk[7] | proc_24_input_sync_blk[7] | proc_24_output_sync_blk[7]);
    assign proc_24_data_FIFO_blk[8] = 1'b0;
    assign proc_24_data_PIPO_blk[8] = 1'b0;
    assign proc_24_start_FIFO_blk[8] = 1'b0;
    assign proc_24_TLF_FIFO_blk[8] = 1'b0;
    assign proc_24_input_sync_blk[8] = 1'b0;
    assign proc_24_output_sync_blk[8] = 1'b0 | (ap_done_reg_11 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_24[8] = dl_detect_out ? proc_dep_vld_vec_24_reg[8] : (proc_24_data_FIFO_blk[8] | proc_24_data_PIPO_blk[8] | proc_24_start_FIFO_blk[8] | proc_24_TLF_FIFO_blk[8] | proc_24_input_sync_blk[8] | proc_24_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_12_24;
    assign in_chan_dep_data_vec_24[36 : 0] = dep_chan_data_12_24;
    assign token_in_vec_24[0] = token_12_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_22_24;
    assign in_chan_dep_data_vec_24[73 : 37] = dep_chan_data_22_24;
    assign token_in_vec_24[1] = token_22_24;
    assign in_chan_dep_vld_vec_24[2] = dep_chan_vld_23_24;
    assign in_chan_dep_data_vec_24[110 : 74] = dep_chan_data_23_24;
    assign token_in_vec_24[2] = token_23_24;
    assign in_chan_dep_vld_vec_24[3] = dep_chan_vld_26_24;
    assign in_chan_dep_data_vec_24[147 : 111] = dep_chan_data_26_24;
    assign token_in_vec_24[3] = token_26_24;
    assign in_chan_dep_vld_vec_24[4] = dep_chan_vld_28_24;
    assign in_chan_dep_data_vec_24[184 : 148] = dep_chan_data_28_24;
    assign token_in_vec_24[4] = token_28_24;
    assign in_chan_dep_vld_vec_24[5] = dep_chan_vld_30_24;
    assign in_chan_dep_data_vec_24[221 : 185] = dep_chan_data_30_24;
    assign token_in_vec_24[5] = token_30_24;
    assign in_chan_dep_vld_vec_24[6] = dep_chan_vld_32_24;
    assign in_chan_dep_data_vec_24[258 : 222] = dep_chan_data_32_24;
    assign token_in_vec_24[6] = token_32_24;
    assign in_chan_dep_vld_vec_24[7] = dep_chan_vld_34_24;
    assign in_chan_dep_data_vec_24[295 : 259] = dep_chan_data_34_24;
    assign token_in_vec_24[7] = token_34_24;
    assign in_chan_dep_vld_vec_24[8] = dep_chan_vld_36_24;
    assign in_chan_dep_data_vec_24[332 : 296] = dep_chan_data_36_24;
    assign token_in_vec_24[8] = token_36_24;
    assign dep_chan_vld_24_23 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_23 = out_chan_dep_data_24;
    assign token_24_23 = token_out_vec_24[0];
    assign dep_chan_vld_24_12 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_12 = out_chan_dep_data_24;
    assign token_24_12 = token_out_vec_24[1];
    assign dep_chan_vld_24_22 = out_chan_dep_vld_vec_24[2];
    assign dep_chan_data_24_22 = out_chan_dep_data_24;
    assign token_24_22 = token_out_vec_24[2];
    assign dep_chan_vld_24_26 = out_chan_dep_vld_vec_24[3];
    assign dep_chan_data_24_26 = out_chan_dep_data_24;
    assign token_24_26 = token_out_vec_24[3];
    assign dep_chan_vld_24_28 = out_chan_dep_vld_vec_24[4];
    assign dep_chan_data_24_28 = out_chan_dep_data_24;
    assign token_24_28 = token_out_vec_24[4];
    assign dep_chan_vld_24_30 = out_chan_dep_vld_vec_24[5];
    assign dep_chan_data_24_30 = out_chan_dep_data_24;
    assign token_24_30 = token_out_vec_24[5];
    assign dep_chan_vld_24_32 = out_chan_dep_vld_vec_24[6];
    assign dep_chan_data_24_32 = out_chan_dep_data_24;
    assign token_24_32 = token_out_vec_24[6];
    assign dep_chan_vld_24_34 = out_chan_dep_vld_vec_24[7];
    assign dep_chan_data_24_34 = out_chan_dep_data_24;
    assign token_24_34 = token_out_vec_24[7];
    assign dep_chan_vld_24_36 = out_chan_dep_vld_vec_24[8];
    assign dep_chan_data_24_36 = out_chan_dep_data_24;
    assign token_24_36 = token_out_vec_24[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0
    TopPL_hls_deadlock_detect_unit #(37, 25, 2, 2) TopPL_hls_deadlock_detect_unit_25 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_25_data_FIFO_blk[0] = 1'b0;
    assign proc_25_data_PIPO_blk[0] = 1'b0;
    assign proc_25_start_FIFO_blk[0] = 1'b0;
    assign proc_25_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL1_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL1_channel_U.if_write);
    assign proc_25_input_sync_blk[0] = 1'b0;
    assign proc_25_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (proc_25_data_FIFO_blk[0] | proc_25_data_PIPO_blk[0] | proc_25_start_FIFO_blk[0] | proc_25_TLF_FIFO_blk[0] | proc_25_input_sync_blk[0] | proc_25_output_sync_blk[0]);
    assign proc_25_data_FIFO_blk[1] = 1'b0;
    assign proc_25_data_PIPO_blk[1] = 1'b0;
    assign proc_25_start_FIFO_blk[1] = 1'b0;
    assign proc_25_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_152_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc32_U0.ap_done & ap_done_reg_12 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_152_U.if_read);
    assign proc_25_input_sync_blk[1] = 1'b0;
    assign proc_25_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (proc_25_data_FIFO_blk[1] | proc_25_data_PIPO_blk[1] | proc_25_start_FIFO_blk[1] | proc_25_TLF_FIFO_blk[1] | proc_25_input_sync_blk[1] | proc_25_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_15_25;
    assign in_chan_dep_data_vec_25[36 : 0] = dep_chan_data_15_25;
    assign token_in_vec_25[0] = token_15_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_26_25;
    assign in_chan_dep_data_vec_25[73 : 37] = dep_chan_data_26_25;
    assign token_in_vec_25[1] = token_26_25;
    assign dep_chan_vld_25_15 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_15 = out_chan_dep_data_25;
    assign token_25_15 = token_out_vec_25[0];
    assign dep_chan_vld_25_26 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_26 = out_chan_dep_data_25;
    assign token_25_26 = token_out_vec_25[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0
    TopPL_hls_deadlock_detect_unit #(37, 26, 9, 9) TopPL_hls_deadlock_detect_unit_26 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_26_data_FIFO_blk[0] = 1'b0;
    assign proc_26_data_PIPO_blk[0] = 1'b0;
    assign proc_26_start_FIFO_blk[0] = 1'b0;
    assign proc_26_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_152_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_152_U.if_write);
    assign proc_26_input_sync_blk[0] = 1'b0;
    assign proc_26_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (proc_26_data_FIFO_blk[0] | proc_26_data_PIPO_blk[0] | proc_26_start_FIFO_blk[0] | proc_26_TLF_FIFO_blk[0] | proc_26_input_sync_blk[0] | proc_26_output_sync_blk[0]);
    assign proc_26_data_FIFO_blk[1] = 1'b0;
    assign proc_26_data_PIPO_blk[1] = 1'b0;
    assign proc_26_start_FIFO_blk[1] = 1'b0;
    assign proc_26_TLF_FIFO_blk[1] = 1'b0;
    assign proc_26_input_sync_blk[1] = 1'b0;
    assign proc_26_output_sync_blk[1] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_26[1] = dl_detect_out ? proc_dep_vld_vec_26_reg[1] : (proc_26_data_FIFO_blk[1] | proc_26_data_PIPO_blk[1] | proc_26_start_FIFO_blk[1] | proc_26_TLF_FIFO_blk[1] | proc_26_input_sync_blk[1] | proc_26_output_sync_blk[1]);
    assign proc_26_data_FIFO_blk[2] = 1'b0;
    assign proc_26_data_PIPO_blk[2] = 1'b0;
    assign proc_26_start_FIFO_blk[2] = 1'b0;
    assign proc_26_TLF_FIFO_blk[2] = 1'b0;
    assign proc_26_input_sync_blk[2] = 1'b0;
    assign proc_26_output_sync_blk[2] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_26[2] = dl_detect_out ? proc_dep_vld_vec_26_reg[2] : (proc_26_data_FIFO_blk[2] | proc_26_data_PIPO_blk[2] | proc_26_start_FIFO_blk[2] | proc_26_TLF_FIFO_blk[2] | proc_26_input_sync_blk[2] | proc_26_output_sync_blk[2]);
    assign proc_26_data_FIFO_blk[3] = 1'b0;
    assign proc_26_data_PIPO_blk[3] = 1'b0;
    assign proc_26_start_FIFO_blk[3] = 1'b0;
    assign proc_26_TLF_FIFO_blk[3] = 1'b0;
    assign proc_26_input_sync_blk[3] = 1'b0;
    assign proc_26_output_sync_blk[3] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_26[3] = dl_detect_out ? proc_dep_vld_vec_26_reg[3] : (proc_26_data_FIFO_blk[3] | proc_26_data_PIPO_blk[3] | proc_26_start_FIFO_blk[3] | proc_26_TLF_FIFO_blk[3] | proc_26_input_sync_blk[3] | proc_26_output_sync_blk[3]);
    assign proc_26_data_FIFO_blk[4] = 1'b0;
    assign proc_26_data_PIPO_blk[4] = 1'b0;
    assign proc_26_start_FIFO_blk[4] = 1'b0;
    assign proc_26_TLF_FIFO_blk[4] = 1'b0;
    assign proc_26_input_sync_blk[4] = 1'b0;
    assign proc_26_output_sync_blk[4] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_26[4] = dl_detect_out ? proc_dep_vld_vec_26_reg[4] : (proc_26_data_FIFO_blk[4] | proc_26_data_PIPO_blk[4] | proc_26_start_FIFO_blk[4] | proc_26_TLF_FIFO_blk[4] | proc_26_input_sync_blk[4] | proc_26_output_sync_blk[4]);
    assign proc_26_data_FIFO_blk[5] = 1'b0;
    assign proc_26_data_PIPO_blk[5] = 1'b0;
    assign proc_26_start_FIFO_blk[5] = 1'b0;
    assign proc_26_TLF_FIFO_blk[5] = 1'b0;
    assign proc_26_input_sync_blk[5] = 1'b0;
    assign proc_26_output_sync_blk[5] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_26[5] = dl_detect_out ? proc_dep_vld_vec_26_reg[5] : (proc_26_data_FIFO_blk[5] | proc_26_data_PIPO_blk[5] | proc_26_start_FIFO_blk[5] | proc_26_TLF_FIFO_blk[5] | proc_26_input_sync_blk[5] | proc_26_output_sync_blk[5]);
    assign proc_26_data_FIFO_blk[6] = 1'b0;
    assign proc_26_data_PIPO_blk[6] = 1'b0;
    assign proc_26_start_FIFO_blk[6] = 1'b0;
    assign proc_26_TLF_FIFO_blk[6] = 1'b0;
    assign proc_26_input_sync_blk[6] = 1'b0;
    assign proc_26_output_sync_blk[6] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_26[6] = dl_detect_out ? proc_dep_vld_vec_26_reg[6] : (proc_26_data_FIFO_blk[6] | proc_26_data_PIPO_blk[6] | proc_26_start_FIFO_blk[6] | proc_26_TLF_FIFO_blk[6] | proc_26_input_sync_blk[6] | proc_26_output_sync_blk[6]);
    assign proc_26_data_FIFO_blk[7] = 1'b0;
    assign proc_26_data_PIPO_blk[7] = 1'b0;
    assign proc_26_start_FIFO_blk[7] = 1'b0;
    assign proc_26_TLF_FIFO_blk[7] = 1'b0;
    assign proc_26_input_sync_blk[7] = 1'b0;
    assign proc_26_output_sync_blk[7] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_26[7] = dl_detect_out ? proc_dep_vld_vec_26_reg[7] : (proc_26_data_FIFO_blk[7] | proc_26_data_PIPO_blk[7] | proc_26_start_FIFO_blk[7] | proc_26_TLF_FIFO_blk[7] | proc_26_input_sync_blk[7] | proc_26_output_sync_blk[7]);
    assign proc_26_data_FIFO_blk[8] = 1'b0;
    assign proc_26_data_PIPO_blk[8] = 1'b0;
    assign proc_26_start_FIFO_blk[8] = 1'b0;
    assign proc_26_TLF_FIFO_blk[8] = 1'b0;
    assign proc_26_input_sync_blk[8] = 1'b0;
    assign proc_26_output_sync_blk[8] = 1'b0 | (ap_done_reg_13 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_26[8] = dl_detect_out ? proc_dep_vld_vec_26_reg[8] : (proc_26_data_FIFO_blk[8] | proc_26_data_PIPO_blk[8] | proc_26_start_FIFO_blk[8] | proc_26_TLF_FIFO_blk[8] | proc_26_input_sync_blk[8] | proc_26_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_12_26;
    assign in_chan_dep_data_vec_26[36 : 0] = dep_chan_data_12_26;
    assign token_in_vec_26[0] = token_12_26;
    assign in_chan_dep_vld_vec_26[1] = dep_chan_vld_22_26;
    assign in_chan_dep_data_vec_26[73 : 37] = dep_chan_data_22_26;
    assign token_in_vec_26[1] = token_22_26;
    assign in_chan_dep_vld_vec_26[2] = dep_chan_vld_24_26;
    assign in_chan_dep_data_vec_26[110 : 74] = dep_chan_data_24_26;
    assign token_in_vec_26[2] = token_24_26;
    assign in_chan_dep_vld_vec_26[3] = dep_chan_vld_25_26;
    assign in_chan_dep_data_vec_26[147 : 111] = dep_chan_data_25_26;
    assign token_in_vec_26[3] = token_25_26;
    assign in_chan_dep_vld_vec_26[4] = dep_chan_vld_28_26;
    assign in_chan_dep_data_vec_26[184 : 148] = dep_chan_data_28_26;
    assign token_in_vec_26[4] = token_28_26;
    assign in_chan_dep_vld_vec_26[5] = dep_chan_vld_30_26;
    assign in_chan_dep_data_vec_26[221 : 185] = dep_chan_data_30_26;
    assign token_in_vec_26[5] = token_30_26;
    assign in_chan_dep_vld_vec_26[6] = dep_chan_vld_32_26;
    assign in_chan_dep_data_vec_26[258 : 222] = dep_chan_data_32_26;
    assign token_in_vec_26[6] = token_32_26;
    assign in_chan_dep_vld_vec_26[7] = dep_chan_vld_34_26;
    assign in_chan_dep_data_vec_26[295 : 259] = dep_chan_data_34_26;
    assign token_in_vec_26[7] = token_34_26;
    assign in_chan_dep_vld_vec_26[8] = dep_chan_vld_36_26;
    assign in_chan_dep_data_vec_26[332 : 296] = dep_chan_data_36_26;
    assign token_in_vec_26[8] = token_36_26;
    assign dep_chan_vld_26_25 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_25 = out_chan_dep_data_26;
    assign token_26_25 = token_out_vec_26[0];
    assign dep_chan_vld_26_12 = out_chan_dep_vld_vec_26[1];
    assign dep_chan_data_26_12 = out_chan_dep_data_26;
    assign token_26_12 = token_out_vec_26[1];
    assign dep_chan_vld_26_22 = out_chan_dep_vld_vec_26[2];
    assign dep_chan_data_26_22 = out_chan_dep_data_26;
    assign token_26_22 = token_out_vec_26[2];
    assign dep_chan_vld_26_24 = out_chan_dep_vld_vec_26[3];
    assign dep_chan_data_26_24 = out_chan_dep_data_26;
    assign token_26_24 = token_out_vec_26[3];
    assign dep_chan_vld_26_28 = out_chan_dep_vld_vec_26[4];
    assign dep_chan_data_26_28 = out_chan_dep_data_26;
    assign token_26_28 = token_out_vec_26[4];
    assign dep_chan_vld_26_30 = out_chan_dep_vld_vec_26[5];
    assign dep_chan_data_26_30 = out_chan_dep_data_26;
    assign token_26_30 = token_out_vec_26[5];
    assign dep_chan_vld_26_32 = out_chan_dep_vld_vec_26[6];
    assign dep_chan_data_26_32 = out_chan_dep_data_26;
    assign token_26_32 = token_out_vec_26[6];
    assign dep_chan_vld_26_34 = out_chan_dep_vld_vec_26[7];
    assign dep_chan_data_26_34 = out_chan_dep_data_26;
    assign token_26_34 = token_out_vec_26[7];
    assign dep_chan_vld_26_36 = out_chan_dep_vld_vec_26[8];
    assign dep_chan_data_26_36 = out_chan_dep_data_26;
    assign token_26_36 = token_out_vec_26[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0
    TopPL_hls_deadlock_detect_unit #(37, 27, 2, 2) TopPL_hls_deadlock_detect_unit_27 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_27_data_FIFO_blk[0] = 1'b0;
    assign proc_27_data_PIPO_blk[0] = 1'b0;
    assign proc_27_start_FIFO_blk[0] = 1'b0;
    assign proc_27_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR1_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR1_channel_U.if_write);
    assign proc_27_input_sync_blk[0] = 1'b0;
    assign proc_27_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (proc_27_data_FIFO_blk[0] | proc_27_data_PIPO_blk[0] | proc_27_start_FIFO_blk[0] | proc_27_TLF_FIFO_blk[0] | proc_27_input_sync_blk[0] | proc_27_output_sync_blk[0]);
    assign proc_27_data_FIFO_blk[1] = 1'b0;
    assign proc_27_data_PIPO_blk[1] = 1'b0;
    assign proc_27_start_FIFO_blk[1] = 1'b0;
    assign proc_27_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_151_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc34_U0.ap_done & ap_done_reg_14 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_151_U.if_read);
    assign proc_27_input_sync_blk[1] = 1'b0;
    assign proc_27_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (proc_27_data_FIFO_blk[1] | proc_27_data_PIPO_blk[1] | proc_27_start_FIFO_blk[1] | proc_27_TLF_FIFO_blk[1] | proc_27_input_sync_blk[1] | proc_27_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_16_27;
    assign in_chan_dep_data_vec_27[36 : 0] = dep_chan_data_16_27;
    assign token_in_vec_27[0] = token_16_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_28_27;
    assign in_chan_dep_data_vec_27[73 : 37] = dep_chan_data_28_27;
    assign token_in_vec_27[1] = token_28_27;
    assign dep_chan_vld_27_16 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_16 = out_chan_dep_data_27;
    assign token_27_16 = token_out_vec_27[0];
    assign dep_chan_vld_27_28 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_28 = out_chan_dep_data_27;
    assign token_27_28 = token_out_vec_27[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0
    TopPL_hls_deadlock_detect_unit #(37, 28, 9, 9) TopPL_hls_deadlock_detect_unit_28 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_28_data_FIFO_blk[0] = 1'b0;
    assign proc_28_data_PIPO_blk[0] = 1'b0;
    assign proc_28_start_FIFO_blk[0] = 1'b0;
    assign proc_28_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_151_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_151_U.if_write);
    assign proc_28_input_sync_blk[0] = 1'b0;
    assign proc_28_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (proc_28_data_FIFO_blk[0] | proc_28_data_PIPO_blk[0] | proc_28_start_FIFO_blk[0] | proc_28_TLF_FIFO_blk[0] | proc_28_input_sync_blk[0] | proc_28_output_sync_blk[0]);
    assign proc_28_data_FIFO_blk[1] = 1'b0;
    assign proc_28_data_PIPO_blk[1] = 1'b0;
    assign proc_28_start_FIFO_blk[1] = 1'b0;
    assign proc_28_TLF_FIFO_blk[1] = 1'b0;
    assign proc_28_input_sync_blk[1] = 1'b0;
    assign proc_28_output_sync_blk[1] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (proc_28_data_FIFO_blk[1] | proc_28_data_PIPO_blk[1] | proc_28_start_FIFO_blk[1] | proc_28_TLF_FIFO_blk[1] | proc_28_input_sync_blk[1] | proc_28_output_sync_blk[1]);
    assign proc_28_data_FIFO_blk[2] = 1'b0;
    assign proc_28_data_PIPO_blk[2] = 1'b0;
    assign proc_28_start_FIFO_blk[2] = 1'b0;
    assign proc_28_TLF_FIFO_blk[2] = 1'b0;
    assign proc_28_input_sync_blk[2] = 1'b0;
    assign proc_28_output_sync_blk[2] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_28[2] = dl_detect_out ? proc_dep_vld_vec_28_reg[2] : (proc_28_data_FIFO_blk[2] | proc_28_data_PIPO_blk[2] | proc_28_start_FIFO_blk[2] | proc_28_TLF_FIFO_blk[2] | proc_28_input_sync_blk[2] | proc_28_output_sync_blk[2]);
    assign proc_28_data_FIFO_blk[3] = 1'b0;
    assign proc_28_data_PIPO_blk[3] = 1'b0;
    assign proc_28_start_FIFO_blk[3] = 1'b0;
    assign proc_28_TLF_FIFO_blk[3] = 1'b0;
    assign proc_28_input_sync_blk[3] = 1'b0;
    assign proc_28_output_sync_blk[3] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_28[3] = dl_detect_out ? proc_dep_vld_vec_28_reg[3] : (proc_28_data_FIFO_blk[3] | proc_28_data_PIPO_blk[3] | proc_28_start_FIFO_blk[3] | proc_28_TLF_FIFO_blk[3] | proc_28_input_sync_blk[3] | proc_28_output_sync_blk[3]);
    assign proc_28_data_FIFO_blk[4] = 1'b0;
    assign proc_28_data_PIPO_blk[4] = 1'b0;
    assign proc_28_start_FIFO_blk[4] = 1'b0;
    assign proc_28_TLF_FIFO_blk[4] = 1'b0;
    assign proc_28_input_sync_blk[4] = 1'b0;
    assign proc_28_output_sync_blk[4] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_28[4] = dl_detect_out ? proc_dep_vld_vec_28_reg[4] : (proc_28_data_FIFO_blk[4] | proc_28_data_PIPO_blk[4] | proc_28_start_FIFO_blk[4] | proc_28_TLF_FIFO_blk[4] | proc_28_input_sync_blk[4] | proc_28_output_sync_blk[4]);
    assign proc_28_data_FIFO_blk[5] = 1'b0;
    assign proc_28_data_PIPO_blk[5] = 1'b0;
    assign proc_28_start_FIFO_blk[5] = 1'b0;
    assign proc_28_TLF_FIFO_blk[5] = 1'b0;
    assign proc_28_input_sync_blk[5] = 1'b0;
    assign proc_28_output_sync_blk[5] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_28[5] = dl_detect_out ? proc_dep_vld_vec_28_reg[5] : (proc_28_data_FIFO_blk[5] | proc_28_data_PIPO_blk[5] | proc_28_start_FIFO_blk[5] | proc_28_TLF_FIFO_blk[5] | proc_28_input_sync_blk[5] | proc_28_output_sync_blk[5]);
    assign proc_28_data_FIFO_blk[6] = 1'b0;
    assign proc_28_data_PIPO_blk[6] = 1'b0;
    assign proc_28_start_FIFO_blk[6] = 1'b0;
    assign proc_28_TLF_FIFO_blk[6] = 1'b0;
    assign proc_28_input_sync_blk[6] = 1'b0;
    assign proc_28_output_sync_blk[6] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_28[6] = dl_detect_out ? proc_dep_vld_vec_28_reg[6] : (proc_28_data_FIFO_blk[6] | proc_28_data_PIPO_blk[6] | proc_28_start_FIFO_blk[6] | proc_28_TLF_FIFO_blk[6] | proc_28_input_sync_blk[6] | proc_28_output_sync_blk[6]);
    assign proc_28_data_FIFO_blk[7] = 1'b0;
    assign proc_28_data_PIPO_blk[7] = 1'b0;
    assign proc_28_start_FIFO_blk[7] = 1'b0;
    assign proc_28_TLF_FIFO_blk[7] = 1'b0;
    assign proc_28_input_sync_blk[7] = 1'b0;
    assign proc_28_output_sync_blk[7] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_28[7] = dl_detect_out ? proc_dep_vld_vec_28_reg[7] : (proc_28_data_FIFO_blk[7] | proc_28_data_PIPO_blk[7] | proc_28_start_FIFO_blk[7] | proc_28_TLF_FIFO_blk[7] | proc_28_input_sync_blk[7] | proc_28_output_sync_blk[7]);
    assign proc_28_data_FIFO_blk[8] = 1'b0;
    assign proc_28_data_PIPO_blk[8] = 1'b0;
    assign proc_28_start_FIFO_blk[8] = 1'b0;
    assign proc_28_TLF_FIFO_blk[8] = 1'b0;
    assign proc_28_input_sync_blk[8] = 1'b0;
    assign proc_28_output_sync_blk[8] = 1'b0 | (ap_done_reg_15 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_28[8] = dl_detect_out ? proc_dep_vld_vec_28_reg[8] : (proc_28_data_FIFO_blk[8] | proc_28_data_PIPO_blk[8] | proc_28_start_FIFO_blk[8] | proc_28_TLF_FIFO_blk[8] | proc_28_input_sync_blk[8] | proc_28_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_12_28;
    assign in_chan_dep_data_vec_28[36 : 0] = dep_chan_data_12_28;
    assign token_in_vec_28[0] = token_12_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_22_28;
    assign in_chan_dep_data_vec_28[73 : 37] = dep_chan_data_22_28;
    assign token_in_vec_28[1] = token_22_28;
    assign in_chan_dep_vld_vec_28[2] = dep_chan_vld_24_28;
    assign in_chan_dep_data_vec_28[110 : 74] = dep_chan_data_24_28;
    assign token_in_vec_28[2] = token_24_28;
    assign in_chan_dep_vld_vec_28[3] = dep_chan_vld_26_28;
    assign in_chan_dep_data_vec_28[147 : 111] = dep_chan_data_26_28;
    assign token_in_vec_28[3] = token_26_28;
    assign in_chan_dep_vld_vec_28[4] = dep_chan_vld_27_28;
    assign in_chan_dep_data_vec_28[184 : 148] = dep_chan_data_27_28;
    assign token_in_vec_28[4] = token_27_28;
    assign in_chan_dep_vld_vec_28[5] = dep_chan_vld_30_28;
    assign in_chan_dep_data_vec_28[221 : 185] = dep_chan_data_30_28;
    assign token_in_vec_28[5] = token_30_28;
    assign in_chan_dep_vld_vec_28[6] = dep_chan_vld_32_28;
    assign in_chan_dep_data_vec_28[258 : 222] = dep_chan_data_32_28;
    assign token_in_vec_28[6] = token_32_28;
    assign in_chan_dep_vld_vec_28[7] = dep_chan_vld_34_28;
    assign in_chan_dep_data_vec_28[295 : 259] = dep_chan_data_34_28;
    assign token_in_vec_28[7] = token_34_28;
    assign in_chan_dep_vld_vec_28[8] = dep_chan_vld_36_28;
    assign in_chan_dep_data_vec_28[332 : 296] = dep_chan_data_36_28;
    assign token_in_vec_28[8] = token_36_28;
    assign dep_chan_vld_28_27 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_27 = out_chan_dep_data_28;
    assign token_28_27 = token_out_vec_28[0];
    assign dep_chan_vld_28_12 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_12 = out_chan_dep_data_28;
    assign token_28_12 = token_out_vec_28[1];
    assign dep_chan_vld_28_22 = out_chan_dep_vld_vec_28[2];
    assign dep_chan_data_28_22 = out_chan_dep_data_28;
    assign token_28_22 = token_out_vec_28[2];
    assign dep_chan_vld_28_24 = out_chan_dep_vld_vec_28[3];
    assign dep_chan_data_28_24 = out_chan_dep_data_28;
    assign token_28_24 = token_out_vec_28[3];
    assign dep_chan_vld_28_26 = out_chan_dep_vld_vec_28[4];
    assign dep_chan_data_28_26 = out_chan_dep_data_28;
    assign token_28_26 = token_out_vec_28[4];
    assign dep_chan_vld_28_30 = out_chan_dep_vld_vec_28[5];
    assign dep_chan_data_28_30 = out_chan_dep_data_28;
    assign token_28_30 = token_out_vec_28[5];
    assign dep_chan_vld_28_32 = out_chan_dep_vld_vec_28[6];
    assign dep_chan_data_28_32 = out_chan_dep_data_28;
    assign token_28_32 = token_out_vec_28[6];
    assign dep_chan_vld_28_34 = out_chan_dep_vld_vec_28[7];
    assign dep_chan_data_28_34 = out_chan_dep_data_28;
    assign token_28_34 = token_out_vec_28[7];
    assign dep_chan_vld_28_36 = out_chan_dep_vld_vec_28[8];
    assign dep_chan_data_28_36 = out_chan_dep_data_28;
    assign token_28_36 = token_out_vec_28[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0
    TopPL_hls_deadlock_detect_unit #(37, 29, 2, 2) TopPL_hls_deadlock_detect_unit_29 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_29_data_FIFO_blk[0] = 1'b0;
    assign proc_29_data_PIPO_blk[0] = 1'b0;
    assign proc_29_start_FIFO_blk[0] = 1'b0;
    assign proc_29_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL2_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL2_channel_U.if_write);
    assign proc_29_input_sync_blk[0] = 1'b0;
    assign proc_29_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (proc_29_data_FIFO_blk[0] | proc_29_data_PIPO_blk[0] | proc_29_start_FIFO_blk[0] | proc_29_TLF_FIFO_blk[0] | proc_29_input_sync_blk[0] | proc_29_output_sync_blk[0]);
    assign proc_29_data_FIFO_blk[1] = 1'b0;
    assign proc_29_data_PIPO_blk[1] = 1'b0;
    assign proc_29_start_FIFO_blk[1] = 1'b0;
    assign proc_29_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_150_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc36_U0.ap_done & ap_done_reg_16 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_150_U.if_read);
    assign proc_29_input_sync_blk[1] = 1'b0;
    assign proc_29_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_29[1] = dl_detect_out ? proc_dep_vld_vec_29_reg[1] : (proc_29_data_FIFO_blk[1] | proc_29_data_PIPO_blk[1] | proc_29_start_FIFO_blk[1] | proc_29_TLF_FIFO_blk[1] | proc_29_input_sync_blk[1] | proc_29_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_17_29;
    assign in_chan_dep_data_vec_29[36 : 0] = dep_chan_data_17_29;
    assign token_in_vec_29[0] = token_17_29;
    assign in_chan_dep_vld_vec_29[1] = dep_chan_vld_30_29;
    assign in_chan_dep_data_vec_29[73 : 37] = dep_chan_data_30_29;
    assign token_in_vec_29[1] = token_30_29;
    assign dep_chan_vld_29_17 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_17 = out_chan_dep_data_29;
    assign token_29_17 = token_out_vec_29[0];
    assign dep_chan_vld_29_30 = out_chan_dep_vld_vec_29[1];
    assign dep_chan_data_29_30 = out_chan_dep_data_29;
    assign token_29_30 = token_out_vec_29[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0
    TopPL_hls_deadlock_detect_unit #(37, 30, 9, 9) TopPL_hls_deadlock_detect_unit_30 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_30_data_FIFO_blk[0] = 1'b0;
    assign proc_30_data_PIPO_blk[0] = 1'b0;
    assign proc_30_start_FIFO_blk[0] = 1'b0;
    assign proc_30_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_150_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_150_U.if_write);
    assign proc_30_input_sync_blk[0] = 1'b0;
    assign proc_30_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (proc_30_data_FIFO_blk[0] | proc_30_data_PIPO_blk[0] | proc_30_start_FIFO_blk[0] | proc_30_TLF_FIFO_blk[0] | proc_30_input_sync_blk[0] | proc_30_output_sync_blk[0]);
    assign proc_30_data_FIFO_blk[1] = 1'b0;
    assign proc_30_data_PIPO_blk[1] = 1'b0;
    assign proc_30_start_FIFO_blk[1] = 1'b0;
    assign proc_30_TLF_FIFO_blk[1] = 1'b0;
    assign proc_30_input_sync_blk[1] = 1'b0;
    assign proc_30_output_sync_blk[1] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (proc_30_data_FIFO_blk[1] | proc_30_data_PIPO_blk[1] | proc_30_start_FIFO_blk[1] | proc_30_TLF_FIFO_blk[1] | proc_30_input_sync_blk[1] | proc_30_output_sync_blk[1]);
    assign proc_30_data_FIFO_blk[2] = 1'b0;
    assign proc_30_data_PIPO_blk[2] = 1'b0;
    assign proc_30_start_FIFO_blk[2] = 1'b0;
    assign proc_30_TLF_FIFO_blk[2] = 1'b0;
    assign proc_30_input_sync_blk[2] = 1'b0;
    assign proc_30_output_sync_blk[2] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_30[2] = dl_detect_out ? proc_dep_vld_vec_30_reg[2] : (proc_30_data_FIFO_blk[2] | proc_30_data_PIPO_blk[2] | proc_30_start_FIFO_blk[2] | proc_30_TLF_FIFO_blk[2] | proc_30_input_sync_blk[2] | proc_30_output_sync_blk[2]);
    assign proc_30_data_FIFO_blk[3] = 1'b0;
    assign proc_30_data_PIPO_blk[3] = 1'b0;
    assign proc_30_start_FIFO_blk[3] = 1'b0;
    assign proc_30_TLF_FIFO_blk[3] = 1'b0;
    assign proc_30_input_sync_blk[3] = 1'b0;
    assign proc_30_output_sync_blk[3] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_30[3] = dl_detect_out ? proc_dep_vld_vec_30_reg[3] : (proc_30_data_FIFO_blk[3] | proc_30_data_PIPO_blk[3] | proc_30_start_FIFO_blk[3] | proc_30_TLF_FIFO_blk[3] | proc_30_input_sync_blk[3] | proc_30_output_sync_blk[3]);
    assign proc_30_data_FIFO_blk[4] = 1'b0;
    assign proc_30_data_PIPO_blk[4] = 1'b0;
    assign proc_30_start_FIFO_blk[4] = 1'b0;
    assign proc_30_TLF_FIFO_blk[4] = 1'b0;
    assign proc_30_input_sync_blk[4] = 1'b0;
    assign proc_30_output_sync_blk[4] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_30[4] = dl_detect_out ? proc_dep_vld_vec_30_reg[4] : (proc_30_data_FIFO_blk[4] | proc_30_data_PIPO_blk[4] | proc_30_start_FIFO_blk[4] | proc_30_TLF_FIFO_blk[4] | proc_30_input_sync_blk[4] | proc_30_output_sync_blk[4]);
    assign proc_30_data_FIFO_blk[5] = 1'b0;
    assign proc_30_data_PIPO_blk[5] = 1'b0;
    assign proc_30_start_FIFO_blk[5] = 1'b0;
    assign proc_30_TLF_FIFO_blk[5] = 1'b0;
    assign proc_30_input_sync_blk[5] = 1'b0;
    assign proc_30_output_sync_blk[5] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_30[5] = dl_detect_out ? proc_dep_vld_vec_30_reg[5] : (proc_30_data_FIFO_blk[5] | proc_30_data_PIPO_blk[5] | proc_30_start_FIFO_blk[5] | proc_30_TLF_FIFO_blk[5] | proc_30_input_sync_blk[5] | proc_30_output_sync_blk[5]);
    assign proc_30_data_FIFO_blk[6] = 1'b0;
    assign proc_30_data_PIPO_blk[6] = 1'b0;
    assign proc_30_start_FIFO_blk[6] = 1'b0;
    assign proc_30_TLF_FIFO_blk[6] = 1'b0;
    assign proc_30_input_sync_blk[6] = 1'b0;
    assign proc_30_output_sync_blk[6] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_30[6] = dl_detect_out ? proc_dep_vld_vec_30_reg[6] : (proc_30_data_FIFO_blk[6] | proc_30_data_PIPO_blk[6] | proc_30_start_FIFO_blk[6] | proc_30_TLF_FIFO_blk[6] | proc_30_input_sync_blk[6] | proc_30_output_sync_blk[6]);
    assign proc_30_data_FIFO_blk[7] = 1'b0;
    assign proc_30_data_PIPO_blk[7] = 1'b0;
    assign proc_30_start_FIFO_blk[7] = 1'b0;
    assign proc_30_TLF_FIFO_blk[7] = 1'b0;
    assign proc_30_input_sync_blk[7] = 1'b0;
    assign proc_30_output_sync_blk[7] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_30[7] = dl_detect_out ? proc_dep_vld_vec_30_reg[7] : (proc_30_data_FIFO_blk[7] | proc_30_data_PIPO_blk[7] | proc_30_start_FIFO_blk[7] | proc_30_TLF_FIFO_blk[7] | proc_30_input_sync_blk[7] | proc_30_output_sync_blk[7]);
    assign proc_30_data_FIFO_blk[8] = 1'b0;
    assign proc_30_data_PIPO_blk[8] = 1'b0;
    assign proc_30_start_FIFO_blk[8] = 1'b0;
    assign proc_30_TLF_FIFO_blk[8] = 1'b0;
    assign proc_30_input_sync_blk[8] = 1'b0;
    assign proc_30_output_sync_blk[8] = 1'b0 | (ap_done_reg_17 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_30[8] = dl_detect_out ? proc_dep_vld_vec_30_reg[8] : (proc_30_data_FIFO_blk[8] | proc_30_data_PIPO_blk[8] | proc_30_start_FIFO_blk[8] | proc_30_TLF_FIFO_blk[8] | proc_30_input_sync_blk[8] | proc_30_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_12_30;
    assign in_chan_dep_data_vec_30[36 : 0] = dep_chan_data_12_30;
    assign token_in_vec_30[0] = token_12_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_22_30;
    assign in_chan_dep_data_vec_30[73 : 37] = dep_chan_data_22_30;
    assign token_in_vec_30[1] = token_22_30;
    assign in_chan_dep_vld_vec_30[2] = dep_chan_vld_24_30;
    assign in_chan_dep_data_vec_30[110 : 74] = dep_chan_data_24_30;
    assign token_in_vec_30[2] = token_24_30;
    assign in_chan_dep_vld_vec_30[3] = dep_chan_vld_26_30;
    assign in_chan_dep_data_vec_30[147 : 111] = dep_chan_data_26_30;
    assign token_in_vec_30[3] = token_26_30;
    assign in_chan_dep_vld_vec_30[4] = dep_chan_vld_28_30;
    assign in_chan_dep_data_vec_30[184 : 148] = dep_chan_data_28_30;
    assign token_in_vec_30[4] = token_28_30;
    assign in_chan_dep_vld_vec_30[5] = dep_chan_vld_29_30;
    assign in_chan_dep_data_vec_30[221 : 185] = dep_chan_data_29_30;
    assign token_in_vec_30[5] = token_29_30;
    assign in_chan_dep_vld_vec_30[6] = dep_chan_vld_32_30;
    assign in_chan_dep_data_vec_30[258 : 222] = dep_chan_data_32_30;
    assign token_in_vec_30[6] = token_32_30;
    assign in_chan_dep_vld_vec_30[7] = dep_chan_vld_34_30;
    assign in_chan_dep_data_vec_30[295 : 259] = dep_chan_data_34_30;
    assign token_in_vec_30[7] = token_34_30;
    assign in_chan_dep_vld_vec_30[8] = dep_chan_vld_36_30;
    assign in_chan_dep_data_vec_30[332 : 296] = dep_chan_data_36_30;
    assign token_in_vec_30[8] = token_36_30;
    assign dep_chan_vld_30_29 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_29 = out_chan_dep_data_30;
    assign token_30_29 = token_out_vec_30[0];
    assign dep_chan_vld_30_12 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_12 = out_chan_dep_data_30;
    assign token_30_12 = token_out_vec_30[1];
    assign dep_chan_vld_30_22 = out_chan_dep_vld_vec_30[2];
    assign dep_chan_data_30_22 = out_chan_dep_data_30;
    assign token_30_22 = token_out_vec_30[2];
    assign dep_chan_vld_30_24 = out_chan_dep_vld_vec_30[3];
    assign dep_chan_data_30_24 = out_chan_dep_data_30;
    assign token_30_24 = token_out_vec_30[3];
    assign dep_chan_vld_30_26 = out_chan_dep_vld_vec_30[4];
    assign dep_chan_data_30_26 = out_chan_dep_data_30;
    assign token_30_26 = token_out_vec_30[4];
    assign dep_chan_vld_30_28 = out_chan_dep_vld_vec_30[5];
    assign dep_chan_data_30_28 = out_chan_dep_data_30;
    assign token_30_28 = token_out_vec_30[5];
    assign dep_chan_vld_30_32 = out_chan_dep_vld_vec_30[6];
    assign dep_chan_data_30_32 = out_chan_dep_data_30;
    assign token_30_32 = token_out_vec_30[6];
    assign dep_chan_vld_30_34 = out_chan_dep_vld_vec_30[7];
    assign dep_chan_data_30_34 = out_chan_dep_data_30;
    assign token_30_34 = token_out_vec_30[7];
    assign dep_chan_vld_30_36 = out_chan_dep_vld_vec_30[8];
    assign dep_chan_data_30_36 = out_chan_dep_data_30;
    assign token_30_36 = token_out_vec_30[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0
    TopPL_hls_deadlock_detect_unit #(37, 31, 2, 2) TopPL_hls_deadlock_detect_unit_31 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_31_data_FIFO_blk[0] = 1'b0;
    assign proc_31_data_PIPO_blk[0] = 1'b0;
    assign proc_31_start_FIFO_blk[0] = 1'b0;
    assign proc_31_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR2_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR2_channel_U.if_write);
    assign proc_31_input_sync_blk[0] = 1'b0;
    assign proc_31_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (proc_31_data_FIFO_blk[0] | proc_31_data_PIPO_blk[0] | proc_31_start_FIFO_blk[0] | proc_31_TLF_FIFO_blk[0] | proc_31_input_sync_blk[0] | proc_31_output_sync_blk[0]);
    assign proc_31_data_FIFO_blk[1] = 1'b0;
    assign proc_31_data_PIPO_blk[1] = 1'b0;
    assign proc_31_start_FIFO_blk[1] = 1'b0;
    assign proc_31_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_149_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc38_U0.ap_done & ap_done_reg_18 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_149_U.if_read);
    assign proc_31_input_sync_blk[1] = 1'b0;
    assign proc_31_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (proc_31_data_FIFO_blk[1] | proc_31_data_PIPO_blk[1] | proc_31_start_FIFO_blk[1] | proc_31_TLF_FIFO_blk[1] | proc_31_input_sync_blk[1] | proc_31_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_18_31;
    assign in_chan_dep_data_vec_31[36 : 0] = dep_chan_data_18_31;
    assign token_in_vec_31[0] = token_18_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_32_31;
    assign in_chan_dep_data_vec_31[73 : 37] = dep_chan_data_32_31;
    assign token_in_vec_31[1] = token_32_31;
    assign dep_chan_vld_31_18 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_18 = out_chan_dep_data_31;
    assign token_31_18 = token_out_vec_31[0];
    assign dep_chan_vld_31_32 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_32 = out_chan_dep_data_31;
    assign token_31_32 = token_out_vec_31[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0
    TopPL_hls_deadlock_detect_unit #(37, 32, 9, 9) TopPL_hls_deadlock_detect_unit_32 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_32_data_FIFO_blk[0] = 1'b0;
    assign proc_32_data_PIPO_blk[0] = 1'b0;
    assign proc_32_start_FIFO_blk[0] = 1'b0;
    assign proc_32_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_149_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_149_U.if_write);
    assign proc_32_input_sync_blk[0] = 1'b0;
    assign proc_32_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (proc_32_data_FIFO_blk[0] | proc_32_data_PIPO_blk[0] | proc_32_start_FIFO_blk[0] | proc_32_TLF_FIFO_blk[0] | proc_32_input_sync_blk[0] | proc_32_output_sync_blk[0]);
    assign proc_32_data_FIFO_blk[1] = 1'b0;
    assign proc_32_data_PIPO_blk[1] = 1'b0;
    assign proc_32_start_FIFO_blk[1] = 1'b0;
    assign proc_32_TLF_FIFO_blk[1] = 1'b0;
    assign proc_32_input_sync_blk[1] = 1'b0;
    assign proc_32_output_sync_blk[1] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_32[1] = dl_detect_out ? proc_dep_vld_vec_32_reg[1] : (proc_32_data_FIFO_blk[1] | proc_32_data_PIPO_blk[1] | proc_32_start_FIFO_blk[1] | proc_32_TLF_FIFO_blk[1] | proc_32_input_sync_blk[1] | proc_32_output_sync_blk[1]);
    assign proc_32_data_FIFO_blk[2] = 1'b0;
    assign proc_32_data_PIPO_blk[2] = 1'b0;
    assign proc_32_start_FIFO_blk[2] = 1'b0;
    assign proc_32_TLF_FIFO_blk[2] = 1'b0;
    assign proc_32_input_sync_blk[2] = 1'b0;
    assign proc_32_output_sync_blk[2] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_32[2] = dl_detect_out ? proc_dep_vld_vec_32_reg[2] : (proc_32_data_FIFO_blk[2] | proc_32_data_PIPO_blk[2] | proc_32_start_FIFO_blk[2] | proc_32_TLF_FIFO_blk[2] | proc_32_input_sync_blk[2] | proc_32_output_sync_blk[2]);
    assign proc_32_data_FIFO_blk[3] = 1'b0;
    assign proc_32_data_PIPO_blk[3] = 1'b0;
    assign proc_32_start_FIFO_blk[3] = 1'b0;
    assign proc_32_TLF_FIFO_blk[3] = 1'b0;
    assign proc_32_input_sync_blk[3] = 1'b0;
    assign proc_32_output_sync_blk[3] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_32[3] = dl_detect_out ? proc_dep_vld_vec_32_reg[3] : (proc_32_data_FIFO_blk[3] | proc_32_data_PIPO_blk[3] | proc_32_start_FIFO_blk[3] | proc_32_TLF_FIFO_blk[3] | proc_32_input_sync_blk[3] | proc_32_output_sync_blk[3]);
    assign proc_32_data_FIFO_blk[4] = 1'b0;
    assign proc_32_data_PIPO_blk[4] = 1'b0;
    assign proc_32_start_FIFO_blk[4] = 1'b0;
    assign proc_32_TLF_FIFO_blk[4] = 1'b0;
    assign proc_32_input_sync_blk[4] = 1'b0;
    assign proc_32_output_sync_blk[4] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_32[4] = dl_detect_out ? proc_dep_vld_vec_32_reg[4] : (proc_32_data_FIFO_blk[4] | proc_32_data_PIPO_blk[4] | proc_32_start_FIFO_blk[4] | proc_32_TLF_FIFO_blk[4] | proc_32_input_sync_blk[4] | proc_32_output_sync_blk[4]);
    assign proc_32_data_FIFO_blk[5] = 1'b0;
    assign proc_32_data_PIPO_blk[5] = 1'b0;
    assign proc_32_start_FIFO_blk[5] = 1'b0;
    assign proc_32_TLF_FIFO_blk[5] = 1'b0;
    assign proc_32_input_sync_blk[5] = 1'b0;
    assign proc_32_output_sync_blk[5] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_32[5] = dl_detect_out ? proc_dep_vld_vec_32_reg[5] : (proc_32_data_FIFO_blk[5] | proc_32_data_PIPO_blk[5] | proc_32_start_FIFO_blk[5] | proc_32_TLF_FIFO_blk[5] | proc_32_input_sync_blk[5] | proc_32_output_sync_blk[5]);
    assign proc_32_data_FIFO_blk[6] = 1'b0;
    assign proc_32_data_PIPO_blk[6] = 1'b0;
    assign proc_32_start_FIFO_blk[6] = 1'b0;
    assign proc_32_TLF_FIFO_blk[6] = 1'b0;
    assign proc_32_input_sync_blk[6] = 1'b0;
    assign proc_32_output_sync_blk[6] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_32[6] = dl_detect_out ? proc_dep_vld_vec_32_reg[6] : (proc_32_data_FIFO_blk[6] | proc_32_data_PIPO_blk[6] | proc_32_start_FIFO_blk[6] | proc_32_TLF_FIFO_blk[6] | proc_32_input_sync_blk[6] | proc_32_output_sync_blk[6]);
    assign proc_32_data_FIFO_blk[7] = 1'b0;
    assign proc_32_data_PIPO_blk[7] = 1'b0;
    assign proc_32_start_FIFO_blk[7] = 1'b0;
    assign proc_32_TLF_FIFO_blk[7] = 1'b0;
    assign proc_32_input_sync_blk[7] = 1'b0;
    assign proc_32_output_sync_blk[7] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_32[7] = dl_detect_out ? proc_dep_vld_vec_32_reg[7] : (proc_32_data_FIFO_blk[7] | proc_32_data_PIPO_blk[7] | proc_32_start_FIFO_blk[7] | proc_32_TLF_FIFO_blk[7] | proc_32_input_sync_blk[7] | proc_32_output_sync_blk[7]);
    assign proc_32_data_FIFO_blk[8] = 1'b0;
    assign proc_32_data_PIPO_blk[8] = 1'b0;
    assign proc_32_start_FIFO_blk[8] = 1'b0;
    assign proc_32_TLF_FIFO_blk[8] = 1'b0;
    assign proc_32_input_sync_blk[8] = 1'b0;
    assign proc_32_output_sync_blk[8] = 1'b0 | (ap_done_reg_19 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_32[8] = dl_detect_out ? proc_dep_vld_vec_32_reg[8] : (proc_32_data_FIFO_blk[8] | proc_32_data_PIPO_blk[8] | proc_32_start_FIFO_blk[8] | proc_32_TLF_FIFO_blk[8] | proc_32_input_sync_blk[8] | proc_32_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_12_32;
    assign in_chan_dep_data_vec_32[36 : 0] = dep_chan_data_12_32;
    assign token_in_vec_32[0] = token_12_32;
    assign in_chan_dep_vld_vec_32[1] = dep_chan_vld_22_32;
    assign in_chan_dep_data_vec_32[73 : 37] = dep_chan_data_22_32;
    assign token_in_vec_32[1] = token_22_32;
    assign in_chan_dep_vld_vec_32[2] = dep_chan_vld_24_32;
    assign in_chan_dep_data_vec_32[110 : 74] = dep_chan_data_24_32;
    assign token_in_vec_32[2] = token_24_32;
    assign in_chan_dep_vld_vec_32[3] = dep_chan_vld_26_32;
    assign in_chan_dep_data_vec_32[147 : 111] = dep_chan_data_26_32;
    assign token_in_vec_32[3] = token_26_32;
    assign in_chan_dep_vld_vec_32[4] = dep_chan_vld_28_32;
    assign in_chan_dep_data_vec_32[184 : 148] = dep_chan_data_28_32;
    assign token_in_vec_32[4] = token_28_32;
    assign in_chan_dep_vld_vec_32[5] = dep_chan_vld_30_32;
    assign in_chan_dep_data_vec_32[221 : 185] = dep_chan_data_30_32;
    assign token_in_vec_32[5] = token_30_32;
    assign in_chan_dep_vld_vec_32[6] = dep_chan_vld_31_32;
    assign in_chan_dep_data_vec_32[258 : 222] = dep_chan_data_31_32;
    assign token_in_vec_32[6] = token_31_32;
    assign in_chan_dep_vld_vec_32[7] = dep_chan_vld_34_32;
    assign in_chan_dep_data_vec_32[295 : 259] = dep_chan_data_34_32;
    assign token_in_vec_32[7] = token_34_32;
    assign in_chan_dep_vld_vec_32[8] = dep_chan_vld_36_32;
    assign in_chan_dep_data_vec_32[332 : 296] = dep_chan_data_36_32;
    assign token_in_vec_32[8] = token_36_32;
    assign dep_chan_vld_32_31 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_31 = out_chan_dep_data_32;
    assign token_32_31 = token_out_vec_32[0];
    assign dep_chan_vld_32_12 = out_chan_dep_vld_vec_32[1];
    assign dep_chan_data_32_12 = out_chan_dep_data_32;
    assign token_32_12 = token_out_vec_32[1];
    assign dep_chan_vld_32_22 = out_chan_dep_vld_vec_32[2];
    assign dep_chan_data_32_22 = out_chan_dep_data_32;
    assign token_32_22 = token_out_vec_32[2];
    assign dep_chan_vld_32_24 = out_chan_dep_vld_vec_32[3];
    assign dep_chan_data_32_24 = out_chan_dep_data_32;
    assign token_32_24 = token_out_vec_32[3];
    assign dep_chan_vld_32_26 = out_chan_dep_vld_vec_32[4];
    assign dep_chan_data_32_26 = out_chan_dep_data_32;
    assign token_32_26 = token_out_vec_32[4];
    assign dep_chan_vld_32_28 = out_chan_dep_vld_vec_32[5];
    assign dep_chan_data_32_28 = out_chan_dep_data_32;
    assign token_32_28 = token_out_vec_32[5];
    assign dep_chan_vld_32_30 = out_chan_dep_vld_vec_32[6];
    assign dep_chan_data_32_30 = out_chan_dep_data_32;
    assign token_32_30 = token_out_vec_32[6];
    assign dep_chan_vld_32_34 = out_chan_dep_vld_vec_32[7];
    assign dep_chan_data_32_34 = out_chan_dep_data_32;
    assign token_32_34 = token_out_vec_32[7];
    assign dep_chan_vld_32_36 = out_chan_dep_vld_vec_32[8];
    assign dep_chan_data_32_36 = out_chan_dep_data_32;
    assign token_32_36 = token_out_vec_32[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0
    TopPL_hls_deadlock_detect_unit #(37, 33, 2, 2) TopPL_hls_deadlock_detect_unit_33 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_33_data_FIFO_blk[0] = 1'b0;
    assign proc_33_data_PIPO_blk[0] = 1'b0;
    assign proc_33_start_FIFO_blk[0] = 1'b0;
    assign proc_33_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL3_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convL3_channel_U.if_write);
    assign proc_33_input_sync_blk[0] = 1'b0;
    assign proc_33_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (proc_33_data_FIFO_blk[0] | proc_33_data_PIPO_blk[0] | proc_33_start_FIFO_blk[0] | proc_33_TLF_FIFO_blk[0] | proc_33_input_sync_blk[0] | proc_33_output_sync_blk[0]);
    assign proc_33_data_FIFO_blk[1] = 1'b0;
    assign proc_33_data_PIPO_blk[1] = 1'b0;
    assign proc_33_start_FIFO_blk[1] = 1'b0;
    assign proc_33_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_148_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc40_U0.ap_done & ap_done_reg_20 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_148_U.if_read);
    assign proc_33_input_sync_blk[1] = 1'b0;
    assign proc_33_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_33[1] = dl_detect_out ? proc_dep_vld_vec_33_reg[1] : (proc_33_data_FIFO_blk[1] | proc_33_data_PIPO_blk[1] | proc_33_start_FIFO_blk[1] | proc_33_TLF_FIFO_blk[1] | proc_33_input_sync_blk[1] | proc_33_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_19_33;
    assign in_chan_dep_data_vec_33[36 : 0] = dep_chan_data_19_33;
    assign token_in_vec_33[0] = token_19_33;
    assign in_chan_dep_vld_vec_33[1] = dep_chan_vld_34_33;
    assign in_chan_dep_data_vec_33[73 : 37] = dep_chan_data_34_33;
    assign token_in_vec_33[1] = token_34_33;
    assign dep_chan_vld_33_19 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_19 = out_chan_dep_data_33;
    assign token_33_19 = token_out_vec_33[0];
    assign dep_chan_vld_33_34 = out_chan_dep_vld_vec_33[1];
    assign dep_chan_data_33_34 = out_chan_dep_data_33;
    assign token_33_34 = token_out_vec_33[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0
    TopPL_hls_deadlock_detect_unit #(37, 34, 9, 9) TopPL_hls_deadlock_detect_unit_34 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_34),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_34),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_34),
        .token_in_vec(token_in_vec_34),
        .dl_detect_in(dl_detect_out),
        .origin(origin[34]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_34),
        .out_chan_dep_data(out_chan_dep_data_34),
        .token_out_vec(token_out_vec_34),
        .dl_detect_out(dl_in_vec[34]));

    assign proc_34_data_FIFO_blk[0] = 1'b0;
    assign proc_34_data_PIPO_blk[0] = 1'b0;
    assign proc_34_start_FIFO_blk[0] = 1'b0;
    assign proc_34_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_148_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_148_U.if_write);
    assign proc_34_input_sync_blk[0] = 1'b0;
    assign proc_34_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_34[0] = dl_detect_out ? proc_dep_vld_vec_34_reg[0] : (proc_34_data_FIFO_blk[0] | proc_34_data_PIPO_blk[0] | proc_34_start_FIFO_blk[0] | proc_34_TLF_FIFO_blk[0] | proc_34_input_sync_blk[0] | proc_34_output_sync_blk[0]);
    assign proc_34_data_FIFO_blk[1] = 1'b0;
    assign proc_34_data_PIPO_blk[1] = 1'b0;
    assign proc_34_start_FIFO_blk[1] = 1'b0;
    assign proc_34_TLF_FIFO_blk[1] = 1'b0;
    assign proc_34_input_sync_blk[1] = 1'b0;
    assign proc_34_output_sync_blk[1] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_34[1] = dl_detect_out ? proc_dep_vld_vec_34_reg[1] : (proc_34_data_FIFO_blk[1] | proc_34_data_PIPO_blk[1] | proc_34_start_FIFO_blk[1] | proc_34_TLF_FIFO_blk[1] | proc_34_input_sync_blk[1] | proc_34_output_sync_blk[1]);
    assign proc_34_data_FIFO_blk[2] = 1'b0;
    assign proc_34_data_PIPO_blk[2] = 1'b0;
    assign proc_34_start_FIFO_blk[2] = 1'b0;
    assign proc_34_TLF_FIFO_blk[2] = 1'b0;
    assign proc_34_input_sync_blk[2] = 1'b0;
    assign proc_34_output_sync_blk[2] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_34[2] = dl_detect_out ? proc_dep_vld_vec_34_reg[2] : (proc_34_data_FIFO_blk[2] | proc_34_data_PIPO_blk[2] | proc_34_start_FIFO_blk[2] | proc_34_TLF_FIFO_blk[2] | proc_34_input_sync_blk[2] | proc_34_output_sync_blk[2]);
    assign proc_34_data_FIFO_blk[3] = 1'b0;
    assign proc_34_data_PIPO_blk[3] = 1'b0;
    assign proc_34_start_FIFO_blk[3] = 1'b0;
    assign proc_34_TLF_FIFO_blk[3] = 1'b0;
    assign proc_34_input_sync_blk[3] = 1'b0;
    assign proc_34_output_sync_blk[3] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_34[3] = dl_detect_out ? proc_dep_vld_vec_34_reg[3] : (proc_34_data_FIFO_blk[3] | proc_34_data_PIPO_blk[3] | proc_34_start_FIFO_blk[3] | proc_34_TLF_FIFO_blk[3] | proc_34_input_sync_blk[3] | proc_34_output_sync_blk[3]);
    assign proc_34_data_FIFO_blk[4] = 1'b0;
    assign proc_34_data_PIPO_blk[4] = 1'b0;
    assign proc_34_start_FIFO_blk[4] = 1'b0;
    assign proc_34_TLF_FIFO_blk[4] = 1'b0;
    assign proc_34_input_sync_blk[4] = 1'b0;
    assign proc_34_output_sync_blk[4] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_34[4] = dl_detect_out ? proc_dep_vld_vec_34_reg[4] : (proc_34_data_FIFO_blk[4] | proc_34_data_PIPO_blk[4] | proc_34_start_FIFO_blk[4] | proc_34_TLF_FIFO_blk[4] | proc_34_input_sync_blk[4] | proc_34_output_sync_blk[4]);
    assign proc_34_data_FIFO_blk[5] = 1'b0;
    assign proc_34_data_PIPO_blk[5] = 1'b0;
    assign proc_34_start_FIFO_blk[5] = 1'b0;
    assign proc_34_TLF_FIFO_blk[5] = 1'b0;
    assign proc_34_input_sync_blk[5] = 1'b0;
    assign proc_34_output_sync_blk[5] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_34[5] = dl_detect_out ? proc_dep_vld_vec_34_reg[5] : (proc_34_data_FIFO_blk[5] | proc_34_data_PIPO_blk[5] | proc_34_start_FIFO_blk[5] | proc_34_TLF_FIFO_blk[5] | proc_34_input_sync_blk[5] | proc_34_output_sync_blk[5]);
    assign proc_34_data_FIFO_blk[6] = 1'b0;
    assign proc_34_data_PIPO_blk[6] = 1'b0;
    assign proc_34_start_FIFO_blk[6] = 1'b0;
    assign proc_34_TLF_FIFO_blk[6] = 1'b0;
    assign proc_34_input_sync_blk[6] = 1'b0;
    assign proc_34_output_sync_blk[6] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_34[6] = dl_detect_out ? proc_dep_vld_vec_34_reg[6] : (proc_34_data_FIFO_blk[6] | proc_34_data_PIPO_blk[6] | proc_34_start_FIFO_blk[6] | proc_34_TLF_FIFO_blk[6] | proc_34_input_sync_blk[6] | proc_34_output_sync_blk[6]);
    assign proc_34_data_FIFO_blk[7] = 1'b0;
    assign proc_34_data_PIPO_blk[7] = 1'b0;
    assign proc_34_start_FIFO_blk[7] = 1'b0;
    assign proc_34_TLF_FIFO_blk[7] = 1'b0;
    assign proc_34_input_sync_blk[7] = 1'b0;
    assign proc_34_output_sync_blk[7] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_34[7] = dl_detect_out ? proc_dep_vld_vec_34_reg[7] : (proc_34_data_FIFO_blk[7] | proc_34_data_PIPO_blk[7] | proc_34_start_FIFO_blk[7] | proc_34_TLF_FIFO_blk[7] | proc_34_input_sync_blk[7] | proc_34_output_sync_blk[7]);
    assign proc_34_data_FIFO_blk[8] = 1'b0;
    assign proc_34_data_PIPO_blk[8] = 1'b0;
    assign proc_34_start_FIFO_blk[8] = 1'b0;
    assign proc_34_TLF_FIFO_blk[8] = 1'b0;
    assign proc_34_input_sync_blk[8] = 1'b0;
    assign proc_34_output_sync_blk[8] = 1'b0 | (ap_done_reg_21 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done);
    assign proc_dep_vld_vec_34[8] = dl_detect_out ? proc_dep_vld_vec_34_reg[8] : (proc_34_data_FIFO_blk[8] | proc_34_data_PIPO_blk[8] | proc_34_start_FIFO_blk[8] | proc_34_TLF_FIFO_blk[8] | proc_34_input_sync_blk[8] | proc_34_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_34_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_34_reg <= proc_dep_vld_vec_34;
        end
    end
    assign in_chan_dep_vld_vec_34[0] = dep_chan_vld_12_34;
    assign in_chan_dep_data_vec_34[36 : 0] = dep_chan_data_12_34;
    assign token_in_vec_34[0] = token_12_34;
    assign in_chan_dep_vld_vec_34[1] = dep_chan_vld_22_34;
    assign in_chan_dep_data_vec_34[73 : 37] = dep_chan_data_22_34;
    assign token_in_vec_34[1] = token_22_34;
    assign in_chan_dep_vld_vec_34[2] = dep_chan_vld_24_34;
    assign in_chan_dep_data_vec_34[110 : 74] = dep_chan_data_24_34;
    assign token_in_vec_34[2] = token_24_34;
    assign in_chan_dep_vld_vec_34[3] = dep_chan_vld_26_34;
    assign in_chan_dep_data_vec_34[147 : 111] = dep_chan_data_26_34;
    assign token_in_vec_34[3] = token_26_34;
    assign in_chan_dep_vld_vec_34[4] = dep_chan_vld_28_34;
    assign in_chan_dep_data_vec_34[184 : 148] = dep_chan_data_28_34;
    assign token_in_vec_34[4] = token_28_34;
    assign in_chan_dep_vld_vec_34[5] = dep_chan_vld_30_34;
    assign in_chan_dep_data_vec_34[221 : 185] = dep_chan_data_30_34;
    assign token_in_vec_34[5] = token_30_34;
    assign in_chan_dep_vld_vec_34[6] = dep_chan_vld_32_34;
    assign in_chan_dep_data_vec_34[258 : 222] = dep_chan_data_32_34;
    assign token_in_vec_34[6] = token_32_34;
    assign in_chan_dep_vld_vec_34[7] = dep_chan_vld_33_34;
    assign in_chan_dep_data_vec_34[295 : 259] = dep_chan_data_33_34;
    assign token_in_vec_34[7] = token_33_34;
    assign in_chan_dep_vld_vec_34[8] = dep_chan_vld_36_34;
    assign in_chan_dep_data_vec_34[332 : 296] = dep_chan_data_36_34;
    assign token_in_vec_34[8] = token_36_34;
    assign dep_chan_vld_34_33 = out_chan_dep_vld_vec_34[0];
    assign dep_chan_data_34_33 = out_chan_dep_data_34;
    assign token_34_33 = token_out_vec_34[0];
    assign dep_chan_vld_34_12 = out_chan_dep_vld_vec_34[1];
    assign dep_chan_data_34_12 = out_chan_dep_data_34;
    assign token_34_12 = token_out_vec_34[1];
    assign dep_chan_vld_34_22 = out_chan_dep_vld_vec_34[2];
    assign dep_chan_data_34_22 = out_chan_dep_data_34;
    assign token_34_22 = token_out_vec_34[2];
    assign dep_chan_vld_34_24 = out_chan_dep_vld_vec_34[3];
    assign dep_chan_data_34_24 = out_chan_dep_data_34;
    assign token_34_24 = token_out_vec_34[3];
    assign dep_chan_vld_34_26 = out_chan_dep_vld_vec_34[4];
    assign dep_chan_data_34_26 = out_chan_dep_data_34;
    assign token_34_26 = token_out_vec_34[4];
    assign dep_chan_vld_34_28 = out_chan_dep_vld_vec_34[5];
    assign dep_chan_data_34_28 = out_chan_dep_data_34;
    assign token_34_28 = token_out_vec_34[5];
    assign dep_chan_vld_34_30 = out_chan_dep_vld_vec_34[6];
    assign dep_chan_data_34_30 = out_chan_dep_data_34;
    assign token_34_30 = token_out_vec_34[6];
    assign dep_chan_vld_34_32 = out_chan_dep_vld_vec_34[7];
    assign dep_chan_data_34_32 = out_chan_dep_data_34;
    assign token_34_32 = token_out_vec_34[7];
    assign dep_chan_vld_34_36 = out_chan_dep_vld_vec_34[8];
    assign dep_chan_data_34_36 = out_chan_dep_data_34;
    assign token_34_36 = token_out_vec_34[8];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0
    TopPL_hls_deadlock_detect_unit #(37, 35, 2, 2) TopPL_hls_deadlock_detect_unit_35 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_35),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_35),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_35),
        .token_in_vec(token_in_vec_35),
        .dl_detect_in(dl_detect_out),
        .origin(origin[35]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_35),
        .out_chan_dep_data(out_chan_dep_data_35),
        .token_out_vec(token_out_vec_35),
        .dl_detect_out(dl_in_vec[35]));

    assign proc_35_data_FIFO_blk[0] = 1'b0;
    assign proc_35_data_PIPO_blk[0] = 1'b0;
    assign proc_35_start_FIFO_blk[0] = 1'b0;
    assign proc_35_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR3_channel_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.convR3_channel_U.if_write);
    assign proc_35_input_sync_blk[0] = 1'b0;
    assign proc_35_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_35[0] = dl_detect_out ? proc_dep_vld_vec_35_reg[0] : (proc_35_data_FIFO_blk[0] | proc_35_data_PIPO_blk[0] | proc_35_start_FIFO_blk[0] | proc_35_TLF_FIFO_blk[0] | proc_35_input_sync_blk[0] | proc_35_output_sync_blk[0]);
    assign proc_35_data_FIFO_blk[1] = 1'b0;
    assign proc_35_data_PIPO_blk[1] = 1'b0;
    assign proc_35_start_FIFO_blk[1] = 1'b0;
    assign proc_35_TLF_FIFO_blk[1] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_U.if_full_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc42_U0.ap_done & ap_done_reg_22 & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_U.if_read);
    assign proc_35_input_sync_blk[1] = 1'b0;
    assign proc_35_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_35[1] = dl_detect_out ? proc_dep_vld_vec_35_reg[1] : (proc_35_data_FIFO_blk[1] | proc_35_data_PIPO_blk[1] | proc_35_start_FIFO_blk[1] | proc_35_TLF_FIFO_blk[1] | proc_35_input_sync_blk[1] | proc_35_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_35_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_35_reg <= proc_dep_vld_vec_35;
        end
    end
    assign in_chan_dep_vld_vec_35[0] = dep_chan_vld_20_35;
    assign in_chan_dep_data_vec_35[36 : 0] = dep_chan_data_20_35;
    assign token_in_vec_35[0] = token_20_35;
    assign in_chan_dep_vld_vec_35[1] = dep_chan_vld_36_35;
    assign in_chan_dep_data_vec_35[73 : 37] = dep_chan_data_36_35;
    assign token_in_vec_35[1] = token_36_35;
    assign dep_chan_vld_35_20 = out_chan_dep_vld_vec_35[0];
    assign dep_chan_data_35_20 = out_chan_dep_data_35;
    assign token_35_20 = token_out_vec_35[0];
    assign dep_chan_vld_35_36 = out_chan_dep_vld_vec_35[1];
    assign dep_chan_data_35_36 = out_chan_dep_data_35;
    assign token_35_36 = token_out_vec_35[1];

    // Process: Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0
    TopPL_hls_deadlock_detect_unit #(37, 36, 9, 9) TopPL_hls_deadlock_detect_unit_36 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_36),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_36),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_36),
        .token_in_vec(token_in_vec_36),
        .dl_detect_in(dl_detect_out),
        .origin(origin[36]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_36),
        .out_chan_dep_data(out_chan_dep_data_36),
        .token_out_vec(token_out_vec_36),
        .dl_detect_out(dl_in_vec[36]));

    assign proc_36_data_FIFO_blk[0] = 1'b0;
    assign proc_36_data_PIPO_blk[0] = 1'b0;
    assign proc_36_start_FIFO_blk[0] = 1'b0;
    assign proc_36_TLF_FIFO_blk[0] = 1'b0 | (~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_U.if_empty_n & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_idle & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.empty_U.if_write);
    assign proc_36_input_sync_blk[0] = 1'b0;
    assign proc_36_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_36[0] = dl_detect_out ? proc_dep_vld_vec_36_reg[0] : (proc_36_data_FIFO_blk[0] | proc_36_data_PIPO_blk[0] | proc_36_start_FIFO_blk[0] | proc_36_TLF_FIFO_blk[0] | proc_36_input_sync_blk[0] | proc_36_output_sync_blk[0]);
    assign proc_36_data_FIFO_blk[1] = 1'b0;
    assign proc_36_data_PIPO_blk[1] = 1'b0;
    assign proc_36_start_FIFO_blk[1] = 1'b0;
    assign proc_36_TLF_FIFO_blk[1] = 1'b0;
    assign proc_36_input_sync_blk[1] = 1'b0;
    assign proc_36_output_sync_blk[1] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.print_int_U0.ap_done);
    assign proc_dep_vld_vec_36[1] = dl_detect_out ? proc_dep_vld_vec_36_reg[1] : (proc_36_data_FIFO_blk[1] | proc_36_data_PIPO_blk[1] | proc_36_start_FIFO_blk[1] | proc_36_TLF_FIFO_blk[1] | proc_36_input_sync_blk[1] | proc_36_output_sync_blk[1]);
    assign proc_36_data_FIFO_blk[2] = 1'b0;
    assign proc_36_data_PIPO_blk[2] = 1'b0;
    assign proc_36_start_FIFO_blk[2] = 1'b0;
    assign proc_36_TLF_FIFO_blk[2] = 1'b0;
    assign proc_36_input_sync_blk[2] = 1'b0;
    assign proc_36_output_sync_blk[2] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc29_U0.ap_done);
    assign proc_dep_vld_vec_36[2] = dl_detect_out ? proc_dep_vld_vec_36_reg[2] : (proc_36_data_FIFO_blk[2] | proc_36_data_PIPO_blk[2] | proc_36_start_FIFO_blk[2] | proc_36_TLF_FIFO_blk[2] | proc_36_input_sync_blk[2] | proc_36_output_sync_blk[2]);
    assign proc_36_data_FIFO_blk[3] = 1'b0;
    assign proc_36_data_PIPO_blk[3] = 1'b0;
    assign proc_36_start_FIFO_blk[3] = 1'b0;
    assign proc_36_TLF_FIFO_blk[3] = 1'b0;
    assign proc_36_input_sync_blk[3] = 1'b0;
    assign proc_36_output_sync_blk[3] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc31_U0.ap_done);
    assign proc_dep_vld_vec_36[3] = dl_detect_out ? proc_dep_vld_vec_36_reg[3] : (proc_36_data_FIFO_blk[3] | proc_36_data_PIPO_blk[3] | proc_36_start_FIFO_blk[3] | proc_36_TLF_FIFO_blk[3] | proc_36_input_sync_blk[3] | proc_36_output_sync_blk[3]);
    assign proc_36_data_FIFO_blk[4] = 1'b0;
    assign proc_36_data_PIPO_blk[4] = 1'b0;
    assign proc_36_start_FIFO_blk[4] = 1'b0;
    assign proc_36_TLF_FIFO_blk[4] = 1'b0;
    assign proc_36_input_sync_blk[4] = 1'b0;
    assign proc_36_output_sync_blk[4] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc33_U0.ap_done);
    assign proc_dep_vld_vec_36[4] = dl_detect_out ? proc_dep_vld_vec_36_reg[4] : (proc_36_data_FIFO_blk[4] | proc_36_data_PIPO_blk[4] | proc_36_start_FIFO_blk[4] | proc_36_TLF_FIFO_blk[4] | proc_36_input_sync_blk[4] | proc_36_output_sync_blk[4]);
    assign proc_36_data_FIFO_blk[5] = 1'b0;
    assign proc_36_data_PIPO_blk[5] = 1'b0;
    assign proc_36_start_FIFO_blk[5] = 1'b0;
    assign proc_36_TLF_FIFO_blk[5] = 1'b0;
    assign proc_36_input_sync_blk[5] = 1'b0;
    assign proc_36_output_sync_blk[5] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc35_U0.ap_done);
    assign proc_dep_vld_vec_36[5] = dl_detect_out ? proc_dep_vld_vec_36_reg[5] : (proc_36_data_FIFO_blk[5] | proc_36_data_PIPO_blk[5] | proc_36_start_FIFO_blk[5] | proc_36_TLF_FIFO_blk[5] | proc_36_input_sync_blk[5] | proc_36_output_sync_blk[5]);
    assign proc_36_data_FIFO_blk[6] = 1'b0;
    assign proc_36_data_PIPO_blk[6] = 1'b0;
    assign proc_36_start_FIFO_blk[6] = 1'b0;
    assign proc_36_TLF_FIFO_blk[6] = 1'b0;
    assign proc_36_input_sync_blk[6] = 1'b0;
    assign proc_36_output_sync_blk[6] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc37_U0.ap_done);
    assign proc_dep_vld_vec_36[6] = dl_detect_out ? proc_dep_vld_vec_36_reg[6] : (proc_36_data_FIFO_blk[6] | proc_36_data_PIPO_blk[6] | proc_36_start_FIFO_blk[6] | proc_36_TLF_FIFO_blk[6] | proc_36_input_sync_blk[6] | proc_36_output_sync_blk[6]);
    assign proc_36_data_FIFO_blk[7] = 1'b0;
    assign proc_36_data_PIPO_blk[7] = 1'b0;
    assign proc_36_start_FIFO_blk[7] = 1'b0;
    assign proc_36_TLF_FIFO_blk[7] = 1'b0;
    assign proc_36_input_sync_blk[7] = 1'b0;
    assign proc_36_output_sync_blk[7] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc39_U0.ap_done);
    assign proc_dep_vld_vec_36[7] = dl_detect_out ? proc_dep_vld_vec_36_reg[7] : (proc_36_data_FIFO_blk[7] | proc_36_data_PIPO_blk[7] | proc_36_start_FIFO_blk[7] | proc_36_TLF_FIFO_blk[7] | proc_36_input_sync_blk[7] | proc_36_output_sync_blk[7]);
    assign proc_36_data_FIFO_blk[8] = 1'b0;
    assign proc_36_data_PIPO_blk[8] = 1'b0;
    assign proc_36_start_FIFO_blk[8] = 1'b0;
    assign proc_36_TLF_FIFO_blk[8] = 1'b0;
    assign proc_36_input_sync_blk[8] = 1'b0;
    assign proc_36_output_sync_blk[8] = 1'b0 | (ap_done_reg_23 & Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc43_U0.ap_done & ~Receive_U0.grp_dataflow_parent_loop_proc28_fu_184.dataflow_in_loop_VITIS_LOOP_315_2_1_U0.Block_newFuncRoot_proc_proc41_U0.ap_done);
    assign proc_dep_vld_vec_36[8] = dl_detect_out ? proc_dep_vld_vec_36_reg[8] : (proc_36_data_FIFO_blk[8] | proc_36_data_PIPO_blk[8] | proc_36_start_FIFO_blk[8] | proc_36_TLF_FIFO_blk[8] | proc_36_input_sync_blk[8] | proc_36_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_36_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_36_reg <= proc_dep_vld_vec_36;
        end
    end
    assign in_chan_dep_vld_vec_36[0] = dep_chan_vld_12_36;
    assign in_chan_dep_data_vec_36[36 : 0] = dep_chan_data_12_36;
    assign token_in_vec_36[0] = token_12_36;
    assign in_chan_dep_vld_vec_36[1] = dep_chan_vld_22_36;
    assign in_chan_dep_data_vec_36[73 : 37] = dep_chan_data_22_36;
    assign token_in_vec_36[1] = token_22_36;
    assign in_chan_dep_vld_vec_36[2] = dep_chan_vld_24_36;
    assign in_chan_dep_data_vec_36[110 : 74] = dep_chan_data_24_36;
    assign token_in_vec_36[2] = token_24_36;
    assign in_chan_dep_vld_vec_36[3] = dep_chan_vld_26_36;
    assign in_chan_dep_data_vec_36[147 : 111] = dep_chan_data_26_36;
    assign token_in_vec_36[3] = token_26_36;
    assign in_chan_dep_vld_vec_36[4] = dep_chan_vld_28_36;
    assign in_chan_dep_data_vec_36[184 : 148] = dep_chan_data_28_36;
    assign token_in_vec_36[4] = token_28_36;
    assign in_chan_dep_vld_vec_36[5] = dep_chan_vld_30_36;
    assign in_chan_dep_data_vec_36[221 : 185] = dep_chan_data_30_36;
    assign token_in_vec_36[5] = token_30_36;
    assign in_chan_dep_vld_vec_36[6] = dep_chan_vld_32_36;
    assign in_chan_dep_data_vec_36[258 : 222] = dep_chan_data_32_36;
    assign token_in_vec_36[6] = token_32_36;
    assign in_chan_dep_vld_vec_36[7] = dep_chan_vld_34_36;
    assign in_chan_dep_data_vec_36[295 : 259] = dep_chan_data_34_36;
    assign token_in_vec_36[7] = token_34_36;
    assign in_chan_dep_vld_vec_36[8] = dep_chan_vld_35_36;
    assign in_chan_dep_data_vec_36[332 : 296] = dep_chan_data_35_36;
    assign token_in_vec_36[8] = token_35_36;
    assign dep_chan_vld_36_35 = out_chan_dep_vld_vec_36[0];
    assign dep_chan_data_36_35 = out_chan_dep_data_36;
    assign token_36_35 = token_out_vec_36[0];
    assign dep_chan_vld_36_12 = out_chan_dep_vld_vec_36[1];
    assign dep_chan_data_36_12 = out_chan_dep_data_36;
    assign token_36_12 = token_out_vec_36[1];
    assign dep_chan_vld_36_22 = out_chan_dep_vld_vec_36[2];
    assign dep_chan_data_36_22 = out_chan_dep_data_36;
    assign token_36_22 = token_out_vec_36[2];
    assign dep_chan_vld_36_24 = out_chan_dep_vld_vec_36[3];
    assign dep_chan_data_36_24 = out_chan_dep_data_36;
    assign token_36_24 = token_out_vec_36[3];
    assign dep_chan_vld_36_26 = out_chan_dep_vld_vec_36[4];
    assign dep_chan_data_36_26 = out_chan_dep_data_36;
    assign token_36_26 = token_out_vec_36[4];
    assign dep_chan_vld_36_28 = out_chan_dep_vld_vec_36[5];
    assign dep_chan_data_36_28 = out_chan_dep_data_36;
    assign token_36_28 = token_out_vec_36[5];
    assign dep_chan_vld_36_30 = out_chan_dep_vld_vec_36[6];
    assign dep_chan_data_36_30 = out_chan_dep_data_36;
    assign token_36_30 = token_out_vec_36[6];
    assign dep_chan_vld_36_32 = out_chan_dep_vld_vec_36[7];
    assign dep_chan_data_36_32 = out_chan_dep_data_36;
    assign token_36_32 = token_out_vec_36[7];
    assign dep_chan_vld_36_34 = out_chan_dep_vld_vec_36[8];
    assign dep_chan_data_36_34 = out_chan_dep_data_36;
    assign token_36_34 = token_out_vec_36[8];


`include "TopPL_hls_deadlock_report_unit.vh"
