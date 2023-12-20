#pragma once

#include "Transfer.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>


template<int ROW>
void transfer(input_stream<float> * __restrict in, 
                   output_stream<float> * __restrict out) {

  for(int i = 0;i < ROW; i ++) {
    writeincr(out, readincr(in));
  }
}

