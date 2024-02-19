#include "TopFunc.cpp"

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

  axis_stream order2AIE[2], order4AIE[2], ready[BLOCK_NUM];
  axis_pkt_stream toSweepstrm0, toSweepstrm1, toNormstrm0;
  axis_pkt_stream fromSweepstrm0, fromSweepstrm1, fromNormstrm0;
  const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER;

  Manager<ROW, BLOCK_NUM, BLOCK_SIZE> manager;
  manager.generateOrder(ITER, order2AIE[0], order2AIE[1]);
  manager.load4DDR(data);
  for(int k = 0;k < SWEEP_STEP;k ++) {
    manager.send2AIE(toSweepstrm0, order2AIE[0], order4AIE[0], ready, k == 0);
    manager.send2AIE(toSweepstrm1, order2AIE[1], order4AIE[1], ready, k == 0);
    manager.simulateAIE(toSweepstrm0, toSweepstrm1, fromSweepstrm0, fromSweepstrm1);
    manager.receive4AIE(fromSweepstrm0, order4AIE[0], ready);
    manager.receive4AIE(fromSweepstrm1, order4AIE[1], ready);
  }
  //manager.norm(result, toNormstrm0, fromNormstrm0);

  cout << "Result: \n";
  for(int i = 0;i < ROW;i ++) {
    for(int j = 0;j < COL;j ++) {
      cout << result[j*ROW + i] << " ";
    }
    cout << "\n";
  }
}