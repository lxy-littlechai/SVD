#include "aie/src/Config.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>
#include "aie_api/utils.hpp"
#include "aie_api/adf/stream.hpp"
#include <vector>
#include <cstdio>
#include "stream.h"

template<int ROW>
void orthogonalize(input_pktstream* in0, 
                   input_pktstream* in1, 
                   output_pktstream* out0, 
                   output_pktstream* out1) {
    for(int i = 0;i < ROW;i ++) {
      writeincr(out0, readincr(in0));
      writeincr(out1, readincr(in1));
    }                

}