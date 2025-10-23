// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/3_0/src/3_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_1_4_0 36
#define LOCK_3_1_5_0 37
#define LOCK_3_1_6_0 38
#define LOCK_3_1_7_4416 39
#define LOCK_3_1_2_4256 34
#define LOCK_3_1_3_8032 35
#define LOCK_3_1_0_8032 32
#define LOCK_3_1_1_160 33

// Declare shared memory buffers
v4float buf26[9];
v4float buf26d[9];
v4float buf27[9];
v4float buf27d[9];
v4float buf4[9];
v4float buf4d[9];
v4float buf5[9];
v4float buf5d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf4_buf4d_i[1] = {{(float*)buf4, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf5_buf5d_i[1] = {{(float*)buf5, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf26_buf26d_o[1] = {{(float*)buf26, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf27_buf27d_o[1] = {{(float*)buf27, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_0_bounds = sync_buffer[1];

  while (proc_3_0_bounds)
  {

    // Kernel call : i2:orthogonalize<32>
    window_buf4_buf4d_i->setData(*window_buf4_buf4d_i, (float*)buf4, (float*)buf4d, 1-index, 0);
    window_buf4_buf4d_i->acquire(*window_buf4_buf4d_i, LOCK_3_1_4_0, LOCK_3_1_5_0, 1-index);
    window_buf5_buf5d_i->setData(*window_buf5_buf5d_i, (float*)buf5, (float*)buf5d, 1-index, 0);
    window_buf5_buf5d_i->acquire(*window_buf5_buf5d_i, LOCK_3_1_6_0, LOCK_3_1_7_4416, 1-index);
    window_buf26_buf26d_o->setData(*window_buf26_buf26d_o, (float*)buf26, (float*)buf26d, 1-index, 0);
    window_buf26_buf26d_o->acquire(*window_buf26_buf26d_o, LOCK_3_1_2_4256, LOCK_3_1_3_8032, 1-index);
    window_buf27_buf27d_o->setData(*window_buf27_buf27d_o, (float*)buf27, (float*)buf27d, 1-index, 0);
    window_buf27_buf27d_o->acquire(*window_buf27_buf27d_o, LOCK_3_1_0_8032, LOCK_3_1_1_160, 1-index);
    orthogonalize<32>(window_buf4_buf4d_i[0],window_buf5_buf5d_i[0],window_buf26_buf26d_o[0],window_buf27_buf27d_o[0]);
    window_buf4_buf4d_i->release(*window_buf4_buf4d_i, LOCK_3_1_4_0, LOCK_3_1_5_0, 1-index);
    window_buf5_buf5d_i->release(*window_buf5_buf5d_i, LOCK_3_1_6_0, LOCK_3_1_7_4416, 1-index);
    window_buf26_buf26d_o->release(*window_buf26_buf26d_o, LOCK_3_1_2_4256, LOCK_3_1_3_8032, 1-index);
    window_buf27_buf27d_o->release(*window_buf27_buf27d_o, LOCK_3_1_0_8032, LOCK_3_1_1_160, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_3_0_bounds > 0)
      --proc_3_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}