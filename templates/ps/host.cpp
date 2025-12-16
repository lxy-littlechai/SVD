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
    
    xrt::kernel kernel[{{task_num}}];
    // xrt::bo input_buffer[{{task_num}}];
    xrt::bo output_buffer_U[{{task_num}}];
    xrt::bo output_buffer_S[{{task_num}}];
    xrt::bo output_buffer_CONV[{{task_num}}];

    // float* data[{{task_num}}];
    float* U[{{task_num}}];
    float* S[{{task_num}}];
    float* CONV[{{task_num}}];

    for(int i = 0;i < {{task_num}};i ++) {
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
      int kernel_id = i % {{task_num}};
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

    {% for graphs in orth_graph_list %}
    {% for graph in graphs %}
    string topSweepGraphName{{graph['task_id']}}_{{graph['graph_id']}} = "topSweepGraph" + to_string({{graph['task_id']}}) + "_" + to_string({{graph['graph_id']}});
    auto SweepGraph{{graph['task_id']}}_{{graph['graph_id']}} = xrt::graph(device, xclbin_uuid, topSweepGraphName{{graph['task_id']}}_{{graph['graph_id']}}.c_str());
    topSweepGraph.emplace_back(SweepGraph{{graph['task_id']}}_{{graph['graph_id']}});
    {% endfor %}
    {% endfor %}

    {% for graphs in norm_graph_list %}
    {% for graph in graphs %}
    string topNormGraphName{{graph['task_id']}}_{{graph['graph_id']}} = "topNormGraph" + to_string({{graph['task_id']}}) + "_" + to_string({{graph['graph_id']}});
    auto NormGraph{{graph['task_id']}}_{{graph['graph_id']}} = xrt::graph(device, xclbin_uuid, topNormGraphName{{graph['task_id']}}_{{graph['graph_id']}}.c_str());
    topNormGraph.emplace_back(NormGraph{{graph['task_id']}}_{{graph['graph_id']}});
    {% endfor %}
    {% endfor %}

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
    
    xrt::run run[{{task_num}}];
    for(int i = 0;i < BATCH/{{task_num}};i ++) {
      for(int k = 0;k < {{task_num}};k ++) {
        int global_id = i * {{task_num}} + k;
        run[k] = kernel[k](input_buffer[global_id], output_buffer_U[k], output_buffer_S[k], output_buffer_CONV[k], ITER);
      }
      for(int k = 0;k < {{task_num}};k ++) {
        run[k].wait();
      }
    }

    int done_cnt = (BATCH/{{task_num}})*{{task_num}};
    int remain = BATCH%{{task_num}};
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
    
    for(int k = 0;k < {{task_num}};k ++) {
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

