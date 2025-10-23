// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/17_1/src/17_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_17_1_0_3936 16
#define LOCK_17_1_1_2080 17
#define LOCK_18_1_2_0 50
#define LOCK_18_1_3_0 51
#define LOCK_17_0_0_8032 0
#define LOCK_17_0_1_0 1
#define LOCK_17_0_2_0 2
#define LOCK_17_0_3_0 3

// Declare shared memory buffers
v4float buf289[9];
v4float buf289d[9];
v4float buf304[9];
v4float buf304d[9];
v4float buf311[9];
v4float buf311d[9];
v4float buf326[9];
v4float buf326d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf289_buf289d_i[1] = {{(float*)buf289, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf304_buf304d_i[1] = {{(float*)buf304, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf311_buf311d_o[1] = {{(float*)buf311, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf326_buf326d_o[1] = {{(float*)buf326, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_17_1_bounds = sync_buffer[1];

  while (proc_17_1_bounds)
  {

    // Kernel call : i147:orthogonalize<32>
    window_buf289_buf289d_i->setData(*window_buf289_buf289d_i, (float*)buf289, (float*)buf289d, 1-index, 0);
    window_buf289_buf289d_i->acquire(*window_buf289_buf289d_i, LOCK_17_1_0_3936, LOCK_17_1_1_2080, 1-index);
    window_buf304_buf304d_i->setData(*window_buf304_buf304d_i, (float*)buf304, (float*)buf304d, 1-index, 0);
    window_buf304_buf304d_i->acquire(*window_buf304_buf304d_i, LOCK_18_1_2_0, LOCK_18_1_3_0, 1-index);
    window_buf311_buf311d_o->setData(*window_buf311_buf311d_o, (float*)buf311, (float*)buf311d, 1-index, 0);
    window_buf311_buf311d_o->acquire(*window_buf311_buf311d_o, LOCK_17_0_0_8032, LOCK_17_0_1_0, 1-index);
    window_buf326_buf326d_o->setData(*window_buf326_buf326d_o, (float*)buf326, (float*)buf326d, 1-index, 0);
    window_buf326_buf326d_o->acquire(*window_buf326_buf326d_o, LOCK_17_0_2_0, LOCK_17_0_3_0, 1-index);
    orthogonalize<32>(window_buf289_buf289d_i[0],window_buf304_buf304d_i[0],window_buf311_buf311d_o[0],window_buf326_buf326d_o[0]);
    window_buf289_buf289d_i->release(*window_buf289_buf289d_i, LOCK_17_1_0_3936, LOCK_17_1_1_2080, 1-index);
    window_buf304_buf304d_i->release(*window_buf304_buf304d_i, LOCK_18_1_2_0, LOCK_18_1_3_0, 1-index);
    window_buf311_buf311d_o->release(*window_buf311_buf311d_o, LOCK_17_0_0_8032, LOCK_17_0_1_0, 1-index);
    window_buf326_buf326d_o->release(*window_buf326_buf326d_o, LOCK_17_0_2_0, LOCK_17_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_17_1_bounds > 0)
      --proc_17_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}