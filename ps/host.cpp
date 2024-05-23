#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fstream>
#include <time.h>
#include <vector>
#include <math.h>
#include <string>
#include <xrt/xrt_device.h>
#include <experimental/xrt_xclbin.h>
#include <xrt/xrt_bo.h>
#include <xrt/xrt_kernel.h>
#include <experimental/xrt_aie.h>
#include <experimental/xrt_graph.h>
#include "./svd.hpp"
#include "../SystemConfig.h"

using namespace std;
int main(int argc, char** argv) {
    
    int ITER = 1;//default

    const int DATA_SIZE_BYTE = ROW*COL*sizeof(float);
    const int U_SIZE_BYTE = ROW*COL*sizeof(float);
    const int S_SIZE_BYTE = COL*sizeof(float);

    unsigned int dev_index = 0;
    auto device = xrt::device(dev_index);
    auto xclbin_uuid = device.load_xclbin(argv[1]);
    if(argc == 3) sscanf (argv[2], "%d", &ITER);
    

    auto kernel = xrt::kernel(device, xclbin_uuid, "CascadeMux");

    auto input_buffer = xrt::bo(device, DATA_SIZE_BYTE, kernel.group_id(0));
    auto output_buffer_U = xrt::bo(device, U_SIZE_BYTE, kernel.group_id(1));
    auto output_buffer_S = xrt::bo(device, S_SIZE_BYTE, kernel.group_id(2));

    auto data = input_buffer.map<float*>();
    auto U = output_buffer_U.map<float*>();
    auto S = output_buffer_S.map<float*>();

    float matrix[COL*ROW];

    read<COL, ROW>("./data/matrix.txt", matrix);

    std::cout << "data\n";
    int index = 0, matrix_id = 0;
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            data[index ++] = matrix[matrix_id ++];
        }
    }

    std::cout << "data\n";
    for(int i = 0;i < ROW;i ++) {
        for(int j = 0;j < COL;j ++) {
            cout << data[j*ROW + i] << " ";
        }
        cout << endl;
    }

    input_buffer.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    auto topSweepGraph0 = xrt::graph(device, xclbin_uuid, "topSweepGraph0");
    //auto topSweepGraph1 = xrt::graph(device, xclbin_uuid, "topSweepGraph1");

    int runIter = BLOCK_NUM/2*(BLOCK_NUM-1)*ITER/SWEEP_PLIO_NUM;
    topSweepGraph0.run(runIter);
    //topSweepGraph1.run(runIter);

    auto topNormGraph = xrt::graph(device, xclbin_uuid, "topNormGraph");
    topNormGraph.run(BLOCK_NUM); 
    std::cout << "Graph started\n";

    double kernel_time_in_sec = 0;
    std::chrono::duration<double> kernel_time(0);
    auto kernel_start = std::chrono::high_resolution_clock::now();
    
    auto run = kernel(input_buffer, output_buffer_U, output_buffer_S, ITER);
    run.wait();

    auto kernel_end = std::chrono::high_resolution_clock::now();
    kernel_time = std::chrono::duration<double>(kernel_end - kernel_start);
    kernel_time_in_sec = kernel_time.count();
    
    cout << "------------------------------------------------\n";
    std::cout << "Total time is: "<< kernel_time_in_sec <<"s\n";
    cout << "------------------------------------------------\n";

    topSweepGraph0.wait(0);
    //topSweepGraph1.end(0);
    topNormGraph.wait(0);

    output_buffer_U.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    output_buffer_S.sync(XCL_BO_SYNC_BO_TO_DEVICE);

    float U_matrix[COL][ROW], S_matrix[COL][COL];
    int indexU = 0, indexS = 0;
    for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            U_matrix[j][i] = U[indexU ++];
        }
        for(int i = 0;i < COL;i ++) {
            if(j == i) {
                S_matrix[j][i] = S[indexS ++];
            }
            else {
                S_matrix[j][i] = 0;
            }
        }
        
    }

    writeU<COL, ROW>("./data/test/U.txt", U_matrix);
    cout << "U\n";
    for(int i = 0;i < ROW;i ++) {
        for(int j = 0;j < COL;j ++) {
            printf("%.8f ", U_matrix[j][i]);
        }
        cout <<endl;
    }

    writeSigma<COL, ROW>("./data/test/Sigma.txt", S_matrix);
    cout << "S\n";
    for(int i = 0;i < COL;i ++) {
        for(int j = 0;j < COL;j ++) {
            printf("%.8f ", S_matrix[j][i]);
        }
        cout <<endl;
    }


    
    return 0;
}

