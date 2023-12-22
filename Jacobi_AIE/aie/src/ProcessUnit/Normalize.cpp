#pragma once

#include "Normalize.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>

//in0 -> B; ou0 -> Sigma & U & V in order
template<int ROW>
void normalize(input_stream<float>* __restrict in, 
                output_stream<float>* __restrict out) {
    
    float A[ROW];
    for(int i = 0;i < ROW;i ++) {
        A[i] = readincr(in);
    }
    float tmp = 0;
    for(int i = 0;i < ROW;i ++) {
        tmp += A[i]*A[i];
    }
    float sigma = aie::sqrt(tmp);
    for(int i = 0;i < ROW;i ++) {
        writeincr(out, A[i]/sigma);
    }
}