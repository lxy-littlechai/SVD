// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/25_5/src/25_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_5_0_0 16
#define LOCK_25_5_1_0 17
#define LOCK_26_5_0_0 48
#define LOCK_26_5_1_0 49
#define LOCK_25_6_0_0 32
#define LOCK_25_6_1_0 33
#define LOCK_25_6_2_0 34
#define LOCK_25_6_3_0 35

// Declare shared memory buffers
v4float buf330[65];
v4float buf330d[65];
v4float buf332[65];
v4float buf332d[65];
v4float buf346[65];
v4float buf346d[65];
v4float buf348[65];
v4float buf348d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf330_buf330d_i[1] = {{(float*)buf330, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf332_buf332d_i[1] = {{(float*)buf332, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf346_buf346d_o[1] = {{(float*)buf346, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf348_buf348d_o[1] = {{(float*)buf348, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_5_bounds = sync_buffer[1];

  while (proc_25_5_bounds)
  {

    // Kernel call : i170:orthogonalize<256>
    window_buf330_buf330d_i->setData(*window_buf330_buf330d_i, (float*)buf330, (float*)buf330d, 1-index, 0);
    window_buf330_buf330d_i->acquire(*window_buf330_buf330d_i, LOCK_25_5_0_0, LOCK_25_5_1_0, 1-index);
    window_buf332_buf332d_i->setData(*window_buf332_buf332d_i, (float*)buf332, (float*)buf332d, 1-index, 0);
    window_buf332_buf332d_i->acquire(*window_buf332_buf332d_i, LOCK_26_5_0_0, LOCK_26_5_1_0, 1-index);
    window_buf346_buf346d_o->setData(*window_buf346_buf346d_o, (float*)buf346, (float*)buf346d, 1-index, 0);
    window_buf346_buf346d_o->acquire(*window_buf346_buf346d_o, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf348_buf348d_o->setData(*window_buf348_buf348d_o, (float*)buf348, (float*)buf348d, 1-index, 0);
    window_buf348_buf348d_o->acquire(*window_buf348_buf348d_o, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    orthogonalize<256>(window_buf330_buf330d_i[0],window_buf332_buf332d_i[0],window_buf346_buf346d_o[0],window_buf348_buf348d_o[0]);
    window_buf330_buf330d_i->release(*window_buf330_buf330d_i, LOCK_25_5_0_0, LOCK_25_5_1_0, 1-index);
    window_buf332_buf332d_i->release(*window_buf332_buf332d_i, LOCK_26_5_0_0, LOCK_26_5_1_0, 1-index);
    window_buf346_buf346d_o->release(*window_buf346_buf346d_o, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf348_buf348d_o->release(*window_buf348_buf348d_o, LOCK_25_6_2_0, LOCK_25_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_5_bounds > 0)
      --proc_25_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}