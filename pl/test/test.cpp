#include "../src/TopFunc.h"

#include <bits/stdc++.h>
using namespace std;

int main() {
  const int ROW = 8;
  const int COL = 8;
  const int BLOCK_SIZE = 4;
  const int BLOCK_NUM= COL/BLOCK_SIZE;
  const int ITER = 3;

  ap_uint<32> data[COL*ROW], result[COL*ROW];
  for(int j = 0;j < COL;j ++) {
    for(int i = 0;i < ROW;i ++) {
      data[j*ROW + i] = j+1;
    }
  }
  cout << "Data: \n";
  for(int i = 0;i < ROW;i ++) {
    for(int j = 0;j < COL;j ++) {
      cout << data[j*ROW + i] << " ";
    }
    cout << "\n";
  }

  axis_stream order2AIE[2], order4AIE[2];
  axis_block_stream blockIn[BLOCK_NUM], blockOut[BLOCK_NUM], block[BLOCK_NUM];
  axis_pkt_stream toSweepstrm0, toSweepstrm1, toNormstrm0;
  axis_pkt_stream fromSweepstrm0, fromSweepstrm1, fromNormstrm0;
  TopFunc(data, result, ITER,
         toSweepstrm0, fromSweepstrm0,
         toSweepstrm1, fromSweepstrm1,
         toNormstrm0, fromNormstrm0);
/*  const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;

  load4DDR(data, blockIn);
  generateOrder(ITER, order2AIE[0], order2AIE[1]);
  for(int step = 0;step < SWEEP_STEP;step ++){
//#pragma HLS dataflow
      if(step < BLOCK_NUM/2) {
        cout << "BLCOKIN\n";
        send2AIE(blockIn, order2AIE[0], order4AIE[0], toSweepstrm0);
        send2AIE(blockIn, order2AIE[1], order4AIE[1], toSweepstrm1);
      }
      else {
        send2AIE(block, order2AIE[0], order4AIE[0], toSweepstrm0);
        send2AIE(block, order2AIE[1], order4AIE[1], toSweepstrm1);
      }

      simulateAIE(toSweepstrm0, toSweepstrm1, fromSweepstrm0, fromSweepstrm1);
      
      if(step < SWEEP_STEP - BLOCK_NUM/2) {
        receive4AIE(block, order4AIE[0], fromSweepstrm0);
        receive4AIE(block, order4AIE[1], fromSweepstrm1);
      }
      else {
        receive4AIE(blockOut, order4AIE[0], fromSweepstrm0);
        receive4AIE(blockOut, order4AIE[1], fromSweepstrm1);
      }
    }
  */

  cout << "Result: \n";
  for(int i = 0;i < ROW;i ++) {
    for(int j = 0;j < COL;j ++) {
      cout << result[j*ROW + i] << " ";
    }
    cout << "\n";
  }
}
