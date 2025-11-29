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
inline float sign(float x) {
    if(x > 0) return 1;
    else if(x == 0) return 0;
    else return -1;
}

template<int ROW>
void orthMid(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in1, 
                   input_pktstream* in_acc,
                   input_pktstream* in_params,
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out1,
                   output_pktstream* out_acc) {
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
        
        acc_i = aie::mac(acc_i, vec1, vec1);
        acc_ij = aie::mac(acc_ij, vec1, vec2);
        acc_j = aie::mac(acc_j, vec2, vec2);
            
        vec1 = *ApIter ++;
        vec2 = *AqIter ++;     
    }
    

    float A_ii = reduce_add(acc_i.to_vector<float>());
    float A_jj = reduce_add(acc_j.to_vector<float>());
    float A_ij = reduce_add(acc_ij.to_vector<float>());
    
    aie::vector<float, 4> acc_res(A_ii, A_jj, A_ij, 0);
    // aie::vector<float, 4> acc_vec = readincr_v<4>(in_acc);
    readincr(in_acc);
    int32 acc_A_ii = readincr(in_acc);
    float acc_A_ii_float = reinterpret_cast<float&>(acc_A_ii);
    int32 acc_A_jj = readincr(in_acc);
    float acc_A_jj_float = reinterpret_cast<float&>(acc_A_jj);
    int32 acc_A_ij = readincr(in_acc);
    float acc_A_ij_float = reinterpret_cast<float&>(acc_A_ij);
    aie::vector<float, 4> acc_vec(acc_A_ii_float, acc_A_jj_float, acc_A_ij_float, 0);
    acc_res = aie::add(acc_res, acc_vec);
    A_ii = acc_res[0];
    A_jj = acc_res[1];
    A_ij = acc_res[2];
    uint32 ID = getPacketid(out_acc, 0);
    writeHeader(out_acc, 0, ID);
    writeincr(out_acc, A_ii, 0);
    writeincr(out_acc, A_jj, 0);
    writeincr(out_acc, A_ij, 1);

    chess_separator_scheduler();
    // float conv;
    // if(A_ii*A_jj == 0) conv = 0;
    // else {
    //     conv = aie::div(aie::abs(A_ij), aie::sqrt(A_ii*A_jj));
    // }
    

    ApIter = aie::begin_vector<w>(in0);
    AqIter = aie::begin_vector<w>(in1);

    readincr(in_params);
    int32 c = readincr(in_params);
    float c_float = reinterpret_cast<float&>(c);
    int32 s = readincr(in_params);
    float s_float = reinterpret_cast<float&>(s);


        aie::vector<float, w> vec_s = aie::broadcast<float, w>(s_float);
        
        vec1 = *ApIter ++;
        aie::vector<float, w> vec_c = aie::broadcast<float, w>(c_float);
        
        aie::accum<accfloat, w> acc0_0 = aie::zeros<accfloat, w>();
        aie::accum<accfloat, w> acc0_1 = aie::zeros<accfloat, w>();

        for (int i = 0; i < ROW/w; i++) 
        chess_prepare_for_pipelining
        chess_loop_range(ROW/w,ROW/w)
        {
            auto acc_p = aie::mac(acc0_0, vec1, vec_c);
            auto acc_q = aie::msc(acc0_1, vec1, vec_s);
            vec2 = *AqIter ++;
            acc_p = aie::mac(acc_p, vec2, vec_s);
            auto out_p = acc_p.to_vector();
            *BpIter ++ = out_p;

            acc_q = aie::mac(acc_q, vec2, vec_c);
            auto out_q = acc_q.to_vector();
            *BqIter ++ = out_q;
            
            vec1 = *ApIter ++;
        }
        
    // }    

    float* lastIter0 = out0.data();
    float* lastIter1 = out1.data();
    //printf("%f %f %f\n", in0.data()[ROW], in1.data()[ROW], conv);
    lastIter0[ROW] = in0.data()[ROW];
    lastIter1[ROW] = in1.data()[ROW];
    
}

// template<int ROW>
// void orthMid(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in0, 
//                    adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in1, 
//                    input_stream<float>* in_acc,
//                    input_stream<float>* in_params,
//                    adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out0, 
//                    adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out1,
//                    output_stream<float>* out_acc) {
//     auto ApIter = aie::begin_vector<w>(in0);
//     auto AqIter = aie::begin_vector<w>(in1);
//     auto BpIter = aie::begin_vector<w>(out0);
//     auto BqIter = aie::begin_vector<w>(out1);
//     aie::accum<accfloat, w> acc_i = aie::zeros<accfloat, w>();
//     aie::accum<accfloat, w> acc_j = aie::zeros<accfloat, w>();
//     aie::accum<accfloat, w> acc_ij = aie::zeros<accfloat, w>();

//     auto vec1 = *ApIter ++;
//     auto vec2 = *AqIter ++;
    
//     for(int i = 0;i < ROW/w;i ++) 
//     chess_prepare_for_pipelining
//     chess_loop_range(ROW/w,)
//     {
        
//         acc_i = aie::mac(acc_i, vec1, vec1);
//         acc_ij = aie::mac(acc_ij, vec1, vec2);
//         acc_j = aie::mac(acc_j, vec2, vec2);
            
//         vec1 = *ApIter ++;
//         vec2 = *AqIter ++;     
//     }
    

//     float A_ii = reduce_add(acc_i.to_vector<float>());
//     float A_jj = reduce_add(acc_j.to_vector<float>());
//     float A_ij = reduce_add(acc_ij.to_vector<float>());
    
//     aie::vector<float, 4> acc_res(A_ii, A_jj, A_ij, 0);
//     aie::vector<float, 4> acc_vec = readincr_v<4>(in_acc);
//     acc_res = aie::add(acc_res, acc_vec);
//     writeincr(out_acc, acc_res);
//     chess_separator_scheduler();
//     // float conv;
//     // if(A_ii*A_jj == 0) conv = 0;
//     // else {
//     //     conv = aie::div(aie::abs(A_ij), aie::sqrt(A_ii*A_jj));
//     // }
    

//     ApIter = aie::begin_vector<w>(in0);
//     AqIter = aie::begin_vector<w>(in1);

//     float c = readincr(in_params);
//     float s = readincr(in_params);


//         aie::vector<float, w> vec_s = aie::broadcast<float, w>(s);
        
//         vec1 = *ApIter ++;
//         aie::vector<float, w> vec_c = aie::broadcast<float, w>(c);
        
//         aie::accum<accfloat, w> acc0_0 = aie::zeros<accfloat, w>();
//         aie::accum<accfloat, w> acc0_1 = aie::zeros<accfloat, w>();

//         for (int i = 0; i < ROW/w; i++) 
//         chess_prepare_for_pipelining
//         chess_loop_range(ROW/w,ROW/w)
//         {
//             auto acc_p = aie::mac(acc0_0, vec1, vec_c);
//             auto acc_q = aie::msc(acc0_1, vec1, vec_s);
//             vec2 = *AqIter ++;
//             acc_p = aie::mac(acc_p, vec2, vec_s);
//             auto out_p = acc_p.to_vector();
//             *BpIter ++ = out_p;

//             acc_q = aie::mac(acc_q, vec2, vec_c);
//             auto out_q = acc_q.to_vector();
//             *BqIter ++ = out_q;
            
//             vec1 = *ApIter ++;
//         }
        
//     // }    

//     float* lastIter0 = out0.data();
//     float* lastIter1 = out1.data();
//     //printf("%f %f %f\n", in0.data()[ROW], in1.data()[ROW], conv);
//     lastIter0[ROW] = in0.data()[ROW];
//     lastIter1[ROW] = in1.data()[ROW];
    
// }