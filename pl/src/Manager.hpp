#include <ap_int.h>
#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <hls_burst_maxi.h>
#include "Block.hpp"
#include "config.h"

template<int ROW, int BLOCK_NUM, int BLOCK_SIZE>
class Manager {
private:

  Block<ROW, BLOCK_SIZE> block[BLOCK_NUM];
  

public:

  Manager() {
#pragma HLS array_partition variable = block type = complete dim = 1
//#pragma HLS INTERFACE axis port = order2AIE
//#pragma HLS INTERFACE axis port = order4AIE
  }
  void load4DDR(ap_uint<DDR_WIDTH>* dataIn) {
  #pragma HLS inline off
    for(int k = 0;k < BLOCK_NUM;k ++) {
      block[k].load4DDR(dataIn, k);
    }
  }
  void generateOrder(const int ITER, axis_stream& order2AIE0, axis_stream& order2AIE1) {
  #pragma HLS inline off 
   if(BLOCK_NUM%2 == 0) {
      int pu[BLOCK_NUM/2][2], tmp[BLOCK_NUM/2][2];
      for(int k = 0;k < ITER;k ++) {
        for(int i = 0;i < BLOCK_NUM;i += 2) {
          pu[i/2][0] = i;
          pu[i/2][1] = i+1;
        }
        const int PU_NUM = BLOCK_NUM/2;
        for(int i = 0;i < BLOCK_NUM-1;i ++) {
          for(int j = 0;j < PU_NUM;j ++) {
            order2AIE0.write(pu[j][0]);
            order2AIE1.write(pu[j][1]);
          }
          tmp[1][0] = pu[0][0];
          tmp[0][0] = pu[0][1];
          for(int j = 1;j < PU_NUM-1;j ++) {
            tmp[j+1][0] = pu[j][0];
            tmp[j-1][1] = pu[j][1];
          }
          tmp[PU_NUM-2][1] = pu[PU_NUM-1][0];
          tmp[PU_NUM-1][1] = pu[PU_NUM-1][1];

          for(int j = 0;j < PU_NUM;j ++) {
            pu[j][0] = tmp[j][0];
            pu[j][1] = tmp[j][1];
          }
        }
      }
    }
  }

  void send2AIE(axis_pkt_stream& toAIEstrm, axis_stream& order2AIE, axis_stream& order4AIE, axis_stream* ready, bool first) {
  #pragma HLS inline off  
    ap_uint<32> temp;
    int id = order2AIE.read();
    if(first) ready[id].read_nb(temp);
    else ready[id].read();
    block[id].send2AIE(toAIEstrm);
    order4AIE.write(id);
  }

  void send2AIE(axis_pkt_stream& toSweepstrm0, axis_stream& order2AIE0, axis_stream& order4AIE0, 
                axis_pkt_stream& toSweepstrm1, axis_stream& order2AIE1, axis_stream& order4AIE1,
                axis_stream* ready, const int ITER) {
  #pragma HLS inline off
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;
    for(int step = 0;step < SWEEP_STEP;step ++){
//#pragma HLS dataflow
      send2AIE(toSweepstrm0, order2AIE0, order4AIE0, ready, step == 0);
      send2AIE(toSweepstrm1, order2AIE1, order4AIE1, ready, step == 0);
    }
  }

  void receive4AIE(axis_pkt_stream& fromAIEstrm, axis_stream& order4AIE, axis_stream* ready, bool last) {
  #pragma HLS inline off  
    int id = order4AIE.read();
    block[id].receive4AIE(fromAIEstrm, ready[id]);
    //ready[id].write(1);
  }

  void receive4AIE(axis_pkt_stream& fromSweepstrm0, axis_stream& order4AIE0,
                   axis_pkt_stream& fromSweepstrm1, axis_stream& order4AIE1,
                   axis_stream* ready, const int ITER) {
  #pragma HLS inline off
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;
    for(int step = 0;step < SWEEP_STEP;step ++){
//#pragma HLS dataflow      
      receive4AIE(fromSweepstrm0, order4AIE0, ready, step == SWEEP_STEP-1);
      receive4AIE(fromSweepstrm1, order4AIE1, ready, step == SWEEP_STEP-1);
    }
  }

  void sweep(const int ITER,
             axis_pkt_stream& toSweepstrm0, axis_pkt_stream& toSweepstrm1,
             axis_pkt_stream& fromSweepstrm0, axis_pkt_stream& fromSweepstrm1) {
  #pragma HLS inline off
     axis_stream order2AIE[2], order4AIE[2];
     axis_stream ready[BLOCK_NUM];
     
      #pragma HLS dataflow
      generateOrder(ITER, order2AIE[0], order2AIE[1]);
      send2AIE(toSweepstrm0, order2AIE[0], order4AIE[0],
              toSweepstrm1, order2AIE[1], order4AIE[1],
              ready, ITER);
      receive4AIE(fromSweepstrm0, order4AIE[0],
                 fromSweepstrm1, order4AIE[1], 
                 ready, ITER);
      
                      
  }

  void norm_send2AIE(axis_pkt_stream& toAIEstrm) {
  #pragma HLS inline off
    for(int i = 0;i < BLOCK_NUM;i ++) {
      block[i].send2AIE(toAIEstrm);
    }
  }

  void norm_receive4AIE(ap_uint<DDR_WIDTH>* dataOut, axis_pkt_stream& fromAIEstrm) {
  #pragma HLS inline off
    axis_pkt tmp;
    ap_uint<32> header;
    ap_uint<32> sigma;
    for(int i = 0;i < BLOCK_NUM;i ++) {
      for(int j = 0;j < BLOCK_SIZE;j ++) {
        tmp = fromAIEstrm.read();
        header = tmp.data(31, 0);
        sigma = tmp.data(63, 32);
        dataOut[i*BLOCK_SIZE + header] = sigma;
      }
    }
  }


  void norm(ap_uint<DDR_WIDTH>* dataOut, axis_pkt_stream& toNormstrm0, axis_pkt_stream& fromNormstrm0) {
#pragma HLS dataflow
    norm_send2AIE(toNormstrm0);
    norm_receive4AIE(dataOut, fromNormstrm0);             
  }
    
};
