#pragma once

const int W = 128;
const int DDR_WIDTH = 32;

typedef ap_axiu<W, 0, 0, 0> axis_pkt;
typedef hls::stream<ap_uint<W>> axis_stream;
typedef hls::stream<axis_pkt> axis_pkt_stream;

const int ELEM_NUM = W/32;