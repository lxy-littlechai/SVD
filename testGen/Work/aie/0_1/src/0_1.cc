// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/0_1/src/0_1.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_0_0_0 0
#define LOCK_0_0_1_0 1
#define LOCK_0_2_0_0 32
#define LOCK_0_2_1_0 33

// Declare shared memory buffers
v4float buf18[9];
v4float buf18d[9];
v4float buf19[9];
v4float buf19d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf18_buf18d_i[1] = {{(float*)buf18, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf19_buf19d_o[1] = {{(float*)buf19, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_1_bounds = sync_buffer[1];

  while (proc_0_1_bounds)
  {

    // Kernel call : i15:normalize<32>
    window_buf18_buf18d_i->setData(*window_buf18_buf18d_i, (float*)buf18, (float*)buf18d, 1-index, 0);
    window_buf18_buf18d_i->acquire(*window_buf18_buf18d_i, LOCK_0_0_0_0, LOCK_0_0_1_0, 1-index);
    window_buf19_buf19d_o->setData(*window_buf19_buf19d_o, (float*)buf19, (float*)buf19d, 1-index, 0);
    window_buf19_buf19d_o->acquire(*window_buf19_buf19d_o, LOCK_0_2_0_0, LOCK_0_2_1_0, 1-index);
    normalize<32>(window_buf18_buf18d_i[0],window_buf19_buf19d_o[0]);
    window_buf18_buf18d_i->release(*window_buf18_buf18d_i, LOCK_0_0_0_0, LOCK_0_0_1_0, 1-index);
    window_buf19_buf19d_o->release(*window_buf19_buf19d_o, LOCK_0_2_0_0, LOCK_0_2_1_0, 1-index);
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