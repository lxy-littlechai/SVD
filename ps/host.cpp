
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fstream>
#include <time.h>
#include <vector>
#include <math.h>
#include <string>
#include "../aie/src/TopGraph.h"
#include "xrt/xrt.h"
#include "xrt/experimental/xrt_kernel.h"
#include "adf/adf_api/XRTConfig.h"

TopGraph<16, 4, 2> graph;
using namespace std;

static std::vector<char> load_xclbin(xrtDeviceHandle device, const std::string& fnm) {
    if (fnm.empty()) throw std::runtime_error("No xclbin specified");

    // load bit stream
    std::ifstream stream(fnm);
    stream.seekg(0, stream.end);
    size_t size = stream.tellg();
    stream.seekg(0, stream.beg);

    std::vector<char> header(size);
    stream.read(header.data(), size);

    auto top = reinterpret_cast<const axlf*>(header.data());
    if (xrtDeviceLoadXclbin(device, top)) throw std::runtime_error("Xclbin loading failed");

    return header;
}


int main(int argc, char** argv) {
    
    
    char* xclbinFilename;
    if(argc == 1) {
        xclbinFilename = argv[1];
 
    }

    //////////////////////////////////////////
    // Open xclbin
    //////////////////////////////////////////
    
    auto dhdl = xrtDeviceOpen(0); // Open Device the local device
    if (dhdl == nullptr) throw std::runtime_error("No valid device handle found. Make sure using right xclOpen index.");
    auto xclbin = load_xclbin(dhdl, xclbinFilename);
    auto top = reinterpret_cast<const axlf*>(xclbin.data());
    adf::registerXRT(dhdl, top->m_header.uuid);
    

    const int ROW = 16;
    const int COL = 4;
    const int sizeIn = COL*ROW;
    const int sizeOut = 1;
    float* in;
    float* out; 

    in = (float*)malloc(sizeIn*sizeof(float));
    out = (float*)malloc(sizeOut*sizeof(float));

    
    for(int i = 0;i < COL;i ++) {
        for(int j = 0;j < ROW;j ++) {
            in[i*ROW + j] = (float)rand()%10/1.5;
        }  
    }

    
    //Allocate input mem
    xrtBufferHandle in_bohdl = xrtBOAlloc(dhdl, sizeIn * sizeof(float), 0, 0);
    float* in_bomapped = reinterpret_cast<float*>(xrtBOMap(in_bohdl));
    for(int i = 0;i < COL;i ++) {
        for(int j = 0;j < ROW;j ++) {
            in_bomapped[i*ROW + j] = in[i*ROW + j];
        }  
    }

    // sync input memory
    xrtBOSync(in_bohdl, XCL_BO_SYNC_BO_TO_DEVICE , sizeIn* sizeof(float),0);

    
    //Allocate output buffer
    xrtBufferHandle out_bohdl = xrtBOAlloc(dhdl, sizeOut * sizeof(float), 0, 0);
    float* out_bomapped = reinterpret_cast<float*>(xrtBOMap(out_bohdl[i]));
    for(int i = 0;i < COL;i ++) {
        for(int j = 0;j < ROW;j ++) {
            out_bomapped[i*ROW + j] = 0;
        }  
    }
    
    //int graph_iter=X*Y*Z*TX*TY*TZ;
    graph.init();
           
    printf("graph run\n");
    graph.run(1);

    std::cout << "Kernel run\n";
    xrtKernelHandle dma_khdl = xrtPLKernelOpen(dhdl, top->m_header.uuid, "kernel");
    xrtRunHandle dma_rhdl;
    
    //profile aie mm 
    double kernel_time_in_sec = 0;
    std::chrono::duration<double> kernel_time(0);
    auto kernel_start = std::chrono::high_resolution_clock::now();
    
    for (int i=0;i<iter;i++){
    // start input kernels run handles
    dma_rhdl = xrtKernelRun(dma_khdl, in_bohdl, out_bohdl,
            nullptr, nullptr, nullptr, nullptr,
            nullptr, nullptr, nullptr, nullptr);
        xrtRunWait(dma_rhdl);
    }
    auto kernel_end = std::chrono::high_resolution_clock::now();
    kernel_time = std::chrono::duration<double>(kernel_end - kernel_start);
    kernel_time_in_sec = kernel_time.count();
    double TOPS =  kernel_time_in_sec;
    std::cout << std::endl;
    std::cout << std::endl;
    
    std::cout << "Total time is: "<< kernel_time_in_sec <<"s, TOPS = " << TOPS << " GOPS/s" << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;

    // sync output memory
    xrtBOSync(out_bohdl, XCL_BO_SYNC_BO_FROM_DEVICE , sizeOut* sizeof(float),/*OFFSET=*/ 0);
        
    xrtRunClose(dma_rhdl);
    xrtKernelClose(dma_khdl);

    ////////////////////////////////////////////
    //// Comparing the execution data to the golden data
    ////////////////////////////////////////////
    

    //////////////////////////////////////////
    // clean up XRT
    //////////////////////////////////////////

    std::cout << "Releasing remaining XRT objects...\n";
    
    xrtBOFree(out_bohdl);
    xrtBOFree(in_bohdl);
    //myGraph.end();
    xrtDeviceClose(dhdl);
    return 0;
}

