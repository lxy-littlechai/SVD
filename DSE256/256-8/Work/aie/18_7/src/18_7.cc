// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/18_7/src/18_7.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_19_7_6_0 54
#define LOCK_19_7_7_6080 55
#define LOCK_18_6_4_5024 4
#define LOCK_18_6_5_5056 5

// Declare shared memory buffers
v4float buf538[65];
v4float buf538d[65];
v4float buf539[65];
v4float buf539d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf538_buf538d_i[1] = {{(float*)buf538, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf539_buf539d_o[1] = {{(float*)buf539, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_18_7_bounds = sync_buffer[1];

  while (proc_18_7_bounds)
  {

    // Kernel call : i273:normalize<256>
    window_buf538_buf538d_i->setData(*window_buf538_buf538d_i, (float*)buf538, (float*)buf538d, 1-index, 0);
    window_buf538_buf538d_i->acquire(*window_buf538_buf538d_i, LOCK_19_7_6_0, LOCK_19_7_7_6080, 1-index);
    window_buf539_buf539d_o->setData(*window_buf539_buf539d_o, (float*)buf539, (float*)buf539d, 1-index, 0);
    window_buf539_buf539d_o->acquire(*window_buf539_buf539d_o, LOCK_18_6_4_5024, LOCK_18_6_5_5056, 1-index);
    normalize<256>(window_buf538_buf538d_i[0],window_buf539_buf539d_o[0]);
    window_buf538_buf538d_i->release(*window_buf538_buf538d_i, LOCK_19_7_6_0, LOCK_19_7_7_6080, 1-index);
    window_buf539_buf539d_o->release(*window_buf539_buf539d_o, LOCK_18_6_4_5024, LOCK_18_6_5_5056, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_18_7_bounds > 0)
      --proc_18_7_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}