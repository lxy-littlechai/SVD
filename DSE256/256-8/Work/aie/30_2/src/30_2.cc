// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/30_2/src/30_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_2_0_7136 16
#define LOCK_29_2_1_0 17
#define LOCK_30_2_2_0 50
#define LOCK_30_2_3_0 51
#define LOCK_30_1_0_0 0
#define LOCK_30_1_1_0 1
#define LOCK_30_1_2_0 2
#define LOCK_30_1_3_0 3

// Declare shared memory buffers
v4float buf437[65];
v4float buf437d[65];
v4float buf446[65];
v4float buf446d[65];
v4float buf453[65];
v4float buf453d[65];
v4float buf462[65];
v4float buf462d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf437_buf437d_i[1] = {{(float*)buf437, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf446_buf446d_i[1] = {{(float*)buf446, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf453_buf453d_o[1] = {{(float*)buf453, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf462_buf462d_o[1] = {{(float*)buf462, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_30_2_bounds = sync_buffer[1];

  while (proc_30_2_bounds)
  {

    // Kernel call : i222:orthogonalize<256>
    window_buf437_buf437d_i->setData(*window_buf437_buf437d_i, (float*)buf437, (float*)buf437d, 1-index, 0);
    window_buf437_buf437d_i->acquire(*window_buf437_buf437d_i, LOCK_29_2_0_7136, LOCK_29_2_1_0, 1-index);
    window_buf446_buf446d_i->setData(*window_buf446_buf446d_i, (float*)buf446, (float*)buf446d, 1-index, 0);
    window_buf446_buf446d_i->acquire(*window_buf446_buf446d_i, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    window_buf453_buf453d_o->setData(*window_buf453_buf453d_o, (float*)buf453, (float*)buf453d, 1-index, 0);
    window_buf453_buf453d_o->acquire(*window_buf453_buf453d_o, LOCK_30_1_0_0, LOCK_30_1_1_0, 1-index);
    window_buf462_buf462d_o->setData(*window_buf462_buf462d_o, (float*)buf462, (float*)buf462d, 1-index, 0);
    window_buf462_buf462d_o->acquire(*window_buf462_buf462d_o, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    orthogonalize<256>(window_buf437_buf437d_i[0],window_buf446_buf446d_i[0],window_buf453_buf453d_o[0],window_buf462_buf462d_o[0]);
    window_buf437_buf437d_i->release(*window_buf437_buf437d_i, LOCK_29_2_0_7136, LOCK_29_2_1_0, 1-index);
    window_buf446_buf446d_i->release(*window_buf446_buf446d_i, LOCK_30_2_2_0, LOCK_30_2_3_0, 1-index);
    window_buf453_buf453d_o->release(*window_buf453_buf453d_o, LOCK_30_1_0_0, LOCK_30_1_1_0, 1-index);
    window_buf462_buf462d_o->release(*window_buf462_buf462d_o, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_30_2_bounds > 0)
      --proc_30_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}