// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/18_6/src/18_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_6_0_0 48
#define LOCK_18_6_1_7136 49
#define LOCK_18_6_2_0 50
#define LOCK_18_6_3_0 51

// Declare shared memory buffers
v4float buf536[65];
v4float buf536d[65];
v4float buf537[65];
v4float buf537d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf536_buf536d_i[1] = {{(float*)buf536, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf537_buf537d_o[1] = {{(float*)buf537, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_6_bounds = sync_buffer[1];

  while (proc_18_6_bounds)
  {

    // Kernel call : i272:normalize<256>
    window_buf536_buf536d_i->setData(*window_buf536_buf536d_i, (float*)buf536, (float*)buf536d, 1-index, 0);
    window_buf536_buf536d_i->acquire(*window_buf536_buf536d_i, LOCK_18_6_0_0, LOCK_18_6_1_7136, 1-index);
    window_buf537_buf537d_o->setData(*window_buf537_buf537d_o, (float*)buf537, (float*)buf537d, 1-index, 0);
    window_buf537_buf537d_o->acquire(*window_buf537_buf537d_o, LOCK_18_6_2_0, LOCK_18_6_3_0, 1-index);
    normalize<256>(window_buf536_buf536d_i[0],window_buf537_buf537d_o[0]);
    window_buf536_buf536d_i->release(*window_buf536_buf536d_i, LOCK_18_6_0_0, LOCK_18_6_1_7136, 1-index);
    window_buf537_buf537d_o->release(*window_buf537_buf537d_o, LOCK_18_6_2_0, LOCK_18_6_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_6_bounds > 0)
      --proc_18_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}