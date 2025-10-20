#include "TopGraph.h"
#include "../SystemConfig.h"




TopSweepGraph<ROW, BLOCK_SIZE, 1, 0, 1> topSweepGraph1_1("1_1");

TopSweepGraph<ROW, BLOCK_SIZE, 6, 0, 1> topSweepGraph1_2("1_2");

TopSweepGraph<ROW, BLOCK_SIZE, 12, 0, 1> topSweepGraph1_3("1_3");

TopSweepGraph<ROW, BLOCK_SIZE, 20, 0, 1> topSweepGraph1_4("1_4");


TopNormGraph<ROW, BLOCK_SIZE, 0, 0, 1> topNormGraph1("1");


#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif