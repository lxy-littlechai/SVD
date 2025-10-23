// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/12_6/src/12_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_12_7_4_7872 36
#define LOCK_12_7_5_320 37
#define LOCK_12_7_6_7872 38
#define LOCK_12_7_7_0 39

// Declare shared memory buffers
v4float buf502[9];
v4float buf502d[9];
v4float buf503[9];
v4float buf503d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf502_buf502d_i[1] = {{(float*)buf502, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf503_buf503d_o[1] = {{(float*)buf503, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_12_6_bounds = sync_buffer[1];

  while (proc_12_6_bounds)
  {

    // Kernel call : i248:normalize<32>
    window_buf502_buf502d_i->setData(*window_buf502_buf502d_i, (float*)buf502, (float*)buf502d, 1-index, 0);
    window_buf502_buf502d_i->acquire(*window_buf502_buf502d_i, LOCK_12_7_4_7872, LOCK_12_7_5_320, 1-index);
    window_buf503_buf503d_o->setData(*window_buf503_buf503d_o, (float*)buf503, (float*)buf503d, 1-index, 0);
    window_buf503_buf503d_o->acquire(*window_buf503_buf503d_o, LOCK_12_7_6_7872, LOCK_12_7_7_0, 1-index);
    normalize<32>(window_buf502_buf502d_i[0],window_buf503_buf503d_o[0]);
    window_buf502_buf502d_i->release(*window_buf502_buf502d_i, LOCK_12_7_4_7872, LOCK_12_7_5_320, 1-index);
    window_buf503_buf503d_o->release(*window_buf503_buf503d_o, LOCK_12_7_6_7872, LOCK_12_7_7_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_12_6_bounds > 0)
      --proc_12_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}