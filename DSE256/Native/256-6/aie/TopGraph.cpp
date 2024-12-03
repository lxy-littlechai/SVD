#include "TopGraph.h"
#include "../SystemConfig.h"


TopSweepGraph<ROW, BLOCK_SIZE, 1, 0, 1> topSweepGraph1(1);
TopNormGraph<ROW, BLOCK_SIZE, 0, 0, 1> topNormGraph1(1);

TopSweepGraph<ROW, BLOCK_SIZE, 8, 2, -1> topSweepGraph2(2);
TopNormGraph<ROW, BLOCK_SIZE, 7, 2, -1> topNormGraph2(2);

TopSweepGraph<ROW, BLOCK_SIZE, 22, 4, -1> topSweepGraph3(3);
TopNormGraph<ROW, BLOCK_SIZE, 21, 4, -1> topNormGraph3(3);

TopSweepGraph<ROW, BLOCK_SIZE, 36, 7, -1> topSweepGraph4(4);
TopNormGraph<ROW, BLOCK_SIZE, 35, 7, -1> topNormGraph4(4);


#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif