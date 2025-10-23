// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/0_3/src/0_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_3_4_160 20
#define LOCK_0_3_5_8032 21
#define LOCK_0_3_6_8032 22
#define LOCK_0_3_7_320 23

// Declare shared memory buffers
v4float buf490[9];
v4float buf490d[9];
v4float buf491[9];
v4float buf491d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf490_buf490d_i[1] = {{(float*)buf490, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf491_buf491d_o[1] = {{(float*)buf491, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_3_bounds = sync_buffer[1];

  while (proc_0_3_bounds)
  {

    // Kernel call : i242:normalize<32>
    window_buf490_buf490d_i->setData(*window_buf490_buf490d_i, (float*)buf490, (float*)buf490d, 1-index, 0);
    window_buf490_buf490d_i->acquire(*window_buf490_buf490d_i, LOCK_0_3_4_160, LOCK_0_3_5_8032, 1-index);
    window_buf491_buf491d_o->setData(*window_buf491_buf491d_o, (float*)buf491, (float*)buf491d, 1-index, 0);
    window_buf491_buf491d_o->acquire(*window_buf491_buf491d_o, LOCK_0_3_6_8032, LOCK_0_3_7_320, 1-index);
    normalize<32>(window_buf490_buf490d_i[0],window_buf491_buf491d_o[0]);
    window_buf490_buf490d_i->release(*window_buf490_buf490d_i, LOCK_0_3_4_160, LOCK_0_3_5_8032, 1-index);
    window_buf491_buf491d_o->release(*window_buf491_buf491d_o, LOCK_0_3_6_8032, LOCK_0_3_7_320, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_3_bounds > 0)
      --proc_0_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}