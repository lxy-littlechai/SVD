#include "adf.h"
#include "aie_api/aie.hpp"
#include <aie_api/aie_adf.hpp>
#include "aie_api/utils.hpp"

template<int ROW>
void normalize(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in, 
                adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out);

template<int ROW>
void normTop(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in, 
            input_stream<float>* in_param,
            adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out,
            output_stream<float>* out_acc);

template<int ROW>
void normMid(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in, 
            input_stream<float>* in_param,
            input_stream<float>* in_acc,
            adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out,
            output_stream<float>* out_acc);

template<int ROW>
void normBottom(adf::input_buffer<float, adf::extents<1+ROW>>& __restrict in, 
            input_stream<float>* in_acc,
            adf::output_buffer<float, adf::extents<1+ROW>>& __restrict out,
            output_stream<float>* out_param);