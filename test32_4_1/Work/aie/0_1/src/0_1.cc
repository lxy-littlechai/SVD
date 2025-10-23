// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/0_1/src/0_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_1_4_0 20
#define LOCK_0_1_5_8032 21
#define LOCK_0_0_4_0 4
#define LOCK_0_0_5_320 5

// Declare shared memory buffers
v4float buf66[9];
v4float buf66d[9];
v4float buf67[9];
v4float buf67d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf66_buf66d_i[1] = {{(float*)buf66, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf67_buf67d_o[1] = {{(float*)buf67, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_1_bounds = sync_buffer[1];

  while (proc_0_1_bounds)
  {

    // Kernel call : i37:normalize<32>
    window_buf66_buf66d_i->setData(*window_buf66_buf66d_i, (float*)buf66, (float*)buf66d, 1-index, 0);
    window_buf66_buf66d_i->acquire(*window_buf66_buf66d_i, LOCK_0_1_4_0, LOCK_0_1_5_8032, 1-index);
    window_buf67_buf67d_o->setData(*window_buf67_buf67d_o, (float*)buf67, (float*)buf67d, 1-index, 0);
    window_buf67_buf67d_o->acquire(*window_buf67_buf67d_o, LOCK_0_0_4_0, LOCK_0_0_5_320, 1-index);
    normalize<32>(window_buf66_buf66d_i[0],window_buf67_buf67d_o[0]);
    window_buf66_buf66d_i->release(*window_buf66_buf66d_i, LOCK_0_1_4_0, LOCK_0_1_5_8032, 1-index);
    window_buf67_buf67d_o->release(*window_buf67_buf67d_o, LOCK_0_0_4_0, LOCK_0_0_5_320, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_1_bounds > 0)
      --proc_0_1_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}