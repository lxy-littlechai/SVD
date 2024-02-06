
#include "Manager.hpp"

extern "C" void TopFunc(ap_uint<DDR_WIDTH>* in, ap_uint<DDR_WIDTH>* out,
                      axis_pkt_stream& toSweepstrm0, axis_pkt_stream& toSweepstrm1,
                      axis_pkt_stream& fromSweepstrm0, axis_pkt_stream& fromSweepstrm1,
                      axis_pkt_stream& toNormstrm0, axis_pkt_stream& fromNormstrm0) {
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = in depth = 8192
#pragma HLS INTERFACE m_axi offset = slave latency = 64 num_write_outstanding = 16 num_read_outstanding = \
    16 max_write_burst_length = 64 max_read_burst_length = 64 bundle = gmem0 port = out depth = 8192
#pragma HLS INTERFACE s_axilite port = in bundle = control
#pragma HLS INTERFACE s_axilite port = out bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control
#pragma HLS INTERFACE axis port = toSweepstrm0
#pragma HLS INTERFACE axis port = toSweepstrm1
#pragma HLS INTERFACE axis port = fromSweepstrm0
#pragma HLS INTERFACE axis port = fromSweepstrm1
#pragma HLS INTERFACE axis port = toNormstrm0
#pragma HLS INTERFACE axis port = fromNormstrm0

  Manager<8, 2, 4> manager;
  manager.load4DDR(in);
  manager.sweep(toSweepstrm0, toSweepstrm1, 
          fromSweepstrm0, fromSweepstrm1);
  manager.norm(toNormstrm0, fromNormstrm0);
  manager.store2DDR(out);                


}