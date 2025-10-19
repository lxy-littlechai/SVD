// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/0_2/src/0_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_3_0_0 32
#define LOCK_0_3_1_1952 33
#define LOCK_0_3_2_3840 34
#define LOCK_0_3_3_1056 35

// Declare shared memory buffers
v4float buf260[65];
v4float buf260d[65];
v4float buf261[65];
v4float buf261d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf260_buf260d_i[1] = {{(float*)buf260, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf261_buf261d_o[1] = {{(float*)buf261, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_2_bounds = sync_buffer[1];

  while (proc_0_2_bounds)
  {

    // Kernel call : i130:normalize<256>
    window_buf260_buf260d_i->setData(*window_buf260_buf260d_i, (float*)buf260, (float*)buf260d, 1-index, 0);
    window_buf260_buf260d_i->acquire(*window_buf260_buf260d_i, LOCK_0_3_0_0, LOCK_0_3_1_1952, 1-index);
    window_buf261_buf261d_o->setData(*window_buf261_buf261d_o, (float*)buf261, (float*)buf261d, 1-index, 0);
    window_buf261_buf261d_o->acquire(*window_buf261_buf261d_o, LOCK_0_3_2_3840, LOCK_0_3_3_1056, 1-index);
    normalize<256>(window_buf260_buf260d_i[0],window_buf261_buf261d_o[0]);
    window_buf260_buf260d_i->release(*window_buf260_buf260d_i, LOCK_0_3_0_0, LOCK_0_3_1_1952, 1-index);
    window_buf261_buf261d_o->release(*window_buf261_buf261d_o, LOCK_0_3_2_3840, LOCK_0_3_3_1056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_2_bounds > 0)
      --proc_0_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}