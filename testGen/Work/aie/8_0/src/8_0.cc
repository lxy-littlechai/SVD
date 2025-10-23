// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/8_0/src/8_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_7_0_0_0 16
#define LOCK_7_0_1_0 17
#define LOCK_8_1_4_0 36
#define LOCK_8_1_5_0 37
#define LOCK_8_1_2_4256 34
#define LOCK_8_1_3_8032 35
#define LOCK_8_1_0_160 32
#define LOCK_8_1_1_160 33

// Declare shared memory buffers
v4float buf14[9];
v4float buf14d[9];
v4float buf15[9];
v4float buf15d[9];
v4float buf36[9];
v4float buf36d[9];
v4float buf37[9];
v4float buf37d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf14_buf14d_i[1] = {{(float*)buf14, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf15_buf15d_i[1] = {{(float*)buf15, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf36_buf36d_o[1] = {{(float*)buf36, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf37_buf37d_o[1] = {{(float*)buf37, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_8_0_bounds = sync_buffer[1];

  while (proc_8_0_bounds)
  {

    // Kernel call : i7:orthogonalize<32>
    window_buf14_buf14d_i->setData(*window_buf14_buf14d_i, (float*)buf14, (float*)buf14d, 1-index, 0);
    window_buf14_buf14d_i->acquire(*window_buf14_buf14d_i, LOCK_7_0_0_0, LOCK_7_0_1_0, 1-index);
    window_buf15_buf15d_i->setData(*window_buf15_buf15d_i, (float*)buf15, (float*)buf15d, 1-index, 0);
    window_buf15_buf15d_i->acquire(*window_buf15_buf15d_i, LOCK_8_1_4_0, LOCK_8_1_5_0, 1-index);
    window_buf36_buf36d_o->setData(*window_buf36_buf36d_o, (float*)buf36, (float*)buf36d, 1-index, 0);
    window_buf36_buf36d_o->acquire(*window_buf36_buf36d_o, LOCK_8_1_2_4256, LOCK_8_1_3_8032, 1-index);
    window_buf37_buf37d_o->setData(*window_buf37_buf37d_o, (float*)buf37, (float*)buf37d, 1-index, 0);
    window_buf37_buf37d_o->acquire(*window_buf37_buf37d_o, LOCK_8_1_0_160, LOCK_8_1_1_160, 1-index);
    orthogonalize<32>(window_buf14_buf14d_i[0],window_buf15_buf15d_i[0],window_buf36_buf36d_o[0],window_buf37_buf37d_o[0]);
    window_buf14_buf14d_i->release(*window_buf14_buf14d_i, LOCK_7_0_0_0, LOCK_7_0_1_0, 1-index);
    window_buf15_buf15d_i->release(*window_buf15_buf15d_i, LOCK_8_1_4_0, LOCK_8_1_5_0, 1-index);
    window_buf36_buf36d_o->release(*window_buf36_buf36d_o, LOCK_8_1_2_4256, LOCK_8_1_3_8032, 1-index);
    window_buf37_buf37d_o->release(*window_buf37_buf37d_o, LOCK_8_1_0_160, LOCK_8_1_1_160, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_8_0_bounds > 0)
      --proc_8_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}