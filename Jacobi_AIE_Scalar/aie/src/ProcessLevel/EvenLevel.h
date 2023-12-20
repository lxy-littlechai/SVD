#include "adf.h"
#include "aie/src/ProcessUnit/ProcessUnit.h"

template<int COL, int ROW>
class EvenLevel: public adf::graph {
public:
  adf::port<input> in[COL*2];
  adf::port<output> out[COL*2];
};

template<int COL, int ROW> 
class EvenLevel0: public EvenLevel<COL, ROW> {
private:
  OrthogonalizeUnit<ROW> orthUnit[COL];

public:
  EvenLevel0() {
    for(int i = 0, j = 0;i < COL*2; i += 2, j ++) {
      adf::connect<> (this->in[i], orthUnit[j].in[0]);
      adf::connect<> (this->in[i+1], orthUnit[j].in[1]);
      adf::connect<> (orthUnit[j].out[0], this->out[i]);
      adf::connect<> (orthUnit[j].out[1], this->out[i+1]);
    }
  }
};

template<int COL, int ROW> 
class EvenLevel1: public EvenLevel<COL, ROW> {
private:
  TransferUnit<ROW> transUnit[2];
  OrthogonalizeUnit<ROW> orthUnit[COL];

public:
  EvenLevel1() {
    adf::connect<> (this->in[0], transUnit[0].in[0]);
    adf::connect<> (transUnit[0].out[0], this->out[0]);
    adf::connect<> (this->in[COL*2-1], transUnit[1].in[0]);
    adf::connect<> (transUnit[1].out[0], this->out[COL*2-1]);
    for(int i = 1, j = 0;i < COL*2-1; i += 2, j ++) {
      adf::connect<> (this->in[i], orthUnit[j].in[0]);
      adf::connect<> (this->in[i+1], orthUnit[j].in[1]);
      adf::connect<> (orthUnit[j].out[0], this->out[i]);
      adf::connect<> (orthUnit[j].out[1], this->out[i+1]);
    }
  }
};