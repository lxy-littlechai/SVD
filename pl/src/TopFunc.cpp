
#include "Manager.hpp"

extern "C" void TopFunc(ap_uint<DDR_WIDTH>* in, ap_uint<DDR_WIDTH>* out,
                      axis_pkt_stream& toAIEstrm0, axis_pkt_stream& toAIEstrm1,
                      axis_pkt_stream& fromAIEstrm0, axis_pkt_stream& fromAIEstrm1) {
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = in depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = out depth = 8192
#pragma HLS INTERFACE s_axilite port = in bundle = control
#pragma HLS INTERFACE s_axilite port = out bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
#pragma HLS INTERFACE axis port = toAIEstrm0
#pragma HLS INTERFACE axis port = toAIEstrm1
#pragma HLS INTERFACE axis port = fromAIEstrm0
#pragma HLS INTERFACE axis port = fromAIEstrm1

  Manager<8, 2, 4> manager;
  manager.load4DDR(in);
  manager.generateOrder();
  manager.sweep(toAIEstrm0, toAIEstrm1, fromAIEstrm0, fromAIEstrm1);
  manager.store2DDR(out);                   


}