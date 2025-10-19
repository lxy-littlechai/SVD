// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/3_0/src/3_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_2_0_0_0 16
#define LOCK_2_0_1_0 17
#define LOCK_2_0_2_0 18
#define LOCK_2_0_3_7136 19
#define LOCK_3_1_0_3040 32
#define LOCK_3_1_1_2080 33
#define LOCK_3_1_2_0 34
#define LOCK_3_1_3_0 35

// Declare shared memory buffers
v4float buf20[65];
v4float buf20d[65];
v4float buf21[65];
v4float buf21d[65];
v4float buf4[65];
v4float buf4d[65];
v4float buf5[65];
v4float buf5d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf4_buf4d_i[1] = {{(float*)buf4, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf5_buf5d_i[1] = {{(float*)buf5, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf20_buf20d_o[1] = {{(float*)buf20, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf21_buf21d_o[1] = {{(float*)buf21, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_3_0_bounds = sync_buffer[1];

  while (proc_3_0_bounds)
  {

    // Kernel call : i2:orthogonalize<256>
    window_buf4_buf4d_i->setData(*window_buf4_buf4d_i, (float*)buf4, (float*)buf4d, 1-index, 0);
    window_buf4_buf4d_i->acquire(*window_buf4_buf4d_i, LOCK_2_0_0_0, LOCK_2_0_1_0, 1-index);
    window_buf5_buf5d_i->setData(*window_buf5_buf5d_i, (float*)buf5, (float*)buf5d, 1-index, 0);
    window_buf5_buf5d_i->acquire(*window_buf5_buf5d_i, LOCK_2_0_2_0, LOCK_2_0_3_7136, 1-index);
    window_buf20_buf20d_o->setData(*window_buf20_buf20d_o, (float*)buf20, (float*)buf20d, 1-index, 0);
    window_buf20_buf20d_o->acquire(*window_buf20_buf20d_o, LOCK_3_1_0_3040, LOCK_3_1_1_2080, 1-index);
    window_buf21_buf21d_o->setData(*window_buf21_buf21d_o, (float*)buf21, (float*)buf21d, 1-index, 0);
    window_buf21_buf21d_o->acquire(*window_buf21_buf21d_o, LOCK_3_1_2_0, LOCK_3_1_3_0, 1-index);
    orthogonalize<256>(window_buf4_buf4d_i[0],window_buf5_buf5d_i[0],window_buf20_buf20d_o[0],window_buf21_buf21d_o[0]);
    window_buf4_buf4d_i->release(*window_buf4_buf4d_i, LOCK_2_0_0_0, LOCK_2_0_1_0, 1-index);
    window_buf5_buf5d_i->release(*window_buf5_buf5d_i, LOCK_2_0_2_0, LOCK_2_0_3_7136, 1-index);
    window_buf20_buf20d_o->release(*window_buf20_buf20d_o, LOCK_3_1_0_3040, LOCK_3_1_1_2080, 1-index);
    window_buf21_buf21d_o->release(*window_buf21_buf21d_o, LOCK_3_1_2_0, LOCK_3_1_3_0, 1-index);
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