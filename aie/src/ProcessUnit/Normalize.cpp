#pragma once

#include "Normalize.h"
#include "aie/src/Config.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>

//in0 -> B; ou0 -> Sigma & U & V in order
template<int ROW>
void normalize(adf::input_buffer<float, adf::extents<ROW>>& __restrict in, 
                adf::output_buffer<float, adf::extents<4+ROW>>& __restrict out) {
    auto inIter = aie::begin_vector<w>(in);
    aie::vector<float, w> vec;
    aie::accum<accfloat, w> acc = aie::zeros<accfloat, w>();
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        vec = *inIter ++;
        acc = aie::mac_square(acc, vec);
    }
    float tmp = reduce_add(acc.to_vector<float>());
    float sigma = aie::sqrt(tmp);

    inIter = aie::begin_vector<w>(in);
    auto outIter = aie::begin_vector<w>(out);
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        vec = *inIter ++;
        vec = aie::div(vec, sigma);
        *outIter ++= vec;
    }
    aie::vector<float, w> sigmaVec;
    sigmaVec.set(sigma,0);
    *outIter = sigmaVec;

}