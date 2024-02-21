#pragma once

#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <hls_burst_maxi.h>
#include <hls_streamofblocks.h>
#include <hls_print.h>
#include "config.h"

static ap_uint<32> generateHeader(unsigned int pktType, unsigned int ID);

static unsigned int getPacketID(ap_uint<32> header);

void load4DDR(ap_uint<DDR_WIDTH>* dataIn, axis_block_stream block[BLOCK_NUM]);

void generateOrder(const int ITER, axis_stream& order2AIE0, axis_stream& order2AIE1
                   );

void receive4AIE(axis_block_stream block[BLOCK_NUM], axis_stream& order4AIE, axis_pkt_stream& fromAIEstrm);

void sweep_receive(const int ITER, axis_block_stream blockOut[BLOCK_NUM], axis_block_stream block[BLOCK_NUM],
                   axis_stream& order4AIE0, axis_pkt_stream& fromSweepstrm0, 
                   axis_stream& order4AIE1, axis_pkt_stream& fromSweepstrm1);

void send2AIE(axis_block_stream block[BLOCK_NUM], axis_stream& order2AIE, axis_stream& order4AIE, axis_pkt_stream& toAIEstrm);

void send2AIE(axis_block_stream& block, axis_pkt_stream& toAIEstrm);

void sweep_send(const int ITER, axis_block_stream blockIn[BLOCK_NUM], axis_block_stream block[BLOCK_NUM],
                axis_stream& order2AIE0, axis_stream& order4AIE0, axis_pkt_stream& toSweepstrm0, 
                axis_stream& order2AIE1, axis_stream& order4AIE1, axis_pkt_stream& toSweepstrm1);

void sweep(const int ITER, axis_block_stream blockIn[BLOCK_NUM], axis_block_stream blockOut[BLOCK_NUM],
           axis_pkt_stream& toSweepstrm0, axis_pkt_stream& fromSweepstrm0,
           axis_pkt_stream& toSweepstrm1, axis_pkt_stream& fromSweepstrm1 );

void norm_send(axis_block_stream block[BLOCK_NUM], axis_pkt_stream& toAIEstrm);

void norm_receive(ap_uint<DDR_WIDTH>* dataOut, axis_pkt_stream& fromAIEstrm);

void norm(ap_uint<DDR_WIDTH>* out, axis_block_stream blockIn[BLOCK_NUM],
          axis_pkt_stream& toNormstrm0, axis_pkt_stream& fromNormstrm0);

void TopFunc(ap_uint<DDR_WIDTH>* in, ap_uint<DDR_WIDTH>* out,
         const int ITER, 
         axis_pkt_stream& toSweepstrm0, axis_pkt_stream& fromSweepstrm0,
         axis_pkt_stream& toSweepstrm1, axis_pkt_stream& fromSweepstrm1,
         axis_pkt_stream& toNormstrm0, axis_pkt_stream& fromNormstrm0);

void simulateAIE(axis_pkt_stream& toSweepstrm0, axis_pkt_stream& toSweepstrm1,
                  axis_pkt_stream& fromSweepstrm0, axis_pkt_stream& fromSweepstrm1);
