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
  axis_stream order2AIE[2], order4AIE[2];

public:
  void load4DDR(ap_uint<DDR_WIDTH>* dataIn) {
    for(int k = 0;k < BLOCK_NUM;k ++) {
      block[k].load4DDR(dataIn, k);
    }
  }

  void generateOrder() {
    if(BLOCK_NUM%2 == 0) {
      int pu[BLOCK_NUM/2][2], tmp[BLOCK_NUM/2][2];
      for(int i = 0;i < BLOCK_NUM;i += 2) {
        pu[i/2][0] = i;
        pu[i/2][1] = i+1;
      }
      const int PU_NUM = BLOCK_NUM/2;
      for(int i = 0;i < BLOCK_NUM-1;i ++) {
        for(int j = 0;j < PU_NUM;j ++) {
          order2AIE[0].write(pu[j][0]);
          order2AIE[1].write(pu[j][1]);
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

  void send2AIE(axis_pkt_stream& toAIEstrm0, axis_pkt_stream& toAIEstrm1) {
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1);
    for(int step = 0;step < SWEEP_STEP;step ++){
      int Left = order2AIE[0].read();
      int Right = order2AIE[1].read();

      block[Left].send2AIE(toAIEstrm0);
      order4AIE[0].write(Left);

      block[Right].send2AIE(toAIEstrm1);
      order4AIE[1].write(Right);

    }
  }

  void receive4AIE(axis_pkt_stream& fromAIEstrm0, axis_pkt_stream& fromAIEstrm1) {
    const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1);
    for(int step = 0;step < SWEEP_STEP;step ++){
      int Left = order4AIE[0].read();
      int Right = order4AIE[1].read();

      block[Left].receive4AIE(fromAIEstrm0);
      block[Right].receive4AIE(fromAIEstrm1);

    }
  }

  void store2DDR(ap_uint<DDR_WIDTH>* dataOut) {
    for(int k = 0;k < BLOCK_NUM;k ++) {
      block[k].store2DDR(dataOut, k);
    }
  }        
  

};