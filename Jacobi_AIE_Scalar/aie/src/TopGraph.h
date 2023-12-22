#include "adf.h"
#include "ProcessArray/EvenArray.h"
#include <cstring>

const int ROW = 8;
const int COL = 4;

class TopGraph: public adf::graph {
private:
    EvenArray<COL, ROW> pl;

public:
    adf::input_plio in[COL*2];
    adf::output_plio out[COL*2];

    TopGraph() {
        for(int i = 0;i < COL*2;i ++) {
            std::string fileIn = "aie/data/in" + std::to_string(i) + ".txt";
            std::string fileOut = "aie/data/out" + std::to_string(i) + ".txt";
            in[i] = adf::input_plio::create(adf::plio_32_bits, fileIn);
            out[i] = adf::output_plio::create(adf::plio_32_bits, fileOut);
        }
        

        for(int i = 0;i < COL*2; i ++) {
            adf::connect<> (in[i].out[0], pl.in[i]);
            adf::connect<> (pl.out[i], out[i].in[0]); 
        }

    }

};