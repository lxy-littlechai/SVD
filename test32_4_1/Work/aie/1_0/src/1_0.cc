// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/1_0/src/1_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_0_0_8032 16
#define LOCK_0_0_1_0 17
#define LOCK_0_0_2_8032 18
#define LOCK_0_0_3_0 19
#define LOCK_1_1_0_8032 32
#define LOCK_1_1_1_0 33
#define LOCK_1_1_2_0 34
#define LOCK_1_1_3_0 35

// Declare shared memory buffers
v4float buf0[9];
v4float buf0d[9];
v4float buf1[9];
v4float buf1d[9];
v4float buf8[9];
v4float buf8d[9];
v4float buf9[9];
v4float buf9d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf0_buf0d_i[1] = {{(float*)buf0, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf1_buf1d_i[1] = {{(float*)buf1, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf8_buf8d_o[1] = {{(float*)buf8, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf9_buf9d_o[1] = {{(float*)buf9, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_1_0_bounds = sync_buffer[1];

  while (proc_1_0_bounds)
  {

    // Kernel call : i0:orthogonalize<32>
    window_buf0_buf0d_i->setData(*window_buf0_buf0d_i, (float*)buf0, (float*)buf0d, 1-index, 0);
    window_buf0_buf0d_i->acquire(*window_buf0_buf0d_i, LOCK_0_0_0_8032, LOCK_0_0_1_0, 1-index);
    window_buf1_buf1d_i->setData(*window_buf1_buf1d_i, (float*)buf1, (float*)buf1d, 1-index, 0);
    window_buf1_buf1d_i->acquire(*window_buf1_buf1d_i, LOCK_0_0_2_8032, LOCK_0_0_3_0, 1-index);
    window_buf8_buf8d_o->setData(*window_buf8_buf8d_o, (float*)buf8, (float*)buf8d, 1-index, 0);
    window_buf8_buf8d_o->acquire(*window_buf8_buf8d_o, LOCK_1_1_0_8032, LOCK_1_1_1_0, 1-index);
    window_buf9_buf9d_o->setData(*window_buf9_buf9d_o, (float*)buf9, (float*)buf9d, 1-index, 0);
    window_buf9_buf9d_o->acquire(*window_buf9_buf9d_o, LOCK_1_1_2_0, LOCK_1_1_3_0, 1-index);
    orthogonalize<32>(window_buf0_buf0d_i[0],window_buf1_buf1d_i[0],window_buf8_buf8d_o[0],window_buf9_buf9d_o[0]);
    window_buf0_buf0d_i->release(*window_buf0_buf0d_i, LOCK_0_0_0_8032, LOCK_0_0_1_0, 1-index);
    window_buf1_buf1d_i->release(*window_buf1_buf1d_i, LOCK_0_0_2_8032, LOCK_0_0_3_0, 1-index);
    window_buf8_buf8d_o->release(*window_buf8_buf8d_o, LOCK_1_1_0_8032, LOCK_1_1_1_0, 1-index);
    window_buf9_buf9d_o->release(*window_buf9_buf9d_o, LOCK_1_1_2_0, LOCK_1_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_1_0_bounds > 0)
      --proc_1_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}