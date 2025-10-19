// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/18_2/src/18_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_1_0_0 0
#define LOCK_18_1_1_0 1
#define LOCK_17_2_2_0 18
#define LOCK_17_2_3_0 19

// Declare shared memory buffers
v4float buf528[65];
v4float buf528d[65];
v4float buf529[65];
v4float buf529d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf528_buf528d_i[1] = {{(float*)buf528, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf529_buf529d_o[1] = {{(float*)buf529, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_2_bounds = sync_buffer[1];

  while (proc_18_2_bounds)
  {

    // Kernel call : i268:normalize<256>
    window_buf528_buf528d_i->setData(*window_buf528_buf528d_i, (float*)buf528, (float*)buf528d, 1-index, 0);
    window_buf528_buf528d_i->acquire(*window_buf528_buf528d_i, LOCK_18_1_0_0, LOCK_18_1_1_0, 1-index);
    window_buf529_buf529d_o->setData(*window_buf529_buf529d_o, (float*)buf529, (float*)buf529d, 1-index, 0);
    window_buf529_buf529d_o->acquire(*window_buf529_buf529d_o, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    normalize<256>(window_buf528_buf528d_i[0],window_buf529_buf529d_o[0]);
    window_buf528_buf528d_i->release(*window_buf528_buf528d_i, LOCK_18_1_0_0, LOCK_18_1_1_0, 1-index);
    window_buf529_buf529d_o->release(*window_buf529_buf529d_o, LOCK_17_2_2_0, LOCK_17_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_2_bounds > 0)
      --proc_18_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}