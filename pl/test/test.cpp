#include "ManagerCsim.hpp"

#include <bits/stdc++.h>
using namespace std;

int main() {
  const int ROW = 16;
  const int COL = 16;
  const int BLOCK_SIZE = 2;
  const int BLOCK_NUM= COL/BLOCK_SIZE;

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

  axis_pkt_stream toAIEstrm0, toAIEstrm1;
  axis_pkt_stream fromAIEstrm0, fromAIEstrm1;
  const int SWEEP_STEP = BLOCK_NUM/2*(BLOCK_NUM-1);

  ManagerCsim<ROW, BLOCK_NUM, BLOCK_SIZE> manager;
  manager.generateOrder();
  manager.load4DDR(data);
  for(int k = 0;k < SWEEP_STEP;k ++) {
    manager.send2AIE(toAIEstrm0, toAIEstrm1);
    manager.simulateAIE(toAIEstrm0, toAIEstrm1, fromAIEstrm0, fromAIEstrm1);
    manager.receive4AIE(fromAIEstrm0, fromAIEstrm1);
  }
  
  manager.store2DDR(result);

  cout << "Result: \n";
  for(int i = 0;i < ROW;i ++) {
    for(int j = 0;j < COL;j ++) {
      cout << result[j*ROW + i] << " ";
    }
    cout << "\n";
  }
}