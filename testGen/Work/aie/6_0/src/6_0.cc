// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/6_0/src/6_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_6_0_0_0 48
#define LOCK_6_0_1_0 49
#define LOCK_6_1_4_0 36
#define LOCK_6_1_5_0 37
#define LOCK_6_1_2_4256 34
#define LOCK_6_1_3_8032 35
#define LOCK_6_1_0_160 32
#define LOCK_6_1_1_160 33

// Declare shared memory buffers
v4float buf10[9];
v4float buf10d[9];
v4float buf11[9];
v4float buf11d[9];
v4float buf32[9];
v4float buf32d[9];
v4float buf33[9];
v4float buf33d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf10_buf10d_i[1] = {{(float*)buf10, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf11_buf11d_i[1] = {{(float*)buf11, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_o[1] = {{(float*)buf32, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf33_buf33d_o[1] = {{(float*)buf33, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_0_bounds = sync_buffer[1];

  while (proc_6_0_bounds)
  {

    // Kernel call : i5:orthogonalize<32>
    window_buf10_buf10d_i->setData(*window_buf10_buf10d_i, (float*)buf10, (float*)buf10d, 1-index, 0);
    window_buf10_buf10d_i->acquire(*window_buf10_buf10d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf11_buf11d_i->setData(*window_buf11_buf11d_i, (float*)buf11, (float*)buf11d, 1-index, 0);
    window_buf11_buf11d_i->acquire(*window_buf11_buf11d_i, LOCK_6_1_4_0, LOCK_6_1_5_0, 1-index);
    window_buf32_buf32d_o->setData(*window_buf32_buf32d_o, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_o->acquire(*window_buf32_buf32d_o, LOCK_6_1_2_4256, LOCK_6_1_3_8032, 1-index);
    window_buf33_buf33d_o->setData(*window_buf33_buf33d_o, (float*)buf33, (float*)buf33d, 1-index, 0);
    window_buf33_buf33d_o->acquire(*window_buf33_buf33d_o, LOCK_6_1_0_160, LOCK_6_1_1_160, 1-index);
    orthogonalize<32>(window_buf10_buf10d_i[0],window_buf11_buf11d_i[0],window_buf32_buf32d_o[0],window_buf33_buf33d_o[0]);
    window_buf10_buf10d_i->release(*window_buf10_buf10d_i, LOCK_6_0_0_0, LOCK_6_0_1_0, 1-index);
    window_buf11_buf11d_i->release(*window_buf11_buf11d_i, LOCK_6_1_4_0, LOCK_6_1_5_0, 1-index);
    window_buf32_buf32d_o->release(*window_buf32_buf32d_o, LOCK_6_1_2_4256, LOCK_6_1_3_8032, 1-index);
    window_buf33_buf33d_o->release(*window_buf33_buf33d_o, LOCK_6_1_0_160, LOCK_6_1_1_160, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_0_bounds > 0)
      --proc_6_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}