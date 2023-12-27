#include "adf.h"
#include "ProcessArray/EvenArray.h"
#include "ProcessLevel/NormalizeLevel.h"
#include <cstring>

const int ROW = 16;
const int MATRIX_COL = 4;
const int COL = (MATRIX_COL+1)/2;

class TopGraph: public adf::graph {
private:
    NormalizeLevel<MATRIX_COL, ROW> normLevel;
    EvenArray<COL, ROW> evenArray;

public:
    adf::input_plio in[MATRIX_COL];
    adf::output_plio out[MATRIX_COL];

    TopGraph() {
        for(int i = 0;i < MATRIX_COL;i ++) {
            std::string fileIn = "aie/data/in" + std::to_string(i) + ".txt";
            std::string fileOut = "aie/data/out" + std::to_string(i) + ".txt";
            in[i] = adf::input_plio::create(adf::plio_32_bits, fileIn);
            out[i] = adf::output_plio::create(adf::plio_32_bits, fileOut);
        }
        

        for(int i = 0;i < MATRIX_COL; i ++) {
            adf::connect<> (in[i].out[0], evenArray.in[i]);
            //adf::connect<> (evenArray.out[i], out[i].in[0]); 
            adf::connect<> (evenArray.out[i], normLevel.in[i]); 
            adf::connect<> (normLevel.out[i], out[i].in[0]);
        }

    }

};