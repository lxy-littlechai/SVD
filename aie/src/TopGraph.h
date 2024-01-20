#include "adf.h"
#include "ProcessUnit/Orthogonalize.h"
#include <cstring>
using namespace adf;

template<int MatrixROW, int GraphSize>
class TopGraph: public adf::graph {
private:
    kernel orth[GraphSize][GraphSize];// (col, row)
    int bankID[80][5];

    int pos_row[GraphSize]; // record row
    struct Pos {
        int col;
        int row;
        // (out0/1, ping/pong)
        int bank_id[2][2];
        int bank_col[2][2];
        int bank_row[2][2];
    }orthInfo[GraphSize][GraphSize];

    const int ROW = GraphSize;
    const int COL = GraphSize;
    const int VCK190_ROW = 5;
    const int VCK190_COL = 80;
    int BUFFER_OFFSET[2][2] = {{0, 1}, {2,3}};

public:
    input_plio in[GraphSize][2];
    output_plio out[GraphSize][2];

    TopGraph() {
        for(int i = 0;i < COL;i ++) {
            for(int j = 0;j < 2;j ++) {
                std::string fileIn = "aie/data/in" + std::to_string(i) + "_" + std::to_string(j) + ".txt";
                std::string fileOut = "aie/data/out" + std::to_string(i) + "_" + std::to_string(j) +".txt";
                std::string plIn = "in_" + std::to_string(i) + "_" + std::to_string(j);
                std::string plout = "out_" + std::to_string(i) + "_" + std::to_string(j);
                in[i][j] = input_plio::create(plIn, plio_32_bits, fileIn);
                out[i][j] = output_plio::create(plout, plio_32_bits, fileOut);
            }
        }

        int start_col = 0, current_row = 0, add_row = 1;
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                orth[j][i] = adf::kernel::create(orthogonalize<MatrixROW>);
                adf::source(orth[j][i]) = "aie/src/ProcessUnit/Orthogonalize.cpp";
                runtime<ratio>(orth[j][i]) = 0.9;
                location<kernel>(orth[j][i]) = tile(start_col+j, current_row);
                orthInfo[j][i] = {start_col+j, current_row};
            }
            pos_row[i] = current_row;
            current_row += add_row;
            if(current_row == VCK190_ROW - 1) {
                add_row = -1;
                start_col += COL;
            }
            else if(current_row == 0) {
                add_row = 1;
                start_col += COL;
            }
        }

        for(int i = 0;i < VCK190_ROW;i ++) {
            for(int j = 0;j < VCK190_COL;j ++) {
                bankID[j][i] = 0;
            }
        }
        int direction = 1;
        int col, row;
        if(GraphSize&1) {
            // Out Buffer
            direction = 1;
            for(int i = 0;i < ROW;i ++) {
                if((pos_row[i] == VCK190_ROW-1 && direction == 1) || (pos_row[i] == VCK190_ROW-1 && direction == -1)) {
                    for(int j = 0;j < COL;j ++) {
                        col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                        location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                               bank(col, row, getBankID(j, i, col, row, 0, 1))};
                        col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                        location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                               bank(col, row, getBankID(j, i, col, row, 1, 1))};
                    }
                    direction *= -1;
                }
                else if(pos_row[i]&1){
                    //out0 buffer 0 & COL-1
                    col = orthInfo[0][i].col+1; row = orthInfo[0][i].row;
                    location<buffer>(orth[0][i].out[0]) = {bank(col, row, getBankID(0, i, col, row, 0, 0)),
                                                           bank(col, row, getBankID(0, i, col, row, 0, 1))};
                    col = orthInfo[COL-1][i].col; row = orthInfo[COL-1][i].row+direction;
                    location<buffer>(orth[COL-1][i].out[0]) = {bank(col, row, getBankID(COL-1, i, col, row, 0, 0)),
                                                               bank(col, row, getBankID(COL-1, i, col, row, 0, 1))};
                    //out1 buffer 0 & COL-1
                    col = orthInfo[0][i].col; row = orthInfo[0][i].row+direction;
                    location<buffer>(orth[0][i].out[1]) = {bank(col, row, getBankID(0, i, col, row, 1, 0)),
                                                           bank(col, row, getBankID(0, i, col, row, 1, 1))};
                    col = orthInfo[COL-1][i].col; row = orthInfo[COL-1][i].row+direction;
                    location<buffer>(orth[COL-1][i].out[1]) = {bank(col, row, getBankID(COL-1, i, col, row, 1, 0)),
                                                               bank(col, row, getBankID(COL-1, i, col, row, 1, 1))};

                    for(int j = 1;j < COL-1;j ++) {
                        if(j&1) {
                            col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                            location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 0, 1))};
                            col = orthInfo[j][i].col+1; row = orthInfo[j][i].row;
                            location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 1, 1))};
                        }
                        else {
                            col = orthInfo[j][i].col+1; row = orthInfo[j][i].row;
                            location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 0, 1))};
                            col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                            location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 1, 1))};
                        }
                    } 
                }
                else {
                    //out0 buffer 0 & COL-1
                    col = orthInfo[0][i].col; row = orthInfo[0][i].row+direction;
                    location<buffer>(orth[0][i].out[0]) = {bank(col, row, getBankID(0, i, col, row, 0, 0)),
                                                           bank(col, row, getBankID(0, i, col, row, 0, 1))};
                    col = orthInfo[COL-1][i].col-1; row = orthInfo[COL-1][i].row;
                    location<buffer>(orth[COL-1][i].out[0]) = {bank(col, row, getBankID(COL-1, i, col, row, 0, 0)),
                                                               bank(col, row, getBankID(COL-1, i, col, row, 0, 1))};
                    //out1 buffer 0 & COL-1
                    col = orthInfo[0][i].col; row = orthInfo[0][i].row+direction;
                    location<buffer>(orth[0][i].out[1]) = {bank(col, row, getBankID(0, i, col, row, 1, 0)),
                                                           bank(col, row, getBankID(0, i, col, row, 1, 1))};
                    col = orthInfo[COL-1][i].col; row =  orthInfo[COL-1][i].row+direction;                                     
                    location<buffer>(orth[COL-1][i].out[1]) = {bank(col, row, getBankID(COL-1, i, col, row, 1, 0)),
                                                               bank(col, row, getBankID(COL-1, i, col, row, 1, 1))};
                    
                    for(int j = 1;j < COL-1;j ++) {
                        if(j&1) {
                            col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                            location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 0, 1))};
                            col = orthInfo[j][i].col-1; row = orthInfo[j][i].row;
                            location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 1, 1))};
                        }
                        else {
                            col = orthInfo[j][i].col-1; row = orthInfo[j][i].row;
                            location<buffer>(orth[j][i].out[0]) = {bank(col, row, getBankID(j, i, col, row, 0, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 0, 1))};
                            col = orthInfo[j][i].col; row = orthInfo[j][i].row+direction;
                            location<buffer>(orth[j][i].out[1]) = {bank(col, row, getBankID(j, i, col, row, 1, 0)),
                                                                   bank(col, row, getBankID(j, i, col, row, 1, 1))};
                        }
                    } 

                }
            }
        }
        
         // connection
        for(int i = 0;i < COL;i ++) {
            connect<> (in[i][0].out[0], orth[i][0].in[0]);
            connect<> (in[i][1].out[0], orth[i][0].in[1]);
        }

        if(GraphSize&1) {
            connect<> (orth[0][ROW-1].out[0], out[0][0].in[0]);
            connect<> (orth[0][ROW-1].out[1], out[1][1].in[0]);
            for(int j = 1;j < COL-1;j ++) {
                if(j&1) {
                    connect<> (orth[j][ROW-1].out[0], out[j+1][0].in[0]);
                    connect<> (orth[j][ROW-1].out[1], out[j-1][1].in[0]);
                }
                else {
                    connect<> (orth[j][ROW-1].out[0], out[j-1][0].in[0]);
                    connect<> (orth[j][ROW-1].out[1], out[j+1][1].in[0]);
                }
            }
            connect<> (orth[COL-1][ROW-1].out[0], out[COL-2][0].in[0]);
            connect<> (orth[COL-1][ROW-1].out[1], out[COL-1][1].in[0]);

            for(int i = 0;i < ROW-1;i ++) {
                if(i&1) {
                    connect<> (orth[0][i].out[0], orth[1][i+1].in[0]);
                    connect<> (orth[0][i].out[1], orth[0][i+1].in[1]);
                    location<buffer>(orth[1][i+1].in[0]) = {bank(orthInfo[0][i].bank_col[0][0], orthInfo[0][i].bank_row[0][0], orthInfo[0][i].bank_id[0][0]),
                                                            bank(orthInfo[0][i].bank_col[0][1], orthInfo[0][i].bank_row[0][1], orthInfo[0][i].bank_id[0][1])};
                    location<buffer>(orth[0][i+1].in[1]) = {bank(orthInfo[0][i].bank_col[1][0], orthInfo[0][i].bank_row[1][0], orthInfo[0][i].bank_id[1][0]),
                                                            bank(orthInfo[0][i].bank_col[1][1], orthInfo[0][i].bank_row[1][1], orthInfo[0][i].bank_id[1][1])};
                    for(int j = 1;j < COL-1;j ++) {
                        if(j&1) {
                            connect<> (orth[j][i].out[0], orth[j-1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j+1][i+1].in[1]);
                            location<buffer>(orth[j-1][i+1].in[0]) = {bank(orthInfo[j][i].bank_col[0][0], orthInfo[j][i].bank_row[0][0], orthInfo[j][i].bank_id[0][0]),
                                                                      bank(orthInfo[j][i].bank_col[0][1], orthInfo[j][i].bank_row[0][1], orthInfo[j][i].bank_id[0][1])};
                            location<buffer>(orth[j+1][i+1].in[1]) = {bank(orthInfo[j][i].bank_col[1][0], orthInfo[j][i].bank_row[1][0], orthInfo[j][i].bank_id[1][0]),
                                                                      bank(orthInfo[j][i].bank_col[1][1], orthInfo[j][i].bank_row[1][1], orthInfo[j][i].bank_id[1][1])};

                        }
                        else {
                            connect<> (orth[j][i].out[0], orth[j+1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j-1][i+1].in[1]);
                            location<buffer>(orth[j+1][i+1].in[0]) = {bank(orthInfo[j][i].bank_col[0][0], orthInfo[j][i].bank_row[0][0], orthInfo[j][i].bank_id[0][0]),
                                                                      bank(orthInfo[j][i].bank_col[0][1], orthInfo[j][i].bank_row[0][1], orthInfo[j][i].bank_id[0][1])};
                            location<buffer>(orth[j-1][i+1].in[1]) = {bank(orthInfo[j][i].bank_col[1][0], orthInfo[j][i].bank_row[1][0], orthInfo[j][i].bank_id[1][0]),
                                                                      bank(orthInfo[j][i].bank_col[1][1], orthInfo[j][i].bank_row[1][1], orthInfo[j][i].bank_id[1][1])};
                        }
                    }
                    connect<> (orth[COL-1][i].out[0], orth[COL-1][i+1].in[0]);
                    connect<> (orth[COL-1][i].out[1], orth[COL-2][i+1].in[1]);
                    location<buffer>(orth[COL-1][i+1].in[0]) = {bank(orthInfo[COL-1][i].bank_col[0][0], orthInfo[COL-1][i].bank_row[0][0], orthInfo[COL-1][i].bank_id[0][0]),
                                                                bank(orthInfo[COL-1][i].bank_col[0][1], orthInfo[COL-1][i].bank_row[0][1], orthInfo[COL-1][i].bank_id[0][1])};
                    location<buffer>(orth[COL-2][i+1].in[1]) = {bank(orthInfo[COL-1][i].bank_col[1][0], orthInfo[COL-1][i].bank_row[1][0], orthInfo[COL-1][i].bank_id[1][0]),
                                                                bank(orthInfo[COL-1][i].bank_col[1][1], orthInfo[COL-1][i].bank_row[1][1], orthInfo[COL-1][i].bank_id[1][1])};
                }
                else {
                    connect<> (orth[0][i].out[0], orth[0][i+1].in[0]);
                    connect<> (orth[0][i].out[1], orth[1][i+1].in[1]);
                    location<buffer>(orth[0][i+1].in[0]) = {bank(orthInfo[0][i].bank_col[0][0], orthInfo[0][i].bank_row[0][0], orthInfo[0][i].bank_id[0][0]),
                                                            bank(orthInfo[0][i].bank_col[0][1], orthInfo[0][i].bank_row[0][1], orthInfo[0][i].bank_id[0][1])};
                    location<buffer>(orth[1][i+1].in[1]) = {bank(orthInfo[0][i].bank_col[1][0], orthInfo[0][i].bank_row[1][0], orthInfo[0][i].bank_id[1][0]),
                                                            bank(orthInfo[0][i].bank_col[1][1], orthInfo[0][i].bank_row[1][1], orthInfo[0][i].bank_id[1][1])};
                    for(int j = 1;j < COL-1;j ++) {
                        if(j&1) {
                            connect<> (orth[j][i].out[0], orth[j+1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j-1][i+1].in[1]);
                            location<buffer>(orth[j+1][i+1].in[0]) = {bank(orthInfo[j][i].bank_col[0][0], orthInfo[j][i].bank_row[0][0], orthInfo[j][i].bank_id[0][0]),
                                                                      bank(orthInfo[j][i].bank_col[0][1], orthInfo[j][i].bank_row[0][1], orthInfo[j][i].bank_id[0][1])};
                            location<buffer>(orth[j-1][i+1].in[1]) = {bank(orthInfo[j][i].bank_col[1][0], orthInfo[j][i].bank_row[1][0], orthInfo[j][i].bank_id[1][0]),
                                                                      bank(orthInfo[j][i].bank_col[1][1], orthInfo[j][i].bank_row[1][1], orthInfo[j][i].bank_id[1][1])};
                        }
                        else {
                            connect<> (orth[j][i].out[0], orth[j-1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j+1][i+1].in[1]);
                            location<buffer>(orth[j-1][i+1].in[0]) = {bank(orthInfo[j][i].bank_col[0][0], orthInfo[j][i].bank_row[0][0], orthInfo[j][i].bank_id[0][0]),
                                                                      bank(orthInfo[j][i].bank_col[0][1], orthInfo[j][i].bank_row[0][1], orthInfo[j][i].bank_id[0][1])};
                            location<buffer>(orth[j+1][i+1].in[1]) = {bank(orthInfo[j][i].bank_col[1][0], orthInfo[j][i].bank_row[1][0], orthInfo[j][i].bank_id[1][0]),
                                                                      bank(orthInfo[j][i].bank_col[1][1], orthInfo[j][i].bank_row[1][1], orthInfo[j][i].bank_id[1][1])};

                        }
                    }
                    connect<> (orth[COL-1][i].out[0], orth[COL-2][i+1].in[0]);
                    connect<> (orth[COL-1][i].out[1], orth[COL-1][i+1].in[1]);
                    location<buffer>(orth[COL-2][i+1].in[0]) = {bank(orthInfo[COL-1][i].bank_col[0][0], orthInfo[COL-1][i].bank_row[0][0], orthInfo[COL-1][i].bank_id[0][0]),
                                                                bank(orthInfo[COL-1][i].bank_col[0][1], orthInfo[COL-1][i].bank_row[0][1], orthInfo[COL-1][i].bank_id[0][1])};
                    location<buffer>(orth[COL-1][i+1].in[1]) = {bank(orthInfo[COL-1][i].bank_col[1][0], orthInfo[COL-1][i].bank_row[1][0], orthInfo[COL-1][i].bank_id[1][0]),
                                                                bank(orthInfo[COL-1][i].bank_col[1][1], orthInfo[COL-1][i].bank_row[1][1], orthInfo[COL-1][i].bank_id[1][1])};
                }
            }
        }
        else {
            connect<> (orth[0][ROW-1].out[0], out[1][0].in[0]);
            connect<> (orth[0][ROW-1].out[1], out[0][1].in[0]);
            for(int j = 1;j < COL-1;j ++) {
                if(j&1) {
                    connect<> (orth[j][ROW-1].out[0], out[j-1][0].in[0]);
                    connect<> (orth[j][ROW-1].out[1], out[j+1][1].in[0]);
                }
                else {
                    connect<> (orth[j][ROW-1].out[0], out[j+1][0].in[0]);
                    connect<> (orth[j][ROW-1].out[1], out[j-1][1].in[0]);
                }
            }
            connect<> (orth[COL-1][ROW-1].out[0], out[COL-2][0].in[0]);
            connect<> (orth[COL-1][ROW-1].out[1], out[COL-1][1].in[0]);

            for(int i = 0;i < ROW-1;i ++) {
                if(i&1) {
                    connect<> (orth[0][i].out[0], orth[1][i+1].in[0]);
                    connect<> (orth[0][i].out[1], orth[0][i+1].in[1]);
                    for(int j = 1;j < COL-1;j ++) {
                        if(j&1) {
                            connect<> (orth[j][i].out[0], orth[j-1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j+1][i+1].in[1]);
                        }
                        else {
                            connect<> (orth[j][i].out[0], orth[j+1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j-1][i+1].in[1]);
                        }
                    }
                    connect<> (orth[COL-1][i].out[0], orth[COL-2][i+1].in[0]);
                    connect<> (orth[COL-1][i].out[1], orth[COL-1][i+1].in[1]);
                }
                else {
                    connect<> (orth[0][i].out[0], orth[0][i+1].in[0]);
                    connect<> (orth[0][i].out[1], orth[1][i+1].in[1]);
                    for(int j = 1;j < COL-1;j ++) {
                        if(j&1) {
                            connect<> (orth[j][i].out[0], orth[j+1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j-1][i+1].in[1]);
                        }
                        else {
                            connect<> (orth[j][i].out[0], orth[j-1][i+1].in[0]);
                            connect<> (orth[j][i].out[1], orth[j+1][i+1].in[1]);
                        }
                    }
                    connect<> (orth[COL-1][i].out[0], orth[COL-1][i+1].in[0]);
                    connect<> (orth[COL-1][i].out[1], orth[COL-2][i+1].in[1]);
                }
            }
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
