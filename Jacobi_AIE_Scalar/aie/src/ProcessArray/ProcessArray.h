#include "adf.h"
#include "aie/src/ProcessLevel/EvenLevel.h"

template<int COL, int ROW>
class EvenArray: public adf::graph {
private:
  EvenLevel<COL, ROW> evenLevel[COL];

public:
  adf::port<input> in[COL*2];
  adf::port<output> out[COL*2];

  EvenArray() {
    for(int i = 0;i < COL;i += 2) {
      evenLevel[i] = EvenLevel0<COL, ROW>();
      evenLevel[i+1] = EvenLevel1<COL, ROW>();
    }

    for(int i = 0;i < COL*2;i ++) {
      adf::connect<> (in[i], evenLevel[0].in[i]);
      adf::connect<> (evenLevel[COL-1].out[i], out[i]);
    }

    for(int i = 0;i < COL;i ++) {
      if(i&1) {
        adf::connect<> (evenLevel[i].out[0], evenLevel[i+1].in[0]);
        adf::connect<> (evenLevel[i].out[COL*2-1], evenLevel[i+1].in[COL*2-1]);
        for(int j = 1;j < COL*2-1;j += 2) {
          adf::connect<> (evenLevel[i].out[j], evenLevel[i+1].in[j+1]);
        }
        for(int j = 2;j < COL*2-1;j += 2) {
          adf::connect<> (evenLevel[i].out[j], evenLevel[i+1].in[j-1]);
        }
      }
      else {
        for(int j = 0;j < COL*2;j += 2) {
          adf::connect<> (evenLevel[i].out[j], evenLevel[i+1].in[j+1]);
        }
        for(int j = 1;j < COL*2;j += 2) {
          adf::connect<> (evenLevel[i].out[j], evenLevel[i+1].in[j-1]);
        }
      }
    }

  }
}