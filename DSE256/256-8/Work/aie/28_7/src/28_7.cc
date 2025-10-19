// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/28_7/src/28_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_7_0_0 48
#define LOCK_29_7_1_1056 49
#define LOCK_28_7_0_0 16
#define LOCK_28_7_1_0 17
#define LOCK_28_6_0_1056 0
#define LOCK_28_6_1_1056 1
#define LOCK_28_6_2_0 2
#define LOCK_28_6_3_0 3

// Declare shared memory buffers
v4float buf355dr[65];
v4float buf355r[65];
v4float buf359dr[65];
v4float buf359r[65];
v4float buf371[65];
v4float buf371d[65];
v4float buf375[65];
v4float buf375d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf355r_buf355dr_i[1] = {{(float*)buf355r, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf359r_buf359dr_i[1] = {{(float*)buf359r, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf371_buf371d_o[1] = {{(float*)buf371, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf375_buf375d_o[1] = {{(float*)buf375, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_28_7_bounds = sync_buffer[1];

  while (proc_28_7_bounds)
  {

    // Kernel call : i180:orthogonalize<256>
    window_buf355r_buf355dr_i->setData(*window_buf355r_buf355dr_i, (float*)buf355r, (float*)buf355dr, 1-index, 0);
    window_buf355r_buf355dr_i->acquire(*window_buf355r_buf355dr_i, LOCK_29_7_0_0, LOCK_29_7_1_1056, 1-index);
    window_buf359r_buf359dr_i->setData(*window_buf359r_buf359dr_i, (float*)buf359r, (float*)buf359dr, 1-index, 0);
    window_buf359r_buf359dr_i->acquire(*window_buf359r_buf359dr_i, LOCK_28_7_0_0, LOCK_28_7_1_0, 1-index);
    window_buf371_buf371d_o->setData(*window_buf371_buf371d_o, (float*)buf371, (float*)buf371d, 1-index, 0);
    window_buf371_buf371d_o->acquire(*window_buf371_buf371d_o, LOCK_28_6_0_1056, LOCK_28_6_1_1056, 1-index);
    window_buf375_buf375d_o->setData(*window_buf375_buf375d_o, (float*)buf375, (float*)buf375d, 1-index, 0);
    window_buf375_buf375d_o->acquire(*window_buf375_buf375d_o, LOCK_28_6_2_0, LOCK_28_6_3_0, 1-index);
    orthogonalize<256>(window_buf355r_buf355dr_i[0],window_buf359r_buf359dr_i[0],window_buf371_buf371d_o[0],window_buf375_buf375d_o[0]);
    window_buf355r_buf355dr_i->release(*window_buf355r_buf355dr_i, LOCK_29_7_0_0, LOCK_29_7_1_1056, 1-index);
    window_buf359r_buf359dr_i->release(*window_buf359r_buf359dr_i, LOCK_28_7_0_0, LOCK_28_7_1_0, 1-index);
    window_buf371_buf371d_o->release(*window_buf371_buf371d_o, LOCK_28_6_0_1056, LOCK_28_6_1_1056, 1-index);
    window_buf375_buf375d_o->release(*window_buf375_buf375d_o, LOCK_28_6_2_0, LOCK_28_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_28_7_bounds > 0)
      --proc_28_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}