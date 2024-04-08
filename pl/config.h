#pragma once
#include "../SystemConfig.h"
#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <hls_burst_maxi.h>
#include <hls_print.h>


const int W = 128;
const int DDR_WIDTH = 128;
//Block

const int ELEM_NUM = W/32;
const int DDR_ELEM_NUM = DDR_WIDTH/32;

typedef ap_axiu<W, 0, 0, 0> axis_pkt;
typedef hls::stream<ap_uint<32>, MUX_NUM*BLOCK_NUM> axis_stream;
typedef hls::stream<ap_uint<128>, MUX_SIZE*BLOCK_SIZE*ROW/ELEM_NUM> axis_stream_128;
typedef hls::stream<axis_pkt> axis_pkt_stream;

const int END = 0xffffffff;




