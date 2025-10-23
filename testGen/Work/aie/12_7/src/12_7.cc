// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/12_7/src/12_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_7_0_160 16
#define LOCK_12_7_1_8032 17
#define LOCK_12_7_2_0 18
#define LOCK_12_7_3_0 19

// Declare shared memory buffers
v4float buf500[9];
v4float buf500d[9];
v4float buf501[9];
v4float buf501d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf500_buf500d_i[1] = {{(float*)buf500, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf501_buf501d_o[1] = {{(float*)buf501, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_7_bounds = sync_buffer[1];

  while (proc_12_7_bounds)
  {

    // Kernel call : i247:normalize<32>
    window_buf500_buf500d_i->setData(*window_buf500_buf500d_i, (float*)buf500, (float*)buf500d, 1-index, 0);
    window_buf500_buf500d_i->acquire(*window_buf500_buf500d_i, LOCK_12_7_0_160, LOCK_12_7_1_8032, 1-index);
    window_buf501_buf501d_o->setData(*window_buf501_buf501d_o, (float*)buf501, (float*)buf501d, 1-index, 0);
    window_buf501_buf501d_o->acquire(*window_buf501_buf501d_o, LOCK_12_7_2_0, LOCK_12_7_3_0, 1-index);
    normalize<32>(window_buf500_buf500d_i[0],window_buf501_buf501d_o[0]);
    window_buf500_buf500d_i->release(*window_buf500_buf500d_i, LOCK_12_7_0_160, LOCK_12_7_1_8032, 1-index);
    window_buf501_buf501d_o->release(*window_buf501_buf501d_o, LOCK_12_7_2_0, LOCK_12_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_7_bounds > 0)
      --proc_12_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}