// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/2_6/src/2_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_1_6_0_3936 16
#define LOCK_1_6_1_2080 17
#define LOCK_2_6_2_0 50
#define LOCK_2_6_3_0 51
#define LOCK_2_7_0_8032 32
#define LOCK_2_7_1_0 33
#define LOCK_2_7_2_0 34
#define LOCK_2_7_3_0 35

// Declare shared memory buffers
v4float buf51[9];
v4float buf51d[9];
v4float buf52[9];
v4float buf52d[9];
v4float buf59[9];
v4float buf59d[9];
v4float buf60[9];
v4float buf60d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf51_buf51d_i[1] = {{(float*)buf51, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_i[1] = {{(float*)buf52, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf59_buf59d_o[1] = {{(float*)buf59, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf60_buf60d_o[1] = {{(float*)buf60, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_6_bounds = sync_buffer[1];

  while (proc_2_6_bounds)
  {

    // Kernel call : i25:orthogonalize<32>
    window_buf51_buf51d_i->setData(*window_buf51_buf51d_i, (float*)buf51, (float*)buf51d, 1-index, 0);
    window_buf51_buf51d_i->acquire(*window_buf51_buf51d_i, LOCK_1_6_0_3936, LOCK_1_6_1_2080, 1-index);
    window_buf52_buf52d_i->setData(*window_buf52_buf52d_i, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_i->acquire(*window_buf52_buf52d_i, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    window_buf59_buf59d_o->setData(*window_buf59_buf59d_o, (float*)buf59, (float*)buf59d, 1-index, 0);
    window_buf59_buf59d_o->acquire(*window_buf59_buf59d_o, LOCK_2_7_0_8032, LOCK_2_7_1_0, 1-index);
    window_buf60_buf60d_o->setData(*window_buf60_buf60d_o, (float*)buf60, (float*)buf60d, 1-index, 0);
    window_buf60_buf60d_o->acquire(*window_buf60_buf60d_o, LOCK_2_7_2_0, LOCK_2_7_3_0, 1-index);
    orthogonalize<32>(window_buf51_buf51d_i[0],window_buf52_buf52d_i[0],window_buf59_buf59d_o[0],window_buf60_buf60d_o[0]);
    window_buf51_buf51d_i->release(*window_buf51_buf51d_i, LOCK_1_6_0_3936, LOCK_1_6_1_2080, 1-index);
    window_buf52_buf52d_i->release(*window_buf52_buf52d_i, LOCK_2_6_2_0, LOCK_2_6_3_0, 1-index);
    window_buf59_buf59d_o->release(*window_buf59_buf59d_o, LOCK_2_7_0_8032, LOCK_2_7_1_0, 1-index);
    window_buf60_buf60d_o->release(*window_buf60_buf60d_o, LOCK_2_7_2_0, LOCK_2_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_6_bounds > 0)
      --proc_2_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}