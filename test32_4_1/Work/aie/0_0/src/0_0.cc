// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/test32_4_1/./Work/aie/0_0/src/0_0.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_1_0_7872 32
#define LOCK_0_1_1_8032 33
#define LOCK_0_1_2_0 34
#define LOCK_0_1_3_0 35

// Declare shared memory buffers
v4float buf64[9];
v4float buf64d[9];
v4float buf65[9];
v4float buf65d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf64_buf64d_i[1] = {{(float*)buf64, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf65_buf65d_o[1] = {{(float*)buf65, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_0_bounds = sync_buffer[1];

  while (proc_0_0_bounds)
  {

    // Kernel call : i36:normalize<32>
    window_buf64_buf64d_i->setData(*window_buf64_buf64d_i, (float*)buf64, (float*)buf64d, 1-index, 0);
    window_buf64_buf64d_i->acquire(*window_buf64_buf64d_i, LOCK_0_1_0_7872, LOCK_0_1_1_8032, 1-index);
    window_buf65_buf65d_o->setData(*window_buf65_buf65d_o, (float*)buf65, (float*)buf65d, 1-index, 0);
    window_buf65_buf65d_o->acquire(*window_buf65_buf65d_o, LOCK_0_1_2_0, LOCK_0_1_3_0, 1-index);
    normalize<32>(window_buf64_buf64d_i[0],window_buf65_buf65d_o[0]);
    window_buf64_buf64d_i->release(*window_buf64_buf64d_i, LOCK_0_1_0_7872, LOCK_0_1_1_8032, 1-index);
    window_buf65_buf65d_o->release(*window_buf65_buf65d_o, LOCK_0_1_2_0, LOCK_0_1_3_0, 1-index);
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