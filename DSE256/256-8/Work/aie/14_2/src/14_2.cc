// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/14_2/src/14_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_13_2_0_7136 16
#define LOCK_13_2_1_0 17
#define LOCK_14_2_0_0 48
#define LOCK_14_2_1_0 49
#define LOCK_14_1_0_0 0
#define LOCK_14_1_1_0 1
#define LOCK_14_1_2_0 2
#define LOCK_14_1_3_0 3

// Declare shared memory buffers
v4float buf195[65];
v4float buf195d[65];
v4float buf200[65];
v4float buf200d[65];
v4float buf211[65];
v4float buf211d[65];
v4float buf216[65];
v4float buf216d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf195_buf195d_i[1] = {{(float*)buf195, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf200_buf200d_i[1] = {{(float*)buf200, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf211_buf211d_o[1] = {{(float*)buf211, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf216_buf216d_o[1] = {{(float*)buf216, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_14_2_bounds = sync_buffer[1];

  while (proc_14_2_bounds)
  {

    // Kernel call : i100:orthogonalize<256>
    window_buf195_buf195d_i->setData(*window_buf195_buf195d_i, (float*)buf195, (float*)buf195d, 1-index, 0);
    window_buf195_buf195d_i->acquire(*window_buf195_buf195d_i, LOCK_13_2_0_7136, LOCK_13_2_1_0, 1-index);
    window_buf200_buf200d_i->setData(*window_buf200_buf200d_i, (float*)buf200, (float*)buf200d, 1-index, 0);
    window_buf200_buf200d_i->acquire(*window_buf200_buf200d_i, LOCK_14_2_0_0, LOCK_14_2_1_0, 1-index);
    window_buf211_buf211d_o->setData(*window_buf211_buf211d_o, (float*)buf211, (float*)buf211d, 1-index, 0);
    window_buf211_buf211d_o->acquire(*window_buf211_buf211d_o, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf216_buf216d_o->setData(*window_buf216_buf216d_o, (float*)buf216, (float*)buf216d, 1-index, 0);
    window_buf216_buf216d_o->acquire(*window_buf216_buf216d_o, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    orthogonalize<256>(window_buf195_buf195d_i[0],window_buf200_buf200d_i[0],window_buf211_buf211d_o[0],window_buf216_buf216d_o[0]);
    window_buf195_buf195d_i->release(*window_buf195_buf195d_i, LOCK_13_2_0_7136, LOCK_13_2_1_0, 1-index);
    window_buf200_buf200d_i->release(*window_buf200_buf200d_i, LOCK_14_2_0_0, LOCK_14_2_1_0, 1-index);
    window_buf211_buf211d_o->release(*window_buf211_buf211d_o, LOCK_14_1_0_0, LOCK_14_1_1_0, 1-index);
    window_buf216_buf216d_o->release(*window_buf216_buf216d_o, LOCK_14_1_2_0, LOCK_14_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_14_2_bounds > 0)
      --proc_14_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}