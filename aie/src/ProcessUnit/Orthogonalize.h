#include "adf.h"

template<int ROW>
void orthogonalize(adf::input_buffer<float, adf::extents<ROW>>& in0, 
                   adf::input_buffer<float, adf::extents<ROW>>& in1, 
                   adf::output_buffer<float, adf::extents<ROW>>& out0, 
                   adf::output_buffer<float, adf::extents<ROW>>& out1);

