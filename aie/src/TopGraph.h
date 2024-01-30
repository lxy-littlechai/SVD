#include "adf.h"
#include "ProcessGraph/SweepGraph.hpp"
#include "ProcessGraph/NormGraph.hpp"
#include <cstring>
using namespace adf;

template<int MatrixROW, int GraphSize>
class TopGraph: public graph {
private:
    SweepGraph<MatrixROW, GraphSize> sweepGraph;
    NormGraph<MatrixROW, 2*GraphSize> normGraph;
public:
    input_plio in[GraphSize][2];
    output_plio out[GraphSize][2];

    TopGraph(int graphID) {
        std::string ID = std::to_string(graphID);
        for(int i = 0;i < GraphSize;i ++) {
            for(int j = 0;j < 2;j ++) {
                std::string fileIn = "aie/data/" + std::to_string(graphID) + "in" +  std::to_string(i) + "_" + std::to_string(j) + ".txt";
                std::string fileOut = "aie/data/" + std::to_string(graphID) + "out" + std::to_string(i) + "_" + std::to_string(j) +".txt";
                std::string plIn = ID + "in_" + std::to_string(i) + "_" + std::to_string(j);
                std::string plout = ID + "out_" + std::to_string(i) + "_" + std::to_string(j);
                in[i][j] = input_plio::create(plIn, plio_32_bits, fileIn);
                out[i][j] = output_plio::create(plout, plio_32_bits, fileOut);
            }
        }

        for(int i = 0;i < GraphSize;i ++) {
            for(int j = 0;j < 2;j ++) {
                connect<> (in[i][j].out[0], sweepGraph.in[i][j]);
                connect<> (sweepGraph.out[i][j], normGraph.in[i*2 + j]);
                connect<> (normGraph.out[i*2 + j], out[i][j].in[0]);
            }
            
        }


    }
};


