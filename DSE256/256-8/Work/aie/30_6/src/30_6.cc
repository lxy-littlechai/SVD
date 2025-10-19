// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/30_6/src/30_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_6_0_3040 16
#define LOCK_29_6_1_2080 17
#define LOCK_30_6_2_2080 50
#define LOCK_30_6_3_0 51
#define LOCK_30_5_0_3040 0
#define LOCK_30_5_1_2080 1
#define LOCK_30_5_2_0 2
#define LOCK_30_5_3_0 3

// Declare shared memory buffers
v4float buf369[65];
v4float buf369d[65];
v4float buf379[65];
v4float buf379d[65];
v4float buf385[65];
v4float buf385d[65];
v4float buf395[65];
v4float buf395d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf369_buf369d_i[1] = {{(float*)buf369, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf379_buf379d_i[1] = {{(float*)buf379, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf385_buf385d_o[1] = {{(float*)buf385, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf395_buf395d_o[1] = {{(float*)buf395, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_6_bounds = sync_buffer[1];

  while (proc_30_6_bounds)
  {

    // Kernel call : i190:orthogonalize<256>
    window_buf369_buf369d_i->setData(*window_buf369_buf369d_i, (float*)buf369, (float*)buf369d, 1-index, 0);
    window_buf369_buf369d_i->acquire(*window_buf369_buf369d_i, LOCK_29_6_0_3040, LOCK_29_6_1_2080, 1-index);
    window_buf379_buf379d_i->setData(*window_buf379_buf379d_i, (float*)buf379, (float*)buf379d, 1-index, 0);
    window_buf379_buf379d_i->acquire(*window_buf379_buf379d_i, LOCK_30_6_2_2080, LOCK_30_6_3_0, 1-index);
    window_buf385_buf385d_o->setData(*window_buf385_buf385d_o, (float*)buf385, (float*)buf385d, 1-index, 0);
    window_buf385_buf385d_o->acquire(*window_buf385_buf385d_o, LOCK_30_5_0_3040, LOCK_30_5_1_2080, 1-index);
    window_buf395_buf395d_o->setData(*window_buf395_buf395d_o, (float*)buf395, (float*)buf395d, 1-index, 0);
    window_buf395_buf395d_o->acquire(*window_buf395_buf395d_o, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    orthogonalize<256>(window_buf369_buf369d_i[0],window_buf379_buf379d_i[0],window_buf385_buf385d_o[0],window_buf395_buf395d_o[0]);
    window_buf369_buf369d_i->release(*window_buf369_buf369d_i, LOCK_29_6_0_3040, LOCK_29_6_1_2080, 1-index);
    window_buf379_buf379d_i->release(*window_buf379_buf379d_i, LOCK_30_6_2_2080, LOCK_30_6_3_0, 1-index);
    window_buf385_buf385d_o->release(*window_buf385_buf385d_o, LOCK_30_5_0_3040, LOCK_30_5_1_2080, 1-index);
    window_buf395_buf395d_o->release(*window_buf395_buf395d_o, LOCK_30_5_2_0, LOCK_30_5_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_6_bounds > 0)
      --proc_30_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}