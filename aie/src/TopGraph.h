#include "adf.h"
#include "ProcessGraph/SweepGraph.hpp"
#include "ProcessGraph/NormGraph.hpp"
#include <cstring>
using namespace adf;

template<int MatrixROW, int GraphSize>
class TopSweepGraph: public graph {
private:
    SweepGraph<MatrixROW, GraphSize> sweepGraph;
public:
    input_plio in[2];
    output_plio out[2];
    pktsplit<GraphSize> sp[2];
    pktmerge<GraphSize> mg[2];

    TopSweepGraph(int graphID) {
        std::string ID = std::to_string(graphID);
        for(int j = 0;j < 2;j ++) {
            std::string fileIn = "aie/data/" + ID + "_sweep_in_" + std::to_string(j) + ".txt";
            std::string fileOut = "aie/data/" + ID + "_sweep_out_" + std::to_string(j) +".txt";
            std::string plIn = ID + "_sweep_in_" + std::to_string(j);
            std::string plout = ID + "_sweep_out_" + std::to_string(j);
            in[j] = input_plio::create(plIn, plio_128_bits, fileIn);
            out[j] = output_plio::create(plout, plio_128_bits, fileOut);
            sp[j] = pktsplit<GraphSize>::create();
            mg[j] = pktmerge<GraphSize>::create();
        }
        
        for(int j = 0;j < 2;j ++) {
            connect<> (in[j].out[0], sp[j].in[0]);
            connect<> (mg[j].out[0], out[j].in[0]);
        }
        for(int i = 0;i < GraphSize;i ++) {
            for(int j = 0;j < 2;j ++) {
                connect<> (sp[j].out[i], sweepGraph.in[i][j]);
                connect<> (sweepGraph.out[i][j], mg[j].in[i]);
            }
            
        }


    }
};

template<int MatrixROW, int GraphSize>
class TopNormGraph: public graph {
private:
    NormGraph<MatrixROW, GraphSize> normGraph;
public:
    input_plio in;
    output_plio out;
    pktsplit<GraphSize> sp;
    pktmerge<GraphSize> mg;

    TopNormGraph(int graphID) {
        std::string ID = std::to_string(graphID);
        std::string fileIn = "aie/data/" + ID + "_norm_in" + ".txt";
        std::string fileOut = "aie/data/" + ID + "_norm_out" +".txt";
        std::string plIn = ID + "_norm_in";
        std::string plout = ID + "_norm_out";
        in = input_plio::create(plIn, plio_128_bits, fileIn);
        out = output_plio::create(plout, plio_128_bits, fileOut);
        sp = pktsplit<GraphSize>::create();
        mg = pktmerge<GraphSize>::create();
        
        connect<> (in.out[0], sp.in[0]);
        connect<> (mg.out[0], out.in[0]);
        
        for(int i = 0;i < GraphSize;i ++) {
            connect<> (sp.out[i], normGraph.in[i]);
            connect<> (normGraph.out[i], mg.in[i]);
            
        }


    }
};


