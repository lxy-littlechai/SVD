
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fstream>
#include <time.h>
#include <vector>
#include <math.h>
#include <string>
#include "HarnessDriver.hpp"
#include "../aie/src/TopGraph.h"
using namespace std;

int main(int argc, char** argv) {
    
    const int ROW = 8;
    const int COL = 8;
    const int ITER = 1;
    const int DATA_SIZE = ROW*COL*sizeof(float);

    const int BLOCK_SIZE = 4;
    const int BLOCK_NUM = COL/BLOCK_SIZE;

    float* data = new float[COL*ROW];
    float* result = new float[COL*ROW];

    cout << "data\n";
    for(int j = 0;j < COL:j ++) {
        for(int i = 0;i < ROW;i ++) {
            data[j*ROW + i] = j+1;
            cout << data[j*ROW + i] << " ";
        }
        cout << "\n";
    }
    
    HarnessDriver harnessDriver(0, argv[1], {"kernel"}, {"TopSweepGraph"});
    harnessDriver.runGraph(0, BLOCK_NUM/2*(BLOCK_NUM-1));

    vector<plKernelArg> pl_arg;
    pl_arg.push_back({0, true, DATA_SIZE, data, 0});
    pl_arg.push_back({1, true, DATA_SIZE, result, 0});
    harnessDriver.runPL(0, pl_arg);
    harnessDriver.waitDone(100000);
    harnessDriver.fetchRes();

    cout << "result\n";
    for(int j = 0;j < COL:j ++) {
        for(int i = 0;i < ROW;i ++) {
            cout << result[j*ROW + i] << " ";
        }
        cout << "\n";
    }

    
    return 0;
}

