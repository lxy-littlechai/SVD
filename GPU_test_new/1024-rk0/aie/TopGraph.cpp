#include "TopGraph.h"
#include "../SystemConfig.h"



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 1, 0, 1, CascadeLevel> topSweepGraph1_1("1_1");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 6, 7, -1, CascadeLevel> topSweepGraph1_2("1_2");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 11, 0, 1, CascadeLevel> topSweepGraph2_3("2_3");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 16, 7, -1, CascadeLevel> topSweepGraph2_4("2_4");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 21, 0, 1, CascadeLevel> topSweepGraph3_5("3_5");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 26, 7, -1, CascadeLevel> topSweepGraph3_6("3_6");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 31, 0, 1, CascadeLevel> topSweepGraph4_7("4_7");

TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 36, 7, -1, CascadeLevel> topSweepGraph4_8("4_8");





TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 0, 0, 1, CascadeLevel> topNormGraph1_1("1_1");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 10, 0, 1, CascadeLevel> topNormGraph2_3("2_3");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 20, 0, 1, CascadeLevel> topNormGraph3_5("3_5");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 30, 0, 1, CascadeLevel> topNormGraph4_7("4_7");



#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {


 topSweepGraph1_1.init();
 topSweepGraph1_1.run(1);
 topSweepGraph1_1.end();

 topSweepGraph1_2.init();
 topSweepGraph1_2.run(1);
 topSweepGraph1_2.end();



 topSweepGraph2_3.init();
 topSweepGraph2_3.run(1);
 topSweepGraph2_3.end();

 topSweepGraph2_4.init();
 topSweepGraph2_4.run(1);
 topSweepGraph2_4.end();



 topSweepGraph3_5.init();
 topSweepGraph3_5.run(1);
 topSweepGraph3_5.end();

 topSweepGraph3_6.init();
 topSweepGraph3_6.run(1);
 topSweepGraph3_6.end();



 topSweepGraph4_7.init();
 topSweepGraph4_7.run(1);
 topSweepGraph4_7.end();

 topSweepGraph4_8.init();
 topSweepGraph4_8.run(1);
 topSweepGraph4_8.end();


    
    return 0;
}
#endif