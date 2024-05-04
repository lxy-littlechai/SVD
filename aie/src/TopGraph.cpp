#include "TopGraph.h"
#include "../SystemConfig.h"

TopSweepGraph<ROW, BLOCK_SIZE, 1, 0, 1> topSweepGraph0(0);
//TopSweepGraph<ROW, BLOCK_SIZE, 19, 0, 1> topSweepGraph1(1);
TopNormGraph<ROW, BLOCK_SIZE, BLOCK_SIZE> topNormGraph(0);

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    topSweepGraph0.init();
    topSweepGraph0.run(1);
    topSweepGraph0.end();
    
    return 0;
}
#endif