// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testNew/./Work/aie/14_6/src/14_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_6_0_0 16
#define LOCK_13_6_1_0 17
#define LOCK_14_6_0_7136 48
#define LOCK_14_6_1_0 49
#define LOCK_14_7_0_0 32
#define LOCK_14_7_1_0 33
#define LOCK_14_7_2_0 34
#define LOCK_14_7_3_0 35

// Declare shared memory buffers
v4float buf176[65];
v4float buf176d[65];
v4float buf183[65];
v4float buf183d[65];
v4float buf184[65];
v4float buf184d[65];
v4float buf191[65];
v4float buf191d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf176_buf176d_i[1] = {{(float*)buf176, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf183_buf183d_i[1] = {{(float*)buf183, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf184_buf184d_o[1] = {{(float*)buf184, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf191_buf191d_o[1] = {{(float*)buf191, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_6_bounds = sync_buffer[1];

  while (proc_14_6_bounds)
  {

    // Kernel call : i99:orthogonalize<256>
    window_buf176_buf176d_i->setData(*window_buf176_buf176d_i, (float*)buf176, (float*)buf176d, 1-index, 0);
    window_buf176_buf176d_i->acquire(*window_buf176_buf176d_i, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf183_buf183d_i->setData(*window_buf183_buf183d_i, (float*)buf183, (float*)buf183d, 1-index, 0);
    window_buf183_buf183d_i->acquire(*window_buf183_buf183d_i, LOCK_14_6_0_7136, LOCK_14_6_1_0, 1-index);
    window_buf184_buf184d_o->setData(*window_buf184_buf184d_o, (float*)buf184, (float*)buf184d, 1-index, 0);
    window_buf184_buf184d_o->acquire(*window_buf184_buf184d_o, LOCK_14_7_0_0, LOCK_14_7_1_0, 1-index);
    window_buf191_buf191d_o->setData(*window_buf191_buf191d_o, (float*)buf191, (float*)buf191d, 1-index, 0);
    window_buf191_buf191d_o->acquire(*window_buf191_buf191d_o, LOCK_14_7_2_0, LOCK_14_7_3_0, 1-index);
    orthogonalize<256>(window_buf176_buf176d_i[0],window_buf183_buf183d_i[0],window_buf184_buf184d_o[0],window_buf191_buf191d_o[0]);
    window_buf176_buf176d_i->release(*window_buf176_buf176d_i, LOCK_13_6_0_0, LOCK_13_6_1_0, 1-index);
    window_buf183_buf183d_i->release(*window_buf183_buf183d_i, LOCK_14_6_0_7136, LOCK_14_6_1_0, 1-index);
    window_buf184_buf184d_o->release(*window_buf184_buf184d_o, LOCK_14_7_0_0, LOCK_14_7_1_0, 1-index);
    window_buf191_buf191d_o->release(*window_buf191_buf191d_o, LOCK_14_7_2_0, LOCK_14_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_6_bounds > 0)
      --proc_14_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}