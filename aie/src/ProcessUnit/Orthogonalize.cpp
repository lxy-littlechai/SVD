#include "Orthogonalize.h"
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
    const int w = 8;
    aie::vector<float, w> Ap[ROW/w];
    aie::vector<float, w> Aq[ROW/w];
    aie::vector<float, w> vec1 = aie::zeros<float, w>();
    aie::vector<float, w> vec2 = aie::zeros<float, w>();
    aie::vector<float, w> vec3 = aie::zeros<float, w>();
    aie::accum<accfloat, w> acc0 = aie::zeros<accfloat, w>();
    aie::accum<accfloat, w> acc1 = aie::zeros<accfloat, w>();
    for(int i = 0;i < ROW/w;i ++) 
    //chess_prepare_for_pipelining
    //chess_loop_range(ROW/w,)
    {
        vec1 = readincr_v<w>(in0);
        vec2 = readincr_v<w>(in1);
        Ap[i].insert(0, vec1);
        Aq[i].insert(0, vec2);
        acc0 = aie::mac_square(acc0, vec1);
        acc0 = aie::msc_square(acc0, vec2);
        acc1 = aie::mac(acc1, vec1, vec2);         
    }     
    for(int i = 0;i < ROW/w;i ++) {
        aie::print(Ap[i], true, "Ap = ");
    }
    for(int i = 0;i < ROW/w;i ++) {
        aie::print(Aq[i], true, "Aq = ");
    }
    auto tau = aie::div(reduce_add(acc0.to_vector<float>()), 2*reduce_add(acc1.to_vector<float>()));
    auto t = aie::div(sign(tau), (aie::abs(tau) + aie::sqrt(aie::add(1, aie::mul(tau, tau)))));
    auto c = aie::div(1, (aie::sqrt(1 + t * t)));
    auto s = aie::mul(t, c);
    aie::vector<float, w> tmp1 = aie::zeros<float, w>();
    aie::vector<float, w> tmp2 = aie::zeros<float, w>();
    aie::vector<float, w> tmp3 = aie::zeros<float, w>();
    for (int i = 0; i < ROW/w; i++) 
    //chess_prepare_for_pipelining
    //chess_loop_range(ROW/w,)
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