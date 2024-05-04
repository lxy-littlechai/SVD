#pragma once

#include "Orthogonalize.h"
#include "aie/src/Config.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>
#include "aie_api/utils.hpp"
#include "aie_api/adf/stream.hpp"
#include <vector>
#include <cstdio>

// to mpdify
float sign(float x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
}

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<ROW>>& in0, 
                   adf::input_buffer<float, adf::extents<ROW>>& in1, 
                   adf::output_buffer<float, adf::extents<ROW>>& out0, 
                   adf::output_buffer<float, adf::extents<ROW>>& out1) {
    auto ApIter = aie::begin_vector<w>(in0);
    auto AqIter = aie::begin_vector<w>(in1);
    auto BpIter = aie::begin_vector<w>(out0);
    auto BqIter = aie::begin_vector<w>(out1);
    aie::accum<accfloat, w> acc0 = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc1 = aie::zeros<accfloat, w>();
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        auto vec1 = *ApIter ++;
        auto vec2 = *AqIter ++;
        acc0 = aie::mac_square(acc0, vec1);
        acc0 = aie::msc_square(acc0, vec2);
        acc1 = aie::mac(acc1, vec1, vec2);         
    }
    float fm = reduce_add(acc1.to_vector<float>());
    ApIter = aie::begin_vector<w>(in0);
    AqIter = aie::begin_vector<w>(in1);
    aie::vector<float, w> tmp0_1, tmp0_2, tmp0_3, tmp1_1, tmp1_2, tmp1_3; 

    if(fm < 0.000001) {
        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,)
        {

                *BpIter ++ = *ApIter ++;
                *BqIter ++ = *AqIter ++;

        }
    }
    else {
        float tau = aie::div(reduce_add(acc0.to_vector<float>()), 2.0*fm);
        float t = aie::div(sign(tau), aie::add(aie::abs(tau), aie::sqrt(aie::mul(tau, tau) + 1)));
        float c = aie::div(1, aie::sqrt(t * t + 1));
        float s = aie::mul(t, c);

        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,)
        {
            auto vec1 = *ApIter ++;
            auto vec2 = *AqIter ++;
            tmp0_1 = aie::mul(vec1, c);
            tmp0_2 = aie::mul(vec2, s);
            tmp0_3 = aie::add(tmp0_1, tmp0_2);
            *BpIter ++ = tmp0_3;

            tmp1_1 = aie::mul(vec1, aie::neg(s));
            tmp1_2 = aie::mul(vec2, c);
            tmp1_3 = aie::add(tmp1_1, tmp1_2);
            *BqIter ++ = tmp1_3;
        //Vp[i] = Vp[i] * c + Vq[i] * s;
        //Vq[i] = -Vp[i] * c + Vq[i] * s;
        }
    }    
    
   
                                            

}