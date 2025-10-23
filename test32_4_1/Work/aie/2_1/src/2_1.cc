// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/2_1/src/2_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_1_2_4256 18
#define LOCK_2_1_3_8032 19
#define LOCK_3_1_4_0 52
#define LOCK_3_1_5_0 53
#define LOCK_2_2_0_8032 32
#define LOCK_2_2_1_0 33
#define LOCK_2_2_2_0 34
#define LOCK_2_2_3_0 35

// Declare shared memory buffers
v4float buf10[9];
v4float buf10d[9];
v4float buf13[9];
v4float buf13d[9];
v4float buf18[9];
v4float buf18d[9];
v4float buf21[9];
v4float buf21d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf10_buf10d_i[1] = {{(float*)buf10, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf13_buf13d_i[1] = {{(float*)buf13, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf18_buf18d_o[1] = {{(float*)buf18, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf21_buf21d_o[1] = {{(float*)buf21, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_2_1_bounds = sync_buffer[1];

  while (proc_2_1_bounds)
  {

    // Kernel call : i5:orthogonalize<32>
    window_buf10_buf10d_i->setData(*window_buf10_buf10d_i, (float*)buf10, (float*)buf10d, 1-index, 0);
    window_buf10_buf10d_i->acquire(*window_buf10_buf10d_i, LOCK_2_1_2_4256, LOCK_2_1_3_8032, 1-index);
    window_buf13_buf13d_i->setData(*window_buf13_buf13d_i, (float*)buf13, (float*)buf13d, 1-index, 0);
    window_buf13_buf13d_i->acquire(*window_buf13_buf13d_i, LOCK_3_1_4_0, LOCK_3_1_5_0, 1-index);
    window_buf18_buf18d_o->setData(*window_buf18_buf18d_o, (float*)buf18, (float*)buf18d, 1-index, 0);
    window_buf18_buf18d_o->acquire(*window_buf18_buf18d_o, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf21_buf21d_o->setData(*window_buf21_buf21d_o, (float*)buf21, (float*)buf21d, 1-index, 0);
    window_buf21_buf21d_o->acquire(*window_buf21_buf21d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    orthogonalize<32>(window_buf10_buf10d_i[0],window_buf13_buf13d_i[0],window_buf18_buf18d_o[0],window_buf21_buf21d_o[0]);
    window_buf10_buf10d_i->release(*window_buf10_buf10d_i, LOCK_2_1_2_4256, LOCK_2_1_3_8032, 1-index);
    window_buf13_buf13d_i->release(*window_buf13_buf13d_i, LOCK_3_1_4_0, LOCK_3_1_5_0, 1-index);
    window_buf18_buf18d_o->release(*window_buf18_buf18d_o, LOCK_2_2_0_8032, LOCK_2_2_1_0, 1-index);
    window_buf21_buf21d_o->release(*window_buf21_buf21d_o, LOCK_2_2_2_0, LOCK_2_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_2_1_bounds > 0)
      --proc_2_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}