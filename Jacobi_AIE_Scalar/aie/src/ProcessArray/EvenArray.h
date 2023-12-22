#include "adf.h"
#include "aie/src/ProcessLevel/EvenLevel.h"
#include<iostream>

template<int COL, int ROW>
class EvenArray: public adf::graph {
private:
  EvenLevel0<COL,ROW> evenLevel0[COL];
  EvenLevel1<COL,ROW>  evenLevel1[COL];

public:
  adf::port<input> in[COL*2];
  adf::port<output> out[COL*2];

  EvenArray() {

    for(int i = 0;i < COL*2;i ++) {
      adf::connect<> (in[i], evenLevel0[0].in[i]);
      adf::connect<> (evenLevel1[COL-1].out[i], out[i]);
    }

    //even
    for(int i = 0;i < COL;i ++) {
      for(int j = 0;j < COL*2;j ++) {
        if(j&1) {
          adf::connect<> (evenLevel0[i].out[j], evenLevel1[i].in[j-1]);
        }
        else {
          adf::connect<> (evenLevel0[i].out[j], evenLevel1[i].in[j+1]);
        }
      }
    }

    //odd
    for(int i = 0;i < COL-1;i ++) {
      adf::connect<> (evenLevel1[i].out[0], evenLevel0[i+1].in[0]);
      adf::connect<> (evenLevel1[i].out[COL*2-1], evenLevel0[i+1].in[COL*2-1]);
      for(int j = 1;j < COL*2-1;j ++) {
        if(j&1) {
          adf::connect<> (evenLevel1[i].out[j], evenLevel0[i+1].in[j+1]);
        }
        else {
          adf::connect<> (evenLevel1[i].out[j], evenLevel0[i+1].in[j-1]);
        }
      }
    }

  }
};