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
void orthogonalize(input_stream<float> * __restrict in0, 
                   input_stream<float> * __restrict in1, 
                   output_stream<float> * __restrict out0, 
                   output_stream<float> * __restrict out1) {
    aie::vector<float, w> Ap[ROW/w];
    aie::vector<float, w> Aq[ROW/w];
    aie::vector<float, w> vec1 = aie::zeros<float, w>();
    aie::vector<float, w> vec2 = aie::zeros<float, w>();
    aie::vector<float, w> vec3 = aie::zeros<float, w>();
    aie::accum<accfloat, w> acc0 = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc1 = aie::zeros<accfloat, w>();
    for(int i = 0;i < ROW/w;i ++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        Ap[i] = readincr_v<w>(in0);
        Aq[i] = readincr_v<w>(in1);
        acc0 = aie::mac_square(acc0, Ap[i]);
        acc0 = aie::msc_square(acc0, Aq[i]);
        acc1 = aie::mac(acc1, Ap[i], Aq[i]);         
    }     
    float tau = aie::div(reduce_add(acc0.to_vector<float>()), 2*reduce_add(acc1.to_vector<float>()));
    float t = aie::div(sign(tau), (aie::abs(tau) + aie::sqrt(1 + aie::mul(tau, tau))));
    float c = aie::div(1, (aie::sqrt(1 + t * t)));
    float s = aie::mul(t, c);

    aie::vector<float, w> tmp1 = aie::zeros<float, w>();
    aie::vector<float, w> tmp2 = aie::zeros<float, w>();
    aie::vector<float, w> tmp3 = aie::zeros<float, w>();
    for (int i = 0; i < ROW/w; i++) 
    chess_prepare_for_pipelining
    chess_loop_range(ROW/w,)
    {
        vec1 = Ap[i].template extract<w>(0);
        vec2 = Aq[i].template extract<w>(0);
        tmp1 = aie::mul(vec1, c);
        tmp2 = aie::mul(vec2, s);
        tmp3 = aie::add(tmp1, tmp2);
        writeincr(out0, tmp3);

        tmp1 = aie::mul(vec1, aie::neg(s));
        tmp2 = aie::mul(vec2, c);
        tmp3 = aie::add(tmp1, tmp2);
        writeincr(out1, tmp3);
    //Vp[i] = Vp[i] * c + Vq[i] * s;
    //Vq[i] = -Vp[i] * c + Vq[i] * s;
    }
   
                                            

}