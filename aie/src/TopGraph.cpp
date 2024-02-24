#include "TopGraph.h"
TopSweepGraph<8, 4> topSweepGraph(0);
TopNormGraph<8, 4> topNormGraph(0);

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    /*
    topNormGraph.init();
    topNormGraph.run(1);
    topNormGraph.end();*/
    return 0;
}
#endif