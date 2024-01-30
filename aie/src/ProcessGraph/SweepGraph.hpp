#include "adf.h"
#include <cstring>
#include "ProcessUnit/Orthogonalize.h"
using namespace adf;

template<int MatrixROW, int GraphSize>
class SweepGraph: public adf::graph {
private:
    kernel orth[GraphSize][2*GraphSize];// (col, row)
    int bankID[50][8];

    struct Pos {
        int col;
        int row;
        // (out0/1, ping/pong)
        int bank_id[2][2];
        int bank_col[2][2];
        int bank_row[2][2];
    }orthInfo[GraphSize][2*GraphSize];

    const int ROW = 2*GraphSize;
    const int COL = GraphSize;
    const int VCK190_ROW = 4;
    const int VCK190_COL = 50;

public:
    input_port in[GraphSize][2];
    output_port out[GraphSize][2];

    SweepGraph() {
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                orth[j][i] = adf::kernel::create(orthogonalize<MatrixROW>);
                adf::source(orth[j][i]) = "aie/src/ProcessUnit/Orthogonalize.cpp";
                runtime<ratio>(orth[j][i]) = 0.9;
                location<kernel>(orth[j][i]) = tile(j+1, i);
                orthInfo[j][i].col = j+1;
                orthInfo[j][i].row = i;

            }
        }

        for(int i = 0;i < VCK190_ROW;i ++) {
            for(int j = 0;j < VCK190_COL;j ++) {
                bankID[j][i] = 0;
            }
        }
/*
        int col, row, direction = 1;
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                       bank(col, row, getBankID(j, i, col, row, 0, 1))};
                col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                       bank(col, row, getBankID(j, i, col, row, 1, 1))};
            }
            
            if((pos_row[i] == VCK190_ROW-2 && direction == 1) || (pos_row[i] == 1 && direction == -1)) {
                direction *= -1;
            }
            
        }
*/        
        
         // connection
        for(int i = 0;i < COL;i ++) {
            connect<> (in[i][0], orth[i][0].in[0]);
            connect<> (in[i][1], orth[i][0].in[1]);
        }

        if(GraphSize&1) {
            
        }
        else {
            for(int i = 0;i < ROW-1;i ++) {
                connect<> (orth[0][i].out[0], orth[1][i+1].in[0]);
                connect<> (orth[0][i].out[1], orth[0][i+1].in[0]);
                for(int j = 1;j < COL-1;j ++) {
                    connect<> (orth[j][i].out[0], orth[j+1][i+1].in[0]);
                    connect<> (orth[j][i].out[1], orth[j-1][i+1].in[1]);
                }
                connect<> (orth[COL-1][i].out[0], orth[COL-2][i+1].in[1]);
                connect<> (orth[COL-1][i].out[1], orth[COL-1][i+1].in[1]);
            }
            connect<> (orth[0][ROW-1].out[0], out[1][0]);
            connect<> (orth[0][ROW-1].out[1], out[0][0]);
            for(int j = 1;j < COL-1;j ++) {
                connect<> (orth[j][ROW-1].out[0], out[j+1][0]);
                connect<> (orth[j][ROW-1].out[1], out[j-1][1]);
            }
            connect<> (orth[COL-1][ROW-1].out[0], out[COL-2][1]);
            connect<> (orth[COL-1][ROW-1].out[1], out[COL-1][1]);
        }

    }

    int getBankID(int orth_col, int orth_row, int bank_col, int bank_row, int out_port, int ping_pong) {
        orthInfo[orth_col][orth_row].bank_col[out_port][ping_pong] = bank_col;
        orthInfo[orth_col][orth_row].bank_row[out_port][ping_pong] = bank_row;
        orthInfo[orth_col][orth_row].bank_id[out_port][ping_pong] = bankID[bank_col][bank_row];
        bankID[bank_col][bank_row] ++;
        return orthInfo[orth_col][orth_row].bank_id[out_port][ping_pong];
    }

};