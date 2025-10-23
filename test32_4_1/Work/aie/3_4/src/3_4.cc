// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/3_4/src/3_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_4_0_8032 16
#define LOCK_2_4_1_0 17
#define LOCK_3_4_2_0 50
#define LOCK_3_4_3_0 51
#define LOCK_3_5_0_0 32
#define LOCK_3_5_1_0 33
#define LOCK_3_5_2_0 34
#define LOCK_3_5_3_0 35

// Declare shared memory buffers
v4float buf32[9];
v4float buf32d[9];
v4float buf36[9];
v4float buf36d[9];
v4float buf40[9];
v4float buf40d[9];
v4float buf44[9];
v4float buf44d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf32_buf32d_i[1] = {{(float*)buf32, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_i[1] = {{(float*)buf36, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf40_buf40d_o[1] = {{(float*)buf40, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf44_buf44d_o[1] = {{(float*)buf44, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_4_bounds = sync_buffer[1];

  while (proc_3_4_bounds)
  {

    // Kernel call : i18:orthogonalize<32>
    window_buf32_buf32d_i->setData(*window_buf32_buf32d_i, (float*)buf32, (float*)buf32d, 1-index, 0);
    window_buf32_buf32d_i->acquire(*window_buf32_buf32d_i, LOCK_2_4_0_8032, LOCK_2_4_1_0, 1-index);
    window_buf36_buf36d_i->setData(*window_buf36_buf36d_i, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_i->acquire(*window_buf36_buf36d_i, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    window_buf40_buf40d_o->setData(*window_buf40_buf40d_o, (float*)buf40, (float*)buf40d, 1-index, 0);
    window_buf40_buf40d_o->acquire(*window_buf40_buf40d_o, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf44_buf44d_o->setData(*window_buf44_buf44d_o, (float*)buf44, (float*)buf44d, 1-index, 0);
    window_buf44_buf44d_o->acquire(*window_buf44_buf44d_o, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    orthogonalize<32>(window_buf32_buf32d_i[0],window_buf36_buf36d_i[0],window_buf40_buf40d_o[0],window_buf44_buf44d_o[0]);
    window_buf32_buf32d_i->release(*window_buf32_buf32d_i, LOCK_2_4_0_8032, LOCK_2_4_1_0, 1-index);
    window_buf36_buf36d_i->release(*window_buf36_buf36d_i, LOCK_3_4_2_0, LOCK_3_4_3_0, 1-index);
    window_buf40_buf40d_o->release(*window_buf40_buf40d_o, LOCK_3_5_0_0, LOCK_3_5_1_0, 1-index);
    window_buf44_buf44d_o->release(*window_buf44_buf44d_o, LOCK_3_5_2_0, LOCK_3_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_4_bounds > 0)
      --proc_3_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}