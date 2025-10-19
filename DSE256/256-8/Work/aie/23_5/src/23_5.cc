// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/23_5/src/23_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_23_5_0_0 16
#define LOCK_23_5_1_0 17
#define LOCK_24_5_2_0 50
#define LOCK_24_5_3_0 51
#define LOCK_23_6_0_0 32
#define LOCK_23_6_1_0 33
#define LOCK_23_6_2_0 34
#define LOCK_23_6_3_0 35

// Declare shared memory buffers
v4float buf326[65];
v4float buf326d[65];
v4float buf333[65];
v4float buf333d[65];
v4float buf342[65];
v4float buf342d[65];
v4float buf349[65];
v4float buf349d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf326_buf326d_i[1] = {{(float*)buf326, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf333_buf333d_i[1] = {{(float*)buf333, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf342_buf342d_o[1] = {{(float*)buf342, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf349_buf349d_o[1] = {{(float*)buf349, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_23_5_bounds = sync_buffer[1];

  while (proc_23_5_bounds)
  {

    // Kernel call : i168:orthogonalize<256>
    window_buf326_buf326d_i->setData(*window_buf326_buf326d_i, (float*)buf326, (float*)buf326d, 1-index, 0);
    window_buf326_buf326d_i->acquire(*window_buf326_buf326d_i, LOCK_23_5_0_0, LOCK_23_5_1_0, 1-index);
    window_buf333_buf333d_i->setData(*window_buf333_buf333d_i, (float*)buf333, (float*)buf333d, 1-index, 0);
    window_buf333_buf333d_i->acquire(*window_buf333_buf333d_i, LOCK_24_5_2_0, LOCK_24_5_3_0, 1-index);
    window_buf342_buf342d_o->setData(*window_buf342_buf342d_o, (float*)buf342, (float*)buf342d, 1-index, 0);
    window_buf342_buf342d_o->acquire(*window_buf342_buf342d_o, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf349_buf349d_o->setData(*window_buf349_buf349d_o, (float*)buf349, (float*)buf349d, 1-index, 0);
    window_buf349_buf349d_o->acquire(*window_buf349_buf349d_o, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    orthogonalize<256>(window_buf326_buf326d_i[0],window_buf333_buf333d_i[0],window_buf342_buf342d_o[0],window_buf349_buf349d_o[0]);
    window_buf326_buf326d_i->release(*window_buf326_buf326d_i, LOCK_23_5_0_0, LOCK_23_5_1_0, 1-index);
    window_buf333_buf333d_i->release(*window_buf333_buf333d_i, LOCK_24_5_2_0, LOCK_24_5_3_0, 1-index);
    window_buf342_buf342d_o->release(*window_buf342_buf342d_o, LOCK_23_6_0_0, LOCK_23_6_1_0, 1-index);
    window_buf349_buf349d_o->release(*window_buf349_buf349d_o, LOCK_23_6_2_0, LOCK_23_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_23_5_bounds > 0)
      --proc_23_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}