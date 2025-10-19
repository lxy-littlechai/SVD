// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/6_0/src/6_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_0_0_0 16
#define LOCK_5_0_1_8032 17
#define LOCK_5_0_2_0 18
#define LOCK_5_0_3_8032 19
#define LOCK_6_1_0_3936 32
#define LOCK_6_1_1_2080 33
#define LOCK_6_1_2_0 34
#define LOCK_6_1_3_0 35

// Declare shared memory buffers
v4float buf16[9];
v4float buf16d[9];
v4float buf17[9];
v4float buf17d[9];
v4float buf20[9];
v4float buf20d[9];
v4float buf21[9];
v4float buf21d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf16_buf16d_i[1] = {{(float*)buf16, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf17_buf17d_i[1] = {{(float*)buf17, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_o[1] = {{(float*)buf20, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf21_buf21d_o[1] = {{(float*)buf21, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_0_bounds = sync_buffer[1];

  while (proc_6_0_bounds)
  {

    // Kernel call : i14:orthogonalize<32>
    window_buf16_buf16d_i->setData(*window_buf16_buf16d_i, (float*)buf16, (float*)buf16d, 1-index, 0);
    window_buf16_buf16d_i->acquire(*window_buf16_buf16d_i, LOCK_5_0_0_0, LOCK_5_0_1_8032, 1-index);
    window_buf17_buf17d_i->setData(*window_buf17_buf17d_i, (float*)buf17, (float*)buf17d, 1-index, 0);
    window_buf17_buf17d_i->acquire(*window_buf17_buf17d_i, LOCK_5_0_2_0, LOCK_5_0_3_8032, 1-index);
    window_buf20_buf20d_o->setData(*window_buf20_buf20d_o, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_o->acquire(*window_buf20_buf20d_o, LOCK_6_1_0_3936, LOCK_6_1_1_2080, 1-index);
    window_buf21_buf21d_o->setData(*window_buf21_buf21d_o, (float*)buf21, (float*)buf21d, 1-index, 0);
    window_buf21_buf21d_o->acquire(*window_buf21_buf21d_o, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
    orthogonalize<32>(window_buf16_buf16d_i[0],window_buf17_buf17d_i[0],window_buf20_buf20d_o[0],window_buf21_buf21d_o[0]);
    window_buf16_buf16d_i->release(*window_buf16_buf16d_i, LOCK_5_0_0_0, LOCK_5_0_1_8032, 1-index);
    window_buf17_buf17d_i->release(*window_buf17_buf17d_i, LOCK_5_0_2_0, LOCK_5_0_3_8032, 1-index);
    window_buf20_buf20d_o->release(*window_buf20_buf20d_o, LOCK_6_1_0_3936, LOCK_6_1_1_2080, 1-index);
    window_buf21_buf21d_o->release(*window_buf21_buf21d_o, LOCK_6_1_2_0, LOCK_6_1_3_0, 1-index);
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