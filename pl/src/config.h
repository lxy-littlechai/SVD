#pragma once

const int W = 128;
const int DDR_WIDTH = 32;
//Block
const int BLOCK_NUM = 2;
const int BLOCK_SIZE = 4;
const int ROW = 8;
const int ELEM_NUM = W/32;

typedef ap_uint<W> buf[BLOCK_SIZE*ROW/ELEM_NUM];
typedef hls::stream_of_blocks<buf> axis_block_stream;
typedef ap_axiu<W, 0, 0, 0> axis_pkt;
typedef hls::stream<ap_uint<32>> axis_stream;
typedef hls::stream<unsigned int> axis_stream_uint;
typedef hls::stream<ap_uint<32>> axis_stream_32;
typedef hls::stream<ap_uint<128>, BLOCK_SIZE*ROW/ELEM_NUM*2> axis_stream_128;
typedef hls::stream<axis_pkt> axis_pkt_stream;

