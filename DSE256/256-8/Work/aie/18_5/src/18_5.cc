// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/18_5/src/18_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_4_0_0 0
#define LOCK_18_4_1_0 1
#define LOCK_18_4_2_0 2
#define LOCK_18_4_3_0 3

// Declare shared memory buffers
v4float buf534[65];
v4float buf534d[65];
v4float buf535[65];
v4float buf535d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf534_buf534d_i[1] = {{(float*)buf534, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf535_buf535d_o[1] = {{(float*)buf535, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_5_bounds = sync_buffer[1];

  while (proc_18_5_bounds)
  {

    // Kernel call : i271:normalize<256>
    window_buf534_buf534d_i->setData(*window_buf534_buf534d_i, (float*)buf534, (float*)buf534d, 1-index, 0);
    window_buf534_buf534d_i->acquire(*window_buf534_buf534d_i, LOCK_18_4_0_0, LOCK_18_4_1_0, 1-index);
    window_buf535_buf535d_o->setData(*window_buf535_buf535d_o, (float*)buf535, (float*)buf535d, 1-index, 0);
    window_buf535_buf535d_o->acquire(*window_buf535_buf535d_o, LOCK_18_4_2_0, LOCK_18_4_3_0, 1-index);
    normalize<256>(window_buf534_buf534d_i[0],window_buf535_buf535d_o[0]);
    window_buf534_buf534d_i->release(*window_buf534_buf534d_i, LOCK_18_4_0_0, LOCK_18_4_1_0, 1-index);
    window_buf535_buf535d_o->release(*window_buf535_buf535d_o, LOCK_18_4_2_0, LOCK_18_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_5_bounds > 0)
      --proc_18_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}