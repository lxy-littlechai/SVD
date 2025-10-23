// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/32_3/src/32_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_32_3_0_0 16
#define LOCK_32_3_1_0 17
#define LOCK_33_3_2_0 50
#define LOCK_33_3_3_0 51
#define LOCK_32_4_0_8032 32
#define LOCK_32_4_1_0 33
#define LOCK_32_4_2_0 34
#define LOCK_32_4_3_0 35

// Declare shared memory buffers
v4float buf375[9];
v4float buf375d[9];
v4float buf382[9];
v4float buf382d[9];
v4float buf397[9];
v4float buf397d[9];
v4float buf404[9];
v4float buf404d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf375_buf375d_i[1] = {{(float*)buf375, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf382_buf382d_i[1] = {{(float*)buf382, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf397_buf397d_o[1] = {{(float*)buf397, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf404_buf404d_o[1] = {{(float*)buf404, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_32_3_bounds = sync_buffer[1];

  while (proc_32_3_bounds)
  {

    // Kernel call : i194:orthogonalize<32>
    window_buf375_buf375d_i->setData(*window_buf375_buf375d_i, (float*)buf375, (float*)buf375d, 1-index, 0);
    window_buf375_buf375d_i->acquire(*window_buf375_buf375d_i, LOCK_32_3_0_0, LOCK_32_3_1_0, 1-index);
    window_buf382_buf382d_i->setData(*window_buf382_buf382d_i, (float*)buf382, (float*)buf382d, 1-index, 0);
    window_buf382_buf382d_i->acquire(*window_buf382_buf382d_i, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    window_buf397_buf397d_o->setData(*window_buf397_buf397d_o, (float*)buf397, (float*)buf397d, 1-index, 0);
    window_buf397_buf397d_o->acquire(*window_buf397_buf397d_o, LOCK_32_4_0_8032, LOCK_32_4_1_0, 1-index);
    window_buf404_buf404d_o->setData(*window_buf404_buf404d_o, (float*)buf404, (float*)buf404d, 1-index, 0);
    window_buf404_buf404d_o->acquire(*window_buf404_buf404d_o, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    orthogonalize<32>(window_buf375_buf375d_i[0],window_buf382_buf382d_i[0],window_buf397_buf397d_o[0],window_buf404_buf404d_o[0]);
    window_buf375_buf375d_i->release(*window_buf375_buf375d_i, LOCK_32_3_0_0, LOCK_32_3_1_0, 1-index);
    window_buf382_buf382d_i->release(*window_buf382_buf382d_i, LOCK_33_3_2_0, LOCK_33_3_3_0, 1-index);
    window_buf397_buf397d_o->release(*window_buf397_buf397d_o, LOCK_32_4_0_8032, LOCK_32_4_1_0, 1-index);
    window_buf404_buf404d_o->release(*window_buf404_buf404d_o, LOCK_32_4_2_0, LOCK_32_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_32_3_bounds > 0)
      --proc_32_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}