// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/26_6/src/26_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_25_6_0_0 16
#define LOCK_25_6_1_0 17
#define LOCK_26_6_0_2080 48
#define LOCK_26_6_1_0 49
#define LOCK_26_7_0_7136 32
#define LOCK_26_7_1_0 33
#define LOCK_26_7_2_0 34
#define LOCK_26_7_3_0 35

// Declare shared memory buffers
v4float buf346[65];
v4float buf346d[65];
v4float buf351[65];
v4float buf351d[65];
v4float buf362[65];
v4float buf362d[65];
v4float buf367[65];
v4float buf367d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf346_buf346d_i[1] = {{(float*)buf346, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf351_buf351d_i[1] = {{(float*)buf351, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf362_buf362d_o[1] = {{(float*)buf362, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf367_buf367d_o[1] = {{(float*)buf367, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_26_6_bounds = sync_buffer[1];

  while (proc_26_6_bounds)
  {

    // Kernel call : i179:orthogonalize<256>
    window_buf346_buf346d_i->setData(*window_buf346_buf346d_i, (float*)buf346, (float*)buf346d, 1-index, 0);
    window_buf346_buf346d_i->acquire(*window_buf346_buf346d_i, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf351_buf351d_i->setData(*window_buf351_buf351d_i, (float*)buf351, (float*)buf351d, 1-index, 0);
    window_buf351_buf351d_i->acquire(*window_buf351_buf351d_i, LOCK_26_6_0_2080, LOCK_26_6_1_0, 1-index);
    window_buf362_buf362d_o->setData(*window_buf362_buf362d_o, (float*)buf362, (float*)buf362d, 1-index, 0);
    window_buf362_buf362d_o->acquire(*window_buf362_buf362d_o, LOCK_26_7_0_7136, LOCK_26_7_1_0, 1-index);
    window_buf367_buf367d_o->setData(*window_buf367_buf367d_o, (float*)buf367, (float*)buf367d, 1-index, 0);
    window_buf367_buf367d_o->acquire(*window_buf367_buf367d_o, LOCK_26_7_2_0, LOCK_26_7_3_0, 1-index);
    orthogonalize<256>(window_buf346_buf346d_i[0],window_buf351_buf351d_i[0],window_buf362_buf362d_o[0],window_buf367_buf367d_o[0]);
    window_buf346_buf346d_i->release(*window_buf346_buf346d_i, LOCK_25_6_0_0, LOCK_25_6_1_0, 1-index);
    window_buf351_buf351d_i->release(*window_buf351_buf351d_i, LOCK_26_6_0_2080, LOCK_26_6_1_0, 1-index);
    window_buf362_buf362d_o->release(*window_buf362_buf362d_o, LOCK_26_7_0_7136, LOCK_26_7_1_0, 1-index);
    window_buf367_buf367d_o->release(*window_buf367_buf367d_o, LOCK_26_7_2_0, LOCK_26_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_26_6_bounds > 0)
      --proc_26_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}