// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/29_1/src/29_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_1_0_8032 16
#define LOCK_29_1_1_0 17
#define LOCK_30_1_2_0 50
#define LOCK_30_1_3_0 51
#define LOCK_29_2_0_3936 32
#define LOCK_29_2_1_2080 33
#define LOCK_29_2_2_0 34
#define LOCK_29_2_3_0 35

// Declare shared memory buffers
v4float buf335[9];
v4float buf335d[9];
v4float buf346[9];
v4float buf346d[9];
v4float buf357[9];
v4float buf357d[9];
v4float buf368[9];
v4float buf368d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf335_buf335d_i[1] = {{(float*)buf335, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf346_buf346d_i[1] = {{(float*)buf346, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf357_buf357d_o[1] = {{(float*)buf357, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf368_buf368d_o[1] = {{(float*)buf368, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_1_bounds = sync_buffer[1];

  while (proc_29_1_bounds)
  {

    // Kernel call : i169:orthogonalize<32>
    window_buf335_buf335d_i->setData(*window_buf335_buf335d_i, (float*)buf335, (float*)buf335d, 1-index, 0);
    window_buf335_buf335d_i->acquire(*window_buf335_buf335d_i, LOCK_29_1_0_8032, LOCK_29_1_1_0, 1-index);
    window_buf346_buf346d_i->setData(*window_buf346_buf346d_i, (float*)buf346, (float*)buf346d, 1-index, 0);
    window_buf346_buf346d_i->acquire(*window_buf346_buf346d_i, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    window_buf357_buf357d_o->setData(*window_buf357_buf357d_o, (float*)buf357, (float*)buf357d, 1-index, 0);
    window_buf357_buf357d_o->acquire(*window_buf357_buf357d_o, LOCK_29_2_0_3936, LOCK_29_2_1_2080, 1-index);
    window_buf368_buf368d_o->setData(*window_buf368_buf368d_o, (float*)buf368, (float*)buf368d, 1-index, 0);
    window_buf368_buf368d_o->acquire(*window_buf368_buf368d_o, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    orthogonalize<32>(window_buf335_buf335d_i[0],window_buf346_buf346d_i[0],window_buf357_buf357d_o[0],window_buf368_buf368d_o[0]);
    window_buf335_buf335d_i->release(*window_buf335_buf335d_i, LOCK_29_1_0_8032, LOCK_29_1_1_0, 1-index);
    window_buf346_buf346d_i->release(*window_buf346_buf346d_i, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    window_buf357_buf357d_o->release(*window_buf357_buf357d_o, LOCK_29_2_0_3936, LOCK_29_2_1_2080, 1-index);
    window_buf368_buf368d_o->release(*window_buf368_buf368d_o, LOCK_29_2_2_0, LOCK_29_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_1_bounds > 0)
      --proc_29_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}