#include "TopGraph.h"
#include "../SystemConfig.h"


TopSweepGraph<ROW, BLOCK_SIZE, 1, 0, 1> topSweepGraph1(1);
TopNormGraph<ROW, BLOCK_SIZE, 0, 0, 1> topNormGraph1(1);

TopSweepGraph<ROW, BLOCK_SIZE, 19, 2, 1> topSweepGraph2(2);
TopNormGraph<ROW, BLOCK_SIZE, 18, 2, 1> topNormGraph2(2);


#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif