// Automatically generated Processor driver using MathEngine Tool chain
// Processor File : /media/4T/home/luanxinya/PaperWork/HeteroSVD/SVD/DSE256/256-8/./Work/aie/24_3/src/24_3.cc
// Runs 1 ME kernel#undef DEBUG 
#undef DEBUGLOCKS 

#include <adf.h>
// Initialize sync_buffer[1] with compiler option static test-iterations value or -1
volatile static int sync_buffer[8] = {0, -1};
#include <adf/sync/mesync.h>

// Define Locks
#define LOCK_24_3_0_7136 16
#define LOCK_24_3_1_0 17
#define LOCK_25_3_2_0 50
#define LOCK_25_3_3_0 51
#define LOCK_24_4_0_0 32
#define LOCK_24_4_1_0 33
#define LOCK_24_4_2_0 34
#define LOCK_24_4_3_0 35

// Declare shared memory buffers
v4float buf298[65];
v4float buf298d[65];
v4float buf301[65];
v4float buf301d[65];
v4float buf314[65];
v4float buf314d[65];
v4float buf317[65];
v4float buf317d[65];

// Declare Kernel functions and initializers
#include "aie/ProcessUnit/Orthogonalize.cpp"

// Declare Kernel objects and external arrays

int main(void) {
  sync_buffer[0] = 0; //reset end signal
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf298_buf298d_i[1] = {{(float*)buf298, 257, 0}};
  adf::_io_buffer< float, adf::direction::in, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf301_buf301d_i[1] = {{(float*)buf301, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf314_buf314d_o[1] = {{(float*)buf314, 257, 0}};
  adf::_io_buffer< float, adf::direction::out, adf::io_buffer_config< adf::extents<257u>, adf::locking::sync, adf::addressing::linear, adf::margin<0>>> window_buf317_buf317d_o[1] = {{(float*)buf317, 257, 0}};
  int32 index = 1;
  while(true)
  {

  int32 proc_24_3_bounds = sync_buffer[1];

  while (proc_24_3_bounds)
  {

    // Kernel call : i153:orthogonalize<256>
    window_buf298_buf298d_i->setData(*window_buf298_buf298d_i, (float*)buf298, (float*)buf298d, 1-index, 0);
    window_buf298_buf298d_i->acquire(*window_buf298_buf298d_i, LOCK_24_3_0_7136, LOCK_24_3_1_0, 1-index);
    window_buf301_buf301d_i->setData(*window_buf301_buf301d_i, (float*)buf301, (float*)buf301d, 1-index, 0);
    window_buf301_buf301d_i->acquire(*window_buf301_buf301d_i, LOCK_25_3_2_0, LOCK_25_3_3_0, 1-index);
    window_buf314_buf314d_o->setData(*window_buf314_buf314d_o, (float*)buf314, (float*)buf314d, 1-index, 0);
    window_buf314_buf314d_o->acquire(*window_buf314_buf314d_o, LOCK_24_4_0_0, LOCK_24_4_1_0, 1-index);
    window_buf317_buf317d_o->setData(*window_buf317_buf317d_o, (float*)buf317, (float*)buf317d, 1-index, 0);
    window_buf317_buf317d_o->acquire(*window_buf317_buf317d_o, LOCK_24_4_2_0, LOCK_24_4_3_0, 1-index);
    orthogonalize<256>(window_buf298_buf298d_i[0],window_buf301_buf301d_i[0],window_buf314_buf314d_o[0],window_buf317_buf317d_o[0]);
    window_buf298_buf298d_i->release(*window_buf298_buf298d_i, LOCK_24_3_0_7136, LOCK_24_3_1_0, 1-index);
    window_buf301_buf301d_i->release(*window_buf301_buf301d_i, LOCK_25_3_2_0, LOCK_25_3_3_0, 1-index);
    window_buf314_buf314d_o->release(*window_buf314_buf314d_o, LOCK_24_4_0_0, LOCK_24_4_1_0, 1-index);
    window_buf317_buf317d_o->release(*window_buf317_buf317d_o, LOCK_24_4_2_0, LOCK_24_4_3_0, 1-index);
    index = 1 - index;

    chess_memory_fence();

    if(proc_24_3_bounds > 0)
      --proc_24_3_bounds;
  }
  done();
  if (sync_buffer[0] > 0) break;
  }
  return 0;
}