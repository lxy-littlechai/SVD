#include "Orthogonalize.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>
#include <vector>

float sign(double x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
}

template<int ROW>
void orthogonalize(input_stream<float> * __restrict in0, 
                   input_stream<float> * __restrict in1, 
                   output_stream<float> * __restrict out0, 
                   output_stream<float> * __restrict out1) {
    const int VECSIZE = 4;
    
    float Ap[ROW], Aq[ROW], Bp[ROW], Bq[ROW];

    for(int i = 0;i < ROW;i ++) {
        Ap[i] = readincr(in0);
        Aq[i] = readincr(in1);
    }

    float tmp1 = 0;
    float tmp2 = 0;
    for(int i = 0;i < ROW;i ++) 
    //chess_prepare_for_pipelining
    {
        tmp1 += Ap[i] * Ap[i] - Aq[i] * Aq[i];
        tmp2 += 2 * Ap[i] * Aq[i];
                
    }     
   
    auto tau = tmp1 / tmp2;;
    auto t = sign(tau) / (aie::abs(tau) + aie::sqrt(1 + tau * tau));
    auto c = 1 / (aie::sqrt(1 + t * t));
    auto s = t * c;
    for (int i = 0; i < ROW; i++) {
        writeincr(out0, Ap[i] * c + Aq[i] * s);
        writeincr(out1, -Ap[i] * s + Aq[i] * c);
    //Vp[i] = Vp[i] * c + Vq[i] * s;
    //Vq[i] = -Vp[i] * c + Vq[i] * s;
    }
   
                                            

}