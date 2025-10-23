// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/testGen/./Work/aie/0_5/src/0_5.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_0_5_4_0 20
#define LOCK_0_5_5_0 21
#define LOCK_0_4_0_0 0
#define LOCK_0_4_1_0 1

// Declare shared memory buffers
v4float buf494[9];
v4float buf494d[9];
v4float buf495[9];
v4float buf495d[9];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf494_buf494d_i[1] = {{(float*)buf494, 33, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<33u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf495_buf495d_o[1] = {{(float*)buf495, 33, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_0_5_bounds = sync_buffer[1];

  while (proc_0_5_bounds)
  {

    // Kernel call : i244:normalize<32>
    window_buf494_buf494d_i->setData(*window_buf494_buf494d_i, (float*)buf494, (float*)buf494d, 1-index, 0);
    window_buf494_buf494d_i->acquire(*window_buf494_buf494d_i, LOCK_0_5_4_0, LOCK_0_5_5_0, 1-index);
    window_buf495_buf495d_o->setData(*window_buf495_buf495d_o, (float*)buf495, (float*)buf495d, 1-index, 0);
    window_buf495_buf495d_o->acquire(*window_buf495_buf495d_o, LOCK_0_4_0_0, LOCK_0_4_1_0, 1-index);
    normalize<32>(window_buf494_buf494d_i[0],window_buf495_buf495d_o[0]);
    window_buf494_buf494d_i->release(*window_buf494_buf494d_i, LOCK_0_5_4_0, LOCK_0_5_5_0, 1-index);
    window_buf495_buf495d_o->release(*window_buf495_buf495d_o, LOCK_0_4_0_0, LOCK_0_4_1_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_0_5_bounds > 0)
      --proc_0_5_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}