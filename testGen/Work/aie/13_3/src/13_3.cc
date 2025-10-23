// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/13_3/src/13_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_3_0_3936 16
#define LOCK_13_3_1_2080 17
#define LOCK_14_3_2_0 50
#define LOCK_14_3_3_0 51
#define LOCK_13_2_0_320 0
#define LOCK_13_2_1_160 1
#define LOCK_13_2_2_0 2
#define LOCK_13_2_3_0 3

// Declare shared memory buffers
v4float buf251[9];
v4float buf251d[9];
v4float buf255[9];
v4float buf255d[9];
v4float buf273[9];
v4float buf273d[9];
v4float buf277[9];
v4float buf277d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf251_buf251d_i[1] = {{(float*)buf251, 33, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf255_buf255d_i[1] = {{(float*)buf255, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf273_buf273d_o[1] = {{(float*)buf273, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf277_buf277d_o[1] = {{(float*)buf277, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_13_3_bounds = sync_buffer[1];

  while (proc_13_3_bounds)
  {

    // Kernel call : i121:orthogonalize<32>
    window_buf251_buf251d_i->setData(*window_buf251_buf251d_i, (float*)buf251, (float*)buf251d, 1-index, 0);
    window_buf251_buf251d_i->acquire(*window_buf251_buf251d_i, LOCK_13_3_0_3936, LOCK_13_3_1_2080, 1-index);
    window_buf255_buf255d_i->setData(*window_buf255_buf255d_i, (float*)buf255, (float*)buf255d, 1-index, 0);
    window_buf255_buf255d_i->acquire(*window_buf255_buf255d_i, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    window_buf273_buf273d_o->setData(*window_buf273_buf273d_o, (float*)buf273, (float*)buf273d, 1-index, 0);
    window_buf273_buf273d_o->acquire(*window_buf273_buf273d_o, LOCK_13_2_0_320, LOCK_13_2_1_160, 1-index);
    window_buf277_buf277d_o->setData(*window_buf277_buf277d_o, (float*)buf277, (float*)buf277d, 1-index, 0);
    window_buf277_buf277d_o->acquire(*window_buf277_buf277d_o, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    orthogonalize<32>(window_buf251_buf251d_i[0],window_buf255_buf255d_i[0],window_buf273_buf273d_o[0],window_buf277_buf277d_o[0]);
    window_buf251_buf251d_i->release(*window_buf251_buf251d_i, LOCK_13_3_0_3936, LOCK_13_3_1_2080, 1-index);
    window_buf255_buf255d_i->release(*window_buf255_buf255d_i, LOCK_14_3_2_0, LOCK_14_3_3_0, 1-index);
    window_buf273_buf273d_o->release(*window_buf273_buf273d_o, LOCK_13_2_0_320, LOCK_13_2_1_160, 1-index);
    window_buf277_buf277d_o->release(*window_buf277_buf277d_o, LOCK_13_2_2_0, LOCK_13_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_13_3_bounds > 0)
      --proc_13_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}