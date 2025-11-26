#include "adf.h"
#include <cstring>
#include <iostream>
#include "ProcessUnit/Orthogonalize.h"
#include "ProcessUnit/Normalize.h"
using namespace adf;

const int VCK190_ROW = 8;
const int VCK190_COL = 50;
template<int MatrixROW, int GraphSize, int START_COL, int START_ROW, int DIRECTION, int CascadeLevel>
class RingSweepGraph: public adf::graph {
private:
    const int ROW = 2*GraphSize-1;
    const int COL = GraphSize;

    kernel orth[CascadeLevel][GraphSize][2*GraphSize];// (col, row)
    
    int ring0[GraphSize][2*GraphSize], ring1[GraphSize][2*GraphSize];
    struct Order {
      int col, port;
    }ring[CascadeLevel][2*GraphSize][2*GraphSize];  //the j'th matrix col in i row at ring[j][i] row;

    int bankID[VCK190_COL][VCK190_ROW];

    struct Pos {
        int col;
        int row;
        // (out0/1, ping/pong)
        int bank_id[2][2];
        int bank_col[2][2];
        int bank_row[2][2];
    }orthInfo[CascadeLevel][GraphSize][2*GraphSize];

    

public:
    input_port in[CascadeLevel][GraphSize][2];
    output_port out[CascadeLevel][GraphSize][2];

    RingSweepGraph() {
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
              if(CascadeLevel == 1) {
                orth[0][j][i] = adf::kernel::create(orthogonalize<MatrixROW>);
                adf::source(orth[0][j][i]) = "aie/ProcessUnit/Orthogonalize.cpp";
                runtime<ratio>(orth[0][j][i]) = 1.0;
              }
              else {
                orth[0][j][i] = adf::kernel::create(orthTop<MatrixROW>);
                adf::source(orth[0][j][i]) = "aie/ProcessUnit/OrthTop.cpp";
                runtime<ratio>(orth[0][j][i]) = 1.0;
                for(int k = 1;k < CascadeLevel-1;k ++) {
                  orth[k][j][i] = adf::kernel::create(orthMid<MatrixROW>);
                  adf::source(orth[k][j][i]) = "aie/ProcessUnit/OrthMid.cpp";
                  runtime<ratio>(orth[k][j][i]) = 1.0;
                }
                orth[CascadeLevel-1][j][i] = adf::kernel::create(orthBottom<MatrixROW>);
                adf::source(orth[CascadeLevel-1][j][i]) = "aie/ProcessUnit/OrthBottom.cpp";
                runtime<ratio>(orth[CascadeLevel-1][j][i]) = 1.0;
              }
            }
        }

        int row = START_ROW, col = START_COL, direction = DIRECTION;

        for(int k = 0;k < CascadeLevel;k ++) {
          for(int i = 0;i < ROW;i ++) {
              int base_col = col;
              for(int j = 0;j < COL;j ++) {
                  location<kernel>(orth[k][j][i]) = tile(base_col+j, row);
                  orthInfo[k][j][i].col = base_col+j;
                  orthInfo[k][j][i].row = row;
              }
              row += direction;
              if(row == VCK190_ROW-1 && direction == 1) {
                  row = VCK190_ROW-1;
                  col += COL+1;
                  direction *= -1;
              }
              else if(row == 0 && direction == -1) {
                  row = 0;
                  col += COL+1;
                  direction *= -1;
              }
          }
          row += direction;
          if(row == VCK190_ROW-1 && direction == 1) {
              row = VCK190_ROW-1;
              col += COL+1;
              direction *= -1;
          }
          else if(row == 0 && direction == -1) {
              row = 0;
              col += COL+1;
              direction *= -1;
          }
        }

        for(int i = 0;i < VCK190_ROW;i ++) {
            for(int j = 0;j < VCK190_COL;j ++) {
                bankID[j][i] = 0;
            }
        }

        int pow_row = START_ROW;
        col = START_COL, direction = DIRECTION;
        for(int k = 0;k < CascadeLevel;k ++) {
          for(int i = 0;i < ROW;i ++) {
              for(int j = 0;j < COL;j ++) {
                  col = orthInfo[k][j][i].col; row = orthInfo[k][j][i].row+direction;
                  location<buffer>(orth[k][j][i].out[0]) = {bank(col, row, getBankID(k, j, i, col, row, 0, 0)),
                                                         bank(col, row, getBankID(k, j, i, col, row, 0, 1))};
                  col = orthInfo[k][j][i].col; row = orthInfo[k][j][i].row+direction;
                  location<buffer>(orth[k][j][i].out[1]) = {bank(col, row, getBankID(k, j, i, col, row, 1, 0)),
                                                         bank(col, row, getBankID(k, j, i, col, row, 1, 1))};
              }
              pow_row += direction;
              if(pow_row == VCK190_ROW-1 && direction == 1) {
                  pow_row = VCK190_ROW-1;
                  direction *= -1;
              }
              else if(pow_row == 0 && direction == -1) {
                  pow_row = 0;
                  direction *= -1;
              }
          }
          pow_row += direction;
          if(pow_row == VCK190_ROW-1 && direction == 1) {
              pow_row = VCK190_ROW-1;
              direction *= -1;
          }
          else if(pow_row == 0 && direction == -1) {
              pow_row = 0;
              direction *= -1;
          }
        }
        
        
         // connection
        int cur_row = START_ROW, cur_direction = DIRECTION;
        for(int k = 0;k < CascadeLevel;k ++) {
          auto [row, direction] = initRingOrder(k, cur_row, cur_direction);
          cur_row = row;
          cur_direction = direction;
          for(int i = 0;i < COL;i ++) {
            connect<> (in[k][i][0], orth[k][i][0].in[0]);
            connect<> (in[k][i][1], orth[k][i][0].in[1]);
          }

          for(int i = 0;i < ROW-1;i ++) {
            for(int j = 0;j < 2*COL;j ++) {
              int out_col = ring[k][j][i].col;
              int out_port = ring[k][j][i].port;
              int in_col = ring[k][j][i+1].col;
              int in_port = ring[k][j][i+1].port;
              connect<> (orth[k][out_col][i].out[out_port], orth[k][in_col][i+1].in[in_port]);
            }
          }

          //keep prior block construction, don't change column into other block
          for(int j = 0;j < 2*COL;j ++) {
            int out_col = ring[k][j][ROW-1].col;
            int out_port = ring[k][j][ROW-1].port;
            if(j&1) {
             connect<> (orth[k][out_col][ROW-1].out[out_port], out[k][j/2][1]);
            }
            else {
             connect<> (orth[k][out_col][ROW-1].out[out_port], out[k][j/2][0]);
            }
            
          }
        }

        if(CascadeLevel > 1) {
          // connect acc
          for(int k = 0;k < CascadeLevel-1;k ++) {
            for(int i = 0;i < ROW;i ++) {
              for(int j = 0;j < COL;j ++) {
                connect<> (orth[k][j][i].out[2], orth[k+1][j][i].in[2]);
              }
            }
          }

          //connect params
          for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
              connect<> (orth[CascadeLevel-1][j][i].out[2], orth[0][j][i].in[2]);
            }
          }
          for(int k = 1;k < CascadeLevel-1;k ++) {
            for(int i = 0;i < ROW;i ++) {
              for(int j = 0;j < COL;j ++) {
                connect<> (orth[CascadeLevel-1][j][i].out[2], orth[k][j][i].in[3]);
              }
            }
          }
        }




        

    }

    int getBankID(int cascade_level, int orth_col, int orth_row, int bank_col, int bank_row, int out_port, int ping_pong) {
        orthInfo[cascade_level][orth_col][orth_row].bank_col[out_port][ping_pong] = bank_col;
        orthInfo[cascade_level][orth_col][orth_row].bank_row[out_port][ping_pong] = bank_row;
        orthInfo[cascade_level][orth_col][orth_row].bank_id[out_port][ping_pong] = bankID[bank_col][bank_row];
        bankID[bank_col][bank_row] ++;
        return orthInfo[cascade_level][orth_col][orth_row].bank_id[out_port][ping_pong];
    }

    std::pair<int, int> initRingOrder(int cascade_level, int cur_row, int cur_direction) {
      int tmp0[COL], tmp1[COL];
      //basic ring order
      for(int i = 0;i < 2*COL;i += 2) {
        ring0[i/2][0] = i;
        ring1[i/2][0] = i+1;
      }

      int ptr = COL-1;
      for(int i = 0;i < ROW;i ++) {
        std::swap(ring0[ptr][i], ring1[ptr][i]);
        for(int j = 0;j < COL;j ++) {
          ring0[j][i+1] = ring0[j][i];
          ring1[j][i+1] = ring1[(j+1)%COL][i];
        }
        std::swap(ring0[ptr][i], ring1[ptr][i]);
        if(i&1) ptr --;
      }
      //give offset
      int row = cur_row, direction = cur_direction, offset = 0;
      for(int i = 0;i < ROW;i ++) {
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

        row += direction;
        if(row == VCK190_ROW-1 && direction == 1) {
            row = VCK190_ROW-1;
            direction *= -1;
        }
        else if(row == 0 && direction == -1) {
            row = 0;
            direction *= -1;
        }
      }
      row += direction;
      if(row == VCK190_ROW-1 && direction == 1) {
          row = VCK190_ROW-1;
          direction *= -1;
      }
      else if(row == 0 && direction == -1) {
          row = 0;
          direction *= -1;
      }

      for(int i = 0;i < ROW+1;i ++) {
        for(int j = 0;j < COL;j ++) {
          ring[cascade_level][ring0[j][i]][i].col = j;
          ring[cascade_level][ring1[j][i]][i].col = j;
          ring[cascade_level][ring0[j][i]][i].port = 0;
          ring[cascade_level][ring1[j][i]][i].port = 1;
        }
      }
      return std::make_pair(row, direction);
    }

};

template<int MatrixROW, int GraphSize, int START_COL, int START_ROW, int DIRECTION, int CascadeLevel>
class RingNormGraph: public graph {
private:
  kernel norm[CascadeLevel][GraphSize];

public:
  input_port in[CascadeLevel][GraphSize];
  output_port out[CascadeLevel][GraphSize];

  RingNormGraph() {
    if(CascadeLevel == 1) {
      for(int i = 0;i < GraphSize; i ++) {
        norm[0][i] = kernel::create(normalize<MatrixROW>);
        adf::source(norm[0][i]) = "aie/ProcessUnit/Normalize.cpp";
        runtime<ratio>(norm[0][i]) = 0.9;
      }
    }
    else {
      for(int i = 0;i < GraphSize; i ++) {
        norm[0][i] = kernel::create(normTop<MatrixROW>);
        adf::source(norm[0][i]) = "aie/ProcessUnit/NormTop.cpp";
        runtime<ratio>(norm[0][i]) = 0.9;
      }
      for(int k = 1;k < CascadeLevel-1;k ++) {
        for(int i = 0;i < GraphSize; i ++) {
          norm[k][i] = kernel::create(normMid<MatrixROW>);
          adf::source(norm[k][i]) = "aie/ProcessUnit/NormMid.cpp";
          runtime<ratio>(norm[k][i]) = 0.9;
        }
      }
      for(int i = 0;i < GraphSize; i ++) {
        norm[CascadeLevel-1][i] = kernel::create(normBottom<MatrixROW>);
        adf::source(norm[CascadeLevel-1][i]) = "aie/ProcessUnit/NormBottom.cpp";
        runtime<ratio>(norm[CascadeLevel-1][i]) = 0.9;
      }
    }

    for(int k = 0;k < CascadeLevel;k ++) {
      for(int i = 0;i < GraphSize;i ++) {
        connect<> (in[k][i], norm[k][i].in[0]);
        connect<> (norm[k][i].out[0], out[k][i]);
      }
    }
    
    if(CascadeLevel > 1) {
      // connect param
      for(int k = 0;k < CascadeLevel-1;k ++) {
        for(int i = 0;i < GraphSize;i ++) {
          connect<> (norm[CascadeLevel-1][i].out[1], norm[k][i].in[1]);
        }
      }

      // connect acc
      for(int k = 0;k < CascadeLevel-2;k ++) {
        for(int i = 0;i < GraphSize;i ++) {
          connect<> (norm[k][i].out[1], norm[k+1][i].in[2]);
        }
      }
      for(int i = 0;i < GraphSize;i ++) {
        connect<> (norm[CascadeLevel-2][i].out[1], norm[CascadeLevel-1][i].in[1]);
      }
    }

    int row = START_ROW, col = START_COL, direction = DIRECTION;
    for(int k = 0;k < CascadeLevel;k ++) {
      for(int i = 0;i < GraphSize;i ++) {
          location<kernel>(norm[k][i]) = tile(col, row);
          row += direction;
          if(row == VCK190_ROW && direction == 1) {
              row = VCK190_ROW-1;
              col += GraphSize+1;
              direction *= -1;
          }
          else if(row == -1 && direction == -1) {
              row = 0;
              col += GraphSize+1;
              direction *= -1;
          }
      }
    }

  }

};