#pragma once

#include "Normalize.h"
#include "aie/src/Config.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>

//in0 -> B; ou0 -> Sigma & U & V in order
template<int ROW>
void normalize(input_stream<float>* __restrict in, 
                output_stream<float>* __restrict out) {
    
    aie::vector<float, w> vec;
    aie::accum<accfloat, w> acc = aie::zeros<accfloat, w>();
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        vec = readincr_v<w>(in);
        acc = aie::mac_square(acc, vec);
    }
    float tmp = reduce_add(acc.to_vector<float>());
    float sigma = aie::sqrt(tmp);
    printf("sigma: %f\n", sigma);
    writeincr(out, sigma);

}