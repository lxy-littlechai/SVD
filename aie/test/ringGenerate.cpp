#include <bits/stdc++.h>
using namespace std;

const int VCK190_ROW = 8;
const int VCK190_COL = 50;
const int GraphSize = 4;
const int COL = GraphSize;
const int ROW = 2*GraphSize-1;
int ring0[GraphSize][2*GraphSize], ring1[GraphSize][2*GraphSize], ptr, offset = 0;
int tmp0[COL], tmp1[COL];
struct Order {
  int col, port;
}ring[2*GraphSize][2*GraphSize];
int main() {

    for(int i = 0;i < 2*COL;i += 2) {
        ring0[i/2][0] = i;
        ring1[i/2][0] = i+1;
      }

      ptr = COL-1;
      for(int i = 0;i < ROW-1;i ++) {
        std::swap(ring0[ptr][i], ring1[ptr][i]);
        for(int j = 0;j < COL;j ++) {
          ring0[j][i+1] = ring0[j][i];
          ring1[j][i+1] = ring1[(j+1)%COL][i];
        }
        std::swap(ring0[ptr][i], ring1[ptr][i]);
        if(i&1) ptr --;
      }
      //give offset
      int row = 0, col = 0, direction = 1;
      offset = 0;
      for(int i = 0;i < ROW-1;i ++) {
        if(row&1) {
          offset = (offset-1+COL)%COL;
        }

        for(int j = 0;j < COL;j ++) {
          tmp0[j] = ring0[(j+offset+COL)%COL][i+1];
          tmp1[j] = ring1[(j+offset+COL)%COL][i+1];
        }
        for(int j = 0;j < COL;j ++) {
          ring0[j][i+1] = tmp0[j];
          ring1[j][i+1] = tmp1[j];
        }

        for(int j = 0;j < COL;j ++) {
          ring[ring0[j][i]][i].col = j;
          ring[ring1[j][i]][i].col = j;
          ring[ring0[j][i]][i].port = 0;
          ring[ring1[j][i]][i].port = 1;
          cout << "(" << ring0[j][i] << "," << ring1[j][i] << ")";
        }
        cout << endl;

        row += direction;
        if(row == VCK190_ROW-1 && direction == 1) {
            row = VCK190_ROW-1;
            col += COL;
            direction *= -1;
        }
        else if(row == 0 && direction == -1) {
            row = 0;
            col += COL;
            direction *= -1;
        }
      }
    
    for(int i = 0;i < ROW;i ++) {
      for(int j = 0;j < COL;j ++) {
        int out_col = ring[j][i].col;
        int out_port = ring[j][i].port;
        int in_col = ring[j][i+1].col;
        int in_port = ring[j][i+1].port;
        cout << out_col << " " << out_port << " " << in_col << " " << in_port << endl;
      }
    }
    
  

}