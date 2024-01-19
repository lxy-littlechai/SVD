#include "adf.h"
#include "ProcessArray/EvenArray.h"
#include "ProcessLevel/NormalizeLevel.h"
#include <cstring>
using namespace adf;

template<int ROW, int MATRIX_COL, int COL>
class TopGraph: public adf::graph {
private:
    NormalizeLevel<MATRIX_COL, ROW> normLevel;
    EvenArray<COL, ROW> evenArray;

public:
    input_plio in[MATRIX_COL];
    output_plio out[MATRIX_COL];

    TopGraph() {
        for(int i = 0;i < MATRIX_COL;i ++) {
            std::string fileIn = "aie/data/in" + std::to_string(i) + ".txt";
            std::string fileOut = "aie/data/out" + std::to_string(i) + ".txt";
            std::string plIn = "in_" + std::to_string(i);
            std::string plout = "out_" + std::to_string(i);
            in[i] = input_plio::create(plIn, plio_32_bits, fileIn);
            out[i] = output_plio::create(plout, plio_32_bits, fileOut);
        }
        

        for(int i = 0;i < MATRIX_COL; i ++) {
            connect<> (in[i].out[0], evenArray.in[i]);
            //adf::connect<> (evenArray.out[i], out[i].in[0]); 
            connect<> (evenArray.out[i], normLevel.in[i]); 
            connect<> (normLevel.out[i], out[i].in[0]);
        }

    }

};

template<int ROW, int MATRIX_COL, int COL>
class SweepGraph {
private:
    kernel orth[COL][COL];

public:
    input_plio in[MATRIX_COL];
    output_plio out[MATRIX_COL];

    SweepGraph() {
        for(int i = 0;i < MATRIX_COL;i ++) {
            std::string fileIn = "aie/data/in" + std::to_string(i) + ".txt";
            std::string fileOut = "aie/data/out" + std::to_string(i) + ".txt";
            std::string plIn = "in_" + std::to_string(i);
            std::string plout = "out_" + std::to_string(i);
            in[i] = input_plio::create(plIn, plio_32_bits, fileIn);
            out[i] = output_plio::create(plout, plio_32_bits, fileOut);
        }

        const int VCK190_COL = 5;
        int start_col = 0, current_row = 0;
        for(int i = 0;i < COL;i ++) {
            for(int j = 0;j < COL;j ++) {
                orth[i][j] = adf::kernel::create(orthogonalize<ROW>);
                adf::source(k) = "aie/src/ProcessUnit/Orthogonalize.cpp";
                runtime<ratio>(orth[i][j]) = 0.9;
                location<kernel>(orth[i][j]) = tile(start_col+j, current_row);
                
            }
            current_row ++;
            if(current_row == VCK190_COL) {
                current_row %= VCK190_COL;
                start_col += COL;
            }
        }

        for(int i = 0;i < MATRIX_COL;i += 2) {
            connect<> (in[i].out[0], orth[0][i/2].in[0]);
            connect<> (in[i+1].out[0], orth[0][i/2].in[1]);
            connect<> (orth[COL-1][i/2].out[0], out[i].out[0]);
            connect<> (orth[COL-1][i/2].out[1], out[i].out[1]);
        }
    }

    
}