// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/16_4/src/16_4.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_15_4_0_0 16
#define LOCK_15_4_1_0 17
#define LOCK_16_4_2_0 50
#define LOCK_16_4_3_0 51
#define LOCK_16_3_0_7136 0
#define LOCK_16_3_1_0 1
#define LOCK_16_3_2_0 2
#define LOCK_16_3_3_0 3

// Declare shared memory buffers
v4float buf162[65];
v4float buf162d[65];
v4float buf166[65];
v4float buf166d[65];
v4float buf178[65];
v4float buf178d[65];
v4float buf182[65];
v4float buf182d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf162_buf162d_i[1] = {{(float*)buf162, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf166_buf166d_i[1] = {{(float*)buf166, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf178_buf178d_o[1] = {{(float*)buf178, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf182_buf182d_o[1] = {{(float*)buf182, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_16_4_bounds = sync_buffer[1];

  while (proc_16_4_bounds)
  {

    // Kernel call : i86:orthogonalize<256>
    window_buf162_buf162d_i->setData(*window_buf162_buf162d_i, (float*)buf162, (float*)buf162d, 1-index, 0);
    window_buf162_buf162d_i->acquire(*window_buf162_buf162d_i, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf166_buf166d_i->setData(*window_buf166_buf166d_i, (float*)buf166, (float*)buf166d, 1-index, 0);
    window_buf166_buf166d_i->acquire(*window_buf166_buf166d_i, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    window_buf178_buf178d_o->setData(*window_buf178_buf178d_o, (float*)buf178, (float*)buf178d, 1-index, 0);
    window_buf178_buf178d_o->acquire(*window_buf178_buf178d_o, LOCK_16_3_0_7136, LOCK_16_3_1_0, 1-index);
    window_buf182_buf182d_o->setData(*window_buf182_buf182d_o, (float*)buf182, (float*)buf182d, 1-index, 0);
    window_buf182_buf182d_o->acquire(*window_buf182_buf182d_o, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    orthogonalize<256>(window_buf162_buf162d_i[0],window_buf166_buf166d_i[0],window_buf178_buf178d_o[0],window_buf182_buf182d_o[0]);
    window_buf162_buf162d_i->release(*window_buf162_buf162d_i, LOCK_15_4_0_0, LOCK_15_4_1_0, 1-index);
    window_buf166_buf166d_i->release(*window_buf166_buf166d_i, LOCK_16_4_2_0, LOCK_16_4_3_0, 1-index);
    window_buf178_buf178d_o->release(*window_buf178_buf178d_o, LOCK_16_3_0_7136, LOCK_16_3_1_0, 1-index);
    window_buf182_buf182d_o->release(*window_buf182_buf182d_o, LOCK_16_3_2_0, LOCK_16_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_16_4_bounds > 0)
      --proc_16_4_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}