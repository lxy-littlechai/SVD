#include "adf.h"
#include <cstring>
#include "ProcessUnit/Normalize.h"
using namespace adf;

template<int MatrixROW, int GraphSize>
class NormGraph: public graph {
private:
  kernel norm[GraphSize];

public:
  input_port in[GraphSize];
  output_port out[GraphSize];

  NormGraph() {
    for(int i = 0;i < GraphSize; i ++) {
      norm[i] = kernel::create(normalize<MatrixROW>);
      adf::source(norm[i]) = "aie/src/ProcessUnit/Normalize.cpp";
      runtime<ratio>(norm[i]) = 0.9;
    }

    for(int i = 0;i < GraphSize;i ++) {
      connect<> (in[i], norm[i].in[0]);
      connect<> (norm[i].out[0], out[i]);
    }
  }

};