#include "TopGraph.h"
#include "../SystemConfig.h"



//TopSweepGraph<ROW, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 1, 0, 1, 2> topSweepGraph1_1("1_1");





TopNormGraph<ROW, BLOCK_SIZE, 0, 0, 1, 1> topNormGraph1_1("1_1");



#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    topNormGraph1_1.init();
    topNormGraph1_1.run(1);
    topNormGraph1_1.end();
    
    return 0;
}
#endif