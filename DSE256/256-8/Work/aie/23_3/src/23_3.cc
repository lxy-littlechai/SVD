// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/23_3/src/23_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_3_0_7136 16
#define LOCK_23_3_1_0 17
#define LOCK_24_3_2_0 50
#define LOCK_24_3_3_0 51
#define LOCK_23_4_0_0 32
#define LOCK_23_4_1_0 33
#define LOCK_23_4_2_0 34
#define LOCK_23_4_3_0 35

// Declare shared memory buffers
v4float buf296[65];
v4float buf296d[65];
v4float buf299[65];
v4float buf299d[65];
v4float buf312[65];
v4float buf312d[65];
v4float buf315[65];
v4float buf315d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf296_buf296d_i[1] = {{(float*)buf296, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf299_buf299d_i[1] = {{(float*)buf299, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf312_buf312d_o[1] = {{(float*)buf312, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf315_buf315d_o[1] = {{(float*)buf315, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_3_bounds = sync_buffer[1];

  while (proc_23_3_bounds)
  {

    // Kernel call : i152:orthogonalize<256>
    window_buf296_buf296d_i->setData(*window_buf296_buf296d_i, (float*)buf296, (float*)buf296d, 1-index, 0);
    window_buf296_buf296d_i->acquire(*window_buf296_buf296d_i, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf299_buf299d_i->setData(*window_buf299_buf299d_i, (float*)buf299, (float*)buf299d, 1-index, 0);
    window_buf299_buf299d_i->acquire(*window_buf299_buf299d_i, LOCK_24_3_2_0, LOCK_24_3_3_0, 1-index);
    window_buf312_buf312d_o->setData(*window_buf312_buf312d_o, (float*)buf312, (float*)buf312d, 1-index, 0);
    window_buf312_buf312d_o->acquire(*window_buf312_buf312d_o, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf315_buf315d_o->setData(*window_buf315_buf315d_o, (float*)buf315, (float*)buf315d, 1-index, 0);
    window_buf315_buf315d_o->acquire(*window_buf315_buf315d_o, LOCK_23_4_2_0, LOCK_23_4_3_0, 1-index);
    orthogonalize<256>(window_buf296_buf296d_i[0],window_buf299_buf299d_i[0],window_buf312_buf312d_o[0],window_buf315_buf315d_o[0]);
    window_buf296_buf296d_i->release(*window_buf296_buf296d_i, LOCK_23_3_0_7136, LOCK_23_3_1_0, 1-index);
    window_buf299_buf299d_i->release(*window_buf299_buf299d_i, LOCK_24_3_2_0, LOCK_24_3_3_0, 1-index);
    window_buf312_buf312d_o->release(*window_buf312_buf312d_o, LOCK_23_4_0_0, LOCK_23_4_1_0, 1-index);
    window_buf315_buf315d_o->release(*window_buf315_buf315d_o, LOCK_23_4_2_0, LOCK_23_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_3_bounds > 0)
      --proc_23_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}