#include "adf.h"
#include "aie/src/ProcessUnit/ProcessUnit.h"

template<int COL, int ROW>
class NormalizeLevel:public adf::graph {
private:
    NormalizeUnit<ROW> normUnit[COL];

public:
    adf::port<input> in[COL];
    adf::port<output> out[COL];

    NormalizeLevel() {
        for(int i = 0;i < COL;i ++) {
            adf::connect<> (in[i], normUnit[i].in[0]);
            adf::connect<> (normUnit[i].out[0], out[i]);
        }
    }
};