#include "adf.h"
#include "ProcessUnit/Orthogonalize.h"
#include <cstring>
using namespace adf;
class test:public graph {
private:
  kernel k[2];

public:
    input_plio in[2];
    output_plio out[2];

    test() {
        for(int j = 0;j < 2;j ++) {
            std::string fileIn = "aie/data/in"  + std::to_string(j) + ".txt";
            std::string fileOut = "aie/data/out" + std::to_string(j) +".txt";
            std::string plIn = "in_"  + std::to_string(j);
            std::string plout = "out_"  + std::to_string(j);
            in[j] = input_plio::create(plIn, plio_32_bits, fileIn);
            out[j] = output_plio::create(plout, plio_32_bits, fileOut);
        }

        for(int i = 0;i < 2;i ++) {
          k[i] = adf::kernel::create(orthogonalize<1024>);
          adf::source(k[i]) = "aie/src/ProcessUnit/Orthogonalize.cpp";
          runtime<ratio>(k[i]) = 1.0/2;
          single_buffer(k[i].in[0]);
          single_buffer(k[i].in[1]);
          single_buffer(k[i].out[0]);
          single_buffer(k[i].out[1]);
        }
        location<kernel>(k[0]) = tile(0, 0);
        location<kernel>(k[1]) = location<kernel>(k[0]);

        shared_buffer<float> A;
        location<buffer>(A) = location<kernel>(k[0]) + relative_offset({.col_offset = 0, .row_offset = 0});

        /*
        location<buffer>(k[0].in[0]) = {address(0,0,0x0000)};
        location<buffer>(k[0].in[1]) = {address(0,0,0x1000)};
        location<buffer>(k[0].out[0]) = {address(0,0,0x2000)};
        location<buffer>(k[0].out[1]) = {address(0,0,0x3000)};

        location<buffer>(k[1].in[0]) = {address(0,0,0x2000)};
        location<buffer>(k[1].in[1]) = {address(0,0,0x3000)};
        location<buffer>(k[1].out[0]) = {address(0,0,0x0000)};
        location<buffer>(k[1].out[1]) = {address(0,0,0x1000)};*/

        for(int i = 0;i < 2;i ++) {
          connect<> (in[i].out[0], k[0].in[i]);
          connect<> (k[0].out[i], k[1].in[i]);
          connect<> (k[1].out[i], out[i].in[0]);

        }
      
    }

};