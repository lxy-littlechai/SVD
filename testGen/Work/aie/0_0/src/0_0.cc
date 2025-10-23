// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/0_0/src/0_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_1_0_0 32
#define LOCK_0_1_1_8032 33
#define LOCK_0_1_2_0 34
#define LOCK_0_1_3_0 35

// Declare shared memory buffers
v4float buf484[9];
v4float buf484d[9];
v4float buf485[9];
v4float buf485d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf484_buf484d_i[1] = {{(float*)buf484, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf485_buf485d_o[1] = {{(float*)buf485, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_0_bounds = sync_buffer[1];

  while (proc_0_0_bounds)
  {

    // Kernel call : i239:normalize<32>
    window_buf484_buf484d_i->setData(*window_buf484_buf484d_i, (float*)buf484, (float*)buf484d, 1-index, 0);
    window_buf484_buf484d_i->acquire(*window_buf484_buf484d_i, LOCK_0_1_0_0, LOCK_0_1_1_8032, 1-index);
    window_buf485_buf485d_o->setData(*window_buf485_buf485d_o, (float*)buf485, (float*)buf485d, 1-index, 0);
    window_buf485_buf485d_o->acquire(*window_buf485_buf485d_o, LOCK_0_1_2_0, LOCK_0_1_3_0, 1-index);
    normalize<32>(window_buf484_buf484d_i[0],window_buf485_buf485d_o[0]);
    window_buf484_buf484d_i->release(*window_buf484_buf484d_i, LOCK_0_1_0_0, LOCK_0_1_1_8032, 1-index);
    window_buf485_buf485d_o->release(*window_buf485_buf485d_o, LOCK_0_1_2_0, LOCK_0_1_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_0_bounds > 0)
      --proc_0_0_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}