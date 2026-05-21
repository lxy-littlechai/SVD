#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fstream>
#include <time.h>
#include <vector>
#include <math.h>
#include <random>
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
 
    int ITER = 20;//default
    int BATCH = 1; //default

    const int DATA_SIZE_BYTE = ROW*COL*sizeof(float);
    const int U_SIZE_BYTE = ROW*COL*sizeof(float);
    const int S_SIZE_BYTE = COL*sizeof(float);

    const int CONV_SIZE_BYTE = 100*sizeof(float);

    unsigned int dev_index = 0;
    auto device = xrt::device(dev_index);
    auto xclbin_uuid = device.load_xclbin(argv[1]);
    if(argc >= 3) sscanf (argv[2], "%d", &ITER);
    if(argc == 4) sscanf (argv[3], "%d", &BATCH);
    
    xrt::kernel kernel[8];
    // xrt::bo input_buffer[8];
    xrt::bo output_buffer_U[8];
    xrt::bo output_buffer_S[8];
    xrt::bo output_buffer_CONV[8];

    // float* data[8];
    float* U[8];
    float* S[8];
    float* CONV[8];

    for(int i = 0;i < 8;i ++) {
      string kernel_name = "TopPL:{TopPL_" + to_string(i+1) + "}";
      kernel[i] = xrt::kernel(device, xclbin_uuid, kernel_name.c_str());
      // input_buffer[i] = xrt::bo(device, DATA_SIZE_BYTE, kernel[i].group_id(0));
      output_buffer_U[i] = xrt::bo(device, U_SIZE_BYTE, kernel[i].group_id(1));
      output_buffer_S[i] = xrt::bo(device, S_SIZE_BYTE, kernel[i].group_id(2));
      output_buffer_CONV[i] = xrt::bo(device, CONV_SIZE_BYTE, kernel[i].group_id(3));

      // data[i] = input_buffer[i].map<float*>();
      U[i] = output_buffer_U[i].map<float*>();
      S[i] = output_buffer_S[i].map<float*>();
      CONV[i] = output_buffer_CONV[i].map<float*>();
    }

    std::vector<xrt::bo> input_buffer;
    input_buffer.reserve(BATCH);
    for(int i = 0;i < BATCH;i ++) {
      int kernel_id = i % 8;
      xrt::bo tmp_bo = xrt::bo(device, DATA_SIZE_BYTE, kernel[kernel_id].group_id(0));
      float* tmp_data = tmp_bo.map<float*>();
      int index = 0;
      for(int j = 0;j < COL;j ++) {
        for(int i = 0;i < ROW;i ++) {
            tmp_data[index ++] = getRand(-50, 50);
        }
      }
      tmp_bo.sync(XCL_BO_SYNC_BO_TO_DEVICE);
      input_buffer.emplace_back(tmp_bo);
    }

    for(int k = 0;k < 1;k ++){
      for(int i = 0;i < 100;i ++) {
        CONV[k][i] = 0;
      }
    }
    
    

    std::vector<xrt::graph> topSweepGraph;
    std::vector<xrt::graph> topNormGraph;

    
    
    string topSweepGraphName1_1 = "topSweepGraph" + to_string(1) + "_" + to_string(1);
    auto SweepGraph1_1 = xrt::graph(device, xclbin_uuid, topSweepGraphName1_1.c_str());
    topSweepGraph.emplace_back(SweepGraph1_1);
    
    
    
    string topSweepGraphName2_2 = "topSweepGraph" + to_string(2) + "_" + to_string(2);
    auto SweepGraph2_2 = xrt::graph(device, xclbin_uuid, topSweepGraphName2_2.c_str());
    topSweepGraph.emplace_back(SweepGraph2_2);
    
    
    
    string topSweepGraphName3_3 = "topSweepGraph" + to_string(3) + "_" + to_string(3);
    auto SweepGraph3_3 = xrt::graph(device, xclbin_uuid, topSweepGraphName3_3.c_str());
    topSweepGraph.emplace_back(SweepGraph3_3);
    
    
    
    string topSweepGraphName4_4 = "topSweepGraph" + to_string(4) + "_" + to_string(4);
    auto SweepGraph4_4 = xrt::graph(device, xclbin_uuid, topSweepGraphName4_4.c_str());
    topSweepGraph.emplace_back(SweepGraph4_4);
    
    
    
    string topSweepGraphName5_5 = "topSweepGraph" + to_string(5) + "_" + to_string(5);
    auto SweepGraph5_5 = xrt::graph(device, xclbin_uuid, topSweepGraphName5_5.c_str());
    topSweepGraph.emplace_back(SweepGraph5_5);
    
    
    
    string topSweepGraphName6_6 = "topSweepGraph" + to_string(6) + "_" + to_string(6);
    auto SweepGraph6_6 = xrt::graph(device, xclbin_uuid, topSweepGraphName6_6.c_str());
    topSweepGraph.emplace_back(SweepGraph6_6);
    
    
    
    string topSweepGraphName7_7 = "topSweepGraph" + to_string(7) + "_" + to_string(7);
    auto SweepGraph7_7 = xrt::graph(device, xclbin_uuid, topSweepGraphName7_7.c_str());
    topSweepGraph.emplace_back(SweepGraph7_7);
    
    
    
    string topSweepGraphName8_8 = "topSweepGraph" + to_string(8) + "_" + to_string(8);
    auto SweepGraph8_8 = xrt::graph(device, xclbin_uuid, topSweepGraphName8_8.c_str());
    topSweepGraph.emplace_back(SweepGraph8_8);
    
    

    
    
    string topNormGraphName1_1 = "topNormGraph" + to_string(1) + "_" + to_string(1);
    auto NormGraph1_1 = xrt::graph(device, xclbin_uuid, topNormGraphName1_1.c_str());
    topNormGraph.emplace_back(NormGraph1_1);
    
    
    
    string topNormGraphName2_2 = "topNormGraph" + to_string(2) + "_" + to_string(2);
    auto NormGraph2_2 = xrt::graph(device, xclbin_uuid, topNormGraphName2_2.c_str());
    topNormGraph.emplace_back(NormGraph2_2);
    
    
    
    string topNormGraphName3_3 = "topNormGraph" + to_string(3) + "_" + to_string(3);
    auto NormGraph3_3 = xrt::graph(device, xclbin_uuid, topNormGraphName3_3.c_str());
    topNormGraph.emplace_back(NormGraph3_3);
    
    
    
    string topNormGraphName4_4 = "topNormGraph" + to_string(4) + "_" + to_string(4);
    auto NormGraph4_4 = xrt::graph(device, xclbin_uuid, topNormGraphName4_4.c_str());
    topNormGraph.emplace_back(NormGraph4_4);
    
    
    
    string topNormGraphName5_5 = "topNormGraph" + to_string(5) + "_" + to_string(5);
    auto NormGraph5_5 = xrt::graph(device, xclbin_uuid, topNormGraphName5_5.c_str());
    topNormGraph.emplace_back(NormGraph5_5);
    
    
    
    string topNormGraphName6_6 = "topNormGraph" + to_string(6) + "_" + to_string(6);
    auto NormGraph6_6 = xrt::graph(device, xclbin_uuid, topNormGraphName6_6.c_str());
    topNormGraph.emplace_back(NormGraph6_6);
    
    
    
    string topNormGraphName7_7 = "topNormGraph" + to_string(7) + "_" + to_string(7);
    auto NormGraph7_7 = xrt::graph(device, xclbin_uuid, topNormGraphName7_7.c_str());
    topNormGraph.emplace_back(NormGraph7_7);
    
    
    
    string topNormGraphName8_8 = "topNormGraph" + to_string(8) + "_" + to_string(8);
    auto NormGraph8_8 = xrt::graph(device, xclbin_uuid, topNormGraphName8_8.c_str());
    topNormGraph.emplace_back(NormGraph8_8);
    
    

    for(int i = 0;i < topSweepGraph.size();i ++) {
      topSweepGraph[i].run();
    }

    for(int i = 0;i < topNormGraph.size();i ++) {
      topNormGraph[i].run();
    }
    
    std::cout << "All Graph started\n";
    std::cout << BATCH << "*" << ROW << "*" << COL << " ITER:" << ITER;

    double kernel_time_in_sec = 0;
    std::chrono::duration<double> kernel_time(0);
    auto kernel_start = std::chrono::high_resolution_clock::now();
    
    xrt::run run[8];
    for(int i = 0;i < BATCH/8;i ++) {
      for(int k = 0;k < 8;k ++) {
        int global_id = i * 8 + k;
        run[k] = kernel[k](input_buffer[global_id], output_buffer_U[k], output_buffer_S[k], output_buffer_CONV[k], ITER);
      }
      for(int k = 0;k < 8;k ++) {
        run[k].wait();
      }
    }

    int done_cnt = (BATCH/8)*8;
    int remain = BATCH%8;
    for(int k = 0;k < remain;k ++) {
      int global_id = done_cnt + k;
      run[k] = kernel[k](input_buffer[global_id], output_buffer_U[k], output_buffer_S[k], output_buffer_CONV[k], ITER);
    }
    for(int k = 0;k < remain;k ++) {
      run[k].wait();
    }
    

  
    auto kernel_end = std::chrono::high_resolution_clock::now();
    kernel_time = std::chrono::duration<double>(kernel_end - kernel_start);
    kernel_time_in_sec = kernel_time.count();
    
    cout << "------------------------------------------------\n";
    std::cout << "Total time is: "<< kernel_time_in_sec <<"s\n";
    std::cout << "Throughput: "<< BATCH/kernel_time_in_sec <<"task/s\n";
    cout << "------------------------------------------------\n";
    
    for(int k = 0;k < 8;k ++) {
      output_buffer_U[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      output_buffer_S[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      output_buffer_CONV[k].sync(XCL_BO_SYNC_BO_TO_DEVICE);
      int iteration = 0;
      while(CONV[k][iteration] > EPS) {
        cout << CONV[k][iteration] << " ";
        iteration ++;
      }
      cout << endl << k << " " << iteration << endl;
    }


    //writeU<COL, ROW>("./data/test/U.txt", U_matrix);
    writeSigma<COL, ROW>("./Sigma.txt", S[0]);


    return 0;
}
