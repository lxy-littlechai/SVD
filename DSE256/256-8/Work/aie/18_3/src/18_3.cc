// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/18_3/src/18_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_18_2_0_0 0
#define LOCK_18_2_1_0 1
#define LOCK_18_2_2_0 2
#define LOCK_18_2_3_0 3

// Declare shared memory buffers
v4float buf530[65];
v4float buf530d[65];
v4float buf531[65];
v4float buf531d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf530_buf530d_i[1] = {{(float*)buf530, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf531_buf531d_o[1] = {{(float*)buf531, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_3_bounds = sync_buffer[1];

  while (proc_18_3_bounds)
  {

    // Kernel call : i269:normalize<256>
    window_buf530_buf530d_i->setData(*window_buf530_buf530d_i, (float*)buf530, (float*)buf530d, 1-index, 0);
    window_buf530_buf530d_i->acquire(*window_buf530_buf530d_i, LOCK_18_2_0_0, LOCK_18_2_1_0, 1-index);
    window_buf531_buf531d_o->setData(*window_buf531_buf531d_o, (float*)buf531, (float*)buf531d, 1-index, 0);
    window_buf531_buf531d_o->acquire(*window_buf531_buf531d_o, LOCK_18_2_2_0, LOCK_18_2_3_0, 1-index);
    normalize<256>(window_buf530_buf530d_i[0],window_buf531_buf531d_o[0]);
    window_buf530_buf530d_i->release(*window_buf530_buf530d_i, LOCK_18_2_0_0, LOCK_18_2_1_0, 1-index);
    window_buf531_buf531d_o->release(*window_buf531_buf531d_o, LOCK_18_2_2_0, LOCK_18_2_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_3_bounds > 0)
      --proc_18_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}