// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/27_6/src/27_6.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_27_7_2_1056 34
#define LOCK_27_7_3_0 35
#define LOCK_27_7_4_0 36
#define LOCK_27_7_5_7136 37

// Declare shared memory buffers
v4float buf542[65];
v4float buf542d[65];
v4float buf543[65];
v4float buf543d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Normalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf542_buf542d_i[1] = {{(float*)buf542, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf543_buf543d_o[1] = {{(float*)buf543, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_27_6_bounds = sync_buffer[1];

  while (proc_27_6_bounds)
  {

    // Kernel call : i275:normalize<256>
    window_buf542_buf542d_i->setData(*window_buf542_buf542d_i, (float*)buf542, (float*)buf542d, 1-index, 0);
    window_buf542_buf542d_i->acquire(*window_buf542_buf542d_i, LOCK_27_7_2_1056, LOCK_27_7_3_0, 1-index);
    window_buf543_buf543d_o->setData(*window_buf543_buf543d_o, (float*)buf543, (float*)buf543d, 1-index, 0);
    window_buf543_buf543d_o->acquire(*window_buf543_buf543d_o, LOCK_27_7_4_0, LOCK_27_7_5_7136, 1-index);
    normalize<256>(window_buf542_buf542d_i[0],window_buf543_buf543d_o[0]);
    window_buf542_buf542d_i->release(*window_buf542_buf542d_i, LOCK_27_7_2_1056, LOCK_27_7_3_0, 1-index);
    window_buf543_buf543d_o->release(*window_buf543_buf543d_o, LOCK_27_7_4_0, LOCK_27_7_5_7136, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_27_6_bounds > 0)
      --proc_27_6_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}