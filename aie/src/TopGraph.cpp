#include "TopGraph.h"
TopSweepGraph<8, 4> topSweepGraph(0);
TopNormGraph<8, 4> topNormGraph(0);

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    //topSweepGraph.init();
    //topSweepGraph.run(1);
    //topSweepGraph.end();
    return 0;
}
#endif