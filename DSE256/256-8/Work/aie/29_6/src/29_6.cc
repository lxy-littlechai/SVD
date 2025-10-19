// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/29_6/src/29_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_28_6_0_1056 16
#define LOCK_28_6_1_1056 17
#define LOCK_29_6_2_0 50
#define LOCK_29_6_3_0 51
#define LOCK_29_5_0_7136 0
#define LOCK_29_5_1_0 1
#define LOCK_29_5_2_0 2
#define LOCK_29_5_3_0 3

// Declare shared memory buffers
v4float buf371[65];
v4float buf371d[65];
v4float buf377[65];
v4float buf377d[65];
v4float buf387[65];
v4float buf387d[65];
v4float buf393[65];
v4float buf393d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf371_buf371d_i[1] = {{(float*)buf371, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf377_buf377d_i[1] = {{(float*)buf377, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf387_buf387d_o[1] = {{(float*)buf387, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf393_buf393d_o[1] = {{(float*)buf393, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_6_bounds = sync_buffer[1];

  while (proc_29_6_bounds)
  {

    // Kernel call : i189:orthogonalize<256>
    window_buf371_buf371d_i->setData(*window_buf371_buf371d_i, (float*)buf371, (float*)buf371d, 1-index, 0);
    window_buf371_buf371d_i->acquire(*window_buf371_buf371d_i, LOCK_28_6_0_1056, LOCK_28_6_1_1056, 1-index);
    window_buf377_buf377d_i->setData(*window_buf377_buf377d_i, (float*)buf377, (float*)buf377d, 1-index, 0);
    window_buf377_buf377d_i->acquire(*window_buf377_buf377d_i, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    window_buf387_buf387d_o->setData(*window_buf387_buf387d_o, (float*)buf387, (float*)buf387d, 1-index, 0);
    window_buf387_buf387d_o->acquire(*window_buf387_buf387d_o, LOCK_29_5_0_7136, LOCK_29_5_1_0, 1-index);
    window_buf393_buf393d_o->setData(*window_buf393_buf393d_o, (float*)buf393, (float*)buf393d, 1-index, 0);
    window_buf393_buf393d_o->acquire(*window_buf393_buf393d_o, LOCK_29_5_2_0, LOCK_29_5_3_0, 1-index);
    orthogonalize<256>(window_buf371_buf371d_i[0],window_buf377_buf377d_i[0],window_buf387_buf387d_o[0],window_buf393_buf393d_o[0]);
    window_buf371_buf371d_i->release(*window_buf371_buf371d_i, LOCK_28_6_0_1056, LOCK_28_6_1_1056, 1-index);
    window_buf377_buf377d_i->release(*window_buf377_buf377d_i, LOCK_29_6_2_0, LOCK_29_6_3_0, 1-index);
    window_buf387_buf387d_o->release(*window_buf387_buf387d_o, LOCK_29_5_0_7136, LOCK_29_5_1_0, 1-index);
    window_buf393_buf393d_o->release(*window_buf393_buf393d_o, LOCK_29_5_2_0, LOCK_29_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_6_bounds > 0)
      --proc_29_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}