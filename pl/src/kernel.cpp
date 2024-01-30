
#include "kernel.hpp"

exterm "C" void kernel(ap_uint<W>* in, ap_uint<W>* out,
                      axis_pkt_stream& toAIEstrm0, axis_pkt_stream& toAIEstrm1,
                      axis_pkt_stream& fromAIEstrm0, axis_pkt_stream& fromAIEstrm1) {
  Manager<8, 2, 4> manager;
  manager.loadFromDDR(in);
  manager.generateOrder();
  manager.send2AIE(toAIEstrm0, toAIEstrm1);
  manager.receive4AIE(fromAIEstrm0, fromAIEstrm1)                   


}