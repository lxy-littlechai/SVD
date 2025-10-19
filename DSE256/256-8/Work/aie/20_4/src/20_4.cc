// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/20_4/src/20_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_4_0_0 16
#define LOCK_19_4_1_0 17
#define LOCK_20_4_2_0 50
#define LOCK_20_4_3_0 51
#define LOCK_20_5_0_0 32
#define LOCK_20_5_1_0 33
#define LOCK_20_5_2_0 34
#define LOCK_20_5_3_0 35

// Declare shared memory buffers
v4float buf304[65];
v4float buf304d[65];
v4float buf309[65];
v4float buf309d[65];
v4float buf320[65];
v4float buf320d[65];
v4float buf325[65];
v4float buf325d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf304_buf304d_i[1] = {{(float*)buf304, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf309_buf309d_i[1] = {{(float*)buf309, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf320_buf320d_o[1] = {{(float*)buf320, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf325_buf325d_o[1] = {{(float*)buf325, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_20_4_bounds = sync_buffer[1];

  while (proc_20_4_bounds)
  {

    // Kernel call : i157:orthogonalize<256>
    window_buf304_buf304d_i->setData(*window_buf304_buf304d_i, (float*)buf304, (float*)buf304d, 1-index, 0);
    window_buf304_buf304d_i->acquire(*window_buf304_buf304d_i, LOCK_19_4_0_0, LOCK_19_4_1_0, 1-index);
    window_buf309_buf309d_i->setData(*window_buf309_buf309d_i, (float*)buf309, (float*)buf309d, 1-index, 0);
    window_buf309_buf309d_i->acquire(*window_buf309_buf309d_i, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    window_buf320_buf320d_o->setData(*window_buf320_buf320d_o, (float*)buf320, (float*)buf320d, 1-index, 0);
    window_buf320_buf320d_o->acquire(*window_buf320_buf320d_o, LOCK_20_5_0_0, LOCK_20_5_1_0, 1-index);
    window_buf325_buf325d_o->setData(*window_buf325_buf325d_o, (float*)buf325, (float*)buf325d, 1-index, 0);
    window_buf325_buf325d_o->acquire(*window_buf325_buf325d_o, LOCK_20_5_2_0, LOCK_20_5_3_0, 1-index);
    orthogonalize<256>(window_buf304_buf304d_i[0],window_buf309_buf309d_i[0],window_buf320_buf320d_o[0],window_buf325_buf325d_o[0]);
    window_buf304_buf304d_i->release(*window_buf304_buf304d_i, LOCK_19_4_0_0, LOCK_19_4_1_0, 1-index);
    window_buf309_buf309d_i->release(*window_buf309_buf309d_i, LOCK_20_4_2_0, LOCK_20_4_3_0, 1-index);
    window_buf320_buf320d_o->release(*window_buf320_buf320d_o, LOCK_20_5_0_0, LOCK_20_5_1_0, 1-index);
    window_buf325_buf325d_o->release(*window_buf325_buf325d_o, LOCK_20_5_2_0, LOCK_20_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_20_4_bounds > 0)
      --proc_20_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}