#include "TopGraph.h"
#include "../SystemConfig.h"



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 1, 0, 1, CascadeLevel> topSweepGraph1_1("1_1");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 6, 7, -1, CascadeLevel> topSweepGraph2_2("2_2");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 11, 0, 1, CascadeLevel> topSweepGraph3_3("3_3");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 16, 7, -1, CascadeLevel> topSweepGraph4_4("4_4");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 21, 0, 1, CascadeLevel> topSweepGraph5_5("5_5");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 26, 7, -1, CascadeLevel> topSweepGraph6_6("6_6");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 31, 0, 1, CascadeLevel> topSweepGraph7_7("7_7");



TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, 36, 7, -1, CascadeLevel> topSweepGraph8_8("8_8");





TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 0, 0, 1, CascadeLevel> topNormGraph1_1("1_1");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 5, 7, -1, CascadeLevel> topNormGraph2_2("2_2");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 10, 0, 1, CascadeLevel> topNormGraph3_3("3_3");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 15, 7, -1, CascadeLevel> topNormGraph4_4("4_4");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 20, 0, 1, CascadeLevel> topNormGraph5_5("5_5");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 25, 7, -1, CascadeLevel> topNormGraph6_6("6_6");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 30, 0, 1, CascadeLevel> topNormGraph7_7("7_7");



TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, 35, 7, -1, CascadeLevel> topNormGraph8_8("8_8");



#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {


 topSweepGraph1_1.init();
 topSweepGraph1_1.run(1);
 topSweepGraph1_1.end();



 topSweepGraph2_2.init();
 topSweepGraph2_2.run(1);
 topSweepGraph2_2.end();



 topSweepGraph3_3.init();
 topSweepGraph3_3.run(1);
 topSweepGraph3_3.end();



 topSweepGraph4_4.init();
 topSweepGraph4_4.run(1);
 topSweepGraph4_4.end();



 topSweepGraph5_5.init();
 topSweepGraph5_5.run(1);
 topSweepGraph5_5.end();



 topSweepGraph6_6.init();
 topSweepGraph6_6.run(1);
 topSweepGraph6_6.end();



 topSweepGraph7_7.init();
 topSweepGraph7_7.run(1);
 topSweepGraph7_7.end();



 topSweepGraph8_8.init();
 topSweepGraph8_8.run(1);
 topSweepGraph8_8.end();


    
    return 0;
}
#endif