#include "TopGraph.h"
#include "../SystemConfig.h"



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 1, 0, 1, CascadeLevel> topSweepGraph1_1("1_1");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 19, 2, 1, CascadeLevel> topSweepGraph2_2("2_2");





TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 0, 0, 1, CascadeLevel> topNormGraph1_1("1_1");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 18, 2, 1, CascadeLevel> topNormGraph2_2("2_2");



#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {


 topSweepGraph1_1.init();
 topSweepGraph1_1.run(1);
 topSweepGraph1_1.end();



 topSweepGraph2_2.init();
 topSweepGraph2_2.run(1);
 topSweepGraph2_2.end();


    
    return 0;
}
#endif