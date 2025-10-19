// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/41_2/src/41_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_40_2_0_0 16
#define LOCK_40_2_1_0 17
#define LOCK_41_2_2_0 50
#define LOCK_41_2_3_0 51
#define LOCK_41_3_0_0 32
#define LOCK_41_3_1_0 33
#define LOCK_41_3_2_0 34
#define LOCK_41_3_3_0 35

// Declare shared memory buffers
v4float buf501[65];
v4float buf501d[65];
v4float buf502[65];
v4float buf502d[65];
v4float buf517[65];
v4float buf517d[65];
v4float buf518[65];
v4float buf518d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf501_buf501d_i[1] = {{(float*)buf501, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf502_buf502d_i[1] = {{(float*)buf502, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf517_buf517d_o[1] = {{(float*)buf517, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf518_buf518d_o[1] = {{(float*)buf518, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_41_2_bounds = sync_buffer[1];

  while (proc_41_2_bounds)
  {

    // Kernel call : i256:orthogonalize<256>
    window_buf501_buf501d_i->setData(*window_buf501_buf501d_i, (float*)buf501, (float*)buf501d, 1-index, 0);
    window_buf501_buf501d_i->acquire(*window_buf501_buf501d_i, LOCK_40_2_0_0, LOCK_40_2_1_0, 1-index);
    window_buf502_buf502d_i->setData(*window_buf502_buf502d_i, (float*)buf502, (float*)buf502d, 1-index, 0);
    window_buf502_buf502d_i->acquire(*window_buf502_buf502d_i, LOCK_41_2_2_0, LOCK_41_2_3_0, 1-index);
    window_buf517_buf517d_o->setData(*window_buf517_buf517d_o, (float*)buf517, (float*)buf517d, 1-index, 0);
    window_buf517_buf517d_o->acquire(*window_buf517_buf517d_o, LOCK_41_3_0_0, LOCK_41_3_1_0, 1-index);
    window_buf518_buf518d_o->setData(*window_buf518_buf518d_o, (float*)buf518, (float*)buf518d, 1-index, 0);
    window_buf518_buf518d_o->acquire(*window_buf518_buf518d_o, LOCK_41_3_2_0, LOCK_41_3_3_0, 1-index);
    orthogonalize<256>(window_buf501_buf501d_i[0],window_buf502_buf502d_i[0],window_buf517_buf517d_o[0],window_buf518_buf518d_o[0]);
    window_buf501_buf501d_i->release(*window_buf501_buf501d_i, LOCK_40_2_0_0, LOCK_40_2_1_0, 1-index);
    window_buf502_buf502d_i->release(*window_buf502_buf502d_i, LOCK_41_2_2_0, LOCK_41_2_3_0, 1-index);
    window_buf517_buf517d_o->release(*window_buf517_buf517d_o, LOCK_41_3_0_0, LOCK_41_3_1_0, 1-index);
    window_buf518_buf518d_o->release(*window_buf518_buf518d_o, LOCK_41_3_2_0, LOCK_41_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_41_2_bounds > 0)
      --proc_41_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}