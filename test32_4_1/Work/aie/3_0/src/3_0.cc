// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/3_0/src/3_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_3_1_0_0 32
#define LOCK_3_1_1_0 33
#define LOCK_3_0_0_0 48
#define LOCK_3_0_1_0 49
#define LOCK_3_1_2_8032 34
#define LOCK_3_1_3_160 35
#define LOCK_3_1_4_0 36
#define LOCK_3_1_5_0 37

// Declare shared memory buffers
v4float buf12[9];
v4float buf12d[9];
v4float buf13[9];
v4float buf13d[9];
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
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf12_buf12d_o[1] = {{(float*)buf12, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf13_buf13d_o[1] = {{(float*)buf13, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_0_bounds = sync_buffer[1];

  while (proc_3_0_bounds)
  {

    // Kernel call : i2:orthogonalize<32>
    window_buf4_buf4d_i->setData(*window_buf4_buf4d_i, (float*)buf4, (float*)buf4d, 1-index, 0);
    window_buf4_buf4d_i->acquire(*window_buf4_buf4d_i, LOCK_3_1_0_0, LOCK_3_1_1_0, 1-index);
    window_buf5_buf5d_i->setData(*window_buf5_buf5d_i, (float*)buf5, (float*)buf5d, 1-index, 0);
    window_buf5_buf5d_i->acquire(*window_buf5_buf5d_i, LOCK_3_0_0_0, LOCK_3_0_1_0, 1-index);
    window_buf12_buf12d_o->setData(*window_buf12_buf12d_o, (float*)buf12, (float*)buf12d, 1-index, 0);
    window_buf12_buf12d_o->acquire(*window_buf12_buf12d_o, LOCK_3_1_2_8032, LOCK_3_1_3_160, 1-index);
    window_buf13_buf13d_o->setData(*window_buf13_buf13d_o, (float*)buf13, (float*)buf13d, 1-index, 0);
    window_buf13_buf13d_o->acquire(*window_buf13_buf13d_o, LOCK_3_1_4_0, LOCK_3_1_5_0, 1-index);
    orthogonalize<32>(window_buf4_buf4d_i[0],window_buf5_buf5d_i[0],window_buf12_buf12d_o[0],window_buf13_buf13d_o[0]);
    window_buf4_buf4d_i->release(*window_buf4_buf4d_i, LOCK_3_1_0_0, LOCK_3_1_1_0, 1-index);
    window_buf5_buf5d_i->release(*window_buf5_buf5d_i, LOCK_3_0_0_0, LOCK_3_0_1_0, 1-index);
    window_buf12_buf12d_o->release(*window_buf12_buf12d_o, LOCK_3_1_2_8032, LOCK_3_1_3_160, 1-index);
    window_buf13_buf13d_o->release(*window_buf13_buf13d_o, LOCK_3_1_4_0, LOCK_3_1_5_0, 1-index);
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