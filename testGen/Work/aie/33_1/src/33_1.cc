// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/33_1/src/33_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_33_1_0_8032 16
#define LOCK_33_1_1_0 17
#define LOCK_34_1_6_0 54
#define LOCK_34_1_7_0 55
#define LOCK_33_2_0_3936 32
#define LOCK_33_2_1_2080 33
#define LOCK_33_2_2_0 34
#define LOCK_33_2_3_0 35

// Declare shared memory buffers
v4float buf332[9];
v4float buf332d[9];
v4float buf338[9];
v4float buf338d[9];
v4float buf354[9];
v4float buf354d[9];
v4float buf360[9];
v4float buf360d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf332_buf332d_i[1] = {{(float*)buf332, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf338_buf338d_i[1] = {{(float*)buf338, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf354_buf354d_o[1] = {{(float*)buf354, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf360_buf360d_o[1] = {{(float*)buf360, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_33_1_bounds = sync_buffer[1];

  while (proc_33_1_bounds)
  {

    // Kernel call : i173:orthogonalize<32>
    window_buf332_buf332d_i->setData(*window_buf332_buf332d_i, (float*)buf332, (float*)buf332d, 1-index, 0);
    window_buf332_buf332d_i->acquire(*window_buf332_buf332d_i, LOCK_33_1_0_8032, LOCK_33_1_1_0, 1-index);
    window_buf338_buf338d_i->setData(*window_buf338_buf338d_i, (float*)buf338, (float*)buf338d, 1-index, 0);
    window_buf338_buf338d_i->acquire(*window_buf338_buf338d_i, LOCK_34_1_6_0, LOCK_34_1_7_0, 1-index);
    window_buf354_buf354d_o->setData(*window_buf354_buf354d_o, (float*)buf354, (float*)buf354d, 1-index, 0);
    window_buf354_buf354d_o->acquire(*window_buf354_buf354d_o, LOCK_33_2_0_3936, LOCK_33_2_1_2080, 1-index);
    window_buf360_buf360d_o->setData(*window_buf360_buf360d_o, (float*)buf360, (float*)buf360d, 1-index, 0);
    window_buf360_buf360d_o->acquire(*window_buf360_buf360d_o, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    orthogonalize<32>(window_buf332_buf332d_i[0],window_buf338_buf338d_i[0],window_buf354_buf354d_o[0],window_buf360_buf360d_o[0]);
    window_buf332_buf332d_i->release(*window_buf332_buf332d_i, LOCK_33_1_0_8032, LOCK_33_1_1_0, 1-index);
    window_buf338_buf338d_i->release(*window_buf338_buf338d_i, LOCK_34_1_6_0, LOCK_34_1_7_0, 1-index);
    window_buf354_buf354d_o->release(*window_buf354_buf354d_o, LOCK_33_2_0_3936, LOCK_33_2_1_2080, 1-index);
    window_buf360_buf360d_o->release(*window_buf360_buf360d_o, LOCK_33_2_2_0, LOCK_33_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_33_1_bounds > 0)
      --proc_33_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}