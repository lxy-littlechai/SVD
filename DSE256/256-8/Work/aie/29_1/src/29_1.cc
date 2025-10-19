// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/29_1/src/29_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_29_1_0_0 16
#define LOCK_29_1_1_0 17
#define LOCK_30_1_2_0 50
#define LOCK_30_1_3_0 51
#define LOCK_29_0_0_0 0
#define LOCK_29_0_1_0 1
#define LOCK_29_0_2_0 2
#define LOCK_29_0_3_0 3

// Declare shared memory buffers
v4float buf455[65];
v4float buf455d[65];
v4float buf462[65];
v4float buf462d[65];
v4float buf471[65];
v4float buf471d[65];
v4float buf478[65];
v4float buf478d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf455_buf455d_i[1] = {{(float*)buf455, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf462_buf462d_i[1] = {{(float*)buf462, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf471_buf471d_o[1] = {{(float*)buf471, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf478_buf478d_o[1] = {{(float*)buf478, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_29_1_bounds = sync_buffer[1];

  while (proc_29_1_bounds)
  {

    // Kernel call : i229:orthogonalize<256>
    window_buf455_buf455d_i->setData(*window_buf455_buf455d_i, (float*)buf455, (float*)buf455d, 1-index, 0);
    window_buf455_buf455d_i->acquire(*window_buf455_buf455d_i, LOCK_29_1_0_0, LOCK_29_1_1_0, 1-index);
    window_buf462_buf462d_i->setData(*window_buf462_buf462d_i, (float*)buf462, (float*)buf462d, 1-index, 0);
    window_buf462_buf462d_i->acquire(*window_buf462_buf462d_i, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    window_buf471_buf471d_o->setData(*window_buf471_buf471d_o, (float*)buf471, (float*)buf471d, 1-index, 0);
    window_buf471_buf471d_o->acquire(*window_buf471_buf471d_o, LOCK_29_0_0_0, LOCK_29_0_1_0, 1-index);
    window_buf478_buf478d_o->setData(*window_buf478_buf478d_o, (float*)buf478, (float*)buf478d, 1-index, 0);
    window_buf478_buf478d_o->acquire(*window_buf478_buf478d_o, LOCK_29_0_2_0, LOCK_29_0_3_0, 1-index);
    orthogonalize<256>(window_buf455_buf455d_i[0],window_buf462_buf462d_i[0],window_buf471_buf471d_o[0],window_buf478_buf478d_o[0]);
    window_buf455_buf455d_i->release(*window_buf455_buf455d_i, LOCK_29_1_0_0, LOCK_29_1_1_0, 1-index);
    window_buf462_buf462d_i->release(*window_buf462_buf462d_i, LOCK_30_1_2_0, LOCK_30_1_3_0, 1-index);
    window_buf471_buf471d_o->release(*window_buf471_buf471d_o, LOCK_29_0_0_0, LOCK_29_0_1_0, 1-index);
    window_buf478_buf478d_o->release(*window_buf478_buf478d_o, LOCK_29_0_2_0, LOCK_29_0_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_29_1_bounds > 0)
      --proc_29_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}