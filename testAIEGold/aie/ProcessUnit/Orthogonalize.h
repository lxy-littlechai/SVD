#include "adf.h"

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<1+ROW>>& in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& in1, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& out1);
template<int ROW>
void orthTop(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in1, 
                   input_stream<float>* in_params,
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out1,
                   output_stream<float>* out_acc);
template<int ROW>
void orthMid(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in1, 
                   input_stream<float>* in_acc,
                   input_stream<float>* in_params,
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out1,
                   output_stream<float>* out_acc);
template<int ROW>
void orthBottom(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in1, 
                   input_stream<float>* in_acc,
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out1,
                   output_stream<float>* out_params);