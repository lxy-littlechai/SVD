#include "adf.h"

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<ROW>>& __restrict in0, 
                   adf::input_buffer<float, adf::extents<ROW>>& __restrict in1, 
                   adf::output_buffer<float, adf::extents<ROW>>& __restrict out0, 
                   adf::output_buffer<float, adf::extents<ROW>>& __restrict out1);

