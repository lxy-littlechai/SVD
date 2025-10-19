// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/0_7/src/0_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_7_4_1056 20
#define LOCK_0_7_5_0 21
#define LOCK_0_6_2_0 2
#define LOCK_0_6_3_0 3

// Declare shared memory buffers
v4float buf270[65];
v4float buf270d[65];
v4float buf271[65];
v4float buf271d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf270_buf270d_i[1] = {{(float*)buf270, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf271_buf271d_o[1] = {{(float*)buf271, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_7_bounds = sync_buffer[1];

  while (proc_0_7_bounds)
  {

    // Kernel call : i135:normalize<256>
    window_buf270_buf270d_i->setData(*window_buf270_buf270d_i, (float*)buf270, (float*)buf270d, 1-index, 0);
    window_buf270_buf270d_i->acquire(*window_buf270_buf270d_i, LOCK_0_7_4_1056, LOCK_0_7_5_0, 1-index);
    window_buf271_buf271d_o->setData(*window_buf271_buf271d_o, (float*)buf271, (float*)buf271d, 1-index, 0);
    window_buf271_buf271d_o->acquire(*window_buf271_buf271d_o, LOCK_0_6_2_0, LOCK_0_6_3_0, 1-index);
    normalize<256>(window_buf270_buf270d_i[0],window_buf271_buf271d_o[0]);
    window_buf270_buf270d_i->release(*window_buf270_buf270d_i, LOCK_0_7_4_1056, LOCK_0_7_5_0, 1-index);
    window_buf271_buf271d_o->release(*window_buf271_buf271d_o, LOCK_0_6_2_0, LOCK_0_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_7_bounds > 0)
      --proc_0_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}