// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_2_4/./Work/aie/11_0/src/11_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_10_0_0_0 16
#define LOCK_10_0_1_8032 17
#define LOCK_10_0_2_0 18
#define LOCK_10_0_3_4256 19
#define LOCK_11_1_0_0 32
#define LOCK_11_1_1_0 33
#define LOCK_11_1_2_0 34
#define LOCK_11_1_3_0 35

// Declare shared memory buffers
v4float buf32[9];
v4float buf32d[9];
v4float buf33[9];
v4float buf33d[9];
v4float buf36[9];
v4float buf36d[9];
v4float buf37[9];
v4float buf37d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_i[1] = {{(float*)buf32, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33_buf33d_i[1] = {{(float*)buf33, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_o[1] = {{(float*)buf36, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_o[1] = {{(float*)buf37, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_11_0_bounds = sync_buffer[1];

  while (proc_11_0_bounds)
  {

    // Kernel call : i28:orthogonalize<32>
    window_buf32_buf32d_i->setData(*window_buf32_buf32d_i, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_i->acquire(*window_buf32_buf32d_i, LOCK_10_0_0_0, LOCK_10_0_1_8032, 1-index);
    window_buf33_buf33d_i->setData(*window_buf33_buf33d_i, (float*)buf33, (float*)buf33d, 1-index, 0);
    window_buf33_buf33d_i->acquire(*window_buf33_buf33d_i, LOCK_10_0_2_0, LOCK_10_0_3_4256, 1-index);
    window_buf36_buf36d_o->setData(*window_buf36_buf36d_o, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_o->acquire(*window_buf36_buf36d_o, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    window_buf37_buf37d_o->setData(*window_buf37_buf37d_o, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_o->acquire(*window_buf37_buf37d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    orthogonalize<32>(window_buf32_buf32d_i[0],window_buf33_buf33d_i[0],window_buf36_buf36d_o[0],window_buf37_buf37d_o[0]);
    window_buf32_buf32d_i->release(*window_buf32_buf32d_i, LOCK_10_0_0_0, LOCK_10_0_1_8032, 1-index);
    window_buf33_buf33d_i->release(*window_buf33_buf33d_i, LOCK_10_0_2_0, LOCK_10_0_3_4256, 1-index);
    window_buf36_buf36d_o->release(*window_buf36_buf36d_o, LOCK_11_1_0_0, LOCK_11_1_1_0, 1-index);
    window_buf37_buf37d_o->release(*window_buf37_buf37d_o, LOCK_11_1_2_0, LOCK_11_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_11_0_bounds > 0)
      --proc_11_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}