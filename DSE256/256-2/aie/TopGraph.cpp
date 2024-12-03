#include "TopGraph.h"
#include "../SystemConfig.h"


TopSweepGraph<ROW, BLOCK_SIZE, 1, 0, 1> topSweepGraph1(1);
TopNormGraph<ROW, BLOCK_SIZE, 0, 0, 1> topNormGraph1(1);

TopSweepGraph<ROW, BLOCK_SIZE, 1, 4, 1> topSweepGraph2(2);
TopNormGraph<ROW, BLOCK_SIZE, 0, 4, 1> topNormGraph2(2);

TopSweepGraph<ROW, BLOCK_SIZE, 4, 7, -1> topSweepGraph3(3);
TopNormGraph<ROW, BLOCK_SIZE, 3, 7, -1> topNormGraph3(3);

TopSweepGraph<ROW, BLOCK_SIZE, 4, 3, -1> topSweepGraph4(4);
TopNormGraph<ROW, BLOCK_SIZE, 3, 3, -1> topNormGraph4(4);

TopSweepGraph<ROW, BLOCK_SIZE, 7, 0, 1> topSweepGraph5(5);
TopNormGraph<ROW, BLOCK_SIZE, 6, 0, 1> topNormGraph5(5);

TopSweepGraph<ROW, BLOCK_SIZE, 7, 4, 1> topSweepGraph6(6);
TopNormGraph<ROW, BLOCK_SIZE, 6, 4, 1> topNormGraph6(6);

TopSweepGraph<ROW, BLOCK_SIZE, 10, 7, -1> topSweepGraph7(7);
TopNormGraph<ROW, BLOCK_SIZE, 9, 7, -1> topNormGraph7(7);

TopSweepGraph<ROW, BLOCK_SIZE, 10, 3, -1> topSweepGraph8(8);
TopNormGraph<ROW, BLOCK_SIZE, 9, 3, -1> topNormGraph8(8);

TopSweepGraph<ROW, BLOCK_SIZE, 13, 0, 1> topSweepGraph9(9);
TopNormGraph<ROW, BLOCK_SIZE, 12, 0, 1> topNormGraph9(9);

TopSweepGraph<ROW, BLOCK_SIZE, 13, 4, 1> topSweepGraph10(10);
TopNormGraph<ROW, BLOCK_SIZE, 12, 4, 1> topNormGraph10(10);

TopSweepGraph<ROW, BLOCK_SIZE, 16, 7, -1> topSweepGraph11(11);
TopNormGraph<ROW, BLOCK_SIZE, 15, 7, -1> topNormGraph11(11);

TopSweepGraph<ROW, BLOCK_SIZE, 16, 3, -1> topSweepGraph12(12);
TopNormGraph<ROW, BLOCK_SIZE, 15, 3, -1> topNormGraph12(12);

TopSweepGraph<ROW, BLOCK_SIZE, 19, 0, 1> topSweepGraph13(13);
TopNormGraph<ROW, BLOCK_SIZE, 18, 0, 1> topNormGraph13(13);

TopSweepGraph<ROW, BLOCK_SIZE, 19, 4, 1> topSweepGraph14(14);
TopNormGraph<ROW, BLOCK_SIZE, 18, 4, 1> topNormGraph14(14);

TopSweepGraph<ROW, BLOCK_SIZE, 22, 7, -1> topSweepGraph15(15);
TopNormGraph<ROW, BLOCK_SIZE, 21, 7, -1> topNormGraph15(15);

TopSweepGraph<ROW, BLOCK_SIZE, 22, 3, -1> topSweepGraph16(16);
TopNormGraph<ROW, BLOCK_SIZE, 21, 3, -1> topNormGraph16(16);

TopSweepGraph<ROW, BLOCK_SIZE, 25, 0, 1> topSweepGraph17(17);
TopNormGraph<ROW, BLOCK_SIZE, 24, 0, 1> topNormGraph17(17);

TopSweepGraph<ROW, BLOCK_SIZE, 25, 4, 1> topSweepGraph18(18);
TopNormGraph<ROW, BLOCK_SIZE, 24, 4, 1> topNormGraph18(18);

TopSweepGraph<ROW, BLOCK_SIZE, 28, 7, -1> topSweepGraph19(19);
TopNormGraph<ROW, BLOCK_SIZE, 27, 7, -1> topNormGraph19(19);

TopSweepGraph<ROW, BLOCK_SIZE, 28, 3, -1> topSweepGraph20(20);
TopNormGraph<ROW, BLOCK_SIZE, 27, 3, -1> topNormGraph20(20);

TopSweepGraph<ROW, BLOCK_SIZE, 31, 0, 1> topSweepGraph21(21);
TopNormGraph<ROW, BLOCK_SIZE, 30, 0, 1> topNormGraph21(21);

TopSweepGraph<ROW, BLOCK_SIZE, 31, 4, 1> topSweepGraph22(22);
TopNormGraph<ROW, BLOCK_SIZE, 30, 4, 1> topNormGraph22(22);

TopSweepGraph<ROW, BLOCK_SIZE, 34, 7, -1> topSweepGraph23(23);
TopNormGraph<ROW, BLOCK_SIZE, 33, 7, -1> topNormGraph23(23);

TopSweepGraph<ROW, BLOCK_SIZE, 34, 3, -1> topSweepGraph24(24);
TopNormGraph<ROW, BLOCK_SIZE, 33, 3, -1> topNormGraph24(24);

TopSweepGraph<ROW, BLOCK_SIZE, 37, 0, 1> topSweepGraph25(25);
TopNormGraph<ROW, BLOCK_SIZE, 36, 0, 1> topNormGraph25(25);

TopSweepGraph<ROW, BLOCK_SIZE, 37, 4, 1> topSweepGraph26(26);
TopNormGraph<ROW, BLOCK_SIZE, 36, 4, 1> topNormGraph26(26);


#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif