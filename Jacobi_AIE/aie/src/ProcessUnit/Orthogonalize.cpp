#include "Orthogonalize.h"
#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>
#include <vector>

float sign(double x) {
    if(x > 0) return x;
    else if(x == 0) return 0;
    else return -1;
}

template<int ROW>
void orthogonalize(input_stream<float> * __restrict Ap, 
                   input_stream<float> * __restrict Aq, 
                   output_stream<float> * __restrict Bp, 
                   output_stream<float> * __restrict Bq) {
    const int VECSIZE = 4;
    
   // const int ROW = 4;

    std::vector<float> tmpAp;
    std::vector<float> tmpAq; 

    aie::vector<float, VECSIZE> Ap_vec, Aq_vec;
    aie::accum<accfloat,VECSIZE> acc_top = aie::zeros<accfloat, VECSIZE>();
    aie::accum<accfloat,VECSIZE> acc_pq = aie::zeros<accfloat, VECSIZE>();

    for(int i = 0;i < ROW/VECSIZE;i ++) 
    //chess_prepare_for_pipelining
    {
        Ap_vec = readincr_v<VECSIZE>(Ap);
        Aq_vec = readincr_v<VECSIZE>(Aq);
        tmpAp.emplace_back(Ap_vec.vector_cast<std::vector<float>>());
        tmpAq.emplace_back(Aq_vec.vector_cast<std::vector<float>>());
        acc_top = aie::mac(acc_top, Ap_vec, Ap_vec);
        acc_top = aie::msc(acc_top, Aq_vec, Aq_vec);
        acc_pq = aie::mac(acc_pq, Ap_vec, Aq_vec);

        writeincr(Bp, Ap_vec);
        writeincr(Bq, Aq_vec);
                
    }     
    auto top = aie::reduce_add(acc_top.to_vector<float>(0));   
    auto Apq = 2*aie::reduce_add(acc_pq.to_vector<float>(0));   
    auto tau = top/Apq;
    auto t = sign(tau) / (aie::abs(tau) + aie::sqrt(1 + tau * tau));
    auto c = 1 / (aie::sqrt(1 + t * t));
    auto s = t * c;
   
                                            

}