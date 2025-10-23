// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/20_1/src/20_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_20_1_0_0 16
#define LOCK_20_1_1_0 17
#define LOCK_21_1_0_160 48
#define LOCK_21_1_1_160 49
#define LOCK_20_2_0_0 32
#define LOCK_20_2_1_0 33
#define LOCK_20_2_2_0 34
#define LOCK_20_2_3_0 35

// Declare shared memory buffers
v4float buf52[9];
v4float buf52d[9];
v4float buf54[9];
v4float buf54d[9];
v4float buf56[9];
v4float buf56d[9];
v4float buf58[9];
v4float buf58d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf52_buf52d_i[1] = {{(float*)buf52, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf54_buf54d_i[1] = {{(float*)buf54, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf56_buf56d_o[1] = {{(float*)buf56, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf58_buf58d_o[1] = {{(float*)buf58, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_1_bounds = sync_buffer[1];

  while (proc_20_1_bounds)
  {

    // Kernel call : i44:orthogonalize<32>
    window_buf52_buf52d_i->setData(*window_buf52_buf52d_i, (float*)buf52, (float*)buf52d, 1-index, 0);
    window_buf52_buf52d_i->acquire(*window_buf52_buf52d_i, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf54_buf54d_i->setData(*window_buf54_buf54d_i, (float*)buf54, (float*)buf54d, 1-index, 0);
    window_buf54_buf54d_i->acquire(*window_buf54_buf54d_i, LOCK_21_1_0_160, LOCK_21_1_1_160, 1-index);
    window_buf56_buf56d_o->setData(*window_buf56_buf56d_o, (float*)buf56, (float*)buf56d, 1-index, 0);
    window_buf56_buf56d_o->acquire(*window_buf56_buf56d_o, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf58_buf58d_o->setData(*window_buf58_buf58d_o, (float*)buf58, (float*)buf58d, 1-index, 0);
    window_buf58_buf58d_o->acquire(*window_buf58_buf58d_o, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    orthogonalize<32>(window_buf52_buf52d_i[0],window_buf54_buf54d_i[0],window_buf56_buf56d_o[0],window_buf58_buf58d_o[0]);
    window_buf52_buf52d_i->release(*window_buf52_buf52d_i, LOCK_20_1_0_0, LOCK_20_1_1_0, 1-index);
    window_buf54_buf54d_i->release(*window_buf54_buf54d_i, LOCK_21_1_0_160, LOCK_21_1_1_160, 1-index);
    window_buf56_buf56d_o->release(*window_buf56_buf56d_o, LOCK_20_2_0_0, LOCK_20_2_1_0, 1-index);
    window_buf58_buf58d_o->release(*window_buf58_buf58d_o, LOCK_20_2_2_0, LOCK_20_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_1_bounds > 0)
      --proc_20_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}