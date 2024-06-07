#pragma once

#include "Orthogonalize.h"
#include "aie/Config.h"
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
void orthogonalize(adf::input_buffer<float, adf::extents<1+ROW>>& in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& in1, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& out1) {
    auto ApIter = aie::begin_vector<w>(in0);
    auto AqIter = aie::begin_vector<w>(in1);
    auto BpIter = aie::begin_vector<w>(out0);
    auto BqIter = aie::begin_vector<w>(out1);
    aie::accum<accfloat, w> acc_i = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc_j = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc_ij = aie::zeros<accfloat, w>();

    auto vec1 = *ApIter ++;
    auto vec2 = *AqIter ++;
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        acc_i = aie::mac_square(acc_i, vec1);
        acc_j = aie::mac_square(acc_j, vec2);
        acc_ij = aie::mac(acc_ij, vec1, vec2);    
        vec1 = *ApIter ++;
        vec2 = *AqIter ++;     
    }
    float A_ii = reduce_add(acc_i.to_vector<float>());
    float A_jj = reduce_add(acc_j.to_vector<float>());
    float A_ij = reduce_add(acc_ij.to_vector<float>());
    float conv = aie::abs(A_ij)/aie::sqrt(A_ii*A_jj);

    ApIter = aie::begin_vector<w>(in0);
    AqIter = aie::begin_vector<w>(in1);
    aie::vector<float, w> tmp0_1, tmp0_2, tmp0_3, tmp1_1, tmp1_2, tmp1_3; 

    if(conv == 0) {
        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,)
        {

                *BpIter ++ = *ApIter ++;
                *BqIter ++ = *AqIter ++;

        }
    }
    else {

        float tau = aie::div(A_ii-A_jj, aie::mul((float)2.0, A_ij));
        float t = aie::div(sign(tau), aie::add(aie::abs(tau), aie::sqrt(aie::mul(tau, tau) + 1)));
        float c = aie::div(1, aie::sqrt(t * t + 1));
        float s = aie::mul(t, c);

        vec1 = *ApIter ++;
        vec2 = *AqIter ++;

        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,)
        {
            tmp0_1 = aie::mul(vec1, c);
            tmp0_2 = aie::mul(vec2, s);
            tmp0_3 = aie::add(tmp0_1, tmp0_2);
            *BpIter ++ = tmp0_3;

            tmp1_1 = aie::mul(vec1, aie::neg(s));
            tmp1_2 = aie::mul(vec2, c);
            tmp1_3 = aie::add(tmp1_1, tmp1_2);
            *BqIter ++ = tmp1_3;

            vec1 = *ApIter ++;
            vec2 = *AqIter ++;
        //Vp[i] = Vp[i] * c + Vq[i] * s;
        //Vq[i] = -Vp[i] * c + Vq[i] * s;
        }
    }    

    float* lastIter0 = out0.data();
    float* lastIter1 = out1.data();
    //printf("%f %f %f\n", in0.data()[ROW], in1.data()[ROW], conv);
    lastIter0[ROW] = aie::max(in0.data()[ROW], conv);
    lastIter1[ROW] = aie::max(in1.data()[ROW], conv);
    
}