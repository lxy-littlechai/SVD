// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/6_6/src/6_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_5_6_0_0 16
#define LOCK_5_6_1_0 17
#define LOCK_6_6_2_0 50
#define LOCK_6_6_3_0 51
#define LOCK_6_7_0_0 32
#define LOCK_6_7_1_0 33
#define LOCK_6_7_2_0 34
#define LOCK_6_7_3_0 35

// Declare shared memory buffers
v4float buf100[65];
v4float buf100d[65];
v4float buf108[65];
v4float buf108d[65];
v4float buf116[65];
v4float buf116d[65];
v4float buf124[65];
v4float buf124d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf100_buf100d_i[1] = {{(float*)buf100, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf108_buf108d_i[1] = {{(float*)buf108, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf116_buf116d_o[1] = {{(float*)buf116, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf124_buf124d_o[1] = {{(float*)buf124, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_6_6_bounds = sync_buffer[1];

  while (proc_6_6_bounds)
  {

    // Kernel call : i53:orthogonalize<256>
    window_buf100_buf100d_i->setData(*window_buf100_buf100d_i, (float*)buf100, (float*)buf100d, 1-index, 0);
    window_buf100_buf100d_i->acquire(*window_buf100_buf100d_i, LOCK_5_6_0_0, LOCK_5_6_1_0, 1-index);
    window_buf108_buf108d_i->setData(*window_buf108_buf108d_i, (float*)buf108, (float*)buf108d, 1-index, 0);
    window_buf108_buf108d_i->acquire(*window_buf108_buf108d_i, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    window_buf116_buf116d_o->setData(*window_buf116_buf116d_o, (float*)buf116, (float*)buf116d, 1-index, 0);
    window_buf116_buf116d_o->acquire(*window_buf116_buf116d_o, LOCK_6_7_0_0, LOCK_6_7_1_0, 1-index);
    window_buf124_buf124d_o->setData(*window_buf124_buf124d_o, (float*)buf124, (float*)buf124d, 1-index, 0);
    window_buf124_buf124d_o->acquire(*window_buf124_buf124d_o, LOCK_6_7_2_0, LOCK_6_7_3_0, 1-index);
    orthogonalize<256>(window_buf100_buf100d_i[0],window_buf108_buf108d_i[0],window_buf116_buf116d_o[0],window_buf124_buf124d_o[0]);
    window_buf100_buf100d_i->release(*window_buf100_buf100d_i, LOCK_5_6_0_0, LOCK_5_6_1_0, 1-index);
    window_buf108_buf108d_i->release(*window_buf108_buf108d_i, LOCK_6_6_2_0, LOCK_6_6_3_0, 1-index);
    window_buf116_buf116d_o->release(*window_buf116_buf116d_o, LOCK_6_7_0_0, LOCK_6_7_1_0, 1-index);
    window_buf124_buf124d_o->release(*window_buf124_buf124d_o, LOCK_6_7_2_0, LOCK_6_7_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_6_6_bounds > 0)
      --proc_6_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}