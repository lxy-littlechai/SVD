#include "adf.h"

template<int ROW>
void orthogonalize(input_stream<float> * __restrict Ap, 
                   input_stream<float> * __restrict Aq, 
                   output_stream<float> * __restrict Bp, 
                   output_stream<float> * __restrict Bq);

