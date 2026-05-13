#include "TopGraph.h"
#include "../SystemConfig.h"



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 1, 0, 1, CascadeLevel> topSweepGraph1_1("1_1");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 6, 7, -1, CascadeLevel> topSweepGraph1_2("1_2");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 11, 0, 1, CascadeLevel> topSweepGraph1_3("1_3");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 16, 7, -1, CascadeLevel> topSweepGraph1_4("1_4");





TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 0, 0, 1, CascadeLevel> topNormGraph1_1("1_1");



#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {


 topSweepGraph1_1.init();
 topSweepGraph1_1.run(1);
 topSweepGraph1_1.end();

 topSweepGraph1_2.init();
 topSweepGraph1_2.run(1);
 topSweepGraph1_2.end();

 topSweepGraph1_3.init();
 topSweepGraph1_3.run(1);
 topSweepGraph1_3.end();

 topSweepGraph1_4.init();
 topSweepGraph1_4.run(1);
 topSweepGraph1_4.end();


    
    return 0;
}
#endif