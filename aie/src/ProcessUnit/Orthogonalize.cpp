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

float sign(float x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
}

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<ROW>>& __restrict in1, 
                   adf::output_buffer<float, adf::extents<ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<ROW>>& __restrict out1) {
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
    aie::vector<float, w> tmp1 = aie::zeros<float, w>();
    aie::vector<float, w> tmp2 = aie::zeros<float, w>();
    aie::vector<float, w> tmp3 = aie::zeros<float, w>();
    if(fm < 0.00001) {
        for (int i = 0; i < ROW/w; i++) 
            chess_prepare_for_pipelining
            chess_loop_range(ROW/w,){

                *BpIter ++ = *ApIter ++;
                *BqIter ++ = *AqIter ++;
            //Vp[i] = Vp[i] * c + Vq[i] * s;
            //Vq[i] = -Vp[i] * c + Vq[i] * s;
        }
    }
    else {
        float tau = aie::div(reduce_add(acc0.to_vector<float>()), 2*fm);
        float t = aie::div(sign(tau), (aie::abs(tau) + aie::sqrt(1 + aie::mul(tau, tau))));
        float c = aie::div(1, (aie::sqrt(1 + t * t)));
        float s = aie::mul(t, c);

        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,)
        {
            auto vec1 = *ApIter ++;
            auto vec2 = *AqIter ++;
            tmp1 = aie::mul(vec1, c);
            tmp2 = aie::mul(vec2, s);
            tmp3 = aie::add(tmp1, tmp2);
            *BpIter ++ = tmp3;

            tmp1 = aie::mul(vec1, aie::neg(s));
            tmp2 = aie::mul(vec2, c);
            tmp3 = aie::add(tmp1, tmp2);
            *BqIter ++ = tmp3;
        //Vp[i] = Vp[i] * c + Vq[i] * s;
        //Vq[i] = -Vp[i] * c + Vq[i] * s;
        }
    }    
    
   
                                            

}