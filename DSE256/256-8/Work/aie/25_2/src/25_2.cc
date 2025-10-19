// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/25_2/src/25_2.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_2_0_0 16
#define LOCK_24_2_1_0 17
#define LOCK_24_2_2_0 18
#define LOCK_24_2_3_0 19
#define LOCK_25_3_0_7136 32
#define LOCK_25_3_1_0 33
#define LOCK_25_3_2_0 34
#define LOCK_25_3_3_0 35

// Declare shared memory buffers
v4float buf284[65];
v4float buf284d[65];
v4float buf285[65];
v4float buf285d[65];
v4float buf300[65];
v4float buf300d[65];
v4float buf301[65];
v4float buf301d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf284_buf284d_i[1] = {{(float*)buf284, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf285_buf285d_i[1] = {{(float*)buf285, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf300_buf300d_o[1] = {{(float*)buf300, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf301_buf301d_o[1] = {{(float*)buf301, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_25_2_bounds = sync_buffer[1];

  while (proc_25_2_bounds)
  {

    // Kernel call : i146:orthogonalize<256>
    window_buf284_buf284d_i->setData(*window_buf284_buf284d_i, (float*)buf284, (float*)buf284d, 1-index, 0);
    window_buf284_buf284d_i->acquire(*window_buf284_buf284d_i, LOCK_24_2_0_0, LOCK_24_2_1_0, 1-index);
    window_buf285_buf285d_i->setData(*window_buf285_buf285d_i, (float*)buf285, (float*)buf285d, 1-index, 0);
    window_buf285_buf285d_i->acquire(*window_buf285_buf285d_i, LOCK_24_2_2_0, LOCK_24_2_3_0, 1-index);
    window_buf300_buf300d_o->setData(*window_buf300_buf300d_o, (float*)buf300, (float*)buf300d, 1-index, 0);
    window_buf300_buf300d_o->acquire(*window_buf300_buf300d_o, LOCK_25_3_0_7136, LOCK_25_3_1_0, 1-index);
    window_buf301_buf301d_o->setData(*window_buf301_buf301d_o, (float*)buf301, (float*)buf301d, 1-index, 0);
    window_buf301_buf301d_o->acquire(*window_buf301_buf301d_o, LOCK_25_3_2_0, LOCK_25_3_3_0, 1-index);
    orthogonalize<256>(window_buf284_buf284d_i[0],window_buf285_buf285d_i[0],window_buf300_buf300d_o[0],window_buf301_buf301d_o[0]);
    window_buf284_buf284d_i->release(*window_buf284_buf284d_i, LOCK_24_2_0_0, LOCK_24_2_1_0, 1-index);
    window_buf285_buf285d_i->release(*window_buf285_buf285d_i, LOCK_24_2_2_0, LOCK_24_2_3_0, 1-index);
    window_buf300_buf300d_o->release(*window_buf300_buf300d_o, LOCK_25_3_0_7136, LOCK_25_3_1_0, 1-index);
    window_buf301_buf301d_o->release(*window_buf301_buf301d_o, LOCK_25_3_2_0, LOCK_25_3_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_25_2_bounds > 0)
      --proc_25_2_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}