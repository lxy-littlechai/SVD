#include "adf.h"
#include "ProcessGraph/RingGraph.hpp"
#include <cstring>
#include <string>
using namespace adf;

template<int MatrixROW, int SUB_BLOCK_SIZE, int START_COL, int START_ROW, int DIRECTION>
class TopNormGraph: public graph {
private:
    RingNormGraph<MatrixROW, SUB_BLOCK_SIZE, START_COL, START_ROW, DIRECTION> normGraph;
public:
    input_plio in[1];
    output_plio out[1];
    pktsplit<SUB_BLOCK_SIZE> sp[1];
    pktmerge<SUB_BLOCK_SIZE> mg[1];

    TopNormGraph(std::string graphID) {
        for(int j = 0;j < 1;j ++) {
            std::string fileIn = "aie/data/" + graphID + "_norm_in_" + std::to_string(j) + ".txt";
            std::string fileOut = "aie/data/" + graphID + "_norm_out_" + std::to_string(j) +".txt";
            std::string plIn = graphID + "_norm_in_" + std::to_string(j);
            std::string plout = graphID + "_norm_out_" + std::to_string(j);
            in[j] = input_plio::create(plIn, plio_128_bits, fileIn);
            out[j] = output_plio::create(plout, plio_128_bits, fileOut);
            sp[j] = pktsplit<SUB_BLOCK_SIZE>::create();
            mg[j] = pktmerge<SUB_BLOCK_SIZE>::create();
        }
        
        for(int j = 0;j < 1;j ++) {
            connect<> (in[j].out[0], sp[j].in[0]);
            connect<> (mg[j].out[0], out[j].in[0]);
        }
        for(int i = 0;i < SUB_BLOCK_SIZE;i ++) {
            for(int j = 0;j < 1;j ++) {
                connect<> (sp[j].out[i], normGraph.in[i]);
                connect<> (normGraph.out[i], mg[j].in[i]);
            }
            
        }


    }
};


template<int MatrixROW, int GraphSize, int IO_NUM, int SUB_BLOCK_SIZE, int START_COL, int START_ROW, int DIRECTION, int CascadeLevel>
class TopSweepGraph: public graph {
private:
    RingSweepGraph<MatrixROW, GraphSize, START_COL, START_ROW, DIRECTION, CascadeLevel> sweepGraph;
public:
    input_plio in[CascadeLevel][IO_NUM][2];
    output_plio out[CascadeLevel][IO_NUM][2];
    pktsplit<SUB_BLOCK_SIZE> sp[CascadeLevel][IO_NUM][2];
    pktmerge<SUB_BLOCK_SIZE> mg[CascadeLevel][IO_NUM][2];

    TopSweepGraph(std::string graphID) {
    // PL name: graphID_sweep_in_j_k, graphID_sweep_out_j_k, j is the column index, k is the left or right index
        for(int i = 0;i < CascadeLevel;i ++) {
            for(int j = 0;j < IO_NUM;j ++) {
                for(int k = 0;k < 2;k ++) {
                    std::string type = k == 0 ? "L" : "R";
                    std::string fileIn = "aie/data/" + graphID + "_sweep_in.txt";
                    std::string fileOut = "aie/data/" + graphID + "_sweep_out_.txt";
                    std::string plIn = graphID + "_sweep_in_" + type + "_cas" + std::to_string(i) + "_io" + std::to_string(j);
                    std::string plout = graphID + "_sweep_out_" + type + "_cas" + std::to_string(i) + "_io" + std::to_string(j);
                    in[i][j][k] = input_plio::create(plIn, plio_128_bits, fileIn);
                    out[i][j][k] = output_plio::create(plout, plio_128_bits, fileOut);
                    sp[i][j][k] = pktsplit<SUB_BLOCK_SIZE>::create();
                    mg[i][j][k] = pktmerge<SUB_BLOCK_SIZE>::create();
                }
            }
        }

        for(int k = 0;k < CascadeLevel;k ++) {
            for(int i = 0;i < 2;i ++) {
                for(int j = 0;j < IO_NUM;j ++) {
                    connect<> (in[k][j][i].out[0], sp[k][j][i].in[0]);
                    connect<> (mg[k][j][i].out[0], out[k][j][i].in[0]);
                }
            }
        }

        for(int k = 0;k < CascadeLevel;k ++) {
            for(int i = 0;i < 2;i ++) {
                for(int j = 0;j < IO_NUM;j ++) {
                    for(int sz = 0;sz < SUB_BLOCK_SIZE;sz ++) {
                        connect<> (sp[k][j][i].out[sz], sweepGraph.in[k][j*SUB_BLOCK_SIZE+sz][i]);
                        connect<> (sweepGraph.out[k][j*SUB_BLOCK_SIZE+sz][i], mg[k][j][i].in[sz]);
                    }
                }
            }
        }


    }
};